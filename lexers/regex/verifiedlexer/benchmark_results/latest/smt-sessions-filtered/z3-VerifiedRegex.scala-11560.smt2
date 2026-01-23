; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!637586 () Bool)

(assert start!637586)

(declare-fun b!6486655 () Bool)

(assert (=> b!6486655 true))

(assert (=> b!6486655 true))

(declare-fun lambda!359119 () Int)

(declare-fun lambda!359118 () Int)

(assert (=> b!6486655 (not (= lambda!359119 lambda!359118))))

(assert (=> b!6486655 true))

(assert (=> b!6486655 true))

(declare-fun b!6486628 () Bool)

(assert (=> b!6486628 true))

(declare-fun bs!1645633 () Bool)

(declare-fun b!6486656 () Bool)

(assert (= bs!1645633 (and b!6486656 b!6486655)))

(declare-fun lambda!359121 () Int)

(declare-datatypes ((C!33004 0))(
  ( (C!33005 (val!26204 Int)) )
))
(declare-datatypes ((Regex!16367 0))(
  ( (ElementMatch!16367 (c!1188383 C!33004)) (Concat!25212 (regOne!33246 Regex!16367) (regTwo!33246 Regex!16367)) (EmptyExpr!16367) (Star!16367 (reg!16696 Regex!16367)) (EmptyLang!16367) (Union!16367 (regOne!33247 Regex!16367) (regTwo!33247 Regex!16367)) )
))
(declare-fun r!7292 () Regex!16367)

(declare-fun lt!2388865 () Regex!16367)

(assert (=> bs!1645633 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359121 lambda!359118))))

(assert (=> bs!1645633 (not (= lambda!359121 lambda!359119))))

(assert (=> b!6486656 true))

(assert (=> b!6486656 true))

(assert (=> b!6486656 true))

(declare-fun lambda!359122 () Int)

(assert (=> bs!1645633 (not (= lambda!359122 lambda!359118))))

(assert (=> bs!1645633 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359122 lambda!359119))))

(assert (=> b!6486656 (not (= lambda!359122 lambda!359121))))

(assert (=> b!6486656 true))

(assert (=> b!6486656 true))

(assert (=> b!6486656 true))

(declare-fun bs!1645634 () Bool)

(declare-fun b!6486638 () Bool)

(assert (= bs!1645634 (and b!6486638 b!6486655)))

(declare-datatypes ((List!65400 0))(
  ( (Nil!65276) (Cons!65276 (h!71724 C!33004) (t!379026 List!65400)) )
))
(declare-fun s!2326 () List!65400)

(declare-datatypes ((tuple2!66692 0))(
  ( (tuple2!66693 (_1!36649 List!65400) (_2!36649 List!65400)) )
))
(declare-fun lt!2388900 () tuple2!66692)

(declare-fun lambda!359123 () Int)

(assert (=> bs!1645634 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359123 lambda!359118))))

(assert (=> bs!1645634 (not (= lambda!359123 lambda!359119))))

(declare-fun bs!1645635 () Bool)

(assert (= bs!1645635 (and b!6486638 b!6486656)))

(assert (=> bs!1645635 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359123 lambda!359121))))

(assert (=> bs!1645635 (not (= lambda!359123 lambda!359122))))

(assert (=> b!6486638 true))

(assert (=> b!6486638 true))

(assert (=> b!6486638 true))

(declare-fun lambda!359124 () Int)

(assert (=> b!6486638 (not (= lambda!359124 lambda!359123))))

(assert (=> bs!1645634 (not (= lambda!359124 lambda!359118))))

(assert (=> bs!1645635 (not (= lambda!359124 lambda!359121))))

(assert (=> bs!1645634 (not (= lambda!359124 lambda!359119))))

(assert (=> bs!1645635 (not (= lambda!359124 lambda!359122))))

(assert (=> b!6486638 true))

(assert (=> b!6486638 true))

(assert (=> b!6486638 true))

(declare-fun lambda!359125 () Int)

(assert (=> b!6486638 (not (= lambda!359125 lambda!359123))))

(assert (=> bs!1645634 (not (= lambda!359125 lambda!359118))))

(assert (=> b!6486638 (not (= lambda!359125 lambda!359124))))

(assert (=> bs!1645635 (not (= lambda!359125 lambda!359121))))

(assert (=> bs!1645634 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359125 lambda!359119))))

(assert (=> bs!1645635 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359125 lambda!359122))))

(assert (=> b!6486638 true))

(assert (=> b!6486638 true))

(assert (=> b!6486638 true))

(declare-fun b!6486614 () Bool)

(declare-fun res!2664071 () Bool)

(declare-fun e!3931335 () Bool)

(assert (=> b!6486614 (=> res!2664071 e!3931335)))

(declare-fun isEmpty!37468 (List!65400) Bool)

(assert (=> b!6486614 (= res!2664071 (isEmpty!37468 (_1!36649 lt!2388900)))))

(declare-fun b!6486615 () Bool)

(declare-fun res!2664098 () Bool)

(declare-fun e!3931330 () Bool)

(assert (=> b!6486615 (=> res!2664098 e!3931330)))

(declare-datatypes ((List!65401 0))(
  ( (Nil!65277) (Cons!65277 (h!71725 Regex!16367) (t!379027 List!65401)) )
))
(declare-datatypes ((Context!11502 0))(
  ( (Context!11503 (exprs!6251 List!65401)) )
))
(declare-datatypes ((List!65402 0))(
  ( (Nil!65278) (Cons!65278 (h!71726 Context!11502) (t!379028 List!65402)) )
))
(declare-fun zl!343 () List!65402)

(declare-fun isEmpty!37469 (List!65402) Bool)

(assert (=> b!6486615 (= res!2664098 (not (isEmpty!37469 (t!379028 zl!343))))))

(declare-fun b!6486616 () Bool)

(declare-fun e!3931333 () Bool)

(declare-fun e!3931336 () Bool)

(assert (=> b!6486616 (= e!3931333 e!3931336)))

(declare-fun res!2664085 () Bool)

(assert (=> b!6486616 (=> res!2664085 e!3931336)))

(declare-fun lt!2388885 () Context!11502)

(declare-fun lt!2388855 () Regex!16367)

(declare-fun unfocusZipper!2109 (List!65402) Regex!16367)

(assert (=> b!6486616 (= res!2664085 (not (= (unfocusZipper!2109 (Cons!65278 lt!2388885 Nil!65278)) lt!2388855)))))

(declare-fun lt!2388899 () Regex!16367)

(assert (=> b!6486616 (= lt!2388855 (Concat!25212 (reg!16696 (regOne!33246 r!7292)) lt!2388899))))

(declare-fun b!6486617 () Bool)

(declare-fun e!3931327 () Bool)

(declare-fun e!3931315 () Bool)

(assert (=> b!6486617 (= e!3931327 e!3931315)))

(declare-fun res!2664104 () Bool)

(assert (=> b!6486617 (=> res!2664104 e!3931315)))

(declare-fun lt!2388863 () List!65402)

(assert (=> b!6486617 (= res!2664104 (not (= (unfocusZipper!2109 lt!2388863) lt!2388899)))))

(declare-fun lt!2388862 () Context!11502)

(assert (=> b!6486617 (= lt!2388863 (Cons!65278 lt!2388862 Nil!65278))))

(declare-fun b!6486618 () Bool)

(declare-fun e!3931313 () Bool)

(assert (=> b!6486618 (= e!3931313 (not e!3931330))))

(declare-fun res!2664084 () Bool)

(assert (=> b!6486618 (=> res!2664084 e!3931330)))

(get-info :version)

(assert (=> b!6486618 (= res!2664084 (not ((_ is Cons!65278) zl!343)))))

(declare-fun lt!2388866 () Bool)

(declare-fun lt!2388880 () Bool)

(assert (=> b!6486618 (= lt!2388866 lt!2388880)))

(declare-fun matchRSpec!3468 (Regex!16367 List!65400) Bool)

(assert (=> b!6486618 (= lt!2388880 (matchRSpec!3468 r!7292 s!2326))))

(declare-fun matchR!8550 (Regex!16367 List!65400) Bool)

(assert (=> b!6486618 (= lt!2388866 (matchR!8550 r!7292 s!2326))))

(declare-datatypes ((Unit!158799 0))(
  ( (Unit!158800) )
))
(declare-fun lt!2388888 () Unit!158799)

(declare-fun mainMatchTheorem!3468 (Regex!16367 List!65400) Unit!158799)

(assert (=> b!6486618 (= lt!2388888 (mainMatchTheorem!3468 r!7292 s!2326))))

(declare-fun b!6486619 () Bool)

(declare-fun e!3931332 () Bool)

(declare-fun e!3931328 () Bool)

(assert (=> b!6486619 (= e!3931332 e!3931328)))

(declare-fun res!2664073 () Bool)

(assert (=> b!6486619 (=> res!2664073 e!3931328)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2388913 () (InoxSet Context!11502))

(declare-fun lt!2388911 () (InoxSet Context!11502))

(assert (=> b!6486619 (= res!2664073 (not (= lt!2388913 lt!2388911)))))

(declare-fun lt!2388869 () (InoxSet Context!11502))

(declare-fun lambda!359120 () Int)

(declare-fun flatMap!1872 ((InoxSet Context!11502) Int) (InoxSet Context!11502))

(declare-fun derivationStepZipperUp!1541 (Context!11502 C!33004) (InoxSet Context!11502))

(assert (=> b!6486619 (= (flatMap!1872 lt!2388869 lambda!359120) (derivationStepZipperUp!1541 lt!2388885 (h!71724 s!2326)))))

(declare-fun lt!2388894 () Unit!158799)

(declare-fun lemmaFlatMapOnSingletonSet!1398 ((InoxSet Context!11502) Context!11502 Int) Unit!158799)

(assert (=> b!6486619 (= lt!2388894 (lemmaFlatMapOnSingletonSet!1398 lt!2388869 lt!2388885 lambda!359120))))

(declare-fun lt!2388908 () (InoxSet Context!11502))

(assert (=> b!6486619 (= lt!2388908 (derivationStepZipperUp!1541 lt!2388885 (h!71724 s!2326)))))

(declare-fun derivationStepZipper!2333 ((InoxSet Context!11502) C!33004) (InoxSet Context!11502))

(assert (=> b!6486619 (= lt!2388913 (derivationStepZipper!2333 lt!2388869 (h!71724 s!2326)))))

(assert (=> b!6486619 (= lt!2388869 (store ((as const (Array Context!11502 Bool)) false) lt!2388885 true))))

(declare-fun lt!2388871 () List!65401)

(assert (=> b!6486619 (= lt!2388885 (Context!11503 (Cons!65277 (reg!16696 (regOne!33246 r!7292)) lt!2388871)))))

(declare-fun b!6486620 () Bool)

(declare-fun e!3931326 () Bool)

(assert (=> b!6486620 (= e!3931315 e!3931326)))

(declare-fun res!2664092 () Bool)

(assert (=> b!6486620 (=> res!2664092 e!3931326)))

(assert (=> b!6486620 (= res!2664092 (not lt!2388866))))

(declare-fun e!3931314 () Bool)

(assert (=> b!6486620 e!3931314))

(declare-fun res!2664086 () Bool)

(assert (=> b!6486620 (=> (not res!2664086) (not e!3931314))))

(declare-fun lt!2388905 () Bool)

(assert (=> b!6486620 (= res!2664086 (= lt!2388905 (matchRSpec!3468 lt!2388855 s!2326)))))

(assert (=> b!6486620 (= lt!2388905 (matchR!8550 lt!2388855 s!2326))))

(declare-fun lt!2388864 () Unit!158799)

(assert (=> b!6486620 (= lt!2388864 (mainMatchTheorem!3468 lt!2388855 s!2326))))

(declare-fun b!6486621 () Bool)

(declare-fun res!2664093 () Bool)

(assert (=> b!6486621 (=> res!2664093 e!3931335)))

(assert (=> b!6486621 (= res!2664093 (not (matchR!8550 (regTwo!33246 r!7292) (_2!36649 lt!2388900))))))

(declare-fun b!6486622 () Bool)

(declare-fun res!2664099 () Bool)

(assert (=> b!6486622 (=> res!2664099 e!3931328)))

(declare-fun matchZipper!2379 ((InoxSet Context!11502) List!65400) Bool)

(assert (=> b!6486622 (= res!2664099 (not (= (matchZipper!2379 lt!2388869 s!2326) (matchZipper!2379 lt!2388913 (t!379026 s!2326)))))))

(declare-fun b!6486623 () Bool)

(declare-fun e!3931321 () Bool)

(declare-fun lt!2388867 () (InoxSet Context!11502))

(assert (=> b!6486623 (= e!3931321 (matchZipper!2379 lt!2388867 (t!379026 s!2326)))))

(declare-fun b!6486613 () Bool)

(declare-fun res!2664079 () Bool)

(assert (=> b!6486613 (=> res!2664079 e!3931330)))

(declare-fun generalisedConcat!1964 (List!65401) Regex!16367)

(assert (=> b!6486613 (= res!2664079 (not (= r!7292 (generalisedConcat!1964 (exprs!6251 (h!71726 zl!343))))))))

(declare-fun res!2664080 () Bool)

(declare-fun e!3931323 () Bool)

(assert (=> start!637586 (=> (not res!2664080) (not e!3931323))))

(declare-fun validRegex!8103 (Regex!16367) Bool)

(assert (=> start!637586 (= res!2664080 (validRegex!8103 r!7292))))

(assert (=> start!637586 e!3931323))

(declare-fun e!3931317 () Bool)

(assert (=> start!637586 e!3931317))

(declare-fun condSetEmpty!44193 () Bool)

(declare-fun z!1189 () (InoxSet Context!11502))

(assert (=> start!637586 (= condSetEmpty!44193 (= z!1189 ((as const (Array Context!11502 Bool)) false)))))

(declare-fun setRes!44193 () Bool)

(assert (=> start!637586 setRes!44193))

(declare-fun e!3931319 () Bool)

(assert (=> start!637586 e!3931319))

(declare-fun e!3931318 () Bool)

(assert (=> start!637586 e!3931318))

(declare-fun b!6486624 () Bool)

(declare-fun e!3931322 () Bool)

(declare-fun tp!1796183 () Bool)

(assert (=> b!6486624 (= e!3931322 tp!1796183)))

(declare-fun b!6486625 () Bool)

(assert (=> b!6486625 (= e!3931323 e!3931313)))

(declare-fun res!2664102 () Bool)

(assert (=> b!6486625 (=> (not res!2664102) (not e!3931313))))

(declare-fun lt!2388897 () Regex!16367)

(assert (=> b!6486625 (= res!2664102 (= r!7292 lt!2388897))))

(assert (=> b!6486625 (= lt!2388897 (unfocusZipper!2109 zl!343))))

(declare-fun b!6486626 () Bool)

(declare-fun res!2664081 () Bool)

(declare-fun e!3931324 () Bool)

(assert (=> b!6486626 (=> res!2664081 e!3931324)))

(assert (=> b!6486626 (= res!2664081 (or ((_ is Concat!25212) (regOne!33246 r!7292)) (not ((_ is Star!16367) (regOne!33246 r!7292)))))))

(declare-fun b!6486627 () Bool)

(assert (=> b!6486627 (= e!3931324 e!3931332)))

(declare-fun res!2664094 () Bool)

(assert (=> b!6486627 (=> res!2664094 e!3931332)))

(declare-fun lt!2388893 () (InoxSet Context!11502))

(assert (=> b!6486627 (= res!2664094 (not (= lt!2388893 lt!2388911)))))

(declare-fun derivationStepZipperDown!1615 (Regex!16367 Context!11502 C!33004) (InoxSet Context!11502))

(assert (=> b!6486627 (= lt!2388911 (derivationStepZipperDown!1615 (reg!16696 (regOne!33246 r!7292)) lt!2388862 (h!71724 s!2326)))))

(assert (=> b!6486627 (= lt!2388862 (Context!11503 lt!2388871))))

(assert (=> b!6486627 (= lt!2388871 (Cons!65277 lt!2388865 (t!379027 (exprs!6251 (h!71726 zl!343)))))))

(assert (=> b!6486627 (= lt!2388865 (Star!16367 (reg!16696 (regOne!33246 r!7292))))))

(declare-fun e!3931325 () Bool)

(assert (=> b!6486628 (= e!3931325 e!3931324)))

(declare-fun res!2664091 () Bool)

(assert (=> b!6486628 (=> res!2664091 e!3931324)))

(assert (=> b!6486628 (= res!2664091 (or (and ((_ is ElementMatch!16367) (regOne!33246 r!7292)) (= (c!1188383 (regOne!33246 r!7292)) (h!71724 s!2326))) ((_ is Union!16367) (regOne!33246 r!7292))))))

(declare-fun lt!2388890 () Unit!158799)

(declare-fun e!3931329 () Unit!158799)

(assert (=> b!6486628 (= lt!2388890 e!3931329)))

(declare-fun c!1188382 () Bool)

(declare-fun nullable!6360 (Regex!16367) Bool)

(assert (=> b!6486628 (= c!1188382 (nullable!6360 (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(assert (=> b!6486628 (= (flatMap!1872 z!1189 lambda!359120) (derivationStepZipperUp!1541 (h!71726 zl!343) (h!71724 s!2326)))))

(declare-fun lt!2388886 () Unit!158799)

(assert (=> b!6486628 (= lt!2388886 (lemmaFlatMapOnSingletonSet!1398 z!1189 (h!71726 zl!343) lambda!359120))))

(declare-fun lt!2388870 () Context!11502)

(assert (=> b!6486628 (= lt!2388867 (derivationStepZipperUp!1541 lt!2388870 (h!71724 s!2326)))))

(assert (=> b!6486628 (= lt!2388893 (derivationStepZipperDown!1615 (h!71725 (exprs!6251 (h!71726 zl!343))) lt!2388870 (h!71724 s!2326)))))

(assert (=> b!6486628 (= lt!2388870 (Context!11503 (t!379027 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun lt!2388902 () (InoxSet Context!11502))

(assert (=> b!6486628 (= lt!2388902 (derivationStepZipperUp!1541 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343))))) (h!71724 s!2326)))))

(declare-fun b!6486629 () Bool)

(declare-fun e!3931334 () Bool)

(assert (=> b!6486629 (= e!3931334 (nullable!6360 (regOne!33246 (regOne!33246 r!7292))))))

(declare-fun b!6486630 () Bool)

(declare-fun tp!1796188 () Bool)

(declare-fun tp!1796187 () Bool)

(assert (=> b!6486630 (= e!3931317 (and tp!1796188 tp!1796187))))

(declare-fun b!6486631 () Bool)

(declare-fun res!2664088 () Bool)

(assert (=> b!6486631 (=> res!2664088 e!3931328)))

(assert (=> b!6486631 (= res!2664088 (not (= lt!2388897 r!7292)))))

(declare-fun b!6486632 () Bool)

(declare-fun res!2664087 () Bool)

(assert (=> b!6486632 (=> res!2664087 e!3931330)))

(assert (=> b!6486632 (= res!2664087 (not ((_ is Cons!65277) (exprs!6251 (h!71726 zl!343)))))))

(declare-fun b!6486633 () Bool)

(declare-fun Unit!158801 () Unit!158799)

(assert (=> b!6486633 (= e!3931329 Unit!158801)))

(declare-fun lt!2388904 () Unit!158799)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1198 ((InoxSet Context!11502) (InoxSet Context!11502) List!65400) Unit!158799)

(assert (=> b!6486633 (= lt!2388904 (lemmaZipperConcatMatchesSameAsBothZippers!1198 lt!2388893 lt!2388867 (t!379026 s!2326)))))

(declare-fun res!2664072 () Bool)

(assert (=> b!6486633 (= res!2664072 (matchZipper!2379 lt!2388893 (t!379026 s!2326)))))

(assert (=> b!6486633 (=> res!2664072 e!3931321)))

(assert (=> b!6486633 (= (matchZipper!2379 ((_ map or) lt!2388893 lt!2388867) (t!379026 s!2326)) e!3931321)))

(declare-fun b!6486634 () Bool)

(declare-fun res!2664070 () Bool)

(assert (=> b!6486634 (=> res!2664070 e!3931330)))

(declare-fun generalisedUnion!2211 (List!65401) Regex!16367)

(declare-fun unfocusZipperList!1788 (List!65402) List!65401)

(assert (=> b!6486634 (= res!2664070 (not (= r!7292 (generalisedUnion!2211 (unfocusZipperList!1788 zl!343)))))))

(declare-fun b!6486635 () Bool)

(declare-fun tp_is_empty!41987 () Bool)

(declare-fun tp!1796184 () Bool)

(assert (=> b!6486635 (= e!3931318 (and tp_is_empty!41987 tp!1796184))))

(declare-fun b!6486636 () Bool)

(assert (=> b!6486636 (= e!3931314 (or (not lt!2388866) lt!2388880))))

(declare-fun b!6486637 () Bool)

(assert (=> b!6486637 (= e!3931328 e!3931333)))

(declare-fun res!2664082 () Bool)

(assert (=> b!6486637 (=> res!2664082 e!3931333)))

(assert (=> b!6486637 (= res!2664082 (not (= r!7292 lt!2388899)))))

(assert (=> b!6486637 (= lt!2388899 (Concat!25212 lt!2388865 (regTwo!33246 r!7292)))))

(declare-fun e!3931312 () Bool)

(assert (=> b!6486638 (= e!3931335 e!3931312)))

(declare-fun res!2664083 () Bool)

(assert (=> b!6486638 (=> res!2664083 e!3931312)))

(declare-fun lt!2388889 () List!65400)

(assert (=> b!6486638 (= res!2664083 (not (= (_1!36649 lt!2388900) lt!2388889)))))

(declare-fun lt!2388858 () tuple2!66692)

(declare-fun ++!14444 (List!65400 List!65400) List!65400)

(assert (=> b!6486638 (= lt!2388889 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858)))))

(declare-datatypes ((Option!16258 0))(
  ( (None!16257) (Some!16257 (v!52436 tuple2!66692)) )
))
(declare-fun lt!2388861 () Option!16258)

(declare-fun get!22634 (Option!16258) tuple2!66692)

(assert (=> b!6486638 (= lt!2388858 (get!22634 lt!2388861))))

(declare-fun Exists!3437 (Int) Bool)

(assert (=> b!6486638 (= (Exists!3437 lambda!359123) (Exists!3437 lambda!359125))))

(declare-fun lt!2388910 () Unit!158799)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1974 (Regex!16367 Regex!16367 List!65400) Unit!158799)

(assert (=> b!6486638 (= lt!2388910 (lemmaExistCutMatchRandMatchRSpecEquivalent!1974 (reg!16696 (regOne!33246 r!7292)) lt!2388865 (_1!36649 lt!2388900)))))

(assert (=> b!6486638 (= (Exists!3437 lambda!359123) (Exists!3437 lambda!359124))))

(declare-fun lt!2388877 () Unit!158799)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!658 (Regex!16367 List!65400) Unit!158799)

(assert (=> b!6486638 (= lt!2388877 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!658 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388900)))))

(declare-fun isDefined!12961 (Option!16258) Bool)

(assert (=> b!6486638 (= (isDefined!12961 lt!2388861) (Exists!3437 lambda!359123))))

(declare-fun findConcatSeparation!2672 (Regex!16367 Regex!16367 List!65400 List!65400 List!65400) Option!16258)

(assert (=> b!6486638 (= lt!2388861 (findConcatSeparation!2672 (reg!16696 (regOne!33246 r!7292)) lt!2388865 Nil!65276 (_1!36649 lt!2388900) (_1!36649 lt!2388900)))))

(declare-fun lt!2388906 () Unit!158799)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2436 (Regex!16367 Regex!16367 List!65400) Unit!158799)

(assert (=> b!6486638 (= lt!2388906 (lemmaFindConcatSeparationEquivalentToExists!2436 (reg!16696 (regOne!33246 r!7292)) lt!2388865 (_1!36649 lt!2388900)))))

(assert (=> b!6486638 (matchRSpec!3468 lt!2388865 (_1!36649 lt!2388900))))

(declare-fun lt!2388891 () Unit!158799)

(assert (=> b!6486638 (= lt!2388891 (mainMatchTheorem!3468 lt!2388865 (_1!36649 lt!2388900)))))

(declare-fun setElem!44193 () Context!11502)

(declare-fun tp!1796186 () Bool)

(declare-fun setNonEmpty!44193 () Bool)

(declare-fun e!3931331 () Bool)

(declare-fun inv!84164 (Context!11502) Bool)

(assert (=> setNonEmpty!44193 (= setRes!44193 (and tp!1796186 (inv!84164 setElem!44193) e!3931331))))

(declare-fun setRest!44193 () (InoxSet Context!11502))

(assert (=> setNonEmpty!44193 (= z!1189 ((_ map or) (store ((as const (Array Context!11502 Bool)) false) setElem!44193 true) setRest!44193))))

(declare-fun b!6486639 () Bool)

(declare-fun e!3931316 () Bool)

(assert (=> b!6486639 (= e!3931316 lt!2388905)))

(declare-fun b!6486640 () Bool)

(declare-fun e!3931320 () Bool)

(assert (=> b!6486640 (= e!3931320 (inv!84164 lt!2388885))))

(declare-fun lt!2388881 () List!65401)

(declare-fun lt!2388879 () Unit!158799)

(declare-fun lambda!359126 () Int)

(declare-fun lemmaConcatPreservesForall!346 (List!65401 List!65401 Int) Unit!158799)

(assert (=> b!6486640 (= lt!2388879 (lemmaConcatPreservesForall!346 lt!2388881 lt!2388871 lambda!359126))))

(assert (=> b!6486640 e!3931316))

(declare-fun res!2664074 () Bool)

(assert (=> b!6486640 (=> (not res!2664074) (not e!3931316))))

(declare-fun lt!2388887 () List!65400)

(assert (=> b!6486640 (= res!2664074 (matchR!8550 lt!2388855 lt!2388887))))

(declare-fun lt!2388903 () List!65400)

(declare-fun lt!2388896 () Unit!158799)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!330 (Regex!16367 Regex!16367 List!65400 List!65400) Unit!158799)

(assert (=> b!6486640 (= lt!2388896 (lemmaTwoRegexMatchThenConcatMatchesConcatString!330 (reg!16696 (regOne!33246 r!7292)) lt!2388899 (_1!36649 lt!2388858) lt!2388903))))

(declare-fun ++!14445 (List!65401 List!65401) List!65401)

(assert (=> b!6486640 (matchZipper!2379 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 lt!2388881 lt!2388871)) true) lt!2388887)))

(declare-fun lt!2388875 () Unit!158799)

(assert (=> b!6486640 (= lt!2388875 (lemmaConcatPreservesForall!346 lt!2388881 lt!2388871 lambda!359126))))

(declare-fun lt!2388907 () Unit!158799)

(declare-fun lt!2388895 () Context!11502)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!168 (Context!11502 Context!11502 List!65400 List!65400) Unit!158799)

(assert (=> b!6486640 (= lt!2388907 (lemmaConcatenateContextMatchesConcatOfStrings!168 lt!2388895 lt!2388862 (_1!36649 lt!2388858) lt!2388903))))

(declare-fun lt!2388898 () (InoxSet Context!11502))

(assert (=> b!6486640 (matchZipper!2379 lt!2388898 lt!2388903)))

(declare-fun lt!2388874 () Unit!158799)

(declare-fun theoremZipperRegexEquiv!833 ((InoxSet Context!11502) List!65402 Regex!16367 List!65400) Unit!158799)

(assert (=> b!6486640 (= lt!2388874 (theoremZipperRegexEquiv!833 lt!2388898 lt!2388863 lt!2388899 lt!2388903))))

(declare-fun lt!2388878 () (InoxSet Context!11502))

(assert (=> b!6486640 (matchZipper!2379 lt!2388878 (_1!36649 lt!2388858))))

(declare-fun lt!2388883 () List!65402)

(declare-fun lt!2388912 () Unit!158799)

(assert (=> b!6486640 (= lt!2388912 (theoremZipperRegexEquiv!833 lt!2388878 lt!2388883 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388858)))))

(assert (=> b!6486640 (matchR!8550 lt!2388899 lt!2388903)))

(declare-fun lt!2388901 () Unit!158799)

(assert (=> b!6486640 (= lt!2388901 (lemmaTwoRegexMatchThenConcatMatchesConcatString!330 lt!2388865 (regTwo!33246 r!7292) (_2!36649 lt!2388858) (_2!36649 lt!2388900)))))

(assert (=> b!6486640 (matchR!8550 lt!2388865 lt!2388889)))

(declare-fun lt!2388860 () Unit!158799)

(declare-fun lemmaStarApp!144 (Regex!16367 List!65400 List!65400) Unit!158799)

(assert (=> b!6486640 (= lt!2388860 (lemmaStarApp!144 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388858) (_2!36649 lt!2388858)))))

(declare-fun b!6486641 () Bool)

(declare-fun res!2664076 () Bool)

(assert (=> b!6486641 (=> res!2664076 e!3931325)))

(declare-fun isEmpty!37470 (List!65401) Bool)

(assert (=> b!6486641 (= res!2664076 (isEmpty!37470 (t!379027 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun b!6486642 () Bool)

(declare-fun tp!1796182 () Bool)

(assert (=> b!6486642 (= e!3931331 tp!1796182)))

(declare-fun b!6486643 () Bool)

(declare-fun res!2664101 () Bool)

(assert (=> b!6486643 (=> res!2664101 e!3931320)))

(assert (=> b!6486643 (= res!2664101 (not (matchR!8550 lt!2388865 (_2!36649 lt!2388858))))))

(declare-fun b!6486644 () Bool)

(declare-fun res!2664075 () Bool)

(assert (=> b!6486644 (=> res!2664075 e!3931330)))

(assert (=> b!6486644 (= res!2664075 (or ((_ is EmptyExpr!16367) r!7292) ((_ is EmptyLang!16367) r!7292) ((_ is ElementMatch!16367) r!7292) ((_ is Union!16367) r!7292) (not ((_ is Concat!25212) r!7292))))))

(declare-fun b!6486645 () Bool)

(declare-fun res!2664089 () Bool)

(assert (=> b!6486645 (=> (not res!2664089) (not e!3931323))))

(declare-fun toList!10151 ((InoxSet Context!11502)) List!65402)

(assert (=> b!6486645 (= res!2664089 (= (toList!10151 z!1189) zl!343))))

(declare-fun b!6486646 () Bool)

(declare-fun res!2664090 () Bool)

(assert (=> b!6486646 (=> res!2664090 e!3931320)))

(assert (=> b!6486646 (= res!2664090 (not (matchR!8550 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388858))))))

(declare-fun b!6486647 () Bool)

(assert (=> b!6486647 (= e!3931336 e!3931327)))

(declare-fun res!2664100 () Bool)

(assert (=> b!6486647 (=> res!2664100 e!3931327)))

(assert (=> b!6486647 (= res!2664100 (not (= (unfocusZipper!2109 lt!2388883) (reg!16696 (regOne!33246 r!7292)))))))

(assert (=> b!6486647 (= lt!2388883 (Cons!65278 lt!2388895 Nil!65278))))

(assert (=> b!6486647 (= (flatMap!1872 lt!2388898 lambda!359120) (derivationStepZipperUp!1541 lt!2388862 (h!71724 s!2326)))))

(declare-fun lt!2388876 () Unit!158799)

(assert (=> b!6486647 (= lt!2388876 (lemmaFlatMapOnSingletonSet!1398 lt!2388898 lt!2388862 lambda!359120))))

(assert (=> b!6486647 (= (flatMap!1872 lt!2388878 lambda!359120) (derivationStepZipperUp!1541 lt!2388895 (h!71724 s!2326)))))

(declare-fun lt!2388857 () Unit!158799)

(assert (=> b!6486647 (= lt!2388857 (lemmaFlatMapOnSingletonSet!1398 lt!2388878 lt!2388895 lambda!359120))))

(declare-fun lt!2388909 () (InoxSet Context!11502))

(assert (=> b!6486647 (= lt!2388909 (derivationStepZipperUp!1541 lt!2388862 (h!71724 s!2326)))))

(declare-fun lt!2388914 () (InoxSet Context!11502))

(assert (=> b!6486647 (= lt!2388914 (derivationStepZipperUp!1541 lt!2388895 (h!71724 s!2326)))))

(assert (=> b!6486647 (= lt!2388898 (store ((as const (Array Context!11502 Bool)) false) lt!2388862 true))))

(assert (=> b!6486647 (= lt!2388878 (store ((as const (Array Context!11502 Bool)) false) lt!2388895 true))))

(assert (=> b!6486647 (= lt!2388895 (Context!11503 lt!2388881))))

(assert (=> b!6486647 (= lt!2388881 (Cons!65277 (reg!16696 (regOne!33246 r!7292)) Nil!65277))))

(declare-fun setIsEmpty!44193 () Bool)

(assert (=> setIsEmpty!44193 setRes!44193))

(declare-fun tp!1796179 () Bool)

(declare-fun b!6486648 () Bool)

(assert (=> b!6486648 (= e!3931319 (and (inv!84164 (h!71726 zl!343)) e!3931322 tp!1796179))))

(declare-fun b!6486649 () Bool)

(assert (=> b!6486649 (= e!3931312 e!3931320)))

(declare-fun res!2664097 () Bool)

(assert (=> b!6486649 (=> res!2664097 e!3931320)))

(declare-fun lt!2388873 () List!65400)

(assert (=> b!6486649 (= res!2664097 (not (= lt!2388873 s!2326)))))

(assert (=> b!6486649 (= lt!2388873 lt!2388887)))

(assert (=> b!6486649 (= lt!2388887 (++!14444 (_1!36649 lt!2388858) lt!2388903))))

(assert (=> b!6486649 (= lt!2388873 (++!14444 lt!2388889 (_2!36649 lt!2388900)))))

(assert (=> b!6486649 (= lt!2388903 (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900)))))

(declare-fun lt!2388884 () Unit!158799)

(declare-fun lemmaConcatAssociativity!2938 (List!65400 List!65400 List!65400) Unit!158799)

(assert (=> b!6486649 (= lt!2388884 (lemmaConcatAssociativity!2938 (_1!36649 lt!2388858) (_2!36649 lt!2388858) (_2!36649 lt!2388900)))))

(declare-fun b!6486650 () Bool)

(declare-fun tp!1796185 () Bool)

(assert (=> b!6486650 (= e!3931317 tp!1796185)))

(declare-fun b!6486651 () Bool)

(declare-fun Unit!158802 () Unit!158799)

(assert (=> b!6486651 (= e!3931329 Unit!158802)))

(declare-fun b!6486652 () Bool)

(declare-fun res!2664103 () Bool)

(assert (=> b!6486652 (=> res!2664103 e!3931335)))

(assert (=> b!6486652 (= res!2664103 (not (matchR!8550 lt!2388865 (_1!36649 lt!2388900))))))

(declare-fun b!6486653 () Bool)

(declare-fun res!2664078 () Bool)

(assert (=> b!6486653 (=> res!2664078 e!3931324)))

(assert (=> b!6486653 (= res!2664078 e!3931334)))

(declare-fun res!2664077 () Bool)

(assert (=> b!6486653 (=> (not res!2664077) (not e!3931334))))

(assert (=> b!6486653 (= res!2664077 ((_ is Concat!25212) (regOne!33246 r!7292)))))

(declare-fun b!6486654 () Bool)

(declare-fun tp!1796180 () Bool)

(declare-fun tp!1796181 () Bool)

(assert (=> b!6486654 (= e!3931317 (and tp!1796180 tp!1796181))))

(assert (=> b!6486655 (= e!3931330 e!3931325)))

(declare-fun res!2664096 () Bool)

(assert (=> b!6486655 (=> res!2664096 e!3931325)))

(declare-fun lt!2388859 () Bool)

(assert (=> b!6486655 (= res!2664096 (or (not (= lt!2388866 lt!2388859)) ((_ is Nil!65276) s!2326)))))

(assert (=> b!6486655 (= (Exists!3437 lambda!359118) (Exists!3437 lambda!359119))))

(declare-fun lt!2388856 () Unit!158799)

(assert (=> b!6486655 (= lt!2388856 (lemmaExistCutMatchRandMatchRSpecEquivalent!1974 (regOne!33246 r!7292) (regTwo!33246 r!7292) s!2326))))

(assert (=> b!6486655 (= lt!2388859 (Exists!3437 lambda!359118))))

(assert (=> b!6486655 (= lt!2388859 (isDefined!12961 (findConcatSeparation!2672 (regOne!33246 r!7292) (regTwo!33246 r!7292) Nil!65276 s!2326 s!2326)))))

(declare-fun lt!2388882 () Unit!158799)

(assert (=> b!6486655 (= lt!2388882 (lemmaFindConcatSeparationEquivalentToExists!2436 (regOne!33246 r!7292) (regTwo!33246 r!7292) s!2326))))

(assert (=> b!6486656 (= e!3931326 e!3931335)))

(declare-fun res!2664095 () Bool)

(assert (=> b!6486656 (=> res!2664095 e!3931335)))

(assert (=> b!6486656 (= res!2664095 (not (= (++!14444 (_1!36649 lt!2388900) (_2!36649 lt!2388900)) s!2326)))))

(declare-fun lt!2388868 () Option!16258)

(assert (=> b!6486656 (= lt!2388900 (get!22634 lt!2388868))))

(assert (=> b!6486656 (= (Exists!3437 lambda!359121) (Exists!3437 lambda!359122))))

(declare-fun lt!2388892 () Unit!158799)

(assert (=> b!6486656 (= lt!2388892 (lemmaExistCutMatchRandMatchRSpecEquivalent!1974 lt!2388865 (regTwo!33246 r!7292) s!2326))))

(assert (=> b!6486656 (= (isDefined!12961 lt!2388868) (Exists!3437 lambda!359121))))

(assert (=> b!6486656 (= lt!2388868 (findConcatSeparation!2672 lt!2388865 (regTwo!33246 r!7292) Nil!65276 s!2326 s!2326))))

(declare-fun lt!2388872 () Unit!158799)

(assert (=> b!6486656 (= lt!2388872 (lemmaFindConcatSeparationEquivalentToExists!2436 lt!2388865 (regTwo!33246 r!7292) s!2326))))

(declare-fun b!6486657 () Bool)

(assert (=> b!6486657 (= e!3931317 tp_is_empty!41987)))

(assert (= (and start!637586 res!2664080) b!6486645))

(assert (= (and b!6486645 res!2664089) b!6486625))

(assert (= (and b!6486625 res!2664102) b!6486618))

(assert (= (and b!6486618 (not res!2664084)) b!6486615))

(assert (= (and b!6486615 (not res!2664098)) b!6486613))

(assert (= (and b!6486613 (not res!2664079)) b!6486632))

(assert (= (and b!6486632 (not res!2664087)) b!6486634))

(assert (= (and b!6486634 (not res!2664070)) b!6486644))

(assert (= (and b!6486644 (not res!2664075)) b!6486655))

(assert (= (and b!6486655 (not res!2664096)) b!6486641))

(assert (= (and b!6486641 (not res!2664076)) b!6486628))

(assert (= (and b!6486628 c!1188382) b!6486633))

(assert (= (and b!6486628 (not c!1188382)) b!6486651))

(assert (= (and b!6486633 (not res!2664072)) b!6486623))

(assert (= (and b!6486628 (not res!2664091)) b!6486653))

(assert (= (and b!6486653 res!2664077) b!6486629))

(assert (= (and b!6486653 (not res!2664078)) b!6486626))

(assert (= (and b!6486626 (not res!2664081)) b!6486627))

(assert (= (and b!6486627 (not res!2664094)) b!6486619))

(assert (= (and b!6486619 (not res!2664073)) b!6486622))

(assert (= (and b!6486622 (not res!2664099)) b!6486631))

(assert (= (and b!6486631 (not res!2664088)) b!6486637))

(assert (= (and b!6486637 (not res!2664082)) b!6486616))

(assert (= (and b!6486616 (not res!2664085)) b!6486647))

(assert (= (and b!6486647 (not res!2664100)) b!6486617))

(assert (= (and b!6486617 (not res!2664104)) b!6486620))

(assert (= (and b!6486620 res!2664086) b!6486636))

(assert (= (and b!6486620 (not res!2664092)) b!6486656))

(assert (= (and b!6486656 (not res!2664095)) b!6486652))

(assert (= (and b!6486652 (not res!2664103)) b!6486621))

(assert (= (and b!6486621 (not res!2664093)) b!6486614))

(assert (= (and b!6486614 (not res!2664071)) b!6486638))

(assert (= (and b!6486638 (not res!2664083)) b!6486649))

(assert (= (and b!6486649 (not res!2664097)) b!6486646))

(assert (= (and b!6486646 (not res!2664090)) b!6486643))

(assert (= (and b!6486643 (not res!2664101)) b!6486640))

(assert (= (and b!6486640 res!2664074) b!6486639))

(assert (= (and start!637586 ((_ is ElementMatch!16367) r!7292)) b!6486657))

(assert (= (and start!637586 ((_ is Concat!25212) r!7292)) b!6486654))

(assert (= (and start!637586 ((_ is Star!16367) r!7292)) b!6486650))

(assert (= (and start!637586 ((_ is Union!16367) r!7292)) b!6486630))

(assert (= (and start!637586 condSetEmpty!44193) setIsEmpty!44193))

(assert (= (and start!637586 (not condSetEmpty!44193)) setNonEmpty!44193))

(assert (= setNonEmpty!44193 b!6486642))

(assert (= b!6486648 b!6486624))

(assert (= (and start!637586 ((_ is Cons!65278) zl!343)) b!6486648))

(assert (= (and start!637586 ((_ is Cons!65276) s!2326)) b!6486635))

(declare-fun m!7274898 () Bool)

(assert (=> b!6486622 m!7274898))

(declare-fun m!7274900 () Bool)

(assert (=> b!6486622 m!7274900))

(declare-fun m!7274902 () Bool)

(assert (=> b!6486619 m!7274902))

(declare-fun m!7274904 () Bool)

(assert (=> b!6486619 m!7274904))

(declare-fun m!7274906 () Bool)

(assert (=> b!6486619 m!7274906))

(declare-fun m!7274908 () Bool)

(assert (=> b!6486619 m!7274908))

(declare-fun m!7274910 () Bool)

(assert (=> b!6486619 m!7274910))

(declare-fun m!7274912 () Bool)

(assert (=> b!6486633 m!7274912))

(declare-fun m!7274914 () Bool)

(assert (=> b!6486633 m!7274914))

(declare-fun m!7274916 () Bool)

(assert (=> b!6486633 m!7274916))

(declare-fun m!7274918 () Bool)

(assert (=> b!6486643 m!7274918))

(declare-fun m!7274920 () Bool)

(assert (=> b!6486649 m!7274920))

(declare-fun m!7274922 () Bool)

(assert (=> b!6486649 m!7274922))

(declare-fun m!7274924 () Bool)

(assert (=> b!6486649 m!7274924))

(declare-fun m!7274926 () Bool)

(assert (=> b!6486649 m!7274926))

(declare-fun m!7274928 () Bool)

(assert (=> b!6486621 m!7274928))

(declare-fun m!7274930 () Bool)

(assert (=> b!6486613 m!7274930))

(declare-fun m!7274932 () Bool)

(assert (=> b!6486628 m!7274932))

(declare-fun m!7274934 () Bool)

(assert (=> b!6486628 m!7274934))

(declare-fun m!7274936 () Bool)

(assert (=> b!6486628 m!7274936))

(declare-fun m!7274938 () Bool)

(assert (=> b!6486628 m!7274938))

(declare-fun m!7274940 () Bool)

(assert (=> b!6486628 m!7274940))

(declare-fun m!7274942 () Bool)

(assert (=> b!6486628 m!7274942))

(declare-fun m!7274944 () Bool)

(assert (=> b!6486628 m!7274944))

(declare-fun m!7274946 () Bool)

(assert (=> b!6486640 m!7274946))

(declare-fun m!7274948 () Bool)

(assert (=> b!6486640 m!7274948))

(declare-fun m!7274950 () Bool)

(assert (=> b!6486640 m!7274950))

(declare-fun m!7274952 () Bool)

(assert (=> b!6486640 m!7274952))

(declare-fun m!7274954 () Bool)

(assert (=> b!6486640 m!7274954))

(declare-fun m!7274956 () Bool)

(assert (=> b!6486640 m!7274956))

(declare-fun m!7274958 () Bool)

(assert (=> b!6486640 m!7274958))

(declare-fun m!7274960 () Bool)

(assert (=> b!6486640 m!7274960))

(declare-fun m!7274962 () Bool)

(assert (=> b!6486640 m!7274962))

(declare-fun m!7274964 () Bool)

(assert (=> b!6486640 m!7274964))

(assert (=> b!6486640 m!7274948))

(declare-fun m!7274966 () Bool)

(assert (=> b!6486640 m!7274966))

(declare-fun m!7274968 () Bool)

(assert (=> b!6486640 m!7274968))

(assert (=> b!6486640 m!7274962))

(declare-fun m!7274970 () Bool)

(assert (=> b!6486640 m!7274970))

(declare-fun m!7274972 () Bool)

(assert (=> b!6486640 m!7274972))

(declare-fun m!7274974 () Bool)

(assert (=> b!6486640 m!7274974))

(declare-fun m!7274976 () Bool)

(assert (=> b!6486640 m!7274976))

(declare-fun m!7274978 () Bool)

(assert (=> b!6486634 m!7274978))

(assert (=> b!6486634 m!7274978))

(declare-fun m!7274980 () Bool)

(assert (=> b!6486634 m!7274980))

(declare-fun m!7274982 () Bool)

(assert (=> b!6486641 m!7274982))

(declare-fun m!7274984 () Bool)

(assert (=> b!6486620 m!7274984))

(declare-fun m!7274986 () Bool)

(assert (=> b!6486620 m!7274986))

(declare-fun m!7274988 () Bool)

(assert (=> b!6486620 m!7274988))

(declare-fun m!7274990 () Bool)

(assert (=> b!6486616 m!7274990))

(declare-fun m!7274992 () Bool)

(assert (=> b!6486617 m!7274992))

(declare-fun m!7274994 () Bool)

(assert (=> b!6486625 m!7274994))

(declare-fun m!7274996 () Bool)

(assert (=> b!6486629 m!7274996))

(declare-fun m!7274998 () Bool)

(assert (=> setNonEmpty!44193 m!7274998))

(declare-fun m!7275000 () Bool)

(assert (=> b!6486618 m!7275000))

(declare-fun m!7275002 () Bool)

(assert (=> b!6486618 m!7275002))

(declare-fun m!7275004 () Bool)

(assert (=> b!6486618 m!7275004))

(declare-fun m!7275006 () Bool)

(assert (=> b!6486614 m!7275006))

(declare-fun m!7275008 () Bool)

(assert (=> b!6486652 m!7275008))

(declare-fun m!7275010 () Bool)

(assert (=> start!637586 m!7275010))

(declare-fun m!7275012 () Bool)

(assert (=> b!6486638 m!7275012))

(declare-fun m!7275014 () Bool)

(assert (=> b!6486638 m!7275014))

(declare-fun m!7275016 () Bool)

(assert (=> b!6486638 m!7275016))

(declare-fun m!7275018 () Bool)

(assert (=> b!6486638 m!7275018))

(declare-fun m!7275020 () Bool)

(assert (=> b!6486638 m!7275020))

(declare-fun m!7275022 () Bool)

(assert (=> b!6486638 m!7275022))

(declare-fun m!7275024 () Bool)

(assert (=> b!6486638 m!7275024))

(declare-fun m!7275026 () Bool)

(assert (=> b!6486638 m!7275026))

(assert (=> b!6486638 m!7275026))

(declare-fun m!7275028 () Bool)

(assert (=> b!6486638 m!7275028))

(assert (=> b!6486638 m!7275026))

(declare-fun m!7275030 () Bool)

(assert (=> b!6486638 m!7275030))

(declare-fun m!7275032 () Bool)

(assert (=> b!6486638 m!7275032))

(declare-fun m!7275034 () Bool)

(assert (=> b!6486638 m!7275034))

(declare-fun m!7275036 () Bool)

(assert (=> b!6486627 m!7275036))

(declare-fun m!7275038 () Bool)

(assert (=> b!6486656 m!7275038))

(declare-fun m!7275040 () Bool)

(assert (=> b!6486656 m!7275040))

(declare-fun m!7275042 () Bool)

(assert (=> b!6486656 m!7275042))

(declare-fun m!7275044 () Bool)

(assert (=> b!6486656 m!7275044))

(assert (=> b!6486656 m!7275038))

(declare-fun m!7275046 () Bool)

(assert (=> b!6486656 m!7275046))

(declare-fun m!7275048 () Bool)

(assert (=> b!6486656 m!7275048))

(declare-fun m!7275050 () Bool)

(assert (=> b!6486656 m!7275050))

(declare-fun m!7275052 () Bool)

(assert (=> b!6486656 m!7275052))

(declare-fun m!7275054 () Bool)

(assert (=> b!6486647 m!7275054))

(declare-fun m!7275056 () Bool)

(assert (=> b!6486647 m!7275056))

(declare-fun m!7275058 () Bool)

(assert (=> b!6486647 m!7275058))

(declare-fun m!7275060 () Bool)

(assert (=> b!6486647 m!7275060))

(declare-fun m!7275062 () Bool)

(assert (=> b!6486647 m!7275062))

(declare-fun m!7275064 () Bool)

(assert (=> b!6486647 m!7275064))

(declare-fun m!7275066 () Bool)

(assert (=> b!6486647 m!7275066))

(declare-fun m!7275068 () Bool)

(assert (=> b!6486647 m!7275068))

(declare-fun m!7275070 () Bool)

(assert (=> b!6486647 m!7275070))

(declare-fun m!7275072 () Bool)

(assert (=> b!6486648 m!7275072))

(declare-fun m!7275074 () Bool)

(assert (=> b!6486623 m!7275074))

(declare-fun m!7275076 () Bool)

(assert (=> b!6486655 m!7275076))

(declare-fun m!7275078 () Bool)

(assert (=> b!6486655 m!7275078))

(declare-fun m!7275080 () Bool)

(assert (=> b!6486655 m!7275080))

(declare-fun m!7275082 () Bool)

(assert (=> b!6486655 m!7275082))

(declare-fun m!7275084 () Bool)

(assert (=> b!6486655 m!7275084))

(assert (=> b!6486655 m!7275076))

(assert (=> b!6486655 m!7275080))

(declare-fun m!7275086 () Bool)

(assert (=> b!6486655 m!7275086))

(declare-fun m!7275088 () Bool)

(assert (=> b!6486615 m!7275088))

(declare-fun m!7275090 () Bool)

(assert (=> b!6486645 m!7275090))

(declare-fun m!7275092 () Bool)

(assert (=> b!6486646 m!7275092))

(check-sat (not start!637586) (not b!6486622) (not b!6486641) (not b!6486615) (not b!6486654) (not b!6486621) (not b!6486635) (not b!6486633) tp_is_empty!41987 (not b!6486645) (not b!6486629) (not b!6486628) (not b!6486617) (not b!6486634) (not b!6486614) (not b!6486646) (not setNonEmpty!44193) (not b!6486616) (not b!6486655) (not b!6486640) (not b!6486649) (not b!6486618) (not b!6486619) (not b!6486650) (not b!6486630) (not b!6486613) (not b!6486648) (not b!6486623) (not b!6486643) (not b!6486625) (not b!6486642) (not b!6486656) (not b!6486627) (not b!6486624) (not b!6486620) (not b!6486647) (not b!6486652) (not b!6486638))
(check-sat)
(get-model)

(declare-fun d!2034931 () Bool)

(declare-fun nullableFct!2298 (Regex!16367) Bool)

(assert (=> d!2034931 (= (nullable!6360 (regOne!33246 (regOne!33246 r!7292))) (nullableFct!2298 (regOne!33246 (regOne!33246 r!7292))))))

(declare-fun bs!1645721 () Bool)

(assert (= bs!1645721 d!2034931))

(declare-fun m!7275484 () Bool)

(assert (=> bs!1645721 m!7275484))

(assert (=> b!6486629 d!2034931))

(declare-fun e!3931537 () Bool)

(declare-fun lt!2388997 () List!65400)

(declare-fun b!6487035 () Bool)

(assert (=> b!6487035 (= e!3931537 (or (not (= lt!2388903 Nil!65276)) (= lt!2388997 (_1!36649 lt!2388858))))))

(declare-fun d!2034933 () Bool)

(assert (=> d!2034933 e!3931537))

(declare-fun res!2664266 () Bool)

(assert (=> d!2034933 (=> (not res!2664266) (not e!3931537))))

(declare-fun content!12437 (List!65400) (InoxSet C!33004))

(assert (=> d!2034933 (= res!2664266 (= (content!12437 lt!2388997) ((_ map or) (content!12437 (_1!36649 lt!2388858)) (content!12437 lt!2388903))))))

(declare-fun e!3931538 () List!65400)

(assert (=> d!2034933 (= lt!2388997 e!3931538)))

(declare-fun c!1188488 () Bool)

(assert (=> d!2034933 (= c!1188488 ((_ is Nil!65276) (_1!36649 lt!2388858)))))

(assert (=> d!2034933 (= (++!14444 (_1!36649 lt!2388858) lt!2388903) lt!2388997)))

(declare-fun b!6487033 () Bool)

(assert (=> b!6487033 (= e!3931538 (Cons!65276 (h!71724 (_1!36649 lt!2388858)) (++!14444 (t!379026 (_1!36649 lt!2388858)) lt!2388903)))))

(declare-fun b!6487034 () Bool)

(declare-fun res!2664265 () Bool)

(assert (=> b!6487034 (=> (not res!2664265) (not e!3931537))))

(declare-fun size!40424 (List!65400) Int)

(assert (=> b!6487034 (= res!2664265 (= (size!40424 lt!2388997) (+ (size!40424 (_1!36649 lt!2388858)) (size!40424 lt!2388903))))))

(declare-fun b!6487032 () Bool)

(assert (=> b!6487032 (= e!3931538 lt!2388903)))

(assert (= (and d!2034933 c!1188488) b!6487032))

(assert (= (and d!2034933 (not c!1188488)) b!6487033))

(assert (= (and d!2034933 res!2664266) b!6487034))

(assert (= (and b!6487034 res!2664265) b!6487035))

(declare-fun m!7275522 () Bool)

(assert (=> d!2034933 m!7275522))

(declare-fun m!7275524 () Bool)

(assert (=> d!2034933 m!7275524))

(declare-fun m!7275526 () Bool)

(assert (=> d!2034933 m!7275526))

(declare-fun m!7275528 () Bool)

(assert (=> b!6487033 m!7275528))

(declare-fun m!7275530 () Bool)

(assert (=> b!6487034 m!7275530))

(declare-fun m!7275532 () Bool)

(assert (=> b!6487034 m!7275532))

(declare-fun m!7275534 () Bool)

(assert (=> b!6487034 m!7275534))

(assert (=> b!6486649 d!2034933))

(declare-fun e!3931539 () Bool)

(declare-fun b!6487039 () Bool)

(declare-fun lt!2388998 () List!65400)

(assert (=> b!6487039 (= e!3931539 (or (not (= (_2!36649 lt!2388900) Nil!65276)) (= lt!2388998 lt!2388889)))))

(declare-fun d!2034949 () Bool)

(assert (=> d!2034949 e!3931539))

(declare-fun res!2664268 () Bool)

(assert (=> d!2034949 (=> (not res!2664268) (not e!3931539))))

(assert (=> d!2034949 (= res!2664268 (= (content!12437 lt!2388998) ((_ map or) (content!12437 lt!2388889) (content!12437 (_2!36649 lt!2388900)))))))

(declare-fun e!3931540 () List!65400)

(assert (=> d!2034949 (= lt!2388998 e!3931540)))

(declare-fun c!1188489 () Bool)

(assert (=> d!2034949 (= c!1188489 ((_ is Nil!65276) lt!2388889))))

(assert (=> d!2034949 (= (++!14444 lt!2388889 (_2!36649 lt!2388900)) lt!2388998)))

(declare-fun b!6487037 () Bool)

(assert (=> b!6487037 (= e!3931540 (Cons!65276 (h!71724 lt!2388889) (++!14444 (t!379026 lt!2388889) (_2!36649 lt!2388900))))))

(declare-fun b!6487038 () Bool)

(declare-fun res!2664267 () Bool)

(assert (=> b!6487038 (=> (not res!2664267) (not e!3931539))))

(assert (=> b!6487038 (= res!2664267 (= (size!40424 lt!2388998) (+ (size!40424 lt!2388889) (size!40424 (_2!36649 lt!2388900)))))))

(declare-fun b!6487036 () Bool)

(assert (=> b!6487036 (= e!3931540 (_2!36649 lt!2388900))))

(assert (= (and d!2034949 c!1188489) b!6487036))

(assert (= (and d!2034949 (not c!1188489)) b!6487037))

(assert (= (and d!2034949 res!2664268) b!6487038))

(assert (= (and b!6487038 res!2664267) b!6487039))

(declare-fun m!7275536 () Bool)

(assert (=> d!2034949 m!7275536))

(declare-fun m!7275538 () Bool)

(assert (=> d!2034949 m!7275538))

(declare-fun m!7275540 () Bool)

(assert (=> d!2034949 m!7275540))

(declare-fun m!7275542 () Bool)

(assert (=> b!6487037 m!7275542))

(declare-fun m!7275544 () Bool)

(assert (=> b!6487038 m!7275544))

(declare-fun m!7275546 () Bool)

(assert (=> b!6487038 m!7275546))

(declare-fun m!7275548 () Bool)

(assert (=> b!6487038 m!7275548))

(assert (=> b!6486649 d!2034949))

(declare-fun lt!2389001 () List!65400)

(declare-fun e!3931541 () Bool)

(declare-fun b!6487045 () Bool)

(assert (=> b!6487045 (= e!3931541 (or (not (= (_2!36649 lt!2388900) Nil!65276)) (= lt!2389001 (_2!36649 lt!2388858))))))

(declare-fun d!2034951 () Bool)

(assert (=> d!2034951 e!3931541))

(declare-fun res!2664270 () Bool)

(assert (=> d!2034951 (=> (not res!2664270) (not e!3931541))))

(assert (=> d!2034951 (= res!2664270 (= (content!12437 lt!2389001) ((_ map or) (content!12437 (_2!36649 lt!2388858)) (content!12437 (_2!36649 lt!2388900)))))))

(declare-fun e!3931542 () List!65400)

(assert (=> d!2034951 (= lt!2389001 e!3931542)))

(declare-fun c!1188490 () Bool)

(assert (=> d!2034951 (= c!1188490 ((_ is Nil!65276) (_2!36649 lt!2388858)))))

(assert (=> d!2034951 (= (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900)) lt!2389001)))

(declare-fun b!6487043 () Bool)

(assert (=> b!6487043 (= e!3931542 (Cons!65276 (h!71724 (_2!36649 lt!2388858)) (++!14444 (t!379026 (_2!36649 lt!2388858)) (_2!36649 lt!2388900))))))

(declare-fun b!6487044 () Bool)

(declare-fun res!2664269 () Bool)

(assert (=> b!6487044 (=> (not res!2664269) (not e!3931541))))

(assert (=> b!6487044 (= res!2664269 (= (size!40424 lt!2389001) (+ (size!40424 (_2!36649 lt!2388858)) (size!40424 (_2!36649 lt!2388900)))))))

(declare-fun b!6487042 () Bool)

(assert (=> b!6487042 (= e!3931542 (_2!36649 lt!2388900))))

(assert (= (and d!2034951 c!1188490) b!6487042))

(assert (= (and d!2034951 (not c!1188490)) b!6487043))

(assert (= (and d!2034951 res!2664270) b!6487044))

(assert (= (and b!6487044 res!2664269) b!6487045))

(declare-fun m!7275550 () Bool)

(assert (=> d!2034951 m!7275550))

(declare-fun m!7275552 () Bool)

(assert (=> d!2034951 m!7275552))

(assert (=> d!2034951 m!7275540))

(declare-fun m!7275554 () Bool)

(assert (=> b!6487043 m!7275554))

(declare-fun m!7275556 () Bool)

(assert (=> b!6487044 m!7275556))

(declare-fun m!7275558 () Bool)

(assert (=> b!6487044 m!7275558))

(assert (=> b!6487044 m!7275548))

(assert (=> b!6486649 d!2034951))

(declare-fun d!2034953 () Bool)

(assert (=> d!2034953 (= (++!14444 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858)) (_2!36649 lt!2388900)) (++!14444 (_1!36649 lt!2388858) (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900))))))

(declare-fun lt!2389005 () Unit!158799)

(declare-fun choose!48151 (List!65400 List!65400 List!65400) Unit!158799)

(assert (=> d!2034953 (= lt!2389005 (choose!48151 (_1!36649 lt!2388858) (_2!36649 lt!2388858) (_2!36649 lt!2388900)))))

(assert (=> d!2034953 (= (lemmaConcatAssociativity!2938 (_1!36649 lt!2388858) (_2!36649 lt!2388858) (_2!36649 lt!2388900)) lt!2389005)))

(declare-fun bs!1645730 () Bool)

(assert (= bs!1645730 d!2034953))

(declare-fun m!7275560 () Bool)

(assert (=> bs!1645730 m!7275560))

(assert (=> bs!1645730 m!7274924))

(assert (=> bs!1645730 m!7275018))

(declare-fun m!7275568 () Bool)

(assert (=> bs!1645730 m!7275568))

(assert (=> bs!1645730 m!7275018))

(assert (=> bs!1645730 m!7274924))

(declare-fun m!7275576 () Bool)

(assert (=> bs!1645730 m!7275576))

(assert (=> b!6486649 d!2034953))

(declare-fun b!6487108 () Bool)

(declare-fun e!3931585 () (InoxSet Context!11502))

(declare-fun e!3931584 () (InoxSet Context!11502))

(assert (=> b!6487108 (= e!3931585 e!3931584)))

(declare-fun c!1188515 () Bool)

(assert (=> b!6487108 (= c!1188515 ((_ is Cons!65277) (exprs!6251 lt!2388870)))))

(declare-fun call!561427 () (InoxSet Context!11502))

(declare-fun b!6487109 () Bool)

(assert (=> b!6487109 (= e!3931585 ((_ map or) call!561427 (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 lt!2388870))) (h!71724 s!2326))))))

(declare-fun b!6487110 () Bool)

(assert (=> b!6487110 (= e!3931584 ((as const (Array Context!11502 Bool)) false))))

(declare-fun d!2034955 () Bool)

(declare-fun c!1188514 () Bool)

(declare-fun e!3931586 () Bool)

(assert (=> d!2034955 (= c!1188514 e!3931586)))

(declare-fun res!2664289 () Bool)

(assert (=> d!2034955 (=> (not res!2664289) (not e!3931586))))

(assert (=> d!2034955 (= res!2664289 ((_ is Cons!65277) (exprs!6251 lt!2388870)))))

(assert (=> d!2034955 (= (derivationStepZipperUp!1541 lt!2388870 (h!71724 s!2326)) e!3931585)))

(declare-fun b!6487111 () Bool)

(assert (=> b!6487111 (= e!3931584 call!561427)))

(declare-fun b!6487112 () Bool)

(assert (=> b!6487112 (= e!3931586 (nullable!6360 (h!71725 (exprs!6251 lt!2388870))))))

(declare-fun bm!561422 () Bool)

(assert (=> bm!561422 (= call!561427 (derivationStepZipperDown!1615 (h!71725 (exprs!6251 lt!2388870)) (Context!11503 (t!379027 (exprs!6251 lt!2388870))) (h!71724 s!2326)))))

(assert (= (and d!2034955 res!2664289) b!6487112))

(assert (= (and d!2034955 c!1188514) b!6487109))

(assert (= (and d!2034955 (not c!1188514)) b!6487108))

(assert (= (and b!6487108 c!1188515) b!6487111))

(assert (= (and b!6487108 (not c!1188515)) b!6487110))

(assert (= (or b!6487109 b!6487111) bm!561422))

(declare-fun m!7275592 () Bool)

(assert (=> b!6487109 m!7275592))

(declare-fun m!7275594 () Bool)

(assert (=> b!6487112 m!7275594))

(declare-fun m!7275596 () Bool)

(assert (=> bm!561422 m!7275596))

(assert (=> b!6486628 d!2034955))

(declare-fun d!2034963 () Bool)

(declare-fun choose!48152 ((InoxSet Context!11502) Int) (InoxSet Context!11502))

(assert (=> d!2034963 (= (flatMap!1872 z!1189 lambda!359120) (choose!48152 z!1189 lambda!359120))))

(declare-fun bs!1645745 () Bool)

(assert (= bs!1645745 d!2034963))

(declare-fun m!7275598 () Bool)

(assert (=> bs!1645745 m!7275598))

(assert (=> b!6486628 d!2034963))

(declare-fun d!2034965 () Bool)

(declare-fun dynLambda!25927 (Int Context!11502) (InoxSet Context!11502))

(assert (=> d!2034965 (= (flatMap!1872 z!1189 lambda!359120) (dynLambda!25927 lambda!359120 (h!71726 zl!343)))))

(declare-fun lt!2389012 () Unit!158799)

(declare-fun choose!48154 ((InoxSet Context!11502) Context!11502 Int) Unit!158799)

(assert (=> d!2034965 (= lt!2389012 (choose!48154 z!1189 (h!71726 zl!343) lambda!359120))))

(assert (=> d!2034965 (= z!1189 (store ((as const (Array Context!11502 Bool)) false) (h!71726 zl!343) true))))

(assert (=> d!2034965 (= (lemmaFlatMapOnSingletonSet!1398 z!1189 (h!71726 zl!343) lambda!359120) lt!2389012)))

(declare-fun b_lambda!245609 () Bool)

(assert (=> (not b_lambda!245609) (not d!2034965)))

(declare-fun bs!1645758 () Bool)

(assert (= bs!1645758 d!2034965))

(assert (=> bs!1645758 m!7274934))

(declare-fun m!7275614 () Bool)

(assert (=> bs!1645758 m!7275614))

(declare-fun m!7275616 () Bool)

(assert (=> bs!1645758 m!7275616))

(declare-fun m!7275618 () Bool)

(assert (=> bs!1645758 m!7275618))

(assert (=> b!6486628 d!2034965))

(declare-fun d!2034973 () Bool)

(assert (=> d!2034973 (= (nullable!6360 (h!71725 (exprs!6251 (h!71726 zl!343)))) (nullableFct!2298 (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun bs!1645759 () Bool)

(assert (= bs!1645759 d!2034973))

(declare-fun m!7275620 () Bool)

(assert (=> bs!1645759 m!7275620))

(assert (=> b!6486628 d!2034973))

(declare-fun b!6487126 () Bool)

(declare-fun e!3931597 () (InoxSet Context!11502))

(declare-fun e!3931596 () (InoxSet Context!11502))

(assert (=> b!6487126 (= e!3931597 e!3931596)))

(declare-fun c!1188520 () Bool)

(assert (=> b!6487126 (= c!1188520 ((_ is Cons!65277) (exprs!6251 (h!71726 zl!343))))))

(declare-fun b!6487127 () Bool)

(declare-fun call!561433 () (InoxSet Context!11502))

(assert (=> b!6487127 (= e!3931597 ((_ map or) call!561433 (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 (h!71726 zl!343)))) (h!71724 s!2326))))))

(declare-fun b!6487128 () Bool)

(assert (=> b!6487128 (= e!3931596 ((as const (Array Context!11502 Bool)) false))))

(declare-fun d!2034975 () Bool)

(declare-fun c!1188519 () Bool)

(declare-fun e!3931598 () Bool)

(assert (=> d!2034975 (= c!1188519 e!3931598)))

(declare-fun res!2664297 () Bool)

(assert (=> d!2034975 (=> (not res!2664297) (not e!3931598))))

(assert (=> d!2034975 (= res!2664297 ((_ is Cons!65277) (exprs!6251 (h!71726 zl!343))))))

(assert (=> d!2034975 (= (derivationStepZipperUp!1541 (h!71726 zl!343) (h!71724 s!2326)) e!3931597)))

(declare-fun b!6487129 () Bool)

(assert (=> b!6487129 (= e!3931596 call!561433)))

(declare-fun b!6487130 () Bool)

(assert (=> b!6487130 (= e!3931598 (nullable!6360 (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun bm!561428 () Bool)

(assert (=> bm!561428 (= call!561433 (derivationStepZipperDown!1615 (h!71725 (exprs!6251 (h!71726 zl!343))) (Context!11503 (t!379027 (exprs!6251 (h!71726 zl!343)))) (h!71724 s!2326)))))

(assert (= (and d!2034975 res!2664297) b!6487130))

(assert (= (and d!2034975 c!1188519) b!6487127))

(assert (= (and d!2034975 (not c!1188519)) b!6487126))

(assert (= (and b!6487126 c!1188520) b!6487129))

(assert (= (and b!6487126 (not c!1188520)) b!6487128))

(assert (= (or b!6487127 b!6487129) bm!561428))

(declare-fun m!7275636 () Bool)

(assert (=> b!6487127 m!7275636))

(assert (=> b!6487130 m!7274938))

(declare-fun m!7275638 () Bool)

(assert (=> bm!561428 m!7275638))

(assert (=> b!6486628 d!2034975))

(declare-fun b!6487223 () Bool)

(declare-fun e!3931648 () (InoxSet Context!11502))

(declare-fun call!561455 () (InoxSet Context!11502))

(declare-fun call!561454 () (InoxSet Context!11502))

(assert (=> b!6487223 (= e!3931648 ((_ map or) call!561455 call!561454))))

(declare-fun b!6487224 () Bool)

(declare-fun e!3931652 () (InoxSet Context!11502))

(declare-fun call!561452 () (InoxSet Context!11502))

(assert (=> b!6487224 (= e!3931652 ((_ map or) call!561454 call!561452))))

(declare-fun bm!561446 () Bool)

(declare-fun call!561453 () (InoxSet Context!11502))

(assert (=> bm!561446 (= call!561453 call!561452)))

(declare-fun b!6487225 () Bool)

(declare-fun e!3931653 () (InoxSet Context!11502))

(assert (=> b!6487225 (= e!3931652 e!3931653)))

(declare-fun c!1188548 () Bool)

(assert (=> b!6487225 (= c!1188548 ((_ is Concat!25212) (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun b!6487226 () Bool)

(declare-fun e!3931651 () (InoxSet Context!11502))

(assert (=> b!6487226 (= e!3931651 (store ((as const (Array Context!11502 Bool)) false) lt!2388870 true))))

(declare-fun b!6487227 () Bool)

(declare-fun e!3931650 () Bool)

(assert (=> b!6487227 (= e!3931650 (nullable!6360 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343))))))))

(declare-fun c!1188549 () Bool)

(declare-fun bm!561447 () Bool)

(declare-fun call!561451 () List!65401)

(assert (=> bm!561447 (= call!561454 (derivationStepZipperDown!1615 (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343))))) (ite c!1188549 lt!2388870 (Context!11503 call!561451)) (h!71724 s!2326)))))

(declare-fun bm!561448 () Bool)

(declare-fun call!561456 () List!65401)

(declare-fun c!1188552 () Bool)

(assert (=> bm!561448 (= call!561455 (derivationStepZipperDown!1615 (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343))))))) (ite (or c!1188549 c!1188552) lt!2388870 (Context!11503 call!561456)) (h!71724 s!2326)))))

(declare-fun bm!561449 () Bool)

(assert (=> bm!561449 (= call!561456 call!561451)))

(declare-fun b!6487228 () Bool)

(declare-fun e!3931649 () (InoxSet Context!11502))

(assert (=> b!6487228 (= e!3931649 call!561453)))

(declare-fun b!6487229 () Bool)

(assert (=> b!6487229 (= e!3931653 call!561453)))

(declare-fun b!6487230 () Bool)

(assert (=> b!6487230 (= e!3931649 ((as const (Array Context!11502 Bool)) false))))

(declare-fun bm!561450 () Bool)

(declare-fun $colon$colon!2219 (List!65401 Regex!16367) List!65401)

(assert (=> bm!561450 (= call!561451 ($colon$colon!2219 (exprs!6251 lt!2388870) (ite (or c!1188552 c!1188548) (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (h!71725 (exprs!6251 (h!71726 zl!343))))))))

(declare-fun b!6487231 () Bool)

(assert (=> b!6487231 (= c!1188552 e!3931650)))

(declare-fun res!2664336 () Bool)

(assert (=> b!6487231 (=> (not res!2664336) (not e!3931650))))

(assert (=> b!6487231 (= res!2664336 ((_ is Concat!25212) (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(assert (=> b!6487231 (= e!3931648 e!3931652)))

(declare-fun b!6487232 () Bool)

(declare-fun c!1188550 () Bool)

(assert (=> b!6487232 (= c!1188550 ((_ is Star!16367) (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(assert (=> b!6487232 (= e!3931653 e!3931649)))

(declare-fun bm!561451 () Bool)

(assert (=> bm!561451 (= call!561452 call!561455)))

(declare-fun b!6487233 () Bool)

(assert (=> b!6487233 (= e!3931651 e!3931648)))

(assert (=> b!6487233 (= c!1188549 ((_ is Union!16367) (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun d!2034979 () Bool)

(declare-fun c!1188551 () Bool)

(assert (=> d!2034979 (= c!1188551 (and ((_ is ElementMatch!16367) (h!71725 (exprs!6251 (h!71726 zl!343)))) (= (c!1188383 (h!71725 (exprs!6251 (h!71726 zl!343)))) (h!71724 s!2326))))))

(assert (=> d!2034979 (= (derivationStepZipperDown!1615 (h!71725 (exprs!6251 (h!71726 zl!343))) lt!2388870 (h!71724 s!2326)) e!3931651)))

(assert (= (and d!2034979 c!1188551) b!6487226))

(assert (= (and d!2034979 (not c!1188551)) b!6487233))

(assert (= (and b!6487233 c!1188549) b!6487223))

(assert (= (and b!6487233 (not c!1188549)) b!6487231))

(assert (= (and b!6487231 res!2664336) b!6487227))

(assert (= (and b!6487231 c!1188552) b!6487224))

(assert (= (and b!6487231 (not c!1188552)) b!6487225))

(assert (= (and b!6487225 c!1188548) b!6487229))

(assert (= (and b!6487225 (not c!1188548)) b!6487232))

(assert (= (and b!6487232 c!1188550) b!6487228))

(assert (= (and b!6487232 (not c!1188550)) b!6487230))

(assert (= (or b!6487229 b!6487228) bm!561449))

(assert (= (or b!6487229 b!6487228) bm!561446))

(assert (= (or b!6487224 bm!561449) bm!561450))

(assert (= (or b!6487224 bm!561446) bm!561451))

(assert (= (or b!6487223 b!6487224) bm!561447))

(assert (= (or b!6487223 bm!561451) bm!561448))

(declare-fun m!7275726 () Bool)

(assert (=> bm!561450 m!7275726))

(declare-fun m!7275728 () Bool)

(assert (=> bm!561447 m!7275728))

(declare-fun m!7275730 () Bool)

(assert (=> b!6487227 m!7275730))

(declare-fun m!7275732 () Bool)

(assert (=> b!6487226 m!7275732))

(declare-fun m!7275734 () Bool)

(assert (=> bm!561448 m!7275734))

(assert (=> b!6486628 d!2034979))

(declare-fun b!6487238 () Bool)

(declare-fun e!3931657 () (InoxSet Context!11502))

(declare-fun e!3931656 () (InoxSet Context!11502))

(assert (=> b!6487238 (= e!3931657 e!3931656)))

(declare-fun c!1188555 () Bool)

(assert (=> b!6487238 (= c!1188555 ((_ is Cons!65277) (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343))))))))))

(declare-fun b!6487239 () Bool)

(declare-fun call!561457 () (InoxSet Context!11502))

(assert (=> b!6487239 (= e!3931657 ((_ map or) call!561457 (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))) (h!71724 s!2326))))))

(declare-fun b!6487240 () Bool)

(assert (=> b!6487240 (= e!3931656 ((as const (Array Context!11502 Bool)) false))))

(declare-fun d!2035007 () Bool)

(declare-fun c!1188554 () Bool)

(declare-fun e!3931658 () Bool)

(assert (=> d!2035007 (= c!1188554 e!3931658)))

(declare-fun res!2664339 () Bool)

(assert (=> d!2035007 (=> (not res!2664339) (not e!3931658))))

(assert (=> d!2035007 (= res!2664339 ((_ is Cons!65277) (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343))))))))))

(assert (=> d!2035007 (= (derivationStepZipperUp!1541 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343))))) (h!71724 s!2326)) e!3931657)))

(declare-fun b!6487241 () Bool)

(assert (=> b!6487241 (= e!3931656 call!561457)))

(declare-fun b!6487242 () Bool)

(assert (=> b!6487242 (= e!3931658 (nullable!6360 (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))))))

(declare-fun bm!561452 () Bool)

(assert (=> bm!561452 (= call!561457 (derivationStepZipperDown!1615 (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343))))))) (Context!11503 (t!379027 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))) (h!71724 s!2326)))))

(assert (= (and d!2035007 res!2664339) b!6487242))

(assert (= (and d!2035007 c!1188554) b!6487239))

(assert (= (and d!2035007 (not c!1188554)) b!6487238))

(assert (= (and b!6487238 c!1188555) b!6487241))

(assert (= (and b!6487238 (not c!1188555)) b!6487240))

(assert (= (or b!6487239 b!6487241) bm!561452))

(declare-fun m!7275736 () Bool)

(assert (=> b!6487239 m!7275736))

(declare-fun m!7275738 () Bool)

(assert (=> b!6487242 m!7275738))

(declare-fun m!7275740 () Bool)

(assert (=> bm!561452 m!7275740))

(assert (=> b!6486628 d!2035007))

(declare-fun bs!1645801 () Bool)

(declare-fun d!2035009 () Bool)

(assert (= bs!1645801 (and d!2035009 b!6486640)))

(declare-fun lambda!359178 () Int)

(assert (=> bs!1645801 (= lambda!359178 lambda!359126)))

(declare-fun forall!15550 (List!65401 Int) Bool)

(assert (=> d!2035009 (= (inv!84164 (h!71726 zl!343)) (forall!15550 (exprs!6251 (h!71726 zl!343)) lambda!359178))))

(declare-fun bs!1645802 () Bool)

(assert (= bs!1645802 d!2035009))

(declare-fun m!7275748 () Bool)

(assert (=> bs!1645802 m!7275748))

(assert (=> b!6486648 d!2035009))

(declare-fun d!2035013 () Bool)

(assert (=> d!2035013 (= (flatMap!1872 lt!2388878 lambda!359120) (dynLambda!25927 lambda!359120 lt!2388895))))

(declare-fun lt!2389028 () Unit!158799)

(assert (=> d!2035013 (= lt!2389028 (choose!48154 lt!2388878 lt!2388895 lambda!359120))))

(assert (=> d!2035013 (= lt!2388878 (store ((as const (Array Context!11502 Bool)) false) lt!2388895 true))))

(assert (=> d!2035013 (= (lemmaFlatMapOnSingletonSet!1398 lt!2388878 lt!2388895 lambda!359120) lt!2389028)))

(declare-fun b_lambda!245611 () Bool)

(assert (=> (not b_lambda!245611) (not d!2035013)))

(declare-fun bs!1645803 () Bool)

(assert (= bs!1645803 d!2035013))

(assert (=> bs!1645803 m!7275058))

(declare-fun m!7275754 () Bool)

(assert (=> bs!1645803 m!7275754))

(declare-fun m!7275756 () Bool)

(assert (=> bs!1645803 m!7275756))

(assert (=> bs!1645803 m!7275066))

(assert (=> b!6486647 d!2035013))

(declare-fun d!2035015 () Bool)

(assert (=> d!2035015 (= (flatMap!1872 lt!2388878 lambda!359120) (choose!48152 lt!2388878 lambda!359120))))

(declare-fun bs!1645804 () Bool)

(assert (= bs!1645804 d!2035015))

(declare-fun m!7275762 () Bool)

(assert (=> bs!1645804 m!7275762))

(assert (=> b!6486647 d!2035015))

(declare-fun b!6487265 () Bool)

(declare-fun e!3931673 () (InoxSet Context!11502))

(declare-fun e!3931672 () (InoxSet Context!11502))

(assert (=> b!6487265 (= e!3931673 e!3931672)))

(declare-fun c!1188566 () Bool)

(assert (=> b!6487265 (= c!1188566 ((_ is Cons!65277) (exprs!6251 lt!2388862)))))

(declare-fun call!561466 () (InoxSet Context!11502))

(declare-fun b!6487266 () Bool)

(assert (=> b!6487266 (= e!3931673 ((_ map or) call!561466 (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 lt!2388862))) (h!71724 s!2326))))))

(declare-fun b!6487267 () Bool)

(assert (=> b!6487267 (= e!3931672 ((as const (Array Context!11502 Bool)) false))))

(declare-fun d!2035019 () Bool)

(declare-fun c!1188565 () Bool)

(declare-fun e!3931674 () Bool)

(assert (=> d!2035019 (= c!1188565 e!3931674)))

(declare-fun res!2664344 () Bool)

(assert (=> d!2035019 (=> (not res!2664344) (not e!3931674))))

(assert (=> d!2035019 (= res!2664344 ((_ is Cons!65277) (exprs!6251 lt!2388862)))))

(assert (=> d!2035019 (= (derivationStepZipperUp!1541 lt!2388862 (h!71724 s!2326)) e!3931673)))

(declare-fun b!6487268 () Bool)

(assert (=> b!6487268 (= e!3931672 call!561466)))

(declare-fun b!6487269 () Bool)

(assert (=> b!6487269 (= e!3931674 (nullable!6360 (h!71725 (exprs!6251 lt!2388862))))))

(declare-fun bm!561461 () Bool)

(assert (=> bm!561461 (= call!561466 (derivationStepZipperDown!1615 (h!71725 (exprs!6251 lt!2388862)) (Context!11503 (t!379027 (exprs!6251 lt!2388862))) (h!71724 s!2326)))))

(assert (= (and d!2035019 res!2664344) b!6487269))

(assert (= (and d!2035019 c!1188565) b!6487266))

(assert (= (and d!2035019 (not c!1188565)) b!6487265))

(assert (= (and b!6487265 c!1188566) b!6487268))

(assert (= (and b!6487265 (not c!1188566)) b!6487267))

(assert (= (or b!6487266 b!6487268) bm!561461))

(declare-fun m!7275764 () Bool)

(assert (=> b!6487266 m!7275764))

(declare-fun m!7275766 () Bool)

(assert (=> b!6487269 m!7275766))

(declare-fun m!7275768 () Bool)

(assert (=> bm!561461 m!7275768))

(assert (=> b!6486647 d!2035019))

(declare-fun d!2035021 () Bool)

(assert (=> d!2035021 (= (flatMap!1872 lt!2388898 lambda!359120) (choose!48152 lt!2388898 lambda!359120))))

(declare-fun bs!1645805 () Bool)

(assert (= bs!1645805 d!2035021))

(declare-fun m!7275770 () Bool)

(assert (=> bs!1645805 m!7275770))

(assert (=> b!6486647 d!2035021))

(declare-fun d!2035023 () Bool)

(declare-fun lt!2389031 () Regex!16367)

(assert (=> d!2035023 (validRegex!8103 lt!2389031)))

(assert (=> d!2035023 (= lt!2389031 (generalisedUnion!2211 (unfocusZipperList!1788 lt!2388883)))))

(assert (=> d!2035023 (= (unfocusZipper!2109 lt!2388883) lt!2389031)))

(declare-fun bs!1645820 () Bool)

(assert (= bs!1645820 d!2035023))

(declare-fun m!7275772 () Bool)

(assert (=> bs!1645820 m!7275772))

(declare-fun m!7275774 () Bool)

(assert (=> bs!1645820 m!7275774))

(assert (=> bs!1645820 m!7275774))

(declare-fun m!7275776 () Bool)

(assert (=> bs!1645820 m!7275776))

(assert (=> b!6486647 d!2035023))

(declare-fun d!2035025 () Bool)

(assert (=> d!2035025 (= (flatMap!1872 lt!2388898 lambda!359120) (dynLambda!25927 lambda!359120 lt!2388862))))

(declare-fun lt!2389032 () Unit!158799)

(assert (=> d!2035025 (= lt!2389032 (choose!48154 lt!2388898 lt!2388862 lambda!359120))))

(assert (=> d!2035025 (= lt!2388898 (store ((as const (Array Context!11502 Bool)) false) lt!2388862 true))))

(assert (=> d!2035025 (= (lemmaFlatMapOnSingletonSet!1398 lt!2388898 lt!2388862 lambda!359120) lt!2389032)))

(declare-fun b_lambda!245613 () Bool)

(assert (=> (not b_lambda!245613) (not d!2035025)))

(declare-fun bs!1645821 () Bool)

(assert (= bs!1645821 d!2035025))

(assert (=> bs!1645821 m!7275062))

(declare-fun m!7275778 () Bool)

(assert (=> bs!1645821 m!7275778))

(declare-fun m!7275780 () Bool)

(assert (=> bs!1645821 m!7275780))

(assert (=> bs!1645821 m!7275070))

(assert (=> b!6486647 d!2035025))

(declare-fun b!6487270 () Bool)

(declare-fun e!3931676 () (InoxSet Context!11502))

(declare-fun e!3931675 () (InoxSet Context!11502))

(assert (=> b!6487270 (= e!3931676 e!3931675)))

(declare-fun c!1188568 () Bool)

(assert (=> b!6487270 (= c!1188568 ((_ is Cons!65277) (exprs!6251 lt!2388895)))))

(declare-fun b!6487271 () Bool)

(declare-fun call!561467 () (InoxSet Context!11502))

(assert (=> b!6487271 (= e!3931676 ((_ map or) call!561467 (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 lt!2388895))) (h!71724 s!2326))))))

(declare-fun b!6487272 () Bool)

(assert (=> b!6487272 (= e!3931675 ((as const (Array Context!11502 Bool)) false))))

(declare-fun d!2035027 () Bool)

(declare-fun c!1188567 () Bool)

(declare-fun e!3931677 () Bool)

(assert (=> d!2035027 (= c!1188567 e!3931677)))

(declare-fun res!2664345 () Bool)

(assert (=> d!2035027 (=> (not res!2664345) (not e!3931677))))

(assert (=> d!2035027 (= res!2664345 ((_ is Cons!65277) (exprs!6251 lt!2388895)))))

(assert (=> d!2035027 (= (derivationStepZipperUp!1541 lt!2388895 (h!71724 s!2326)) e!3931676)))

(declare-fun b!6487273 () Bool)

(assert (=> b!6487273 (= e!3931675 call!561467)))

(declare-fun b!6487274 () Bool)

(assert (=> b!6487274 (= e!3931677 (nullable!6360 (h!71725 (exprs!6251 lt!2388895))))))

(declare-fun bm!561462 () Bool)

(assert (=> bm!561462 (= call!561467 (derivationStepZipperDown!1615 (h!71725 (exprs!6251 lt!2388895)) (Context!11503 (t!379027 (exprs!6251 lt!2388895))) (h!71724 s!2326)))))

(assert (= (and d!2035027 res!2664345) b!6487274))

(assert (= (and d!2035027 c!1188567) b!6487271))

(assert (= (and d!2035027 (not c!1188567)) b!6487270))

(assert (= (and b!6487270 c!1188568) b!6487273))

(assert (= (and b!6487270 (not c!1188568)) b!6487272))

(assert (= (or b!6487271 b!6487273) bm!561462))

(declare-fun m!7275782 () Bool)

(assert (=> b!6487271 m!7275782))

(declare-fun m!7275784 () Bool)

(assert (=> b!6487274 m!7275784))

(declare-fun m!7275786 () Bool)

(assert (=> bm!561462 m!7275786))

(assert (=> b!6486647 d!2035027))

(declare-fun b!6487275 () Bool)

(declare-fun e!3931678 () (InoxSet Context!11502))

(declare-fun call!561472 () (InoxSet Context!11502))

(declare-fun call!561471 () (InoxSet Context!11502))

(assert (=> b!6487275 (= e!3931678 ((_ map or) call!561472 call!561471))))

(declare-fun b!6487276 () Bool)

(declare-fun e!3931682 () (InoxSet Context!11502))

(declare-fun call!561469 () (InoxSet Context!11502))

(assert (=> b!6487276 (= e!3931682 ((_ map or) call!561471 call!561469))))

(declare-fun bm!561463 () Bool)

(declare-fun call!561470 () (InoxSet Context!11502))

(assert (=> bm!561463 (= call!561470 call!561469)))

(declare-fun b!6487277 () Bool)

(declare-fun e!3931683 () (InoxSet Context!11502))

(assert (=> b!6487277 (= e!3931682 e!3931683)))

(declare-fun c!1188569 () Bool)

(assert (=> b!6487277 (= c!1188569 ((_ is Concat!25212) (reg!16696 (regOne!33246 r!7292))))))

(declare-fun b!6487278 () Bool)

(declare-fun e!3931681 () (InoxSet Context!11502))

(assert (=> b!6487278 (= e!3931681 (store ((as const (Array Context!11502 Bool)) false) lt!2388862 true))))

(declare-fun b!6487279 () Bool)

(declare-fun e!3931680 () Bool)

(assert (=> b!6487279 (= e!3931680 (nullable!6360 (regOne!33246 (reg!16696 (regOne!33246 r!7292)))))))

(declare-fun bm!561464 () Bool)

(declare-fun call!561468 () List!65401)

(declare-fun c!1188570 () Bool)

(assert (=> bm!561464 (= call!561471 (derivationStepZipperDown!1615 (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292)))) (ite c!1188570 lt!2388862 (Context!11503 call!561468)) (h!71724 s!2326)))))

(declare-fun call!561473 () List!65401)

(declare-fun c!1188573 () Bool)

(declare-fun bm!561465 () Bool)

(assert (=> bm!561465 (= call!561472 (derivationStepZipperDown!1615 (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292)))))) (ite (or c!1188570 c!1188573) lt!2388862 (Context!11503 call!561473)) (h!71724 s!2326)))))

(declare-fun bm!561466 () Bool)

(assert (=> bm!561466 (= call!561473 call!561468)))

(declare-fun b!6487280 () Bool)

(declare-fun e!3931679 () (InoxSet Context!11502))

(assert (=> b!6487280 (= e!3931679 call!561470)))

(declare-fun b!6487281 () Bool)

(assert (=> b!6487281 (= e!3931683 call!561470)))

(declare-fun b!6487282 () Bool)

(assert (=> b!6487282 (= e!3931679 ((as const (Array Context!11502 Bool)) false))))

(declare-fun bm!561467 () Bool)

(assert (=> bm!561467 (= call!561468 ($colon$colon!2219 (exprs!6251 lt!2388862) (ite (or c!1188573 c!1188569) (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (regOne!33246 r!7292)))))))

(declare-fun b!6487283 () Bool)

(assert (=> b!6487283 (= c!1188573 e!3931680)))

(declare-fun res!2664346 () Bool)

(assert (=> b!6487283 (=> (not res!2664346) (not e!3931680))))

(assert (=> b!6487283 (= res!2664346 ((_ is Concat!25212) (reg!16696 (regOne!33246 r!7292))))))

(assert (=> b!6487283 (= e!3931678 e!3931682)))

(declare-fun b!6487284 () Bool)

(declare-fun c!1188571 () Bool)

(assert (=> b!6487284 (= c!1188571 ((_ is Star!16367) (reg!16696 (regOne!33246 r!7292))))))

(assert (=> b!6487284 (= e!3931683 e!3931679)))

(declare-fun bm!561468 () Bool)

(assert (=> bm!561468 (= call!561469 call!561472)))

(declare-fun b!6487285 () Bool)

(assert (=> b!6487285 (= e!3931681 e!3931678)))

(assert (=> b!6487285 (= c!1188570 ((_ is Union!16367) (reg!16696 (regOne!33246 r!7292))))))

(declare-fun d!2035029 () Bool)

(declare-fun c!1188572 () Bool)

(assert (=> d!2035029 (= c!1188572 (and ((_ is ElementMatch!16367) (reg!16696 (regOne!33246 r!7292))) (= (c!1188383 (reg!16696 (regOne!33246 r!7292))) (h!71724 s!2326))))))

(assert (=> d!2035029 (= (derivationStepZipperDown!1615 (reg!16696 (regOne!33246 r!7292)) lt!2388862 (h!71724 s!2326)) e!3931681)))

(assert (= (and d!2035029 c!1188572) b!6487278))

(assert (= (and d!2035029 (not c!1188572)) b!6487285))

(assert (= (and b!6487285 c!1188570) b!6487275))

(assert (= (and b!6487285 (not c!1188570)) b!6487283))

(assert (= (and b!6487283 res!2664346) b!6487279))

(assert (= (and b!6487283 c!1188573) b!6487276))

(assert (= (and b!6487283 (not c!1188573)) b!6487277))

(assert (= (and b!6487277 c!1188569) b!6487281))

(assert (= (and b!6487277 (not c!1188569)) b!6487284))

(assert (= (and b!6487284 c!1188571) b!6487280))

(assert (= (and b!6487284 (not c!1188571)) b!6487282))

(assert (= (or b!6487281 b!6487280) bm!561466))

(assert (= (or b!6487281 b!6487280) bm!561463))

(assert (= (or b!6487276 bm!561466) bm!561467))

(assert (= (or b!6487276 bm!561463) bm!561468))

(assert (= (or b!6487275 b!6487276) bm!561464))

(assert (= (or b!6487275 bm!561468) bm!561465))

(declare-fun m!7275788 () Bool)

(assert (=> bm!561467 m!7275788))

(declare-fun m!7275790 () Bool)

(assert (=> bm!561464 m!7275790))

(declare-fun m!7275792 () Bool)

(assert (=> b!6487279 m!7275792))

(assert (=> b!6487278 m!7275070))

(declare-fun m!7275794 () Bool)

(assert (=> bm!561465 m!7275794))

(assert (=> b!6486627 d!2035029))

(declare-fun d!2035031 () Bool)

(declare-fun lt!2389033 () Regex!16367)

(assert (=> d!2035031 (validRegex!8103 lt!2389033)))

(assert (=> d!2035031 (= lt!2389033 (generalisedUnion!2211 (unfocusZipperList!1788 zl!343)))))

(assert (=> d!2035031 (= (unfocusZipper!2109 zl!343) lt!2389033)))

(declare-fun bs!1645831 () Bool)

(assert (= bs!1645831 d!2035031))

(declare-fun m!7275796 () Bool)

(assert (=> bs!1645831 m!7275796))

(assert (=> bs!1645831 m!7274978))

(assert (=> bs!1645831 m!7274978))

(assert (=> bs!1645831 m!7274980))

(assert (=> b!6486625 d!2035031))

(declare-fun b!6487382 () Bool)

(declare-fun res!2664375 () Bool)

(declare-fun e!3931728 () Bool)

(assert (=> b!6487382 (=> res!2664375 e!3931728)))

(declare-fun tail!12294 (List!65400) List!65400)

(assert (=> b!6487382 (= res!2664375 (not (isEmpty!37468 (tail!12294 (_1!36649 lt!2388858)))))))

(declare-fun b!6487384 () Bool)

(declare-fun e!3931733 () Bool)

(declare-fun head!13209 (List!65400) C!33004)

(assert (=> b!6487384 (= e!3931733 (= (head!13209 (_1!36649 lt!2388858)) (c!1188383 (reg!16696 (regOne!33246 r!7292)))))))

(declare-fun b!6487385 () Bool)

(declare-fun res!2664372 () Bool)

(declare-fun e!3931730 () Bool)

(assert (=> b!6487385 (=> res!2664372 e!3931730)))

(assert (=> b!6487385 (= res!2664372 e!3931733)))

(declare-fun res!2664373 () Bool)

(assert (=> b!6487385 (=> (not res!2664373) (not e!3931733))))

(declare-fun lt!2389038 () Bool)

(assert (=> b!6487385 (= res!2664373 lt!2389038)))

(declare-fun b!6487386 () Bool)

(declare-fun e!3931734 () Bool)

(assert (=> b!6487386 (= e!3931734 e!3931728)))

(declare-fun res!2664378 () Bool)

(assert (=> b!6487386 (=> res!2664378 e!3931728)))

(declare-fun call!561477 () Bool)

(assert (=> b!6487386 (= res!2664378 call!561477)))

(declare-fun b!6487387 () Bool)

(declare-fun res!2664376 () Bool)

(assert (=> b!6487387 (=> res!2664376 e!3931730)))

(assert (=> b!6487387 (= res!2664376 (not ((_ is ElementMatch!16367) (reg!16696 (regOne!33246 r!7292)))))))

(declare-fun e!3931729 () Bool)

(assert (=> b!6487387 (= e!3931729 e!3931730)))

(declare-fun bm!561472 () Bool)

(assert (=> bm!561472 (= call!561477 (isEmpty!37468 (_1!36649 lt!2388858)))))

(declare-fun b!6487388 () Bool)

(assert (=> b!6487388 (= e!3931730 e!3931734)))

(declare-fun res!2664374 () Bool)

(assert (=> b!6487388 (=> (not res!2664374) (not e!3931734))))

(assert (=> b!6487388 (= res!2664374 (not lt!2389038))))

(declare-fun b!6487389 () Bool)

(declare-fun e!3931731 () Bool)

(assert (=> b!6487389 (= e!3931731 e!3931729)))

(declare-fun c!1188585 () Bool)

(assert (=> b!6487389 (= c!1188585 ((_ is EmptyLang!16367) (reg!16696 (regOne!33246 r!7292))))))

(declare-fun b!6487390 () Bool)

(declare-fun res!2664377 () Bool)

(assert (=> b!6487390 (=> (not res!2664377) (not e!3931733))))

(assert (=> b!6487390 (= res!2664377 (isEmpty!37468 (tail!12294 (_1!36649 lt!2388858))))))

(declare-fun b!6487391 () Bool)

(declare-fun e!3931732 () Bool)

(assert (=> b!6487391 (= e!3931732 (nullable!6360 (reg!16696 (regOne!33246 r!7292))))))

(declare-fun b!6487392 () Bool)

(assert (=> b!6487392 (= e!3931731 (= lt!2389038 call!561477))))

(declare-fun b!6487393 () Bool)

(declare-fun res!2664371 () Bool)

(assert (=> b!6487393 (=> (not res!2664371) (not e!3931733))))

(assert (=> b!6487393 (= res!2664371 (not call!561477))))

(declare-fun b!6487394 () Bool)

(assert (=> b!6487394 (= e!3931729 (not lt!2389038))))

(declare-fun b!6487395 () Bool)

(assert (=> b!6487395 (= e!3931728 (not (= (head!13209 (_1!36649 lt!2388858)) (c!1188383 (reg!16696 (regOne!33246 r!7292))))))))

(declare-fun d!2035033 () Bool)

(assert (=> d!2035033 e!3931731))

(declare-fun c!1188584 () Bool)

(assert (=> d!2035033 (= c!1188584 ((_ is EmptyExpr!16367) (reg!16696 (regOne!33246 r!7292))))))

(assert (=> d!2035033 (= lt!2389038 e!3931732)))

(declare-fun c!1188583 () Bool)

(assert (=> d!2035033 (= c!1188583 (isEmpty!37468 (_1!36649 lt!2388858)))))

(assert (=> d!2035033 (validRegex!8103 (reg!16696 (regOne!33246 r!7292)))))

(assert (=> d!2035033 (= (matchR!8550 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388858)) lt!2389038)))

(declare-fun b!6487383 () Bool)

(declare-fun derivativeStep!5063 (Regex!16367 C!33004) Regex!16367)

(assert (=> b!6487383 (= e!3931732 (matchR!8550 (derivativeStep!5063 (reg!16696 (regOne!33246 r!7292)) (head!13209 (_1!36649 lt!2388858))) (tail!12294 (_1!36649 lt!2388858))))))

(assert (= (and d!2035033 c!1188583) b!6487391))

(assert (= (and d!2035033 (not c!1188583)) b!6487383))

(assert (= (and d!2035033 c!1188584) b!6487392))

(assert (= (and d!2035033 (not c!1188584)) b!6487389))

(assert (= (and b!6487389 c!1188585) b!6487394))

(assert (= (and b!6487389 (not c!1188585)) b!6487387))

(assert (= (and b!6487387 (not res!2664376)) b!6487385))

(assert (= (and b!6487385 res!2664373) b!6487393))

(assert (= (and b!6487393 res!2664371) b!6487390))

(assert (= (and b!6487390 res!2664377) b!6487384))

(assert (= (and b!6487385 (not res!2664372)) b!6487388))

(assert (= (and b!6487388 res!2664374) b!6487386))

(assert (= (and b!6487386 (not res!2664378)) b!6487382))

(assert (= (and b!6487382 (not res!2664375)) b!6487395))

(assert (= (or b!6487392 b!6487386 b!6487393) bm!561472))

(declare-fun m!7275814 () Bool)

(assert (=> b!6487382 m!7275814))

(assert (=> b!6487382 m!7275814))

(declare-fun m!7275816 () Bool)

(assert (=> b!6487382 m!7275816))

(declare-fun m!7275818 () Bool)

(assert (=> b!6487391 m!7275818))

(declare-fun m!7275820 () Bool)

(assert (=> d!2035033 m!7275820))

(declare-fun m!7275822 () Bool)

(assert (=> d!2035033 m!7275822))

(assert (=> b!6487390 m!7275814))

(assert (=> b!6487390 m!7275814))

(assert (=> b!6487390 m!7275816))

(declare-fun m!7275824 () Bool)

(assert (=> b!6487395 m!7275824))

(assert (=> b!6487384 m!7275824))

(assert (=> b!6487383 m!7275824))

(assert (=> b!6487383 m!7275824))

(declare-fun m!7275826 () Bool)

(assert (=> b!6487383 m!7275826))

(assert (=> b!6487383 m!7275814))

(assert (=> b!6487383 m!7275826))

(assert (=> b!6487383 m!7275814))

(declare-fun m!7275828 () Bool)

(assert (=> b!6487383 m!7275828))

(assert (=> bm!561472 m!7275820))

(assert (=> b!6486646 d!2035033))

(declare-fun b!6487414 () Bool)

(declare-fun e!3931750 () Bool)

(declare-fun call!561485 () Bool)

(assert (=> b!6487414 (= e!3931750 call!561485)))

(declare-fun b!6487415 () Bool)

(declare-fun e!3931753 () Bool)

(declare-fun e!3931749 () Bool)

(assert (=> b!6487415 (= e!3931753 e!3931749)))

(declare-fun c!1188590 () Bool)

(assert (=> b!6487415 (= c!1188590 ((_ is Star!16367) r!7292))))

(declare-fun d!2035047 () Bool)

(declare-fun res!2664392 () Bool)

(assert (=> d!2035047 (=> res!2664392 e!3931753)))

(assert (=> d!2035047 (= res!2664392 ((_ is ElementMatch!16367) r!7292))))

(assert (=> d!2035047 (= (validRegex!8103 r!7292) e!3931753)))

(declare-fun bm!561479 () Bool)

(declare-fun call!561486 () Bool)

(declare-fun c!1188591 () Bool)

(assert (=> bm!561479 (= call!561486 (validRegex!8103 (ite c!1188591 (regOne!33247 r!7292) (regOne!33246 r!7292))))))

(declare-fun b!6487416 () Bool)

(declare-fun res!2664393 () Bool)

(declare-fun e!3931752 () Bool)

(assert (=> b!6487416 (=> res!2664393 e!3931752)))

(assert (=> b!6487416 (= res!2664393 (not ((_ is Concat!25212) r!7292)))))

(declare-fun e!3931751 () Bool)

(assert (=> b!6487416 (= e!3931751 e!3931752)))

(declare-fun b!6487417 () Bool)

(declare-fun e!3931754 () Bool)

(assert (=> b!6487417 (= e!3931754 call!561485)))

(declare-fun bm!561480 () Bool)

(declare-fun call!561484 () Bool)

(assert (=> bm!561480 (= call!561484 (validRegex!8103 (ite c!1188590 (reg!16696 r!7292) (ite c!1188591 (regTwo!33247 r!7292) (regTwo!33246 r!7292)))))))

(declare-fun b!6487418 () Bool)

(declare-fun res!2664391 () Bool)

(assert (=> b!6487418 (=> (not res!2664391) (not e!3931754))))

(assert (=> b!6487418 (= res!2664391 call!561486)))

(assert (=> b!6487418 (= e!3931751 e!3931754)))

(declare-fun b!6487419 () Bool)

(assert (=> b!6487419 (= e!3931749 e!3931751)))

(assert (=> b!6487419 (= c!1188591 ((_ is Union!16367) r!7292))))

(declare-fun bm!561481 () Bool)

(assert (=> bm!561481 (= call!561485 call!561484)))

(declare-fun b!6487420 () Bool)

(declare-fun e!3931755 () Bool)

(assert (=> b!6487420 (= e!3931755 call!561484)))

(declare-fun b!6487421 () Bool)

(assert (=> b!6487421 (= e!3931749 e!3931755)))

(declare-fun res!2664390 () Bool)

(assert (=> b!6487421 (= res!2664390 (not (nullable!6360 (reg!16696 r!7292))))))

(assert (=> b!6487421 (=> (not res!2664390) (not e!3931755))))

(declare-fun b!6487422 () Bool)

(assert (=> b!6487422 (= e!3931752 e!3931750)))

(declare-fun res!2664389 () Bool)

(assert (=> b!6487422 (=> (not res!2664389) (not e!3931750))))

(assert (=> b!6487422 (= res!2664389 call!561486)))

(assert (= (and d!2035047 (not res!2664392)) b!6487415))

(assert (= (and b!6487415 c!1188590) b!6487421))

(assert (= (and b!6487415 (not c!1188590)) b!6487419))

(assert (= (and b!6487421 res!2664390) b!6487420))

(assert (= (and b!6487419 c!1188591) b!6487418))

(assert (= (and b!6487419 (not c!1188591)) b!6487416))

(assert (= (and b!6487418 res!2664391) b!6487417))

(assert (= (and b!6487416 (not res!2664393)) b!6487422))

(assert (= (and b!6487422 res!2664389) b!6487414))

(assert (= (or b!6487417 b!6487414) bm!561481))

(assert (= (or b!6487418 b!6487422) bm!561479))

(assert (= (or b!6487420 bm!561481) bm!561480))

(declare-fun m!7275830 () Bool)

(assert (=> bm!561479 m!7275830))

(declare-fun m!7275832 () Bool)

(assert (=> bm!561480 m!7275832))

(declare-fun m!7275834 () Bool)

(assert (=> b!6487421 m!7275834))

(assert (=> start!637586 d!2035047))

(declare-fun d!2035049 () Bool)

(declare-fun e!3931758 () Bool)

(assert (=> d!2035049 e!3931758))

(declare-fun res!2664396 () Bool)

(assert (=> d!2035049 (=> (not res!2664396) (not e!3931758))))

(declare-fun lt!2389041 () List!65402)

(declare-fun noDuplicate!2187 (List!65402) Bool)

(assert (=> d!2035049 (= res!2664396 (noDuplicate!2187 lt!2389041))))

(declare-fun choose!48156 ((InoxSet Context!11502)) List!65402)

(assert (=> d!2035049 (= lt!2389041 (choose!48156 z!1189))))

(assert (=> d!2035049 (= (toList!10151 z!1189) lt!2389041)))

(declare-fun b!6487425 () Bool)

(declare-fun content!12439 (List!65402) (InoxSet Context!11502))

(assert (=> b!6487425 (= e!3931758 (= (content!12439 lt!2389041) z!1189))))

(assert (= (and d!2035049 res!2664396) b!6487425))

(declare-fun m!7275836 () Bool)

(assert (=> d!2035049 m!7275836))

(declare-fun m!7275838 () Bool)

(assert (=> d!2035049 m!7275838))

(declare-fun m!7275840 () Bool)

(assert (=> b!6487425 m!7275840))

(assert (=> b!6486645 d!2035049))

(declare-fun b!6487426 () Bool)

(declare-fun res!2664401 () Bool)

(declare-fun e!3931759 () Bool)

(assert (=> b!6487426 (=> res!2664401 e!3931759)))

(assert (=> b!6487426 (= res!2664401 (not (isEmpty!37468 (tail!12294 (_2!36649 lt!2388858)))))))

(declare-fun b!6487428 () Bool)

(declare-fun e!3931764 () Bool)

(assert (=> b!6487428 (= e!3931764 (= (head!13209 (_2!36649 lt!2388858)) (c!1188383 lt!2388865)))))

(declare-fun b!6487429 () Bool)

(declare-fun res!2664398 () Bool)

(declare-fun e!3931761 () Bool)

(assert (=> b!6487429 (=> res!2664398 e!3931761)))

(assert (=> b!6487429 (= res!2664398 e!3931764)))

(declare-fun res!2664399 () Bool)

(assert (=> b!6487429 (=> (not res!2664399) (not e!3931764))))

(declare-fun lt!2389042 () Bool)

(assert (=> b!6487429 (= res!2664399 lt!2389042)))

(declare-fun b!6487430 () Bool)

(declare-fun e!3931765 () Bool)

(assert (=> b!6487430 (= e!3931765 e!3931759)))

(declare-fun res!2664404 () Bool)

(assert (=> b!6487430 (=> res!2664404 e!3931759)))

(declare-fun call!561487 () Bool)

(assert (=> b!6487430 (= res!2664404 call!561487)))

(declare-fun b!6487431 () Bool)

(declare-fun res!2664402 () Bool)

(assert (=> b!6487431 (=> res!2664402 e!3931761)))

(assert (=> b!6487431 (= res!2664402 (not ((_ is ElementMatch!16367) lt!2388865)))))

(declare-fun e!3931760 () Bool)

(assert (=> b!6487431 (= e!3931760 e!3931761)))

(declare-fun bm!561482 () Bool)

(assert (=> bm!561482 (= call!561487 (isEmpty!37468 (_2!36649 lt!2388858)))))

(declare-fun b!6487432 () Bool)

(assert (=> b!6487432 (= e!3931761 e!3931765)))

(declare-fun res!2664400 () Bool)

(assert (=> b!6487432 (=> (not res!2664400) (not e!3931765))))

(assert (=> b!6487432 (= res!2664400 (not lt!2389042))))

(declare-fun b!6487433 () Bool)

(declare-fun e!3931762 () Bool)

(assert (=> b!6487433 (= e!3931762 e!3931760)))

(declare-fun c!1188594 () Bool)

(assert (=> b!6487433 (= c!1188594 ((_ is EmptyLang!16367) lt!2388865))))

(declare-fun b!6487434 () Bool)

(declare-fun res!2664403 () Bool)

(assert (=> b!6487434 (=> (not res!2664403) (not e!3931764))))

(assert (=> b!6487434 (= res!2664403 (isEmpty!37468 (tail!12294 (_2!36649 lt!2388858))))))

(declare-fun b!6487435 () Bool)

(declare-fun e!3931763 () Bool)

(assert (=> b!6487435 (= e!3931763 (nullable!6360 lt!2388865))))

(declare-fun b!6487436 () Bool)

(assert (=> b!6487436 (= e!3931762 (= lt!2389042 call!561487))))

(declare-fun b!6487437 () Bool)

(declare-fun res!2664397 () Bool)

(assert (=> b!6487437 (=> (not res!2664397) (not e!3931764))))

(assert (=> b!6487437 (= res!2664397 (not call!561487))))

(declare-fun b!6487438 () Bool)

(assert (=> b!6487438 (= e!3931760 (not lt!2389042))))

(declare-fun b!6487439 () Bool)

(assert (=> b!6487439 (= e!3931759 (not (= (head!13209 (_2!36649 lt!2388858)) (c!1188383 lt!2388865))))))

(declare-fun d!2035051 () Bool)

(assert (=> d!2035051 e!3931762))

(declare-fun c!1188593 () Bool)

(assert (=> d!2035051 (= c!1188593 ((_ is EmptyExpr!16367) lt!2388865))))

(assert (=> d!2035051 (= lt!2389042 e!3931763)))

(declare-fun c!1188592 () Bool)

(assert (=> d!2035051 (= c!1188592 (isEmpty!37468 (_2!36649 lt!2388858)))))

(assert (=> d!2035051 (validRegex!8103 lt!2388865)))

(assert (=> d!2035051 (= (matchR!8550 lt!2388865 (_2!36649 lt!2388858)) lt!2389042)))

(declare-fun b!6487427 () Bool)

(assert (=> b!6487427 (= e!3931763 (matchR!8550 (derivativeStep!5063 lt!2388865 (head!13209 (_2!36649 lt!2388858))) (tail!12294 (_2!36649 lt!2388858))))))

(assert (= (and d!2035051 c!1188592) b!6487435))

(assert (= (and d!2035051 (not c!1188592)) b!6487427))

(assert (= (and d!2035051 c!1188593) b!6487436))

(assert (= (and d!2035051 (not c!1188593)) b!6487433))

(assert (= (and b!6487433 c!1188594) b!6487438))

(assert (= (and b!6487433 (not c!1188594)) b!6487431))

(assert (= (and b!6487431 (not res!2664402)) b!6487429))

(assert (= (and b!6487429 res!2664399) b!6487437))

(assert (= (and b!6487437 res!2664397) b!6487434))

(assert (= (and b!6487434 res!2664403) b!6487428))

(assert (= (and b!6487429 (not res!2664398)) b!6487432))

(assert (= (and b!6487432 res!2664400) b!6487430))

(assert (= (and b!6487430 (not res!2664404)) b!6487426))

(assert (= (and b!6487426 (not res!2664401)) b!6487439))

(assert (= (or b!6487436 b!6487430 b!6487437) bm!561482))

(declare-fun m!7275842 () Bool)

(assert (=> b!6487426 m!7275842))

(assert (=> b!6487426 m!7275842))

(declare-fun m!7275844 () Bool)

(assert (=> b!6487426 m!7275844))

(declare-fun m!7275846 () Bool)

(assert (=> b!6487435 m!7275846))

(declare-fun m!7275848 () Bool)

(assert (=> d!2035051 m!7275848))

(declare-fun m!7275850 () Bool)

(assert (=> d!2035051 m!7275850))

(assert (=> b!6487434 m!7275842))

(assert (=> b!6487434 m!7275842))

(assert (=> b!6487434 m!7275844))

(declare-fun m!7275852 () Bool)

(assert (=> b!6487439 m!7275852))

(assert (=> b!6487428 m!7275852))

(assert (=> b!6487427 m!7275852))

(assert (=> b!6487427 m!7275852))

(declare-fun m!7275854 () Bool)

(assert (=> b!6487427 m!7275854))

(assert (=> b!6487427 m!7275842))

(assert (=> b!6487427 m!7275854))

(assert (=> b!6487427 m!7275842))

(declare-fun m!7275856 () Bool)

(assert (=> b!6487427 m!7275856))

(assert (=> bm!561482 m!7275848))

(assert (=> b!6486643 d!2035051))

(declare-fun d!2035053 () Bool)

(declare-fun c!1188597 () Bool)

(assert (=> d!2035053 (= c!1188597 (isEmpty!37468 (t!379026 s!2326)))))

(declare-fun e!3931768 () Bool)

(assert (=> d!2035053 (= (matchZipper!2379 lt!2388867 (t!379026 s!2326)) e!3931768)))

(declare-fun b!6487444 () Bool)

(declare-fun nullableZipper!2124 ((InoxSet Context!11502)) Bool)

(assert (=> b!6487444 (= e!3931768 (nullableZipper!2124 lt!2388867))))

(declare-fun b!6487445 () Bool)

(assert (=> b!6487445 (= e!3931768 (matchZipper!2379 (derivationStepZipper!2333 lt!2388867 (head!13209 (t!379026 s!2326))) (tail!12294 (t!379026 s!2326))))))

(assert (= (and d!2035053 c!1188597) b!6487444))

(assert (= (and d!2035053 (not c!1188597)) b!6487445))

(declare-fun m!7275858 () Bool)

(assert (=> d!2035053 m!7275858))

(declare-fun m!7275860 () Bool)

(assert (=> b!6487444 m!7275860))

(declare-fun m!7275862 () Bool)

(assert (=> b!6487445 m!7275862))

(assert (=> b!6487445 m!7275862))

(declare-fun m!7275864 () Bool)

(assert (=> b!6487445 m!7275864))

(declare-fun m!7275866 () Bool)

(assert (=> b!6487445 m!7275866))

(assert (=> b!6487445 m!7275864))

(assert (=> b!6487445 m!7275866))

(declare-fun m!7275868 () Bool)

(assert (=> b!6487445 m!7275868))

(assert (=> b!6486623 d!2035053))

(declare-fun b!6487446 () Bool)

(declare-fun res!2664409 () Bool)

(declare-fun e!3931769 () Bool)

(assert (=> b!6487446 (=> res!2664409 e!3931769)))

(assert (=> b!6487446 (= res!2664409 (not (isEmpty!37468 (tail!12294 (_2!36649 lt!2388900)))))))

(declare-fun b!6487448 () Bool)

(declare-fun e!3931774 () Bool)

(assert (=> b!6487448 (= e!3931774 (= (head!13209 (_2!36649 lt!2388900)) (c!1188383 (regTwo!33246 r!7292))))))

(declare-fun b!6487449 () Bool)

(declare-fun res!2664406 () Bool)

(declare-fun e!3931771 () Bool)

(assert (=> b!6487449 (=> res!2664406 e!3931771)))

(assert (=> b!6487449 (= res!2664406 e!3931774)))

(declare-fun res!2664407 () Bool)

(assert (=> b!6487449 (=> (not res!2664407) (not e!3931774))))

(declare-fun lt!2389043 () Bool)

(assert (=> b!6487449 (= res!2664407 lt!2389043)))

(declare-fun b!6487450 () Bool)

(declare-fun e!3931775 () Bool)

(assert (=> b!6487450 (= e!3931775 e!3931769)))

(declare-fun res!2664412 () Bool)

(assert (=> b!6487450 (=> res!2664412 e!3931769)))

(declare-fun call!561488 () Bool)

(assert (=> b!6487450 (= res!2664412 call!561488)))

(declare-fun b!6487451 () Bool)

(declare-fun res!2664410 () Bool)

(assert (=> b!6487451 (=> res!2664410 e!3931771)))

(assert (=> b!6487451 (= res!2664410 (not ((_ is ElementMatch!16367) (regTwo!33246 r!7292))))))

(declare-fun e!3931770 () Bool)

(assert (=> b!6487451 (= e!3931770 e!3931771)))

(declare-fun bm!561483 () Bool)

(assert (=> bm!561483 (= call!561488 (isEmpty!37468 (_2!36649 lt!2388900)))))

(declare-fun b!6487452 () Bool)

(assert (=> b!6487452 (= e!3931771 e!3931775)))

(declare-fun res!2664408 () Bool)

(assert (=> b!6487452 (=> (not res!2664408) (not e!3931775))))

(assert (=> b!6487452 (= res!2664408 (not lt!2389043))))

(declare-fun b!6487453 () Bool)

(declare-fun e!3931772 () Bool)

(assert (=> b!6487453 (= e!3931772 e!3931770)))

(declare-fun c!1188600 () Bool)

(assert (=> b!6487453 (= c!1188600 ((_ is EmptyLang!16367) (regTwo!33246 r!7292)))))

(declare-fun b!6487454 () Bool)

(declare-fun res!2664411 () Bool)

(assert (=> b!6487454 (=> (not res!2664411) (not e!3931774))))

(assert (=> b!6487454 (= res!2664411 (isEmpty!37468 (tail!12294 (_2!36649 lt!2388900))))))

(declare-fun b!6487455 () Bool)

(declare-fun e!3931773 () Bool)

(assert (=> b!6487455 (= e!3931773 (nullable!6360 (regTwo!33246 r!7292)))))

(declare-fun b!6487456 () Bool)

(assert (=> b!6487456 (= e!3931772 (= lt!2389043 call!561488))))

(declare-fun b!6487457 () Bool)

(declare-fun res!2664405 () Bool)

(assert (=> b!6487457 (=> (not res!2664405) (not e!3931774))))

(assert (=> b!6487457 (= res!2664405 (not call!561488))))

(declare-fun b!6487458 () Bool)

(assert (=> b!6487458 (= e!3931770 (not lt!2389043))))

(declare-fun b!6487459 () Bool)

(assert (=> b!6487459 (= e!3931769 (not (= (head!13209 (_2!36649 lt!2388900)) (c!1188383 (regTwo!33246 r!7292)))))))

(declare-fun d!2035055 () Bool)

(assert (=> d!2035055 e!3931772))

(declare-fun c!1188599 () Bool)

(assert (=> d!2035055 (= c!1188599 ((_ is EmptyExpr!16367) (regTwo!33246 r!7292)))))

(assert (=> d!2035055 (= lt!2389043 e!3931773)))

(declare-fun c!1188598 () Bool)

(assert (=> d!2035055 (= c!1188598 (isEmpty!37468 (_2!36649 lt!2388900)))))

(assert (=> d!2035055 (validRegex!8103 (regTwo!33246 r!7292))))

(assert (=> d!2035055 (= (matchR!8550 (regTwo!33246 r!7292) (_2!36649 lt!2388900)) lt!2389043)))

(declare-fun b!6487447 () Bool)

(assert (=> b!6487447 (= e!3931773 (matchR!8550 (derivativeStep!5063 (regTwo!33246 r!7292) (head!13209 (_2!36649 lt!2388900))) (tail!12294 (_2!36649 lt!2388900))))))

(assert (= (and d!2035055 c!1188598) b!6487455))

(assert (= (and d!2035055 (not c!1188598)) b!6487447))

(assert (= (and d!2035055 c!1188599) b!6487456))

(assert (= (and d!2035055 (not c!1188599)) b!6487453))

(assert (= (and b!6487453 c!1188600) b!6487458))

(assert (= (and b!6487453 (not c!1188600)) b!6487451))

(assert (= (and b!6487451 (not res!2664410)) b!6487449))

(assert (= (and b!6487449 res!2664407) b!6487457))

(assert (= (and b!6487457 res!2664405) b!6487454))

(assert (= (and b!6487454 res!2664411) b!6487448))

(assert (= (and b!6487449 (not res!2664406)) b!6487452))

(assert (= (and b!6487452 res!2664408) b!6487450))

(assert (= (and b!6487450 (not res!2664412)) b!6487446))

(assert (= (and b!6487446 (not res!2664409)) b!6487459))

(assert (= (or b!6487456 b!6487450 b!6487457) bm!561483))

(declare-fun m!7275870 () Bool)

(assert (=> b!6487446 m!7275870))

(assert (=> b!6487446 m!7275870))

(declare-fun m!7275872 () Bool)

(assert (=> b!6487446 m!7275872))

(declare-fun m!7275874 () Bool)

(assert (=> b!6487455 m!7275874))

(declare-fun m!7275876 () Bool)

(assert (=> d!2035055 m!7275876))

(declare-fun m!7275878 () Bool)

(assert (=> d!2035055 m!7275878))

(assert (=> b!6487454 m!7275870))

(assert (=> b!6487454 m!7275870))

(assert (=> b!6487454 m!7275872))

(declare-fun m!7275880 () Bool)

(assert (=> b!6487459 m!7275880))

(assert (=> b!6487448 m!7275880))

(assert (=> b!6487447 m!7275880))

(assert (=> b!6487447 m!7275880))

(declare-fun m!7275882 () Bool)

(assert (=> b!6487447 m!7275882))

(assert (=> b!6487447 m!7275870))

(assert (=> b!6487447 m!7275882))

(assert (=> b!6487447 m!7275870))

(declare-fun m!7275884 () Bool)

(assert (=> b!6487447 m!7275884))

(assert (=> bm!561483 m!7275876))

(assert (=> b!6486621 d!2035055))

(declare-fun d!2035057 () Bool)

(declare-fun c!1188601 () Bool)

(assert (=> d!2035057 (= c!1188601 (isEmpty!37468 s!2326))))

(declare-fun e!3931776 () Bool)

(assert (=> d!2035057 (= (matchZipper!2379 lt!2388869 s!2326) e!3931776)))

(declare-fun b!6487460 () Bool)

(assert (=> b!6487460 (= e!3931776 (nullableZipper!2124 lt!2388869))))

(declare-fun b!6487461 () Bool)

(assert (=> b!6487461 (= e!3931776 (matchZipper!2379 (derivationStepZipper!2333 lt!2388869 (head!13209 s!2326)) (tail!12294 s!2326)))))

(assert (= (and d!2035057 c!1188601) b!6487460))

(assert (= (and d!2035057 (not c!1188601)) b!6487461))

(declare-fun m!7275886 () Bool)

(assert (=> d!2035057 m!7275886))

(declare-fun m!7275888 () Bool)

(assert (=> b!6487460 m!7275888))

(declare-fun m!7275890 () Bool)

(assert (=> b!6487461 m!7275890))

(assert (=> b!6487461 m!7275890))

(declare-fun m!7275892 () Bool)

(assert (=> b!6487461 m!7275892))

(declare-fun m!7275894 () Bool)

(assert (=> b!6487461 m!7275894))

(assert (=> b!6487461 m!7275892))

(assert (=> b!6487461 m!7275894))

(declare-fun m!7275896 () Bool)

(assert (=> b!6487461 m!7275896))

(assert (=> b!6486622 d!2035057))

(declare-fun d!2035059 () Bool)

(declare-fun c!1188602 () Bool)

(assert (=> d!2035059 (= c!1188602 (isEmpty!37468 (t!379026 s!2326)))))

(declare-fun e!3931777 () Bool)

(assert (=> d!2035059 (= (matchZipper!2379 lt!2388913 (t!379026 s!2326)) e!3931777)))

(declare-fun b!6487462 () Bool)

(assert (=> b!6487462 (= e!3931777 (nullableZipper!2124 lt!2388913))))

(declare-fun b!6487463 () Bool)

(assert (=> b!6487463 (= e!3931777 (matchZipper!2379 (derivationStepZipper!2333 lt!2388913 (head!13209 (t!379026 s!2326))) (tail!12294 (t!379026 s!2326))))))

(assert (= (and d!2035059 c!1188602) b!6487462))

(assert (= (and d!2035059 (not c!1188602)) b!6487463))

(assert (=> d!2035059 m!7275858))

(declare-fun m!7275898 () Bool)

(assert (=> b!6487462 m!7275898))

(assert (=> b!6487463 m!7275862))

(assert (=> b!6487463 m!7275862))

(declare-fun m!7275900 () Bool)

(assert (=> b!6487463 m!7275900))

(assert (=> b!6487463 m!7275866))

(assert (=> b!6487463 m!7275900))

(assert (=> b!6487463 m!7275866))

(declare-fun m!7275902 () Bool)

(assert (=> b!6487463 m!7275902))

(assert (=> b!6486622 d!2035059))

(declare-fun b!6487464 () Bool)

(declare-fun res!2664417 () Bool)

(declare-fun e!3931778 () Bool)

(assert (=> b!6487464 (=> res!2664417 e!3931778)))

(assert (=> b!6487464 (= res!2664417 (not (isEmpty!37468 (tail!12294 lt!2388887))))))

(declare-fun b!6487466 () Bool)

(declare-fun e!3931783 () Bool)

(assert (=> b!6487466 (= e!3931783 (= (head!13209 lt!2388887) (c!1188383 lt!2388855)))))

(declare-fun b!6487467 () Bool)

(declare-fun res!2664414 () Bool)

(declare-fun e!3931780 () Bool)

(assert (=> b!6487467 (=> res!2664414 e!3931780)))

(assert (=> b!6487467 (= res!2664414 e!3931783)))

(declare-fun res!2664415 () Bool)

(assert (=> b!6487467 (=> (not res!2664415) (not e!3931783))))

(declare-fun lt!2389044 () Bool)

(assert (=> b!6487467 (= res!2664415 lt!2389044)))

(declare-fun b!6487468 () Bool)

(declare-fun e!3931784 () Bool)

(assert (=> b!6487468 (= e!3931784 e!3931778)))

(declare-fun res!2664420 () Bool)

(assert (=> b!6487468 (=> res!2664420 e!3931778)))

(declare-fun call!561489 () Bool)

(assert (=> b!6487468 (= res!2664420 call!561489)))

(declare-fun b!6487469 () Bool)

(declare-fun res!2664418 () Bool)

(assert (=> b!6487469 (=> res!2664418 e!3931780)))

(assert (=> b!6487469 (= res!2664418 (not ((_ is ElementMatch!16367) lt!2388855)))))

(declare-fun e!3931779 () Bool)

(assert (=> b!6487469 (= e!3931779 e!3931780)))

(declare-fun bm!561484 () Bool)

(assert (=> bm!561484 (= call!561489 (isEmpty!37468 lt!2388887))))

(declare-fun b!6487470 () Bool)

(assert (=> b!6487470 (= e!3931780 e!3931784)))

(declare-fun res!2664416 () Bool)

(assert (=> b!6487470 (=> (not res!2664416) (not e!3931784))))

(assert (=> b!6487470 (= res!2664416 (not lt!2389044))))

(declare-fun b!6487471 () Bool)

(declare-fun e!3931781 () Bool)

(assert (=> b!6487471 (= e!3931781 e!3931779)))

(declare-fun c!1188605 () Bool)

(assert (=> b!6487471 (= c!1188605 ((_ is EmptyLang!16367) lt!2388855))))

(declare-fun b!6487472 () Bool)

(declare-fun res!2664419 () Bool)

(assert (=> b!6487472 (=> (not res!2664419) (not e!3931783))))

(assert (=> b!6487472 (= res!2664419 (isEmpty!37468 (tail!12294 lt!2388887)))))

(declare-fun b!6487473 () Bool)

(declare-fun e!3931782 () Bool)

(assert (=> b!6487473 (= e!3931782 (nullable!6360 lt!2388855))))

(declare-fun b!6487474 () Bool)

(assert (=> b!6487474 (= e!3931781 (= lt!2389044 call!561489))))

(declare-fun b!6487475 () Bool)

(declare-fun res!2664413 () Bool)

(assert (=> b!6487475 (=> (not res!2664413) (not e!3931783))))

(assert (=> b!6487475 (= res!2664413 (not call!561489))))

(declare-fun b!6487476 () Bool)

(assert (=> b!6487476 (= e!3931779 (not lt!2389044))))

(declare-fun b!6487477 () Bool)

(assert (=> b!6487477 (= e!3931778 (not (= (head!13209 lt!2388887) (c!1188383 lt!2388855))))))

(declare-fun d!2035061 () Bool)

(assert (=> d!2035061 e!3931781))

(declare-fun c!1188604 () Bool)

(assert (=> d!2035061 (= c!1188604 ((_ is EmptyExpr!16367) lt!2388855))))

(assert (=> d!2035061 (= lt!2389044 e!3931782)))

(declare-fun c!1188603 () Bool)

(assert (=> d!2035061 (= c!1188603 (isEmpty!37468 lt!2388887))))

(assert (=> d!2035061 (validRegex!8103 lt!2388855)))

(assert (=> d!2035061 (= (matchR!8550 lt!2388855 lt!2388887) lt!2389044)))

(declare-fun b!6487465 () Bool)

(assert (=> b!6487465 (= e!3931782 (matchR!8550 (derivativeStep!5063 lt!2388855 (head!13209 lt!2388887)) (tail!12294 lt!2388887)))))

(assert (= (and d!2035061 c!1188603) b!6487473))

(assert (= (and d!2035061 (not c!1188603)) b!6487465))

(assert (= (and d!2035061 c!1188604) b!6487474))

(assert (= (and d!2035061 (not c!1188604)) b!6487471))

(assert (= (and b!6487471 c!1188605) b!6487476))

(assert (= (and b!6487471 (not c!1188605)) b!6487469))

(assert (= (and b!6487469 (not res!2664418)) b!6487467))

(assert (= (and b!6487467 res!2664415) b!6487475))

(assert (= (and b!6487475 res!2664413) b!6487472))

(assert (= (and b!6487472 res!2664419) b!6487466))

(assert (= (and b!6487467 (not res!2664414)) b!6487470))

(assert (= (and b!6487470 res!2664416) b!6487468))

(assert (= (and b!6487468 (not res!2664420)) b!6487464))

(assert (= (and b!6487464 (not res!2664417)) b!6487477))

(assert (= (or b!6487474 b!6487468 b!6487475) bm!561484))

(declare-fun m!7275904 () Bool)

(assert (=> b!6487464 m!7275904))

(assert (=> b!6487464 m!7275904))

(declare-fun m!7275906 () Bool)

(assert (=> b!6487464 m!7275906))

(declare-fun m!7275908 () Bool)

(assert (=> b!6487473 m!7275908))

(declare-fun m!7275910 () Bool)

(assert (=> d!2035061 m!7275910))

(declare-fun m!7275912 () Bool)

(assert (=> d!2035061 m!7275912))

(assert (=> b!6487472 m!7275904))

(assert (=> b!6487472 m!7275904))

(assert (=> b!6487472 m!7275906))

(declare-fun m!7275914 () Bool)

(assert (=> b!6487477 m!7275914))

(assert (=> b!6487466 m!7275914))

(assert (=> b!6487465 m!7275914))

(assert (=> b!6487465 m!7275914))

(declare-fun m!7275916 () Bool)

(assert (=> b!6487465 m!7275916))

(assert (=> b!6487465 m!7275904))

(assert (=> b!6487465 m!7275916))

(assert (=> b!6487465 m!7275904))

(declare-fun m!7275918 () Bool)

(assert (=> b!6487465 m!7275918))

(assert (=> bm!561484 m!7275910))

(assert (=> b!6486640 d!2035061))

(declare-fun d!2035063 () Bool)

(assert (=> d!2035063 (= (matchR!8550 lt!2388899 lt!2388903) (matchZipper!2379 lt!2388898 lt!2388903))))

(declare-fun lt!2389047 () Unit!158799)

(declare-fun choose!48157 ((InoxSet Context!11502) List!65402 Regex!16367 List!65400) Unit!158799)

(assert (=> d!2035063 (= lt!2389047 (choose!48157 lt!2388898 lt!2388863 lt!2388899 lt!2388903))))

(assert (=> d!2035063 (validRegex!8103 lt!2388899)))

(assert (=> d!2035063 (= (theoremZipperRegexEquiv!833 lt!2388898 lt!2388863 lt!2388899 lt!2388903) lt!2389047)))

(declare-fun bs!1645843 () Bool)

(assert (= bs!1645843 d!2035063))

(assert (=> bs!1645843 m!7274968))

(assert (=> bs!1645843 m!7274950))

(declare-fun m!7275920 () Bool)

(assert (=> bs!1645843 m!7275920))

(declare-fun m!7275922 () Bool)

(assert (=> bs!1645843 m!7275922))

(assert (=> b!6486640 d!2035063))

(declare-fun d!2035065 () Bool)

(declare-fun c!1188606 () Bool)

(assert (=> d!2035065 (= c!1188606 (isEmpty!37468 lt!2388887))))

(declare-fun e!3931785 () Bool)

(assert (=> d!2035065 (= (matchZipper!2379 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 lt!2388881 lt!2388871)) true) lt!2388887) e!3931785)))

(declare-fun b!6487478 () Bool)

(assert (=> b!6487478 (= e!3931785 (nullableZipper!2124 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 lt!2388881 lt!2388871)) true)))))

(declare-fun b!6487479 () Bool)

(assert (=> b!6487479 (= e!3931785 (matchZipper!2379 (derivationStepZipper!2333 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 lt!2388881 lt!2388871)) true) (head!13209 lt!2388887)) (tail!12294 lt!2388887)))))

(assert (= (and d!2035065 c!1188606) b!6487478))

(assert (= (and d!2035065 (not c!1188606)) b!6487479))

(assert (=> d!2035065 m!7275910))

(assert (=> b!6487478 m!7274962))

(declare-fun m!7275924 () Bool)

(assert (=> b!6487478 m!7275924))

(assert (=> b!6487479 m!7275914))

(assert (=> b!6487479 m!7274962))

(assert (=> b!6487479 m!7275914))

(declare-fun m!7275926 () Bool)

(assert (=> b!6487479 m!7275926))

(assert (=> b!6487479 m!7275904))

(assert (=> b!6487479 m!7275926))

(assert (=> b!6487479 m!7275904))

(declare-fun m!7275928 () Bool)

(assert (=> b!6487479 m!7275928))

(assert (=> b!6486640 d!2035065))

(declare-fun d!2035067 () Bool)

(declare-fun c!1188607 () Bool)

(assert (=> d!2035067 (= c!1188607 (isEmpty!37468 (_1!36649 lt!2388858)))))

(declare-fun e!3931786 () Bool)

(assert (=> d!2035067 (= (matchZipper!2379 lt!2388878 (_1!36649 lt!2388858)) e!3931786)))

(declare-fun b!6487480 () Bool)

(assert (=> b!6487480 (= e!3931786 (nullableZipper!2124 lt!2388878))))

(declare-fun b!6487481 () Bool)

(assert (=> b!6487481 (= e!3931786 (matchZipper!2379 (derivationStepZipper!2333 lt!2388878 (head!13209 (_1!36649 lt!2388858))) (tail!12294 (_1!36649 lt!2388858))))))

(assert (= (and d!2035067 c!1188607) b!6487480))

(assert (= (and d!2035067 (not c!1188607)) b!6487481))

(assert (=> d!2035067 m!7275820))

(declare-fun m!7275930 () Bool)

(assert (=> b!6487480 m!7275930))

(assert (=> b!6487481 m!7275824))

(assert (=> b!6487481 m!7275824))

(declare-fun m!7275932 () Bool)

(assert (=> b!6487481 m!7275932))

(assert (=> b!6487481 m!7275814))

(assert (=> b!6487481 m!7275932))

(assert (=> b!6487481 m!7275814))

(declare-fun m!7275934 () Bool)

(assert (=> b!6487481 m!7275934))

(assert (=> b!6486640 d!2035067))

(declare-fun d!2035069 () Bool)

(assert (=> d!2035069 (matchR!8550 (Star!16367 (reg!16696 (regOne!33246 r!7292))) (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858)))))

(declare-fun lt!2389050 () Unit!158799)

(declare-fun choose!48158 (Regex!16367 List!65400 List!65400) Unit!158799)

(assert (=> d!2035069 (= lt!2389050 (choose!48158 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388858) (_2!36649 lt!2388858)))))

(assert (=> d!2035069 (validRegex!8103 (Star!16367 (reg!16696 (regOne!33246 r!7292))))))

(assert (=> d!2035069 (= (lemmaStarApp!144 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388858) (_2!36649 lt!2388858)) lt!2389050)))

(declare-fun bs!1645844 () Bool)

(assert (= bs!1645844 d!2035069))

(assert (=> bs!1645844 m!7275018))

(assert (=> bs!1645844 m!7275018))

(declare-fun m!7275936 () Bool)

(assert (=> bs!1645844 m!7275936))

(declare-fun m!7275938 () Bool)

(assert (=> bs!1645844 m!7275938))

(declare-fun m!7275940 () Bool)

(assert (=> bs!1645844 m!7275940))

(assert (=> b!6486640 d!2035069))

(declare-fun d!2035071 () Bool)

(assert (=> d!2035071 (matchR!8550 (Concat!25212 lt!2388865 (regTwo!33246 r!7292)) (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900)))))

(declare-fun lt!2389053 () Unit!158799)

(declare-fun choose!48159 (Regex!16367 Regex!16367 List!65400 List!65400) Unit!158799)

(assert (=> d!2035071 (= lt!2389053 (choose!48159 lt!2388865 (regTwo!33246 r!7292) (_2!36649 lt!2388858) (_2!36649 lt!2388900)))))

(declare-fun e!3931789 () Bool)

(assert (=> d!2035071 e!3931789))

(declare-fun res!2664423 () Bool)

(assert (=> d!2035071 (=> (not res!2664423) (not e!3931789))))

(assert (=> d!2035071 (= res!2664423 (validRegex!8103 lt!2388865))))

(assert (=> d!2035071 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!330 lt!2388865 (regTwo!33246 r!7292) (_2!36649 lt!2388858) (_2!36649 lt!2388900)) lt!2389053)))

(declare-fun b!6487484 () Bool)

(assert (=> b!6487484 (= e!3931789 (validRegex!8103 (regTwo!33246 r!7292)))))

(assert (= (and d!2035071 res!2664423) b!6487484))

(assert (=> d!2035071 m!7274924))

(assert (=> d!2035071 m!7274924))

(declare-fun m!7275942 () Bool)

(assert (=> d!2035071 m!7275942))

(declare-fun m!7275944 () Bool)

(assert (=> d!2035071 m!7275944))

(assert (=> d!2035071 m!7275850))

(assert (=> b!6487484 m!7275878))

(assert (=> b!6486640 d!2035071))

(declare-fun bs!1645845 () Bool)

(declare-fun d!2035073 () Bool)

(assert (= bs!1645845 (and d!2035073 b!6486640)))

(declare-fun lambda!359181 () Int)

(assert (=> bs!1645845 (= lambda!359181 lambda!359126)))

(declare-fun bs!1645846 () Bool)

(assert (= bs!1645846 (and d!2035073 d!2035009)))

(assert (=> bs!1645846 (= lambda!359181 lambda!359178)))

(assert (=> d!2035073 (= (inv!84164 lt!2388885) (forall!15550 (exprs!6251 lt!2388885) lambda!359181))))

(declare-fun bs!1645847 () Bool)

(assert (= bs!1645847 d!2035073))

(declare-fun m!7275946 () Bool)

(assert (=> bs!1645847 m!7275946))

(assert (=> b!6486640 d!2035073))

(declare-fun d!2035075 () Bool)

(assert (=> d!2035075 (= (matchR!8550 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388858)) (matchZipper!2379 lt!2388878 (_1!36649 lt!2388858)))))

(declare-fun lt!2389054 () Unit!158799)

(assert (=> d!2035075 (= lt!2389054 (choose!48157 lt!2388878 lt!2388883 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388858)))))

(assert (=> d!2035075 (validRegex!8103 (reg!16696 (regOne!33246 r!7292)))))

(assert (=> d!2035075 (= (theoremZipperRegexEquiv!833 lt!2388878 lt!2388883 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388858)) lt!2389054)))

(declare-fun bs!1645848 () Bool)

(assert (= bs!1645848 d!2035075))

(assert (=> bs!1645848 m!7275092))

(assert (=> bs!1645848 m!7274960))

(declare-fun m!7275948 () Bool)

(assert (=> bs!1645848 m!7275948))

(assert (=> bs!1645848 m!7275822))

(assert (=> b!6486640 d!2035075))

(declare-fun d!2035077 () Bool)

(assert (=> d!2035077 (forall!15550 (++!14445 lt!2388881 lt!2388871) lambda!359126)))

(declare-fun lt!2389057 () Unit!158799)

(declare-fun choose!48160 (List!65401 List!65401 Int) Unit!158799)

(assert (=> d!2035077 (= lt!2389057 (choose!48160 lt!2388881 lt!2388871 lambda!359126))))

(assert (=> d!2035077 (forall!15550 lt!2388881 lambda!359126)))

(assert (=> d!2035077 (= (lemmaConcatPreservesForall!346 lt!2388881 lt!2388871 lambda!359126) lt!2389057)))

(declare-fun bs!1645849 () Bool)

(assert (= bs!1645849 d!2035077))

(assert (=> bs!1645849 m!7274956))

(assert (=> bs!1645849 m!7274956))

(declare-fun m!7275950 () Bool)

(assert (=> bs!1645849 m!7275950))

(declare-fun m!7275952 () Bool)

(assert (=> bs!1645849 m!7275952))

(declare-fun m!7275954 () Bool)

(assert (=> bs!1645849 m!7275954))

(assert (=> b!6486640 d!2035077))

(declare-fun b!6487485 () Bool)

(declare-fun res!2664428 () Bool)

(declare-fun e!3931790 () Bool)

(assert (=> b!6487485 (=> res!2664428 e!3931790)))

(assert (=> b!6487485 (= res!2664428 (not (isEmpty!37468 (tail!12294 lt!2388889))))))

(declare-fun b!6487487 () Bool)

(declare-fun e!3931795 () Bool)

(assert (=> b!6487487 (= e!3931795 (= (head!13209 lt!2388889) (c!1188383 lt!2388865)))))

(declare-fun b!6487488 () Bool)

(declare-fun res!2664425 () Bool)

(declare-fun e!3931792 () Bool)

(assert (=> b!6487488 (=> res!2664425 e!3931792)))

(assert (=> b!6487488 (= res!2664425 e!3931795)))

(declare-fun res!2664426 () Bool)

(assert (=> b!6487488 (=> (not res!2664426) (not e!3931795))))

(declare-fun lt!2389058 () Bool)

(assert (=> b!6487488 (= res!2664426 lt!2389058)))

(declare-fun b!6487489 () Bool)

(declare-fun e!3931796 () Bool)

(assert (=> b!6487489 (= e!3931796 e!3931790)))

(declare-fun res!2664431 () Bool)

(assert (=> b!6487489 (=> res!2664431 e!3931790)))

(declare-fun call!561490 () Bool)

(assert (=> b!6487489 (= res!2664431 call!561490)))

(declare-fun b!6487490 () Bool)

(declare-fun res!2664429 () Bool)

(assert (=> b!6487490 (=> res!2664429 e!3931792)))

(assert (=> b!6487490 (= res!2664429 (not ((_ is ElementMatch!16367) lt!2388865)))))

(declare-fun e!3931791 () Bool)

(assert (=> b!6487490 (= e!3931791 e!3931792)))

(declare-fun bm!561485 () Bool)

(assert (=> bm!561485 (= call!561490 (isEmpty!37468 lt!2388889))))

(declare-fun b!6487491 () Bool)

(assert (=> b!6487491 (= e!3931792 e!3931796)))

(declare-fun res!2664427 () Bool)

(assert (=> b!6487491 (=> (not res!2664427) (not e!3931796))))

(assert (=> b!6487491 (= res!2664427 (not lt!2389058))))

(declare-fun b!6487492 () Bool)

(declare-fun e!3931793 () Bool)

(assert (=> b!6487492 (= e!3931793 e!3931791)))

(declare-fun c!1188610 () Bool)

(assert (=> b!6487492 (= c!1188610 ((_ is EmptyLang!16367) lt!2388865))))

(declare-fun b!6487493 () Bool)

(declare-fun res!2664430 () Bool)

(assert (=> b!6487493 (=> (not res!2664430) (not e!3931795))))

(assert (=> b!6487493 (= res!2664430 (isEmpty!37468 (tail!12294 lt!2388889)))))

(declare-fun b!6487494 () Bool)

(declare-fun e!3931794 () Bool)

(assert (=> b!6487494 (= e!3931794 (nullable!6360 lt!2388865))))

(declare-fun b!6487495 () Bool)

(assert (=> b!6487495 (= e!3931793 (= lt!2389058 call!561490))))

(declare-fun b!6487496 () Bool)

(declare-fun res!2664424 () Bool)

(assert (=> b!6487496 (=> (not res!2664424) (not e!3931795))))

(assert (=> b!6487496 (= res!2664424 (not call!561490))))

(declare-fun b!6487497 () Bool)

(assert (=> b!6487497 (= e!3931791 (not lt!2389058))))

(declare-fun b!6487498 () Bool)

(assert (=> b!6487498 (= e!3931790 (not (= (head!13209 lt!2388889) (c!1188383 lt!2388865))))))

(declare-fun d!2035079 () Bool)

(assert (=> d!2035079 e!3931793))

(declare-fun c!1188609 () Bool)

(assert (=> d!2035079 (= c!1188609 ((_ is EmptyExpr!16367) lt!2388865))))

(assert (=> d!2035079 (= lt!2389058 e!3931794)))

(declare-fun c!1188608 () Bool)

(assert (=> d!2035079 (= c!1188608 (isEmpty!37468 lt!2388889))))

(assert (=> d!2035079 (validRegex!8103 lt!2388865)))

(assert (=> d!2035079 (= (matchR!8550 lt!2388865 lt!2388889) lt!2389058)))

(declare-fun b!6487486 () Bool)

(assert (=> b!6487486 (= e!3931794 (matchR!8550 (derivativeStep!5063 lt!2388865 (head!13209 lt!2388889)) (tail!12294 lt!2388889)))))

(assert (= (and d!2035079 c!1188608) b!6487494))

(assert (= (and d!2035079 (not c!1188608)) b!6487486))

(assert (= (and d!2035079 c!1188609) b!6487495))

(assert (= (and d!2035079 (not c!1188609)) b!6487492))

(assert (= (and b!6487492 c!1188610) b!6487497))

(assert (= (and b!6487492 (not c!1188610)) b!6487490))

(assert (= (and b!6487490 (not res!2664429)) b!6487488))

(assert (= (and b!6487488 res!2664426) b!6487496))

(assert (= (and b!6487496 res!2664424) b!6487493))

(assert (= (and b!6487493 res!2664430) b!6487487))

(assert (= (and b!6487488 (not res!2664425)) b!6487491))

(assert (= (and b!6487491 res!2664427) b!6487489))

(assert (= (and b!6487489 (not res!2664431)) b!6487485))

(assert (= (and b!6487485 (not res!2664428)) b!6487498))

(assert (= (or b!6487495 b!6487489 b!6487496) bm!561485))

(declare-fun m!7275956 () Bool)

(assert (=> b!6487485 m!7275956))

(assert (=> b!6487485 m!7275956))

(declare-fun m!7275958 () Bool)

(assert (=> b!6487485 m!7275958))

(assert (=> b!6487494 m!7275846))

(declare-fun m!7275960 () Bool)

(assert (=> d!2035079 m!7275960))

(assert (=> d!2035079 m!7275850))

(assert (=> b!6487493 m!7275956))

(assert (=> b!6487493 m!7275956))

(assert (=> b!6487493 m!7275958))

(declare-fun m!7275962 () Bool)

(assert (=> b!6487498 m!7275962))

(assert (=> b!6487487 m!7275962))

(assert (=> b!6487486 m!7275962))

(assert (=> b!6487486 m!7275962))

(declare-fun m!7275964 () Bool)

(assert (=> b!6487486 m!7275964))

(assert (=> b!6487486 m!7275956))

(assert (=> b!6487486 m!7275964))

(assert (=> b!6487486 m!7275956))

(declare-fun m!7275966 () Bool)

(assert (=> b!6487486 m!7275966))

(assert (=> bm!561485 m!7275960))

(assert (=> b!6486640 d!2035079))

(declare-fun b!6487499 () Bool)

(declare-fun res!2664436 () Bool)

(declare-fun e!3931797 () Bool)

(assert (=> b!6487499 (=> res!2664436 e!3931797)))

(assert (=> b!6487499 (= res!2664436 (not (isEmpty!37468 (tail!12294 lt!2388903))))))

(declare-fun b!6487501 () Bool)

(declare-fun e!3931802 () Bool)

(assert (=> b!6487501 (= e!3931802 (= (head!13209 lt!2388903) (c!1188383 lt!2388899)))))

(declare-fun b!6487502 () Bool)

(declare-fun res!2664433 () Bool)

(declare-fun e!3931799 () Bool)

(assert (=> b!6487502 (=> res!2664433 e!3931799)))

(assert (=> b!6487502 (= res!2664433 e!3931802)))

(declare-fun res!2664434 () Bool)

(assert (=> b!6487502 (=> (not res!2664434) (not e!3931802))))

(declare-fun lt!2389059 () Bool)

(assert (=> b!6487502 (= res!2664434 lt!2389059)))

(declare-fun b!6487503 () Bool)

(declare-fun e!3931803 () Bool)

(assert (=> b!6487503 (= e!3931803 e!3931797)))

(declare-fun res!2664439 () Bool)

(assert (=> b!6487503 (=> res!2664439 e!3931797)))

(declare-fun call!561491 () Bool)

(assert (=> b!6487503 (= res!2664439 call!561491)))

(declare-fun b!6487504 () Bool)

(declare-fun res!2664437 () Bool)

(assert (=> b!6487504 (=> res!2664437 e!3931799)))

(assert (=> b!6487504 (= res!2664437 (not ((_ is ElementMatch!16367) lt!2388899)))))

(declare-fun e!3931798 () Bool)

(assert (=> b!6487504 (= e!3931798 e!3931799)))

(declare-fun bm!561486 () Bool)

(assert (=> bm!561486 (= call!561491 (isEmpty!37468 lt!2388903))))

(declare-fun b!6487505 () Bool)

(assert (=> b!6487505 (= e!3931799 e!3931803)))

(declare-fun res!2664435 () Bool)

(assert (=> b!6487505 (=> (not res!2664435) (not e!3931803))))

(assert (=> b!6487505 (= res!2664435 (not lt!2389059))))

(declare-fun b!6487506 () Bool)

(declare-fun e!3931800 () Bool)

(assert (=> b!6487506 (= e!3931800 e!3931798)))

(declare-fun c!1188613 () Bool)

(assert (=> b!6487506 (= c!1188613 ((_ is EmptyLang!16367) lt!2388899))))

(declare-fun b!6487507 () Bool)

(declare-fun res!2664438 () Bool)

(assert (=> b!6487507 (=> (not res!2664438) (not e!3931802))))

(assert (=> b!6487507 (= res!2664438 (isEmpty!37468 (tail!12294 lt!2388903)))))

(declare-fun b!6487508 () Bool)

(declare-fun e!3931801 () Bool)

(assert (=> b!6487508 (= e!3931801 (nullable!6360 lt!2388899))))

(declare-fun b!6487509 () Bool)

(assert (=> b!6487509 (= e!3931800 (= lt!2389059 call!561491))))

(declare-fun b!6487510 () Bool)

(declare-fun res!2664432 () Bool)

(assert (=> b!6487510 (=> (not res!2664432) (not e!3931802))))

(assert (=> b!6487510 (= res!2664432 (not call!561491))))

(declare-fun b!6487511 () Bool)

(assert (=> b!6487511 (= e!3931798 (not lt!2389059))))

(declare-fun b!6487512 () Bool)

(assert (=> b!6487512 (= e!3931797 (not (= (head!13209 lt!2388903) (c!1188383 lt!2388899))))))

(declare-fun d!2035081 () Bool)

(assert (=> d!2035081 e!3931800))

(declare-fun c!1188612 () Bool)

(assert (=> d!2035081 (= c!1188612 ((_ is EmptyExpr!16367) lt!2388899))))

(assert (=> d!2035081 (= lt!2389059 e!3931801)))

(declare-fun c!1188611 () Bool)

(assert (=> d!2035081 (= c!1188611 (isEmpty!37468 lt!2388903))))

(assert (=> d!2035081 (validRegex!8103 lt!2388899)))

(assert (=> d!2035081 (= (matchR!8550 lt!2388899 lt!2388903) lt!2389059)))

(declare-fun b!6487500 () Bool)

(assert (=> b!6487500 (= e!3931801 (matchR!8550 (derivativeStep!5063 lt!2388899 (head!13209 lt!2388903)) (tail!12294 lt!2388903)))))

(assert (= (and d!2035081 c!1188611) b!6487508))

(assert (= (and d!2035081 (not c!1188611)) b!6487500))

(assert (= (and d!2035081 c!1188612) b!6487509))

(assert (= (and d!2035081 (not c!1188612)) b!6487506))

(assert (= (and b!6487506 c!1188613) b!6487511))

(assert (= (and b!6487506 (not c!1188613)) b!6487504))

(assert (= (and b!6487504 (not res!2664437)) b!6487502))

(assert (= (and b!6487502 res!2664434) b!6487510))

(assert (= (and b!6487510 res!2664432) b!6487507))

(assert (= (and b!6487507 res!2664438) b!6487501))

(assert (= (and b!6487502 (not res!2664433)) b!6487505))

(assert (= (and b!6487505 res!2664435) b!6487503))

(assert (= (and b!6487503 (not res!2664439)) b!6487499))

(assert (= (and b!6487499 (not res!2664436)) b!6487512))

(assert (= (or b!6487509 b!6487503 b!6487510) bm!561486))

(declare-fun m!7275968 () Bool)

(assert (=> b!6487499 m!7275968))

(assert (=> b!6487499 m!7275968))

(declare-fun m!7275970 () Bool)

(assert (=> b!6487499 m!7275970))

(declare-fun m!7275972 () Bool)

(assert (=> b!6487508 m!7275972))

(declare-fun m!7275974 () Bool)

(assert (=> d!2035081 m!7275974))

(assert (=> d!2035081 m!7275922))

(assert (=> b!6487507 m!7275968))

(assert (=> b!6487507 m!7275968))

(assert (=> b!6487507 m!7275970))

(declare-fun m!7275976 () Bool)

(assert (=> b!6487512 m!7275976))

(assert (=> b!6487501 m!7275976))

(assert (=> b!6487500 m!7275976))

(assert (=> b!6487500 m!7275976))

(declare-fun m!7275978 () Bool)

(assert (=> b!6487500 m!7275978))

(assert (=> b!6487500 m!7275968))

(assert (=> b!6487500 m!7275978))

(assert (=> b!6487500 m!7275968))

(declare-fun m!7275980 () Bool)

(assert (=> b!6487500 m!7275980))

(assert (=> bm!561486 m!7275974))

(assert (=> b!6486640 d!2035081))

(declare-fun bs!1645850 () Bool)

(declare-fun d!2035083 () Bool)

(assert (= bs!1645850 (and d!2035083 b!6486640)))

(declare-fun lambda!359184 () Int)

(assert (=> bs!1645850 (= lambda!359184 lambda!359126)))

(declare-fun bs!1645851 () Bool)

(assert (= bs!1645851 (and d!2035083 d!2035009)))

(assert (=> bs!1645851 (= lambda!359184 lambda!359178)))

(declare-fun bs!1645852 () Bool)

(assert (= bs!1645852 (and d!2035083 d!2035073)))

(assert (=> bs!1645852 (= lambda!359184 lambda!359181)))

(assert (=> d!2035083 (matchZipper!2379 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 (exprs!6251 lt!2388895) (exprs!6251 lt!2388862))) true) (++!14444 (_1!36649 lt!2388858) lt!2388903))))

(declare-fun lt!2389065 () Unit!158799)

(assert (=> d!2035083 (= lt!2389065 (lemmaConcatPreservesForall!346 (exprs!6251 lt!2388895) (exprs!6251 lt!2388862) lambda!359184))))

(declare-fun lt!2389064 () Unit!158799)

(declare-fun choose!48161 (Context!11502 Context!11502 List!65400 List!65400) Unit!158799)

(assert (=> d!2035083 (= lt!2389064 (choose!48161 lt!2388895 lt!2388862 (_1!36649 lt!2388858) lt!2388903))))

(assert (=> d!2035083 (matchZipper!2379 (store ((as const (Array Context!11502 Bool)) false) lt!2388895 true) (_1!36649 lt!2388858))))

(assert (=> d!2035083 (= (lemmaConcatenateContextMatchesConcatOfStrings!168 lt!2388895 lt!2388862 (_1!36649 lt!2388858) lt!2388903) lt!2389064)))

(declare-fun bs!1645853 () Bool)

(assert (= bs!1645853 d!2035083))

(declare-fun m!7275982 () Bool)

(assert (=> bs!1645853 m!7275982))

(assert (=> bs!1645853 m!7274920))

(declare-fun m!7275984 () Bool)

(assert (=> bs!1645853 m!7275984))

(declare-fun m!7275986 () Bool)

(assert (=> bs!1645853 m!7275986))

(declare-fun m!7275988 () Bool)

(assert (=> bs!1645853 m!7275988))

(assert (=> bs!1645853 m!7275984))

(assert (=> bs!1645853 m!7274920))

(declare-fun m!7275990 () Bool)

(assert (=> bs!1645853 m!7275990))

(assert (=> bs!1645853 m!7275066))

(declare-fun m!7275992 () Bool)

(assert (=> bs!1645853 m!7275992))

(assert (=> bs!1645853 m!7275066))

(assert (=> b!6486640 d!2035083))

(declare-fun d!2035085 () Bool)

(assert (=> d!2035085 (matchR!8550 (Concat!25212 (reg!16696 (regOne!33246 r!7292)) lt!2388899) (++!14444 (_1!36649 lt!2388858) lt!2388903))))

(declare-fun lt!2389066 () Unit!158799)

(assert (=> d!2035085 (= lt!2389066 (choose!48159 (reg!16696 (regOne!33246 r!7292)) lt!2388899 (_1!36649 lt!2388858) lt!2388903))))

(declare-fun e!3931804 () Bool)

(assert (=> d!2035085 e!3931804))

(declare-fun res!2664440 () Bool)

(assert (=> d!2035085 (=> (not res!2664440) (not e!3931804))))

(assert (=> d!2035085 (= res!2664440 (validRegex!8103 (reg!16696 (regOne!33246 r!7292))))))

(assert (=> d!2035085 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!330 (reg!16696 (regOne!33246 r!7292)) lt!2388899 (_1!36649 lt!2388858) lt!2388903) lt!2389066)))

(declare-fun b!6487513 () Bool)

(assert (=> b!6487513 (= e!3931804 (validRegex!8103 lt!2388899))))

(assert (= (and d!2035085 res!2664440) b!6487513))

(assert (=> d!2035085 m!7274920))

(assert (=> d!2035085 m!7274920))

(declare-fun m!7275994 () Bool)

(assert (=> d!2035085 m!7275994))

(declare-fun m!7275996 () Bool)

(assert (=> d!2035085 m!7275996))

(assert (=> d!2035085 m!7275822))

(assert (=> b!6487513 m!7275922))

(assert (=> b!6486640 d!2035085))

(declare-fun d!2035087 () Bool)

(declare-fun c!1188614 () Bool)

(assert (=> d!2035087 (= c!1188614 (isEmpty!37468 lt!2388903))))

(declare-fun e!3931805 () Bool)

(assert (=> d!2035087 (= (matchZipper!2379 lt!2388898 lt!2388903) e!3931805)))

(declare-fun b!6487514 () Bool)

(assert (=> b!6487514 (= e!3931805 (nullableZipper!2124 lt!2388898))))

(declare-fun b!6487515 () Bool)

(assert (=> b!6487515 (= e!3931805 (matchZipper!2379 (derivationStepZipper!2333 lt!2388898 (head!13209 lt!2388903)) (tail!12294 lt!2388903)))))

(assert (= (and d!2035087 c!1188614) b!6487514))

(assert (= (and d!2035087 (not c!1188614)) b!6487515))

(assert (=> d!2035087 m!7275974))

(declare-fun m!7275998 () Bool)

(assert (=> b!6487514 m!7275998))

(assert (=> b!6487515 m!7275976))

(assert (=> b!6487515 m!7275976))

(declare-fun m!7276000 () Bool)

(assert (=> b!6487515 m!7276000))

(assert (=> b!6487515 m!7275968))

(assert (=> b!6487515 m!7276000))

(assert (=> b!6487515 m!7275968))

(declare-fun m!7276002 () Bool)

(assert (=> b!6487515 m!7276002))

(assert (=> b!6486640 d!2035087))

(declare-fun b!6487524 () Bool)

(declare-fun e!3931811 () List!65401)

(assert (=> b!6487524 (= e!3931811 lt!2388871)))

(declare-fun b!6487526 () Bool)

(declare-fun res!2664446 () Bool)

(declare-fun e!3931810 () Bool)

(assert (=> b!6487526 (=> (not res!2664446) (not e!3931810))))

(declare-fun lt!2389069 () List!65401)

(declare-fun size!40426 (List!65401) Int)

(assert (=> b!6487526 (= res!2664446 (= (size!40426 lt!2389069) (+ (size!40426 lt!2388881) (size!40426 lt!2388871))))))

(declare-fun b!6487527 () Bool)

(assert (=> b!6487527 (= e!3931810 (or (not (= lt!2388871 Nil!65277)) (= lt!2389069 lt!2388881)))))

(declare-fun b!6487525 () Bool)

(assert (=> b!6487525 (= e!3931811 (Cons!65277 (h!71725 lt!2388881) (++!14445 (t!379027 lt!2388881) lt!2388871)))))

(declare-fun d!2035089 () Bool)

(assert (=> d!2035089 e!3931810))

(declare-fun res!2664445 () Bool)

(assert (=> d!2035089 (=> (not res!2664445) (not e!3931810))))

(declare-fun content!12440 (List!65401) (InoxSet Regex!16367))

(assert (=> d!2035089 (= res!2664445 (= (content!12440 lt!2389069) ((_ map or) (content!12440 lt!2388881) (content!12440 lt!2388871))))))

(assert (=> d!2035089 (= lt!2389069 e!3931811)))

(declare-fun c!1188617 () Bool)

(assert (=> d!2035089 (= c!1188617 ((_ is Nil!65277) lt!2388881))))

(assert (=> d!2035089 (= (++!14445 lt!2388881 lt!2388871) lt!2389069)))

(assert (= (and d!2035089 c!1188617) b!6487524))

(assert (= (and d!2035089 (not c!1188617)) b!6487525))

(assert (= (and d!2035089 res!2664445) b!6487526))

(assert (= (and b!6487526 res!2664446) b!6487527))

(declare-fun m!7276004 () Bool)

(assert (=> b!6487526 m!7276004))

(declare-fun m!7276006 () Bool)

(assert (=> b!6487526 m!7276006))

(declare-fun m!7276008 () Bool)

(assert (=> b!6487526 m!7276008))

(declare-fun m!7276010 () Bool)

(assert (=> b!6487525 m!7276010))

(declare-fun m!7276012 () Bool)

(assert (=> d!2035089 m!7276012))

(declare-fun m!7276014 () Bool)

(assert (=> d!2035089 m!7276014))

(declare-fun m!7276016 () Bool)

(assert (=> d!2035089 m!7276016))

(assert (=> b!6486640 d!2035089))

(declare-fun bs!1645854 () Bool)

(declare-fun b!6487561 () Bool)

(assert (= bs!1645854 (and b!6487561 b!6486638)))

(declare-fun lambda!359189 () Int)

(assert (=> bs!1645854 (not (= lambda!359189 lambda!359123))))

(declare-fun bs!1645855 () Bool)

(assert (= bs!1645855 (and b!6487561 b!6486655)))

(assert (=> bs!1645855 (not (= lambda!359189 lambda!359118))))

(assert (=> bs!1645854 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 lt!2388855) (reg!16696 (regOne!33246 r!7292))) (= lt!2388855 lt!2388865)) (= lambda!359189 lambda!359124))))

(declare-fun bs!1645856 () Bool)

(assert (= bs!1645856 (and b!6487561 b!6486656)))

(assert (=> bs!1645856 (not (= lambda!359189 lambda!359121))))

(assert (=> bs!1645855 (not (= lambda!359189 lambda!359119))))

(assert (=> bs!1645854 (not (= lambda!359189 lambda!359125))))

(assert (=> bs!1645856 (not (= lambda!359189 lambda!359122))))

(assert (=> b!6487561 true))

(assert (=> b!6487561 true))

(declare-fun bs!1645857 () Bool)

(declare-fun b!6487565 () Bool)

(assert (= bs!1645857 (and b!6487565 b!6486638)))

(declare-fun lambda!359190 () Int)

(assert (=> bs!1645857 (not (= lambda!359190 lambda!359123))))

(declare-fun bs!1645858 () Bool)

(assert (= bs!1645858 (and b!6487565 b!6486655)))

(assert (=> bs!1645858 (not (= lambda!359190 lambda!359118))))

(assert (=> bs!1645857 (not (= lambda!359190 lambda!359124))))

(declare-fun bs!1645859 () Bool)

(assert (= bs!1645859 (and b!6487565 b!6486656)))

(assert (=> bs!1645859 (not (= lambda!359190 lambda!359121))))

(declare-fun bs!1645860 () Bool)

(assert (= bs!1645860 (and b!6487565 b!6487561)))

(assert (=> bs!1645860 (not (= lambda!359190 lambda!359189))))

(assert (=> bs!1645858 (= (and (= (regOne!33246 lt!2388855) (regOne!33246 r!7292)) (= (regTwo!33246 lt!2388855) (regTwo!33246 r!7292))) (= lambda!359190 lambda!359119))))

(assert (=> bs!1645857 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 lt!2388855) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 lt!2388855) lt!2388865)) (= lambda!359190 lambda!359125))))

(assert (=> bs!1645859 (= (and (= (regOne!33246 lt!2388855) lt!2388865) (= (regTwo!33246 lt!2388855) (regTwo!33246 r!7292))) (= lambda!359190 lambda!359122))))

(assert (=> b!6487565 true))

(assert (=> b!6487565 true))

(declare-fun b!6487560 () Bool)

(declare-fun c!1188629 () Bool)

(assert (=> b!6487560 (= c!1188629 ((_ is ElementMatch!16367) lt!2388855))))

(declare-fun e!3931830 () Bool)

(declare-fun e!3931834 () Bool)

(assert (=> b!6487560 (= e!3931830 e!3931834)))

(declare-fun e!3931836 () Bool)

(declare-fun call!561497 () Bool)

(assert (=> b!6487561 (= e!3931836 call!561497)))

(declare-fun b!6487562 () Bool)

(declare-fun e!3931832 () Bool)

(declare-fun call!561496 () Bool)

(assert (=> b!6487562 (= e!3931832 call!561496)))

(declare-fun bm!561491 () Bool)

(assert (=> bm!561491 (= call!561496 (isEmpty!37468 s!2326))))

(declare-fun b!6487563 () Bool)

(declare-fun e!3931833 () Bool)

(assert (=> b!6487563 (= e!3931833 (matchRSpec!3468 (regTwo!33247 lt!2388855) s!2326))))

(declare-fun d!2035091 () Bool)

(declare-fun c!1188627 () Bool)

(assert (=> d!2035091 (= c!1188627 ((_ is EmptyExpr!16367) lt!2388855))))

(assert (=> d!2035091 (= (matchRSpec!3468 lt!2388855 s!2326) e!3931832)))

(declare-fun b!6487564 () Bool)

(declare-fun e!3931831 () Bool)

(declare-fun e!3931835 () Bool)

(assert (=> b!6487564 (= e!3931831 e!3931835)))

(declare-fun c!1188628 () Bool)

(assert (=> b!6487564 (= c!1188628 ((_ is Star!16367) lt!2388855))))

(declare-fun bm!561492 () Bool)

(assert (=> bm!561492 (= call!561497 (Exists!3437 (ite c!1188628 lambda!359189 lambda!359190)))))

(assert (=> b!6487565 (= e!3931835 call!561497)))

(declare-fun b!6487566 () Bool)

(declare-fun c!1188626 () Bool)

(assert (=> b!6487566 (= c!1188626 ((_ is Union!16367) lt!2388855))))

(assert (=> b!6487566 (= e!3931834 e!3931831)))

(declare-fun b!6487567 () Bool)

(assert (=> b!6487567 (= e!3931834 (= s!2326 (Cons!65276 (c!1188383 lt!2388855) Nil!65276)))))

(declare-fun b!6487568 () Bool)

(assert (=> b!6487568 (= e!3931831 e!3931833)))

(declare-fun res!2664465 () Bool)

(assert (=> b!6487568 (= res!2664465 (matchRSpec!3468 (regOne!33247 lt!2388855) s!2326))))

(assert (=> b!6487568 (=> res!2664465 e!3931833)))

(declare-fun b!6487569 () Bool)

(declare-fun res!2664464 () Bool)

(assert (=> b!6487569 (=> res!2664464 e!3931836)))

(assert (=> b!6487569 (= res!2664464 call!561496)))

(assert (=> b!6487569 (= e!3931835 e!3931836)))

(declare-fun b!6487570 () Bool)

(assert (=> b!6487570 (= e!3931832 e!3931830)))

(declare-fun res!2664463 () Bool)

(assert (=> b!6487570 (= res!2664463 (not ((_ is EmptyLang!16367) lt!2388855)))))

(assert (=> b!6487570 (=> (not res!2664463) (not e!3931830))))

(assert (= (and d!2035091 c!1188627) b!6487562))

(assert (= (and d!2035091 (not c!1188627)) b!6487570))

(assert (= (and b!6487570 res!2664463) b!6487560))

(assert (= (and b!6487560 c!1188629) b!6487567))

(assert (= (and b!6487560 (not c!1188629)) b!6487566))

(assert (= (and b!6487566 c!1188626) b!6487568))

(assert (= (and b!6487566 (not c!1188626)) b!6487564))

(assert (= (and b!6487568 (not res!2664465)) b!6487563))

(assert (= (and b!6487564 c!1188628) b!6487569))

(assert (= (and b!6487564 (not c!1188628)) b!6487565))

(assert (= (and b!6487569 (not res!2664464)) b!6487561))

(assert (= (or b!6487561 b!6487565) bm!561492))

(assert (= (or b!6487562 b!6487569) bm!561491))

(assert (=> bm!561491 m!7275886))

(declare-fun m!7276018 () Bool)

(assert (=> b!6487563 m!7276018))

(declare-fun m!7276020 () Bool)

(assert (=> bm!561492 m!7276020))

(declare-fun m!7276022 () Bool)

(assert (=> b!6487568 m!7276022))

(assert (=> b!6486620 d!2035091))

(declare-fun b!6487571 () Bool)

(declare-fun res!2664470 () Bool)

(declare-fun e!3931837 () Bool)

(assert (=> b!6487571 (=> res!2664470 e!3931837)))

(assert (=> b!6487571 (= res!2664470 (not (isEmpty!37468 (tail!12294 s!2326))))))

(declare-fun b!6487573 () Bool)

(declare-fun e!3931842 () Bool)

(assert (=> b!6487573 (= e!3931842 (= (head!13209 s!2326) (c!1188383 lt!2388855)))))

(declare-fun b!6487574 () Bool)

(declare-fun res!2664467 () Bool)

(declare-fun e!3931839 () Bool)

(assert (=> b!6487574 (=> res!2664467 e!3931839)))

(assert (=> b!6487574 (= res!2664467 e!3931842)))

(declare-fun res!2664468 () Bool)

(assert (=> b!6487574 (=> (not res!2664468) (not e!3931842))))

(declare-fun lt!2389070 () Bool)

(assert (=> b!6487574 (= res!2664468 lt!2389070)))

(declare-fun b!6487575 () Bool)

(declare-fun e!3931843 () Bool)

(assert (=> b!6487575 (= e!3931843 e!3931837)))

(declare-fun res!2664473 () Bool)

(assert (=> b!6487575 (=> res!2664473 e!3931837)))

(declare-fun call!561498 () Bool)

(assert (=> b!6487575 (= res!2664473 call!561498)))

(declare-fun b!6487576 () Bool)

(declare-fun res!2664471 () Bool)

(assert (=> b!6487576 (=> res!2664471 e!3931839)))

(assert (=> b!6487576 (= res!2664471 (not ((_ is ElementMatch!16367) lt!2388855)))))

(declare-fun e!3931838 () Bool)

(assert (=> b!6487576 (= e!3931838 e!3931839)))

(declare-fun bm!561493 () Bool)

(assert (=> bm!561493 (= call!561498 (isEmpty!37468 s!2326))))

(declare-fun b!6487577 () Bool)

(assert (=> b!6487577 (= e!3931839 e!3931843)))

(declare-fun res!2664469 () Bool)

(assert (=> b!6487577 (=> (not res!2664469) (not e!3931843))))

(assert (=> b!6487577 (= res!2664469 (not lt!2389070))))

(declare-fun b!6487578 () Bool)

(declare-fun e!3931840 () Bool)

(assert (=> b!6487578 (= e!3931840 e!3931838)))

(declare-fun c!1188632 () Bool)

(assert (=> b!6487578 (= c!1188632 ((_ is EmptyLang!16367) lt!2388855))))

(declare-fun b!6487579 () Bool)

(declare-fun res!2664472 () Bool)

(assert (=> b!6487579 (=> (not res!2664472) (not e!3931842))))

(assert (=> b!6487579 (= res!2664472 (isEmpty!37468 (tail!12294 s!2326)))))

(declare-fun b!6487580 () Bool)

(declare-fun e!3931841 () Bool)

(assert (=> b!6487580 (= e!3931841 (nullable!6360 lt!2388855))))

(declare-fun b!6487581 () Bool)

(assert (=> b!6487581 (= e!3931840 (= lt!2389070 call!561498))))

(declare-fun b!6487582 () Bool)

(declare-fun res!2664466 () Bool)

(assert (=> b!6487582 (=> (not res!2664466) (not e!3931842))))

(assert (=> b!6487582 (= res!2664466 (not call!561498))))

(declare-fun b!6487583 () Bool)

(assert (=> b!6487583 (= e!3931838 (not lt!2389070))))

(declare-fun b!6487584 () Bool)

(assert (=> b!6487584 (= e!3931837 (not (= (head!13209 s!2326) (c!1188383 lt!2388855))))))

(declare-fun d!2035093 () Bool)

(assert (=> d!2035093 e!3931840))

(declare-fun c!1188631 () Bool)

(assert (=> d!2035093 (= c!1188631 ((_ is EmptyExpr!16367) lt!2388855))))

(assert (=> d!2035093 (= lt!2389070 e!3931841)))

(declare-fun c!1188630 () Bool)

(assert (=> d!2035093 (= c!1188630 (isEmpty!37468 s!2326))))

(assert (=> d!2035093 (validRegex!8103 lt!2388855)))

(assert (=> d!2035093 (= (matchR!8550 lt!2388855 s!2326) lt!2389070)))

(declare-fun b!6487572 () Bool)

(assert (=> b!6487572 (= e!3931841 (matchR!8550 (derivativeStep!5063 lt!2388855 (head!13209 s!2326)) (tail!12294 s!2326)))))

(assert (= (and d!2035093 c!1188630) b!6487580))

(assert (= (and d!2035093 (not c!1188630)) b!6487572))

(assert (= (and d!2035093 c!1188631) b!6487581))

(assert (= (and d!2035093 (not c!1188631)) b!6487578))

(assert (= (and b!6487578 c!1188632) b!6487583))

(assert (= (and b!6487578 (not c!1188632)) b!6487576))

(assert (= (and b!6487576 (not res!2664471)) b!6487574))

(assert (= (and b!6487574 res!2664468) b!6487582))

(assert (= (and b!6487582 res!2664466) b!6487579))

(assert (= (and b!6487579 res!2664472) b!6487573))

(assert (= (and b!6487574 (not res!2664467)) b!6487577))

(assert (= (and b!6487577 res!2664469) b!6487575))

(assert (= (and b!6487575 (not res!2664473)) b!6487571))

(assert (= (and b!6487571 (not res!2664470)) b!6487584))

(assert (= (or b!6487581 b!6487575 b!6487582) bm!561493))

(assert (=> b!6487571 m!7275894))

(assert (=> b!6487571 m!7275894))

(declare-fun m!7276024 () Bool)

(assert (=> b!6487571 m!7276024))

(assert (=> b!6487580 m!7275908))

(assert (=> d!2035093 m!7275886))

(assert (=> d!2035093 m!7275912))

(assert (=> b!6487579 m!7275894))

(assert (=> b!6487579 m!7275894))

(assert (=> b!6487579 m!7276024))

(assert (=> b!6487584 m!7275890))

(assert (=> b!6487573 m!7275890))

(assert (=> b!6487572 m!7275890))

(assert (=> b!6487572 m!7275890))

(declare-fun m!7276026 () Bool)

(assert (=> b!6487572 m!7276026))

(assert (=> b!6487572 m!7275894))

(assert (=> b!6487572 m!7276026))

(assert (=> b!6487572 m!7275894))

(declare-fun m!7276028 () Bool)

(assert (=> b!6487572 m!7276028))

(assert (=> bm!561493 m!7275886))

(assert (=> b!6486620 d!2035093))

(declare-fun d!2035095 () Bool)

(assert (=> d!2035095 (= (matchR!8550 lt!2388855 s!2326) (matchRSpec!3468 lt!2388855 s!2326))))

(declare-fun lt!2389073 () Unit!158799)

(declare-fun choose!48162 (Regex!16367 List!65400) Unit!158799)

(assert (=> d!2035095 (= lt!2389073 (choose!48162 lt!2388855 s!2326))))

(assert (=> d!2035095 (validRegex!8103 lt!2388855)))

(assert (=> d!2035095 (= (mainMatchTheorem!3468 lt!2388855 s!2326) lt!2389073)))

(declare-fun bs!1645861 () Bool)

(assert (= bs!1645861 d!2035095))

(assert (=> bs!1645861 m!7274986))

(assert (=> bs!1645861 m!7274984))

(declare-fun m!7276030 () Bool)

(assert (=> bs!1645861 m!7276030))

(assert (=> bs!1645861 m!7275912))

(assert (=> b!6486620 d!2035095))

(declare-fun d!2035097 () Bool)

(assert (=> d!2035097 (= (isEmpty!37470 (t!379027 (exprs!6251 (h!71726 zl!343)))) ((_ is Nil!65277) (t!379027 (exprs!6251 (h!71726 zl!343)))))))

(assert (=> b!6486641 d!2035097))

(declare-fun d!2035099 () Bool)

(assert (=> d!2035099 (= (flatMap!1872 lt!2388869 lambda!359120) (choose!48152 lt!2388869 lambda!359120))))

(declare-fun bs!1645862 () Bool)

(assert (= bs!1645862 d!2035099))

(declare-fun m!7276032 () Bool)

(assert (=> bs!1645862 m!7276032))

(assert (=> b!6486619 d!2035099))

(declare-fun b!6487585 () Bool)

(declare-fun e!3931845 () (InoxSet Context!11502))

(declare-fun e!3931844 () (InoxSet Context!11502))

(assert (=> b!6487585 (= e!3931845 e!3931844)))

(declare-fun c!1188634 () Bool)

(assert (=> b!6487585 (= c!1188634 ((_ is Cons!65277) (exprs!6251 lt!2388885)))))

(declare-fun b!6487586 () Bool)

(declare-fun call!561499 () (InoxSet Context!11502))

(assert (=> b!6487586 (= e!3931845 ((_ map or) call!561499 (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 lt!2388885))) (h!71724 s!2326))))))

(declare-fun b!6487587 () Bool)

(assert (=> b!6487587 (= e!3931844 ((as const (Array Context!11502 Bool)) false))))

(declare-fun d!2035101 () Bool)

(declare-fun c!1188633 () Bool)

(declare-fun e!3931846 () Bool)

(assert (=> d!2035101 (= c!1188633 e!3931846)))

(declare-fun res!2664474 () Bool)

(assert (=> d!2035101 (=> (not res!2664474) (not e!3931846))))

(assert (=> d!2035101 (= res!2664474 ((_ is Cons!65277) (exprs!6251 lt!2388885)))))

(assert (=> d!2035101 (= (derivationStepZipperUp!1541 lt!2388885 (h!71724 s!2326)) e!3931845)))

(declare-fun b!6487588 () Bool)

(assert (=> b!6487588 (= e!3931844 call!561499)))

(declare-fun b!6487589 () Bool)

(assert (=> b!6487589 (= e!3931846 (nullable!6360 (h!71725 (exprs!6251 lt!2388885))))))

(declare-fun bm!561494 () Bool)

(assert (=> bm!561494 (= call!561499 (derivationStepZipperDown!1615 (h!71725 (exprs!6251 lt!2388885)) (Context!11503 (t!379027 (exprs!6251 lt!2388885))) (h!71724 s!2326)))))

(assert (= (and d!2035101 res!2664474) b!6487589))

(assert (= (and d!2035101 c!1188633) b!6487586))

(assert (= (and d!2035101 (not c!1188633)) b!6487585))

(assert (= (and b!6487585 c!1188634) b!6487588))

(assert (= (and b!6487585 (not c!1188634)) b!6487587))

(assert (= (or b!6487586 b!6487588) bm!561494))

(declare-fun m!7276034 () Bool)

(assert (=> b!6487586 m!7276034))

(declare-fun m!7276036 () Bool)

(assert (=> b!6487589 m!7276036))

(declare-fun m!7276038 () Bool)

(assert (=> bm!561494 m!7276038))

(assert (=> b!6486619 d!2035101))

(declare-fun d!2035103 () Bool)

(assert (=> d!2035103 (= (flatMap!1872 lt!2388869 lambda!359120) (dynLambda!25927 lambda!359120 lt!2388885))))

(declare-fun lt!2389074 () Unit!158799)

(assert (=> d!2035103 (= lt!2389074 (choose!48154 lt!2388869 lt!2388885 lambda!359120))))

(assert (=> d!2035103 (= lt!2388869 (store ((as const (Array Context!11502 Bool)) false) lt!2388885 true))))

(assert (=> d!2035103 (= (lemmaFlatMapOnSingletonSet!1398 lt!2388869 lt!2388885 lambda!359120) lt!2389074)))

(declare-fun b_lambda!245623 () Bool)

(assert (=> (not b_lambda!245623) (not d!2035103)))

(declare-fun bs!1645863 () Bool)

(assert (= bs!1645863 d!2035103))

(assert (=> bs!1645863 m!7274906))

(declare-fun m!7276040 () Bool)

(assert (=> bs!1645863 m!7276040))

(declare-fun m!7276042 () Bool)

(assert (=> bs!1645863 m!7276042))

(assert (=> bs!1645863 m!7274910))

(assert (=> b!6486619 d!2035103))

(declare-fun bs!1645864 () Bool)

(declare-fun d!2035105 () Bool)

(assert (= bs!1645864 (and d!2035105 b!6486628)))

(declare-fun lambda!359193 () Int)

(assert (=> bs!1645864 (= lambda!359193 lambda!359120)))

(assert (=> d!2035105 true))

(assert (=> d!2035105 (= (derivationStepZipper!2333 lt!2388869 (h!71724 s!2326)) (flatMap!1872 lt!2388869 lambda!359193))))

(declare-fun bs!1645865 () Bool)

(assert (= bs!1645865 d!2035105))

(declare-fun m!7276044 () Bool)

(assert (=> bs!1645865 m!7276044))

(assert (=> b!6486619 d!2035105))

(declare-fun d!2035107 () Bool)

(declare-fun lt!2389075 () Regex!16367)

(assert (=> d!2035107 (validRegex!8103 lt!2389075)))

(assert (=> d!2035107 (= lt!2389075 (generalisedUnion!2211 (unfocusZipperList!1788 lt!2388863)))))

(assert (=> d!2035107 (= (unfocusZipper!2109 lt!2388863) lt!2389075)))

(declare-fun bs!1645866 () Bool)

(assert (= bs!1645866 d!2035107))

(declare-fun m!7276046 () Bool)

(assert (=> bs!1645866 m!7276046))

(declare-fun m!7276048 () Bool)

(assert (=> bs!1645866 m!7276048))

(assert (=> bs!1645866 m!7276048))

(declare-fun m!7276050 () Bool)

(assert (=> bs!1645866 m!7276050))

(assert (=> b!6486617 d!2035107))

(declare-fun bs!1645867 () Bool)

(declare-fun d!2035109 () Bool)

(assert (= bs!1645867 (and d!2035109 b!6486640)))

(declare-fun lambda!359194 () Int)

(assert (=> bs!1645867 (= lambda!359194 lambda!359126)))

(declare-fun bs!1645868 () Bool)

(assert (= bs!1645868 (and d!2035109 d!2035009)))

(assert (=> bs!1645868 (= lambda!359194 lambda!359178)))

(declare-fun bs!1645869 () Bool)

(assert (= bs!1645869 (and d!2035109 d!2035073)))

(assert (=> bs!1645869 (= lambda!359194 lambda!359181)))

(declare-fun bs!1645870 () Bool)

(assert (= bs!1645870 (and d!2035109 d!2035083)))

(assert (=> bs!1645870 (= lambda!359194 lambda!359184)))

(assert (=> d!2035109 (= (inv!84164 setElem!44193) (forall!15550 (exprs!6251 setElem!44193) lambda!359194))))

(declare-fun bs!1645871 () Bool)

(assert (= bs!1645871 d!2035109))

(declare-fun m!7276052 () Bool)

(assert (=> bs!1645871 m!7276052))

(assert (=> setNonEmpty!44193 d!2035109))

(declare-fun bs!1645872 () Bool)

(declare-fun b!6487593 () Bool)

(assert (= bs!1645872 (and b!6487593 b!6486638)))

(declare-fun lambda!359195 () Int)

(assert (=> bs!1645872 (not (= lambda!359195 lambda!359123))))

(assert (=> bs!1645872 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 r!7292) (reg!16696 (regOne!33246 r!7292))) (= r!7292 lt!2388865)) (= lambda!359195 lambda!359124))))

(declare-fun bs!1645873 () Bool)

(assert (= bs!1645873 (and b!6487593 b!6486656)))

(assert (=> bs!1645873 (not (= lambda!359195 lambda!359121))))

(declare-fun bs!1645874 () Bool)

(assert (= bs!1645874 (and b!6487593 b!6487561)))

(assert (=> bs!1645874 (= (and (= (reg!16696 r!7292) (reg!16696 lt!2388855)) (= r!7292 lt!2388855)) (= lambda!359195 lambda!359189))))

(declare-fun bs!1645875 () Bool)

(assert (= bs!1645875 (and b!6487593 b!6486655)))

(assert (=> bs!1645875 (not (= lambda!359195 lambda!359119))))

(assert (=> bs!1645872 (not (= lambda!359195 lambda!359125))))

(assert (=> bs!1645873 (not (= lambda!359195 lambda!359122))))

(declare-fun bs!1645876 () Bool)

(assert (= bs!1645876 (and b!6487593 b!6487565)))

(assert (=> bs!1645876 (not (= lambda!359195 lambda!359190))))

(assert (=> bs!1645875 (not (= lambda!359195 lambda!359118))))

(assert (=> b!6487593 true))

(assert (=> b!6487593 true))

(declare-fun bs!1645877 () Bool)

(declare-fun b!6487597 () Bool)

(assert (= bs!1645877 (and b!6487597 b!6486638)))

(declare-fun lambda!359196 () Int)

(assert (=> bs!1645877 (not (= lambda!359196 lambda!359123))))

(declare-fun bs!1645878 () Bool)

(assert (= bs!1645878 (and b!6487597 b!6487593)))

(assert (=> bs!1645878 (not (= lambda!359196 lambda!359195))))

(assert (=> bs!1645877 (not (= lambda!359196 lambda!359124))))

(declare-fun bs!1645879 () Bool)

(assert (= bs!1645879 (and b!6487597 b!6486656)))

(assert (=> bs!1645879 (not (= lambda!359196 lambda!359121))))

(declare-fun bs!1645880 () Bool)

(assert (= bs!1645880 (and b!6487597 b!6487561)))

(assert (=> bs!1645880 (not (= lambda!359196 lambda!359189))))

(declare-fun bs!1645881 () Bool)

(assert (= bs!1645881 (and b!6487597 b!6486655)))

(assert (=> bs!1645881 (= lambda!359196 lambda!359119)))

(assert (=> bs!1645877 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359196 lambda!359125))))

(assert (=> bs!1645879 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359196 lambda!359122))))

(declare-fun bs!1645882 () Bool)

(assert (= bs!1645882 (and b!6487597 b!6487565)))

(assert (=> bs!1645882 (= (and (= (regOne!33246 r!7292) (regOne!33246 lt!2388855)) (= (regTwo!33246 r!7292) (regTwo!33246 lt!2388855))) (= lambda!359196 lambda!359190))))

(assert (=> bs!1645881 (not (= lambda!359196 lambda!359118))))

(assert (=> b!6487597 true))

(assert (=> b!6487597 true))

(declare-fun b!6487592 () Bool)

(declare-fun c!1188640 () Bool)

(assert (=> b!6487592 (= c!1188640 ((_ is ElementMatch!16367) r!7292))))

(declare-fun e!3931847 () Bool)

(declare-fun e!3931851 () Bool)

(assert (=> b!6487592 (= e!3931847 e!3931851)))

(declare-fun e!3931853 () Bool)

(declare-fun call!561501 () Bool)

(assert (=> b!6487593 (= e!3931853 call!561501)))

(declare-fun b!6487594 () Bool)

(declare-fun e!3931849 () Bool)

(declare-fun call!561500 () Bool)

(assert (=> b!6487594 (= e!3931849 call!561500)))

(declare-fun bm!561495 () Bool)

(assert (=> bm!561495 (= call!561500 (isEmpty!37468 s!2326))))

(declare-fun b!6487595 () Bool)

(declare-fun e!3931850 () Bool)

(assert (=> b!6487595 (= e!3931850 (matchRSpec!3468 (regTwo!33247 r!7292) s!2326))))

(declare-fun d!2035111 () Bool)

(declare-fun c!1188638 () Bool)

(assert (=> d!2035111 (= c!1188638 ((_ is EmptyExpr!16367) r!7292))))

(assert (=> d!2035111 (= (matchRSpec!3468 r!7292 s!2326) e!3931849)))

(declare-fun b!6487596 () Bool)

(declare-fun e!3931848 () Bool)

(declare-fun e!3931852 () Bool)

(assert (=> b!6487596 (= e!3931848 e!3931852)))

(declare-fun c!1188639 () Bool)

(assert (=> b!6487596 (= c!1188639 ((_ is Star!16367) r!7292))))

(declare-fun bm!561496 () Bool)

(assert (=> bm!561496 (= call!561501 (Exists!3437 (ite c!1188639 lambda!359195 lambda!359196)))))

(assert (=> b!6487597 (= e!3931852 call!561501)))

(declare-fun b!6487598 () Bool)

(declare-fun c!1188637 () Bool)

(assert (=> b!6487598 (= c!1188637 ((_ is Union!16367) r!7292))))

(assert (=> b!6487598 (= e!3931851 e!3931848)))

(declare-fun b!6487599 () Bool)

(assert (=> b!6487599 (= e!3931851 (= s!2326 (Cons!65276 (c!1188383 r!7292) Nil!65276)))))

(declare-fun b!6487600 () Bool)

(assert (=> b!6487600 (= e!3931848 e!3931850)))

(declare-fun res!2664477 () Bool)

(assert (=> b!6487600 (= res!2664477 (matchRSpec!3468 (regOne!33247 r!7292) s!2326))))

(assert (=> b!6487600 (=> res!2664477 e!3931850)))

(declare-fun b!6487601 () Bool)

(declare-fun res!2664476 () Bool)

(assert (=> b!6487601 (=> res!2664476 e!3931853)))

(assert (=> b!6487601 (= res!2664476 call!561500)))

(assert (=> b!6487601 (= e!3931852 e!3931853)))

(declare-fun b!6487602 () Bool)

(assert (=> b!6487602 (= e!3931849 e!3931847)))

(declare-fun res!2664475 () Bool)

(assert (=> b!6487602 (= res!2664475 (not ((_ is EmptyLang!16367) r!7292)))))

(assert (=> b!6487602 (=> (not res!2664475) (not e!3931847))))

(assert (= (and d!2035111 c!1188638) b!6487594))

(assert (= (and d!2035111 (not c!1188638)) b!6487602))

(assert (= (and b!6487602 res!2664475) b!6487592))

(assert (= (and b!6487592 c!1188640) b!6487599))

(assert (= (and b!6487592 (not c!1188640)) b!6487598))

(assert (= (and b!6487598 c!1188637) b!6487600))

(assert (= (and b!6487598 (not c!1188637)) b!6487596))

(assert (= (and b!6487600 (not res!2664477)) b!6487595))

(assert (= (and b!6487596 c!1188639) b!6487601))

(assert (= (and b!6487596 (not c!1188639)) b!6487597))

(assert (= (and b!6487601 (not res!2664476)) b!6487593))

(assert (= (or b!6487593 b!6487597) bm!561496))

(assert (= (or b!6487594 b!6487601) bm!561495))

(assert (=> bm!561495 m!7275886))

(declare-fun m!7276054 () Bool)

(assert (=> b!6487595 m!7276054))

(declare-fun m!7276056 () Bool)

(assert (=> bm!561496 m!7276056))

(declare-fun m!7276058 () Bool)

(assert (=> b!6487600 m!7276058))

(assert (=> b!6486618 d!2035111))

(declare-fun b!6487603 () Bool)

(declare-fun res!2664482 () Bool)

(declare-fun e!3931854 () Bool)

(assert (=> b!6487603 (=> res!2664482 e!3931854)))

(assert (=> b!6487603 (= res!2664482 (not (isEmpty!37468 (tail!12294 s!2326))))))

(declare-fun b!6487605 () Bool)

(declare-fun e!3931859 () Bool)

(assert (=> b!6487605 (= e!3931859 (= (head!13209 s!2326) (c!1188383 r!7292)))))

(declare-fun b!6487606 () Bool)

(declare-fun res!2664479 () Bool)

(declare-fun e!3931856 () Bool)

(assert (=> b!6487606 (=> res!2664479 e!3931856)))

(assert (=> b!6487606 (= res!2664479 e!3931859)))

(declare-fun res!2664480 () Bool)

(assert (=> b!6487606 (=> (not res!2664480) (not e!3931859))))

(declare-fun lt!2389076 () Bool)

(assert (=> b!6487606 (= res!2664480 lt!2389076)))

(declare-fun b!6487607 () Bool)

(declare-fun e!3931860 () Bool)

(assert (=> b!6487607 (= e!3931860 e!3931854)))

(declare-fun res!2664485 () Bool)

(assert (=> b!6487607 (=> res!2664485 e!3931854)))

(declare-fun call!561502 () Bool)

(assert (=> b!6487607 (= res!2664485 call!561502)))

(declare-fun b!6487608 () Bool)

(declare-fun res!2664483 () Bool)

(assert (=> b!6487608 (=> res!2664483 e!3931856)))

(assert (=> b!6487608 (= res!2664483 (not ((_ is ElementMatch!16367) r!7292)))))

(declare-fun e!3931855 () Bool)

(assert (=> b!6487608 (= e!3931855 e!3931856)))

(declare-fun bm!561497 () Bool)

(assert (=> bm!561497 (= call!561502 (isEmpty!37468 s!2326))))

(declare-fun b!6487609 () Bool)

(assert (=> b!6487609 (= e!3931856 e!3931860)))

(declare-fun res!2664481 () Bool)

(assert (=> b!6487609 (=> (not res!2664481) (not e!3931860))))

(assert (=> b!6487609 (= res!2664481 (not lt!2389076))))

(declare-fun b!6487610 () Bool)

(declare-fun e!3931857 () Bool)

(assert (=> b!6487610 (= e!3931857 e!3931855)))

(declare-fun c!1188643 () Bool)

(assert (=> b!6487610 (= c!1188643 ((_ is EmptyLang!16367) r!7292))))

(declare-fun b!6487611 () Bool)

(declare-fun res!2664484 () Bool)

(assert (=> b!6487611 (=> (not res!2664484) (not e!3931859))))

(assert (=> b!6487611 (= res!2664484 (isEmpty!37468 (tail!12294 s!2326)))))

(declare-fun b!6487612 () Bool)

(declare-fun e!3931858 () Bool)

(assert (=> b!6487612 (= e!3931858 (nullable!6360 r!7292))))

(declare-fun b!6487613 () Bool)

(assert (=> b!6487613 (= e!3931857 (= lt!2389076 call!561502))))

(declare-fun b!6487614 () Bool)

(declare-fun res!2664478 () Bool)

(assert (=> b!6487614 (=> (not res!2664478) (not e!3931859))))

(assert (=> b!6487614 (= res!2664478 (not call!561502))))

(declare-fun b!6487615 () Bool)

(assert (=> b!6487615 (= e!3931855 (not lt!2389076))))

(declare-fun b!6487616 () Bool)

(assert (=> b!6487616 (= e!3931854 (not (= (head!13209 s!2326) (c!1188383 r!7292))))))

(declare-fun d!2035113 () Bool)

(assert (=> d!2035113 e!3931857))

(declare-fun c!1188642 () Bool)

(assert (=> d!2035113 (= c!1188642 ((_ is EmptyExpr!16367) r!7292))))

(assert (=> d!2035113 (= lt!2389076 e!3931858)))

(declare-fun c!1188641 () Bool)

(assert (=> d!2035113 (= c!1188641 (isEmpty!37468 s!2326))))

(assert (=> d!2035113 (validRegex!8103 r!7292)))

(assert (=> d!2035113 (= (matchR!8550 r!7292 s!2326) lt!2389076)))

(declare-fun b!6487604 () Bool)

(assert (=> b!6487604 (= e!3931858 (matchR!8550 (derivativeStep!5063 r!7292 (head!13209 s!2326)) (tail!12294 s!2326)))))

(assert (= (and d!2035113 c!1188641) b!6487612))

(assert (= (and d!2035113 (not c!1188641)) b!6487604))

(assert (= (and d!2035113 c!1188642) b!6487613))

(assert (= (and d!2035113 (not c!1188642)) b!6487610))

(assert (= (and b!6487610 c!1188643) b!6487615))

(assert (= (and b!6487610 (not c!1188643)) b!6487608))

(assert (= (and b!6487608 (not res!2664483)) b!6487606))

(assert (= (and b!6487606 res!2664480) b!6487614))

(assert (= (and b!6487614 res!2664478) b!6487611))

(assert (= (and b!6487611 res!2664484) b!6487605))

(assert (= (and b!6487606 (not res!2664479)) b!6487609))

(assert (= (and b!6487609 res!2664481) b!6487607))

(assert (= (and b!6487607 (not res!2664485)) b!6487603))

(assert (= (and b!6487603 (not res!2664482)) b!6487616))

(assert (= (or b!6487613 b!6487607 b!6487614) bm!561497))

(assert (=> b!6487603 m!7275894))

(assert (=> b!6487603 m!7275894))

(assert (=> b!6487603 m!7276024))

(declare-fun m!7276060 () Bool)

(assert (=> b!6487612 m!7276060))

(assert (=> d!2035113 m!7275886))

(assert (=> d!2035113 m!7275010))

(assert (=> b!6487611 m!7275894))

(assert (=> b!6487611 m!7275894))

(assert (=> b!6487611 m!7276024))

(assert (=> b!6487616 m!7275890))

(assert (=> b!6487605 m!7275890))

(assert (=> b!6487604 m!7275890))

(assert (=> b!6487604 m!7275890))

(declare-fun m!7276062 () Bool)

(assert (=> b!6487604 m!7276062))

(assert (=> b!6487604 m!7275894))

(assert (=> b!6487604 m!7276062))

(assert (=> b!6487604 m!7275894))

(declare-fun m!7276064 () Bool)

(assert (=> b!6487604 m!7276064))

(assert (=> bm!561497 m!7275886))

(assert (=> b!6486618 d!2035113))

(declare-fun d!2035115 () Bool)

(assert (=> d!2035115 (= (matchR!8550 r!7292 s!2326) (matchRSpec!3468 r!7292 s!2326))))

(declare-fun lt!2389077 () Unit!158799)

(assert (=> d!2035115 (= lt!2389077 (choose!48162 r!7292 s!2326))))

(assert (=> d!2035115 (validRegex!8103 r!7292)))

(assert (=> d!2035115 (= (mainMatchTheorem!3468 r!7292 s!2326) lt!2389077)))

(declare-fun bs!1645883 () Bool)

(assert (= bs!1645883 d!2035115))

(assert (=> bs!1645883 m!7275002))

(assert (=> bs!1645883 m!7275000))

(declare-fun m!7276066 () Bool)

(assert (=> bs!1645883 m!7276066))

(assert (=> bs!1645883 m!7275010))

(assert (=> b!6486618 d!2035115))

(declare-fun d!2035117 () Bool)

(declare-fun lt!2389078 () Regex!16367)

(assert (=> d!2035117 (validRegex!8103 lt!2389078)))

(assert (=> d!2035117 (= lt!2389078 (generalisedUnion!2211 (unfocusZipperList!1788 (Cons!65278 lt!2388885 Nil!65278))))))

(assert (=> d!2035117 (= (unfocusZipper!2109 (Cons!65278 lt!2388885 Nil!65278)) lt!2389078)))

(declare-fun bs!1645884 () Bool)

(assert (= bs!1645884 d!2035117))

(declare-fun m!7276068 () Bool)

(assert (=> bs!1645884 m!7276068))

(declare-fun m!7276070 () Bool)

(assert (=> bs!1645884 m!7276070))

(assert (=> bs!1645884 m!7276070))

(declare-fun m!7276072 () Bool)

(assert (=> bs!1645884 m!7276072))

(assert (=> b!6486616 d!2035117))

(declare-fun d!2035119 () Bool)

(declare-fun isEmpty!37472 (Option!16258) Bool)

(assert (=> d!2035119 (= (isDefined!12961 lt!2388861) (not (isEmpty!37472 lt!2388861)))))

(declare-fun bs!1645885 () Bool)

(assert (= bs!1645885 d!2035119))

(declare-fun m!7276074 () Bool)

(assert (=> bs!1645885 m!7276074))

(assert (=> b!6486638 d!2035119))

(declare-fun d!2035121 () Bool)

(declare-fun choose!48164 (Int) Bool)

(assert (=> d!2035121 (= (Exists!3437 lambda!359123) (choose!48164 lambda!359123))))

(declare-fun bs!1645886 () Bool)

(assert (= bs!1645886 d!2035121))

(declare-fun m!7276076 () Bool)

(assert (=> bs!1645886 m!7276076))

(assert (=> b!6486638 d!2035121))

(declare-fun d!2035123 () Bool)

(assert (=> d!2035123 (= (Exists!3437 lambda!359124) (choose!48164 lambda!359124))))

(declare-fun bs!1645887 () Bool)

(assert (= bs!1645887 d!2035123))

(declare-fun m!7276078 () Bool)

(assert (=> bs!1645887 m!7276078))

(assert (=> b!6486638 d!2035123))

(declare-fun d!2035125 () Bool)

(assert (=> d!2035125 (= (matchR!8550 lt!2388865 (_1!36649 lt!2388900)) (matchRSpec!3468 lt!2388865 (_1!36649 lt!2388900)))))

(declare-fun lt!2389079 () Unit!158799)

(assert (=> d!2035125 (= lt!2389079 (choose!48162 lt!2388865 (_1!36649 lt!2388900)))))

(assert (=> d!2035125 (validRegex!8103 lt!2388865)))

(assert (=> d!2035125 (= (mainMatchTheorem!3468 lt!2388865 (_1!36649 lt!2388900)) lt!2389079)))

(declare-fun bs!1645888 () Bool)

(assert (= bs!1645888 d!2035125))

(assert (=> bs!1645888 m!7275008))

(assert (=> bs!1645888 m!7275034))

(declare-fun m!7276080 () Bool)

(assert (=> bs!1645888 m!7276080))

(assert (=> bs!1645888 m!7275850))

(assert (=> b!6486638 d!2035125))

(declare-fun d!2035127 () Bool)

(assert (=> d!2035127 (= (Exists!3437 lambda!359125) (choose!48164 lambda!359125))))

(declare-fun bs!1645889 () Bool)

(assert (= bs!1645889 d!2035127))

(declare-fun m!7276082 () Bool)

(assert (=> bs!1645889 m!7276082))

(assert (=> b!6486638 d!2035127))

(declare-fun bs!1645890 () Bool)

(declare-fun d!2035129 () Bool)

(assert (= bs!1645890 (and d!2035129 b!6486638)))

(declare-fun lambda!359201 () Int)

(assert (=> bs!1645890 (= lambda!359201 lambda!359123)))

(declare-fun bs!1645891 () Bool)

(assert (= bs!1645891 (and d!2035129 b!6487593)))

(assert (=> bs!1645891 (not (= lambda!359201 lambda!359195))))

(assert (=> bs!1645890 (not (= lambda!359201 lambda!359124))))

(declare-fun bs!1645892 () Bool)

(assert (= bs!1645892 (and d!2035129 b!6486656)))

(assert (=> bs!1645892 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359201 lambda!359121))))

(declare-fun bs!1645893 () Bool)

(assert (= bs!1645893 (and d!2035129 b!6487561)))

(assert (=> bs!1645893 (not (= lambda!359201 lambda!359189))))

(declare-fun bs!1645894 () Bool)

(assert (= bs!1645894 (and d!2035129 b!6486655)))

(assert (=> bs!1645894 (not (= lambda!359201 lambda!359119))))

(assert (=> bs!1645890 (not (= lambda!359201 lambda!359125))))

(assert (=> bs!1645892 (not (= lambda!359201 lambda!359122))))

(declare-fun bs!1645895 () Bool)

(assert (= bs!1645895 (and d!2035129 b!6487597)))

(assert (=> bs!1645895 (not (= lambda!359201 lambda!359196))))

(declare-fun bs!1645896 () Bool)

(assert (= bs!1645896 (and d!2035129 b!6487565)))

(assert (=> bs!1645896 (not (= lambda!359201 lambda!359190))))

(assert (=> bs!1645894 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359201 lambda!359118))))

(assert (=> d!2035129 true))

(assert (=> d!2035129 true))

(assert (=> d!2035129 true))

(declare-fun lambda!359202 () Int)

(assert (=> bs!1645890 (not (= lambda!359202 lambda!359123))))

(assert (=> bs!1645891 (not (= lambda!359202 lambda!359195))))

(assert (=> bs!1645890 (not (= lambda!359202 lambda!359124))))

(assert (=> bs!1645892 (not (= lambda!359202 lambda!359121))))

(assert (=> bs!1645893 (not (= lambda!359202 lambda!359189))))

(assert (=> bs!1645894 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359202 lambda!359119))))

(assert (=> bs!1645890 (= lambda!359202 lambda!359125)))

(declare-fun bs!1645897 () Bool)

(assert (= bs!1645897 d!2035129))

(assert (=> bs!1645897 (not (= lambda!359202 lambda!359201))))

(assert (=> bs!1645892 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359202 lambda!359122))))

(assert (=> bs!1645895 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359202 lambda!359196))))

(assert (=> bs!1645896 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 lt!2388855)) (= lt!2388865 (regTwo!33246 lt!2388855))) (= lambda!359202 lambda!359190))))

(assert (=> bs!1645894 (not (= lambda!359202 lambda!359118))))

(assert (=> d!2035129 true))

(assert (=> d!2035129 true))

(assert (=> d!2035129 true))

(assert (=> d!2035129 (= (Exists!3437 lambda!359201) (Exists!3437 lambda!359202))))

(declare-fun lt!2389082 () Unit!158799)

(declare-fun choose!48165 (Regex!16367 Regex!16367 List!65400) Unit!158799)

(assert (=> d!2035129 (= lt!2389082 (choose!48165 (reg!16696 (regOne!33246 r!7292)) lt!2388865 (_1!36649 lt!2388900)))))

(assert (=> d!2035129 (validRegex!8103 (reg!16696 (regOne!33246 r!7292)))))

(assert (=> d!2035129 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1974 (reg!16696 (regOne!33246 r!7292)) lt!2388865 (_1!36649 lt!2388900)) lt!2389082)))

(declare-fun m!7276084 () Bool)

(assert (=> bs!1645897 m!7276084))

(declare-fun m!7276086 () Bool)

(assert (=> bs!1645897 m!7276086))

(declare-fun m!7276088 () Bool)

(assert (=> bs!1645897 m!7276088))

(assert (=> bs!1645897 m!7275822))

(assert (=> b!6486638 d!2035129))

(declare-fun bs!1645898 () Bool)

(declare-fun b!6487626 () Bool)

(assert (= bs!1645898 (and b!6487626 b!6487593)))

(declare-fun lambda!359203 () Int)

(assert (=> bs!1645898 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 lt!2388865) (reg!16696 r!7292)) (= lt!2388865 r!7292)) (= lambda!359203 lambda!359195))))

(declare-fun bs!1645899 () Bool)

(assert (= bs!1645899 (and b!6487626 b!6486638)))

(assert (=> bs!1645899 (= (= (reg!16696 lt!2388865) (reg!16696 (regOne!33246 r!7292))) (= lambda!359203 lambda!359124))))

(declare-fun bs!1645900 () Bool)

(assert (= bs!1645900 (and b!6487626 b!6486656)))

(assert (=> bs!1645900 (not (= lambda!359203 lambda!359121))))

(declare-fun bs!1645901 () Bool)

(assert (= bs!1645901 (and b!6487626 b!6487561)))

(assert (=> bs!1645901 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 lt!2388865) (reg!16696 lt!2388855)) (= lt!2388865 lt!2388855)) (= lambda!359203 lambda!359189))))

(declare-fun bs!1645902 () Bool)

(assert (= bs!1645902 (and b!6487626 b!6486655)))

(assert (=> bs!1645902 (not (= lambda!359203 lambda!359119))))

(assert (=> bs!1645899 (not (= lambda!359203 lambda!359125))))

(declare-fun bs!1645903 () Bool)

(assert (= bs!1645903 (and b!6487626 d!2035129)))

(assert (=> bs!1645903 (not (= lambda!359203 lambda!359201))))

(assert (=> bs!1645900 (not (= lambda!359203 lambda!359122))))

(declare-fun bs!1645904 () Bool)

(assert (= bs!1645904 (and b!6487626 b!6487597)))

(assert (=> bs!1645904 (not (= lambda!359203 lambda!359196))))

(assert (=> bs!1645903 (not (= lambda!359203 lambda!359202))))

(assert (=> bs!1645899 (not (= lambda!359203 lambda!359123))))

(declare-fun bs!1645905 () Bool)

(assert (= bs!1645905 (and b!6487626 b!6487565)))

(assert (=> bs!1645905 (not (= lambda!359203 lambda!359190))))

(assert (=> bs!1645902 (not (= lambda!359203 lambda!359118))))

(assert (=> b!6487626 true))

(assert (=> b!6487626 true))

(declare-fun bs!1645906 () Bool)

(declare-fun b!6487630 () Bool)

(assert (= bs!1645906 (and b!6487630 b!6487593)))

(declare-fun lambda!359204 () Int)

(assert (=> bs!1645906 (not (= lambda!359204 lambda!359195))))

(declare-fun bs!1645907 () Bool)

(assert (= bs!1645907 (and b!6487630 b!6486638)))

(assert (=> bs!1645907 (not (= lambda!359204 lambda!359124))))

(declare-fun bs!1645908 () Bool)

(assert (= bs!1645908 (and b!6487630 b!6486656)))

(assert (=> bs!1645908 (not (= lambda!359204 lambda!359121))))

(declare-fun bs!1645909 () Bool)

(assert (= bs!1645909 (and b!6487630 b!6487561)))

(assert (=> bs!1645909 (not (= lambda!359204 lambda!359189))))

(declare-fun bs!1645910 () Bool)

(assert (= bs!1645910 (and b!6487630 b!6486655)))

(assert (=> bs!1645910 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 lt!2388865) (regOne!33246 r!7292)) (= (regTwo!33246 lt!2388865) (regTwo!33246 r!7292))) (= lambda!359204 lambda!359119))))

(assert (=> bs!1645907 (= (and (= (regOne!33246 lt!2388865) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 lt!2388865) lt!2388865)) (= lambda!359204 lambda!359125))))

(declare-fun bs!1645911 () Bool)

(assert (= bs!1645911 (and b!6487630 d!2035129)))

(assert (=> bs!1645911 (not (= lambda!359204 lambda!359201))))

(declare-fun bs!1645912 () Bool)

(assert (= bs!1645912 (and b!6487630 b!6487626)))

(assert (=> bs!1645912 (not (= lambda!359204 lambda!359203))))

(assert (=> bs!1645908 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 lt!2388865) lt!2388865) (= (regTwo!33246 lt!2388865) (regTwo!33246 r!7292))) (= lambda!359204 lambda!359122))))

(declare-fun bs!1645913 () Bool)

(assert (= bs!1645913 (and b!6487630 b!6487597)))

(assert (=> bs!1645913 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 lt!2388865) (regOne!33246 r!7292)) (= (regTwo!33246 lt!2388865) (regTwo!33246 r!7292))) (= lambda!359204 lambda!359196))))

(assert (=> bs!1645911 (= (and (= (regOne!33246 lt!2388865) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 lt!2388865) lt!2388865)) (= lambda!359204 lambda!359202))))

(assert (=> bs!1645907 (not (= lambda!359204 lambda!359123))))

(declare-fun bs!1645914 () Bool)

(assert (= bs!1645914 (and b!6487630 b!6487565)))

(assert (=> bs!1645914 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 lt!2388865) (regOne!33246 lt!2388855)) (= (regTwo!33246 lt!2388865) (regTwo!33246 lt!2388855))) (= lambda!359204 lambda!359190))))

(assert (=> bs!1645910 (not (= lambda!359204 lambda!359118))))

(assert (=> b!6487630 true))

(assert (=> b!6487630 true))

(declare-fun b!6487625 () Bool)

(declare-fun c!1188647 () Bool)

(assert (=> b!6487625 (= c!1188647 ((_ is ElementMatch!16367) lt!2388865))))

(declare-fun e!3931865 () Bool)

(declare-fun e!3931869 () Bool)

(assert (=> b!6487625 (= e!3931865 e!3931869)))

(declare-fun e!3931871 () Bool)

(declare-fun call!561504 () Bool)

(assert (=> b!6487626 (= e!3931871 call!561504)))

(declare-fun b!6487627 () Bool)

(declare-fun e!3931867 () Bool)

(declare-fun call!561503 () Bool)

(assert (=> b!6487627 (= e!3931867 call!561503)))

(declare-fun bm!561498 () Bool)

(assert (=> bm!561498 (= call!561503 (isEmpty!37468 (_1!36649 lt!2388900)))))

(declare-fun b!6487628 () Bool)

(declare-fun e!3931868 () Bool)

(assert (=> b!6487628 (= e!3931868 (matchRSpec!3468 (regTwo!33247 lt!2388865) (_1!36649 lt!2388900)))))

(declare-fun d!2035131 () Bool)

(declare-fun c!1188645 () Bool)

(assert (=> d!2035131 (= c!1188645 ((_ is EmptyExpr!16367) lt!2388865))))

(assert (=> d!2035131 (= (matchRSpec!3468 lt!2388865 (_1!36649 lt!2388900)) e!3931867)))

(declare-fun b!6487629 () Bool)

(declare-fun e!3931866 () Bool)

(declare-fun e!3931870 () Bool)

(assert (=> b!6487629 (= e!3931866 e!3931870)))

(declare-fun c!1188646 () Bool)

(assert (=> b!6487629 (= c!1188646 ((_ is Star!16367) lt!2388865))))

(declare-fun bm!561499 () Bool)

(assert (=> bm!561499 (= call!561504 (Exists!3437 (ite c!1188646 lambda!359203 lambda!359204)))))

(assert (=> b!6487630 (= e!3931870 call!561504)))

(declare-fun b!6487631 () Bool)

(declare-fun c!1188644 () Bool)

(assert (=> b!6487631 (= c!1188644 ((_ is Union!16367) lt!2388865))))

(assert (=> b!6487631 (= e!3931869 e!3931866)))

(declare-fun b!6487632 () Bool)

(assert (=> b!6487632 (= e!3931869 (= (_1!36649 lt!2388900) (Cons!65276 (c!1188383 lt!2388865) Nil!65276)))))

(declare-fun b!6487633 () Bool)

(assert (=> b!6487633 (= e!3931866 e!3931868)))

(declare-fun res!2664496 () Bool)

(assert (=> b!6487633 (= res!2664496 (matchRSpec!3468 (regOne!33247 lt!2388865) (_1!36649 lt!2388900)))))

(assert (=> b!6487633 (=> res!2664496 e!3931868)))

(declare-fun b!6487634 () Bool)

(declare-fun res!2664495 () Bool)

(assert (=> b!6487634 (=> res!2664495 e!3931871)))

(assert (=> b!6487634 (= res!2664495 call!561503)))

(assert (=> b!6487634 (= e!3931870 e!3931871)))

(declare-fun b!6487635 () Bool)

(assert (=> b!6487635 (= e!3931867 e!3931865)))

(declare-fun res!2664494 () Bool)

(assert (=> b!6487635 (= res!2664494 (not ((_ is EmptyLang!16367) lt!2388865)))))

(assert (=> b!6487635 (=> (not res!2664494) (not e!3931865))))

(assert (= (and d!2035131 c!1188645) b!6487627))

(assert (= (and d!2035131 (not c!1188645)) b!6487635))

(assert (= (and b!6487635 res!2664494) b!6487625))

(assert (= (and b!6487625 c!1188647) b!6487632))

(assert (= (and b!6487625 (not c!1188647)) b!6487631))

(assert (= (and b!6487631 c!1188644) b!6487633))

(assert (= (and b!6487631 (not c!1188644)) b!6487629))

(assert (= (and b!6487633 (not res!2664496)) b!6487628))

(assert (= (and b!6487629 c!1188646) b!6487634))

(assert (= (and b!6487629 (not c!1188646)) b!6487630))

(assert (= (and b!6487634 (not res!2664495)) b!6487626))

(assert (= (or b!6487626 b!6487630) bm!561499))

(assert (= (or b!6487627 b!6487634) bm!561498))

(assert (=> bm!561498 m!7275006))

(declare-fun m!7276090 () Bool)

(assert (=> b!6487628 m!7276090))

(declare-fun m!7276092 () Bool)

(assert (=> bm!561499 m!7276092))

(declare-fun m!7276094 () Bool)

(assert (=> b!6487633 m!7276094))

(assert (=> b!6486638 d!2035131))

(declare-fun b!6487654 () Bool)

(declare-fun res!2664507 () Bool)

(declare-fun e!3931886 () Bool)

(assert (=> b!6487654 (=> (not res!2664507) (not e!3931886))))

(declare-fun lt!2389090 () Option!16258)

(assert (=> b!6487654 (= res!2664507 (matchR!8550 lt!2388865 (_2!36649 (get!22634 lt!2389090))))))

(declare-fun b!6487655 () Bool)

(declare-fun e!3931882 () Option!16258)

(assert (=> b!6487655 (= e!3931882 None!16257)))

(declare-fun b!6487656 () Bool)

(assert (=> b!6487656 (= e!3931886 (= (++!14444 (_1!36649 (get!22634 lt!2389090)) (_2!36649 (get!22634 lt!2389090))) (_1!36649 lt!2388900)))))

(declare-fun b!6487657 () Bool)

(declare-fun res!2664509 () Bool)

(assert (=> b!6487657 (=> (not res!2664509) (not e!3931886))))

(assert (=> b!6487657 (= res!2664509 (matchR!8550 (reg!16696 (regOne!33246 r!7292)) (_1!36649 (get!22634 lt!2389090))))))

(declare-fun d!2035133 () Bool)

(declare-fun e!3931884 () Bool)

(assert (=> d!2035133 e!3931884))

(declare-fun res!2664508 () Bool)

(assert (=> d!2035133 (=> res!2664508 e!3931884)))

(assert (=> d!2035133 (= res!2664508 e!3931886)))

(declare-fun res!2664511 () Bool)

(assert (=> d!2035133 (=> (not res!2664511) (not e!3931886))))

(assert (=> d!2035133 (= res!2664511 (isDefined!12961 lt!2389090))))

(declare-fun e!3931885 () Option!16258)

(assert (=> d!2035133 (= lt!2389090 e!3931885)))

(declare-fun c!1188652 () Bool)

(declare-fun e!3931883 () Bool)

(assert (=> d!2035133 (= c!1188652 e!3931883)))

(declare-fun res!2664510 () Bool)

(assert (=> d!2035133 (=> (not res!2664510) (not e!3931883))))

(assert (=> d!2035133 (= res!2664510 (matchR!8550 (reg!16696 (regOne!33246 r!7292)) Nil!65276))))

(assert (=> d!2035133 (validRegex!8103 (reg!16696 (regOne!33246 r!7292)))))

(assert (=> d!2035133 (= (findConcatSeparation!2672 (reg!16696 (regOne!33246 r!7292)) lt!2388865 Nil!65276 (_1!36649 lt!2388900) (_1!36649 lt!2388900)) lt!2389090)))

(declare-fun b!6487658 () Bool)

(assert (=> b!6487658 (= e!3931885 (Some!16257 (tuple2!66693 Nil!65276 (_1!36649 lt!2388900))))))

(declare-fun b!6487659 () Bool)

(assert (=> b!6487659 (= e!3931883 (matchR!8550 lt!2388865 (_1!36649 lt!2388900)))))

(declare-fun b!6487660 () Bool)

(assert (=> b!6487660 (= e!3931884 (not (isDefined!12961 lt!2389090)))))

(declare-fun b!6487661 () Bool)

(declare-fun lt!2389091 () Unit!158799)

(declare-fun lt!2389089 () Unit!158799)

(assert (=> b!6487661 (= lt!2389091 lt!2389089)))

(assert (=> b!6487661 (= (++!14444 (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276)) (t!379026 (_1!36649 lt!2388900))) (_1!36649 lt!2388900))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2522 (List!65400 C!33004 List!65400 List!65400) Unit!158799)

(assert (=> b!6487661 (= lt!2389089 (lemmaMoveElementToOtherListKeepsConcatEq!2522 Nil!65276 (h!71724 (_1!36649 lt!2388900)) (t!379026 (_1!36649 lt!2388900)) (_1!36649 lt!2388900)))))

(assert (=> b!6487661 (= e!3931882 (findConcatSeparation!2672 (reg!16696 (regOne!33246 r!7292)) lt!2388865 (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276)) (t!379026 (_1!36649 lt!2388900)) (_1!36649 lt!2388900)))))

(declare-fun b!6487662 () Bool)

(assert (=> b!6487662 (= e!3931885 e!3931882)))

(declare-fun c!1188653 () Bool)

(assert (=> b!6487662 (= c!1188653 ((_ is Nil!65276) (_1!36649 lt!2388900)))))

(assert (= (and d!2035133 res!2664510) b!6487659))

(assert (= (and d!2035133 c!1188652) b!6487658))

(assert (= (and d!2035133 (not c!1188652)) b!6487662))

(assert (= (and b!6487662 c!1188653) b!6487655))

(assert (= (and b!6487662 (not c!1188653)) b!6487661))

(assert (= (and d!2035133 res!2664511) b!6487657))

(assert (= (and b!6487657 res!2664509) b!6487654))

(assert (= (and b!6487654 res!2664507) b!6487656))

(assert (= (and d!2035133 (not res!2664508)) b!6487660))

(declare-fun m!7276096 () Bool)

(assert (=> b!6487656 m!7276096))

(declare-fun m!7276098 () Bool)

(assert (=> b!6487656 m!7276098))

(declare-fun m!7276100 () Bool)

(assert (=> b!6487660 m!7276100))

(assert (=> b!6487654 m!7276096))

(declare-fun m!7276102 () Bool)

(assert (=> b!6487654 m!7276102))

(declare-fun m!7276104 () Bool)

(assert (=> b!6487661 m!7276104))

(assert (=> b!6487661 m!7276104))

(declare-fun m!7276106 () Bool)

(assert (=> b!6487661 m!7276106))

(declare-fun m!7276108 () Bool)

(assert (=> b!6487661 m!7276108))

(assert (=> b!6487661 m!7276104))

(declare-fun m!7276110 () Bool)

(assert (=> b!6487661 m!7276110))

(assert (=> b!6487659 m!7275008))

(assert (=> d!2035133 m!7276100))

(declare-fun m!7276112 () Bool)

(assert (=> d!2035133 m!7276112))

(assert (=> d!2035133 m!7275822))

(assert (=> b!6487657 m!7276096))

(declare-fun m!7276114 () Bool)

(assert (=> b!6487657 m!7276114))

(assert (=> b!6486638 d!2035133))

(declare-fun bs!1645915 () Bool)

(declare-fun d!2035135 () Bool)

(assert (= bs!1645915 (and d!2035135 b!6487593)))

(declare-fun lambda!359207 () Int)

(assert (=> bs!1645915 (not (= lambda!359207 lambda!359195))))

(declare-fun bs!1645916 () Bool)

(assert (= bs!1645916 (and d!2035135 b!6486638)))

(assert (=> bs!1645916 (not (= lambda!359207 lambda!359124))))

(declare-fun bs!1645917 () Bool)

(assert (= bs!1645917 (and d!2035135 b!6486656)))

(assert (=> bs!1645917 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359207 lambda!359121))))

(declare-fun bs!1645918 () Bool)

(assert (= bs!1645918 (and d!2035135 b!6487561)))

(assert (=> bs!1645918 (not (= lambda!359207 lambda!359189))))

(declare-fun bs!1645919 () Bool)

(assert (= bs!1645919 (and d!2035135 b!6486655)))

(assert (=> bs!1645919 (not (= lambda!359207 lambda!359119))))

(assert (=> bs!1645916 (not (= lambda!359207 lambda!359125))))

(declare-fun bs!1645920 () Bool)

(assert (= bs!1645920 (and d!2035135 d!2035129)))

(assert (=> bs!1645920 (= lambda!359207 lambda!359201)))

(declare-fun bs!1645921 () Bool)

(assert (= bs!1645921 (and d!2035135 b!6487626)))

(assert (=> bs!1645921 (not (= lambda!359207 lambda!359203))))

(assert (=> bs!1645917 (not (= lambda!359207 lambda!359122))))

(declare-fun bs!1645922 () Bool)

(assert (= bs!1645922 (and d!2035135 b!6487597)))

(assert (=> bs!1645922 (not (= lambda!359207 lambda!359196))))

(declare-fun bs!1645923 () Bool)

(assert (= bs!1645923 (and d!2035135 b!6487630)))

(assert (=> bs!1645923 (not (= lambda!359207 lambda!359204))))

(assert (=> bs!1645920 (not (= lambda!359207 lambda!359202))))

(assert (=> bs!1645916 (= lambda!359207 lambda!359123)))

(declare-fun bs!1645924 () Bool)

(assert (= bs!1645924 (and d!2035135 b!6487565)))

(assert (=> bs!1645924 (not (= lambda!359207 lambda!359190))))

(assert (=> bs!1645919 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359207 lambda!359118))))

(assert (=> d!2035135 true))

(assert (=> d!2035135 true))

(assert (=> d!2035135 true))

(assert (=> d!2035135 (= (isDefined!12961 (findConcatSeparation!2672 (reg!16696 (regOne!33246 r!7292)) lt!2388865 Nil!65276 (_1!36649 lt!2388900) (_1!36649 lt!2388900))) (Exists!3437 lambda!359207))))

(declare-fun lt!2389094 () Unit!158799)

(declare-fun choose!48166 (Regex!16367 Regex!16367 List!65400) Unit!158799)

(assert (=> d!2035135 (= lt!2389094 (choose!48166 (reg!16696 (regOne!33246 r!7292)) lt!2388865 (_1!36649 lt!2388900)))))

(assert (=> d!2035135 (validRegex!8103 (reg!16696 (regOne!33246 r!7292)))))

(assert (=> d!2035135 (= (lemmaFindConcatSeparationEquivalentToExists!2436 (reg!16696 (regOne!33246 r!7292)) lt!2388865 (_1!36649 lt!2388900)) lt!2389094)))

(declare-fun bs!1645925 () Bool)

(assert (= bs!1645925 d!2035135))

(assert (=> bs!1645925 m!7275822))

(assert (=> bs!1645925 m!7275032))

(declare-fun m!7276116 () Bool)

(assert (=> bs!1645925 m!7276116))

(declare-fun m!7276118 () Bool)

(assert (=> bs!1645925 m!7276118))

(assert (=> bs!1645925 m!7275032))

(declare-fun m!7276120 () Bool)

(assert (=> bs!1645925 m!7276120))

(assert (=> b!6486638 d!2035135))

(declare-fun d!2035137 () Bool)

(assert (=> d!2035137 (= (get!22634 lt!2388861) (v!52436 lt!2388861))))

(assert (=> b!6486638 d!2035137))

(declare-fun bs!1645926 () Bool)

(declare-fun d!2035139 () Bool)

(assert (= bs!1645926 (and d!2035139 b!6487593)))

(declare-fun lambda!359212 () Int)

(assert (=> bs!1645926 (not (= lambda!359212 lambda!359195))))

(declare-fun bs!1645927 () Bool)

(assert (= bs!1645927 (and d!2035139 b!6486638)))

(assert (=> bs!1645927 (not (= lambda!359212 lambda!359124))))

(declare-fun bs!1645928 () Bool)

(assert (= bs!1645928 (and d!2035139 b!6486656)))

(assert (=> bs!1645928 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regTwo!33246 r!7292))) (= lambda!359212 lambda!359121))))

(declare-fun bs!1645929 () Bool)

(assert (= bs!1645929 (and d!2035139 b!6487561)))

(assert (=> bs!1645929 (not (= lambda!359212 lambda!359189))))

(declare-fun bs!1645930 () Bool)

(assert (= bs!1645930 (and d!2035139 b!6486655)))

(assert (=> bs!1645930 (not (= lambda!359212 lambda!359119))))

(declare-fun bs!1645931 () Bool)

(assert (= bs!1645931 (and d!2035139 d!2035135)))

(assert (=> bs!1645931 (= (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) lt!2388865) (= lambda!359212 lambda!359207))))

(assert (=> bs!1645927 (not (= lambda!359212 lambda!359125))))

(declare-fun bs!1645932 () Bool)

(assert (= bs!1645932 (and d!2035139 d!2035129)))

(assert (=> bs!1645932 (= (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) lt!2388865) (= lambda!359212 lambda!359201))))

(declare-fun bs!1645933 () Bool)

(assert (= bs!1645933 (and d!2035139 b!6487626)))

(assert (=> bs!1645933 (not (= lambda!359212 lambda!359203))))

(assert (=> bs!1645928 (not (= lambda!359212 lambda!359122))))

(declare-fun bs!1645934 () Bool)

(assert (= bs!1645934 (and d!2035139 b!6487597)))

(assert (=> bs!1645934 (not (= lambda!359212 lambda!359196))))

(declare-fun bs!1645935 () Bool)

(assert (= bs!1645935 (and d!2035139 b!6487630)))

(assert (=> bs!1645935 (not (= lambda!359212 lambda!359204))))

(assert (=> bs!1645932 (not (= lambda!359212 lambda!359202))))

(assert (=> bs!1645927 (= (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) lt!2388865) (= lambda!359212 lambda!359123))))

(declare-fun bs!1645936 () Bool)

(assert (= bs!1645936 (and d!2035139 b!6487565)))

(assert (=> bs!1645936 (not (= lambda!359212 lambda!359190))))

(assert (=> bs!1645930 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regTwo!33246 r!7292))) (= lambda!359212 lambda!359118))))

(assert (=> d!2035139 true))

(assert (=> d!2035139 true))

(declare-fun lambda!359213 () Int)

(assert (=> bs!1645926 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (reg!16696 r!7292)) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) r!7292)) (= lambda!359213 lambda!359195))))

(assert (=> bs!1645927 (= (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) lt!2388865) (= lambda!359213 lambda!359124))))

(assert (=> bs!1645928 (not (= lambda!359213 lambda!359121))))

(assert (=> bs!1645929 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (reg!16696 lt!2388855)) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) lt!2388855)) (= lambda!359213 lambda!359189))))

(assert (=> bs!1645930 (not (= lambda!359213 lambda!359119))))

(assert (=> bs!1645931 (not (= lambda!359213 lambda!359207))))

(assert (=> bs!1645927 (not (= lambda!359213 lambda!359125))))

(assert (=> bs!1645932 (not (= lambda!359213 lambda!359201))))

(assert (=> bs!1645933 (= (and (= (reg!16696 (regOne!33246 r!7292)) (reg!16696 lt!2388865)) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) lt!2388865)) (= lambda!359213 lambda!359203))))

(assert (=> bs!1645928 (not (= lambda!359213 lambda!359122))))

(declare-fun bs!1645937 () Bool)

(assert (= bs!1645937 d!2035139))

(assert (=> bs!1645937 (not (= lambda!359213 lambda!359212))))

(assert (=> bs!1645934 (not (= lambda!359213 lambda!359196))))

(assert (=> bs!1645935 (not (= lambda!359213 lambda!359204))))

(assert (=> bs!1645932 (not (= lambda!359213 lambda!359202))))

(assert (=> bs!1645927 (not (= lambda!359213 lambda!359123))))

(assert (=> bs!1645936 (not (= lambda!359213 lambda!359190))))

(assert (=> bs!1645930 (not (= lambda!359213 lambda!359118))))

(assert (=> d!2035139 true))

(assert (=> d!2035139 true))

(assert (=> d!2035139 (= (Exists!3437 lambda!359212) (Exists!3437 lambda!359213))))

(declare-fun lt!2389097 () Unit!158799)

(declare-fun choose!48167 (Regex!16367 List!65400) Unit!158799)

(assert (=> d!2035139 (= lt!2389097 (choose!48167 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388900)))))

(assert (=> d!2035139 (validRegex!8103 (reg!16696 (regOne!33246 r!7292)))))

(assert (=> d!2035139 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!658 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388900)) lt!2389097)))

(declare-fun m!7276122 () Bool)

(assert (=> bs!1645937 m!7276122))

(declare-fun m!7276124 () Bool)

(assert (=> bs!1645937 m!7276124))

(declare-fun m!7276126 () Bool)

(assert (=> bs!1645937 m!7276126))

(assert (=> bs!1645937 m!7275822))

(assert (=> b!6486638 d!2035139))

(declare-fun b!6487680 () Bool)

(declare-fun e!3931893 () Bool)

(declare-fun lt!2389098 () List!65400)

(assert (=> b!6487680 (= e!3931893 (or (not (= (_2!36649 lt!2388858) Nil!65276)) (= lt!2389098 (_1!36649 lt!2388858))))))

(declare-fun d!2035141 () Bool)

(assert (=> d!2035141 e!3931893))

(declare-fun res!2664527 () Bool)

(assert (=> d!2035141 (=> (not res!2664527) (not e!3931893))))

(assert (=> d!2035141 (= res!2664527 (= (content!12437 lt!2389098) ((_ map or) (content!12437 (_1!36649 lt!2388858)) (content!12437 (_2!36649 lt!2388858)))))))

(declare-fun e!3931894 () List!65400)

(assert (=> d!2035141 (= lt!2389098 e!3931894)))

(declare-fun c!1188654 () Bool)

(assert (=> d!2035141 (= c!1188654 ((_ is Nil!65276) (_1!36649 lt!2388858)))))

(assert (=> d!2035141 (= (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858)) lt!2389098)))

(declare-fun b!6487678 () Bool)

(assert (=> b!6487678 (= e!3931894 (Cons!65276 (h!71724 (_1!36649 lt!2388858)) (++!14444 (t!379026 (_1!36649 lt!2388858)) (_2!36649 lt!2388858))))))

(declare-fun b!6487679 () Bool)

(declare-fun res!2664526 () Bool)

(assert (=> b!6487679 (=> (not res!2664526) (not e!3931893))))

(assert (=> b!6487679 (= res!2664526 (= (size!40424 lt!2389098) (+ (size!40424 (_1!36649 lt!2388858)) (size!40424 (_2!36649 lt!2388858)))))))

(declare-fun b!6487677 () Bool)

(assert (=> b!6487677 (= e!3931894 (_2!36649 lt!2388858))))

(assert (= (and d!2035141 c!1188654) b!6487677))

(assert (= (and d!2035141 (not c!1188654)) b!6487678))

(assert (= (and d!2035141 res!2664527) b!6487679))

(assert (= (and b!6487679 res!2664526) b!6487680))

(declare-fun m!7276128 () Bool)

(assert (=> d!2035141 m!7276128))

(assert (=> d!2035141 m!7275524))

(assert (=> d!2035141 m!7275552))

(declare-fun m!7276130 () Bool)

(assert (=> b!6487678 m!7276130))

(declare-fun m!7276132 () Bool)

(assert (=> b!6487679 m!7276132))

(assert (=> b!6487679 m!7275532))

(assert (=> b!6487679 m!7275558))

(assert (=> b!6486638 d!2035141))

(declare-fun d!2035143 () Bool)

(assert (=> d!2035143 (= (Exists!3437 lambda!359118) (choose!48164 lambda!359118))))

(declare-fun bs!1645938 () Bool)

(assert (= bs!1645938 d!2035143))

(declare-fun m!7276134 () Bool)

(assert (=> bs!1645938 m!7276134))

(assert (=> b!6486655 d!2035143))

(declare-fun bs!1645939 () Bool)

(declare-fun d!2035145 () Bool)

(assert (= bs!1645939 (and d!2035145 b!6487593)))

(declare-fun lambda!359214 () Int)

(assert (=> bs!1645939 (not (= lambda!359214 lambda!359195))))

(declare-fun bs!1645940 () Bool)

(assert (= bs!1645940 (and d!2035145 b!6486638)))

(assert (=> bs!1645940 (not (= lambda!359214 lambda!359124))))

(declare-fun bs!1645941 () Bool)

(assert (= bs!1645941 (and d!2035145 b!6486656)))

(assert (=> bs!1645941 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359214 lambda!359121))))

(declare-fun bs!1645942 () Bool)

(assert (= bs!1645942 (and d!2035145 b!6487561)))

(assert (=> bs!1645942 (not (= lambda!359214 lambda!359189))))

(declare-fun bs!1645943 () Bool)

(assert (= bs!1645943 (and d!2035145 b!6486655)))

(assert (=> bs!1645943 (not (= lambda!359214 lambda!359119))))

(declare-fun bs!1645944 () Bool)

(assert (= bs!1645944 (and d!2035145 d!2035135)))

(assert (=> bs!1645944 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359214 lambda!359207))))

(assert (=> bs!1645940 (not (= lambda!359214 lambda!359125))))

(declare-fun bs!1645945 () Bool)

(assert (= bs!1645945 (and d!2035145 d!2035139)))

(assert (=> bs!1645945 (not (= lambda!359214 lambda!359213))))

(declare-fun bs!1645946 () Bool)

(assert (= bs!1645946 (and d!2035145 d!2035129)))

(assert (=> bs!1645946 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359214 lambda!359201))))

(declare-fun bs!1645947 () Bool)

(assert (= bs!1645947 (and d!2035145 b!6487626)))

(assert (=> bs!1645947 (not (= lambda!359214 lambda!359203))))

(assert (=> bs!1645941 (not (= lambda!359214 lambda!359122))))

(assert (=> bs!1645945 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) (Star!16367 (reg!16696 (regOne!33246 r!7292))))) (= lambda!359214 lambda!359212))))

(declare-fun bs!1645948 () Bool)

(assert (= bs!1645948 (and d!2035145 b!6487597)))

(assert (=> bs!1645948 (not (= lambda!359214 lambda!359196))))

(declare-fun bs!1645949 () Bool)

(assert (= bs!1645949 (and d!2035145 b!6487630)))

(assert (=> bs!1645949 (not (= lambda!359214 lambda!359204))))

(assert (=> bs!1645946 (not (= lambda!359214 lambda!359202))))

(assert (=> bs!1645940 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359214 lambda!359123))))

(declare-fun bs!1645950 () Bool)

(assert (= bs!1645950 (and d!2035145 b!6487565)))

(assert (=> bs!1645950 (not (= lambda!359214 lambda!359190))))

(assert (=> bs!1645943 (= lambda!359214 lambda!359118)))

(assert (=> d!2035145 true))

(assert (=> d!2035145 true))

(assert (=> d!2035145 true))

(assert (=> d!2035145 (= (isDefined!12961 (findConcatSeparation!2672 (regOne!33246 r!7292) (regTwo!33246 r!7292) Nil!65276 s!2326 s!2326)) (Exists!3437 lambda!359214))))

(declare-fun lt!2389099 () Unit!158799)

(assert (=> d!2035145 (= lt!2389099 (choose!48166 (regOne!33246 r!7292) (regTwo!33246 r!7292) s!2326))))

(assert (=> d!2035145 (validRegex!8103 (regOne!33246 r!7292))))

(assert (=> d!2035145 (= (lemmaFindConcatSeparationEquivalentToExists!2436 (regOne!33246 r!7292) (regTwo!33246 r!7292) s!2326) lt!2389099)))

(declare-fun bs!1645951 () Bool)

(assert (= bs!1645951 d!2035145))

(declare-fun m!7276136 () Bool)

(assert (=> bs!1645951 m!7276136))

(assert (=> bs!1645951 m!7275076))

(assert (=> bs!1645951 m!7275078))

(declare-fun m!7276138 () Bool)

(assert (=> bs!1645951 m!7276138))

(assert (=> bs!1645951 m!7275076))

(declare-fun m!7276140 () Bool)

(assert (=> bs!1645951 m!7276140))

(assert (=> b!6486655 d!2035145))

(declare-fun b!6487681 () Bool)

(declare-fun res!2664528 () Bool)

(declare-fun e!3931899 () Bool)

(assert (=> b!6487681 (=> (not res!2664528) (not e!3931899))))

(declare-fun lt!2389101 () Option!16258)

(assert (=> b!6487681 (= res!2664528 (matchR!8550 (regTwo!33246 r!7292) (_2!36649 (get!22634 lt!2389101))))))

(declare-fun b!6487682 () Bool)

(declare-fun e!3931895 () Option!16258)

(assert (=> b!6487682 (= e!3931895 None!16257)))

(declare-fun b!6487683 () Bool)

(assert (=> b!6487683 (= e!3931899 (= (++!14444 (_1!36649 (get!22634 lt!2389101)) (_2!36649 (get!22634 lt!2389101))) s!2326))))

(declare-fun b!6487684 () Bool)

(declare-fun res!2664530 () Bool)

(assert (=> b!6487684 (=> (not res!2664530) (not e!3931899))))

(assert (=> b!6487684 (= res!2664530 (matchR!8550 (regOne!33246 r!7292) (_1!36649 (get!22634 lt!2389101))))))

(declare-fun d!2035147 () Bool)

(declare-fun e!3931897 () Bool)

(assert (=> d!2035147 e!3931897))

(declare-fun res!2664529 () Bool)

(assert (=> d!2035147 (=> res!2664529 e!3931897)))

(assert (=> d!2035147 (= res!2664529 e!3931899)))

(declare-fun res!2664532 () Bool)

(assert (=> d!2035147 (=> (not res!2664532) (not e!3931899))))

(assert (=> d!2035147 (= res!2664532 (isDefined!12961 lt!2389101))))

(declare-fun e!3931898 () Option!16258)

(assert (=> d!2035147 (= lt!2389101 e!3931898)))

(declare-fun c!1188655 () Bool)

(declare-fun e!3931896 () Bool)

(assert (=> d!2035147 (= c!1188655 e!3931896)))

(declare-fun res!2664531 () Bool)

(assert (=> d!2035147 (=> (not res!2664531) (not e!3931896))))

(assert (=> d!2035147 (= res!2664531 (matchR!8550 (regOne!33246 r!7292) Nil!65276))))

(assert (=> d!2035147 (validRegex!8103 (regOne!33246 r!7292))))

(assert (=> d!2035147 (= (findConcatSeparation!2672 (regOne!33246 r!7292) (regTwo!33246 r!7292) Nil!65276 s!2326 s!2326) lt!2389101)))

(declare-fun b!6487685 () Bool)

(assert (=> b!6487685 (= e!3931898 (Some!16257 (tuple2!66693 Nil!65276 s!2326)))))

(declare-fun b!6487686 () Bool)

(assert (=> b!6487686 (= e!3931896 (matchR!8550 (regTwo!33246 r!7292) s!2326))))

(declare-fun b!6487687 () Bool)

(assert (=> b!6487687 (= e!3931897 (not (isDefined!12961 lt!2389101)))))

(declare-fun b!6487688 () Bool)

(declare-fun lt!2389102 () Unit!158799)

(declare-fun lt!2389100 () Unit!158799)

(assert (=> b!6487688 (= lt!2389102 lt!2389100)))

(assert (=> b!6487688 (= (++!14444 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (t!379026 s!2326)) s!2326)))

(assert (=> b!6487688 (= lt!2389100 (lemmaMoveElementToOtherListKeepsConcatEq!2522 Nil!65276 (h!71724 s!2326) (t!379026 s!2326) s!2326))))

(assert (=> b!6487688 (= e!3931895 (findConcatSeparation!2672 (regOne!33246 r!7292) (regTwo!33246 r!7292) (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (t!379026 s!2326) s!2326))))

(declare-fun b!6487689 () Bool)

(assert (=> b!6487689 (= e!3931898 e!3931895)))

(declare-fun c!1188656 () Bool)

(assert (=> b!6487689 (= c!1188656 ((_ is Nil!65276) s!2326))))

(assert (= (and d!2035147 res!2664531) b!6487686))

(assert (= (and d!2035147 c!1188655) b!6487685))

(assert (= (and d!2035147 (not c!1188655)) b!6487689))

(assert (= (and b!6487689 c!1188656) b!6487682))

(assert (= (and b!6487689 (not c!1188656)) b!6487688))

(assert (= (and d!2035147 res!2664532) b!6487684))

(assert (= (and b!6487684 res!2664530) b!6487681))

(assert (= (and b!6487681 res!2664528) b!6487683))

(assert (= (and d!2035147 (not res!2664529)) b!6487687))

(declare-fun m!7276142 () Bool)

(assert (=> b!6487683 m!7276142))

(declare-fun m!7276144 () Bool)

(assert (=> b!6487683 m!7276144))

(declare-fun m!7276146 () Bool)

(assert (=> b!6487687 m!7276146))

(assert (=> b!6487681 m!7276142))

(declare-fun m!7276148 () Bool)

(assert (=> b!6487681 m!7276148))

(declare-fun m!7276150 () Bool)

(assert (=> b!6487688 m!7276150))

(assert (=> b!6487688 m!7276150))

(declare-fun m!7276152 () Bool)

(assert (=> b!6487688 m!7276152))

(declare-fun m!7276154 () Bool)

(assert (=> b!6487688 m!7276154))

(assert (=> b!6487688 m!7276150))

(declare-fun m!7276156 () Bool)

(assert (=> b!6487688 m!7276156))

(declare-fun m!7276158 () Bool)

(assert (=> b!6487686 m!7276158))

(assert (=> d!2035147 m!7276146))

(declare-fun m!7276160 () Bool)

(assert (=> d!2035147 m!7276160))

(assert (=> d!2035147 m!7276136))

(assert (=> b!6487684 m!7276142))

(declare-fun m!7276162 () Bool)

(assert (=> b!6487684 m!7276162))

(assert (=> b!6486655 d!2035147))

(declare-fun d!2035149 () Bool)

(assert (=> d!2035149 (= (Exists!3437 lambda!359119) (choose!48164 lambda!359119))))

(declare-fun bs!1645952 () Bool)

(assert (= bs!1645952 d!2035149))

(declare-fun m!7276164 () Bool)

(assert (=> bs!1645952 m!7276164))

(assert (=> b!6486655 d!2035149))

(declare-fun bs!1645953 () Bool)

(declare-fun d!2035151 () Bool)

(assert (= bs!1645953 (and d!2035151 b!6487593)))

(declare-fun lambda!359215 () Int)

(assert (=> bs!1645953 (not (= lambda!359215 lambda!359195))))

(declare-fun bs!1645954 () Bool)

(assert (= bs!1645954 (and d!2035151 b!6486638)))

(assert (=> bs!1645954 (not (= lambda!359215 lambda!359124))))

(declare-fun bs!1645955 () Bool)

(assert (= bs!1645955 (and d!2035151 b!6486656)))

(assert (=> bs!1645955 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359215 lambda!359121))))

(declare-fun bs!1645956 () Bool)

(assert (= bs!1645956 (and d!2035151 b!6487561)))

(assert (=> bs!1645956 (not (= lambda!359215 lambda!359189))))

(declare-fun bs!1645957 () Bool)

(assert (= bs!1645957 (and d!2035151 b!6486655)))

(assert (=> bs!1645957 (not (= lambda!359215 lambda!359119))))

(declare-fun bs!1645958 () Bool)

(assert (= bs!1645958 (and d!2035151 d!2035135)))

(assert (=> bs!1645958 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359215 lambda!359207))))

(assert (=> bs!1645954 (not (= lambda!359215 lambda!359125))))

(declare-fun bs!1645959 () Bool)

(assert (= bs!1645959 (and d!2035151 d!2035139)))

(assert (=> bs!1645959 (not (= lambda!359215 lambda!359213))))

(declare-fun bs!1645960 () Bool)

(assert (= bs!1645960 (and d!2035151 d!2035129)))

(assert (=> bs!1645960 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359215 lambda!359201))))

(declare-fun bs!1645961 () Bool)

(assert (= bs!1645961 (and d!2035151 d!2035145)))

(assert (=> bs!1645961 (= lambda!359215 lambda!359214)))

(declare-fun bs!1645962 () Bool)

(assert (= bs!1645962 (and d!2035151 b!6487626)))

(assert (=> bs!1645962 (not (= lambda!359215 lambda!359203))))

(assert (=> bs!1645955 (not (= lambda!359215 lambda!359122))))

(assert (=> bs!1645959 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) (Star!16367 (reg!16696 (regOne!33246 r!7292))))) (= lambda!359215 lambda!359212))))

(declare-fun bs!1645963 () Bool)

(assert (= bs!1645963 (and d!2035151 b!6487597)))

(assert (=> bs!1645963 (not (= lambda!359215 lambda!359196))))

(declare-fun bs!1645964 () Bool)

(assert (= bs!1645964 (and d!2035151 b!6487630)))

(assert (=> bs!1645964 (not (= lambda!359215 lambda!359204))))

(assert (=> bs!1645960 (not (= lambda!359215 lambda!359202))))

(assert (=> bs!1645954 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359215 lambda!359123))))

(declare-fun bs!1645965 () Bool)

(assert (= bs!1645965 (and d!2035151 b!6487565)))

(assert (=> bs!1645965 (not (= lambda!359215 lambda!359190))))

(assert (=> bs!1645957 (= lambda!359215 lambda!359118)))

(assert (=> d!2035151 true))

(assert (=> d!2035151 true))

(assert (=> d!2035151 true))

(declare-fun lambda!359216 () Int)

(assert (=> bs!1645953 (not (= lambda!359216 lambda!359195))))

(assert (=> bs!1645954 (not (= lambda!359216 lambda!359124))))

(assert (=> bs!1645955 (not (= lambda!359216 lambda!359121))))

(assert (=> bs!1645956 (not (= lambda!359216 lambda!359189))))

(assert (=> bs!1645957 (= lambda!359216 lambda!359119)))

(assert (=> bs!1645958 (not (= lambda!359216 lambda!359207))))

(assert (=> bs!1645954 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359216 lambda!359125))))

(assert (=> bs!1645959 (not (= lambda!359216 lambda!359213))))

(assert (=> bs!1645960 (not (= lambda!359216 lambda!359201))))

(assert (=> bs!1645961 (not (= lambda!359216 lambda!359214))))

(declare-fun bs!1645966 () Bool)

(assert (= bs!1645966 d!2035151))

(assert (=> bs!1645966 (not (= lambda!359216 lambda!359215))))

(assert (=> bs!1645962 (not (= lambda!359216 lambda!359203))))

(assert (=> bs!1645955 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359216 lambda!359122))))

(assert (=> bs!1645959 (not (= lambda!359216 lambda!359212))))

(assert (=> bs!1645963 (= lambda!359216 lambda!359196)))

(assert (=> bs!1645964 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (regOne!33246 lt!2388865)) (= (regTwo!33246 r!7292) (regTwo!33246 lt!2388865))) (= lambda!359216 lambda!359204))))

(assert (=> bs!1645960 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359216 lambda!359202))))

(assert (=> bs!1645954 (not (= lambda!359216 lambda!359123))))

(assert (=> bs!1645965 (= (and (= (regOne!33246 r!7292) (regOne!33246 lt!2388855)) (= (regTwo!33246 r!7292) (regTwo!33246 lt!2388855))) (= lambda!359216 lambda!359190))))

(assert (=> bs!1645957 (not (= lambda!359216 lambda!359118))))

(assert (=> d!2035151 true))

(assert (=> d!2035151 true))

(assert (=> d!2035151 true))

(assert (=> d!2035151 (= (Exists!3437 lambda!359215) (Exists!3437 lambda!359216))))

(declare-fun lt!2389103 () Unit!158799)

(assert (=> d!2035151 (= lt!2389103 (choose!48165 (regOne!33246 r!7292) (regTwo!33246 r!7292) s!2326))))

(assert (=> d!2035151 (validRegex!8103 (regOne!33246 r!7292))))

(assert (=> d!2035151 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1974 (regOne!33246 r!7292) (regTwo!33246 r!7292) s!2326) lt!2389103)))

(declare-fun m!7276166 () Bool)

(assert (=> bs!1645966 m!7276166))

(declare-fun m!7276168 () Bool)

(assert (=> bs!1645966 m!7276168))

(declare-fun m!7276170 () Bool)

(assert (=> bs!1645966 m!7276170))

(assert (=> bs!1645966 m!7276136))

(assert (=> b!6486655 d!2035151))

(declare-fun d!2035153 () Bool)

(assert (=> d!2035153 (= (isDefined!12961 (findConcatSeparation!2672 (regOne!33246 r!7292) (regTwo!33246 r!7292) Nil!65276 s!2326 s!2326)) (not (isEmpty!37472 (findConcatSeparation!2672 (regOne!33246 r!7292) (regTwo!33246 r!7292) Nil!65276 s!2326 s!2326))))))

(declare-fun bs!1645967 () Bool)

(assert (= bs!1645967 d!2035153))

(assert (=> bs!1645967 m!7275076))

(declare-fun m!7276172 () Bool)

(assert (=> bs!1645967 m!7276172))

(assert (=> b!6486655 d!2035153))

(declare-fun d!2035155 () Bool)

(assert (=> d!2035155 (= (isEmpty!37469 (t!379028 zl!343)) ((_ is Nil!65278) (t!379028 zl!343)))))

(assert (=> b!6486615 d!2035155))

(declare-fun b!6487693 () Bool)

(declare-fun e!3931900 () Bool)

(declare-fun lt!2389104 () List!65400)

(assert (=> b!6487693 (= e!3931900 (or (not (= (_2!36649 lt!2388900) Nil!65276)) (= lt!2389104 (_1!36649 lt!2388900))))))

(declare-fun d!2035157 () Bool)

(assert (=> d!2035157 e!3931900))

(declare-fun res!2664534 () Bool)

(assert (=> d!2035157 (=> (not res!2664534) (not e!3931900))))

(assert (=> d!2035157 (= res!2664534 (= (content!12437 lt!2389104) ((_ map or) (content!12437 (_1!36649 lt!2388900)) (content!12437 (_2!36649 lt!2388900)))))))

(declare-fun e!3931901 () List!65400)

(assert (=> d!2035157 (= lt!2389104 e!3931901)))

(declare-fun c!1188657 () Bool)

(assert (=> d!2035157 (= c!1188657 ((_ is Nil!65276) (_1!36649 lt!2388900)))))

(assert (=> d!2035157 (= (++!14444 (_1!36649 lt!2388900) (_2!36649 lt!2388900)) lt!2389104)))

(declare-fun b!6487691 () Bool)

(assert (=> b!6487691 (= e!3931901 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) (++!14444 (t!379026 (_1!36649 lt!2388900)) (_2!36649 lt!2388900))))))

(declare-fun b!6487692 () Bool)

(declare-fun res!2664533 () Bool)

(assert (=> b!6487692 (=> (not res!2664533) (not e!3931900))))

(assert (=> b!6487692 (= res!2664533 (= (size!40424 lt!2389104) (+ (size!40424 (_1!36649 lt!2388900)) (size!40424 (_2!36649 lt!2388900)))))))

(declare-fun b!6487690 () Bool)

(assert (=> b!6487690 (= e!3931901 (_2!36649 lt!2388900))))

(assert (= (and d!2035157 c!1188657) b!6487690))

(assert (= (and d!2035157 (not c!1188657)) b!6487691))

(assert (= (and d!2035157 res!2664534) b!6487692))

(assert (= (and b!6487692 res!2664533) b!6487693))

(declare-fun m!7276174 () Bool)

(assert (=> d!2035157 m!7276174))

(declare-fun m!7276176 () Bool)

(assert (=> d!2035157 m!7276176))

(assert (=> d!2035157 m!7275540))

(declare-fun m!7276178 () Bool)

(assert (=> b!6487691 m!7276178))

(declare-fun m!7276180 () Bool)

(assert (=> b!6487692 m!7276180))

(declare-fun m!7276182 () Bool)

(assert (=> b!6487692 m!7276182))

(assert (=> b!6487692 m!7275548))

(assert (=> b!6486656 d!2035157))

(declare-fun d!2035159 () Bool)

(assert (=> d!2035159 (= (isDefined!12961 lt!2388868) (not (isEmpty!37472 lt!2388868)))))

(declare-fun bs!1645968 () Bool)

(assert (= bs!1645968 d!2035159))

(declare-fun m!7276184 () Bool)

(assert (=> bs!1645968 m!7276184))

(assert (=> b!6486656 d!2035159))

(declare-fun bs!1645969 () Bool)

(declare-fun d!2035161 () Bool)

(assert (= bs!1645969 (and d!2035161 d!2035151)))

(declare-fun lambda!359217 () Int)

(assert (=> bs!1645969 (not (= lambda!359217 lambda!359216))))

(declare-fun bs!1645970 () Bool)

(assert (= bs!1645970 (and d!2035161 b!6487593)))

(assert (=> bs!1645970 (not (= lambda!359217 lambda!359195))))

(declare-fun bs!1645971 () Bool)

(assert (= bs!1645971 (and d!2035161 b!6486638)))

(assert (=> bs!1645971 (not (= lambda!359217 lambda!359124))))

(declare-fun bs!1645972 () Bool)

(assert (= bs!1645972 (and d!2035161 b!6486656)))

(assert (=> bs!1645972 (= lambda!359217 lambda!359121)))

(declare-fun bs!1645973 () Bool)

(assert (= bs!1645973 (and d!2035161 b!6487561)))

(assert (=> bs!1645973 (not (= lambda!359217 lambda!359189))))

(declare-fun bs!1645974 () Bool)

(assert (= bs!1645974 (and d!2035161 b!6486655)))

(assert (=> bs!1645974 (not (= lambda!359217 lambda!359119))))

(declare-fun bs!1645975 () Bool)

(assert (= bs!1645975 (and d!2035161 d!2035135)))

(assert (=> bs!1645975 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359217 lambda!359207))))

(assert (=> bs!1645971 (not (= lambda!359217 lambda!359125))))

(declare-fun bs!1645976 () Bool)

(assert (= bs!1645976 (and d!2035161 d!2035139)))

(assert (=> bs!1645976 (not (= lambda!359217 lambda!359213))))

(declare-fun bs!1645977 () Bool)

(assert (= bs!1645977 (and d!2035161 d!2035129)))

(assert (=> bs!1645977 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359217 lambda!359201))))

(declare-fun bs!1645978 () Bool)

(assert (= bs!1645978 (and d!2035161 d!2035145)))

(assert (=> bs!1645978 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359217 lambda!359214))))

(assert (=> bs!1645969 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359217 lambda!359215))))

(declare-fun bs!1645979 () Bool)

(assert (= bs!1645979 (and d!2035161 b!6487626)))

(assert (=> bs!1645979 (not (= lambda!359217 lambda!359203))))

(assert (=> bs!1645972 (not (= lambda!359217 lambda!359122))))

(assert (=> bs!1645976 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) (Star!16367 (reg!16696 (regOne!33246 r!7292))))) (= lambda!359217 lambda!359212))))

(declare-fun bs!1645980 () Bool)

(assert (= bs!1645980 (and d!2035161 b!6487597)))

(assert (=> bs!1645980 (not (= lambda!359217 lambda!359196))))

(declare-fun bs!1645981 () Bool)

(assert (= bs!1645981 (and d!2035161 b!6487630)))

(assert (=> bs!1645981 (not (= lambda!359217 lambda!359204))))

(assert (=> bs!1645977 (not (= lambda!359217 lambda!359202))))

(assert (=> bs!1645971 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359217 lambda!359123))))

(declare-fun bs!1645982 () Bool)

(assert (= bs!1645982 (and d!2035161 b!6487565)))

(assert (=> bs!1645982 (not (= lambda!359217 lambda!359190))))

(assert (=> bs!1645974 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359217 lambda!359118))))

(assert (=> d!2035161 true))

(assert (=> d!2035161 true))

(assert (=> d!2035161 true))

(assert (=> d!2035161 (= (isDefined!12961 (findConcatSeparation!2672 lt!2388865 (regTwo!33246 r!7292) Nil!65276 s!2326 s!2326)) (Exists!3437 lambda!359217))))

(declare-fun lt!2389105 () Unit!158799)

(assert (=> d!2035161 (= lt!2389105 (choose!48166 lt!2388865 (regTwo!33246 r!7292) s!2326))))

(assert (=> d!2035161 (validRegex!8103 lt!2388865)))

(assert (=> d!2035161 (= (lemmaFindConcatSeparationEquivalentToExists!2436 lt!2388865 (regTwo!33246 r!7292) s!2326) lt!2389105)))

(declare-fun bs!1645983 () Bool)

(assert (= bs!1645983 d!2035161))

(assert (=> bs!1645983 m!7275850))

(assert (=> bs!1645983 m!7275052))

(declare-fun m!7276186 () Bool)

(assert (=> bs!1645983 m!7276186))

(declare-fun m!7276188 () Bool)

(assert (=> bs!1645983 m!7276188))

(assert (=> bs!1645983 m!7275052))

(declare-fun m!7276190 () Bool)

(assert (=> bs!1645983 m!7276190))

(assert (=> b!6486656 d!2035161))

(declare-fun d!2035163 () Bool)

(assert (=> d!2035163 (= (get!22634 lt!2388868) (v!52436 lt!2388868))))

(assert (=> b!6486656 d!2035163))

(declare-fun bs!1645984 () Bool)

(declare-fun d!2035165 () Bool)

(assert (= bs!1645984 (and d!2035165 d!2035151)))

(declare-fun lambda!359218 () Int)

(assert (=> bs!1645984 (not (= lambda!359218 lambda!359216))))

(declare-fun bs!1645985 () Bool)

(assert (= bs!1645985 (and d!2035165 b!6487593)))

(assert (=> bs!1645985 (not (= lambda!359218 lambda!359195))))

(declare-fun bs!1645986 () Bool)

(assert (= bs!1645986 (and d!2035165 b!6486638)))

(assert (=> bs!1645986 (not (= lambda!359218 lambda!359124))))

(declare-fun bs!1645987 () Bool)

(assert (= bs!1645987 (and d!2035165 b!6486656)))

(assert (=> bs!1645987 (= lambda!359218 lambda!359121)))

(declare-fun bs!1645988 () Bool)

(assert (= bs!1645988 (and d!2035165 b!6487561)))

(assert (=> bs!1645988 (not (= lambda!359218 lambda!359189))))

(declare-fun bs!1645989 () Bool)

(assert (= bs!1645989 (and d!2035165 b!6486655)))

(assert (=> bs!1645989 (not (= lambda!359218 lambda!359119))))

(declare-fun bs!1645990 () Bool)

(assert (= bs!1645990 (and d!2035165 d!2035135)))

(assert (=> bs!1645990 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359218 lambda!359207))))

(assert (=> bs!1645986 (not (= lambda!359218 lambda!359125))))

(declare-fun bs!1645991 () Bool)

(assert (= bs!1645991 (and d!2035165 d!2035139)))

(assert (=> bs!1645991 (not (= lambda!359218 lambda!359213))))

(declare-fun bs!1645992 () Bool)

(assert (= bs!1645992 (and d!2035165 d!2035129)))

(assert (=> bs!1645992 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359218 lambda!359201))))

(declare-fun bs!1645993 () Bool)

(assert (= bs!1645993 (and d!2035165 d!2035145)))

(assert (=> bs!1645993 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359218 lambda!359214))))

(assert (=> bs!1645984 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359218 lambda!359215))))

(declare-fun bs!1645994 () Bool)

(assert (= bs!1645994 (and d!2035165 b!6487626)))

(assert (=> bs!1645994 (not (= lambda!359218 lambda!359203))))

(assert (=> bs!1645987 (not (= lambda!359218 lambda!359122))))

(assert (=> bs!1645991 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) (Star!16367 (reg!16696 (regOne!33246 r!7292))))) (= lambda!359218 lambda!359212))))

(declare-fun bs!1645995 () Bool)

(assert (= bs!1645995 (and d!2035165 b!6487630)))

(assert (=> bs!1645995 (not (= lambda!359218 lambda!359204))))

(assert (=> bs!1645992 (not (= lambda!359218 lambda!359202))))

(assert (=> bs!1645986 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359218 lambda!359123))))

(declare-fun bs!1645996 () Bool)

(assert (= bs!1645996 (and d!2035165 b!6487565)))

(assert (=> bs!1645996 (not (= lambda!359218 lambda!359190))))

(assert (=> bs!1645989 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359218 lambda!359118))))

(declare-fun bs!1645997 () Bool)

(assert (= bs!1645997 (and d!2035165 d!2035161)))

(assert (=> bs!1645997 (= lambda!359218 lambda!359217)))

(declare-fun bs!1645998 () Bool)

(assert (= bs!1645998 (and d!2035165 b!6487597)))

(assert (=> bs!1645998 (not (= lambda!359218 lambda!359196))))

(assert (=> d!2035165 true))

(assert (=> d!2035165 true))

(assert (=> d!2035165 true))

(declare-fun bs!1645999 () Bool)

(assert (= bs!1645999 d!2035165))

(declare-fun lambda!359219 () Int)

(assert (=> bs!1645999 (not (= lambda!359219 lambda!359218))))

(assert (=> bs!1645984 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359219 lambda!359216))))

(assert (=> bs!1645985 (not (= lambda!359219 lambda!359195))))

(assert (=> bs!1645986 (not (= lambda!359219 lambda!359124))))

(assert (=> bs!1645987 (not (= lambda!359219 lambda!359121))))

(assert (=> bs!1645988 (not (= lambda!359219 lambda!359189))))

(assert (=> bs!1645989 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359219 lambda!359119))))

(assert (=> bs!1645990 (not (= lambda!359219 lambda!359207))))

(assert (=> bs!1645986 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359219 lambda!359125))))

(assert (=> bs!1645991 (not (= lambda!359219 lambda!359213))))

(assert (=> bs!1645992 (not (= lambda!359219 lambda!359201))))

(assert (=> bs!1645993 (not (= lambda!359219 lambda!359214))))

(assert (=> bs!1645984 (not (= lambda!359219 lambda!359215))))

(assert (=> bs!1645994 (not (= lambda!359219 lambda!359203))))

(assert (=> bs!1645987 (= lambda!359219 lambda!359122)))

(assert (=> bs!1645991 (not (= lambda!359219 lambda!359212))))

(assert (=> bs!1645995 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (regOne!33246 lt!2388865)) (= (regTwo!33246 r!7292) (regTwo!33246 lt!2388865))) (= lambda!359219 lambda!359204))))

(assert (=> bs!1645992 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359219 lambda!359202))))

(assert (=> bs!1645986 (not (= lambda!359219 lambda!359123))))

(assert (=> bs!1645996 (= (and (= lt!2388865 (regOne!33246 lt!2388855)) (= (regTwo!33246 r!7292) (regTwo!33246 lt!2388855))) (= lambda!359219 lambda!359190))))

(assert (=> bs!1645989 (not (= lambda!359219 lambda!359118))))

(assert (=> bs!1645997 (not (= lambda!359219 lambda!359217))))

(assert (=> bs!1645998 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359219 lambda!359196))))

(assert (=> d!2035165 true))

(assert (=> d!2035165 true))

(assert (=> d!2035165 true))

(assert (=> d!2035165 (= (Exists!3437 lambda!359218) (Exists!3437 lambda!359219))))

(declare-fun lt!2389106 () Unit!158799)

(assert (=> d!2035165 (= lt!2389106 (choose!48165 lt!2388865 (regTwo!33246 r!7292) s!2326))))

(assert (=> d!2035165 (validRegex!8103 lt!2388865)))

(assert (=> d!2035165 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1974 lt!2388865 (regTwo!33246 r!7292) s!2326) lt!2389106)))

(declare-fun m!7276192 () Bool)

(assert (=> bs!1645999 m!7276192))

(declare-fun m!7276194 () Bool)

(assert (=> bs!1645999 m!7276194))

(declare-fun m!7276196 () Bool)

(assert (=> bs!1645999 m!7276196))

(assert (=> bs!1645999 m!7275850))

(assert (=> b!6486656 d!2035165))

(declare-fun b!6487694 () Bool)

(declare-fun res!2664535 () Bool)

(declare-fun e!3931906 () Bool)

(assert (=> b!6487694 (=> (not res!2664535) (not e!3931906))))

(declare-fun lt!2389108 () Option!16258)

(assert (=> b!6487694 (= res!2664535 (matchR!8550 (regTwo!33246 r!7292) (_2!36649 (get!22634 lt!2389108))))))

(declare-fun b!6487695 () Bool)

(declare-fun e!3931902 () Option!16258)

(assert (=> b!6487695 (= e!3931902 None!16257)))

(declare-fun b!6487696 () Bool)

(assert (=> b!6487696 (= e!3931906 (= (++!14444 (_1!36649 (get!22634 lt!2389108)) (_2!36649 (get!22634 lt!2389108))) s!2326))))

(declare-fun b!6487697 () Bool)

(declare-fun res!2664537 () Bool)

(assert (=> b!6487697 (=> (not res!2664537) (not e!3931906))))

(assert (=> b!6487697 (= res!2664537 (matchR!8550 lt!2388865 (_1!36649 (get!22634 lt!2389108))))))

(declare-fun d!2035167 () Bool)

(declare-fun e!3931904 () Bool)

(assert (=> d!2035167 e!3931904))

(declare-fun res!2664536 () Bool)

(assert (=> d!2035167 (=> res!2664536 e!3931904)))

(assert (=> d!2035167 (= res!2664536 e!3931906)))

(declare-fun res!2664539 () Bool)

(assert (=> d!2035167 (=> (not res!2664539) (not e!3931906))))

(assert (=> d!2035167 (= res!2664539 (isDefined!12961 lt!2389108))))

(declare-fun e!3931905 () Option!16258)

(assert (=> d!2035167 (= lt!2389108 e!3931905)))

(declare-fun c!1188658 () Bool)

(declare-fun e!3931903 () Bool)

(assert (=> d!2035167 (= c!1188658 e!3931903)))

(declare-fun res!2664538 () Bool)

(assert (=> d!2035167 (=> (not res!2664538) (not e!3931903))))

(assert (=> d!2035167 (= res!2664538 (matchR!8550 lt!2388865 Nil!65276))))

(assert (=> d!2035167 (validRegex!8103 lt!2388865)))

(assert (=> d!2035167 (= (findConcatSeparation!2672 lt!2388865 (regTwo!33246 r!7292) Nil!65276 s!2326 s!2326) lt!2389108)))

(declare-fun b!6487698 () Bool)

(assert (=> b!6487698 (= e!3931905 (Some!16257 (tuple2!66693 Nil!65276 s!2326)))))

(declare-fun b!6487699 () Bool)

(assert (=> b!6487699 (= e!3931903 (matchR!8550 (regTwo!33246 r!7292) s!2326))))

(declare-fun b!6487700 () Bool)

(assert (=> b!6487700 (= e!3931904 (not (isDefined!12961 lt!2389108)))))

(declare-fun b!6487701 () Bool)

(declare-fun lt!2389109 () Unit!158799)

(declare-fun lt!2389107 () Unit!158799)

(assert (=> b!6487701 (= lt!2389109 lt!2389107)))

(assert (=> b!6487701 (= (++!14444 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (t!379026 s!2326)) s!2326)))

(assert (=> b!6487701 (= lt!2389107 (lemmaMoveElementToOtherListKeepsConcatEq!2522 Nil!65276 (h!71724 s!2326) (t!379026 s!2326) s!2326))))

(assert (=> b!6487701 (= e!3931902 (findConcatSeparation!2672 lt!2388865 (regTwo!33246 r!7292) (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (t!379026 s!2326) s!2326))))

(declare-fun b!6487702 () Bool)

(assert (=> b!6487702 (= e!3931905 e!3931902)))

(declare-fun c!1188659 () Bool)

(assert (=> b!6487702 (= c!1188659 ((_ is Nil!65276) s!2326))))

(assert (= (and d!2035167 res!2664538) b!6487699))

(assert (= (and d!2035167 c!1188658) b!6487698))

(assert (= (and d!2035167 (not c!1188658)) b!6487702))

(assert (= (and b!6487702 c!1188659) b!6487695))

(assert (= (and b!6487702 (not c!1188659)) b!6487701))

(assert (= (and d!2035167 res!2664539) b!6487697))

(assert (= (and b!6487697 res!2664537) b!6487694))

(assert (= (and b!6487694 res!2664535) b!6487696))

(assert (= (and d!2035167 (not res!2664536)) b!6487700))

(declare-fun m!7276198 () Bool)

(assert (=> b!6487696 m!7276198))

(declare-fun m!7276200 () Bool)

(assert (=> b!6487696 m!7276200))

(declare-fun m!7276202 () Bool)

(assert (=> b!6487700 m!7276202))

(assert (=> b!6487694 m!7276198))

(declare-fun m!7276204 () Bool)

(assert (=> b!6487694 m!7276204))

(assert (=> b!6487701 m!7276150))

(assert (=> b!6487701 m!7276150))

(assert (=> b!6487701 m!7276152))

(assert (=> b!6487701 m!7276154))

(assert (=> b!6487701 m!7276150))

(declare-fun m!7276206 () Bool)

(assert (=> b!6487701 m!7276206))

(assert (=> b!6487699 m!7276158))

(assert (=> d!2035167 m!7276202))

(declare-fun m!7276208 () Bool)

(assert (=> d!2035167 m!7276208))

(assert (=> d!2035167 m!7275850))

(assert (=> b!6487697 m!7276198))

(declare-fun m!7276210 () Bool)

(assert (=> b!6487697 m!7276210))

(assert (=> b!6486656 d!2035167))

(declare-fun d!2035169 () Bool)

(assert (=> d!2035169 (= (Exists!3437 lambda!359121) (choose!48164 lambda!359121))))

(declare-fun bs!1646000 () Bool)

(assert (= bs!1646000 d!2035169))

(declare-fun m!7276212 () Bool)

(assert (=> bs!1646000 m!7276212))

(assert (=> b!6486656 d!2035169))

(declare-fun d!2035171 () Bool)

(assert (=> d!2035171 (= (Exists!3437 lambda!359122) (choose!48164 lambda!359122))))

(declare-fun bs!1646001 () Bool)

(assert (= bs!1646001 d!2035171))

(declare-fun m!7276214 () Bool)

(assert (=> bs!1646001 m!7276214))

(assert (=> b!6486656 d!2035171))

(declare-fun bs!1646002 () Bool)

(declare-fun d!2035173 () Bool)

(assert (= bs!1646002 (and d!2035173 b!6486640)))

(declare-fun lambda!359222 () Int)

(assert (=> bs!1646002 (= lambda!359222 lambda!359126)))

(declare-fun bs!1646003 () Bool)

(assert (= bs!1646003 (and d!2035173 d!2035009)))

(assert (=> bs!1646003 (= lambda!359222 lambda!359178)))

(declare-fun bs!1646004 () Bool)

(assert (= bs!1646004 (and d!2035173 d!2035083)))

(assert (=> bs!1646004 (= lambda!359222 lambda!359184)))

(declare-fun bs!1646005 () Bool)

(assert (= bs!1646005 (and d!2035173 d!2035073)))

(assert (=> bs!1646005 (= lambda!359222 lambda!359181)))

(declare-fun bs!1646006 () Bool)

(assert (= bs!1646006 (and d!2035173 d!2035109)))

(assert (=> bs!1646006 (= lambda!359222 lambda!359194)))

(declare-fun b!6487723 () Bool)

(declare-fun e!3931923 () Bool)

(declare-fun lt!2389112 () Regex!16367)

(declare-fun isConcat!1282 (Regex!16367) Bool)

(assert (=> b!6487723 (= e!3931923 (isConcat!1282 lt!2389112))))

(declare-fun b!6487724 () Bool)

(declare-fun e!3931924 () Regex!16367)

(assert (=> b!6487724 (= e!3931924 (h!71725 (exprs!6251 (h!71726 zl!343))))))

(declare-fun e!3931919 () Bool)

(assert (=> d!2035173 e!3931919))

(declare-fun res!2664544 () Bool)

(assert (=> d!2035173 (=> (not res!2664544) (not e!3931919))))

(assert (=> d!2035173 (= res!2664544 (validRegex!8103 lt!2389112))))

(assert (=> d!2035173 (= lt!2389112 e!3931924)))

(declare-fun c!1188669 () Bool)

(declare-fun e!3931921 () Bool)

(assert (=> d!2035173 (= c!1188669 e!3931921)))

(declare-fun res!2664545 () Bool)

(assert (=> d!2035173 (=> (not res!2664545) (not e!3931921))))

(assert (=> d!2035173 (= res!2664545 ((_ is Cons!65277) (exprs!6251 (h!71726 zl!343))))))

(assert (=> d!2035173 (forall!15550 (exprs!6251 (h!71726 zl!343)) lambda!359222)))

(assert (=> d!2035173 (= (generalisedConcat!1964 (exprs!6251 (h!71726 zl!343))) lt!2389112)))

(declare-fun b!6487725 () Bool)

(declare-fun e!3931920 () Regex!16367)

(assert (=> b!6487725 (= e!3931920 (Concat!25212 (h!71725 (exprs!6251 (h!71726 zl!343))) (generalisedConcat!1964 (t!379027 (exprs!6251 (h!71726 zl!343))))))))

(declare-fun b!6487726 () Bool)

(declare-fun e!3931922 () Bool)

(assert (=> b!6487726 (= e!3931922 e!3931923)))

(declare-fun c!1188668 () Bool)

(declare-fun tail!12295 (List!65401) List!65401)

(assert (=> b!6487726 (= c!1188668 (isEmpty!37470 (tail!12295 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun b!6487727 () Bool)

(declare-fun head!13210 (List!65401) Regex!16367)

(assert (=> b!6487727 (= e!3931923 (= lt!2389112 (head!13210 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun b!6487728 () Bool)

(assert (=> b!6487728 (= e!3931919 e!3931922)))

(declare-fun c!1188670 () Bool)

(assert (=> b!6487728 (= c!1188670 (isEmpty!37470 (exprs!6251 (h!71726 zl!343))))))

(declare-fun b!6487729 () Bool)

(assert (=> b!6487729 (= e!3931921 (isEmpty!37470 (t!379027 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun b!6487730 () Bool)

(declare-fun isEmptyExpr!1759 (Regex!16367) Bool)

(assert (=> b!6487730 (= e!3931922 (isEmptyExpr!1759 lt!2389112))))

(declare-fun b!6487731 () Bool)

(assert (=> b!6487731 (= e!3931924 e!3931920)))

(declare-fun c!1188671 () Bool)

(assert (=> b!6487731 (= c!1188671 ((_ is Cons!65277) (exprs!6251 (h!71726 zl!343))))))

(declare-fun b!6487732 () Bool)

(assert (=> b!6487732 (= e!3931920 EmptyExpr!16367)))

(assert (= (and d!2035173 res!2664545) b!6487729))

(assert (= (and d!2035173 c!1188669) b!6487724))

(assert (= (and d!2035173 (not c!1188669)) b!6487731))

(assert (= (and b!6487731 c!1188671) b!6487725))

(assert (= (and b!6487731 (not c!1188671)) b!6487732))

(assert (= (and d!2035173 res!2664544) b!6487728))

(assert (= (and b!6487728 c!1188670) b!6487730))

(assert (= (and b!6487728 (not c!1188670)) b!6487726))

(assert (= (and b!6487726 c!1188668) b!6487727))

(assert (= (and b!6487726 (not c!1188668)) b!6487723))

(declare-fun m!7276216 () Bool)

(assert (=> b!6487725 m!7276216))

(declare-fun m!7276218 () Bool)

(assert (=> b!6487730 m!7276218))

(declare-fun m!7276220 () Bool)

(assert (=> b!6487727 m!7276220))

(declare-fun m!7276222 () Bool)

(assert (=> b!6487728 m!7276222))

(assert (=> b!6487729 m!7274982))

(declare-fun m!7276224 () Bool)

(assert (=> b!6487726 m!7276224))

(assert (=> b!6487726 m!7276224))

(declare-fun m!7276226 () Bool)

(assert (=> b!6487726 m!7276226))

(declare-fun m!7276228 () Bool)

(assert (=> d!2035173 m!7276228))

(declare-fun m!7276230 () Bool)

(assert (=> d!2035173 m!7276230))

(declare-fun m!7276232 () Bool)

(assert (=> b!6487723 m!7276232))

(assert (=> b!6486613 d!2035173))

(declare-fun d!2035175 () Bool)

(assert (=> d!2035175 (= (isEmpty!37468 (_1!36649 lt!2388900)) ((_ is Nil!65276) (_1!36649 lt!2388900)))))

(assert (=> b!6486614 d!2035175))

(declare-fun e!3931927 () Bool)

(declare-fun d!2035177 () Bool)

(assert (=> d!2035177 (= (matchZipper!2379 ((_ map or) lt!2388893 lt!2388867) (t!379026 s!2326)) e!3931927)))

(declare-fun res!2664548 () Bool)

(assert (=> d!2035177 (=> res!2664548 e!3931927)))

(assert (=> d!2035177 (= res!2664548 (matchZipper!2379 lt!2388893 (t!379026 s!2326)))))

(declare-fun lt!2389115 () Unit!158799)

(declare-fun choose!48168 ((InoxSet Context!11502) (InoxSet Context!11502) List!65400) Unit!158799)

(assert (=> d!2035177 (= lt!2389115 (choose!48168 lt!2388893 lt!2388867 (t!379026 s!2326)))))

(assert (=> d!2035177 (= (lemmaZipperConcatMatchesSameAsBothZippers!1198 lt!2388893 lt!2388867 (t!379026 s!2326)) lt!2389115)))

(declare-fun b!6487735 () Bool)

(assert (=> b!6487735 (= e!3931927 (matchZipper!2379 lt!2388867 (t!379026 s!2326)))))

(assert (= (and d!2035177 (not res!2664548)) b!6487735))

(assert (=> d!2035177 m!7274916))

(assert (=> d!2035177 m!7274914))

(declare-fun m!7276234 () Bool)

(assert (=> d!2035177 m!7276234))

(assert (=> b!6487735 m!7275074))

(assert (=> b!6486633 d!2035177))

(declare-fun d!2035179 () Bool)

(declare-fun c!1188672 () Bool)

(assert (=> d!2035179 (= c!1188672 (isEmpty!37468 (t!379026 s!2326)))))

(declare-fun e!3931928 () Bool)

(assert (=> d!2035179 (= (matchZipper!2379 lt!2388893 (t!379026 s!2326)) e!3931928)))

(declare-fun b!6487736 () Bool)

(assert (=> b!6487736 (= e!3931928 (nullableZipper!2124 lt!2388893))))

(declare-fun b!6487737 () Bool)

(assert (=> b!6487737 (= e!3931928 (matchZipper!2379 (derivationStepZipper!2333 lt!2388893 (head!13209 (t!379026 s!2326))) (tail!12294 (t!379026 s!2326))))))

(assert (= (and d!2035179 c!1188672) b!6487736))

(assert (= (and d!2035179 (not c!1188672)) b!6487737))

(assert (=> d!2035179 m!7275858))

(declare-fun m!7276236 () Bool)

(assert (=> b!6487736 m!7276236))

(assert (=> b!6487737 m!7275862))

(assert (=> b!6487737 m!7275862))

(declare-fun m!7276238 () Bool)

(assert (=> b!6487737 m!7276238))

(assert (=> b!6487737 m!7275866))

(assert (=> b!6487737 m!7276238))

(assert (=> b!6487737 m!7275866))

(declare-fun m!7276240 () Bool)

(assert (=> b!6487737 m!7276240))

(assert (=> b!6486633 d!2035179))

(declare-fun d!2035181 () Bool)

(declare-fun c!1188673 () Bool)

(assert (=> d!2035181 (= c!1188673 (isEmpty!37468 (t!379026 s!2326)))))

(declare-fun e!3931929 () Bool)

(assert (=> d!2035181 (= (matchZipper!2379 ((_ map or) lt!2388893 lt!2388867) (t!379026 s!2326)) e!3931929)))

(declare-fun b!6487738 () Bool)

(assert (=> b!6487738 (= e!3931929 (nullableZipper!2124 ((_ map or) lt!2388893 lt!2388867)))))

(declare-fun b!6487739 () Bool)

(assert (=> b!6487739 (= e!3931929 (matchZipper!2379 (derivationStepZipper!2333 ((_ map or) lt!2388893 lt!2388867) (head!13209 (t!379026 s!2326))) (tail!12294 (t!379026 s!2326))))))

(assert (= (and d!2035181 c!1188673) b!6487738))

(assert (= (and d!2035181 (not c!1188673)) b!6487739))

(assert (=> d!2035181 m!7275858))

(declare-fun m!7276242 () Bool)

(assert (=> b!6487738 m!7276242))

(assert (=> b!6487739 m!7275862))

(assert (=> b!6487739 m!7275862))

(declare-fun m!7276244 () Bool)

(assert (=> b!6487739 m!7276244))

(assert (=> b!6487739 m!7275866))

(assert (=> b!6487739 m!7276244))

(assert (=> b!6487739 m!7275866))

(declare-fun m!7276246 () Bool)

(assert (=> b!6487739 m!7276246))

(assert (=> b!6486633 d!2035181))

(declare-fun bs!1646007 () Bool)

(declare-fun d!2035183 () Bool)

(assert (= bs!1646007 (and d!2035183 b!6486640)))

(declare-fun lambda!359225 () Int)

(assert (=> bs!1646007 (= lambda!359225 lambda!359126)))

(declare-fun bs!1646008 () Bool)

(assert (= bs!1646008 (and d!2035183 d!2035173)))

(assert (=> bs!1646008 (= lambda!359225 lambda!359222)))

(declare-fun bs!1646009 () Bool)

(assert (= bs!1646009 (and d!2035183 d!2035009)))

(assert (=> bs!1646009 (= lambda!359225 lambda!359178)))

(declare-fun bs!1646010 () Bool)

(assert (= bs!1646010 (and d!2035183 d!2035083)))

(assert (=> bs!1646010 (= lambda!359225 lambda!359184)))

(declare-fun bs!1646011 () Bool)

(assert (= bs!1646011 (and d!2035183 d!2035073)))

(assert (=> bs!1646011 (= lambda!359225 lambda!359181)))

(declare-fun bs!1646012 () Bool)

(assert (= bs!1646012 (and d!2035183 d!2035109)))

(assert (=> bs!1646012 (= lambda!359225 lambda!359194)))

(declare-fun b!6487760 () Bool)

(declare-fun e!3931945 () Bool)

(assert (=> b!6487760 (= e!3931945 (isEmpty!37470 (t!379027 (unfocusZipperList!1788 zl!343))))))

(declare-fun b!6487761 () Bool)

(declare-fun e!3931944 () Bool)

(declare-fun lt!2389118 () Regex!16367)

(assert (=> b!6487761 (= e!3931944 (= lt!2389118 (head!13210 (unfocusZipperList!1788 zl!343))))))

(declare-fun b!6487762 () Bool)

(declare-fun isUnion!1197 (Regex!16367) Bool)

(assert (=> b!6487762 (= e!3931944 (isUnion!1197 lt!2389118))))

(declare-fun b!6487763 () Bool)

(declare-fun e!3931942 () Regex!16367)

(assert (=> b!6487763 (= e!3931942 (h!71725 (unfocusZipperList!1788 zl!343)))))

(declare-fun b!6487764 () Bool)

(declare-fun e!3931946 () Bool)

(declare-fun e!3931947 () Bool)

(assert (=> b!6487764 (= e!3931946 e!3931947)))

(declare-fun c!1188682 () Bool)

(assert (=> b!6487764 (= c!1188682 (isEmpty!37470 (unfocusZipperList!1788 zl!343)))))

(declare-fun b!6487765 () Bool)

(assert (=> b!6487765 (= e!3931947 e!3931944)))

(declare-fun c!1188684 () Bool)

(assert (=> b!6487765 (= c!1188684 (isEmpty!37470 (tail!12295 (unfocusZipperList!1788 zl!343))))))

(assert (=> d!2035183 e!3931946))

(declare-fun res!2664554 () Bool)

(assert (=> d!2035183 (=> (not res!2664554) (not e!3931946))))

(assert (=> d!2035183 (= res!2664554 (validRegex!8103 lt!2389118))))

(assert (=> d!2035183 (= lt!2389118 e!3931942)))

(declare-fun c!1188683 () Bool)

(assert (=> d!2035183 (= c!1188683 e!3931945)))

(declare-fun res!2664553 () Bool)

(assert (=> d!2035183 (=> (not res!2664553) (not e!3931945))))

(assert (=> d!2035183 (= res!2664553 ((_ is Cons!65277) (unfocusZipperList!1788 zl!343)))))

(assert (=> d!2035183 (forall!15550 (unfocusZipperList!1788 zl!343) lambda!359225)))

(assert (=> d!2035183 (= (generalisedUnion!2211 (unfocusZipperList!1788 zl!343)) lt!2389118)))

(declare-fun b!6487766 () Bool)

(declare-fun e!3931943 () Regex!16367)

(assert (=> b!6487766 (= e!3931943 EmptyLang!16367)))

(declare-fun b!6487767 () Bool)

(assert (=> b!6487767 (= e!3931943 (Union!16367 (h!71725 (unfocusZipperList!1788 zl!343)) (generalisedUnion!2211 (t!379027 (unfocusZipperList!1788 zl!343)))))))

(declare-fun b!6487768 () Bool)

(assert (=> b!6487768 (= e!3931942 e!3931943)))

(declare-fun c!1188685 () Bool)

(assert (=> b!6487768 (= c!1188685 ((_ is Cons!65277) (unfocusZipperList!1788 zl!343)))))

(declare-fun b!6487769 () Bool)

(declare-fun isEmptyLang!1767 (Regex!16367) Bool)

(assert (=> b!6487769 (= e!3931947 (isEmptyLang!1767 lt!2389118))))

(assert (= (and d!2035183 res!2664553) b!6487760))

(assert (= (and d!2035183 c!1188683) b!6487763))

(assert (= (and d!2035183 (not c!1188683)) b!6487768))

(assert (= (and b!6487768 c!1188685) b!6487767))

(assert (= (and b!6487768 (not c!1188685)) b!6487766))

(assert (= (and d!2035183 res!2664554) b!6487764))

(assert (= (and b!6487764 c!1188682) b!6487769))

(assert (= (and b!6487764 (not c!1188682)) b!6487765))

(assert (= (and b!6487765 c!1188684) b!6487761))

(assert (= (and b!6487765 (not c!1188684)) b!6487762))

(declare-fun m!7276248 () Bool)

(assert (=> d!2035183 m!7276248))

(assert (=> d!2035183 m!7274978))

(declare-fun m!7276250 () Bool)

(assert (=> d!2035183 m!7276250))

(assert (=> b!6487764 m!7274978))

(declare-fun m!7276252 () Bool)

(assert (=> b!6487764 m!7276252))

(assert (=> b!6487761 m!7274978))

(declare-fun m!7276254 () Bool)

(assert (=> b!6487761 m!7276254))

(declare-fun m!7276256 () Bool)

(assert (=> b!6487769 m!7276256))

(assert (=> b!6487765 m!7274978))

(declare-fun m!7276258 () Bool)

(assert (=> b!6487765 m!7276258))

(assert (=> b!6487765 m!7276258))

(declare-fun m!7276260 () Bool)

(assert (=> b!6487765 m!7276260))

(declare-fun m!7276262 () Bool)

(assert (=> b!6487762 m!7276262))

(declare-fun m!7276264 () Bool)

(assert (=> b!6487767 m!7276264))

(declare-fun m!7276266 () Bool)

(assert (=> b!6487760 m!7276266))

(assert (=> b!6486634 d!2035183))

(declare-fun bs!1646013 () Bool)

(declare-fun d!2035185 () Bool)

(assert (= bs!1646013 (and d!2035185 b!6486640)))

(declare-fun lambda!359228 () Int)

(assert (=> bs!1646013 (= lambda!359228 lambda!359126)))

(declare-fun bs!1646014 () Bool)

(assert (= bs!1646014 (and d!2035185 d!2035183)))

(assert (=> bs!1646014 (= lambda!359228 lambda!359225)))

(declare-fun bs!1646015 () Bool)

(assert (= bs!1646015 (and d!2035185 d!2035173)))

(assert (=> bs!1646015 (= lambda!359228 lambda!359222)))

(declare-fun bs!1646016 () Bool)

(assert (= bs!1646016 (and d!2035185 d!2035009)))

(assert (=> bs!1646016 (= lambda!359228 lambda!359178)))

(declare-fun bs!1646017 () Bool)

(assert (= bs!1646017 (and d!2035185 d!2035083)))

(assert (=> bs!1646017 (= lambda!359228 lambda!359184)))

(declare-fun bs!1646018 () Bool)

(assert (= bs!1646018 (and d!2035185 d!2035073)))

(assert (=> bs!1646018 (= lambda!359228 lambda!359181)))

(declare-fun bs!1646019 () Bool)

(assert (= bs!1646019 (and d!2035185 d!2035109)))

(assert (=> bs!1646019 (= lambda!359228 lambda!359194)))

(declare-fun lt!2389121 () List!65401)

(assert (=> d!2035185 (forall!15550 lt!2389121 lambda!359228)))

(declare-fun e!3931950 () List!65401)

(assert (=> d!2035185 (= lt!2389121 e!3931950)))

(declare-fun c!1188688 () Bool)

(assert (=> d!2035185 (= c!1188688 ((_ is Cons!65278) zl!343))))

(assert (=> d!2035185 (= (unfocusZipperList!1788 zl!343) lt!2389121)))

(declare-fun b!6487774 () Bool)

(assert (=> b!6487774 (= e!3931950 (Cons!65277 (generalisedConcat!1964 (exprs!6251 (h!71726 zl!343))) (unfocusZipperList!1788 (t!379028 zl!343))))))

(declare-fun b!6487775 () Bool)

(assert (=> b!6487775 (= e!3931950 Nil!65277)))

(assert (= (and d!2035185 c!1188688) b!6487774))

(assert (= (and d!2035185 (not c!1188688)) b!6487775))

(declare-fun m!7276268 () Bool)

(assert (=> d!2035185 m!7276268))

(assert (=> b!6487774 m!7274930))

(declare-fun m!7276270 () Bool)

(assert (=> b!6487774 m!7276270))

(assert (=> b!6486634 d!2035185))

(declare-fun b!6487776 () Bool)

(declare-fun res!2664559 () Bool)

(declare-fun e!3931951 () Bool)

(assert (=> b!6487776 (=> res!2664559 e!3931951)))

(assert (=> b!6487776 (= res!2664559 (not (isEmpty!37468 (tail!12294 (_1!36649 lt!2388900)))))))

(declare-fun b!6487778 () Bool)

(declare-fun e!3931956 () Bool)

(assert (=> b!6487778 (= e!3931956 (= (head!13209 (_1!36649 lt!2388900)) (c!1188383 lt!2388865)))))

(declare-fun b!6487779 () Bool)

(declare-fun res!2664556 () Bool)

(declare-fun e!3931953 () Bool)

(assert (=> b!6487779 (=> res!2664556 e!3931953)))

(assert (=> b!6487779 (= res!2664556 e!3931956)))

(declare-fun res!2664557 () Bool)

(assert (=> b!6487779 (=> (not res!2664557) (not e!3931956))))

(declare-fun lt!2389122 () Bool)

(assert (=> b!6487779 (= res!2664557 lt!2389122)))

(declare-fun b!6487780 () Bool)

(declare-fun e!3931957 () Bool)

(assert (=> b!6487780 (= e!3931957 e!3931951)))

(declare-fun res!2664562 () Bool)

(assert (=> b!6487780 (=> res!2664562 e!3931951)))

(declare-fun call!561505 () Bool)

(assert (=> b!6487780 (= res!2664562 call!561505)))

(declare-fun b!6487781 () Bool)

(declare-fun res!2664560 () Bool)

(assert (=> b!6487781 (=> res!2664560 e!3931953)))

(assert (=> b!6487781 (= res!2664560 (not ((_ is ElementMatch!16367) lt!2388865)))))

(declare-fun e!3931952 () Bool)

(assert (=> b!6487781 (= e!3931952 e!3931953)))

(declare-fun bm!561500 () Bool)

(assert (=> bm!561500 (= call!561505 (isEmpty!37468 (_1!36649 lt!2388900)))))

(declare-fun b!6487782 () Bool)

(assert (=> b!6487782 (= e!3931953 e!3931957)))

(declare-fun res!2664558 () Bool)

(assert (=> b!6487782 (=> (not res!2664558) (not e!3931957))))

(assert (=> b!6487782 (= res!2664558 (not lt!2389122))))

(declare-fun b!6487783 () Bool)

(declare-fun e!3931954 () Bool)

(assert (=> b!6487783 (= e!3931954 e!3931952)))

(declare-fun c!1188691 () Bool)

(assert (=> b!6487783 (= c!1188691 ((_ is EmptyLang!16367) lt!2388865))))

(declare-fun b!6487784 () Bool)

(declare-fun res!2664561 () Bool)

(assert (=> b!6487784 (=> (not res!2664561) (not e!3931956))))

(assert (=> b!6487784 (= res!2664561 (isEmpty!37468 (tail!12294 (_1!36649 lt!2388900))))))

(declare-fun b!6487785 () Bool)

(declare-fun e!3931955 () Bool)

(assert (=> b!6487785 (= e!3931955 (nullable!6360 lt!2388865))))

(declare-fun b!6487786 () Bool)

(assert (=> b!6487786 (= e!3931954 (= lt!2389122 call!561505))))

(declare-fun b!6487787 () Bool)

(declare-fun res!2664555 () Bool)

(assert (=> b!6487787 (=> (not res!2664555) (not e!3931956))))

(assert (=> b!6487787 (= res!2664555 (not call!561505))))

(declare-fun b!6487788 () Bool)

(assert (=> b!6487788 (= e!3931952 (not lt!2389122))))

(declare-fun b!6487789 () Bool)

(assert (=> b!6487789 (= e!3931951 (not (= (head!13209 (_1!36649 lt!2388900)) (c!1188383 lt!2388865))))))

(declare-fun d!2035187 () Bool)

(assert (=> d!2035187 e!3931954))

(declare-fun c!1188690 () Bool)

(assert (=> d!2035187 (= c!1188690 ((_ is EmptyExpr!16367) lt!2388865))))

(assert (=> d!2035187 (= lt!2389122 e!3931955)))

(declare-fun c!1188689 () Bool)

(assert (=> d!2035187 (= c!1188689 (isEmpty!37468 (_1!36649 lt!2388900)))))

(assert (=> d!2035187 (validRegex!8103 lt!2388865)))

(assert (=> d!2035187 (= (matchR!8550 lt!2388865 (_1!36649 lt!2388900)) lt!2389122)))

(declare-fun b!6487777 () Bool)

(assert (=> b!6487777 (= e!3931955 (matchR!8550 (derivativeStep!5063 lt!2388865 (head!13209 (_1!36649 lt!2388900))) (tail!12294 (_1!36649 lt!2388900))))))

(assert (= (and d!2035187 c!1188689) b!6487785))

(assert (= (and d!2035187 (not c!1188689)) b!6487777))

(assert (= (and d!2035187 c!1188690) b!6487786))

(assert (= (and d!2035187 (not c!1188690)) b!6487783))

(assert (= (and b!6487783 c!1188691) b!6487788))

(assert (= (and b!6487783 (not c!1188691)) b!6487781))

(assert (= (and b!6487781 (not res!2664560)) b!6487779))

(assert (= (and b!6487779 res!2664557) b!6487787))

(assert (= (and b!6487787 res!2664555) b!6487784))

(assert (= (and b!6487784 res!2664561) b!6487778))

(assert (= (and b!6487779 (not res!2664556)) b!6487782))

(assert (= (and b!6487782 res!2664558) b!6487780))

(assert (= (and b!6487780 (not res!2664562)) b!6487776))

(assert (= (and b!6487776 (not res!2664559)) b!6487789))

(assert (= (or b!6487786 b!6487780 b!6487787) bm!561500))

(declare-fun m!7276272 () Bool)

(assert (=> b!6487776 m!7276272))

(assert (=> b!6487776 m!7276272))

(declare-fun m!7276274 () Bool)

(assert (=> b!6487776 m!7276274))

(assert (=> b!6487785 m!7275846))

(assert (=> d!2035187 m!7275006))

(assert (=> d!2035187 m!7275850))

(assert (=> b!6487784 m!7276272))

(assert (=> b!6487784 m!7276272))

(assert (=> b!6487784 m!7276274))

(declare-fun m!7276276 () Bool)

(assert (=> b!6487789 m!7276276))

(assert (=> b!6487778 m!7276276))

(assert (=> b!6487777 m!7276276))

(assert (=> b!6487777 m!7276276))

(declare-fun m!7276278 () Bool)

(assert (=> b!6487777 m!7276278))

(assert (=> b!6487777 m!7276272))

(assert (=> b!6487777 m!7276278))

(assert (=> b!6487777 m!7276272))

(declare-fun m!7276280 () Bool)

(assert (=> b!6487777 m!7276280))

(assert (=> bm!561500 m!7275006))

(assert (=> b!6486652 d!2035187))

(declare-fun b!6487803 () Bool)

(declare-fun e!3931960 () Bool)

(declare-fun tp!1796260 () Bool)

(declare-fun tp!1796258 () Bool)

(assert (=> b!6487803 (= e!3931960 (and tp!1796260 tp!1796258))))

(declare-fun b!6487800 () Bool)

(assert (=> b!6487800 (= e!3931960 tp_is_empty!41987)))

(declare-fun b!6487802 () Bool)

(declare-fun tp!1796261 () Bool)

(assert (=> b!6487802 (= e!3931960 tp!1796261)))

(declare-fun b!6487801 () Bool)

(declare-fun tp!1796259 () Bool)

(declare-fun tp!1796257 () Bool)

(assert (=> b!6487801 (= e!3931960 (and tp!1796259 tp!1796257))))

(assert (=> b!6486650 (= tp!1796185 e!3931960)))

(assert (= (and b!6486650 ((_ is ElementMatch!16367) (reg!16696 r!7292))) b!6487800))

(assert (= (and b!6486650 ((_ is Concat!25212) (reg!16696 r!7292))) b!6487801))

(assert (= (and b!6486650 ((_ is Star!16367) (reg!16696 r!7292))) b!6487802))

(assert (= (and b!6486650 ((_ is Union!16367) (reg!16696 r!7292))) b!6487803))

(declare-fun b!6487807 () Bool)

(declare-fun e!3931961 () Bool)

(declare-fun tp!1796265 () Bool)

(declare-fun tp!1796263 () Bool)

(assert (=> b!6487807 (= e!3931961 (and tp!1796265 tp!1796263))))

(declare-fun b!6487804 () Bool)

(assert (=> b!6487804 (= e!3931961 tp_is_empty!41987)))

(declare-fun b!6487806 () Bool)

(declare-fun tp!1796266 () Bool)

(assert (=> b!6487806 (= e!3931961 tp!1796266)))

(declare-fun b!6487805 () Bool)

(declare-fun tp!1796264 () Bool)

(declare-fun tp!1796262 () Bool)

(assert (=> b!6487805 (= e!3931961 (and tp!1796264 tp!1796262))))

(assert (=> b!6486654 (= tp!1796180 e!3931961)))

(assert (= (and b!6486654 ((_ is ElementMatch!16367) (regOne!33246 r!7292))) b!6487804))

(assert (= (and b!6486654 ((_ is Concat!25212) (regOne!33246 r!7292))) b!6487805))

(assert (= (and b!6486654 ((_ is Star!16367) (regOne!33246 r!7292))) b!6487806))

(assert (= (and b!6486654 ((_ is Union!16367) (regOne!33246 r!7292))) b!6487807))

(declare-fun b!6487811 () Bool)

(declare-fun e!3931962 () Bool)

(declare-fun tp!1796270 () Bool)

(declare-fun tp!1796268 () Bool)

(assert (=> b!6487811 (= e!3931962 (and tp!1796270 tp!1796268))))

(declare-fun b!6487808 () Bool)

(assert (=> b!6487808 (= e!3931962 tp_is_empty!41987)))

(declare-fun b!6487810 () Bool)

(declare-fun tp!1796271 () Bool)

(assert (=> b!6487810 (= e!3931962 tp!1796271)))

(declare-fun b!6487809 () Bool)

(declare-fun tp!1796269 () Bool)

(declare-fun tp!1796267 () Bool)

(assert (=> b!6487809 (= e!3931962 (and tp!1796269 tp!1796267))))

(assert (=> b!6486654 (= tp!1796181 e!3931962)))

(assert (= (and b!6486654 ((_ is ElementMatch!16367) (regTwo!33246 r!7292))) b!6487808))

(assert (= (and b!6486654 ((_ is Concat!25212) (regTwo!33246 r!7292))) b!6487809))

(assert (= (and b!6486654 ((_ is Star!16367) (regTwo!33246 r!7292))) b!6487810))

(assert (= (and b!6486654 ((_ is Union!16367) (regTwo!33246 r!7292))) b!6487811))

(declare-fun b!6487816 () Bool)

(declare-fun e!3931965 () Bool)

(declare-fun tp!1796276 () Bool)

(declare-fun tp!1796277 () Bool)

(assert (=> b!6487816 (= e!3931965 (and tp!1796276 tp!1796277))))

(assert (=> b!6486624 (= tp!1796183 e!3931965)))

(assert (= (and b!6486624 ((_ is Cons!65277) (exprs!6251 (h!71726 zl!343)))) b!6487816))

(declare-fun b!6487821 () Bool)

(declare-fun e!3931968 () Bool)

(declare-fun tp!1796280 () Bool)

(assert (=> b!6487821 (= e!3931968 (and tp_is_empty!41987 tp!1796280))))

(assert (=> b!6486635 (= tp!1796184 e!3931968)))

(assert (= (and b!6486635 ((_ is Cons!65276) (t!379026 s!2326))) b!6487821))

(declare-fun b!6487825 () Bool)

(declare-fun e!3931969 () Bool)

(declare-fun tp!1796284 () Bool)

(declare-fun tp!1796282 () Bool)

(assert (=> b!6487825 (= e!3931969 (and tp!1796284 tp!1796282))))

(declare-fun b!6487822 () Bool)

(assert (=> b!6487822 (= e!3931969 tp_is_empty!41987)))

(declare-fun b!6487824 () Bool)

(declare-fun tp!1796285 () Bool)

(assert (=> b!6487824 (= e!3931969 tp!1796285)))

(declare-fun b!6487823 () Bool)

(declare-fun tp!1796283 () Bool)

(declare-fun tp!1796281 () Bool)

(assert (=> b!6487823 (= e!3931969 (and tp!1796283 tp!1796281))))

(assert (=> b!6486630 (= tp!1796188 e!3931969)))

(assert (= (and b!6486630 ((_ is ElementMatch!16367) (regOne!33247 r!7292))) b!6487822))

(assert (= (and b!6486630 ((_ is Concat!25212) (regOne!33247 r!7292))) b!6487823))

(assert (= (and b!6486630 ((_ is Star!16367) (regOne!33247 r!7292))) b!6487824))

(assert (= (and b!6486630 ((_ is Union!16367) (regOne!33247 r!7292))) b!6487825))

(declare-fun b!6487829 () Bool)

(declare-fun e!3931970 () Bool)

(declare-fun tp!1796289 () Bool)

(declare-fun tp!1796287 () Bool)

(assert (=> b!6487829 (= e!3931970 (and tp!1796289 tp!1796287))))

(declare-fun b!6487826 () Bool)

(assert (=> b!6487826 (= e!3931970 tp_is_empty!41987)))

(declare-fun b!6487828 () Bool)

(declare-fun tp!1796290 () Bool)

(assert (=> b!6487828 (= e!3931970 tp!1796290)))

(declare-fun b!6487827 () Bool)

(declare-fun tp!1796288 () Bool)

(declare-fun tp!1796286 () Bool)

(assert (=> b!6487827 (= e!3931970 (and tp!1796288 tp!1796286))))

(assert (=> b!6486630 (= tp!1796187 e!3931970)))

(assert (= (and b!6486630 ((_ is ElementMatch!16367) (regTwo!33247 r!7292))) b!6487826))

(assert (= (and b!6486630 ((_ is Concat!25212) (regTwo!33247 r!7292))) b!6487827))

(assert (= (and b!6486630 ((_ is Star!16367) (regTwo!33247 r!7292))) b!6487828))

(assert (= (and b!6486630 ((_ is Union!16367) (regTwo!33247 r!7292))) b!6487829))

(declare-fun condSetEmpty!44199 () Bool)

(assert (=> setNonEmpty!44193 (= condSetEmpty!44199 (= setRest!44193 ((as const (Array Context!11502 Bool)) false)))))

(declare-fun setRes!44199 () Bool)

(assert (=> setNonEmpty!44193 (= tp!1796186 setRes!44199)))

(declare-fun setIsEmpty!44199 () Bool)

(assert (=> setIsEmpty!44199 setRes!44199))

(declare-fun setNonEmpty!44199 () Bool)

(declare-fun setElem!44199 () Context!11502)

(declare-fun e!3931973 () Bool)

(declare-fun tp!1796296 () Bool)

(assert (=> setNonEmpty!44199 (= setRes!44199 (and tp!1796296 (inv!84164 setElem!44199) e!3931973))))

(declare-fun setRest!44199 () (InoxSet Context!11502))

(assert (=> setNonEmpty!44199 (= setRest!44193 ((_ map or) (store ((as const (Array Context!11502 Bool)) false) setElem!44199 true) setRest!44199))))

(declare-fun b!6487834 () Bool)

(declare-fun tp!1796295 () Bool)

(assert (=> b!6487834 (= e!3931973 tp!1796295)))

(assert (= (and setNonEmpty!44193 condSetEmpty!44199) setIsEmpty!44199))

(assert (= (and setNonEmpty!44193 (not condSetEmpty!44199)) setNonEmpty!44199))

(assert (= setNonEmpty!44199 b!6487834))

(declare-fun m!7276282 () Bool)

(assert (=> setNonEmpty!44199 m!7276282))

(declare-fun b!6487842 () Bool)

(declare-fun e!3931979 () Bool)

(declare-fun tp!1796301 () Bool)

(assert (=> b!6487842 (= e!3931979 tp!1796301)))

(declare-fun b!6487841 () Bool)

(declare-fun e!3931978 () Bool)

(declare-fun tp!1796302 () Bool)

(assert (=> b!6487841 (= e!3931978 (and (inv!84164 (h!71726 (t!379028 zl!343))) e!3931979 tp!1796302))))

(assert (=> b!6486648 (= tp!1796179 e!3931978)))

(assert (= b!6487841 b!6487842))

(assert (= (and b!6486648 ((_ is Cons!65278) (t!379028 zl!343))) b!6487841))

(declare-fun m!7276284 () Bool)

(assert (=> b!6487841 m!7276284))

(declare-fun b!6487843 () Bool)

(declare-fun e!3931980 () Bool)

(declare-fun tp!1796303 () Bool)

(declare-fun tp!1796304 () Bool)

(assert (=> b!6487843 (= e!3931980 (and tp!1796303 tp!1796304))))

(assert (=> b!6486642 (= tp!1796182 e!3931980)))

(assert (= (and b!6486642 ((_ is Cons!65277) (exprs!6251 setElem!44193))) b!6487843))

(declare-fun b_lambda!245625 () Bool)

(assert (= b_lambda!245611 (or b!6486628 b_lambda!245625)))

(declare-fun bs!1646020 () Bool)

(declare-fun d!2035189 () Bool)

(assert (= bs!1646020 (and d!2035189 b!6486628)))

(assert (=> bs!1646020 (= (dynLambda!25927 lambda!359120 lt!2388895) (derivationStepZipperUp!1541 lt!2388895 (h!71724 s!2326)))))

(assert (=> bs!1646020 m!7275064))

(assert (=> d!2035013 d!2035189))

(declare-fun b_lambda!245627 () Bool)

(assert (= b_lambda!245613 (or b!6486628 b_lambda!245627)))

(declare-fun bs!1646021 () Bool)

(declare-fun d!2035191 () Bool)

(assert (= bs!1646021 (and d!2035191 b!6486628)))

(assert (=> bs!1646021 (= (dynLambda!25927 lambda!359120 lt!2388862) (derivationStepZipperUp!1541 lt!2388862 (h!71724 s!2326)))))

(assert (=> bs!1646021 m!7275068))

(assert (=> d!2035025 d!2035191))

(declare-fun b_lambda!245629 () Bool)

(assert (= b_lambda!245609 (or b!6486628 b_lambda!245629)))

(declare-fun bs!1646022 () Bool)

(declare-fun d!2035193 () Bool)

(assert (= bs!1646022 (and d!2035193 b!6486628)))

(assert (=> bs!1646022 (= (dynLambda!25927 lambda!359120 (h!71726 zl!343)) (derivationStepZipperUp!1541 (h!71726 zl!343) (h!71724 s!2326)))))

(assert (=> bs!1646022 m!7274936))

(assert (=> d!2034965 d!2035193))

(declare-fun b_lambda!245631 () Bool)

(assert (= b_lambda!245623 (or b!6486628 b_lambda!245631)))

(declare-fun bs!1646023 () Bool)

(declare-fun d!2035195 () Bool)

(assert (= bs!1646023 (and d!2035195 b!6486628)))

(assert (=> bs!1646023 (= (dynLambda!25927 lambda!359120 lt!2388885) (derivationStepZipperUp!1541 lt!2388885 (h!71724 s!2326)))))

(assert (=> bs!1646023 m!7274904))

(assert (=> d!2035103 d!2035195))

(check-sat (not b!6487736) (not d!2035009) (not bm!561447) (not b!6487478) (not b!6487434) (not b!6487765) (not d!2034931) (not d!2035051) (not d!2035123) (not b!6487044) (not b!6487109) (not d!2035141) (not b!6487739) (not d!2034965) (not d!2035105) (not b!6487395) (not d!2035059) (not b!6487600) (not b!6487842) (not bm!561492) (not b!6487825) (not bm!561484) (not bm!561428) (not d!2035117) (not d!2035127) (not bs!1646020) (not bm!561494) (not b!6487726) (not b!6487043) (not d!2035159) (not b!6487595) (not b!6487242) (not b!6487038) (not d!2034973) (not d!2035013) (not b!6487828) (not d!2035185) (not d!2035125) (not b!6487227) (not d!2034949) (not b!6487764) (not b!6487809) (not b!6487834) (not b!6487472) (not bm!561483) (not b!6487841) (not d!2035063) (not d!2035089) (not b!6487611) (not d!2034933) (not d!2035073) (not bm!561462) (not b!6487484) (not b!6487684) (not b!6487512) (not b!6487730) (not d!2035057) (not b!6487810) (not b!6487829) (not b!6487803) (not d!2035083) (not d!2035171) (not b!6487448) (not b!6487274) (not d!2035079) (not d!2035033) (not b!6487466) (not b_lambda!245625) (not b!6487681) (not d!2035071) (not b!6487435) (not d!2035025) (not b!6487589) (not b!6487769) (not b!6487571) (not b!6487789) (not b!6487494) (not b!6487480) (not d!2035129) (not b!6487605) (not b!6487760) (not b!6487661) (not b!6487633) (not b!6487604) (not d!2035093) (not b!6487824) (not b!6487507) (not b!6487785) (not b!6487784) (not b!6487728) (not b!6487807) (not d!2035169) (not b!6487568) (not d!2035067) (not b!6487774) (not d!2035049) (not b!6487269) (not b!6487802) (not d!2035161) (not bm!561479) (not b!6487686) (not b!6487501) (not b!6487487) (not b!6487391) (not b!6487034) (not bm!561480) (not b!6487586) (not b!6487463) (not b_lambda!245627) (not d!2035187) (not b!6487767) (not b!6487683) (not b!6487447) (not b!6487425) (not b!6487723) (not b!6487656) (not b!6487584) (not b!6487725) (not d!2035113) (not b!6487777) (not d!2035099) (not b!6487445) (not b!6487616) (not b!6487390) (not b!6487514) (not b!6487701) (not b!6487761) (not b!6487421) (not b!6487762) (not b!6487515) (not d!2035179) (not d!2034953) (not d!2035069) (not d!2034963) (not b!6487481) (not b!6487659) (not bm!561422) (not b!6487816) (not d!2035015) (not bs!1646023) (not d!2035139) (not b!6487271) (not b!6487678) (not d!2035153) (not b!6487688) (not d!2035119) (not b!6487687) (not b!6487738) (not d!2035177) (not d!2035023) (not b!6487692) (not b!6487127) (not bm!561461) (not d!2035075) (not b!6487821) (not bm!561491) (not b!6487657) (not b!6487572) (not b!6487603) (not b!6487563) (not b!6487477) (not b!6487112) (not b!6487266) (not b!6487454) (not b_lambda!245629) (not d!2035081) (not bm!561486) (not d!2035121) (not bm!561495) (not b!6487778) (not b!6487700) (not b!6487513) (not d!2035061) (not b!6487384) (not d!2035095) (not d!2035053) (not b!6487130) (not b!6487526) (not d!2035087) (not b!6487806) (not d!2035173) (not b!6487811) (not bm!561452) tp_is_empty!41987 (not d!2035065) (not b!6487499) (not d!2035135) (not d!2035133) (not b!6487525) (not d!2035157) (not b!6487699) (not d!2035107) (not b!6487697) (not b!6487580) (not d!2035149) (not b!6487579) (not bm!561472) (not bm!561499) (not b!6487239) (not b!6487427) (not bm!561485) (not b!6487464) (not b!6487805) (not b!6487776) (not b!6487827) (not b!6487498) (not bm!561464) (not d!2035147) (not d!2035145) (not bs!1646022) (not d!2035103) (not b!6487479) (not d!2035115) (not bm!561465) (not bm!561500) (not b!6487660) (not d!2035055) (not b!6487493) (not b!6487628) (not b!6487279) (not b!6487455) (not b!6487460) (not b!6487446) (not b!6487823) (not b!6487735) (not d!2034951) (not b!6487694) (not b!6487500) (not b!6487696) (not b!6487462) (not b!6487612) (not b!6487428) (not d!2035077) (not d!2035181) (not d!2035109) (not b!6487508) (not b!6487473) (not bm!561493) (not b!6487486) (not d!2035021) (not b!6487801) (not b!6487485) (not b_lambda!245631) (not b!6487691) (not b!6487465) (not bm!561482) (not b!6487727) (not b!6487383) (not setNonEmpty!44199) (not b!6487426) (not d!2035085) (not bs!1646021) (not bm!561467) (not bm!561448) (not b!6487737) (not d!2035143) (not bm!561498) (not b!6487679) (not b!6487439) (not b!6487843) (not d!2035151) (not bm!561496) (not b!6487459) (not bm!561497) (not bm!561450) (not b!6487033) (not b!6487461) (not b!6487729) (not b!6487654) (not b!6487037) (not b!6487573) (not d!2035167) (not d!2035031) (not b!6487382) (not d!2035165) (not b!6487444) (not d!2035183))
(check-sat)
(get-model)

(declare-fun d!2035197 () Bool)

(assert (=> d!2035197 (= (isEmpty!37470 (tail!12295 (exprs!6251 (h!71726 zl!343)))) ((_ is Nil!65277) (tail!12295 (exprs!6251 (h!71726 zl!343)))))))

(assert (=> b!6487726 d!2035197))

(declare-fun d!2035199 () Bool)

(assert (=> d!2035199 (= (tail!12295 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343))))))

(assert (=> b!6487726 d!2035199))

(declare-fun d!2035201 () Bool)

(assert (=> d!2035201 (= (isEmpty!37468 (tail!12294 lt!2388887)) ((_ is Nil!65276) (tail!12294 lt!2388887)))))

(assert (=> b!6487464 d!2035201))

(declare-fun d!2035203 () Bool)

(assert (=> d!2035203 (= (tail!12294 lt!2388887) (t!379026 lt!2388887))))

(assert (=> b!6487464 d!2035203))

(declare-fun d!2035205 () Bool)

(assert (=> d!2035205 (= (nullable!6360 (regOne!33246 (reg!16696 (regOne!33246 r!7292)))) (nullableFct!2298 (regOne!33246 (reg!16696 (regOne!33246 r!7292)))))))

(declare-fun bs!1646024 () Bool)

(assert (= bs!1646024 d!2035205))

(declare-fun m!7276286 () Bool)

(assert (=> bs!1646024 m!7276286))

(assert (=> b!6487279 d!2035205))

(declare-fun d!2035207 () Bool)

(assert (=> d!2035207 (= (isUnion!1197 lt!2389118) ((_ is Union!16367) lt!2389118))))

(assert (=> b!6487762 d!2035207))

(declare-fun d!2035209 () Bool)

(assert (=> d!2035209 true))

(assert (=> d!2035209 true))

(declare-fun res!2664565 () Bool)

(assert (=> d!2035209 (= (choose!48164 lambda!359118) res!2664565)))

(assert (=> d!2035143 d!2035209))

(declare-fun d!2035211 () Bool)

(assert (=> d!2035211 (= (nullable!6360 (h!71725 (exprs!6251 lt!2388870))) (nullableFct!2298 (h!71725 (exprs!6251 lt!2388870))))))

(declare-fun bs!1646025 () Bool)

(assert (= bs!1646025 d!2035211))

(declare-fun m!7276288 () Bool)

(assert (=> bs!1646025 m!7276288))

(assert (=> b!6487112 d!2035211))

(declare-fun d!2035213 () Bool)

(assert (=> d!2035213 (= (isEmpty!37468 (tail!12294 lt!2388903)) ((_ is Nil!65276) (tail!12294 lt!2388903)))))

(assert (=> b!6487507 d!2035213))

(declare-fun d!2035215 () Bool)

(assert (=> d!2035215 (= (tail!12294 lt!2388903) (t!379026 lt!2388903))))

(assert (=> b!6487507 d!2035215))

(declare-fun d!2035217 () Bool)

(assert (=> d!2035217 (= (isDefined!12961 (findConcatSeparation!2672 lt!2388865 (regTwo!33246 r!7292) Nil!65276 s!2326 s!2326)) (not (isEmpty!37472 (findConcatSeparation!2672 lt!2388865 (regTwo!33246 r!7292) Nil!65276 s!2326 s!2326))))))

(declare-fun bs!1646026 () Bool)

(assert (= bs!1646026 d!2035217))

(assert (=> bs!1646026 m!7275052))

(declare-fun m!7276290 () Bool)

(assert (=> bs!1646026 m!7276290))

(assert (=> d!2035161 d!2035217))

(declare-fun b!6487844 () Bool)

(declare-fun e!3931982 () Bool)

(declare-fun call!561507 () Bool)

(assert (=> b!6487844 (= e!3931982 call!561507)))

(declare-fun b!6487845 () Bool)

(declare-fun e!3931985 () Bool)

(declare-fun e!3931981 () Bool)

(assert (=> b!6487845 (= e!3931985 e!3931981)))

(declare-fun c!1188692 () Bool)

(assert (=> b!6487845 (= c!1188692 ((_ is Star!16367) lt!2388865))))

(declare-fun d!2035219 () Bool)

(declare-fun res!2664569 () Bool)

(assert (=> d!2035219 (=> res!2664569 e!3931985)))

(assert (=> d!2035219 (= res!2664569 ((_ is ElementMatch!16367) lt!2388865))))

(assert (=> d!2035219 (= (validRegex!8103 lt!2388865) e!3931985)))

(declare-fun bm!561501 () Bool)

(declare-fun call!561508 () Bool)

(declare-fun c!1188693 () Bool)

(assert (=> bm!561501 (= call!561508 (validRegex!8103 (ite c!1188693 (regOne!33247 lt!2388865) (regOne!33246 lt!2388865))))))

(declare-fun b!6487846 () Bool)

(declare-fun res!2664570 () Bool)

(declare-fun e!3931984 () Bool)

(assert (=> b!6487846 (=> res!2664570 e!3931984)))

(assert (=> b!6487846 (= res!2664570 (not ((_ is Concat!25212) lt!2388865)))))

(declare-fun e!3931983 () Bool)

(assert (=> b!6487846 (= e!3931983 e!3931984)))

(declare-fun b!6487847 () Bool)

(declare-fun e!3931986 () Bool)

(assert (=> b!6487847 (= e!3931986 call!561507)))

(declare-fun call!561506 () Bool)

(declare-fun bm!561502 () Bool)

(assert (=> bm!561502 (= call!561506 (validRegex!8103 (ite c!1188692 (reg!16696 lt!2388865) (ite c!1188693 (regTwo!33247 lt!2388865) (regTwo!33246 lt!2388865)))))))

(declare-fun b!6487848 () Bool)

(declare-fun res!2664568 () Bool)

(assert (=> b!6487848 (=> (not res!2664568) (not e!3931986))))

(assert (=> b!6487848 (= res!2664568 call!561508)))

(assert (=> b!6487848 (= e!3931983 e!3931986)))

(declare-fun b!6487849 () Bool)

(assert (=> b!6487849 (= e!3931981 e!3931983)))

(assert (=> b!6487849 (= c!1188693 ((_ is Union!16367) lt!2388865))))

(declare-fun bm!561503 () Bool)

(assert (=> bm!561503 (= call!561507 call!561506)))

(declare-fun b!6487850 () Bool)

(declare-fun e!3931987 () Bool)

(assert (=> b!6487850 (= e!3931987 call!561506)))

(declare-fun b!6487851 () Bool)

(assert (=> b!6487851 (= e!3931981 e!3931987)))

(declare-fun res!2664567 () Bool)

(assert (=> b!6487851 (= res!2664567 (not (nullable!6360 (reg!16696 lt!2388865))))))

(assert (=> b!6487851 (=> (not res!2664567) (not e!3931987))))

(declare-fun b!6487852 () Bool)

(assert (=> b!6487852 (= e!3931984 e!3931982)))

(declare-fun res!2664566 () Bool)

(assert (=> b!6487852 (=> (not res!2664566) (not e!3931982))))

(assert (=> b!6487852 (= res!2664566 call!561508)))

(assert (= (and d!2035219 (not res!2664569)) b!6487845))

(assert (= (and b!6487845 c!1188692) b!6487851))

(assert (= (and b!6487845 (not c!1188692)) b!6487849))

(assert (= (and b!6487851 res!2664567) b!6487850))

(assert (= (and b!6487849 c!1188693) b!6487848))

(assert (= (and b!6487849 (not c!1188693)) b!6487846))

(assert (= (and b!6487848 res!2664568) b!6487847))

(assert (= (and b!6487846 (not res!2664570)) b!6487852))

(assert (= (and b!6487852 res!2664566) b!6487844))

(assert (= (or b!6487847 b!6487844) bm!561503))

(assert (= (or b!6487848 b!6487852) bm!561501))

(assert (= (or b!6487850 bm!561503) bm!561502))

(declare-fun m!7276292 () Bool)

(assert (=> bm!561501 m!7276292))

(declare-fun m!7276294 () Bool)

(assert (=> bm!561502 m!7276294))

(declare-fun m!7276296 () Bool)

(assert (=> b!6487851 m!7276296))

(assert (=> d!2035161 d!2035219))

(declare-fun bs!1646027 () Bool)

(declare-fun d!2035221 () Bool)

(assert (= bs!1646027 (and d!2035221 d!2035165)))

(declare-fun lambda!359231 () Int)

(assert (=> bs!1646027 (= lambda!359231 lambda!359218)))

(declare-fun bs!1646028 () Bool)

(assert (= bs!1646028 (and d!2035221 d!2035151)))

(assert (=> bs!1646028 (not (= lambda!359231 lambda!359216))))

(declare-fun bs!1646029 () Bool)

(assert (= bs!1646029 (and d!2035221 b!6487593)))

(assert (=> bs!1646029 (not (= lambda!359231 lambda!359195))))

(declare-fun bs!1646030 () Bool)

(assert (= bs!1646030 (and d!2035221 b!6486638)))

(assert (=> bs!1646030 (not (= lambda!359231 lambda!359124))))

(declare-fun bs!1646031 () Bool)

(assert (= bs!1646031 (and d!2035221 b!6486656)))

(assert (=> bs!1646031 (= lambda!359231 lambda!359121)))

(declare-fun bs!1646032 () Bool)

(assert (= bs!1646032 (and d!2035221 b!6487561)))

(assert (=> bs!1646032 (not (= lambda!359231 lambda!359189))))

(declare-fun bs!1646033 () Bool)

(assert (= bs!1646033 (and d!2035221 b!6486655)))

(assert (=> bs!1646033 (not (= lambda!359231 lambda!359119))))

(declare-fun bs!1646034 () Bool)

(assert (= bs!1646034 (and d!2035221 d!2035135)))

(assert (=> bs!1646034 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359231 lambda!359207))))

(assert (=> bs!1646030 (not (= lambda!359231 lambda!359125))))

(declare-fun bs!1646035 () Bool)

(assert (= bs!1646035 (and d!2035221 d!2035139)))

(assert (=> bs!1646035 (not (= lambda!359231 lambda!359213))))

(declare-fun bs!1646036 () Bool)

(assert (= bs!1646036 (and d!2035221 d!2035129)))

(assert (=> bs!1646036 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359231 lambda!359201))))

(declare-fun bs!1646037 () Bool)

(assert (= bs!1646037 (and d!2035221 d!2035145)))

(assert (=> bs!1646037 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359231 lambda!359214))))

(assert (=> bs!1646028 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359231 lambda!359215))))

(declare-fun bs!1646038 () Bool)

(assert (= bs!1646038 (and d!2035221 b!6487626)))

(assert (=> bs!1646038 (not (= lambda!359231 lambda!359203))))

(assert (=> bs!1646031 (not (= lambda!359231 lambda!359122))))

(assert (=> bs!1646027 (not (= lambda!359231 lambda!359219))))

(assert (=> bs!1646035 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) (Star!16367 (reg!16696 (regOne!33246 r!7292))))) (= lambda!359231 lambda!359212))))

(declare-fun bs!1646039 () Bool)

(assert (= bs!1646039 (and d!2035221 b!6487630)))

(assert (=> bs!1646039 (not (= lambda!359231 lambda!359204))))

(assert (=> bs!1646036 (not (= lambda!359231 lambda!359202))))

(assert (=> bs!1646030 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359231 lambda!359123))))

(declare-fun bs!1646040 () Bool)

(assert (= bs!1646040 (and d!2035221 b!6487565)))

(assert (=> bs!1646040 (not (= lambda!359231 lambda!359190))))

(assert (=> bs!1646033 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359231 lambda!359118))))

(declare-fun bs!1646041 () Bool)

(assert (= bs!1646041 (and d!2035221 d!2035161)))

(assert (=> bs!1646041 (= lambda!359231 lambda!359217)))

(declare-fun bs!1646042 () Bool)

(assert (= bs!1646042 (and d!2035221 b!6487597)))

(assert (=> bs!1646042 (not (= lambda!359231 lambda!359196))))

(assert (=> d!2035221 true))

(assert (=> d!2035221 true))

(assert (=> d!2035221 true))

(assert (=> d!2035221 (= (isDefined!12961 (findConcatSeparation!2672 lt!2388865 (regTwo!33246 r!7292) Nil!65276 s!2326 s!2326)) (Exists!3437 lambda!359231))))

(assert (=> d!2035221 true))

(declare-fun _$89!2720 () Unit!158799)

(assert (=> d!2035221 (= (choose!48166 lt!2388865 (regTwo!33246 r!7292) s!2326) _$89!2720)))

(declare-fun bs!1646043 () Bool)

(assert (= bs!1646043 d!2035221))

(assert (=> bs!1646043 m!7275052))

(assert (=> bs!1646043 m!7275052))

(assert (=> bs!1646043 m!7276186))

(declare-fun m!7276298 () Bool)

(assert (=> bs!1646043 m!7276298))

(assert (=> d!2035161 d!2035221))

(declare-fun d!2035223 () Bool)

(assert (=> d!2035223 (= (Exists!3437 lambda!359217) (choose!48164 lambda!359217))))

(declare-fun bs!1646044 () Bool)

(assert (= bs!1646044 d!2035223))

(declare-fun m!7276300 () Bool)

(assert (=> bs!1646044 m!7276300))

(assert (=> d!2035161 d!2035223))

(assert (=> d!2035161 d!2035167))

(declare-fun d!2035225 () Bool)

(assert (=> d!2035225 (= (isEmpty!37468 (t!379026 s!2326)) ((_ is Nil!65276) (t!379026 s!2326)))))

(assert (=> d!2035053 d!2035225))

(assert (=> bs!1646022 d!2034975))

(declare-fun d!2035227 () Bool)

(declare-fun c!1188694 () Bool)

(assert (=> d!2035227 (= c!1188694 (isEmpty!37468 (tail!12294 (t!379026 s!2326))))))

(declare-fun e!3931990 () Bool)

(assert (=> d!2035227 (= (matchZipper!2379 (derivationStepZipper!2333 lt!2388867 (head!13209 (t!379026 s!2326))) (tail!12294 (t!379026 s!2326))) e!3931990)))

(declare-fun b!6487857 () Bool)

(assert (=> b!6487857 (= e!3931990 (nullableZipper!2124 (derivationStepZipper!2333 lt!2388867 (head!13209 (t!379026 s!2326)))))))

(declare-fun b!6487858 () Bool)

(assert (=> b!6487858 (= e!3931990 (matchZipper!2379 (derivationStepZipper!2333 (derivationStepZipper!2333 lt!2388867 (head!13209 (t!379026 s!2326))) (head!13209 (tail!12294 (t!379026 s!2326)))) (tail!12294 (tail!12294 (t!379026 s!2326)))))))

(assert (= (and d!2035227 c!1188694) b!6487857))

(assert (= (and d!2035227 (not c!1188694)) b!6487858))

(assert (=> d!2035227 m!7275866))

(declare-fun m!7276302 () Bool)

(assert (=> d!2035227 m!7276302))

(assert (=> b!6487857 m!7275864))

(declare-fun m!7276304 () Bool)

(assert (=> b!6487857 m!7276304))

(assert (=> b!6487858 m!7275866))

(declare-fun m!7276306 () Bool)

(assert (=> b!6487858 m!7276306))

(assert (=> b!6487858 m!7275864))

(assert (=> b!6487858 m!7276306))

(declare-fun m!7276308 () Bool)

(assert (=> b!6487858 m!7276308))

(assert (=> b!6487858 m!7275866))

(declare-fun m!7276310 () Bool)

(assert (=> b!6487858 m!7276310))

(assert (=> b!6487858 m!7276308))

(assert (=> b!6487858 m!7276310))

(declare-fun m!7276312 () Bool)

(assert (=> b!6487858 m!7276312))

(assert (=> b!6487445 d!2035227))

(declare-fun bs!1646045 () Bool)

(declare-fun d!2035229 () Bool)

(assert (= bs!1646045 (and d!2035229 b!6486628)))

(declare-fun lambda!359232 () Int)

(assert (=> bs!1646045 (= (= (head!13209 (t!379026 s!2326)) (h!71724 s!2326)) (= lambda!359232 lambda!359120))))

(declare-fun bs!1646046 () Bool)

(assert (= bs!1646046 (and d!2035229 d!2035105)))

(assert (=> bs!1646046 (= (= (head!13209 (t!379026 s!2326)) (h!71724 s!2326)) (= lambda!359232 lambda!359193))))

(assert (=> d!2035229 true))

(assert (=> d!2035229 (= (derivationStepZipper!2333 lt!2388867 (head!13209 (t!379026 s!2326))) (flatMap!1872 lt!2388867 lambda!359232))))

(declare-fun bs!1646047 () Bool)

(assert (= bs!1646047 d!2035229))

(declare-fun m!7276314 () Bool)

(assert (=> bs!1646047 m!7276314))

(assert (=> b!6487445 d!2035229))

(declare-fun d!2035231 () Bool)

(assert (=> d!2035231 (= (head!13209 (t!379026 s!2326)) (h!71724 (t!379026 s!2326)))))

(assert (=> b!6487445 d!2035231))

(declare-fun d!2035233 () Bool)

(assert (=> d!2035233 (= (tail!12294 (t!379026 s!2326)) (t!379026 (t!379026 s!2326)))))

(assert (=> b!6487445 d!2035233))

(declare-fun d!2035235 () Bool)

(declare-fun res!2664579 () Bool)

(declare-fun e!3931995 () Bool)

(assert (=> d!2035235 (=> res!2664579 e!3931995)))

(assert (=> d!2035235 (= res!2664579 ((_ is Nil!65277) (exprs!6251 lt!2388885)))))

(assert (=> d!2035235 (= (forall!15550 (exprs!6251 lt!2388885) lambda!359181) e!3931995)))

(declare-fun b!6487863 () Bool)

(declare-fun e!3931996 () Bool)

(assert (=> b!6487863 (= e!3931995 e!3931996)))

(declare-fun res!2664580 () Bool)

(assert (=> b!6487863 (=> (not res!2664580) (not e!3931996))))

(declare-fun dynLambda!25928 (Int Regex!16367) Bool)

(assert (=> b!6487863 (= res!2664580 (dynLambda!25928 lambda!359181 (h!71725 (exprs!6251 lt!2388885))))))

(declare-fun b!6487864 () Bool)

(assert (=> b!6487864 (= e!3931996 (forall!15550 (t!379027 (exprs!6251 lt!2388885)) lambda!359181))))

(assert (= (and d!2035235 (not res!2664579)) b!6487863))

(assert (= (and b!6487863 res!2664580) b!6487864))

(declare-fun b_lambda!245633 () Bool)

(assert (=> (not b_lambda!245633) (not b!6487863)))

(declare-fun m!7276316 () Bool)

(assert (=> b!6487863 m!7276316))

(declare-fun m!7276318 () Bool)

(assert (=> b!6487864 m!7276318))

(assert (=> d!2035073 d!2035235))

(declare-fun d!2035237 () Bool)

(assert (=> d!2035237 (= (isEmpty!37468 (_2!36649 lt!2388858)) ((_ is Nil!65276) (_2!36649 lt!2388858)))))

(assert (=> bm!561482 d!2035237))

(declare-fun d!2035239 () Bool)

(declare-fun lt!2389125 () Int)

(assert (=> d!2035239 (>= lt!2389125 0)))

(declare-fun e!3931999 () Int)

(assert (=> d!2035239 (= lt!2389125 e!3931999)))

(declare-fun c!1188697 () Bool)

(assert (=> d!2035239 (= c!1188697 ((_ is Nil!65276) lt!2389098))))

(assert (=> d!2035239 (= (size!40424 lt!2389098) lt!2389125)))

(declare-fun b!6487869 () Bool)

(assert (=> b!6487869 (= e!3931999 0)))

(declare-fun b!6487870 () Bool)

(assert (=> b!6487870 (= e!3931999 (+ 1 (size!40424 (t!379026 lt!2389098))))))

(assert (= (and d!2035239 c!1188697) b!6487869))

(assert (= (and d!2035239 (not c!1188697)) b!6487870))

(declare-fun m!7276320 () Bool)

(assert (=> b!6487870 m!7276320))

(assert (=> b!6487679 d!2035239))

(declare-fun d!2035241 () Bool)

(declare-fun lt!2389126 () Int)

(assert (=> d!2035241 (>= lt!2389126 0)))

(declare-fun e!3932000 () Int)

(assert (=> d!2035241 (= lt!2389126 e!3932000)))

(declare-fun c!1188698 () Bool)

(assert (=> d!2035241 (= c!1188698 ((_ is Nil!65276) (_1!36649 lt!2388858)))))

(assert (=> d!2035241 (= (size!40424 (_1!36649 lt!2388858)) lt!2389126)))

(declare-fun b!6487871 () Bool)

(assert (=> b!6487871 (= e!3932000 0)))

(declare-fun b!6487872 () Bool)

(assert (=> b!6487872 (= e!3932000 (+ 1 (size!40424 (t!379026 (_1!36649 lt!2388858)))))))

(assert (= (and d!2035241 c!1188698) b!6487871))

(assert (= (and d!2035241 (not c!1188698)) b!6487872))

(declare-fun m!7276322 () Bool)

(assert (=> b!6487872 m!7276322))

(assert (=> b!6487679 d!2035241))

(declare-fun d!2035243 () Bool)

(declare-fun lt!2389127 () Int)

(assert (=> d!2035243 (>= lt!2389127 0)))

(declare-fun e!3932001 () Int)

(assert (=> d!2035243 (= lt!2389127 e!3932001)))

(declare-fun c!1188699 () Bool)

(assert (=> d!2035243 (= c!1188699 ((_ is Nil!65276) (_2!36649 lt!2388858)))))

(assert (=> d!2035243 (= (size!40424 (_2!36649 lt!2388858)) lt!2389127)))

(declare-fun b!6487873 () Bool)

(assert (=> b!6487873 (= e!3932001 0)))

(declare-fun b!6487874 () Bool)

(assert (=> b!6487874 (= e!3932001 (+ 1 (size!40424 (t!379026 (_2!36649 lt!2388858)))))))

(assert (= (and d!2035243 c!1188699) b!6487873))

(assert (= (and d!2035243 (not c!1188699)) b!6487874))

(declare-fun m!7276324 () Bool)

(assert (=> b!6487874 m!7276324))

(assert (=> b!6487679 d!2035243))

(declare-fun b!6487875 () Bool)

(declare-fun e!3932003 () (InoxSet Context!11502))

(declare-fun e!3932002 () (InoxSet Context!11502))

(assert (=> b!6487875 (= e!3932003 e!3932002)))

(declare-fun c!1188701 () Bool)

(assert (=> b!6487875 (= c!1188701 ((_ is Cons!65277) (exprs!6251 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))))))))

(declare-fun b!6487876 () Bool)

(declare-fun call!561509 () (InoxSet Context!11502))

(assert (=> b!6487876 (= e!3932003 ((_ map or) call!561509 (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343))))))))))) (h!71724 s!2326))))))

(declare-fun b!6487877 () Bool)

(assert (=> b!6487877 (= e!3932002 ((as const (Array Context!11502 Bool)) false))))

(declare-fun d!2035245 () Bool)

(declare-fun c!1188700 () Bool)

(declare-fun e!3932004 () Bool)

(assert (=> d!2035245 (= c!1188700 e!3932004)))

(declare-fun res!2664581 () Bool)

(assert (=> d!2035245 (=> (not res!2664581) (not e!3932004))))

(assert (=> d!2035245 (= res!2664581 ((_ is Cons!65277) (exprs!6251 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))))))))

(assert (=> d!2035245 (= (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))) (h!71724 s!2326)) e!3932003)))

(declare-fun b!6487878 () Bool)

(assert (=> b!6487878 (= e!3932002 call!561509)))

(declare-fun b!6487879 () Bool)

(assert (=> b!6487879 (= e!3932004 (nullable!6360 (h!71725 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343))))))))))))))

(declare-fun bm!561504 () Bool)

(assert (=> bm!561504 (= call!561509 (derivationStepZipperDown!1615 (h!71725 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))))) (Context!11503 (t!379027 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343))))))))))) (h!71724 s!2326)))))

(assert (= (and d!2035245 res!2664581) b!6487879))

(assert (= (and d!2035245 c!1188700) b!6487876))

(assert (= (and d!2035245 (not c!1188700)) b!6487875))

(assert (= (and b!6487875 c!1188701) b!6487878))

(assert (= (and b!6487875 (not c!1188701)) b!6487877))

(assert (= (or b!6487876 b!6487878) bm!561504))

(declare-fun m!7276326 () Bool)

(assert (=> b!6487876 m!7276326))

(declare-fun m!7276328 () Bool)

(assert (=> b!6487879 m!7276328))

(declare-fun m!7276330 () Bool)

(assert (=> bm!561504 m!7276330))

(assert (=> b!6487239 d!2035245))

(declare-fun b!6487880 () Bool)

(declare-fun e!3932006 () Bool)

(declare-fun call!561511 () Bool)

(assert (=> b!6487880 (= e!3932006 call!561511)))

(declare-fun b!6487881 () Bool)

(declare-fun e!3932009 () Bool)

(declare-fun e!3932005 () Bool)

(assert (=> b!6487881 (= e!3932009 e!3932005)))

(declare-fun c!1188702 () Bool)

(assert (=> b!6487881 (= c!1188702 ((_ is Star!16367) (ite c!1188591 (regOne!33247 r!7292) (regOne!33246 r!7292))))))

(declare-fun d!2035247 () Bool)

(declare-fun res!2664585 () Bool)

(assert (=> d!2035247 (=> res!2664585 e!3932009)))

(assert (=> d!2035247 (= res!2664585 ((_ is ElementMatch!16367) (ite c!1188591 (regOne!33247 r!7292) (regOne!33246 r!7292))))))

(assert (=> d!2035247 (= (validRegex!8103 (ite c!1188591 (regOne!33247 r!7292) (regOne!33246 r!7292))) e!3932009)))

(declare-fun bm!561505 () Bool)

(declare-fun c!1188703 () Bool)

(declare-fun call!561512 () Bool)

(assert (=> bm!561505 (= call!561512 (validRegex!8103 (ite c!1188703 (regOne!33247 (ite c!1188591 (regOne!33247 r!7292) (regOne!33246 r!7292))) (regOne!33246 (ite c!1188591 (regOne!33247 r!7292) (regOne!33246 r!7292))))))))

(declare-fun b!6487882 () Bool)

(declare-fun res!2664586 () Bool)

(declare-fun e!3932008 () Bool)

(assert (=> b!6487882 (=> res!2664586 e!3932008)))

(assert (=> b!6487882 (= res!2664586 (not ((_ is Concat!25212) (ite c!1188591 (regOne!33247 r!7292) (regOne!33246 r!7292)))))))

(declare-fun e!3932007 () Bool)

(assert (=> b!6487882 (= e!3932007 e!3932008)))

(declare-fun b!6487883 () Bool)

(declare-fun e!3932010 () Bool)

(assert (=> b!6487883 (= e!3932010 call!561511)))

(declare-fun bm!561506 () Bool)

(declare-fun call!561510 () Bool)

(assert (=> bm!561506 (= call!561510 (validRegex!8103 (ite c!1188702 (reg!16696 (ite c!1188591 (regOne!33247 r!7292) (regOne!33246 r!7292))) (ite c!1188703 (regTwo!33247 (ite c!1188591 (regOne!33247 r!7292) (regOne!33246 r!7292))) (regTwo!33246 (ite c!1188591 (regOne!33247 r!7292) (regOne!33246 r!7292)))))))))

(declare-fun b!6487884 () Bool)

(declare-fun res!2664584 () Bool)

(assert (=> b!6487884 (=> (not res!2664584) (not e!3932010))))

(assert (=> b!6487884 (= res!2664584 call!561512)))

(assert (=> b!6487884 (= e!3932007 e!3932010)))

(declare-fun b!6487885 () Bool)

(assert (=> b!6487885 (= e!3932005 e!3932007)))

(assert (=> b!6487885 (= c!1188703 ((_ is Union!16367) (ite c!1188591 (regOne!33247 r!7292) (regOne!33246 r!7292))))))

(declare-fun bm!561507 () Bool)

(assert (=> bm!561507 (= call!561511 call!561510)))

(declare-fun b!6487886 () Bool)

(declare-fun e!3932011 () Bool)

(assert (=> b!6487886 (= e!3932011 call!561510)))

(declare-fun b!6487887 () Bool)

(assert (=> b!6487887 (= e!3932005 e!3932011)))

(declare-fun res!2664583 () Bool)

(assert (=> b!6487887 (= res!2664583 (not (nullable!6360 (reg!16696 (ite c!1188591 (regOne!33247 r!7292) (regOne!33246 r!7292))))))))

(assert (=> b!6487887 (=> (not res!2664583) (not e!3932011))))

(declare-fun b!6487888 () Bool)

(assert (=> b!6487888 (= e!3932008 e!3932006)))

(declare-fun res!2664582 () Bool)

(assert (=> b!6487888 (=> (not res!2664582) (not e!3932006))))

(assert (=> b!6487888 (= res!2664582 call!561512)))

(assert (= (and d!2035247 (not res!2664585)) b!6487881))

(assert (= (and b!6487881 c!1188702) b!6487887))

(assert (= (and b!6487881 (not c!1188702)) b!6487885))

(assert (= (and b!6487887 res!2664583) b!6487886))

(assert (= (and b!6487885 c!1188703) b!6487884))

(assert (= (and b!6487885 (not c!1188703)) b!6487882))

(assert (= (and b!6487884 res!2664584) b!6487883))

(assert (= (and b!6487882 (not res!2664586)) b!6487888))

(assert (= (and b!6487888 res!2664582) b!6487880))

(assert (= (or b!6487883 b!6487880) bm!561507))

(assert (= (or b!6487884 b!6487888) bm!561505))

(assert (= (or b!6487886 bm!561507) bm!561506))

(declare-fun m!7276332 () Bool)

(assert (=> bm!561505 m!7276332))

(declare-fun m!7276334 () Bool)

(assert (=> bm!561506 m!7276334))

(declare-fun m!7276336 () Bool)

(assert (=> b!6487887 m!7276336))

(assert (=> bm!561479 d!2035247))

(declare-fun b!6487889 () Bool)

(declare-fun res!2664591 () Bool)

(declare-fun e!3932012 () Bool)

(assert (=> b!6487889 (=> res!2664591 e!3932012)))

(assert (=> b!6487889 (= res!2664591 (not (isEmpty!37468 (tail!12294 (++!14444 (_1!36649 lt!2388858) lt!2388903)))))))

(declare-fun e!3932017 () Bool)

(declare-fun b!6487891 () Bool)

(assert (=> b!6487891 (= e!3932017 (= (head!13209 (++!14444 (_1!36649 lt!2388858) lt!2388903)) (c!1188383 (Concat!25212 (reg!16696 (regOne!33246 r!7292)) lt!2388899))))))

(declare-fun b!6487892 () Bool)

(declare-fun res!2664588 () Bool)

(declare-fun e!3932014 () Bool)

(assert (=> b!6487892 (=> res!2664588 e!3932014)))

(assert (=> b!6487892 (= res!2664588 e!3932017)))

(declare-fun res!2664589 () Bool)

(assert (=> b!6487892 (=> (not res!2664589) (not e!3932017))))

(declare-fun lt!2389128 () Bool)

(assert (=> b!6487892 (= res!2664589 lt!2389128)))

(declare-fun b!6487893 () Bool)

(declare-fun e!3932018 () Bool)

(assert (=> b!6487893 (= e!3932018 e!3932012)))

(declare-fun res!2664594 () Bool)

(assert (=> b!6487893 (=> res!2664594 e!3932012)))

(declare-fun call!561513 () Bool)

(assert (=> b!6487893 (= res!2664594 call!561513)))

(declare-fun b!6487894 () Bool)

(declare-fun res!2664592 () Bool)

(assert (=> b!6487894 (=> res!2664592 e!3932014)))

(assert (=> b!6487894 (= res!2664592 (not ((_ is ElementMatch!16367) (Concat!25212 (reg!16696 (regOne!33246 r!7292)) lt!2388899))))))

(declare-fun e!3932013 () Bool)

(assert (=> b!6487894 (= e!3932013 e!3932014)))

(declare-fun bm!561508 () Bool)

(assert (=> bm!561508 (= call!561513 (isEmpty!37468 (++!14444 (_1!36649 lt!2388858) lt!2388903)))))

(declare-fun b!6487895 () Bool)

(assert (=> b!6487895 (= e!3932014 e!3932018)))

(declare-fun res!2664590 () Bool)

(assert (=> b!6487895 (=> (not res!2664590) (not e!3932018))))

(assert (=> b!6487895 (= res!2664590 (not lt!2389128))))

(declare-fun b!6487896 () Bool)

(declare-fun e!3932015 () Bool)

(assert (=> b!6487896 (= e!3932015 e!3932013)))

(declare-fun c!1188706 () Bool)

(assert (=> b!6487896 (= c!1188706 ((_ is EmptyLang!16367) (Concat!25212 (reg!16696 (regOne!33246 r!7292)) lt!2388899)))))

(declare-fun b!6487897 () Bool)

(declare-fun res!2664593 () Bool)

(assert (=> b!6487897 (=> (not res!2664593) (not e!3932017))))

(assert (=> b!6487897 (= res!2664593 (isEmpty!37468 (tail!12294 (++!14444 (_1!36649 lt!2388858) lt!2388903))))))

(declare-fun b!6487898 () Bool)

(declare-fun e!3932016 () Bool)

(assert (=> b!6487898 (= e!3932016 (nullable!6360 (Concat!25212 (reg!16696 (regOne!33246 r!7292)) lt!2388899)))))

(declare-fun b!6487899 () Bool)

(assert (=> b!6487899 (= e!3932015 (= lt!2389128 call!561513))))

(declare-fun b!6487900 () Bool)

(declare-fun res!2664587 () Bool)

(assert (=> b!6487900 (=> (not res!2664587) (not e!3932017))))

(assert (=> b!6487900 (= res!2664587 (not call!561513))))

(declare-fun b!6487901 () Bool)

(assert (=> b!6487901 (= e!3932013 (not lt!2389128))))

(declare-fun b!6487902 () Bool)

(assert (=> b!6487902 (= e!3932012 (not (= (head!13209 (++!14444 (_1!36649 lt!2388858) lt!2388903)) (c!1188383 (Concat!25212 (reg!16696 (regOne!33246 r!7292)) lt!2388899)))))))

(declare-fun d!2035249 () Bool)

(assert (=> d!2035249 e!3932015))

(declare-fun c!1188705 () Bool)

(assert (=> d!2035249 (= c!1188705 ((_ is EmptyExpr!16367) (Concat!25212 (reg!16696 (regOne!33246 r!7292)) lt!2388899)))))

(assert (=> d!2035249 (= lt!2389128 e!3932016)))

(declare-fun c!1188704 () Bool)

(assert (=> d!2035249 (= c!1188704 (isEmpty!37468 (++!14444 (_1!36649 lt!2388858) lt!2388903)))))

(assert (=> d!2035249 (validRegex!8103 (Concat!25212 (reg!16696 (regOne!33246 r!7292)) lt!2388899))))

(assert (=> d!2035249 (= (matchR!8550 (Concat!25212 (reg!16696 (regOne!33246 r!7292)) lt!2388899) (++!14444 (_1!36649 lt!2388858) lt!2388903)) lt!2389128)))

(declare-fun b!6487890 () Bool)

(assert (=> b!6487890 (= e!3932016 (matchR!8550 (derivativeStep!5063 (Concat!25212 (reg!16696 (regOne!33246 r!7292)) lt!2388899) (head!13209 (++!14444 (_1!36649 lt!2388858) lt!2388903))) (tail!12294 (++!14444 (_1!36649 lt!2388858) lt!2388903))))))

(assert (= (and d!2035249 c!1188704) b!6487898))

(assert (= (and d!2035249 (not c!1188704)) b!6487890))

(assert (= (and d!2035249 c!1188705) b!6487899))

(assert (= (and d!2035249 (not c!1188705)) b!6487896))

(assert (= (and b!6487896 c!1188706) b!6487901))

(assert (= (and b!6487896 (not c!1188706)) b!6487894))

(assert (= (and b!6487894 (not res!2664592)) b!6487892))

(assert (= (and b!6487892 res!2664589) b!6487900))

(assert (= (and b!6487900 res!2664587) b!6487897))

(assert (= (and b!6487897 res!2664593) b!6487891))

(assert (= (and b!6487892 (not res!2664588)) b!6487895))

(assert (= (and b!6487895 res!2664590) b!6487893))

(assert (= (and b!6487893 (not res!2664594)) b!6487889))

(assert (= (and b!6487889 (not res!2664591)) b!6487902))

(assert (= (or b!6487899 b!6487893 b!6487900) bm!561508))

(assert (=> b!6487889 m!7274920))

(declare-fun m!7276338 () Bool)

(assert (=> b!6487889 m!7276338))

(assert (=> b!6487889 m!7276338))

(declare-fun m!7276340 () Bool)

(assert (=> b!6487889 m!7276340))

(declare-fun m!7276342 () Bool)

(assert (=> b!6487898 m!7276342))

(assert (=> d!2035249 m!7274920))

(declare-fun m!7276344 () Bool)

(assert (=> d!2035249 m!7276344))

(declare-fun m!7276346 () Bool)

(assert (=> d!2035249 m!7276346))

(assert (=> b!6487897 m!7274920))

(assert (=> b!6487897 m!7276338))

(assert (=> b!6487897 m!7276338))

(assert (=> b!6487897 m!7276340))

(assert (=> b!6487902 m!7274920))

(declare-fun m!7276348 () Bool)

(assert (=> b!6487902 m!7276348))

(assert (=> b!6487891 m!7274920))

(assert (=> b!6487891 m!7276348))

(assert (=> b!6487890 m!7274920))

(assert (=> b!6487890 m!7276348))

(assert (=> b!6487890 m!7276348))

(declare-fun m!7276350 () Bool)

(assert (=> b!6487890 m!7276350))

(assert (=> b!6487890 m!7274920))

(assert (=> b!6487890 m!7276338))

(assert (=> b!6487890 m!7276350))

(assert (=> b!6487890 m!7276338))

(declare-fun m!7276352 () Bool)

(assert (=> b!6487890 m!7276352))

(assert (=> bm!561508 m!7274920))

(assert (=> bm!561508 m!7276344))

(assert (=> d!2035085 d!2035249))

(assert (=> d!2035085 d!2034933))

(declare-fun d!2035251 () Bool)

(assert (=> d!2035251 (matchR!8550 (Concat!25212 (reg!16696 (regOne!33246 r!7292)) lt!2388899) (++!14444 (_1!36649 lt!2388858) lt!2388903))))

(assert (=> d!2035251 true))

(declare-fun _$119!477 () Unit!158799)

(assert (=> d!2035251 (= (choose!48159 (reg!16696 (regOne!33246 r!7292)) lt!2388899 (_1!36649 lt!2388858) lt!2388903) _$119!477)))

(declare-fun bs!1646048 () Bool)

(assert (= bs!1646048 d!2035251))

(assert (=> bs!1646048 m!7274920))

(assert (=> bs!1646048 m!7274920))

(assert (=> bs!1646048 m!7275994))

(assert (=> d!2035085 d!2035251))

(declare-fun b!6487903 () Bool)

(declare-fun e!3932020 () Bool)

(declare-fun call!561515 () Bool)

(assert (=> b!6487903 (= e!3932020 call!561515)))

(declare-fun b!6487904 () Bool)

(declare-fun e!3932023 () Bool)

(declare-fun e!3932019 () Bool)

(assert (=> b!6487904 (= e!3932023 e!3932019)))

(declare-fun c!1188707 () Bool)

(assert (=> b!6487904 (= c!1188707 ((_ is Star!16367) (reg!16696 (regOne!33246 r!7292))))))

(declare-fun d!2035253 () Bool)

(declare-fun res!2664598 () Bool)

(assert (=> d!2035253 (=> res!2664598 e!3932023)))

(assert (=> d!2035253 (= res!2664598 ((_ is ElementMatch!16367) (reg!16696 (regOne!33246 r!7292))))))

(assert (=> d!2035253 (= (validRegex!8103 (reg!16696 (regOne!33246 r!7292))) e!3932023)))

(declare-fun bm!561509 () Bool)

(declare-fun call!561516 () Bool)

(declare-fun c!1188708 () Bool)

(assert (=> bm!561509 (= call!561516 (validRegex!8103 (ite c!1188708 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292))))))))

(declare-fun b!6487905 () Bool)

(declare-fun res!2664599 () Bool)

(declare-fun e!3932022 () Bool)

(assert (=> b!6487905 (=> res!2664599 e!3932022)))

(assert (=> b!6487905 (= res!2664599 (not ((_ is Concat!25212) (reg!16696 (regOne!33246 r!7292)))))))

(declare-fun e!3932021 () Bool)

(assert (=> b!6487905 (= e!3932021 e!3932022)))

(declare-fun b!6487906 () Bool)

(declare-fun e!3932024 () Bool)

(assert (=> b!6487906 (= e!3932024 call!561515)))

(declare-fun bm!561510 () Bool)

(declare-fun call!561514 () Bool)

(assert (=> bm!561510 (= call!561514 (validRegex!8103 (ite c!1188707 (reg!16696 (reg!16696 (regOne!33246 r!7292))) (ite c!1188708 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regTwo!33246 (reg!16696 (regOne!33246 r!7292)))))))))

(declare-fun b!6487907 () Bool)

(declare-fun res!2664597 () Bool)

(assert (=> b!6487907 (=> (not res!2664597) (not e!3932024))))

(assert (=> b!6487907 (= res!2664597 call!561516)))

(assert (=> b!6487907 (= e!3932021 e!3932024)))

(declare-fun b!6487908 () Bool)

(assert (=> b!6487908 (= e!3932019 e!3932021)))

(assert (=> b!6487908 (= c!1188708 ((_ is Union!16367) (reg!16696 (regOne!33246 r!7292))))))

(declare-fun bm!561511 () Bool)

(assert (=> bm!561511 (= call!561515 call!561514)))

(declare-fun b!6487909 () Bool)

(declare-fun e!3932025 () Bool)

(assert (=> b!6487909 (= e!3932025 call!561514)))

(declare-fun b!6487910 () Bool)

(assert (=> b!6487910 (= e!3932019 e!3932025)))

(declare-fun res!2664596 () Bool)

(assert (=> b!6487910 (= res!2664596 (not (nullable!6360 (reg!16696 (reg!16696 (regOne!33246 r!7292))))))))

(assert (=> b!6487910 (=> (not res!2664596) (not e!3932025))))

(declare-fun b!6487911 () Bool)

(assert (=> b!6487911 (= e!3932022 e!3932020)))

(declare-fun res!2664595 () Bool)

(assert (=> b!6487911 (=> (not res!2664595) (not e!3932020))))

(assert (=> b!6487911 (= res!2664595 call!561516)))

(assert (= (and d!2035253 (not res!2664598)) b!6487904))

(assert (= (and b!6487904 c!1188707) b!6487910))

(assert (= (and b!6487904 (not c!1188707)) b!6487908))

(assert (= (and b!6487910 res!2664596) b!6487909))

(assert (= (and b!6487908 c!1188708) b!6487907))

(assert (= (and b!6487908 (not c!1188708)) b!6487905))

(assert (= (and b!6487907 res!2664597) b!6487906))

(assert (= (and b!6487905 (not res!2664599)) b!6487911))

(assert (= (and b!6487911 res!2664595) b!6487903))

(assert (= (or b!6487906 b!6487903) bm!561511))

(assert (= (or b!6487907 b!6487911) bm!561509))

(assert (= (or b!6487909 bm!561511) bm!561510))

(declare-fun m!7276354 () Bool)

(assert (=> bm!561509 m!7276354))

(declare-fun m!7276356 () Bool)

(assert (=> bm!561510 m!7276356))

(declare-fun m!7276358 () Bool)

(assert (=> b!6487910 m!7276358))

(assert (=> d!2035085 d!2035253))

(declare-fun b!6487915 () Bool)

(declare-fun e!3932026 () Bool)

(declare-fun lt!2389129 () List!65400)

(assert (=> b!6487915 (= e!3932026 (or (not (= (t!379026 (_1!36649 lt!2388900)) Nil!65276)) (= lt!2389129 (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276)))))))

(declare-fun d!2035255 () Bool)

(assert (=> d!2035255 e!3932026))

(declare-fun res!2664601 () Bool)

(assert (=> d!2035255 (=> (not res!2664601) (not e!3932026))))

(assert (=> d!2035255 (= res!2664601 (= (content!12437 lt!2389129) ((_ map or) (content!12437 (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276))) (content!12437 (t!379026 (_1!36649 lt!2388900))))))))

(declare-fun e!3932027 () List!65400)

(assert (=> d!2035255 (= lt!2389129 e!3932027)))

(declare-fun c!1188709 () Bool)

(assert (=> d!2035255 (= c!1188709 ((_ is Nil!65276) (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276))))))

(assert (=> d!2035255 (= (++!14444 (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276)) (t!379026 (_1!36649 lt!2388900))) lt!2389129)))

(declare-fun b!6487913 () Bool)

(assert (=> b!6487913 (= e!3932027 (Cons!65276 (h!71724 (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276))) (++!14444 (t!379026 (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276))) (t!379026 (_1!36649 lt!2388900)))))))

(declare-fun b!6487914 () Bool)

(declare-fun res!2664600 () Bool)

(assert (=> b!6487914 (=> (not res!2664600) (not e!3932026))))

(assert (=> b!6487914 (= res!2664600 (= (size!40424 lt!2389129) (+ (size!40424 (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276))) (size!40424 (t!379026 (_1!36649 lt!2388900))))))))

(declare-fun b!6487912 () Bool)

(assert (=> b!6487912 (= e!3932027 (t!379026 (_1!36649 lt!2388900)))))

(assert (= (and d!2035255 c!1188709) b!6487912))

(assert (= (and d!2035255 (not c!1188709)) b!6487913))

(assert (= (and d!2035255 res!2664601) b!6487914))

(assert (= (and b!6487914 res!2664600) b!6487915))

(declare-fun m!7276360 () Bool)

(assert (=> d!2035255 m!7276360))

(assert (=> d!2035255 m!7276104))

(declare-fun m!7276362 () Bool)

(assert (=> d!2035255 m!7276362))

(declare-fun m!7276364 () Bool)

(assert (=> d!2035255 m!7276364))

(declare-fun m!7276366 () Bool)

(assert (=> b!6487913 m!7276366))

(declare-fun m!7276368 () Bool)

(assert (=> b!6487914 m!7276368))

(assert (=> b!6487914 m!7276104))

(declare-fun m!7276370 () Bool)

(assert (=> b!6487914 m!7276370))

(declare-fun m!7276372 () Bool)

(assert (=> b!6487914 m!7276372))

(assert (=> b!6487661 d!2035255))

(declare-fun b!6487919 () Bool)

(declare-fun e!3932028 () Bool)

(declare-fun lt!2389130 () List!65400)

(assert (=> b!6487919 (= e!3932028 (or (not (= (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276) Nil!65276)) (= lt!2389130 Nil!65276)))))

(declare-fun d!2035257 () Bool)

(assert (=> d!2035257 e!3932028))

(declare-fun res!2664603 () Bool)

(assert (=> d!2035257 (=> (not res!2664603) (not e!3932028))))

(assert (=> d!2035257 (= res!2664603 (= (content!12437 lt!2389130) ((_ map or) (content!12437 Nil!65276) (content!12437 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276)))))))

(declare-fun e!3932029 () List!65400)

(assert (=> d!2035257 (= lt!2389130 e!3932029)))

(declare-fun c!1188710 () Bool)

(assert (=> d!2035257 (= c!1188710 ((_ is Nil!65276) Nil!65276))))

(assert (=> d!2035257 (= (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276)) lt!2389130)))

(declare-fun b!6487917 () Bool)

(assert (=> b!6487917 (= e!3932029 (Cons!65276 (h!71724 Nil!65276) (++!14444 (t!379026 Nil!65276) (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276))))))

(declare-fun b!6487918 () Bool)

(declare-fun res!2664602 () Bool)

(assert (=> b!6487918 (=> (not res!2664602) (not e!3932028))))

(assert (=> b!6487918 (= res!2664602 (= (size!40424 lt!2389130) (+ (size!40424 Nil!65276) (size!40424 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276)))))))

(declare-fun b!6487916 () Bool)

(assert (=> b!6487916 (= e!3932029 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276))))

(assert (= (and d!2035257 c!1188710) b!6487916))

(assert (= (and d!2035257 (not c!1188710)) b!6487917))

(assert (= (and d!2035257 res!2664603) b!6487918))

(assert (= (and b!6487918 res!2664602) b!6487919))

(declare-fun m!7276374 () Bool)

(assert (=> d!2035257 m!7276374))

(declare-fun m!7276376 () Bool)

(assert (=> d!2035257 m!7276376))

(declare-fun m!7276378 () Bool)

(assert (=> d!2035257 m!7276378))

(declare-fun m!7276380 () Bool)

(assert (=> b!6487917 m!7276380))

(declare-fun m!7276382 () Bool)

(assert (=> b!6487918 m!7276382))

(declare-fun m!7276384 () Bool)

(assert (=> b!6487918 m!7276384))

(declare-fun m!7276386 () Bool)

(assert (=> b!6487918 m!7276386))

(assert (=> b!6487661 d!2035257))

(declare-fun d!2035259 () Bool)

(assert (=> d!2035259 (= (++!14444 (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276)) (t!379026 (_1!36649 lt!2388900))) (_1!36649 lt!2388900))))

(declare-fun lt!2389133 () Unit!158799)

(declare-fun choose!48169 (List!65400 C!33004 List!65400 List!65400) Unit!158799)

(assert (=> d!2035259 (= lt!2389133 (choose!48169 Nil!65276 (h!71724 (_1!36649 lt!2388900)) (t!379026 (_1!36649 lt!2388900)) (_1!36649 lt!2388900)))))

(assert (=> d!2035259 (= (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) (t!379026 (_1!36649 lt!2388900)))) (_1!36649 lt!2388900))))

(assert (=> d!2035259 (= (lemmaMoveElementToOtherListKeepsConcatEq!2522 Nil!65276 (h!71724 (_1!36649 lt!2388900)) (t!379026 (_1!36649 lt!2388900)) (_1!36649 lt!2388900)) lt!2389133)))

(declare-fun bs!1646049 () Bool)

(assert (= bs!1646049 d!2035259))

(assert (=> bs!1646049 m!7276104))

(assert (=> bs!1646049 m!7276104))

(assert (=> bs!1646049 m!7276106))

(declare-fun m!7276388 () Bool)

(assert (=> bs!1646049 m!7276388))

(declare-fun m!7276390 () Bool)

(assert (=> bs!1646049 m!7276390))

(assert (=> b!6487661 d!2035259))

(declare-fun b!6487920 () Bool)

(declare-fun res!2664604 () Bool)

(declare-fun e!3932034 () Bool)

(assert (=> b!6487920 (=> (not res!2664604) (not e!3932034))))

(declare-fun lt!2389135 () Option!16258)

(assert (=> b!6487920 (= res!2664604 (matchR!8550 lt!2388865 (_2!36649 (get!22634 lt!2389135))))))

(declare-fun b!6487921 () Bool)

(declare-fun e!3932030 () Option!16258)

(assert (=> b!6487921 (= e!3932030 None!16257)))

(declare-fun b!6487922 () Bool)

(assert (=> b!6487922 (= e!3932034 (= (++!14444 (_1!36649 (get!22634 lt!2389135)) (_2!36649 (get!22634 lt!2389135))) (_1!36649 lt!2388900)))))

(declare-fun b!6487923 () Bool)

(declare-fun res!2664606 () Bool)

(assert (=> b!6487923 (=> (not res!2664606) (not e!3932034))))

(assert (=> b!6487923 (= res!2664606 (matchR!8550 (reg!16696 (regOne!33246 r!7292)) (_1!36649 (get!22634 lt!2389135))))))

(declare-fun d!2035261 () Bool)

(declare-fun e!3932032 () Bool)

(assert (=> d!2035261 e!3932032))

(declare-fun res!2664605 () Bool)

(assert (=> d!2035261 (=> res!2664605 e!3932032)))

(assert (=> d!2035261 (= res!2664605 e!3932034)))

(declare-fun res!2664608 () Bool)

(assert (=> d!2035261 (=> (not res!2664608) (not e!3932034))))

(assert (=> d!2035261 (= res!2664608 (isDefined!12961 lt!2389135))))

(declare-fun e!3932033 () Option!16258)

(assert (=> d!2035261 (= lt!2389135 e!3932033)))

(declare-fun c!1188711 () Bool)

(declare-fun e!3932031 () Bool)

(assert (=> d!2035261 (= c!1188711 e!3932031)))

(declare-fun res!2664607 () Bool)

(assert (=> d!2035261 (=> (not res!2664607) (not e!3932031))))

(assert (=> d!2035261 (= res!2664607 (matchR!8550 (reg!16696 (regOne!33246 r!7292)) (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276))))))

(assert (=> d!2035261 (validRegex!8103 (reg!16696 (regOne!33246 r!7292)))))

(assert (=> d!2035261 (= (findConcatSeparation!2672 (reg!16696 (regOne!33246 r!7292)) lt!2388865 (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276)) (t!379026 (_1!36649 lt!2388900)) (_1!36649 lt!2388900)) lt!2389135)))

(declare-fun b!6487924 () Bool)

(assert (=> b!6487924 (= e!3932033 (Some!16257 (tuple2!66693 (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276)) (t!379026 (_1!36649 lt!2388900)))))))

(declare-fun b!6487925 () Bool)

(assert (=> b!6487925 (= e!3932031 (matchR!8550 lt!2388865 (t!379026 (_1!36649 lt!2388900))))))

(declare-fun b!6487926 () Bool)

(assert (=> b!6487926 (= e!3932032 (not (isDefined!12961 lt!2389135)))))

(declare-fun b!6487927 () Bool)

(declare-fun lt!2389136 () Unit!158799)

(declare-fun lt!2389134 () Unit!158799)

(assert (=> b!6487927 (= lt!2389136 lt!2389134)))

(assert (=> b!6487927 (= (++!14444 (++!14444 (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276)) (Cons!65276 (h!71724 (t!379026 (_1!36649 lt!2388900))) Nil!65276)) (t!379026 (t!379026 (_1!36649 lt!2388900)))) (_1!36649 lt!2388900))))

(assert (=> b!6487927 (= lt!2389134 (lemmaMoveElementToOtherListKeepsConcatEq!2522 (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276)) (h!71724 (t!379026 (_1!36649 lt!2388900))) (t!379026 (t!379026 (_1!36649 lt!2388900))) (_1!36649 lt!2388900)))))

(assert (=> b!6487927 (= e!3932030 (findConcatSeparation!2672 (reg!16696 (regOne!33246 r!7292)) lt!2388865 (++!14444 (++!14444 Nil!65276 (Cons!65276 (h!71724 (_1!36649 lt!2388900)) Nil!65276)) (Cons!65276 (h!71724 (t!379026 (_1!36649 lt!2388900))) Nil!65276)) (t!379026 (t!379026 (_1!36649 lt!2388900))) (_1!36649 lt!2388900)))))

(declare-fun b!6487928 () Bool)

(assert (=> b!6487928 (= e!3932033 e!3932030)))

(declare-fun c!1188712 () Bool)

(assert (=> b!6487928 (= c!1188712 ((_ is Nil!65276) (t!379026 (_1!36649 lt!2388900))))))

(assert (= (and d!2035261 res!2664607) b!6487925))

(assert (= (and d!2035261 c!1188711) b!6487924))

(assert (= (and d!2035261 (not c!1188711)) b!6487928))

(assert (= (and b!6487928 c!1188712) b!6487921))

(assert (= (and b!6487928 (not c!1188712)) b!6487927))

(assert (= (and d!2035261 res!2664608) b!6487923))

(assert (= (and b!6487923 res!2664606) b!6487920))

(assert (= (and b!6487920 res!2664604) b!6487922))

(assert (= (and d!2035261 (not res!2664605)) b!6487926))

(declare-fun m!7276392 () Bool)

(assert (=> b!6487922 m!7276392))

(declare-fun m!7276394 () Bool)

(assert (=> b!6487922 m!7276394))

(declare-fun m!7276396 () Bool)

(assert (=> b!6487926 m!7276396))

(assert (=> b!6487920 m!7276392))

(declare-fun m!7276398 () Bool)

(assert (=> b!6487920 m!7276398))

(assert (=> b!6487927 m!7276104))

(declare-fun m!7276400 () Bool)

(assert (=> b!6487927 m!7276400))

(assert (=> b!6487927 m!7276400))

(declare-fun m!7276402 () Bool)

(assert (=> b!6487927 m!7276402))

(assert (=> b!6487927 m!7276104))

(declare-fun m!7276404 () Bool)

(assert (=> b!6487927 m!7276404))

(assert (=> b!6487927 m!7276400))

(declare-fun m!7276406 () Bool)

(assert (=> b!6487927 m!7276406))

(declare-fun m!7276408 () Bool)

(assert (=> b!6487925 m!7276408))

(assert (=> d!2035261 m!7276396))

(assert (=> d!2035261 m!7276104))

(declare-fun m!7276410 () Bool)

(assert (=> d!2035261 m!7276410))

(assert (=> d!2035261 m!7275822))

(assert (=> b!6487923 m!7276392))

(declare-fun m!7276412 () Bool)

(assert (=> b!6487923 m!7276412))

(assert (=> b!6487661 d!2035261))

(declare-fun b!6487929 () Bool)

(declare-fun res!2664613 () Bool)

(declare-fun e!3932035 () Bool)

(assert (=> b!6487929 (=> res!2664613 e!3932035)))

(assert (=> b!6487929 (= res!2664613 (not (isEmpty!37468 (tail!12294 s!2326))))))

(declare-fun b!6487931 () Bool)

(declare-fun e!3932040 () Bool)

(assert (=> b!6487931 (= e!3932040 (= (head!13209 s!2326) (c!1188383 (regTwo!33246 r!7292))))))

(declare-fun b!6487932 () Bool)

(declare-fun res!2664610 () Bool)

(declare-fun e!3932037 () Bool)

(assert (=> b!6487932 (=> res!2664610 e!3932037)))

(assert (=> b!6487932 (= res!2664610 e!3932040)))

(declare-fun res!2664611 () Bool)

(assert (=> b!6487932 (=> (not res!2664611) (not e!3932040))))

(declare-fun lt!2389137 () Bool)

(assert (=> b!6487932 (= res!2664611 lt!2389137)))

(declare-fun b!6487933 () Bool)

(declare-fun e!3932041 () Bool)

(assert (=> b!6487933 (= e!3932041 e!3932035)))

(declare-fun res!2664616 () Bool)

(assert (=> b!6487933 (=> res!2664616 e!3932035)))

(declare-fun call!561517 () Bool)

(assert (=> b!6487933 (= res!2664616 call!561517)))

(declare-fun b!6487934 () Bool)

(declare-fun res!2664614 () Bool)

(assert (=> b!6487934 (=> res!2664614 e!3932037)))

(assert (=> b!6487934 (= res!2664614 (not ((_ is ElementMatch!16367) (regTwo!33246 r!7292))))))

(declare-fun e!3932036 () Bool)

(assert (=> b!6487934 (= e!3932036 e!3932037)))

(declare-fun bm!561512 () Bool)

(assert (=> bm!561512 (= call!561517 (isEmpty!37468 s!2326))))

(declare-fun b!6487935 () Bool)

(assert (=> b!6487935 (= e!3932037 e!3932041)))

(declare-fun res!2664612 () Bool)

(assert (=> b!6487935 (=> (not res!2664612) (not e!3932041))))

(assert (=> b!6487935 (= res!2664612 (not lt!2389137))))

(declare-fun b!6487936 () Bool)

(declare-fun e!3932038 () Bool)

(assert (=> b!6487936 (= e!3932038 e!3932036)))

(declare-fun c!1188715 () Bool)

(assert (=> b!6487936 (= c!1188715 ((_ is EmptyLang!16367) (regTwo!33246 r!7292)))))

(declare-fun b!6487937 () Bool)

(declare-fun res!2664615 () Bool)

(assert (=> b!6487937 (=> (not res!2664615) (not e!3932040))))

(assert (=> b!6487937 (= res!2664615 (isEmpty!37468 (tail!12294 s!2326)))))

(declare-fun b!6487938 () Bool)

(declare-fun e!3932039 () Bool)

(assert (=> b!6487938 (= e!3932039 (nullable!6360 (regTwo!33246 r!7292)))))

(declare-fun b!6487939 () Bool)

(assert (=> b!6487939 (= e!3932038 (= lt!2389137 call!561517))))

(declare-fun b!6487940 () Bool)

(declare-fun res!2664609 () Bool)

(assert (=> b!6487940 (=> (not res!2664609) (not e!3932040))))

(assert (=> b!6487940 (= res!2664609 (not call!561517))))

(declare-fun b!6487941 () Bool)

(assert (=> b!6487941 (= e!3932036 (not lt!2389137))))

(declare-fun b!6487942 () Bool)

(assert (=> b!6487942 (= e!3932035 (not (= (head!13209 s!2326) (c!1188383 (regTwo!33246 r!7292)))))))

(declare-fun d!2035263 () Bool)

(assert (=> d!2035263 e!3932038))

(declare-fun c!1188714 () Bool)

(assert (=> d!2035263 (= c!1188714 ((_ is EmptyExpr!16367) (regTwo!33246 r!7292)))))

(assert (=> d!2035263 (= lt!2389137 e!3932039)))

(declare-fun c!1188713 () Bool)

(assert (=> d!2035263 (= c!1188713 (isEmpty!37468 s!2326))))

(assert (=> d!2035263 (validRegex!8103 (regTwo!33246 r!7292))))

(assert (=> d!2035263 (= (matchR!8550 (regTwo!33246 r!7292) s!2326) lt!2389137)))

(declare-fun b!6487930 () Bool)

(assert (=> b!6487930 (= e!3932039 (matchR!8550 (derivativeStep!5063 (regTwo!33246 r!7292) (head!13209 s!2326)) (tail!12294 s!2326)))))

(assert (= (and d!2035263 c!1188713) b!6487938))

(assert (= (and d!2035263 (not c!1188713)) b!6487930))

(assert (= (and d!2035263 c!1188714) b!6487939))

(assert (= (and d!2035263 (not c!1188714)) b!6487936))

(assert (= (and b!6487936 c!1188715) b!6487941))

(assert (= (and b!6487936 (not c!1188715)) b!6487934))

(assert (= (and b!6487934 (not res!2664614)) b!6487932))

(assert (= (and b!6487932 res!2664611) b!6487940))

(assert (= (and b!6487940 res!2664609) b!6487937))

(assert (= (and b!6487937 res!2664615) b!6487931))

(assert (= (and b!6487932 (not res!2664610)) b!6487935))

(assert (= (and b!6487935 res!2664612) b!6487933))

(assert (= (and b!6487933 (not res!2664616)) b!6487929))

(assert (= (and b!6487929 (not res!2664613)) b!6487942))

(assert (= (or b!6487939 b!6487933 b!6487940) bm!561512))

(assert (=> b!6487929 m!7275894))

(assert (=> b!6487929 m!7275894))

(assert (=> b!6487929 m!7276024))

(assert (=> b!6487938 m!7275874))

(assert (=> d!2035263 m!7275886))

(assert (=> d!2035263 m!7275878))

(assert (=> b!6487937 m!7275894))

(assert (=> b!6487937 m!7275894))

(assert (=> b!6487937 m!7276024))

(assert (=> b!6487942 m!7275890))

(assert (=> b!6487931 m!7275890))

(assert (=> b!6487930 m!7275890))

(assert (=> b!6487930 m!7275890))

(declare-fun m!7276414 () Bool)

(assert (=> b!6487930 m!7276414))

(assert (=> b!6487930 m!7275894))

(assert (=> b!6487930 m!7276414))

(assert (=> b!6487930 m!7275894))

(declare-fun m!7276416 () Bool)

(assert (=> b!6487930 m!7276416))

(assert (=> bm!561512 m!7275886))

(assert (=> b!6487699 d!2035263))

(declare-fun b!6487943 () Bool)

(declare-fun e!3932043 () (InoxSet Context!11502))

(declare-fun e!3932042 () (InoxSet Context!11502))

(assert (=> b!6487943 (= e!3932043 e!3932042)))

(declare-fun c!1188717 () Bool)

(assert (=> b!6487943 (= c!1188717 ((_ is Cons!65277) (exprs!6251 (Context!11503 (t!379027 (exprs!6251 (h!71726 zl!343)))))))))

(declare-fun b!6487944 () Bool)

(declare-fun call!561518 () (InoxSet Context!11502))

(assert (=> b!6487944 (= e!3932043 ((_ map or) call!561518 (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 (h!71726 zl!343))))))) (h!71724 s!2326))))))

(declare-fun b!6487945 () Bool)

(assert (=> b!6487945 (= e!3932042 ((as const (Array Context!11502 Bool)) false))))

(declare-fun d!2035265 () Bool)

(declare-fun c!1188716 () Bool)

(declare-fun e!3932044 () Bool)

(assert (=> d!2035265 (= c!1188716 e!3932044)))

(declare-fun res!2664617 () Bool)

(assert (=> d!2035265 (=> (not res!2664617) (not e!3932044))))

(assert (=> d!2035265 (= res!2664617 ((_ is Cons!65277) (exprs!6251 (Context!11503 (t!379027 (exprs!6251 (h!71726 zl!343)))))))))

(assert (=> d!2035265 (= (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 (h!71726 zl!343)))) (h!71724 s!2326)) e!3932043)))

(declare-fun b!6487946 () Bool)

(assert (=> b!6487946 (= e!3932042 call!561518)))

(declare-fun b!6487947 () Bool)

(assert (=> b!6487947 (= e!3932044 (nullable!6360 (h!71725 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 (h!71726 zl!343))))))))))

(declare-fun bm!561513 () Bool)

(assert (=> bm!561513 (= call!561518 (derivationStepZipperDown!1615 (h!71725 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 (h!71726 zl!343)))))) (Context!11503 (t!379027 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 (h!71726 zl!343))))))) (h!71724 s!2326)))))

(assert (= (and d!2035265 res!2664617) b!6487947))

(assert (= (and d!2035265 c!1188716) b!6487944))

(assert (= (and d!2035265 (not c!1188716)) b!6487943))

(assert (= (and b!6487943 c!1188717) b!6487946))

(assert (= (and b!6487943 (not c!1188717)) b!6487945))

(assert (= (or b!6487944 b!6487946) bm!561513))

(declare-fun m!7276418 () Bool)

(assert (=> b!6487944 m!7276418))

(declare-fun m!7276420 () Bool)

(assert (=> b!6487947 m!7276420))

(declare-fun m!7276422 () Bool)

(assert (=> bm!561513 m!7276422))

(assert (=> b!6487127 d!2035265))

(declare-fun d!2035267 () Bool)

(declare-fun res!2664622 () Bool)

(declare-fun e!3932049 () Bool)

(assert (=> d!2035267 (=> res!2664622 e!3932049)))

(assert (=> d!2035267 (= res!2664622 ((_ is Nil!65278) lt!2389041))))

(assert (=> d!2035267 (= (noDuplicate!2187 lt!2389041) e!3932049)))

(declare-fun b!6487952 () Bool)

(declare-fun e!3932050 () Bool)

(assert (=> b!6487952 (= e!3932049 e!3932050)))

(declare-fun res!2664623 () Bool)

(assert (=> b!6487952 (=> (not res!2664623) (not e!3932050))))

(declare-fun contains!20189 (List!65402 Context!11502) Bool)

(assert (=> b!6487952 (= res!2664623 (not (contains!20189 (t!379028 lt!2389041) (h!71726 lt!2389041))))))

(declare-fun b!6487953 () Bool)

(assert (=> b!6487953 (= e!3932050 (noDuplicate!2187 (t!379028 lt!2389041)))))

(assert (= (and d!2035267 (not res!2664622)) b!6487952))

(assert (= (and b!6487952 res!2664623) b!6487953))

(declare-fun m!7276424 () Bool)

(assert (=> b!6487952 m!7276424))

(declare-fun m!7276426 () Bool)

(assert (=> b!6487953 m!7276426))

(assert (=> d!2035049 d!2035267))

(declare-fun d!2035269 () Bool)

(declare-fun e!3932057 () Bool)

(assert (=> d!2035269 e!3932057))

(declare-fun res!2664629 () Bool)

(assert (=> d!2035269 (=> (not res!2664629) (not e!3932057))))

(declare-fun res!2664628 () List!65402)

(assert (=> d!2035269 (= res!2664629 (noDuplicate!2187 res!2664628))))

(declare-fun e!3932059 () Bool)

(assert (=> d!2035269 e!3932059))

(assert (=> d!2035269 (= (choose!48156 z!1189) res!2664628)))

(declare-fun b!6487961 () Bool)

(declare-fun e!3932058 () Bool)

(declare-fun tp!1796310 () Bool)

(assert (=> b!6487961 (= e!3932058 tp!1796310)))

(declare-fun tp!1796309 () Bool)

(declare-fun b!6487960 () Bool)

(assert (=> b!6487960 (= e!3932059 (and (inv!84164 (h!71726 res!2664628)) e!3932058 tp!1796309))))

(declare-fun b!6487962 () Bool)

(assert (=> b!6487962 (= e!3932057 (= (content!12439 res!2664628) z!1189))))

(assert (= b!6487960 b!6487961))

(assert (= (and d!2035269 ((_ is Cons!65278) res!2664628)) b!6487960))

(assert (= (and d!2035269 res!2664629) b!6487962))

(declare-fun m!7276428 () Bool)

(assert (=> d!2035269 m!7276428))

(declare-fun m!7276430 () Bool)

(assert (=> b!6487960 m!7276430))

(declare-fun m!7276432 () Bool)

(assert (=> b!6487962 m!7276432))

(assert (=> d!2035049 d!2035269))

(declare-fun d!2035271 () Bool)

(assert (=> d!2035271 (= (nullable!6360 (h!71725 (exprs!6251 lt!2388895))) (nullableFct!2298 (h!71725 (exprs!6251 lt!2388895))))))

(declare-fun bs!1646050 () Bool)

(assert (= bs!1646050 d!2035271))

(declare-fun m!7276434 () Bool)

(assert (=> bs!1646050 m!7276434))

(assert (=> b!6487274 d!2035271))

(declare-fun d!2035273 () Bool)

(assert (=> d!2035273 (= (isEmpty!37468 s!2326) ((_ is Nil!65276) s!2326))))

(assert (=> bm!561495 d!2035273))

(assert (=> b!6487499 d!2035213))

(assert (=> b!6487499 d!2035215))

(declare-fun d!2035275 () Bool)

(assert (=> d!2035275 (= (isDefined!12961 lt!2389101) (not (isEmpty!37472 lt!2389101)))))

(declare-fun bs!1646051 () Bool)

(assert (= bs!1646051 d!2035275))

(declare-fun m!7276436 () Bool)

(assert (=> bs!1646051 m!7276436))

(assert (=> b!6487687 d!2035275))

(declare-fun lt!2389138 () List!65400)

(declare-fun e!3932060 () Bool)

(declare-fun b!6487966 () Bool)

(assert (=> b!6487966 (= e!3932060 (or (not (= lt!2388903 Nil!65276)) (= lt!2389138 (t!379026 (_1!36649 lt!2388858)))))))

(declare-fun d!2035277 () Bool)

(assert (=> d!2035277 e!3932060))

(declare-fun res!2664631 () Bool)

(assert (=> d!2035277 (=> (not res!2664631) (not e!3932060))))

(assert (=> d!2035277 (= res!2664631 (= (content!12437 lt!2389138) ((_ map or) (content!12437 (t!379026 (_1!36649 lt!2388858))) (content!12437 lt!2388903))))))

(declare-fun e!3932061 () List!65400)

(assert (=> d!2035277 (= lt!2389138 e!3932061)))

(declare-fun c!1188718 () Bool)

(assert (=> d!2035277 (= c!1188718 ((_ is Nil!65276) (t!379026 (_1!36649 lt!2388858))))))

(assert (=> d!2035277 (= (++!14444 (t!379026 (_1!36649 lt!2388858)) lt!2388903) lt!2389138)))

(declare-fun b!6487964 () Bool)

(assert (=> b!6487964 (= e!3932061 (Cons!65276 (h!71724 (t!379026 (_1!36649 lt!2388858))) (++!14444 (t!379026 (t!379026 (_1!36649 lt!2388858))) lt!2388903)))))

(declare-fun b!6487965 () Bool)

(declare-fun res!2664630 () Bool)

(assert (=> b!6487965 (=> (not res!2664630) (not e!3932060))))

(assert (=> b!6487965 (= res!2664630 (= (size!40424 lt!2389138) (+ (size!40424 (t!379026 (_1!36649 lt!2388858))) (size!40424 lt!2388903))))))

(declare-fun b!6487963 () Bool)

(assert (=> b!6487963 (= e!3932061 lt!2388903)))

(assert (= (and d!2035277 c!1188718) b!6487963))

(assert (= (and d!2035277 (not c!1188718)) b!6487964))

(assert (= (and d!2035277 res!2664631) b!6487965))

(assert (= (and b!6487965 res!2664630) b!6487966))

(declare-fun m!7276438 () Bool)

(assert (=> d!2035277 m!7276438))

(declare-fun m!7276440 () Bool)

(assert (=> d!2035277 m!7276440))

(assert (=> d!2035277 m!7275526))

(declare-fun m!7276442 () Bool)

(assert (=> b!6487964 m!7276442))

(declare-fun m!7276444 () Bool)

(assert (=> b!6487965 m!7276444))

(assert (=> b!6487965 m!7276322))

(assert (=> b!6487965 m!7275534))

(assert (=> b!6487033 d!2035277))

(declare-fun b!6487967 () Bool)

(declare-fun e!3932063 () (InoxSet Context!11502))

(declare-fun e!3932062 () (InoxSet Context!11502))

(assert (=> b!6487967 (= e!3932063 e!3932062)))

(declare-fun c!1188720 () Bool)

(assert (=> b!6487967 (= c!1188720 ((_ is Cons!65277) (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388885))))))))

(declare-fun call!561519 () (InoxSet Context!11502))

(declare-fun b!6487968 () Bool)

(assert (=> b!6487968 (= e!3932063 ((_ map or) call!561519 (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388885)))))) (h!71724 s!2326))))))

(declare-fun b!6487969 () Bool)

(assert (=> b!6487969 (= e!3932062 ((as const (Array Context!11502 Bool)) false))))

(declare-fun d!2035279 () Bool)

(declare-fun c!1188719 () Bool)

(declare-fun e!3932064 () Bool)

(assert (=> d!2035279 (= c!1188719 e!3932064)))

(declare-fun res!2664632 () Bool)

(assert (=> d!2035279 (=> (not res!2664632) (not e!3932064))))

(assert (=> d!2035279 (= res!2664632 ((_ is Cons!65277) (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388885))))))))

(assert (=> d!2035279 (= (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 lt!2388885))) (h!71724 s!2326)) e!3932063)))

(declare-fun b!6487970 () Bool)

(assert (=> b!6487970 (= e!3932062 call!561519)))

(declare-fun b!6487971 () Bool)

(assert (=> b!6487971 (= e!3932064 (nullable!6360 (h!71725 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388885)))))))))

(declare-fun bm!561514 () Bool)

(assert (=> bm!561514 (= call!561519 (derivationStepZipperDown!1615 (h!71725 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388885))))) (Context!11503 (t!379027 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388885)))))) (h!71724 s!2326)))))

(assert (= (and d!2035279 res!2664632) b!6487971))

(assert (= (and d!2035279 c!1188719) b!6487968))

(assert (= (and d!2035279 (not c!1188719)) b!6487967))

(assert (= (and b!6487967 c!1188720) b!6487970))

(assert (= (and b!6487967 (not c!1188720)) b!6487969))

(assert (= (or b!6487968 b!6487970) bm!561514))

(declare-fun m!7276446 () Bool)

(assert (=> b!6487968 m!7276446))

(declare-fun m!7276448 () Bool)

(assert (=> b!6487971 m!7276448))

(declare-fun m!7276450 () Bool)

(assert (=> bm!561514 m!7276450))

(assert (=> b!6487586 d!2035279))

(declare-fun b!6487972 () Bool)

(declare-fun e!3932065 () (InoxSet Context!11502))

(declare-fun call!561524 () (InoxSet Context!11502))

(declare-fun call!561523 () (InoxSet Context!11502))

(assert (=> b!6487972 (= e!3932065 ((_ map or) call!561524 call!561523))))

(declare-fun b!6487973 () Bool)

(declare-fun e!3932069 () (InoxSet Context!11502))

(declare-fun call!561521 () (InoxSet Context!11502))

(assert (=> b!6487973 (= e!3932069 ((_ map or) call!561523 call!561521))))

(declare-fun bm!561515 () Bool)

(declare-fun call!561522 () (InoxSet Context!11502))

(assert (=> bm!561515 (= call!561522 call!561521)))

(declare-fun b!6487974 () Bool)

(declare-fun e!3932070 () (InoxSet Context!11502))

(assert (=> b!6487974 (= e!3932069 e!3932070)))

(declare-fun c!1188721 () Bool)

(assert (=> b!6487974 (= c!1188721 ((_ is Concat!25212) (h!71725 (exprs!6251 lt!2388870))))))

(declare-fun b!6487975 () Bool)

(declare-fun e!3932068 () (InoxSet Context!11502))

(assert (=> b!6487975 (= e!3932068 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (t!379027 (exprs!6251 lt!2388870))) true))))

(declare-fun b!6487976 () Bool)

(declare-fun e!3932067 () Bool)

(assert (=> b!6487976 (= e!3932067 (nullable!6360 (regOne!33246 (h!71725 (exprs!6251 lt!2388870)))))))

(declare-fun bm!561516 () Bool)

(declare-fun c!1188722 () Bool)

(declare-fun call!561520 () List!65401)

(assert (=> bm!561516 (= call!561523 (derivationStepZipperDown!1615 (ite c!1188722 (regTwo!33247 (h!71725 (exprs!6251 lt!2388870))) (regOne!33246 (h!71725 (exprs!6251 lt!2388870)))) (ite c!1188722 (Context!11503 (t!379027 (exprs!6251 lt!2388870))) (Context!11503 call!561520)) (h!71724 s!2326)))))

(declare-fun bm!561517 () Bool)

(declare-fun c!1188725 () Bool)

(declare-fun call!561525 () List!65401)

(assert (=> bm!561517 (= call!561524 (derivationStepZipperDown!1615 (ite c!1188722 (regOne!33247 (h!71725 (exprs!6251 lt!2388870))) (ite c!1188725 (regTwo!33246 (h!71725 (exprs!6251 lt!2388870))) (ite c!1188721 (regOne!33246 (h!71725 (exprs!6251 lt!2388870))) (reg!16696 (h!71725 (exprs!6251 lt!2388870)))))) (ite (or c!1188722 c!1188725) (Context!11503 (t!379027 (exprs!6251 lt!2388870))) (Context!11503 call!561525)) (h!71724 s!2326)))))

(declare-fun bm!561518 () Bool)

(assert (=> bm!561518 (= call!561525 call!561520)))

(declare-fun b!6487977 () Bool)

(declare-fun e!3932066 () (InoxSet Context!11502))

(assert (=> b!6487977 (= e!3932066 call!561522)))

(declare-fun b!6487978 () Bool)

(assert (=> b!6487978 (= e!3932070 call!561522)))

(declare-fun b!6487979 () Bool)

(assert (=> b!6487979 (= e!3932066 ((as const (Array Context!11502 Bool)) false))))

(declare-fun bm!561519 () Bool)

(assert (=> bm!561519 (= call!561520 ($colon$colon!2219 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388870)))) (ite (or c!1188725 c!1188721) (regTwo!33246 (h!71725 (exprs!6251 lt!2388870))) (h!71725 (exprs!6251 lt!2388870)))))))

(declare-fun b!6487980 () Bool)

(assert (=> b!6487980 (= c!1188725 e!3932067)))

(declare-fun res!2664633 () Bool)

(assert (=> b!6487980 (=> (not res!2664633) (not e!3932067))))

(assert (=> b!6487980 (= res!2664633 ((_ is Concat!25212) (h!71725 (exprs!6251 lt!2388870))))))

(assert (=> b!6487980 (= e!3932065 e!3932069)))

(declare-fun b!6487981 () Bool)

(declare-fun c!1188723 () Bool)

(assert (=> b!6487981 (= c!1188723 ((_ is Star!16367) (h!71725 (exprs!6251 lt!2388870))))))

(assert (=> b!6487981 (= e!3932070 e!3932066)))

(declare-fun bm!561520 () Bool)

(assert (=> bm!561520 (= call!561521 call!561524)))

(declare-fun b!6487982 () Bool)

(assert (=> b!6487982 (= e!3932068 e!3932065)))

(assert (=> b!6487982 (= c!1188722 ((_ is Union!16367) (h!71725 (exprs!6251 lt!2388870))))))

(declare-fun d!2035281 () Bool)

(declare-fun c!1188724 () Bool)

(assert (=> d!2035281 (= c!1188724 (and ((_ is ElementMatch!16367) (h!71725 (exprs!6251 lt!2388870))) (= (c!1188383 (h!71725 (exprs!6251 lt!2388870))) (h!71724 s!2326))))))

(assert (=> d!2035281 (= (derivationStepZipperDown!1615 (h!71725 (exprs!6251 lt!2388870)) (Context!11503 (t!379027 (exprs!6251 lt!2388870))) (h!71724 s!2326)) e!3932068)))

(assert (= (and d!2035281 c!1188724) b!6487975))

(assert (= (and d!2035281 (not c!1188724)) b!6487982))

(assert (= (and b!6487982 c!1188722) b!6487972))

(assert (= (and b!6487982 (not c!1188722)) b!6487980))

(assert (= (and b!6487980 res!2664633) b!6487976))

(assert (= (and b!6487980 c!1188725) b!6487973))

(assert (= (and b!6487980 (not c!1188725)) b!6487974))

(assert (= (and b!6487974 c!1188721) b!6487978))

(assert (= (and b!6487974 (not c!1188721)) b!6487981))

(assert (= (and b!6487981 c!1188723) b!6487977))

(assert (= (and b!6487981 (not c!1188723)) b!6487979))

(assert (= (or b!6487978 b!6487977) bm!561518))

(assert (= (or b!6487978 b!6487977) bm!561515))

(assert (= (or b!6487973 bm!561518) bm!561519))

(assert (= (or b!6487973 bm!561515) bm!561520))

(assert (= (or b!6487972 b!6487973) bm!561516))

(assert (= (or b!6487972 bm!561520) bm!561517))

(declare-fun m!7276452 () Bool)

(assert (=> bm!561519 m!7276452))

(declare-fun m!7276454 () Bool)

(assert (=> bm!561516 m!7276454))

(declare-fun m!7276456 () Bool)

(assert (=> b!6487976 m!7276456))

(declare-fun m!7276458 () Bool)

(assert (=> b!6487975 m!7276458))

(declare-fun m!7276460 () Bool)

(assert (=> bm!561517 m!7276460))

(assert (=> bm!561422 d!2035281))

(declare-fun d!2035283 () Bool)

(assert (=> d!2035283 (= (isEmpty!37468 (tail!12294 (_1!36649 lt!2388858))) ((_ is Nil!65276) (tail!12294 (_1!36649 lt!2388858))))))

(assert (=> b!6487382 d!2035283))

(declare-fun d!2035285 () Bool)

(assert (=> d!2035285 (= (tail!12294 (_1!36649 lt!2388858)) (t!379026 (_1!36649 lt!2388858)))))

(assert (=> b!6487382 d!2035285))

(declare-fun d!2035287 () Bool)

(assert (=> d!2035287 (= (isEmpty!37468 (tail!12294 lt!2388889)) ((_ is Nil!65276) (tail!12294 lt!2388889)))))

(assert (=> b!6487485 d!2035287))

(declare-fun d!2035289 () Bool)

(assert (=> d!2035289 (= (tail!12294 lt!2388889) (t!379026 lt!2388889))))

(assert (=> b!6487485 d!2035289))

(declare-fun d!2035291 () Bool)

(declare-fun c!1188728 () Bool)

(assert (=> d!2035291 (= c!1188728 ((_ is Nil!65276) lt!2388998))))

(declare-fun e!3932073 () (InoxSet C!33004))

(assert (=> d!2035291 (= (content!12437 lt!2388998) e!3932073)))

(declare-fun b!6487987 () Bool)

(assert (=> b!6487987 (= e!3932073 ((as const (Array C!33004 Bool)) false))))

(declare-fun b!6487988 () Bool)

(assert (=> b!6487988 (= e!3932073 ((_ map or) (store ((as const (Array C!33004 Bool)) false) (h!71724 lt!2388998) true) (content!12437 (t!379026 lt!2388998))))))

(assert (= (and d!2035291 c!1188728) b!6487987))

(assert (= (and d!2035291 (not c!1188728)) b!6487988))

(declare-fun m!7276462 () Bool)

(assert (=> b!6487988 m!7276462))

(declare-fun m!7276464 () Bool)

(assert (=> b!6487988 m!7276464))

(assert (=> d!2034949 d!2035291))

(declare-fun d!2035293 () Bool)

(declare-fun c!1188729 () Bool)

(assert (=> d!2035293 (= c!1188729 ((_ is Nil!65276) lt!2388889))))

(declare-fun e!3932074 () (InoxSet C!33004))

(assert (=> d!2035293 (= (content!12437 lt!2388889) e!3932074)))

(declare-fun b!6487989 () Bool)

(assert (=> b!6487989 (= e!3932074 ((as const (Array C!33004 Bool)) false))))

(declare-fun b!6487990 () Bool)

(assert (=> b!6487990 (= e!3932074 ((_ map or) (store ((as const (Array C!33004 Bool)) false) (h!71724 lt!2388889) true) (content!12437 (t!379026 lt!2388889))))))

(assert (= (and d!2035293 c!1188729) b!6487989))

(assert (= (and d!2035293 (not c!1188729)) b!6487990))

(declare-fun m!7276466 () Bool)

(assert (=> b!6487990 m!7276466))

(declare-fun m!7276468 () Bool)

(assert (=> b!6487990 m!7276468))

(assert (=> d!2034949 d!2035293))

(declare-fun d!2035295 () Bool)

(declare-fun c!1188730 () Bool)

(assert (=> d!2035295 (= c!1188730 ((_ is Nil!65276) (_2!36649 lt!2388900)))))

(declare-fun e!3932075 () (InoxSet C!33004))

(assert (=> d!2035295 (= (content!12437 (_2!36649 lt!2388900)) e!3932075)))

(declare-fun b!6487991 () Bool)

(assert (=> b!6487991 (= e!3932075 ((as const (Array C!33004 Bool)) false))))

(declare-fun b!6487992 () Bool)

(assert (=> b!6487992 (= e!3932075 ((_ map or) (store ((as const (Array C!33004 Bool)) false) (h!71724 (_2!36649 lt!2388900)) true) (content!12437 (t!379026 (_2!36649 lt!2388900)))))))

(assert (= (and d!2035295 c!1188730) b!6487991))

(assert (= (and d!2035295 (not c!1188730)) b!6487992))

(declare-fun m!7276470 () Bool)

(assert (=> b!6487992 m!7276470))

(declare-fun m!7276472 () Bool)

(assert (=> b!6487992 m!7276472))

(assert (=> d!2034949 d!2035295))

(declare-fun d!2035297 () Bool)

(assert (=> d!2035297 (= (Exists!3437 (ite c!1188646 lambda!359203 lambda!359204)) (choose!48164 (ite c!1188646 lambda!359203 lambda!359204)))))

(declare-fun bs!1646052 () Bool)

(assert (= bs!1646052 d!2035297))

(declare-fun m!7276474 () Bool)

(assert (=> bs!1646052 m!7276474))

(assert (=> bm!561499 d!2035297))

(declare-fun d!2035299 () Bool)

(assert (=> d!2035299 (= (isEmpty!37468 lt!2388903) ((_ is Nil!65276) lt!2388903))))

(assert (=> d!2035087 d!2035299))

(declare-fun b!6487993 () Bool)

(declare-fun e!3932076 () (InoxSet Context!11502))

(declare-fun call!561530 () (InoxSet Context!11502))

(declare-fun call!561529 () (InoxSet Context!11502))

(assert (=> b!6487993 (= e!3932076 ((_ map or) call!561530 call!561529))))

(declare-fun b!6487994 () Bool)

(declare-fun e!3932080 () (InoxSet Context!11502))

(declare-fun call!561527 () (InoxSet Context!11502))

(assert (=> b!6487994 (= e!3932080 ((_ map or) call!561529 call!561527))))

(declare-fun bm!561521 () Bool)

(declare-fun call!561528 () (InoxSet Context!11502))

(assert (=> bm!561521 (= call!561528 call!561527)))

(declare-fun b!6487995 () Bool)

(declare-fun e!3932081 () (InoxSet Context!11502))

(assert (=> b!6487995 (= e!3932080 e!3932081)))

(declare-fun c!1188731 () Bool)

(assert (=> b!6487995 (= c!1188731 ((_ is Concat!25212) (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292))))))))

(declare-fun b!6487996 () Bool)

(declare-fun e!3932079 () (InoxSet Context!11502))

(assert (=> b!6487996 (= e!3932079 (store ((as const (Array Context!11502 Bool)) false) (ite c!1188570 lt!2388862 (Context!11503 call!561468)) true))))

(declare-fun b!6487997 () Bool)

(declare-fun e!3932078 () Bool)

(assert (=> b!6487997 (= e!3932078 (nullable!6360 (regOne!33246 (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292)))))))))

(declare-fun call!561526 () List!65401)

(declare-fun bm!561522 () Bool)

(declare-fun c!1188732 () Bool)

(assert (=> bm!561522 (= call!561529 (derivationStepZipperDown!1615 (ite c!1188732 (regTwo!33247 (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292))))) (regOne!33246 (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292)))))) (ite c!1188732 (ite c!1188570 lt!2388862 (Context!11503 call!561468)) (Context!11503 call!561526)) (h!71724 s!2326)))))

(declare-fun c!1188735 () Bool)

(declare-fun call!561531 () List!65401)

(declare-fun bm!561523 () Bool)

(assert (=> bm!561523 (= call!561530 (derivationStepZipperDown!1615 (ite c!1188732 (regOne!33247 (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292))))) (ite c!1188735 (regTwo!33246 (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292))))) (ite c!1188731 (regOne!33246 (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292))))) (reg!16696 (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292)))))))) (ite (or c!1188732 c!1188735) (ite c!1188570 lt!2388862 (Context!11503 call!561468)) (Context!11503 call!561531)) (h!71724 s!2326)))))

(declare-fun bm!561524 () Bool)

(assert (=> bm!561524 (= call!561531 call!561526)))

(declare-fun b!6487998 () Bool)

(declare-fun e!3932077 () (InoxSet Context!11502))

(assert (=> b!6487998 (= e!3932077 call!561528)))

(declare-fun b!6487999 () Bool)

(assert (=> b!6487999 (= e!3932081 call!561528)))

(declare-fun b!6488000 () Bool)

(assert (=> b!6488000 (= e!3932077 ((as const (Array Context!11502 Bool)) false))))

(declare-fun bm!561525 () Bool)

(assert (=> bm!561525 (= call!561526 ($colon$colon!2219 (exprs!6251 (ite c!1188570 lt!2388862 (Context!11503 call!561468))) (ite (or c!1188735 c!1188731) (regTwo!33246 (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292))))) (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292)))))))))

(declare-fun b!6488001 () Bool)

(assert (=> b!6488001 (= c!1188735 e!3932078)))

(declare-fun res!2664634 () Bool)

(assert (=> b!6488001 (=> (not res!2664634) (not e!3932078))))

(assert (=> b!6488001 (= res!2664634 ((_ is Concat!25212) (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292))))))))

(assert (=> b!6488001 (= e!3932076 e!3932080)))

(declare-fun b!6488002 () Bool)

(declare-fun c!1188733 () Bool)

(assert (=> b!6488002 (= c!1188733 ((_ is Star!16367) (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292))))))))

(assert (=> b!6488002 (= e!3932081 e!3932077)))

(declare-fun bm!561526 () Bool)

(assert (=> bm!561526 (= call!561527 call!561530)))

(declare-fun b!6488003 () Bool)

(assert (=> b!6488003 (= e!3932079 e!3932076)))

(assert (=> b!6488003 (= c!1188732 ((_ is Union!16367) (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292))))))))

(declare-fun d!2035301 () Bool)

(declare-fun c!1188734 () Bool)

(assert (=> d!2035301 (= c!1188734 (and ((_ is ElementMatch!16367) (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292))))) (= (c!1188383 (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292))))) (h!71724 s!2326))))))

(assert (=> d!2035301 (= (derivationStepZipperDown!1615 (ite c!1188570 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292)))) (ite c!1188570 lt!2388862 (Context!11503 call!561468)) (h!71724 s!2326)) e!3932079)))

(assert (= (and d!2035301 c!1188734) b!6487996))

(assert (= (and d!2035301 (not c!1188734)) b!6488003))

(assert (= (and b!6488003 c!1188732) b!6487993))

(assert (= (and b!6488003 (not c!1188732)) b!6488001))

(assert (= (and b!6488001 res!2664634) b!6487997))

(assert (= (and b!6488001 c!1188735) b!6487994))

(assert (= (and b!6488001 (not c!1188735)) b!6487995))

(assert (= (and b!6487995 c!1188731) b!6487999))

(assert (= (and b!6487995 (not c!1188731)) b!6488002))

(assert (= (and b!6488002 c!1188733) b!6487998))

(assert (= (and b!6488002 (not c!1188733)) b!6488000))

(assert (= (or b!6487999 b!6487998) bm!561524))

(assert (= (or b!6487999 b!6487998) bm!561521))

(assert (= (or b!6487994 bm!561524) bm!561525))

(assert (= (or b!6487994 bm!561521) bm!561526))

(assert (= (or b!6487993 b!6487994) bm!561522))

(assert (= (or b!6487993 bm!561526) bm!561523))

(declare-fun m!7276476 () Bool)

(assert (=> bm!561525 m!7276476))

(declare-fun m!7276478 () Bool)

(assert (=> bm!561522 m!7276478))

(declare-fun m!7276480 () Bool)

(assert (=> b!6487997 m!7276480))

(declare-fun m!7276482 () Bool)

(assert (=> b!6487996 m!7276482))

(declare-fun m!7276484 () Bool)

(assert (=> bm!561523 m!7276484))

(assert (=> bm!561464 d!2035301))

(declare-fun d!2035303 () Bool)

(assert (=> d!2035303 (= (head!13210 (exprs!6251 (h!71726 zl!343))) (h!71725 (exprs!6251 (h!71726 zl!343))))))

(assert (=> b!6487727 d!2035303))

(declare-fun d!2035305 () Bool)

(assert (=> d!2035305 (= (isEmpty!37468 (tail!12294 s!2326)) ((_ is Nil!65276) (tail!12294 s!2326)))))

(assert (=> b!6487611 d!2035305))

(declare-fun d!2035307 () Bool)

(assert (=> d!2035307 (= (tail!12294 s!2326) (t!379026 s!2326))))

(assert (=> b!6487611 d!2035307))

(assert (=> d!2034953 d!2034951))

(declare-fun d!2035309 () Bool)

(assert (=> d!2035309 (= (++!14444 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858)) (_2!36649 lt!2388900)) (++!14444 (_1!36649 lt!2388858) (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900))))))

(assert (=> d!2035309 true))

(declare-fun _$52!2428 () Unit!158799)

(assert (=> d!2035309 (= (choose!48151 (_1!36649 lt!2388858) (_2!36649 lt!2388858) (_2!36649 lt!2388900)) _$52!2428)))

(declare-fun bs!1646053 () Bool)

(assert (= bs!1646053 d!2035309))

(assert (=> bs!1646053 m!7275018))

(assert (=> bs!1646053 m!7275018))

(assert (=> bs!1646053 m!7275568))

(assert (=> bs!1646053 m!7274924))

(assert (=> bs!1646053 m!7274924))

(assert (=> bs!1646053 m!7275576))

(assert (=> d!2034953 d!2035309))

(declare-fun e!3932082 () Bool)

(declare-fun lt!2389139 () List!65400)

(declare-fun b!6488007 () Bool)

(assert (=> b!6488007 (= e!3932082 (or (not (= (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900)) Nil!65276)) (= lt!2389139 (_1!36649 lt!2388858))))))

(declare-fun d!2035311 () Bool)

(assert (=> d!2035311 e!3932082))

(declare-fun res!2664636 () Bool)

(assert (=> d!2035311 (=> (not res!2664636) (not e!3932082))))

(assert (=> d!2035311 (= res!2664636 (= (content!12437 lt!2389139) ((_ map or) (content!12437 (_1!36649 lt!2388858)) (content!12437 (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900))))))))

(declare-fun e!3932083 () List!65400)

(assert (=> d!2035311 (= lt!2389139 e!3932083)))

(declare-fun c!1188736 () Bool)

(assert (=> d!2035311 (= c!1188736 ((_ is Nil!65276) (_1!36649 lt!2388858)))))

(assert (=> d!2035311 (= (++!14444 (_1!36649 lt!2388858) (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900))) lt!2389139)))

(declare-fun b!6488005 () Bool)

(assert (=> b!6488005 (= e!3932083 (Cons!65276 (h!71724 (_1!36649 lt!2388858)) (++!14444 (t!379026 (_1!36649 lt!2388858)) (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900)))))))

(declare-fun b!6488006 () Bool)

(declare-fun res!2664635 () Bool)

(assert (=> b!6488006 (=> (not res!2664635) (not e!3932082))))

(assert (=> b!6488006 (= res!2664635 (= (size!40424 lt!2389139) (+ (size!40424 (_1!36649 lt!2388858)) (size!40424 (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900))))))))

(declare-fun b!6488004 () Bool)

(assert (=> b!6488004 (= e!3932083 (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900)))))

(assert (= (and d!2035311 c!1188736) b!6488004))

(assert (= (and d!2035311 (not c!1188736)) b!6488005))

(assert (= (and d!2035311 res!2664636) b!6488006))

(assert (= (and b!6488006 res!2664635) b!6488007))

(declare-fun m!7276486 () Bool)

(assert (=> d!2035311 m!7276486))

(assert (=> d!2035311 m!7275524))

(assert (=> d!2035311 m!7274924))

(declare-fun m!7276488 () Bool)

(assert (=> d!2035311 m!7276488))

(assert (=> b!6488005 m!7274924))

(declare-fun m!7276490 () Bool)

(assert (=> b!6488005 m!7276490))

(declare-fun m!7276492 () Bool)

(assert (=> b!6488006 m!7276492))

(assert (=> b!6488006 m!7275532))

(assert (=> b!6488006 m!7274924))

(declare-fun m!7276494 () Bool)

(assert (=> b!6488006 m!7276494))

(assert (=> d!2034953 d!2035311))

(declare-fun b!6488011 () Bool)

(declare-fun lt!2389140 () List!65400)

(declare-fun e!3932084 () Bool)

(assert (=> b!6488011 (= e!3932084 (or (not (= (_2!36649 lt!2388900) Nil!65276)) (= lt!2389140 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858)))))))

(declare-fun d!2035313 () Bool)

(assert (=> d!2035313 e!3932084))

(declare-fun res!2664638 () Bool)

(assert (=> d!2035313 (=> (not res!2664638) (not e!3932084))))

(assert (=> d!2035313 (= res!2664638 (= (content!12437 lt!2389140) ((_ map or) (content!12437 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858))) (content!12437 (_2!36649 lt!2388900)))))))

(declare-fun e!3932085 () List!65400)

(assert (=> d!2035313 (= lt!2389140 e!3932085)))

(declare-fun c!1188737 () Bool)

(assert (=> d!2035313 (= c!1188737 ((_ is Nil!65276) (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858))))))

(assert (=> d!2035313 (= (++!14444 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858)) (_2!36649 lt!2388900)) lt!2389140)))

(declare-fun b!6488009 () Bool)

(assert (=> b!6488009 (= e!3932085 (Cons!65276 (h!71724 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858))) (++!14444 (t!379026 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858))) (_2!36649 lt!2388900))))))

(declare-fun b!6488010 () Bool)

(declare-fun res!2664637 () Bool)

(assert (=> b!6488010 (=> (not res!2664637) (not e!3932084))))

(assert (=> b!6488010 (= res!2664637 (= (size!40424 lt!2389140) (+ (size!40424 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858))) (size!40424 (_2!36649 lt!2388900)))))))

(declare-fun b!6488008 () Bool)

(assert (=> b!6488008 (= e!3932085 (_2!36649 lt!2388900))))

(assert (= (and d!2035313 c!1188737) b!6488008))

(assert (= (and d!2035313 (not c!1188737)) b!6488009))

(assert (= (and d!2035313 res!2664638) b!6488010))

(assert (= (and b!6488010 res!2664637) b!6488011))

(declare-fun m!7276496 () Bool)

(assert (=> d!2035313 m!7276496))

(assert (=> d!2035313 m!7275018))

(declare-fun m!7276498 () Bool)

(assert (=> d!2035313 m!7276498))

(assert (=> d!2035313 m!7275540))

(declare-fun m!7276500 () Bool)

(assert (=> b!6488009 m!7276500))

(declare-fun m!7276502 () Bool)

(assert (=> b!6488010 m!7276502))

(assert (=> b!6488010 m!7275018))

(declare-fun m!7276504 () Bool)

(assert (=> b!6488010 m!7276504))

(assert (=> b!6488010 m!7275548))

(assert (=> d!2034953 d!2035313))

(assert (=> d!2034953 d!2035141))

(declare-fun d!2035315 () Bool)

(assert (=> d!2035315 (= (nullable!6360 lt!2388899) (nullableFct!2298 lt!2388899))))

(declare-fun bs!1646054 () Bool)

(assert (= bs!1646054 d!2035315))

(declare-fun m!7276506 () Bool)

(assert (=> bs!1646054 m!7276506))

(assert (=> b!6487508 d!2035315))

(declare-fun d!2035317 () Bool)

(assert (=> d!2035317 true))

(declare-fun setRes!44202 () Bool)

(assert (=> d!2035317 setRes!44202))

(declare-fun condSetEmpty!44202 () Bool)

(declare-fun res!2664641 () (InoxSet Context!11502))

(assert (=> d!2035317 (= condSetEmpty!44202 (= res!2664641 ((as const (Array Context!11502 Bool)) false)))))

(assert (=> d!2035317 (= (choose!48152 lt!2388878 lambda!359120) res!2664641)))

(declare-fun setIsEmpty!44202 () Bool)

(assert (=> setIsEmpty!44202 setRes!44202))

(declare-fun e!3932088 () Bool)

(declare-fun tp!1796316 () Bool)

(declare-fun setElem!44202 () Context!11502)

(declare-fun setNonEmpty!44202 () Bool)

(assert (=> setNonEmpty!44202 (= setRes!44202 (and tp!1796316 (inv!84164 setElem!44202) e!3932088))))

(declare-fun setRest!44202 () (InoxSet Context!11502))

(assert (=> setNonEmpty!44202 (= res!2664641 ((_ map or) (store ((as const (Array Context!11502 Bool)) false) setElem!44202 true) setRest!44202))))

(declare-fun b!6488014 () Bool)

(declare-fun tp!1796315 () Bool)

(assert (=> b!6488014 (= e!3932088 tp!1796315)))

(assert (= (and d!2035317 condSetEmpty!44202) setIsEmpty!44202))

(assert (= (and d!2035317 (not condSetEmpty!44202)) setNonEmpty!44202))

(assert (= setNonEmpty!44202 b!6488014))

(declare-fun m!7276508 () Bool)

(assert (=> setNonEmpty!44202 m!7276508))

(assert (=> d!2035015 d!2035317))

(declare-fun b!6488015 () Bool)

(declare-fun res!2664646 () Bool)

(declare-fun e!3932089 () Bool)

(assert (=> b!6488015 (=> res!2664646 e!3932089)))

(assert (=> b!6488015 (= res!2664646 (not (isEmpty!37468 (tail!12294 (tail!12294 s!2326)))))))

(declare-fun b!6488017 () Bool)

(declare-fun e!3932094 () Bool)

(assert (=> b!6488017 (= e!3932094 (= (head!13209 (tail!12294 s!2326)) (c!1188383 (derivativeStep!5063 r!7292 (head!13209 s!2326)))))))

(declare-fun b!6488018 () Bool)

(declare-fun res!2664643 () Bool)

(declare-fun e!3932091 () Bool)

(assert (=> b!6488018 (=> res!2664643 e!3932091)))

(assert (=> b!6488018 (= res!2664643 e!3932094)))

(declare-fun res!2664644 () Bool)

(assert (=> b!6488018 (=> (not res!2664644) (not e!3932094))))

(declare-fun lt!2389141 () Bool)

(assert (=> b!6488018 (= res!2664644 lt!2389141)))

(declare-fun b!6488019 () Bool)

(declare-fun e!3932095 () Bool)

(assert (=> b!6488019 (= e!3932095 e!3932089)))

(declare-fun res!2664649 () Bool)

(assert (=> b!6488019 (=> res!2664649 e!3932089)))

(declare-fun call!561532 () Bool)

(assert (=> b!6488019 (= res!2664649 call!561532)))

(declare-fun b!6488020 () Bool)

(declare-fun res!2664647 () Bool)

(assert (=> b!6488020 (=> res!2664647 e!3932091)))

(assert (=> b!6488020 (= res!2664647 (not ((_ is ElementMatch!16367) (derivativeStep!5063 r!7292 (head!13209 s!2326)))))))

(declare-fun e!3932090 () Bool)

(assert (=> b!6488020 (= e!3932090 e!3932091)))

(declare-fun bm!561527 () Bool)

(assert (=> bm!561527 (= call!561532 (isEmpty!37468 (tail!12294 s!2326)))))

(declare-fun b!6488021 () Bool)

(assert (=> b!6488021 (= e!3932091 e!3932095)))

(declare-fun res!2664645 () Bool)

(assert (=> b!6488021 (=> (not res!2664645) (not e!3932095))))

(assert (=> b!6488021 (= res!2664645 (not lt!2389141))))

(declare-fun b!6488022 () Bool)

(declare-fun e!3932092 () Bool)

(assert (=> b!6488022 (= e!3932092 e!3932090)))

(declare-fun c!1188740 () Bool)

(assert (=> b!6488022 (= c!1188740 ((_ is EmptyLang!16367) (derivativeStep!5063 r!7292 (head!13209 s!2326))))))

(declare-fun b!6488023 () Bool)

(declare-fun res!2664648 () Bool)

(assert (=> b!6488023 (=> (not res!2664648) (not e!3932094))))

(assert (=> b!6488023 (= res!2664648 (isEmpty!37468 (tail!12294 (tail!12294 s!2326))))))

(declare-fun b!6488024 () Bool)

(declare-fun e!3932093 () Bool)

(assert (=> b!6488024 (= e!3932093 (nullable!6360 (derivativeStep!5063 r!7292 (head!13209 s!2326))))))

(declare-fun b!6488025 () Bool)

(assert (=> b!6488025 (= e!3932092 (= lt!2389141 call!561532))))

(declare-fun b!6488026 () Bool)

(declare-fun res!2664642 () Bool)

(assert (=> b!6488026 (=> (not res!2664642) (not e!3932094))))

(assert (=> b!6488026 (= res!2664642 (not call!561532))))

(declare-fun b!6488027 () Bool)

(assert (=> b!6488027 (= e!3932090 (not lt!2389141))))

(declare-fun b!6488028 () Bool)

(assert (=> b!6488028 (= e!3932089 (not (= (head!13209 (tail!12294 s!2326)) (c!1188383 (derivativeStep!5063 r!7292 (head!13209 s!2326))))))))

(declare-fun d!2035319 () Bool)

(assert (=> d!2035319 e!3932092))

(declare-fun c!1188739 () Bool)

(assert (=> d!2035319 (= c!1188739 ((_ is EmptyExpr!16367) (derivativeStep!5063 r!7292 (head!13209 s!2326))))))

(assert (=> d!2035319 (= lt!2389141 e!3932093)))

(declare-fun c!1188738 () Bool)

(assert (=> d!2035319 (= c!1188738 (isEmpty!37468 (tail!12294 s!2326)))))

(assert (=> d!2035319 (validRegex!8103 (derivativeStep!5063 r!7292 (head!13209 s!2326)))))

(assert (=> d!2035319 (= (matchR!8550 (derivativeStep!5063 r!7292 (head!13209 s!2326)) (tail!12294 s!2326)) lt!2389141)))

(declare-fun b!6488016 () Bool)

(assert (=> b!6488016 (= e!3932093 (matchR!8550 (derivativeStep!5063 (derivativeStep!5063 r!7292 (head!13209 s!2326)) (head!13209 (tail!12294 s!2326))) (tail!12294 (tail!12294 s!2326))))))

(assert (= (and d!2035319 c!1188738) b!6488024))

(assert (= (and d!2035319 (not c!1188738)) b!6488016))

(assert (= (and d!2035319 c!1188739) b!6488025))

(assert (= (and d!2035319 (not c!1188739)) b!6488022))

(assert (= (and b!6488022 c!1188740) b!6488027))

(assert (= (and b!6488022 (not c!1188740)) b!6488020))

(assert (= (and b!6488020 (not res!2664647)) b!6488018))

(assert (= (and b!6488018 res!2664644) b!6488026))

(assert (= (and b!6488026 res!2664642) b!6488023))

(assert (= (and b!6488023 res!2664648) b!6488017))

(assert (= (and b!6488018 (not res!2664643)) b!6488021))

(assert (= (and b!6488021 res!2664645) b!6488019))

(assert (= (and b!6488019 (not res!2664649)) b!6488015))

(assert (= (and b!6488015 (not res!2664646)) b!6488028))

(assert (= (or b!6488025 b!6488019 b!6488026) bm!561527))

(assert (=> b!6488015 m!7275894))

(declare-fun m!7276510 () Bool)

(assert (=> b!6488015 m!7276510))

(assert (=> b!6488015 m!7276510))

(declare-fun m!7276512 () Bool)

(assert (=> b!6488015 m!7276512))

(assert (=> b!6488024 m!7276062))

(declare-fun m!7276514 () Bool)

(assert (=> b!6488024 m!7276514))

(assert (=> d!2035319 m!7275894))

(assert (=> d!2035319 m!7276024))

(assert (=> d!2035319 m!7276062))

(declare-fun m!7276516 () Bool)

(assert (=> d!2035319 m!7276516))

(assert (=> b!6488023 m!7275894))

(assert (=> b!6488023 m!7276510))

(assert (=> b!6488023 m!7276510))

(assert (=> b!6488023 m!7276512))

(assert (=> b!6488028 m!7275894))

(declare-fun m!7276518 () Bool)

(assert (=> b!6488028 m!7276518))

(assert (=> b!6488017 m!7275894))

(assert (=> b!6488017 m!7276518))

(assert (=> b!6488016 m!7275894))

(assert (=> b!6488016 m!7276518))

(assert (=> b!6488016 m!7276062))

(assert (=> b!6488016 m!7276518))

(declare-fun m!7276520 () Bool)

(assert (=> b!6488016 m!7276520))

(assert (=> b!6488016 m!7275894))

(assert (=> b!6488016 m!7276510))

(assert (=> b!6488016 m!7276520))

(assert (=> b!6488016 m!7276510))

(declare-fun m!7276522 () Bool)

(assert (=> b!6488016 m!7276522))

(assert (=> bm!561527 m!7275894))

(assert (=> bm!561527 m!7276024))

(assert (=> b!6487604 d!2035319))

(declare-fun b!6488049 () Bool)

(declare-fun c!1188751 () Bool)

(assert (=> b!6488049 (= c!1188751 (nullable!6360 (regOne!33246 r!7292)))))

(declare-fun e!3932108 () Regex!16367)

(declare-fun e!3932109 () Regex!16367)

(assert (=> b!6488049 (= e!3932108 e!3932109)))

(declare-fun b!6488050 () Bool)

(declare-fun e!3932107 () Regex!16367)

(assert (=> b!6488050 (= e!3932107 e!3932108)))

(declare-fun c!1188755 () Bool)

(assert (=> b!6488050 (= c!1188755 ((_ is Star!16367) r!7292))))

(declare-fun call!561542 () Regex!16367)

(declare-fun bm!561537 () Bool)

(declare-fun c!1188752 () Bool)

(assert (=> bm!561537 (= call!561542 (derivativeStep!5063 (ite c!1188752 (regOne!33247 r!7292) (ite c!1188751 (regTwo!33246 r!7292) (regOne!33246 r!7292))) (head!13209 s!2326)))))

(declare-fun b!6488051 () Bool)

(declare-fun call!561541 () Regex!16367)

(assert (=> b!6488051 (= e!3932108 (Concat!25212 call!561541 r!7292))))

(declare-fun b!6488052 () Bool)

(declare-fun e!3932106 () Regex!16367)

(assert (=> b!6488052 (= e!3932106 EmptyLang!16367)))

(declare-fun b!6488053 () Bool)

(declare-fun e!3932110 () Regex!16367)

(assert (=> b!6488053 (= e!3932110 (ite (= (head!13209 s!2326) (c!1188383 r!7292)) EmptyExpr!16367 EmptyLang!16367))))

(declare-fun bm!561538 () Bool)

(declare-fun call!561544 () Regex!16367)

(assert (=> bm!561538 (= call!561541 call!561544)))

(declare-fun b!6488054 () Bool)

(assert (=> b!6488054 (= e!3932106 e!3932110)))

(declare-fun c!1188754 () Bool)

(assert (=> b!6488054 (= c!1188754 ((_ is ElementMatch!16367) r!7292))))

(declare-fun call!561543 () Regex!16367)

(declare-fun b!6488055 () Bool)

(assert (=> b!6488055 (= e!3932109 (Union!16367 (Concat!25212 call!561541 (regTwo!33246 r!7292)) call!561543))))

(declare-fun b!6488056 () Bool)

(assert (=> b!6488056 (= e!3932109 (Union!16367 (Concat!25212 call!561543 (regTwo!33246 r!7292)) EmptyLang!16367))))

(declare-fun b!6488057 () Bool)

(assert (=> b!6488057 (= c!1188752 ((_ is Union!16367) r!7292))))

(assert (=> b!6488057 (= e!3932110 e!3932107)))

(declare-fun d!2035321 () Bool)

(declare-fun lt!2389144 () Regex!16367)

(assert (=> d!2035321 (validRegex!8103 lt!2389144)))

(assert (=> d!2035321 (= lt!2389144 e!3932106)))

(declare-fun c!1188753 () Bool)

(assert (=> d!2035321 (= c!1188753 (or ((_ is EmptyExpr!16367) r!7292) ((_ is EmptyLang!16367) r!7292)))))

(assert (=> d!2035321 (validRegex!8103 r!7292)))

(assert (=> d!2035321 (= (derivativeStep!5063 r!7292 (head!13209 s!2326)) lt!2389144)))

(declare-fun bm!561536 () Bool)

(assert (=> bm!561536 (= call!561544 (derivativeStep!5063 (ite c!1188752 (regTwo!33247 r!7292) (ite c!1188755 (reg!16696 r!7292) (regOne!33246 r!7292))) (head!13209 s!2326)))))

(declare-fun b!6488058 () Bool)

(assert (=> b!6488058 (= e!3932107 (Union!16367 call!561542 call!561544))))

(declare-fun bm!561539 () Bool)

(assert (=> bm!561539 (= call!561543 call!561542)))

(assert (= (and d!2035321 c!1188753) b!6488052))

(assert (= (and d!2035321 (not c!1188753)) b!6488054))

(assert (= (and b!6488054 c!1188754) b!6488053))

(assert (= (and b!6488054 (not c!1188754)) b!6488057))

(assert (= (and b!6488057 c!1188752) b!6488058))

(assert (= (and b!6488057 (not c!1188752)) b!6488050))

(assert (= (and b!6488050 c!1188755) b!6488051))

(assert (= (and b!6488050 (not c!1188755)) b!6488049))

(assert (= (and b!6488049 c!1188751) b!6488055))

(assert (= (and b!6488049 (not c!1188751)) b!6488056))

(assert (= (or b!6488055 b!6488056) bm!561539))

(assert (= (or b!6488051 b!6488055) bm!561538))

(assert (= (or b!6488058 bm!561538) bm!561536))

(assert (= (or b!6488058 bm!561539) bm!561537))

(declare-fun m!7276524 () Bool)

(assert (=> b!6488049 m!7276524))

(assert (=> bm!561537 m!7275890))

(declare-fun m!7276526 () Bool)

(assert (=> bm!561537 m!7276526))

(declare-fun m!7276528 () Bool)

(assert (=> d!2035321 m!7276528))

(assert (=> d!2035321 m!7275010))

(assert (=> bm!561536 m!7275890))

(declare-fun m!7276530 () Bool)

(assert (=> bm!561536 m!7276530))

(assert (=> b!6487604 d!2035321))

(declare-fun d!2035323 () Bool)

(assert (=> d!2035323 (= (head!13209 s!2326) (h!71724 s!2326))))

(assert (=> b!6487604 d!2035323))

(assert (=> b!6487604 d!2035307))

(declare-fun d!2035325 () Bool)

(assert (=> d!2035325 true))

(declare-fun setRes!44203 () Bool)

(assert (=> d!2035325 setRes!44203))

(declare-fun condSetEmpty!44203 () Bool)

(declare-fun res!2664650 () (InoxSet Context!11502))

(assert (=> d!2035325 (= condSetEmpty!44203 (= res!2664650 ((as const (Array Context!11502 Bool)) false)))))

(assert (=> d!2035325 (= (choose!48152 lt!2388898 lambda!359120) res!2664650)))

(declare-fun setIsEmpty!44203 () Bool)

(assert (=> setIsEmpty!44203 setRes!44203))

(declare-fun tp!1796318 () Bool)

(declare-fun setNonEmpty!44203 () Bool)

(declare-fun setElem!44203 () Context!11502)

(declare-fun e!3932111 () Bool)

(assert (=> setNonEmpty!44203 (= setRes!44203 (and tp!1796318 (inv!84164 setElem!44203) e!3932111))))

(declare-fun setRest!44203 () (InoxSet Context!11502))

(assert (=> setNonEmpty!44203 (= res!2664650 ((_ map or) (store ((as const (Array Context!11502 Bool)) false) setElem!44203 true) setRest!44203))))

(declare-fun b!6488059 () Bool)

(declare-fun tp!1796317 () Bool)

(assert (=> b!6488059 (= e!3932111 tp!1796317)))

(assert (= (and d!2035325 condSetEmpty!44203) setIsEmpty!44203))

(assert (= (and d!2035325 (not condSetEmpty!44203)) setNonEmpty!44203))

(assert (= setNonEmpty!44203 b!6488059))

(declare-fun m!7276532 () Bool)

(assert (=> setNonEmpty!44203 m!7276532))

(assert (=> d!2035021 d!2035325))

(declare-fun d!2035327 () Bool)

(assert (=> d!2035327 (= (isEmpty!37468 (tail!12294 (_2!36649 lt!2388900))) ((_ is Nil!65276) (tail!12294 (_2!36649 lt!2388900))))))

(assert (=> b!6487454 d!2035327))

(declare-fun d!2035329 () Bool)

(assert (=> d!2035329 (= (tail!12294 (_2!36649 lt!2388900)) (t!379026 (_2!36649 lt!2388900)))))

(assert (=> b!6487454 d!2035329))

(declare-fun d!2035331 () Bool)

(assert (=> d!2035331 (= (isEmpty!37468 (tail!12294 (_1!36649 lt!2388900))) ((_ is Nil!65276) (tail!12294 (_1!36649 lt!2388900))))))

(assert (=> b!6487784 d!2035331))

(declare-fun d!2035333 () Bool)

(assert (=> d!2035333 (= (tail!12294 (_1!36649 lt!2388900)) (t!379026 (_1!36649 lt!2388900)))))

(assert (=> b!6487784 d!2035333))

(assert (=> d!2035093 d!2035273))

(declare-fun b!6488060 () Bool)

(declare-fun e!3932113 () Bool)

(declare-fun call!561546 () Bool)

(assert (=> b!6488060 (= e!3932113 call!561546)))

(declare-fun b!6488061 () Bool)

(declare-fun e!3932116 () Bool)

(declare-fun e!3932112 () Bool)

(assert (=> b!6488061 (= e!3932116 e!3932112)))

(declare-fun c!1188756 () Bool)

(assert (=> b!6488061 (= c!1188756 ((_ is Star!16367) lt!2388855))))

(declare-fun d!2035335 () Bool)

(declare-fun res!2664654 () Bool)

(assert (=> d!2035335 (=> res!2664654 e!3932116)))

(assert (=> d!2035335 (= res!2664654 ((_ is ElementMatch!16367) lt!2388855))))

(assert (=> d!2035335 (= (validRegex!8103 lt!2388855) e!3932116)))

(declare-fun bm!561540 () Bool)

(declare-fun call!561547 () Bool)

(declare-fun c!1188757 () Bool)

(assert (=> bm!561540 (= call!561547 (validRegex!8103 (ite c!1188757 (regOne!33247 lt!2388855) (regOne!33246 lt!2388855))))))

(declare-fun b!6488062 () Bool)

(declare-fun res!2664655 () Bool)

(declare-fun e!3932115 () Bool)

(assert (=> b!6488062 (=> res!2664655 e!3932115)))

(assert (=> b!6488062 (= res!2664655 (not ((_ is Concat!25212) lt!2388855)))))

(declare-fun e!3932114 () Bool)

(assert (=> b!6488062 (= e!3932114 e!3932115)))

(declare-fun b!6488063 () Bool)

(declare-fun e!3932117 () Bool)

(assert (=> b!6488063 (= e!3932117 call!561546)))

(declare-fun bm!561541 () Bool)

(declare-fun call!561545 () Bool)

(assert (=> bm!561541 (= call!561545 (validRegex!8103 (ite c!1188756 (reg!16696 lt!2388855) (ite c!1188757 (regTwo!33247 lt!2388855) (regTwo!33246 lt!2388855)))))))

(declare-fun b!6488064 () Bool)

(declare-fun res!2664653 () Bool)

(assert (=> b!6488064 (=> (not res!2664653) (not e!3932117))))

(assert (=> b!6488064 (= res!2664653 call!561547)))

(assert (=> b!6488064 (= e!3932114 e!3932117)))

(declare-fun b!6488065 () Bool)

(assert (=> b!6488065 (= e!3932112 e!3932114)))

(assert (=> b!6488065 (= c!1188757 ((_ is Union!16367) lt!2388855))))

(declare-fun bm!561542 () Bool)

(assert (=> bm!561542 (= call!561546 call!561545)))

(declare-fun b!6488066 () Bool)

(declare-fun e!3932118 () Bool)

(assert (=> b!6488066 (= e!3932118 call!561545)))

(declare-fun b!6488067 () Bool)

(assert (=> b!6488067 (= e!3932112 e!3932118)))

(declare-fun res!2664652 () Bool)

(assert (=> b!6488067 (= res!2664652 (not (nullable!6360 (reg!16696 lt!2388855))))))

(assert (=> b!6488067 (=> (not res!2664652) (not e!3932118))))

(declare-fun b!6488068 () Bool)

(assert (=> b!6488068 (= e!3932115 e!3932113)))

(declare-fun res!2664651 () Bool)

(assert (=> b!6488068 (=> (not res!2664651) (not e!3932113))))

(assert (=> b!6488068 (= res!2664651 call!561547)))

(assert (= (and d!2035335 (not res!2664654)) b!6488061))

(assert (= (and b!6488061 c!1188756) b!6488067))

(assert (= (and b!6488061 (not c!1188756)) b!6488065))

(assert (= (and b!6488067 res!2664652) b!6488066))

(assert (= (and b!6488065 c!1188757) b!6488064))

(assert (= (and b!6488065 (not c!1188757)) b!6488062))

(assert (= (and b!6488064 res!2664653) b!6488063))

(assert (= (and b!6488062 (not res!2664655)) b!6488068))

(assert (= (and b!6488068 res!2664651) b!6488060))

(assert (= (or b!6488063 b!6488060) bm!561542))

(assert (= (or b!6488064 b!6488068) bm!561540))

(assert (= (or b!6488066 bm!561542) bm!561541))

(declare-fun m!7276534 () Bool)

(assert (=> bm!561540 m!7276534))

(declare-fun m!7276536 () Bool)

(assert (=> bm!561541 m!7276536))

(declare-fun m!7276538 () Bool)

(assert (=> b!6488067 m!7276538))

(assert (=> d!2035093 d!2035335))

(assert (=> b!6487472 d!2035201))

(assert (=> b!6487472 d!2035203))

(assert (=> d!2035059 d!2035225))

(assert (=> b!6487776 d!2035331))

(assert (=> b!6487776 d!2035333))

(declare-fun b!6488072 () Bool)

(declare-fun e!3932119 () Bool)

(declare-fun lt!2389145 () List!65400)

(assert (=> b!6488072 (= e!3932119 (or (not (= (t!379026 s!2326) Nil!65276)) (= lt!2389145 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)))))))

(declare-fun d!2035337 () Bool)

(assert (=> d!2035337 e!3932119))

(declare-fun res!2664657 () Bool)

(assert (=> d!2035337 (=> (not res!2664657) (not e!3932119))))

(assert (=> d!2035337 (= res!2664657 (= (content!12437 lt!2389145) ((_ map or) (content!12437 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276))) (content!12437 (t!379026 s!2326)))))))

(declare-fun e!3932120 () List!65400)

(assert (=> d!2035337 (= lt!2389145 e!3932120)))

(declare-fun c!1188758 () Bool)

(assert (=> d!2035337 (= c!1188758 ((_ is Nil!65276) (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276))))))

(assert (=> d!2035337 (= (++!14444 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (t!379026 s!2326)) lt!2389145)))

(declare-fun b!6488070 () Bool)

(assert (=> b!6488070 (= e!3932120 (Cons!65276 (h!71724 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276))) (++!14444 (t!379026 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276))) (t!379026 s!2326))))))

(declare-fun b!6488071 () Bool)

(declare-fun res!2664656 () Bool)

(assert (=> b!6488071 (=> (not res!2664656) (not e!3932119))))

(assert (=> b!6488071 (= res!2664656 (= (size!40424 lt!2389145) (+ (size!40424 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276))) (size!40424 (t!379026 s!2326)))))))

(declare-fun b!6488069 () Bool)

(assert (=> b!6488069 (= e!3932120 (t!379026 s!2326))))

(assert (= (and d!2035337 c!1188758) b!6488069))

(assert (= (and d!2035337 (not c!1188758)) b!6488070))

(assert (= (and d!2035337 res!2664657) b!6488071))

(assert (= (and b!6488071 res!2664656) b!6488072))

(declare-fun m!7276540 () Bool)

(assert (=> d!2035337 m!7276540))

(assert (=> d!2035337 m!7276150))

(declare-fun m!7276542 () Bool)

(assert (=> d!2035337 m!7276542))

(declare-fun m!7276544 () Bool)

(assert (=> d!2035337 m!7276544))

(declare-fun m!7276546 () Bool)

(assert (=> b!6488070 m!7276546))

(declare-fun m!7276548 () Bool)

(assert (=> b!6488071 m!7276548))

(assert (=> b!6488071 m!7276150))

(declare-fun m!7276550 () Bool)

(assert (=> b!6488071 m!7276550))

(declare-fun m!7276552 () Bool)

(assert (=> b!6488071 m!7276552))

(assert (=> b!6487688 d!2035337))

(declare-fun b!6488076 () Bool)

(declare-fun e!3932121 () Bool)

(declare-fun lt!2389146 () List!65400)

(assert (=> b!6488076 (= e!3932121 (or (not (= (Cons!65276 (h!71724 s!2326) Nil!65276) Nil!65276)) (= lt!2389146 Nil!65276)))))

(declare-fun d!2035339 () Bool)

(assert (=> d!2035339 e!3932121))

(declare-fun res!2664659 () Bool)

(assert (=> d!2035339 (=> (not res!2664659) (not e!3932121))))

(assert (=> d!2035339 (= res!2664659 (= (content!12437 lt!2389146) ((_ map or) (content!12437 Nil!65276) (content!12437 (Cons!65276 (h!71724 s!2326) Nil!65276)))))))

(declare-fun e!3932122 () List!65400)

(assert (=> d!2035339 (= lt!2389146 e!3932122)))

(declare-fun c!1188759 () Bool)

(assert (=> d!2035339 (= c!1188759 ((_ is Nil!65276) Nil!65276))))

(assert (=> d!2035339 (= (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) lt!2389146)))

(declare-fun b!6488074 () Bool)

(assert (=> b!6488074 (= e!3932122 (Cons!65276 (h!71724 Nil!65276) (++!14444 (t!379026 Nil!65276) (Cons!65276 (h!71724 s!2326) Nil!65276))))))

(declare-fun b!6488075 () Bool)

(declare-fun res!2664658 () Bool)

(assert (=> b!6488075 (=> (not res!2664658) (not e!3932121))))

(assert (=> b!6488075 (= res!2664658 (= (size!40424 lt!2389146) (+ (size!40424 Nil!65276) (size!40424 (Cons!65276 (h!71724 s!2326) Nil!65276)))))))

(declare-fun b!6488073 () Bool)

(assert (=> b!6488073 (= e!3932122 (Cons!65276 (h!71724 s!2326) Nil!65276))))

(assert (= (and d!2035339 c!1188759) b!6488073))

(assert (= (and d!2035339 (not c!1188759)) b!6488074))

(assert (= (and d!2035339 res!2664659) b!6488075))

(assert (= (and b!6488075 res!2664658) b!6488076))

(declare-fun m!7276554 () Bool)

(assert (=> d!2035339 m!7276554))

(assert (=> d!2035339 m!7276376))

(declare-fun m!7276556 () Bool)

(assert (=> d!2035339 m!7276556))

(declare-fun m!7276558 () Bool)

(assert (=> b!6488074 m!7276558))

(declare-fun m!7276560 () Bool)

(assert (=> b!6488075 m!7276560))

(assert (=> b!6488075 m!7276384))

(declare-fun m!7276562 () Bool)

(assert (=> b!6488075 m!7276562))

(assert (=> b!6487688 d!2035339))

(declare-fun d!2035341 () Bool)

(assert (=> d!2035341 (= (++!14444 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (t!379026 s!2326)) s!2326)))

(declare-fun lt!2389147 () Unit!158799)

(assert (=> d!2035341 (= lt!2389147 (choose!48169 Nil!65276 (h!71724 s!2326) (t!379026 s!2326) s!2326))))

(assert (=> d!2035341 (= (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) (t!379026 s!2326))) s!2326)))

(assert (=> d!2035341 (= (lemmaMoveElementToOtherListKeepsConcatEq!2522 Nil!65276 (h!71724 s!2326) (t!379026 s!2326) s!2326) lt!2389147)))

(declare-fun bs!1646055 () Bool)

(assert (= bs!1646055 d!2035341))

(assert (=> bs!1646055 m!7276150))

(assert (=> bs!1646055 m!7276150))

(assert (=> bs!1646055 m!7276152))

(declare-fun m!7276564 () Bool)

(assert (=> bs!1646055 m!7276564))

(declare-fun m!7276566 () Bool)

(assert (=> bs!1646055 m!7276566))

(assert (=> b!6487688 d!2035341))

(declare-fun b!6488077 () Bool)

(declare-fun res!2664660 () Bool)

(declare-fun e!3932127 () Bool)

(assert (=> b!6488077 (=> (not res!2664660) (not e!3932127))))

(declare-fun lt!2389149 () Option!16258)

(assert (=> b!6488077 (= res!2664660 (matchR!8550 (regTwo!33246 r!7292) (_2!36649 (get!22634 lt!2389149))))))

(declare-fun b!6488078 () Bool)

(declare-fun e!3932123 () Option!16258)

(assert (=> b!6488078 (= e!3932123 None!16257)))

(declare-fun b!6488079 () Bool)

(assert (=> b!6488079 (= e!3932127 (= (++!14444 (_1!36649 (get!22634 lt!2389149)) (_2!36649 (get!22634 lt!2389149))) s!2326))))

(declare-fun b!6488080 () Bool)

(declare-fun res!2664662 () Bool)

(assert (=> b!6488080 (=> (not res!2664662) (not e!3932127))))

(assert (=> b!6488080 (= res!2664662 (matchR!8550 (regOne!33246 r!7292) (_1!36649 (get!22634 lt!2389149))))))

(declare-fun d!2035343 () Bool)

(declare-fun e!3932125 () Bool)

(assert (=> d!2035343 e!3932125))

(declare-fun res!2664661 () Bool)

(assert (=> d!2035343 (=> res!2664661 e!3932125)))

(assert (=> d!2035343 (= res!2664661 e!3932127)))

(declare-fun res!2664664 () Bool)

(assert (=> d!2035343 (=> (not res!2664664) (not e!3932127))))

(assert (=> d!2035343 (= res!2664664 (isDefined!12961 lt!2389149))))

(declare-fun e!3932126 () Option!16258)

(assert (=> d!2035343 (= lt!2389149 e!3932126)))

(declare-fun c!1188760 () Bool)

(declare-fun e!3932124 () Bool)

(assert (=> d!2035343 (= c!1188760 e!3932124)))

(declare-fun res!2664663 () Bool)

(assert (=> d!2035343 (=> (not res!2664663) (not e!3932124))))

(assert (=> d!2035343 (= res!2664663 (matchR!8550 (regOne!33246 r!7292) (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276))))))

(assert (=> d!2035343 (validRegex!8103 (regOne!33246 r!7292))))

(assert (=> d!2035343 (= (findConcatSeparation!2672 (regOne!33246 r!7292) (regTwo!33246 r!7292) (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (t!379026 s!2326) s!2326) lt!2389149)))

(declare-fun b!6488081 () Bool)

(assert (=> b!6488081 (= e!3932126 (Some!16257 (tuple2!66693 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (t!379026 s!2326))))))

(declare-fun b!6488082 () Bool)

(assert (=> b!6488082 (= e!3932124 (matchR!8550 (regTwo!33246 r!7292) (t!379026 s!2326)))))

(declare-fun b!6488083 () Bool)

(assert (=> b!6488083 (= e!3932125 (not (isDefined!12961 lt!2389149)))))

(declare-fun b!6488084 () Bool)

(declare-fun lt!2389150 () Unit!158799)

(declare-fun lt!2389148 () Unit!158799)

(assert (=> b!6488084 (= lt!2389150 lt!2389148)))

(assert (=> b!6488084 (= (++!14444 (++!14444 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (Cons!65276 (h!71724 (t!379026 s!2326)) Nil!65276)) (t!379026 (t!379026 s!2326))) s!2326)))

(assert (=> b!6488084 (= lt!2389148 (lemmaMoveElementToOtherListKeepsConcatEq!2522 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (h!71724 (t!379026 s!2326)) (t!379026 (t!379026 s!2326)) s!2326))))

(assert (=> b!6488084 (= e!3932123 (findConcatSeparation!2672 (regOne!33246 r!7292) (regTwo!33246 r!7292) (++!14444 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (Cons!65276 (h!71724 (t!379026 s!2326)) Nil!65276)) (t!379026 (t!379026 s!2326)) s!2326))))

(declare-fun b!6488085 () Bool)

(assert (=> b!6488085 (= e!3932126 e!3932123)))

(declare-fun c!1188761 () Bool)

(assert (=> b!6488085 (= c!1188761 ((_ is Nil!65276) (t!379026 s!2326)))))

(assert (= (and d!2035343 res!2664663) b!6488082))

(assert (= (and d!2035343 c!1188760) b!6488081))

(assert (= (and d!2035343 (not c!1188760)) b!6488085))

(assert (= (and b!6488085 c!1188761) b!6488078))

(assert (= (and b!6488085 (not c!1188761)) b!6488084))

(assert (= (and d!2035343 res!2664664) b!6488080))

(assert (= (and b!6488080 res!2664662) b!6488077))

(assert (= (and b!6488077 res!2664660) b!6488079))

(assert (= (and d!2035343 (not res!2664661)) b!6488083))

(declare-fun m!7276568 () Bool)

(assert (=> b!6488079 m!7276568))

(declare-fun m!7276570 () Bool)

(assert (=> b!6488079 m!7276570))

(declare-fun m!7276572 () Bool)

(assert (=> b!6488083 m!7276572))

(assert (=> b!6488077 m!7276568))

(declare-fun m!7276574 () Bool)

(assert (=> b!6488077 m!7276574))

(assert (=> b!6488084 m!7276150))

(declare-fun m!7276576 () Bool)

(assert (=> b!6488084 m!7276576))

(assert (=> b!6488084 m!7276576))

(declare-fun m!7276578 () Bool)

(assert (=> b!6488084 m!7276578))

(assert (=> b!6488084 m!7276150))

(declare-fun m!7276580 () Bool)

(assert (=> b!6488084 m!7276580))

(assert (=> b!6488084 m!7276576))

(declare-fun m!7276582 () Bool)

(assert (=> b!6488084 m!7276582))

(declare-fun m!7276584 () Bool)

(assert (=> b!6488082 m!7276584))

(assert (=> d!2035343 m!7276572))

(assert (=> d!2035343 m!7276150))

(declare-fun m!7276586 () Bool)

(assert (=> d!2035343 m!7276586))

(assert (=> d!2035343 m!7276136))

(assert (=> b!6488080 m!7276568))

(declare-fun m!7276588 () Bool)

(assert (=> b!6488080 m!7276588))

(assert (=> b!6487688 d!2035343))

(declare-fun b!6488086 () Bool)

(declare-fun res!2664669 () Bool)

(declare-fun e!3932128 () Bool)

(assert (=> b!6488086 (=> res!2664669 e!3932128)))

(assert (=> b!6488086 (= res!2664669 (not (isEmpty!37468 (tail!12294 (tail!12294 lt!2388903)))))))

(declare-fun b!6488088 () Bool)

(declare-fun e!3932133 () Bool)

(assert (=> b!6488088 (= e!3932133 (= (head!13209 (tail!12294 lt!2388903)) (c!1188383 (derivativeStep!5063 lt!2388899 (head!13209 lt!2388903)))))))

(declare-fun b!6488089 () Bool)

(declare-fun res!2664666 () Bool)

(declare-fun e!3932130 () Bool)

(assert (=> b!6488089 (=> res!2664666 e!3932130)))

(assert (=> b!6488089 (= res!2664666 e!3932133)))

(declare-fun res!2664667 () Bool)

(assert (=> b!6488089 (=> (not res!2664667) (not e!3932133))))

(declare-fun lt!2389151 () Bool)

(assert (=> b!6488089 (= res!2664667 lt!2389151)))

(declare-fun b!6488090 () Bool)

(declare-fun e!3932134 () Bool)

(assert (=> b!6488090 (= e!3932134 e!3932128)))

(declare-fun res!2664672 () Bool)

(assert (=> b!6488090 (=> res!2664672 e!3932128)))

(declare-fun call!561548 () Bool)

(assert (=> b!6488090 (= res!2664672 call!561548)))

(declare-fun b!6488091 () Bool)

(declare-fun res!2664670 () Bool)

(assert (=> b!6488091 (=> res!2664670 e!3932130)))

(assert (=> b!6488091 (= res!2664670 (not ((_ is ElementMatch!16367) (derivativeStep!5063 lt!2388899 (head!13209 lt!2388903)))))))

(declare-fun e!3932129 () Bool)

(assert (=> b!6488091 (= e!3932129 e!3932130)))

(declare-fun bm!561543 () Bool)

(assert (=> bm!561543 (= call!561548 (isEmpty!37468 (tail!12294 lt!2388903)))))

(declare-fun b!6488092 () Bool)

(assert (=> b!6488092 (= e!3932130 e!3932134)))

(declare-fun res!2664668 () Bool)

(assert (=> b!6488092 (=> (not res!2664668) (not e!3932134))))

(assert (=> b!6488092 (= res!2664668 (not lt!2389151))))

(declare-fun b!6488093 () Bool)

(declare-fun e!3932131 () Bool)

(assert (=> b!6488093 (= e!3932131 e!3932129)))

(declare-fun c!1188764 () Bool)

(assert (=> b!6488093 (= c!1188764 ((_ is EmptyLang!16367) (derivativeStep!5063 lt!2388899 (head!13209 lt!2388903))))))

(declare-fun b!6488094 () Bool)

(declare-fun res!2664671 () Bool)

(assert (=> b!6488094 (=> (not res!2664671) (not e!3932133))))

(assert (=> b!6488094 (= res!2664671 (isEmpty!37468 (tail!12294 (tail!12294 lt!2388903))))))

(declare-fun b!6488095 () Bool)

(declare-fun e!3932132 () Bool)

(assert (=> b!6488095 (= e!3932132 (nullable!6360 (derivativeStep!5063 lt!2388899 (head!13209 lt!2388903))))))

(declare-fun b!6488096 () Bool)

(assert (=> b!6488096 (= e!3932131 (= lt!2389151 call!561548))))

(declare-fun b!6488097 () Bool)

(declare-fun res!2664665 () Bool)

(assert (=> b!6488097 (=> (not res!2664665) (not e!3932133))))

(assert (=> b!6488097 (= res!2664665 (not call!561548))))

(declare-fun b!6488098 () Bool)

(assert (=> b!6488098 (= e!3932129 (not lt!2389151))))

(declare-fun b!6488099 () Bool)

(assert (=> b!6488099 (= e!3932128 (not (= (head!13209 (tail!12294 lt!2388903)) (c!1188383 (derivativeStep!5063 lt!2388899 (head!13209 lt!2388903))))))))

(declare-fun d!2035345 () Bool)

(assert (=> d!2035345 e!3932131))

(declare-fun c!1188763 () Bool)

(assert (=> d!2035345 (= c!1188763 ((_ is EmptyExpr!16367) (derivativeStep!5063 lt!2388899 (head!13209 lt!2388903))))))

(assert (=> d!2035345 (= lt!2389151 e!3932132)))

(declare-fun c!1188762 () Bool)

(assert (=> d!2035345 (= c!1188762 (isEmpty!37468 (tail!12294 lt!2388903)))))

(assert (=> d!2035345 (validRegex!8103 (derivativeStep!5063 lt!2388899 (head!13209 lt!2388903)))))

(assert (=> d!2035345 (= (matchR!8550 (derivativeStep!5063 lt!2388899 (head!13209 lt!2388903)) (tail!12294 lt!2388903)) lt!2389151)))

(declare-fun b!6488087 () Bool)

(assert (=> b!6488087 (= e!3932132 (matchR!8550 (derivativeStep!5063 (derivativeStep!5063 lt!2388899 (head!13209 lt!2388903)) (head!13209 (tail!12294 lt!2388903))) (tail!12294 (tail!12294 lt!2388903))))))

(assert (= (and d!2035345 c!1188762) b!6488095))

(assert (= (and d!2035345 (not c!1188762)) b!6488087))

(assert (= (and d!2035345 c!1188763) b!6488096))

(assert (= (and d!2035345 (not c!1188763)) b!6488093))

(assert (= (and b!6488093 c!1188764) b!6488098))

(assert (= (and b!6488093 (not c!1188764)) b!6488091))

(assert (= (and b!6488091 (not res!2664670)) b!6488089))

(assert (= (and b!6488089 res!2664667) b!6488097))

(assert (= (and b!6488097 res!2664665) b!6488094))

(assert (= (and b!6488094 res!2664671) b!6488088))

(assert (= (and b!6488089 (not res!2664666)) b!6488092))

(assert (= (and b!6488092 res!2664668) b!6488090))

(assert (= (and b!6488090 (not res!2664672)) b!6488086))

(assert (= (and b!6488086 (not res!2664669)) b!6488099))

(assert (= (or b!6488096 b!6488090 b!6488097) bm!561543))

(assert (=> b!6488086 m!7275968))

(declare-fun m!7276590 () Bool)

(assert (=> b!6488086 m!7276590))

(assert (=> b!6488086 m!7276590))

(declare-fun m!7276592 () Bool)

(assert (=> b!6488086 m!7276592))

(assert (=> b!6488095 m!7275978))

(declare-fun m!7276594 () Bool)

(assert (=> b!6488095 m!7276594))

(assert (=> d!2035345 m!7275968))

(assert (=> d!2035345 m!7275970))

(assert (=> d!2035345 m!7275978))

(declare-fun m!7276596 () Bool)

(assert (=> d!2035345 m!7276596))

(assert (=> b!6488094 m!7275968))

(assert (=> b!6488094 m!7276590))

(assert (=> b!6488094 m!7276590))

(assert (=> b!6488094 m!7276592))

(assert (=> b!6488099 m!7275968))

(declare-fun m!7276598 () Bool)

(assert (=> b!6488099 m!7276598))

(assert (=> b!6488088 m!7275968))

(assert (=> b!6488088 m!7276598))

(assert (=> b!6488087 m!7275968))

(assert (=> b!6488087 m!7276598))

(assert (=> b!6488087 m!7275978))

(assert (=> b!6488087 m!7276598))

(declare-fun m!7276600 () Bool)

(assert (=> b!6488087 m!7276600))

(assert (=> b!6488087 m!7275968))

(assert (=> b!6488087 m!7276590))

(assert (=> b!6488087 m!7276600))

(assert (=> b!6488087 m!7276590))

(declare-fun m!7276602 () Bool)

(assert (=> b!6488087 m!7276602))

(assert (=> bm!561543 m!7275968))

(assert (=> bm!561543 m!7275970))

(assert (=> b!6487500 d!2035345))

(declare-fun b!6488100 () Bool)

(declare-fun c!1188765 () Bool)

(assert (=> b!6488100 (= c!1188765 (nullable!6360 (regOne!33246 lt!2388899)))))

(declare-fun e!3932137 () Regex!16367)

(declare-fun e!3932138 () Regex!16367)

(assert (=> b!6488100 (= e!3932137 e!3932138)))

(declare-fun b!6488101 () Bool)

(declare-fun e!3932136 () Regex!16367)

(assert (=> b!6488101 (= e!3932136 e!3932137)))

(declare-fun c!1188769 () Bool)

(assert (=> b!6488101 (= c!1188769 ((_ is Star!16367) lt!2388899))))

(declare-fun c!1188766 () Bool)

(declare-fun call!561550 () Regex!16367)

(declare-fun bm!561545 () Bool)

(assert (=> bm!561545 (= call!561550 (derivativeStep!5063 (ite c!1188766 (regOne!33247 lt!2388899) (ite c!1188765 (regTwo!33246 lt!2388899) (regOne!33246 lt!2388899))) (head!13209 lt!2388903)))))

(declare-fun b!6488102 () Bool)

(declare-fun call!561549 () Regex!16367)

(assert (=> b!6488102 (= e!3932137 (Concat!25212 call!561549 lt!2388899))))

(declare-fun b!6488103 () Bool)

(declare-fun e!3932135 () Regex!16367)

(assert (=> b!6488103 (= e!3932135 EmptyLang!16367)))

(declare-fun b!6488104 () Bool)

(declare-fun e!3932139 () Regex!16367)

(assert (=> b!6488104 (= e!3932139 (ite (= (head!13209 lt!2388903) (c!1188383 lt!2388899)) EmptyExpr!16367 EmptyLang!16367))))

(declare-fun bm!561546 () Bool)

(declare-fun call!561552 () Regex!16367)

(assert (=> bm!561546 (= call!561549 call!561552)))

(declare-fun b!6488105 () Bool)

(assert (=> b!6488105 (= e!3932135 e!3932139)))

(declare-fun c!1188768 () Bool)

(assert (=> b!6488105 (= c!1188768 ((_ is ElementMatch!16367) lt!2388899))))

(declare-fun b!6488106 () Bool)

(declare-fun call!561551 () Regex!16367)

(assert (=> b!6488106 (= e!3932138 (Union!16367 (Concat!25212 call!561549 (regTwo!33246 lt!2388899)) call!561551))))

(declare-fun b!6488107 () Bool)

(assert (=> b!6488107 (= e!3932138 (Union!16367 (Concat!25212 call!561551 (regTwo!33246 lt!2388899)) EmptyLang!16367))))

(declare-fun b!6488108 () Bool)

(assert (=> b!6488108 (= c!1188766 ((_ is Union!16367) lt!2388899))))

(assert (=> b!6488108 (= e!3932139 e!3932136)))

(declare-fun d!2035347 () Bool)

(declare-fun lt!2389152 () Regex!16367)

(assert (=> d!2035347 (validRegex!8103 lt!2389152)))

(assert (=> d!2035347 (= lt!2389152 e!3932135)))

(declare-fun c!1188767 () Bool)

(assert (=> d!2035347 (= c!1188767 (or ((_ is EmptyExpr!16367) lt!2388899) ((_ is EmptyLang!16367) lt!2388899)))))

(assert (=> d!2035347 (validRegex!8103 lt!2388899)))

(assert (=> d!2035347 (= (derivativeStep!5063 lt!2388899 (head!13209 lt!2388903)) lt!2389152)))

(declare-fun bm!561544 () Bool)

(assert (=> bm!561544 (= call!561552 (derivativeStep!5063 (ite c!1188766 (regTwo!33247 lt!2388899) (ite c!1188769 (reg!16696 lt!2388899) (regOne!33246 lt!2388899))) (head!13209 lt!2388903)))))

(declare-fun b!6488109 () Bool)

(assert (=> b!6488109 (= e!3932136 (Union!16367 call!561550 call!561552))))

(declare-fun bm!561547 () Bool)

(assert (=> bm!561547 (= call!561551 call!561550)))

(assert (= (and d!2035347 c!1188767) b!6488103))

(assert (= (and d!2035347 (not c!1188767)) b!6488105))

(assert (= (and b!6488105 c!1188768) b!6488104))

(assert (= (and b!6488105 (not c!1188768)) b!6488108))

(assert (= (and b!6488108 c!1188766) b!6488109))

(assert (= (and b!6488108 (not c!1188766)) b!6488101))

(assert (= (and b!6488101 c!1188769) b!6488102))

(assert (= (and b!6488101 (not c!1188769)) b!6488100))

(assert (= (and b!6488100 c!1188765) b!6488106))

(assert (= (and b!6488100 (not c!1188765)) b!6488107))

(assert (= (or b!6488106 b!6488107) bm!561547))

(assert (= (or b!6488102 b!6488106) bm!561546))

(assert (= (or b!6488109 bm!561546) bm!561544))

(assert (= (or b!6488109 bm!561547) bm!561545))

(declare-fun m!7276604 () Bool)

(assert (=> b!6488100 m!7276604))

(assert (=> bm!561545 m!7275976))

(declare-fun m!7276606 () Bool)

(assert (=> bm!561545 m!7276606))

(declare-fun m!7276608 () Bool)

(assert (=> d!2035347 m!7276608))

(assert (=> d!2035347 m!7275922))

(assert (=> bm!561544 m!7275976))

(declare-fun m!7276610 () Bool)

(assert (=> bm!561544 m!7276610))

(assert (=> b!6487500 d!2035347))

(declare-fun d!2035349 () Bool)

(assert (=> d!2035349 (= (head!13209 lt!2388903) (h!71724 lt!2388903))))

(assert (=> b!6487500 d!2035349))

(assert (=> b!6487500 d!2035215))

(assert (=> b!6487603 d!2035305))

(assert (=> b!6487603 d!2035307))

(declare-fun d!2035351 () Bool)

(assert (=> d!2035351 true))

(assert (=> d!2035351 true))

(declare-fun res!2664673 () Bool)

(assert (=> d!2035351 (= (choose!48164 lambda!359119) res!2664673)))

(assert (=> d!2035149 d!2035351))

(assert (=> bm!561491 d!2035273))

(declare-fun b!6488113 () Bool)

(declare-fun e!3932140 () Bool)

(declare-fun lt!2389153 () List!65400)

(assert (=> b!6488113 (= e!3932140 (or (not (= (_2!36649 lt!2388900) Nil!65276)) (= lt!2389153 (t!379026 lt!2388889))))))

(declare-fun d!2035353 () Bool)

(assert (=> d!2035353 e!3932140))

(declare-fun res!2664675 () Bool)

(assert (=> d!2035353 (=> (not res!2664675) (not e!3932140))))

(assert (=> d!2035353 (= res!2664675 (= (content!12437 lt!2389153) ((_ map or) (content!12437 (t!379026 lt!2388889)) (content!12437 (_2!36649 lt!2388900)))))))

(declare-fun e!3932141 () List!65400)

(assert (=> d!2035353 (= lt!2389153 e!3932141)))

(declare-fun c!1188770 () Bool)

(assert (=> d!2035353 (= c!1188770 ((_ is Nil!65276) (t!379026 lt!2388889)))))

(assert (=> d!2035353 (= (++!14444 (t!379026 lt!2388889) (_2!36649 lt!2388900)) lt!2389153)))

(declare-fun b!6488111 () Bool)

(assert (=> b!6488111 (= e!3932141 (Cons!65276 (h!71724 (t!379026 lt!2388889)) (++!14444 (t!379026 (t!379026 lt!2388889)) (_2!36649 lt!2388900))))))

(declare-fun b!6488112 () Bool)

(declare-fun res!2664674 () Bool)

(assert (=> b!6488112 (=> (not res!2664674) (not e!3932140))))

(assert (=> b!6488112 (= res!2664674 (= (size!40424 lt!2389153) (+ (size!40424 (t!379026 lt!2388889)) (size!40424 (_2!36649 lt!2388900)))))))

(declare-fun b!6488110 () Bool)

(assert (=> b!6488110 (= e!3932141 (_2!36649 lt!2388900))))

(assert (= (and d!2035353 c!1188770) b!6488110))

(assert (= (and d!2035353 (not c!1188770)) b!6488111))

(assert (= (and d!2035353 res!2664675) b!6488112))

(assert (= (and b!6488112 res!2664674) b!6488113))

(declare-fun m!7276612 () Bool)

(assert (=> d!2035353 m!7276612))

(assert (=> d!2035353 m!7276468))

(assert (=> d!2035353 m!7275540))

(declare-fun m!7276614 () Bool)

(assert (=> b!6488111 m!7276614))

(declare-fun m!7276616 () Bool)

(assert (=> b!6488112 m!7276616))

(declare-fun m!7276618 () Bool)

(assert (=> b!6488112 m!7276618))

(assert (=> b!6488112 m!7275548))

(assert (=> b!6487037 d!2035353))

(declare-fun bs!1646056 () Bool)

(declare-fun b!6488115 () Bool)

(assert (= bs!1646056 (and b!6488115 d!2035151)))

(declare-fun lambda!359233 () Int)

(assert (=> bs!1646056 (not (= lambda!359233 lambda!359216))))

(declare-fun bs!1646057 () Bool)

(assert (= bs!1646057 (and b!6488115 b!6487593)))

(assert (=> bs!1646057 (= (and (= (reg!16696 (regTwo!33247 r!7292)) (reg!16696 r!7292)) (= (regTwo!33247 r!7292) r!7292)) (= lambda!359233 lambda!359195))))

(declare-fun bs!1646058 () Bool)

(assert (= bs!1646058 (and b!6488115 b!6486638)))

(assert (=> bs!1646058 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regTwo!33247 r!7292)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33247 r!7292) lt!2388865)) (= lambda!359233 lambda!359124))))

(declare-fun bs!1646059 () Bool)

(assert (= bs!1646059 (and b!6488115 b!6486656)))

(assert (=> bs!1646059 (not (= lambda!359233 lambda!359121))))

(declare-fun bs!1646060 () Bool)

(assert (= bs!1646060 (and b!6488115 b!6487561)))

(assert (=> bs!1646060 (= (and (= (reg!16696 (regTwo!33247 r!7292)) (reg!16696 lt!2388855)) (= (regTwo!33247 r!7292) lt!2388855)) (= lambda!359233 lambda!359189))))

(declare-fun bs!1646061 () Bool)

(assert (= bs!1646061 (and b!6488115 b!6486655)))

(assert (=> bs!1646061 (not (= lambda!359233 lambda!359119))))

(declare-fun bs!1646062 () Bool)

(assert (= bs!1646062 (and b!6488115 d!2035135)))

(assert (=> bs!1646062 (not (= lambda!359233 lambda!359207))))

(assert (=> bs!1646058 (not (= lambda!359233 lambda!359125))))

(declare-fun bs!1646063 () Bool)

(assert (= bs!1646063 (and b!6488115 d!2035139)))

(assert (=> bs!1646063 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regTwo!33247 r!7292)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33247 r!7292) (Star!16367 (reg!16696 (regOne!33246 r!7292))))) (= lambda!359233 lambda!359213))))

(declare-fun bs!1646064 () Bool)

(assert (= bs!1646064 (and b!6488115 d!2035129)))

(assert (=> bs!1646064 (not (= lambda!359233 lambda!359201))))

(declare-fun bs!1646065 () Bool)

(assert (= bs!1646065 (and b!6488115 d!2035145)))

(assert (=> bs!1646065 (not (= lambda!359233 lambda!359214))))

(assert (=> bs!1646056 (not (= lambda!359233 lambda!359215))))

(declare-fun bs!1646066 () Bool)

(assert (= bs!1646066 (and b!6488115 b!6487626)))

(assert (=> bs!1646066 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regTwo!33247 r!7292)) (reg!16696 lt!2388865)) (= (regTwo!33247 r!7292) lt!2388865)) (= lambda!359233 lambda!359203))))

(assert (=> bs!1646059 (not (= lambda!359233 lambda!359122))))

(declare-fun bs!1646067 () Bool)

(assert (= bs!1646067 (and b!6488115 d!2035165)))

(assert (=> bs!1646067 (not (= lambda!359233 lambda!359219))))

(assert (=> bs!1646063 (not (= lambda!359233 lambda!359212))))

(declare-fun bs!1646068 () Bool)

(assert (= bs!1646068 (and b!6488115 b!6487630)))

(assert (=> bs!1646068 (not (= lambda!359233 lambda!359204))))

(assert (=> bs!1646064 (not (= lambda!359233 lambda!359202))))

(assert (=> bs!1646058 (not (= lambda!359233 lambda!359123))))

(assert (=> bs!1646067 (not (= lambda!359233 lambda!359218))))

(declare-fun bs!1646069 () Bool)

(assert (= bs!1646069 (and b!6488115 d!2035221)))

(assert (=> bs!1646069 (not (= lambda!359233 lambda!359231))))

(declare-fun bs!1646070 () Bool)

(assert (= bs!1646070 (and b!6488115 b!6487565)))

(assert (=> bs!1646070 (not (= lambda!359233 lambda!359190))))

(assert (=> bs!1646061 (not (= lambda!359233 lambda!359118))))

(declare-fun bs!1646071 () Bool)

(assert (= bs!1646071 (and b!6488115 d!2035161)))

(assert (=> bs!1646071 (not (= lambda!359233 lambda!359217))))

(declare-fun bs!1646072 () Bool)

(assert (= bs!1646072 (and b!6488115 b!6487597)))

(assert (=> bs!1646072 (not (= lambda!359233 lambda!359196))))

(assert (=> b!6488115 true))

(assert (=> b!6488115 true))

(declare-fun bs!1646073 () Bool)

(declare-fun b!6488119 () Bool)

(assert (= bs!1646073 (and b!6488119 d!2035151)))

(declare-fun lambda!359234 () Int)

(assert (=> bs!1646073 (= (and (= (regOne!33246 (regTwo!33247 r!7292)) (regOne!33246 r!7292)) (= (regTwo!33246 (regTwo!33247 r!7292)) (regTwo!33246 r!7292))) (= lambda!359234 lambda!359216))))

(declare-fun bs!1646074 () Bool)

(assert (= bs!1646074 (and b!6488119 b!6487593)))

(assert (=> bs!1646074 (not (= lambda!359234 lambda!359195))))

(declare-fun bs!1646075 () Bool)

(assert (= bs!1646075 (and b!6488119 b!6486638)))

(assert (=> bs!1646075 (not (= lambda!359234 lambda!359124))))

(declare-fun bs!1646076 () Bool)

(assert (= bs!1646076 (and b!6488119 b!6486656)))

(assert (=> bs!1646076 (not (= lambda!359234 lambda!359121))))

(declare-fun bs!1646077 () Bool)

(assert (= bs!1646077 (and b!6488119 b!6487561)))

(assert (=> bs!1646077 (not (= lambda!359234 lambda!359189))))

(declare-fun bs!1646078 () Bool)

(assert (= bs!1646078 (and b!6488119 b!6486655)))

(assert (=> bs!1646078 (= (and (= (regOne!33246 (regTwo!33247 r!7292)) (regOne!33246 r!7292)) (= (regTwo!33246 (regTwo!33247 r!7292)) (regTwo!33246 r!7292))) (= lambda!359234 lambda!359119))))

(declare-fun bs!1646079 () Bool)

(assert (= bs!1646079 (and b!6488119 d!2035135)))

(assert (=> bs!1646079 (not (= lambda!359234 lambda!359207))))

(assert (=> bs!1646075 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regTwo!33247 r!7292)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regTwo!33247 r!7292)) lt!2388865)) (= lambda!359234 lambda!359125))))

(declare-fun bs!1646080 () Bool)

(assert (= bs!1646080 (and b!6488119 d!2035139)))

(assert (=> bs!1646080 (not (= lambda!359234 lambda!359213))))

(declare-fun bs!1646081 () Bool)

(assert (= bs!1646081 (and b!6488119 d!2035129)))

(assert (=> bs!1646081 (not (= lambda!359234 lambda!359201))))

(declare-fun bs!1646082 () Bool)

(assert (= bs!1646082 (and b!6488119 d!2035145)))

(assert (=> bs!1646082 (not (= lambda!359234 lambda!359214))))

(assert (=> bs!1646073 (not (= lambda!359234 lambda!359215))))

(declare-fun bs!1646083 () Bool)

(assert (= bs!1646083 (and b!6488119 b!6487626)))

(assert (=> bs!1646083 (not (= lambda!359234 lambda!359203))))

(declare-fun bs!1646084 () Bool)

(assert (= bs!1646084 (and b!6488119 d!2035165)))

(assert (=> bs!1646084 (= (and (= (regOne!33246 (regTwo!33247 r!7292)) lt!2388865) (= (regTwo!33246 (regTwo!33247 r!7292)) (regTwo!33246 r!7292))) (= lambda!359234 lambda!359219))))

(assert (=> bs!1646080 (not (= lambda!359234 lambda!359212))))

(declare-fun bs!1646085 () Bool)

(assert (= bs!1646085 (and b!6488119 b!6487630)))

(assert (=> bs!1646085 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regTwo!33247 r!7292)) (regOne!33246 lt!2388865)) (= (regTwo!33246 (regTwo!33247 r!7292)) (regTwo!33246 lt!2388865))) (= lambda!359234 lambda!359204))))

(assert (=> bs!1646081 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regTwo!33247 r!7292)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regTwo!33247 r!7292)) lt!2388865)) (= lambda!359234 lambda!359202))))

(assert (=> bs!1646075 (not (= lambda!359234 lambda!359123))))

(assert (=> bs!1646084 (not (= lambda!359234 lambda!359218))))

(declare-fun bs!1646086 () Bool)

(assert (= bs!1646086 (and b!6488119 d!2035221)))

(assert (=> bs!1646086 (not (= lambda!359234 lambda!359231))))

(declare-fun bs!1646087 () Bool)

(assert (= bs!1646087 (and b!6488119 b!6487565)))

(assert (=> bs!1646087 (= (and (= (regOne!33246 (regTwo!33247 r!7292)) (regOne!33246 lt!2388855)) (= (regTwo!33246 (regTwo!33247 r!7292)) (regTwo!33246 lt!2388855))) (= lambda!359234 lambda!359190))))

(assert (=> bs!1646078 (not (= lambda!359234 lambda!359118))))

(assert (=> bs!1646076 (= (and (= (regOne!33246 (regTwo!33247 r!7292)) lt!2388865) (= (regTwo!33246 (regTwo!33247 r!7292)) (regTwo!33246 r!7292))) (= lambda!359234 lambda!359122))))

(declare-fun bs!1646088 () Bool)

(assert (= bs!1646088 (and b!6488119 b!6488115)))

(assert (=> bs!1646088 (not (= lambda!359234 lambda!359233))))

(declare-fun bs!1646089 () Bool)

(assert (= bs!1646089 (and b!6488119 d!2035161)))

(assert (=> bs!1646089 (not (= lambda!359234 lambda!359217))))

(declare-fun bs!1646090 () Bool)

(assert (= bs!1646090 (and b!6488119 b!6487597)))

(assert (=> bs!1646090 (= (and (= (regOne!33246 (regTwo!33247 r!7292)) (regOne!33246 r!7292)) (= (regTwo!33246 (regTwo!33247 r!7292)) (regTwo!33246 r!7292))) (= lambda!359234 lambda!359196))))

(assert (=> b!6488119 true))

(assert (=> b!6488119 true))

(declare-fun b!6488114 () Bool)

(declare-fun c!1188774 () Bool)

(assert (=> b!6488114 (= c!1188774 ((_ is ElementMatch!16367) (regTwo!33247 r!7292)))))

(declare-fun e!3932142 () Bool)

(declare-fun e!3932146 () Bool)

(assert (=> b!6488114 (= e!3932142 e!3932146)))

(declare-fun e!3932148 () Bool)

(declare-fun call!561554 () Bool)

(assert (=> b!6488115 (= e!3932148 call!561554)))

(declare-fun b!6488116 () Bool)

(declare-fun e!3932144 () Bool)

(declare-fun call!561553 () Bool)

(assert (=> b!6488116 (= e!3932144 call!561553)))

(declare-fun bm!561548 () Bool)

(assert (=> bm!561548 (= call!561553 (isEmpty!37468 s!2326))))

(declare-fun b!6488117 () Bool)

(declare-fun e!3932145 () Bool)

(assert (=> b!6488117 (= e!3932145 (matchRSpec!3468 (regTwo!33247 (regTwo!33247 r!7292)) s!2326))))

(declare-fun d!2035355 () Bool)

(declare-fun c!1188772 () Bool)

(assert (=> d!2035355 (= c!1188772 ((_ is EmptyExpr!16367) (regTwo!33247 r!7292)))))

(assert (=> d!2035355 (= (matchRSpec!3468 (regTwo!33247 r!7292) s!2326) e!3932144)))

(declare-fun b!6488118 () Bool)

(declare-fun e!3932143 () Bool)

(declare-fun e!3932147 () Bool)

(assert (=> b!6488118 (= e!3932143 e!3932147)))

(declare-fun c!1188773 () Bool)

(assert (=> b!6488118 (= c!1188773 ((_ is Star!16367) (regTwo!33247 r!7292)))))

(declare-fun bm!561549 () Bool)

(assert (=> bm!561549 (= call!561554 (Exists!3437 (ite c!1188773 lambda!359233 lambda!359234)))))

(assert (=> b!6488119 (= e!3932147 call!561554)))

(declare-fun b!6488120 () Bool)

(declare-fun c!1188771 () Bool)

(assert (=> b!6488120 (= c!1188771 ((_ is Union!16367) (regTwo!33247 r!7292)))))

(assert (=> b!6488120 (= e!3932146 e!3932143)))

(declare-fun b!6488121 () Bool)

(assert (=> b!6488121 (= e!3932146 (= s!2326 (Cons!65276 (c!1188383 (regTwo!33247 r!7292)) Nil!65276)))))

(declare-fun b!6488122 () Bool)

(assert (=> b!6488122 (= e!3932143 e!3932145)))

(declare-fun res!2664678 () Bool)

(assert (=> b!6488122 (= res!2664678 (matchRSpec!3468 (regOne!33247 (regTwo!33247 r!7292)) s!2326))))

(assert (=> b!6488122 (=> res!2664678 e!3932145)))

(declare-fun b!6488123 () Bool)

(declare-fun res!2664677 () Bool)

(assert (=> b!6488123 (=> res!2664677 e!3932148)))

(assert (=> b!6488123 (= res!2664677 call!561553)))

(assert (=> b!6488123 (= e!3932147 e!3932148)))

(declare-fun b!6488124 () Bool)

(assert (=> b!6488124 (= e!3932144 e!3932142)))

(declare-fun res!2664676 () Bool)

(assert (=> b!6488124 (= res!2664676 (not ((_ is EmptyLang!16367) (regTwo!33247 r!7292))))))

(assert (=> b!6488124 (=> (not res!2664676) (not e!3932142))))

(assert (= (and d!2035355 c!1188772) b!6488116))

(assert (= (and d!2035355 (not c!1188772)) b!6488124))

(assert (= (and b!6488124 res!2664676) b!6488114))

(assert (= (and b!6488114 c!1188774) b!6488121))

(assert (= (and b!6488114 (not c!1188774)) b!6488120))

(assert (= (and b!6488120 c!1188771) b!6488122))

(assert (= (and b!6488120 (not c!1188771)) b!6488118))

(assert (= (and b!6488122 (not res!2664678)) b!6488117))

(assert (= (and b!6488118 c!1188773) b!6488123))

(assert (= (and b!6488118 (not c!1188773)) b!6488119))

(assert (= (and b!6488123 (not res!2664677)) b!6488115))

(assert (= (or b!6488115 b!6488119) bm!561549))

(assert (= (or b!6488116 b!6488123) bm!561548))

(assert (=> bm!561548 m!7275886))

(declare-fun m!7276620 () Bool)

(assert (=> b!6488117 m!7276620))

(declare-fun m!7276622 () Bool)

(assert (=> bm!561549 m!7276622))

(declare-fun m!7276624 () Bool)

(assert (=> b!6488122 m!7276624))

(assert (=> b!6487595 d!2035355))

(declare-fun b!6488125 () Bool)

(declare-fun e!3932150 () Bool)

(declare-fun call!561556 () Bool)

(assert (=> b!6488125 (= e!3932150 call!561556)))

(declare-fun b!6488126 () Bool)

(declare-fun e!3932153 () Bool)

(declare-fun e!3932149 () Bool)

(assert (=> b!6488126 (= e!3932153 e!3932149)))

(declare-fun c!1188775 () Bool)

(assert (=> b!6488126 (= c!1188775 ((_ is Star!16367) (regTwo!33246 r!7292)))))

(declare-fun d!2035357 () Bool)

(declare-fun res!2664682 () Bool)

(assert (=> d!2035357 (=> res!2664682 e!3932153)))

(assert (=> d!2035357 (= res!2664682 ((_ is ElementMatch!16367) (regTwo!33246 r!7292)))))

(assert (=> d!2035357 (= (validRegex!8103 (regTwo!33246 r!7292)) e!3932153)))

(declare-fun bm!561550 () Bool)

(declare-fun call!561557 () Bool)

(declare-fun c!1188776 () Bool)

(assert (=> bm!561550 (= call!561557 (validRegex!8103 (ite c!1188776 (regOne!33247 (regTwo!33246 r!7292)) (regOne!33246 (regTwo!33246 r!7292)))))))

(declare-fun b!6488127 () Bool)

(declare-fun res!2664683 () Bool)

(declare-fun e!3932152 () Bool)

(assert (=> b!6488127 (=> res!2664683 e!3932152)))

(assert (=> b!6488127 (= res!2664683 (not ((_ is Concat!25212) (regTwo!33246 r!7292))))))

(declare-fun e!3932151 () Bool)

(assert (=> b!6488127 (= e!3932151 e!3932152)))

(declare-fun b!6488128 () Bool)

(declare-fun e!3932154 () Bool)

(assert (=> b!6488128 (= e!3932154 call!561556)))

(declare-fun bm!561551 () Bool)

(declare-fun call!561555 () Bool)

(assert (=> bm!561551 (= call!561555 (validRegex!8103 (ite c!1188775 (reg!16696 (regTwo!33246 r!7292)) (ite c!1188776 (regTwo!33247 (regTwo!33246 r!7292)) (regTwo!33246 (regTwo!33246 r!7292))))))))

(declare-fun b!6488129 () Bool)

(declare-fun res!2664681 () Bool)

(assert (=> b!6488129 (=> (not res!2664681) (not e!3932154))))

(assert (=> b!6488129 (= res!2664681 call!561557)))

(assert (=> b!6488129 (= e!3932151 e!3932154)))

(declare-fun b!6488130 () Bool)

(assert (=> b!6488130 (= e!3932149 e!3932151)))

(assert (=> b!6488130 (= c!1188776 ((_ is Union!16367) (regTwo!33246 r!7292)))))

(declare-fun bm!561552 () Bool)

(assert (=> bm!561552 (= call!561556 call!561555)))

(declare-fun b!6488131 () Bool)

(declare-fun e!3932155 () Bool)

(assert (=> b!6488131 (= e!3932155 call!561555)))

(declare-fun b!6488132 () Bool)

(assert (=> b!6488132 (= e!3932149 e!3932155)))

(declare-fun res!2664680 () Bool)

(assert (=> b!6488132 (= res!2664680 (not (nullable!6360 (reg!16696 (regTwo!33246 r!7292)))))))

(assert (=> b!6488132 (=> (not res!2664680) (not e!3932155))))

(declare-fun b!6488133 () Bool)

(assert (=> b!6488133 (= e!3932152 e!3932150)))

(declare-fun res!2664679 () Bool)

(assert (=> b!6488133 (=> (not res!2664679) (not e!3932150))))

(assert (=> b!6488133 (= res!2664679 call!561557)))

(assert (= (and d!2035357 (not res!2664682)) b!6488126))

(assert (= (and b!6488126 c!1188775) b!6488132))

(assert (= (and b!6488126 (not c!1188775)) b!6488130))

(assert (= (and b!6488132 res!2664680) b!6488131))

(assert (= (and b!6488130 c!1188776) b!6488129))

(assert (= (and b!6488130 (not c!1188776)) b!6488127))

(assert (= (and b!6488129 res!2664681) b!6488128))

(assert (= (and b!6488127 (not res!2664683)) b!6488133))

(assert (= (and b!6488133 res!2664679) b!6488125))

(assert (= (or b!6488128 b!6488125) bm!561552))

(assert (= (or b!6488129 b!6488133) bm!561550))

(assert (= (or b!6488131 bm!561552) bm!561551))

(declare-fun m!7276626 () Bool)

(assert (=> bm!561550 m!7276626))

(declare-fun m!7276628 () Bool)

(assert (=> bm!561551 m!7276628))

(declare-fun m!7276630 () Bool)

(assert (=> b!6488132 m!7276630))

(assert (=> b!6487484 d!2035357))

(declare-fun d!2035359 () Bool)

(declare-fun lt!2389154 () Int)

(assert (=> d!2035359 (>= lt!2389154 0)))

(declare-fun e!3932156 () Int)

(assert (=> d!2035359 (= lt!2389154 e!3932156)))

(declare-fun c!1188777 () Bool)

(assert (=> d!2035359 (= c!1188777 ((_ is Nil!65276) lt!2388997))))

(assert (=> d!2035359 (= (size!40424 lt!2388997) lt!2389154)))

(declare-fun b!6488134 () Bool)

(assert (=> b!6488134 (= e!3932156 0)))

(declare-fun b!6488135 () Bool)

(assert (=> b!6488135 (= e!3932156 (+ 1 (size!40424 (t!379026 lt!2388997))))))

(assert (= (and d!2035359 c!1188777) b!6488134))

(assert (= (and d!2035359 (not c!1188777)) b!6488135))

(declare-fun m!7276632 () Bool)

(assert (=> b!6488135 m!7276632))

(assert (=> b!6487034 d!2035359))

(assert (=> b!6487034 d!2035241))

(declare-fun d!2035361 () Bool)

(declare-fun lt!2389155 () Int)

(assert (=> d!2035361 (>= lt!2389155 0)))

(declare-fun e!3932157 () Int)

(assert (=> d!2035361 (= lt!2389155 e!3932157)))

(declare-fun c!1188778 () Bool)

(assert (=> d!2035361 (= c!1188778 ((_ is Nil!65276) lt!2388903))))

(assert (=> d!2035361 (= (size!40424 lt!2388903) lt!2389155)))

(declare-fun b!6488136 () Bool)

(assert (=> b!6488136 (= e!3932157 0)))

(declare-fun b!6488137 () Bool)

(assert (=> b!6488137 (= e!3932157 (+ 1 (size!40424 (t!379026 lt!2388903))))))

(assert (= (and d!2035361 c!1188778) b!6488136))

(assert (= (and d!2035361 (not c!1188778)) b!6488137))

(declare-fun m!7276634 () Bool)

(assert (=> b!6488137 m!7276634))

(assert (=> b!6487034 d!2035361))

(declare-fun b!6488138 () Bool)

(declare-fun res!2664688 () Bool)

(declare-fun e!3932158 () Bool)

(assert (=> b!6488138 (=> res!2664688 e!3932158)))

(assert (=> b!6488138 (= res!2664688 (not (isEmpty!37468 (tail!12294 (_2!36649 (get!22634 lt!2389090))))))))

(declare-fun b!6488140 () Bool)

(declare-fun e!3932163 () Bool)

(assert (=> b!6488140 (= e!3932163 (= (head!13209 (_2!36649 (get!22634 lt!2389090))) (c!1188383 lt!2388865)))))

(declare-fun b!6488141 () Bool)

(declare-fun res!2664685 () Bool)

(declare-fun e!3932160 () Bool)

(assert (=> b!6488141 (=> res!2664685 e!3932160)))

(assert (=> b!6488141 (= res!2664685 e!3932163)))

(declare-fun res!2664686 () Bool)

(assert (=> b!6488141 (=> (not res!2664686) (not e!3932163))))

(declare-fun lt!2389156 () Bool)

(assert (=> b!6488141 (= res!2664686 lt!2389156)))

(declare-fun b!6488142 () Bool)

(declare-fun e!3932164 () Bool)

(assert (=> b!6488142 (= e!3932164 e!3932158)))

(declare-fun res!2664691 () Bool)

(assert (=> b!6488142 (=> res!2664691 e!3932158)))

(declare-fun call!561558 () Bool)

(assert (=> b!6488142 (= res!2664691 call!561558)))

(declare-fun b!6488143 () Bool)

(declare-fun res!2664689 () Bool)

(assert (=> b!6488143 (=> res!2664689 e!3932160)))

(assert (=> b!6488143 (= res!2664689 (not ((_ is ElementMatch!16367) lt!2388865)))))

(declare-fun e!3932159 () Bool)

(assert (=> b!6488143 (= e!3932159 e!3932160)))

(declare-fun bm!561553 () Bool)

(assert (=> bm!561553 (= call!561558 (isEmpty!37468 (_2!36649 (get!22634 lt!2389090))))))

(declare-fun b!6488144 () Bool)

(assert (=> b!6488144 (= e!3932160 e!3932164)))

(declare-fun res!2664687 () Bool)

(assert (=> b!6488144 (=> (not res!2664687) (not e!3932164))))

(assert (=> b!6488144 (= res!2664687 (not lt!2389156))))

(declare-fun b!6488145 () Bool)

(declare-fun e!3932161 () Bool)

(assert (=> b!6488145 (= e!3932161 e!3932159)))

(declare-fun c!1188781 () Bool)

(assert (=> b!6488145 (= c!1188781 ((_ is EmptyLang!16367) lt!2388865))))

(declare-fun b!6488146 () Bool)

(declare-fun res!2664690 () Bool)

(assert (=> b!6488146 (=> (not res!2664690) (not e!3932163))))

(assert (=> b!6488146 (= res!2664690 (isEmpty!37468 (tail!12294 (_2!36649 (get!22634 lt!2389090)))))))

(declare-fun b!6488147 () Bool)

(declare-fun e!3932162 () Bool)

(assert (=> b!6488147 (= e!3932162 (nullable!6360 lt!2388865))))

(declare-fun b!6488148 () Bool)

(assert (=> b!6488148 (= e!3932161 (= lt!2389156 call!561558))))

(declare-fun b!6488149 () Bool)

(declare-fun res!2664684 () Bool)

(assert (=> b!6488149 (=> (not res!2664684) (not e!3932163))))

(assert (=> b!6488149 (= res!2664684 (not call!561558))))

(declare-fun b!6488150 () Bool)

(assert (=> b!6488150 (= e!3932159 (not lt!2389156))))

(declare-fun b!6488151 () Bool)

(assert (=> b!6488151 (= e!3932158 (not (= (head!13209 (_2!36649 (get!22634 lt!2389090))) (c!1188383 lt!2388865))))))

(declare-fun d!2035363 () Bool)

(assert (=> d!2035363 e!3932161))

(declare-fun c!1188780 () Bool)

(assert (=> d!2035363 (= c!1188780 ((_ is EmptyExpr!16367) lt!2388865))))

(assert (=> d!2035363 (= lt!2389156 e!3932162)))

(declare-fun c!1188779 () Bool)

(assert (=> d!2035363 (= c!1188779 (isEmpty!37468 (_2!36649 (get!22634 lt!2389090))))))

(assert (=> d!2035363 (validRegex!8103 lt!2388865)))

(assert (=> d!2035363 (= (matchR!8550 lt!2388865 (_2!36649 (get!22634 lt!2389090))) lt!2389156)))

(declare-fun b!6488139 () Bool)

(assert (=> b!6488139 (= e!3932162 (matchR!8550 (derivativeStep!5063 lt!2388865 (head!13209 (_2!36649 (get!22634 lt!2389090)))) (tail!12294 (_2!36649 (get!22634 lt!2389090)))))))

(assert (= (and d!2035363 c!1188779) b!6488147))

(assert (= (and d!2035363 (not c!1188779)) b!6488139))

(assert (= (and d!2035363 c!1188780) b!6488148))

(assert (= (and d!2035363 (not c!1188780)) b!6488145))

(assert (= (and b!6488145 c!1188781) b!6488150))

(assert (= (and b!6488145 (not c!1188781)) b!6488143))

(assert (= (and b!6488143 (not res!2664689)) b!6488141))

(assert (= (and b!6488141 res!2664686) b!6488149))

(assert (= (and b!6488149 res!2664684) b!6488146))

(assert (= (and b!6488146 res!2664690) b!6488140))

(assert (= (and b!6488141 (not res!2664685)) b!6488144))

(assert (= (and b!6488144 res!2664687) b!6488142))

(assert (= (and b!6488142 (not res!2664691)) b!6488138))

(assert (= (and b!6488138 (not res!2664688)) b!6488151))

(assert (= (or b!6488148 b!6488142 b!6488149) bm!561553))

(declare-fun m!7276636 () Bool)

(assert (=> b!6488138 m!7276636))

(assert (=> b!6488138 m!7276636))

(declare-fun m!7276638 () Bool)

(assert (=> b!6488138 m!7276638))

(assert (=> b!6488147 m!7275846))

(declare-fun m!7276640 () Bool)

(assert (=> d!2035363 m!7276640))

(assert (=> d!2035363 m!7275850))

(assert (=> b!6488146 m!7276636))

(assert (=> b!6488146 m!7276636))

(assert (=> b!6488146 m!7276638))

(declare-fun m!7276642 () Bool)

(assert (=> b!6488151 m!7276642))

(assert (=> b!6488140 m!7276642))

(assert (=> b!6488139 m!7276642))

(assert (=> b!6488139 m!7276642))

(declare-fun m!7276644 () Bool)

(assert (=> b!6488139 m!7276644))

(assert (=> b!6488139 m!7276636))

(assert (=> b!6488139 m!7276644))

(assert (=> b!6488139 m!7276636))

(declare-fun m!7276646 () Bool)

(assert (=> b!6488139 m!7276646))

(assert (=> bm!561553 m!7276640))

(assert (=> b!6487654 d!2035363))

(declare-fun d!2035365 () Bool)

(assert (=> d!2035365 (= (get!22634 lt!2389090) (v!52436 lt!2389090))))

(assert (=> b!6487654 d!2035365))

(declare-fun b!6488152 () Bool)

(declare-fun e!3932165 () (InoxSet Context!11502))

(declare-fun call!561563 () (InoxSet Context!11502))

(declare-fun call!561562 () (InoxSet Context!11502))

(assert (=> b!6488152 (= e!3932165 ((_ map or) call!561563 call!561562))))

(declare-fun b!6488153 () Bool)

(declare-fun e!3932169 () (InoxSet Context!11502))

(declare-fun call!561560 () (InoxSet Context!11502))

(assert (=> b!6488153 (= e!3932169 ((_ map or) call!561562 call!561560))))

(declare-fun bm!561554 () Bool)

(declare-fun call!561561 () (InoxSet Context!11502))

(assert (=> bm!561554 (= call!561561 call!561560)))

(declare-fun b!6488154 () Bool)

(declare-fun e!3932170 () (InoxSet Context!11502))

(assert (=> b!6488154 (= e!3932169 e!3932170)))

(declare-fun c!1188782 () Bool)

(assert (=> b!6488154 (= c!1188782 ((_ is Concat!25212) (h!71725 (exprs!6251 lt!2388895))))))

(declare-fun b!6488155 () Bool)

(declare-fun e!3932168 () (InoxSet Context!11502))

(assert (=> b!6488155 (= e!3932168 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (t!379027 (exprs!6251 lt!2388895))) true))))

(declare-fun b!6488156 () Bool)

(declare-fun e!3932167 () Bool)

(assert (=> b!6488156 (= e!3932167 (nullable!6360 (regOne!33246 (h!71725 (exprs!6251 lt!2388895)))))))

(declare-fun bm!561555 () Bool)

(declare-fun c!1188783 () Bool)

(declare-fun call!561559 () List!65401)

(assert (=> bm!561555 (= call!561562 (derivationStepZipperDown!1615 (ite c!1188783 (regTwo!33247 (h!71725 (exprs!6251 lt!2388895))) (regOne!33246 (h!71725 (exprs!6251 lt!2388895)))) (ite c!1188783 (Context!11503 (t!379027 (exprs!6251 lt!2388895))) (Context!11503 call!561559)) (h!71724 s!2326)))))

(declare-fun call!561564 () List!65401)

(declare-fun c!1188786 () Bool)

(declare-fun bm!561556 () Bool)

(assert (=> bm!561556 (= call!561563 (derivationStepZipperDown!1615 (ite c!1188783 (regOne!33247 (h!71725 (exprs!6251 lt!2388895))) (ite c!1188786 (regTwo!33246 (h!71725 (exprs!6251 lt!2388895))) (ite c!1188782 (regOne!33246 (h!71725 (exprs!6251 lt!2388895))) (reg!16696 (h!71725 (exprs!6251 lt!2388895)))))) (ite (or c!1188783 c!1188786) (Context!11503 (t!379027 (exprs!6251 lt!2388895))) (Context!11503 call!561564)) (h!71724 s!2326)))))

(declare-fun bm!561557 () Bool)

(assert (=> bm!561557 (= call!561564 call!561559)))

(declare-fun b!6488157 () Bool)

(declare-fun e!3932166 () (InoxSet Context!11502))

(assert (=> b!6488157 (= e!3932166 call!561561)))

(declare-fun b!6488158 () Bool)

(assert (=> b!6488158 (= e!3932170 call!561561)))

(declare-fun b!6488159 () Bool)

(assert (=> b!6488159 (= e!3932166 ((as const (Array Context!11502 Bool)) false))))

(declare-fun bm!561558 () Bool)

(assert (=> bm!561558 (= call!561559 ($colon$colon!2219 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388895)))) (ite (or c!1188786 c!1188782) (regTwo!33246 (h!71725 (exprs!6251 lt!2388895))) (h!71725 (exprs!6251 lt!2388895)))))))

(declare-fun b!6488160 () Bool)

(assert (=> b!6488160 (= c!1188786 e!3932167)))

(declare-fun res!2664692 () Bool)

(assert (=> b!6488160 (=> (not res!2664692) (not e!3932167))))

(assert (=> b!6488160 (= res!2664692 ((_ is Concat!25212) (h!71725 (exprs!6251 lt!2388895))))))

(assert (=> b!6488160 (= e!3932165 e!3932169)))

(declare-fun b!6488161 () Bool)

(declare-fun c!1188784 () Bool)

(assert (=> b!6488161 (= c!1188784 ((_ is Star!16367) (h!71725 (exprs!6251 lt!2388895))))))

(assert (=> b!6488161 (= e!3932170 e!3932166)))

(declare-fun bm!561559 () Bool)

(assert (=> bm!561559 (= call!561560 call!561563)))

(declare-fun b!6488162 () Bool)

(assert (=> b!6488162 (= e!3932168 e!3932165)))

(assert (=> b!6488162 (= c!1188783 ((_ is Union!16367) (h!71725 (exprs!6251 lt!2388895))))))

(declare-fun d!2035367 () Bool)

(declare-fun c!1188785 () Bool)

(assert (=> d!2035367 (= c!1188785 (and ((_ is ElementMatch!16367) (h!71725 (exprs!6251 lt!2388895))) (= (c!1188383 (h!71725 (exprs!6251 lt!2388895))) (h!71724 s!2326))))))

(assert (=> d!2035367 (= (derivationStepZipperDown!1615 (h!71725 (exprs!6251 lt!2388895)) (Context!11503 (t!379027 (exprs!6251 lt!2388895))) (h!71724 s!2326)) e!3932168)))

(assert (= (and d!2035367 c!1188785) b!6488155))

(assert (= (and d!2035367 (not c!1188785)) b!6488162))

(assert (= (and b!6488162 c!1188783) b!6488152))

(assert (= (and b!6488162 (not c!1188783)) b!6488160))

(assert (= (and b!6488160 res!2664692) b!6488156))

(assert (= (and b!6488160 c!1188786) b!6488153))

(assert (= (and b!6488160 (not c!1188786)) b!6488154))

(assert (= (and b!6488154 c!1188782) b!6488158))

(assert (= (and b!6488154 (not c!1188782)) b!6488161))

(assert (= (and b!6488161 c!1188784) b!6488157))

(assert (= (and b!6488161 (not c!1188784)) b!6488159))

(assert (= (or b!6488158 b!6488157) bm!561557))

(assert (= (or b!6488158 b!6488157) bm!561554))

(assert (= (or b!6488153 bm!561557) bm!561558))

(assert (= (or b!6488153 bm!561554) bm!561559))

(assert (= (or b!6488152 b!6488153) bm!561555))

(assert (= (or b!6488152 bm!561559) bm!561556))

(declare-fun m!7276648 () Bool)

(assert (=> bm!561558 m!7276648))

(declare-fun m!7276650 () Bool)

(assert (=> bm!561555 m!7276650))

(declare-fun m!7276652 () Bool)

(assert (=> b!6488156 m!7276652))

(declare-fun m!7276654 () Bool)

(assert (=> b!6488155 m!7276654))

(declare-fun m!7276656 () Bool)

(assert (=> bm!561556 m!7276656))

(assert (=> bm!561462 d!2035367))

(assert (=> d!2035125 d!2035187))

(assert (=> d!2035125 d!2035131))

(declare-fun d!2035369 () Bool)

(assert (=> d!2035369 (= (matchR!8550 lt!2388865 (_1!36649 lt!2388900)) (matchRSpec!3468 lt!2388865 (_1!36649 lt!2388900)))))

(assert (=> d!2035369 true))

(declare-fun _$88!5174 () Unit!158799)

(assert (=> d!2035369 (= (choose!48162 lt!2388865 (_1!36649 lt!2388900)) _$88!5174)))

(declare-fun bs!1646091 () Bool)

(assert (= bs!1646091 d!2035369))

(assert (=> bs!1646091 m!7275008))

(assert (=> bs!1646091 m!7275034))

(assert (=> d!2035125 d!2035369))

(assert (=> d!2035125 d!2035219))

(declare-fun b!6488163 () Bool)

(declare-fun res!2664697 () Bool)

(declare-fun e!3932171 () Bool)

(assert (=> b!6488163 (=> res!2664697 e!3932171)))

(assert (=> b!6488163 (= res!2664697 (not (isEmpty!37468 (tail!12294 (tail!12294 lt!2388887)))))))

(declare-fun b!6488165 () Bool)

(declare-fun e!3932176 () Bool)

(assert (=> b!6488165 (= e!3932176 (= (head!13209 (tail!12294 lt!2388887)) (c!1188383 (derivativeStep!5063 lt!2388855 (head!13209 lt!2388887)))))))

(declare-fun b!6488166 () Bool)

(declare-fun res!2664694 () Bool)

(declare-fun e!3932173 () Bool)

(assert (=> b!6488166 (=> res!2664694 e!3932173)))

(assert (=> b!6488166 (= res!2664694 e!3932176)))

(declare-fun res!2664695 () Bool)

(assert (=> b!6488166 (=> (not res!2664695) (not e!3932176))))

(declare-fun lt!2389157 () Bool)

(assert (=> b!6488166 (= res!2664695 lt!2389157)))

(declare-fun b!6488167 () Bool)

(declare-fun e!3932177 () Bool)

(assert (=> b!6488167 (= e!3932177 e!3932171)))

(declare-fun res!2664700 () Bool)

(assert (=> b!6488167 (=> res!2664700 e!3932171)))

(declare-fun call!561565 () Bool)

(assert (=> b!6488167 (= res!2664700 call!561565)))

(declare-fun b!6488168 () Bool)

(declare-fun res!2664698 () Bool)

(assert (=> b!6488168 (=> res!2664698 e!3932173)))

(assert (=> b!6488168 (= res!2664698 (not ((_ is ElementMatch!16367) (derivativeStep!5063 lt!2388855 (head!13209 lt!2388887)))))))

(declare-fun e!3932172 () Bool)

(assert (=> b!6488168 (= e!3932172 e!3932173)))

(declare-fun bm!561560 () Bool)

(assert (=> bm!561560 (= call!561565 (isEmpty!37468 (tail!12294 lt!2388887)))))

(declare-fun b!6488169 () Bool)

(assert (=> b!6488169 (= e!3932173 e!3932177)))

(declare-fun res!2664696 () Bool)

(assert (=> b!6488169 (=> (not res!2664696) (not e!3932177))))

(assert (=> b!6488169 (= res!2664696 (not lt!2389157))))

(declare-fun b!6488170 () Bool)

(declare-fun e!3932174 () Bool)

(assert (=> b!6488170 (= e!3932174 e!3932172)))

(declare-fun c!1188789 () Bool)

(assert (=> b!6488170 (= c!1188789 ((_ is EmptyLang!16367) (derivativeStep!5063 lt!2388855 (head!13209 lt!2388887))))))

(declare-fun b!6488171 () Bool)

(declare-fun res!2664699 () Bool)

(assert (=> b!6488171 (=> (not res!2664699) (not e!3932176))))

(assert (=> b!6488171 (= res!2664699 (isEmpty!37468 (tail!12294 (tail!12294 lt!2388887))))))

(declare-fun b!6488172 () Bool)

(declare-fun e!3932175 () Bool)

(assert (=> b!6488172 (= e!3932175 (nullable!6360 (derivativeStep!5063 lt!2388855 (head!13209 lt!2388887))))))

(declare-fun b!6488173 () Bool)

(assert (=> b!6488173 (= e!3932174 (= lt!2389157 call!561565))))

(declare-fun b!6488174 () Bool)

(declare-fun res!2664693 () Bool)

(assert (=> b!6488174 (=> (not res!2664693) (not e!3932176))))

(assert (=> b!6488174 (= res!2664693 (not call!561565))))

(declare-fun b!6488175 () Bool)

(assert (=> b!6488175 (= e!3932172 (not lt!2389157))))

(declare-fun b!6488176 () Bool)

(assert (=> b!6488176 (= e!3932171 (not (= (head!13209 (tail!12294 lt!2388887)) (c!1188383 (derivativeStep!5063 lt!2388855 (head!13209 lt!2388887))))))))

(declare-fun d!2035371 () Bool)

(assert (=> d!2035371 e!3932174))

(declare-fun c!1188788 () Bool)

(assert (=> d!2035371 (= c!1188788 ((_ is EmptyExpr!16367) (derivativeStep!5063 lt!2388855 (head!13209 lt!2388887))))))

(assert (=> d!2035371 (= lt!2389157 e!3932175)))

(declare-fun c!1188787 () Bool)

(assert (=> d!2035371 (= c!1188787 (isEmpty!37468 (tail!12294 lt!2388887)))))

(assert (=> d!2035371 (validRegex!8103 (derivativeStep!5063 lt!2388855 (head!13209 lt!2388887)))))

(assert (=> d!2035371 (= (matchR!8550 (derivativeStep!5063 lt!2388855 (head!13209 lt!2388887)) (tail!12294 lt!2388887)) lt!2389157)))

(declare-fun b!6488164 () Bool)

(assert (=> b!6488164 (= e!3932175 (matchR!8550 (derivativeStep!5063 (derivativeStep!5063 lt!2388855 (head!13209 lt!2388887)) (head!13209 (tail!12294 lt!2388887))) (tail!12294 (tail!12294 lt!2388887))))))

(assert (= (and d!2035371 c!1188787) b!6488172))

(assert (= (and d!2035371 (not c!1188787)) b!6488164))

(assert (= (and d!2035371 c!1188788) b!6488173))

(assert (= (and d!2035371 (not c!1188788)) b!6488170))

(assert (= (and b!6488170 c!1188789) b!6488175))

(assert (= (and b!6488170 (not c!1188789)) b!6488168))

(assert (= (and b!6488168 (not res!2664698)) b!6488166))

(assert (= (and b!6488166 res!2664695) b!6488174))

(assert (= (and b!6488174 res!2664693) b!6488171))

(assert (= (and b!6488171 res!2664699) b!6488165))

(assert (= (and b!6488166 (not res!2664694)) b!6488169))

(assert (= (and b!6488169 res!2664696) b!6488167))

(assert (= (and b!6488167 (not res!2664700)) b!6488163))

(assert (= (and b!6488163 (not res!2664697)) b!6488176))

(assert (= (or b!6488173 b!6488167 b!6488174) bm!561560))

(assert (=> b!6488163 m!7275904))

(declare-fun m!7276658 () Bool)

(assert (=> b!6488163 m!7276658))

(assert (=> b!6488163 m!7276658))

(declare-fun m!7276660 () Bool)

(assert (=> b!6488163 m!7276660))

(assert (=> b!6488172 m!7275916))

(declare-fun m!7276662 () Bool)

(assert (=> b!6488172 m!7276662))

(assert (=> d!2035371 m!7275904))

(assert (=> d!2035371 m!7275906))

(assert (=> d!2035371 m!7275916))

(declare-fun m!7276664 () Bool)

(assert (=> d!2035371 m!7276664))

(assert (=> b!6488171 m!7275904))

(assert (=> b!6488171 m!7276658))

(assert (=> b!6488171 m!7276658))

(assert (=> b!6488171 m!7276660))

(assert (=> b!6488176 m!7275904))

(declare-fun m!7276666 () Bool)

(assert (=> b!6488176 m!7276666))

(assert (=> b!6488165 m!7275904))

(assert (=> b!6488165 m!7276666))

(assert (=> b!6488164 m!7275904))

(assert (=> b!6488164 m!7276666))

(assert (=> b!6488164 m!7275916))

(assert (=> b!6488164 m!7276666))

(declare-fun m!7276668 () Bool)

(assert (=> b!6488164 m!7276668))

(assert (=> b!6488164 m!7275904))

(assert (=> b!6488164 m!7276658))

(assert (=> b!6488164 m!7276668))

(assert (=> b!6488164 m!7276658))

(declare-fun m!7276670 () Bool)

(assert (=> b!6488164 m!7276670))

(assert (=> bm!561560 m!7275904))

(assert (=> bm!561560 m!7275906))

(assert (=> b!6487465 d!2035371))

(declare-fun b!6488177 () Bool)

(declare-fun c!1188790 () Bool)

(assert (=> b!6488177 (= c!1188790 (nullable!6360 (regOne!33246 lt!2388855)))))

(declare-fun e!3932180 () Regex!16367)

(declare-fun e!3932181 () Regex!16367)

(assert (=> b!6488177 (= e!3932180 e!3932181)))

(declare-fun b!6488178 () Bool)

(declare-fun e!3932179 () Regex!16367)

(assert (=> b!6488178 (= e!3932179 e!3932180)))

(declare-fun c!1188794 () Bool)

(assert (=> b!6488178 (= c!1188794 ((_ is Star!16367) lt!2388855))))

(declare-fun call!561567 () Regex!16367)

(declare-fun bm!561562 () Bool)

(declare-fun c!1188791 () Bool)

(assert (=> bm!561562 (= call!561567 (derivativeStep!5063 (ite c!1188791 (regOne!33247 lt!2388855) (ite c!1188790 (regTwo!33246 lt!2388855) (regOne!33246 lt!2388855))) (head!13209 lt!2388887)))))

(declare-fun b!6488179 () Bool)

(declare-fun call!561566 () Regex!16367)

(assert (=> b!6488179 (= e!3932180 (Concat!25212 call!561566 lt!2388855))))

(declare-fun b!6488180 () Bool)

(declare-fun e!3932178 () Regex!16367)

(assert (=> b!6488180 (= e!3932178 EmptyLang!16367)))

(declare-fun b!6488181 () Bool)

(declare-fun e!3932182 () Regex!16367)

(assert (=> b!6488181 (= e!3932182 (ite (= (head!13209 lt!2388887) (c!1188383 lt!2388855)) EmptyExpr!16367 EmptyLang!16367))))

(declare-fun bm!561563 () Bool)

(declare-fun call!561569 () Regex!16367)

(assert (=> bm!561563 (= call!561566 call!561569)))

(declare-fun b!6488182 () Bool)

(assert (=> b!6488182 (= e!3932178 e!3932182)))

(declare-fun c!1188793 () Bool)

(assert (=> b!6488182 (= c!1188793 ((_ is ElementMatch!16367) lt!2388855))))

(declare-fun b!6488183 () Bool)

(declare-fun call!561568 () Regex!16367)

(assert (=> b!6488183 (= e!3932181 (Union!16367 (Concat!25212 call!561566 (regTwo!33246 lt!2388855)) call!561568))))

(declare-fun b!6488184 () Bool)

(assert (=> b!6488184 (= e!3932181 (Union!16367 (Concat!25212 call!561568 (regTwo!33246 lt!2388855)) EmptyLang!16367))))

(declare-fun b!6488185 () Bool)

(assert (=> b!6488185 (= c!1188791 ((_ is Union!16367) lt!2388855))))

(assert (=> b!6488185 (= e!3932182 e!3932179)))

(declare-fun d!2035373 () Bool)

(declare-fun lt!2389158 () Regex!16367)

(assert (=> d!2035373 (validRegex!8103 lt!2389158)))

(assert (=> d!2035373 (= lt!2389158 e!3932178)))

(declare-fun c!1188792 () Bool)

(assert (=> d!2035373 (= c!1188792 (or ((_ is EmptyExpr!16367) lt!2388855) ((_ is EmptyLang!16367) lt!2388855)))))

(assert (=> d!2035373 (validRegex!8103 lt!2388855)))

(assert (=> d!2035373 (= (derivativeStep!5063 lt!2388855 (head!13209 lt!2388887)) lt!2389158)))

(declare-fun bm!561561 () Bool)

(assert (=> bm!561561 (= call!561569 (derivativeStep!5063 (ite c!1188791 (regTwo!33247 lt!2388855) (ite c!1188794 (reg!16696 lt!2388855) (regOne!33246 lt!2388855))) (head!13209 lt!2388887)))))

(declare-fun b!6488186 () Bool)

(assert (=> b!6488186 (= e!3932179 (Union!16367 call!561567 call!561569))))

(declare-fun bm!561564 () Bool)

(assert (=> bm!561564 (= call!561568 call!561567)))

(assert (= (and d!2035373 c!1188792) b!6488180))

(assert (= (and d!2035373 (not c!1188792)) b!6488182))

(assert (= (and b!6488182 c!1188793) b!6488181))

(assert (= (and b!6488182 (not c!1188793)) b!6488185))

(assert (= (and b!6488185 c!1188791) b!6488186))

(assert (= (and b!6488185 (not c!1188791)) b!6488178))

(assert (= (and b!6488178 c!1188794) b!6488179))

(assert (= (and b!6488178 (not c!1188794)) b!6488177))

(assert (= (and b!6488177 c!1188790) b!6488183))

(assert (= (and b!6488177 (not c!1188790)) b!6488184))

(assert (= (or b!6488183 b!6488184) bm!561564))

(assert (= (or b!6488179 b!6488183) bm!561563))

(assert (= (or b!6488186 bm!561563) bm!561561))

(assert (= (or b!6488186 bm!561564) bm!561562))

(declare-fun m!7276672 () Bool)

(assert (=> b!6488177 m!7276672))

(assert (=> bm!561562 m!7275914))

(declare-fun m!7276674 () Bool)

(assert (=> bm!561562 m!7276674))

(declare-fun m!7276676 () Bool)

(assert (=> d!2035373 m!7276676))

(assert (=> d!2035373 m!7275912))

(assert (=> bm!561561 m!7275914))

(declare-fun m!7276678 () Bool)

(assert (=> bm!561561 m!7276678))

(assert (=> b!6487465 d!2035373))

(declare-fun d!2035375 () Bool)

(assert (=> d!2035375 (= (head!13209 lt!2388887) (h!71724 lt!2388887))))

(assert (=> b!6487465 d!2035375))

(assert (=> b!6487465 d!2035203))

(declare-fun d!2035377 () Bool)

(assert (=> d!2035377 (= (nullable!6360 (h!71725 (exprs!6251 lt!2388862))) (nullableFct!2298 (h!71725 (exprs!6251 lt!2388862))))))

(declare-fun bs!1646092 () Bool)

(assert (= bs!1646092 d!2035377))

(declare-fun m!7276680 () Bool)

(assert (=> bs!1646092 m!7276680))

(assert (=> b!6487269 d!2035377))

(declare-fun bs!1646093 () Bool)

(declare-fun d!2035379 () Bool)

(assert (= bs!1646093 (and d!2035379 b!6486640)))

(declare-fun lambda!359235 () Int)

(assert (=> bs!1646093 (= lambda!359235 lambda!359126)))

(declare-fun bs!1646094 () Bool)

(assert (= bs!1646094 (and d!2035379 d!2035183)))

(assert (=> bs!1646094 (= lambda!359235 lambda!359225)))

(declare-fun bs!1646095 () Bool)

(assert (= bs!1646095 (and d!2035379 d!2035173)))

(assert (=> bs!1646095 (= lambda!359235 lambda!359222)))

(declare-fun bs!1646096 () Bool)

(assert (= bs!1646096 (and d!2035379 d!2035185)))

(assert (=> bs!1646096 (= lambda!359235 lambda!359228)))

(declare-fun bs!1646097 () Bool)

(assert (= bs!1646097 (and d!2035379 d!2035009)))

(assert (=> bs!1646097 (= lambda!359235 lambda!359178)))

(declare-fun bs!1646098 () Bool)

(assert (= bs!1646098 (and d!2035379 d!2035083)))

(assert (=> bs!1646098 (= lambda!359235 lambda!359184)))

(declare-fun bs!1646099 () Bool)

(assert (= bs!1646099 (and d!2035379 d!2035073)))

(assert (=> bs!1646099 (= lambda!359235 lambda!359181)))

(declare-fun bs!1646100 () Bool)

(assert (= bs!1646100 (and d!2035379 d!2035109)))

(assert (=> bs!1646100 (= lambda!359235 lambda!359194)))

(assert (=> d!2035379 (= (inv!84164 setElem!44199) (forall!15550 (exprs!6251 setElem!44199) lambda!359235))))

(declare-fun bs!1646101 () Bool)

(assert (= bs!1646101 d!2035379))

(declare-fun m!7276682 () Bool)

(assert (=> bs!1646101 m!7276682))

(assert (=> setNonEmpty!44199 d!2035379))

(declare-fun d!2035381 () Bool)

(assert (=> d!2035381 (= (isDefined!12961 lt!2389108) (not (isEmpty!37472 lt!2389108)))))

(declare-fun bs!1646102 () Bool)

(assert (= bs!1646102 d!2035381))

(declare-fun m!7276684 () Bool)

(assert (=> bs!1646102 m!7276684))

(assert (=> b!6487700 d!2035381))

(assert (=> b!6487446 d!2035327))

(assert (=> b!6487446 d!2035329))

(declare-fun d!2035383 () Bool)

(assert (=> d!2035383 (= (Exists!3437 lambda!359218) (choose!48164 lambda!359218))))

(declare-fun bs!1646103 () Bool)

(assert (= bs!1646103 d!2035383))

(declare-fun m!7276686 () Bool)

(assert (=> bs!1646103 m!7276686))

(assert (=> d!2035165 d!2035383))

(declare-fun d!2035385 () Bool)

(assert (=> d!2035385 (= (Exists!3437 lambda!359219) (choose!48164 lambda!359219))))

(declare-fun bs!1646104 () Bool)

(assert (= bs!1646104 d!2035385))

(declare-fun m!7276688 () Bool)

(assert (=> bs!1646104 m!7276688))

(assert (=> d!2035165 d!2035385))

(declare-fun bs!1646105 () Bool)

(declare-fun d!2035387 () Bool)

(assert (= bs!1646105 (and d!2035387 d!2035151)))

(declare-fun lambda!359240 () Int)

(assert (=> bs!1646105 (not (= lambda!359240 lambda!359216))))

(declare-fun bs!1646106 () Bool)

(assert (= bs!1646106 (and d!2035387 b!6487593)))

(assert (=> bs!1646106 (not (= lambda!359240 lambda!359195))))

(declare-fun bs!1646107 () Bool)

(assert (= bs!1646107 (and d!2035387 b!6486638)))

(assert (=> bs!1646107 (not (= lambda!359240 lambda!359124))))

(declare-fun bs!1646108 () Bool)

(assert (= bs!1646108 (and d!2035387 b!6486656)))

(assert (=> bs!1646108 (= lambda!359240 lambda!359121)))

(declare-fun bs!1646109 () Bool)

(assert (= bs!1646109 (and d!2035387 b!6487561)))

(assert (=> bs!1646109 (not (= lambda!359240 lambda!359189))))

(declare-fun bs!1646110 () Bool)

(assert (= bs!1646110 (and d!2035387 b!6486655)))

(assert (=> bs!1646110 (not (= lambda!359240 lambda!359119))))

(declare-fun bs!1646111 () Bool)

(assert (= bs!1646111 (and d!2035387 d!2035135)))

(assert (=> bs!1646111 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359240 lambda!359207))))

(assert (=> bs!1646107 (not (= lambda!359240 lambda!359125))))

(declare-fun bs!1646112 () Bool)

(assert (= bs!1646112 (and d!2035387 d!2035139)))

(assert (=> bs!1646112 (not (= lambda!359240 lambda!359213))))

(declare-fun bs!1646113 () Bool)

(assert (= bs!1646113 (and d!2035387 d!2035129)))

(assert (=> bs!1646113 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359240 lambda!359201))))

(assert (=> bs!1646105 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359240 lambda!359215))))

(declare-fun bs!1646114 () Bool)

(assert (= bs!1646114 (and d!2035387 b!6487626)))

(assert (=> bs!1646114 (not (= lambda!359240 lambda!359203))))

(declare-fun bs!1646115 () Bool)

(assert (= bs!1646115 (and d!2035387 d!2035165)))

(assert (=> bs!1646115 (not (= lambda!359240 lambda!359219))))

(assert (=> bs!1646112 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) (Star!16367 (reg!16696 (regOne!33246 r!7292))))) (= lambda!359240 lambda!359212))))

(declare-fun bs!1646116 () Bool)

(assert (= bs!1646116 (and d!2035387 b!6487630)))

(assert (=> bs!1646116 (not (= lambda!359240 lambda!359204))))

(assert (=> bs!1646113 (not (= lambda!359240 lambda!359202))))

(assert (=> bs!1646107 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359240 lambda!359123))))

(assert (=> bs!1646115 (= lambda!359240 lambda!359218)))

(declare-fun bs!1646117 () Bool)

(assert (= bs!1646117 (and d!2035387 d!2035221)))

(assert (=> bs!1646117 (= lambda!359240 lambda!359231)))

(declare-fun bs!1646118 () Bool)

(assert (= bs!1646118 (and d!2035387 b!6487565)))

(assert (=> bs!1646118 (not (= lambda!359240 lambda!359190))))

(assert (=> bs!1646110 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359240 lambda!359118))))

(declare-fun bs!1646119 () Bool)

(assert (= bs!1646119 (and d!2035387 b!6488119)))

(assert (=> bs!1646119 (not (= lambda!359240 lambda!359234))))

(declare-fun bs!1646120 () Bool)

(assert (= bs!1646120 (and d!2035387 d!2035145)))

(assert (=> bs!1646120 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359240 lambda!359214))))

(assert (=> bs!1646108 (not (= lambda!359240 lambda!359122))))

(declare-fun bs!1646121 () Bool)

(assert (= bs!1646121 (and d!2035387 b!6488115)))

(assert (=> bs!1646121 (not (= lambda!359240 lambda!359233))))

(declare-fun bs!1646122 () Bool)

(assert (= bs!1646122 (and d!2035387 d!2035161)))

(assert (=> bs!1646122 (= lambda!359240 lambda!359217)))

(declare-fun bs!1646123 () Bool)

(assert (= bs!1646123 (and d!2035387 b!6487597)))

(assert (=> bs!1646123 (not (= lambda!359240 lambda!359196))))

(assert (=> d!2035387 true))

(assert (=> d!2035387 true))

(assert (=> d!2035387 true))

(declare-fun lambda!359241 () Int)

(assert (=> bs!1646105 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359241 lambda!359216))))

(assert (=> bs!1646106 (not (= lambda!359241 lambda!359195))))

(assert (=> bs!1646107 (not (= lambda!359241 lambda!359124))))

(assert (=> bs!1646108 (not (= lambda!359241 lambda!359121))))

(assert (=> bs!1646109 (not (= lambda!359241 lambda!359189))))

(assert (=> bs!1646110 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359241 lambda!359119))))

(assert (=> bs!1646111 (not (= lambda!359241 lambda!359207))))

(assert (=> bs!1646107 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359241 lambda!359125))))

(assert (=> bs!1646112 (not (= lambda!359241 lambda!359213))))

(assert (=> bs!1646113 (not (= lambda!359241 lambda!359201))))

(assert (=> bs!1646105 (not (= lambda!359241 lambda!359215))))

(assert (=> bs!1646114 (not (= lambda!359241 lambda!359203))))

(assert (=> bs!1646115 (= lambda!359241 lambda!359219)))

(assert (=> bs!1646112 (not (= lambda!359241 lambda!359212))))

(assert (=> bs!1646116 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (regOne!33246 lt!2388865)) (= (regTwo!33246 r!7292) (regTwo!33246 lt!2388865))) (= lambda!359241 lambda!359204))))

(assert (=> bs!1646113 (= (and (= s!2326 (_1!36649 lt!2388900)) (= lt!2388865 (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359241 lambda!359202))))

(assert (=> bs!1646107 (not (= lambda!359241 lambda!359123))))

(assert (=> bs!1646115 (not (= lambda!359241 lambda!359218))))

(assert (=> bs!1646117 (not (= lambda!359241 lambda!359231))))

(assert (=> bs!1646118 (= (and (= lt!2388865 (regOne!33246 lt!2388855)) (= (regTwo!33246 r!7292) (regTwo!33246 lt!2388855))) (= lambda!359241 lambda!359190))))

(assert (=> bs!1646110 (not (= lambda!359241 lambda!359118))))

(assert (=> bs!1646119 (= (and (= lt!2388865 (regOne!33246 (regTwo!33247 r!7292))) (= (regTwo!33246 r!7292) (regTwo!33246 (regTwo!33247 r!7292)))) (= lambda!359241 lambda!359234))))

(assert (=> bs!1646120 (not (= lambda!359241 lambda!359214))))

(assert (=> bs!1646108 (= lambda!359241 lambda!359122)))

(declare-fun bs!1646124 () Bool)

(assert (= bs!1646124 d!2035387))

(assert (=> bs!1646124 (not (= lambda!359241 lambda!359240))))

(assert (=> bs!1646121 (not (= lambda!359241 lambda!359233))))

(assert (=> bs!1646122 (not (= lambda!359241 lambda!359217))))

(assert (=> bs!1646123 (= (= lt!2388865 (regOne!33246 r!7292)) (= lambda!359241 lambda!359196))))

(assert (=> d!2035387 true))

(assert (=> d!2035387 true))

(assert (=> d!2035387 true))

(assert (=> d!2035387 (= (Exists!3437 lambda!359240) (Exists!3437 lambda!359241))))

(assert (=> d!2035387 true))

(declare-fun _$90!2342 () Unit!158799)

(assert (=> d!2035387 (= (choose!48165 lt!2388865 (regTwo!33246 r!7292) s!2326) _$90!2342)))

(declare-fun m!7276690 () Bool)

(assert (=> bs!1646124 m!7276690))

(declare-fun m!7276692 () Bool)

(assert (=> bs!1646124 m!7276692))

(assert (=> d!2035165 d!2035387))

(assert (=> d!2035165 d!2035219))

(declare-fun b!6488195 () Bool)

(declare-fun res!2664713 () Bool)

(declare-fun e!3932187 () Bool)

(assert (=> b!6488195 (=> res!2664713 e!3932187)))

(assert (=> b!6488195 (= res!2664713 (not (isEmpty!37468 (tail!12294 (tail!12294 (_1!36649 lt!2388858))))))))

(declare-fun b!6488197 () Bool)

(declare-fun e!3932192 () Bool)

(assert (=> b!6488197 (= e!3932192 (= (head!13209 (tail!12294 (_1!36649 lt!2388858))) (c!1188383 (derivativeStep!5063 (reg!16696 (regOne!33246 r!7292)) (head!13209 (_1!36649 lt!2388858))))))))

(declare-fun b!6488198 () Bool)

(declare-fun res!2664710 () Bool)

(declare-fun e!3932189 () Bool)

(assert (=> b!6488198 (=> res!2664710 e!3932189)))

(assert (=> b!6488198 (= res!2664710 e!3932192)))

(declare-fun res!2664711 () Bool)

(assert (=> b!6488198 (=> (not res!2664711) (not e!3932192))))

(declare-fun lt!2389159 () Bool)

(assert (=> b!6488198 (= res!2664711 lt!2389159)))

(declare-fun b!6488199 () Bool)

(declare-fun e!3932193 () Bool)

(assert (=> b!6488199 (= e!3932193 e!3932187)))

(declare-fun res!2664716 () Bool)

(assert (=> b!6488199 (=> res!2664716 e!3932187)))

(declare-fun call!561570 () Bool)

(assert (=> b!6488199 (= res!2664716 call!561570)))

(declare-fun b!6488200 () Bool)

(declare-fun res!2664714 () Bool)

(assert (=> b!6488200 (=> res!2664714 e!3932189)))

(assert (=> b!6488200 (= res!2664714 (not ((_ is ElementMatch!16367) (derivativeStep!5063 (reg!16696 (regOne!33246 r!7292)) (head!13209 (_1!36649 lt!2388858))))))))

(declare-fun e!3932188 () Bool)

(assert (=> b!6488200 (= e!3932188 e!3932189)))

(declare-fun bm!561565 () Bool)

(assert (=> bm!561565 (= call!561570 (isEmpty!37468 (tail!12294 (_1!36649 lt!2388858))))))

(declare-fun b!6488201 () Bool)

(assert (=> b!6488201 (= e!3932189 e!3932193)))

(declare-fun res!2664712 () Bool)

(assert (=> b!6488201 (=> (not res!2664712) (not e!3932193))))

(assert (=> b!6488201 (= res!2664712 (not lt!2389159))))

(declare-fun b!6488202 () Bool)

(declare-fun e!3932190 () Bool)

(assert (=> b!6488202 (= e!3932190 e!3932188)))

(declare-fun c!1188797 () Bool)

(assert (=> b!6488202 (= c!1188797 ((_ is EmptyLang!16367) (derivativeStep!5063 (reg!16696 (regOne!33246 r!7292)) (head!13209 (_1!36649 lt!2388858)))))))

(declare-fun b!6488203 () Bool)

(declare-fun res!2664715 () Bool)

(assert (=> b!6488203 (=> (not res!2664715) (not e!3932192))))

(assert (=> b!6488203 (= res!2664715 (isEmpty!37468 (tail!12294 (tail!12294 (_1!36649 lt!2388858)))))))

(declare-fun b!6488204 () Bool)

(declare-fun e!3932191 () Bool)

(assert (=> b!6488204 (= e!3932191 (nullable!6360 (derivativeStep!5063 (reg!16696 (regOne!33246 r!7292)) (head!13209 (_1!36649 lt!2388858)))))))

(declare-fun b!6488205 () Bool)

(assert (=> b!6488205 (= e!3932190 (= lt!2389159 call!561570))))

(declare-fun b!6488206 () Bool)

(declare-fun res!2664709 () Bool)

(assert (=> b!6488206 (=> (not res!2664709) (not e!3932192))))

(assert (=> b!6488206 (= res!2664709 (not call!561570))))

(declare-fun b!6488207 () Bool)

(assert (=> b!6488207 (= e!3932188 (not lt!2389159))))

(declare-fun b!6488208 () Bool)

(assert (=> b!6488208 (= e!3932187 (not (= (head!13209 (tail!12294 (_1!36649 lt!2388858))) (c!1188383 (derivativeStep!5063 (reg!16696 (regOne!33246 r!7292)) (head!13209 (_1!36649 lt!2388858)))))))))

(declare-fun d!2035389 () Bool)

(assert (=> d!2035389 e!3932190))

(declare-fun c!1188796 () Bool)

(assert (=> d!2035389 (= c!1188796 ((_ is EmptyExpr!16367) (derivativeStep!5063 (reg!16696 (regOne!33246 r!7292)) (head!13209 (_1!36649 lt!2388858)))))))

(assert (=> d!2035389 (= lt!2389159 e!3932191)))

(declare-fun c!1188795 () Bool)

(assert (=> d!2035389 (= c!1188795 (isEmpty!37468 (tail!12294 (_1!36649 lt!2388858))))))

(assert (=> d!2035389 (validRegex!8103 (derivativeStep!5063 (reg!16696 (regOne!33246 r!7292)) (head!13209 (_1!36649 lt!2388858))))))

(assert (=> d!2035389 (= (matchR!8550 (derivativeStep!5063 (reg!16696 (regOne!33246 r!7292)) (head!13209 (_1!36649 lt!2388858))) (tail!12294 (_1!36649 lt!2388858))) lt!2389159)))

(declare-fun b!6488196 () Bool)

(assert (=> b!6488196 (= e!3932191 (matchR!8550 (derivativeStep!5063 (derivativeStep!5063 (reg!16696 (regOne!33246 r!7292)) (head!13209 (_1!36649 lt!2388858))) (head!13209 (tail!12294 (_1!36649 lt!2388858)))) (tail!12294 (tail!12294 (_1!36649 lt!2388858)))))))

(assert (= (and d!2035389 c!1188795) b!6488204))

(assert (= (and d!2035389 (not c!1188795)) b!6488196))

(assert (= (and d!2035389 c!1188796) b!6488205))

(assert (= (and d!2035389 (not c!1188796)) b!6488202))

(assert (= (and b!6488202 c!1188797) b!6488207))

(assert (= (and b!6488202 (not c!1188797)) b!6488200))

(assert (= (and b!6488200 (not res!2664714)) b!6488198))

(assert (= (and b!6488198 res!2664711) b!6488206))

(assert (= (and b!6488206 res!2664709) b!6488203))

(assert (= (and b!6488203 res!2664715) b!6488197))

(assert (= (and b!6488198 (not res!2664710)) b!6488201))

(assert (= (and b!6488201 res!2664712) b!6488199))

(assert (= (and b!6488199 (not res!2664716)) b!6488195))

(assert (= (and b!6488195 (not res!2664713)) b!6488208))

(assert (= (or b!6488205 b!6488199 b!6488206) bm!561565))

(assert (=> b!6488195 m!7275814))

(declare-fun m!7276694 () Bool)

(assert (=> b!6488195 m!7276694))

(assert (=> b!6488195 m!7276694))

(declare-fun m!7276696 () Bool)

(assert (=> b!6488195 m!7276696))

(assert (=> b!6488204 m!7275826))

(declare-fun m!7276698 () Bool)

(assert (=> b!6488204 m!7276698))

(assert (=> d!2035389 m!7275814))

(assert (=> d!2035389 m!7275816))

(assert (=> d!2035389 m!7275826))

(declare-fun m!7276700 () Bool)

(assert (=> d!2035389 m!7276700))

(assert (=> b!6488203 m!7275814))

(assert (=> b!6488203 m!7276694))

(assert (=> b!6488203 m!7276694))

(assert (=> b!6488203 m!7276696))

(assert (=> b!6488208 m!7275814))

(declare-fun m!7276702 () Bool)

(assert (=> b!6488208 m!7276702))

(assert (=> b!6488197 m!7275814))

(assert (=> b!6488197 m!7276702))

(assert (=> b!6488196 m!7275814))

(assert (=> b!6488196 m!7276702))

(assert (=> b!6488196 m!7275826))

(assert (=> b!6488196 m!7276702))

(declare-fun m!7276704 () Bool)

(assert (=> b!6488196 m!7276704))

(assert (=> b!6488196 m!7275814))

(assert (=> b!6488196 m!7276694))

(assert (=> b!6488196 m!7276704))

(assert (=> b!6488196 m!7276694))

(declare-fun m!7276706 () Bool)

(assert (=> b!6488196 m!7276706))

(assert (=> bm!561565 m!7275814))

(assert (=> bm!561565 m!7275816))

(assert (=> b!6487383 d!2035389))

(declare-fun b!6488209 () Bool)

(declare-fun c!1188798 () Bool)

(assert (=> b!6488209 (= c!1188798 (nullable!6360 (regOne!33246 (reg!16696 (regOne!33246 r!7292)))))))

(declare-fun e!3932196 () Regex!16367)

(declare-fun e!3932197 () Regex!16367)

(assert (=> b!6488209 (= e!3932196 e!3932197)))

(declare-fun b!6488210 () Bool)

(declare-fun e!3932195 () Regex!16367)

(assert (=> b!6488210 (= e!3932195 e!3932196)))

(declare-fun c!1188802 () Bool)

(assert (=> b!6488210 (= c!1188802 ((_ is Star!16367) (reg!16696 (regOne!33246 r!7292))))))

(declare-fun bm!561567 () Bool)

(declare-fun c!1188799 () Bool)

(declare-fun call!561572 () Regex!16367)

(assert (=> bm!561567 (= call!561572 (derivativeStep!5063 (ite c!1188799 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188798 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292))))) (head!13209 (_1!36649 lt!2388858))))))

(declare-fun b!6488211 () Bool)

(declare-fun call!561571 () Regex!16367)

(assert (=> b!6488211 (= e!3932196 (Concat!25212 call!561571 (reg!16696 (regOne!33246 r!7292))))))

(declare-fun b!6488212 () Bool)

(declare-fun e!3932194 () Regex!16367)

(assert (=> b!6488212 (= e!3932194 EmptyLang!16367)))

(declare-fun b!6488213 () Bool)

(declare-fun e!3932198 () Regex!16367)

(assert (=> b!6488213 (= e!3932198 (ite (= (head!13209 (_1!36649 lt!2388858)) (c!1188383 (reg!16696 (regOne!33246 r!7292)))) EmptyExpr!16367 EmptyLang!16367))))

(declare-fun bm!561568 () Bool)

(declare-fun call!561574 () Regex!16367)

(assert (=> bm!561568 (= call!561571 call!561574)))

(declare-fun b!6488214 () Bool)

(assert (=> b!6488214 (= e!3932194 e!3932198)))

(declare-fun c!1188801 () Bool)

(assert (=> b!6488214 (= c!1188801 ((_ is ElementMatch!16367) (reg!16696 (regOne!33246 r!7292))))))

(declare-fun call!561573 () Regex!16367)

(declare-fun b!6488215 () Bool)

(assert (=> b!6488215 (= e!3932197 (Union!16367 (Concat!25212 call!561571 (regTwo!33246 (reg!16696 (regOne!33246 r!7292)))) call!561573))))

(declare-fun b!6488216 () Bool)

(assert (=> b!6488216 (= e!3932197 (Union!16367 (Concat!25212 call!561573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292)))) EmptyLang!16367))))

(declare-fun b!6488217 () Bool)

(assert (=> b!6488217 (= c!1188799 ((_ is Union!16367) (reg!16696 (regOne!33246 r!7292))))))

(assert (=> b!6488217 (= e!3932198 e!3932195)))

(declare-fun d!2035391 () Bool)

(declare-fun lt!2389160 () Regex!16367)

(assert (=> d!2035391 (validRegex!8103 lt!2389160)))

(assert (=> d!2035391 (= lt!2389160 e!3932194)))

(declare-fun c!1188800 () Bool)

(assert (=> d!2035391 (= c!1188800 (or ((_ is EmptyExpr!16367) (reg!16696 (regOne!33246 r!7292))) ((_ is EmptyLang!16367) (reg!16696 (regOne!33246 r!7292)))))))

(assert (=> d!2035391 (validRegex!8103 (reg!16696 (regOne!33246 r!7292)))))

(assert (=> d!2035391 (= (derivativeStep!5063 (reg!16696 (regOne!33246 r!7292)) (head!13209 (_1!36649 lt!2388858))) lt!2389160)))

(declare-fun bm!561566 () Bool)

(assert (=> bm!561566 (= call!561574 (derivativeStep!5063 (ite c!1188799 (regTwo!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188802 (reg!16696 (reg!16696 (regOne!33246 r!7292))) (regOne!33246 (reg!16696 (regOne!33246 r!7292))))) (head!13209 (_1!36649 lt!2388858))))))

(declare-fun b!6488218 () Bool)

(assert (=> b!6488218 (= e!3932195 (Union!16367 call!561572 call!561574))))

(declare-fun bm!561569 () Bool)

(assert (=> bm!561569 (= call!561573 call!561572)))

(assert (= (and d!2035391 c!1188800) b!6488212))

(assert (= (and d!2035391 (not c!1188800)) b!6488214))

(assert (= (and b!6488214 c!1188801) b!6488213))

(assert (= (and b!6488214 (not c!1188801)) b!6488217))

(assert (= (and b!6488217 c!1188799) b!6488218))

(assert (= (and b!6488217 (not c!1188799)) b!6488210))

(assert (= (and b!6488210 c!1188802) b!6488211))

(assert (= (and b!6488210 (not c!1188802)) b!6488209))

(assert (= (and b!6488209 c!1188798) b!6488215))

(assert (= (and b!6488209 (not c!1188798)) b!6488216))

(assert (= (or b!6488215 b!6488216) bm!561569))

(assert (= (or b!6488211 b!6488215) bm!561568))

(assert (= (or b!6488218 bm!561568) bm!561566))

(assert (= (or b!6488218 bm!561569) bm!561567))

(assert (=> b!6488209 m!7275792))

(assert (=> bm!561567 m!7275824))

(declare-fun m!7276708 () Bool)

(assert (=> bm!561567 m!7276708))

(declare-fun m!7276710 () Bool)

(assert (=> d!2035391 m!7276710))

(assert (=> d!2035391 m!7275822))

(assert (=> bm!561566 m!7275824))

(declare-fun m!7276712 () Bool)

(assert (=> bm!561566 m!7276712))

(assert (=> b!6487383 d!2035391))

(declare-fun d!2035393 () Bool)

(assert (=> d!2035393 (= (head!13209 (_1!36649 lt!2388858)) (h!71724 (_1!36649 lt!2388858)))))

(assert (=> b!6487383 d!2035393))

(assert (=> b!6487383 d!2035285))

(declare-fun b!6488219 () Bool)

(declare-fun res!2664721 () Bool)

(declare-fun e!3932199 () Bool)

(assert (=> b!6488219 (=> res!2664721 e!3932199)))

(assert (=> b!6488219 (= res!2664721 (not (isEmpty!37468 (tail!12294 (tail!12294 lt!2388889)))))))

(declare-fun b!6488221 () Bool)

(declare-fun e!3932204 () Bool)

(assert (=> b!6488221 (= e!3932204 (= (head!13209 (tail!12294 lt!2388889)) (c!1188383 (derivativeStep!5063 lt!2388865 (head!13209 lt!2388889)))))))

(declare-fun b!6488222 () Bool)

(declare-fun res!2664718 () Bool)

(declare-fun e!3932201 () Bool)

(assert (=> b!6488222 (=> res!2664718 e!3932201)))

(assert (=> b!6488222 (= res!2664718 e!3932204)))

(declare-fun res!2664719 () Bool)

(assert (=> b!6488222 (=> (not res!2664719) (not e!3932204))))

(declare-fun lt!2389161 () Bool)

(assert (=> b!6488222 (= res!2664719 lt!2389161)))

(declare-fun b!6488223 () Bool)

(declare-fun e!3932205 () Bool)

(assert (=> b!6488223 (= e!3932205 e!3932199)))

(declare-fun res!2664724 () Bool)

(assert (=> b!6488223 (=> res!2664724 e!3932199)))

(declare-fun call!561575 () Bool)

(assert (=> b!6488223 (= res!2664724 call!561575)))

(declare-fun b!6488224 () Bool)

(declare-fun res!2664722 () Bool)

(assert (=> b!6488224 (=> res!2664722 e!3932201)))

(assert (=> b!6488224 (= res!2664722 (not ((_ is ElementMatch!16367) (derivativeStep!5063 lt!2388865 (head!13209 lt!2388889)))))))

(declare-fun e!3932200 () Bool)

(assert (=> b!6488224 (= e!3932200 e!3932201)))

(declare-fun bm!561570 () Bool)

(assert (=> bm!561570 (= call!561575 (isEmpty!37468 (tail!12294 lt!2388889)))))

(declare-fun b!6488225 () Bool)

(assert (=> b!6488225 (= e!3932201 e!3932205)))

(declare-fun res!2664720 () Bool)

(assert (=> b!6488225 (=> (not res!2664720) (not e!3932205))))

(assert (=> b!6488225 (= res!2664720 (not lt!2389161))))

(declare-fun b!6488226 () Bool)

(declare-fun e!3932202 () Bool)

(assert (=> b!6488226 (= e!3932202 e!3932200)))

(declare-fun c!1188805 () Bool)

(assert (=> b!6488226 (= c!1188805 ((_ is EmptyLang!16367) (derivativeStep!5063 lt!2388865 (head!13209 lt!2388889))))))

(declare-fun b!6488227 () Bool)

(declare-fun res!2664723 () Bool)

(assert (=> b!6488227 (=> (not res!2664723) (not e!3932204))))

(assert (=> b!6488227 (= res!2664723 (isEmpty!37468 (tail!12294 (tail!12294 lt!2388889))))))

(declare-fun b!6488228 () Bool)

(declare-fun e!3932203 () Bool)

(assert (=> b!6488228 (= e!3932203 (nullable!6360 (derivativeStep!5063 lt!2388865 (head!13209 lt!2388889))))))

(declare-fun b!6488229 () Bool)

(assert (=> b!6488229 (= e!3932202 (= lt!2389161 call!561575))))

(declare-fun b!6488230 () Bool)

(declare-fun res!2664717 () Bool)

(assert (=> b!6488230 (=> (not res!2664717) (not e!3932204))))

(assert (=> b!6488230 (= res!2664717 (not call!561575))))

(declare-fun b!6488231 () Bool)

(assert (=> b!6488231 (= e!3932200 (not lt!2389161))))

(declare-fun b!6488232 () Bool)

(assert (=> b!6488232 (= e!3932199 (not (= (head!13209 (tail!12294 lt!2388889)) (c!1188383 (derivativeStep!5063 lt!2388865 (head!13209 lt!2388889))))))))

(declare-fun d!2035395 () Bool)

(assert (=> d!2035395 e!3932202))

(declare-fun c!1188804 () Bool)

(assert (=> d!2035395 (= c!1188804 ((_ is EmptyExpr!16367) (derivativeStep!5063 lt!2388865 (head!13209 lt!2388889))))))

(assert (=> d!2035395 (= lt!2389161 e!3932203)))

(declare-fun c!1188803 () Bool)

(assert (=> d!2035395 (= c!1188803 (isEmpty!37468 (tail!12294 lt!2388889)))))

(assert (=> d!2035395 (validRegex!8103 (derivativeStep!5063 lt!2388865 (head!13209 lt!2388889)))))

(assert (=> d!2035395 (= (matchR!8550 (derivativeStep!5063 lt!2388865 (head!13209 lt!2388889)) (tail!12294 lt!2388889)) lt!2389161)))

(declare-fun b!6488220 () Bool)

(assert (=> b!6488220 (= e!3932203 (matchR!8550 (derivativeStep!5063 (derivativeStep!5063 lt!2388865 (head!13209 lt!2388889)) (head!13209 (tail!12294 lt!2388889))) (tail!12294 (tail!12294 lt!2388889))))))

(assert (= (and d!2035395 c!1188803) b!6488228))

(assert (= (and d!2035395 (not c!1188803)) b!6488220))

(assert (= (and d!2035395 c!1188804) b!6488229))

(assert (= (and d!2035395 (not c!1188804)) b!6488226))

(assert (= (and b!6488226 c!1188805) b!6488231))

(assert (= (and b!6488226 (not c!1188805)) b!6488224))

(assert (= (and b!6488224 (not res!2664722)) b!6488222))

(assert (= (and b!6488222 res!2664719) b!6488230))

(assert (= (and b!6488230 res!2664717) b!6488227))

(assert (= (and b!6488227 res!2664723) b!6488221))

(assert (= (and b!6488222 (not res!2664718)) b!6488225))

(assert (= (and b!6488225 res!2664720) b!6488223))

(assert (= (and b!6488223 (not res!2664724)) b!6488219))

(assert (= (and b!6488219 (not res!2664721)) b!6488232))

(assert (= (or b!6488229 b!6488223 b!6488230) bm!561570))

(assert (=> b!6488219 m!7275956))

(declare-fun m!7276714 () Bool)

(assert (=> b!6488219 m!7276714))

(assert (=> b!6488219 m!7276714))

(declare-fun m!7276716 () Bool)

(assert (=> b!6488219 m!7276716))

(assert (=> b!6488228 m!7275964))

(declare-fun m!7276718 () Bool)

(assert (=> b!6488228 m!7276718))

(assert (=> d!2035395 m!7275956))

(assert (=> d!2035395 m!7275958))

(assert (=> d!2035395 m!7275964))

(declare-fun m!7276720 () Bool)

(assert (=> d!2035395 m!7276720))

(assert (=> b!6488227 m!7275956))

(assert (=> b!6488227 m!7276714))

(assert (=> b!6488227 m!7276714))

(assert (=> b!6488227 m!7276716))

(assert (=> b!6488232 m!7275956))

(declare-fun m!7276722 () Bool)

(assert (=> b!6488232 m!7276722))

(assert (=> b!6488221 m!7275956))

(assert (=> b!6488221 m!7276722))

(assert (=> b!6488220 m!7275956))

(assert (=> b!6488220 m!7276722))

(assert (=> b!6488220 m!7275964))

(assert (=> b!6488220 m!7276722))

(declare-fun m!7276724 () Bool)

(assert (=> b!6488220 m!7276724))

(assert (=> b!6488220 m!7275956))

(assert (=> b!6488220 m!7276714))

(assert (=> b!6488220 m!7276724))

(assert (=> b!6488220 m!7276714))

(declare-fun m!7276726 () Bool)

(assert (=> b!6488220 m!7276726))

(assert (=> bm!561570 m!7275956))

(assert (=> bm!561570 m!7275958))

(assert (=> b!6487486 d!2035395))

(declare-fun b!6488233 () Bool)

(declare-fun c!1188806 () Bool)

(assert (=> b!6488233 (= c!1188806 (nullable!6360 (regOne!33246 lt!2388865)))))

(declare-fun e!3932208 () Regex!16367)

(declare-fun e!3932209 () Regex!16367)

(assert (=> b!6488233 (= e!3932208 e!3932209)))

(declare-fun b!6488234 () Bool)

(declare-fun e!3932207 () Regex!16367)

(assert (=> b!6488234 (= e!3932207 e!3932208)))

(declare-fun c!1188810 () Bool)

(assert (=> b!6488234 (= c!1188810 ((_ is Star!16367) lt!2388865))))

(declare-fun c!1188807 () Bool)

(declare-fun call!561577 () Regex!16367)

(declare-fun bm!561572 () Bool)

(assert (=> bm!561572 (= call!561577 (derivativeStep!5063 (ite c!1188807 (regOne!33247 lt!2388865) (ite c!1188806 (regTwo!33246 lt!2388865) (regOne!33246 lt!2388865))) (head!13209 lt!2388889)))))

(declare-fun b!6488235 () Bool)

(declare-fun call!561576 () Regex!16367)

(assert (=> b!6488235 (= e!3932208 (Concat!25212 call!561576 lt!2388865))))

(declare-fun b!6488236 () Bool)

(declare-fun e!3932206 () Regex!16367)

(assert (=> b!6488236 (= e!3932206 EmptyLang!16367)))

(declare-fun b!6488237 () Bool)

(declare-fun e!3932210 () Regex!16367)

(assert (=> b!6488237 (= e!3932210 (ite (= (head!13209 lt!2388889) (c!1188383 lt!2388865)) EmptyExpr!16367 EmptyLang!16367))))

(declare-fun bm!561573 () Bool)

(declare-fun call!561579 () Regex!16367)

(assert (=> bm!561573 (= call!561576 call!561579)))

(declare-fun b!6488238 () Bool)

(assert (=> b!6488238 (= e!3932206 e!3932210)))

(declare-fun c!1188809 () Bool)

(assert (=> b!6488238 (= c!1188809 ((_ is ElementMatch!16367) lt!2388865))))

(declare-fun call!561578 () Regex!16367)

(declare-fun b!6488239 () Bool)

(assert (=> b!6488239 (= e!3932209 (Union!16367 (Concat!25212 call!561576 (regTwo!33246 lt!2388865)) call!561578))))

(declare-fun b!6488240 () Bool)

(assert (=> b!6488240 (= e!3932209 (Union!16367 (Concat!25212 call!561578 (regTwo!33246 lt!2388865)) EmptyLang!16367))))

(declare-fun b!6488241 () Bool)

(assert (=> b!6488241 (= c!1188807 ((_ is Union!16367) lt!2388865))))

(assert (=> b!6488241 (= e!3932210 e!3932207)))

(declare-fun d!2035397 () Bool)

(declare-fun lt!2389162 () Regex!16367)

(assert (=> d!2035397 (validRegex!8103 lt!2389162)))

(assert (=> d!2035397 (= lt!2389162 e!3932206)))

(declare-fun c!1188808 () Bool)

(assert (=> d!2035397 (= c!1188808 (or ((_ is EmptyExpr!16367) lt!2388865) ((_ is EmptyLang!16367) lt!2388865)))))

(assert (=> d!2035397 (validRegex!8103 lt!2388865)))

(assert (=> d!2035397 (= (derivativeStep!5063 lt!2388865 (head!13209 lt!2388889)) lt!2389162)))

(declare-fun bm!561571 () Bool)

(assert (=> bm!561571 (= call!561579 (derivativeStep!5063 (ite c!1188807 (regTwo!33247 lt!2388865) (ite c!1188810 (reg!16696 lt!2388865) (regOne!33246 lt!2388865))) (head!13209 lt!2388889)))))

(declare-fun b!6488242 () Bool)

(assert (=> b!6488242 (= e!3932207 (Union!16367 call!561577 call!561579))))

(declare-fun bm!561574 () Bool)

(assert (=> bm!561574 (= call!561578 call!561577)))

(assert (= (and d!2035397 c!1188808) b!6488236))

(assert (= (and d!2035397 (not c!1188808)) b!6488238))

(assert (= (and b!6488238 c!1188809) b!6488237))

(assert (= (and b!6488238 (not c!1188809)) b!6488241))

(assert (= (and b!6488241 c!1188807) b!6488242))

(assert (= (and b!6488241 (not c!1188807)) b!6488234))

(assert (= (and b!6488234 c!1188810) b!6488235))

(assert (= (and b!6488234 (not c!1188810)) b!6488233))

(assert (= (and b!6488233 c!1188806) b!6488239))

(assert (= (and b!6488233 (not c!1188806)) b!6488240))

(assert (= (or b!6488239 b!6488240) bm!561574))

(assert (= (or b!6488235 b!6488239) bm!561573))

(assert (= (or b!6488242 bm!561573) bm!561571))

(assert (= (or b!6488242 bm!561574) bm!561572))

(declare-fun m!7276728 () Bool)

(assert (=> b!6488233 m!7276728))

(assert (=> bm!561572 m!7275962))

(declare-fun m!7276730 () Bool)

(assert (=> bm!561572 m!7276730))

(declare-fun m!7276732 () Bool)

(assert (=> d!2035397 m!7276732))

(assert (=> d!2035397 m!7275850))

(assert (=> bm!561571 m!7275962))

(declare-fun m!7276734 () Bool)

(assert (=> bm!561571 m!7276734))

(assert (=> b!6487486 d!2035397))

(declare-fun d!2035399 () Bool)

(assert (=> d!2035399 (= (head!13209 lt!2388889) (h!71724 lt!2388889))))

(assert (=> b!6487486 d!2035399))

(assert (=> b!6487486 d!2035289))

(assert (=> d!2035013 d!2035015))

(declare-fun d!2035401 () Bool)

(assert (=> d!2035401 (= (flatMap!1872 lt!2388878 lambda!359120) (dynLambda!25927 lambda!359120 lt!2388895))))

(assert (=> d!2035401 true))

(declare-fun _$13!3707 () Unit!158799)

(assert (=> d!2035401 (= (choose!48154 lt!2388878 lt!2388895 lambda!359120) _$13!3707)))

(declare-fun b_lambda!245635 () Bool)

(assert (=> (not b_lambda!245635) (not d!2035401)))

(declare-fun bs!1646125 () Bool)

(assert (= bs!1646125 d!2035401))

(assert (=> bs!1646125 m!7275058))

(assert (=> bs!1646125 m!7275754))

(assert (=> d!2035013 d!2035401))

(declare-fun d!2035403 () Bool)

(assert (=> d!2035403 (= (nullable!6360 lt!2388865) (nullableFct!2298 lt!2388865))))

(declare-fun bs!1646126 () Bool)

(assert (= bs!1646126 d!2035403))

(declare-fun m!7276736 () Bool)

(assert (=> bs!1646126 m!7276736))

(assert (=> b!6487785 d!2035403))

(declare-fun b!6488243 () Bool)

(declare-fun res!2664729 () Bool)

(declare-fun e!3932211 () Bool)

(assert (=> b!6488243 (=> res!2664729 e!3932211)))

(assert (=> b!6488243 (= res!2664729 (not (isEmpty!37468 (tail!12294 (_2!36649 (get!22634 lt!2389101))))))))

(declare-fun b!6488245 () Bool)

(declare-fun e!3932216 () Bool)

(assert (=> b!6488245 (= e!3932216 (= (head!13209 (_2!36649 (get!22634 lt!2389101))) (c!1188383 (regTwo!33246 r!7292))))))

(declare-fun b!6488246 () Bool)

(declare-fun res!2664726 () Bool)

(declare-fun e!3932213 () Bool)

(assert (=> b!6488246 (=> res!2664726 e!3932213)))

(assert (=> b!6488246 (= res!2664726 e!3932216)))

(declare-fun res!2664727 () Bool)

(assert (=> b!6488246 (=> (not res!2664727) (not e!3932216))))

(declare-fun lt!2389163 () Bool)

(assert (=> b!6488246 (= res!2664727 lt!2389163)))

(declare-fun b!6488247 () Bool)

(declare-fun e!3932217 () Bool)

(assert (=> b!6488247 (= e!3932217 e!3932211)))

(declare-fun res!2664732 () Bool)

(assert (=> b!6488247 (=> res!2664732 e!3932211)))

(declare-fun call!561580 () Bool)

(assert (=> b!6488247 (= res!2664732 call!561580)))

(declare-fun b!6488248 () Bool)

(declare-fun res!2664730 () Bool)

(assert (=> b!6488248 (=> res!2664730 e!3932213)))

(assert (=> b!6488248 (= res!2664730 (not ((_ is ElementMatch!16367) (regTwo!33246 r!7292))))))

(declare-fun e!3932212 () Bool)

(assert (=> b!6488248 (= e!3932212 e!3932213)))

(declare-fun bm!561575 () Bool)

(assert (=> bm!561575 (= call!561580 (isEmpty!37468 (_2!36649 (get!22634 lt!2389101))))))

(declare-fun b!6488249 () Bool)

(assert (=> b!6488249 (= e!3932213 e!3932217)))

(declare-fun res!2664728 () Bool)

(assert (=> b!6488249 (=> (not res!2664728) (not e!3932217))))

(assert (=> b!6488249 (= res!2664728 (not lt!2389163))))

(declare-fun b!6488250 () Bool)

(declare-fun e!3932214 () Bool)

(assert (=> b!6488250 (= e!3932214 e!3932212)))

(declare-fun c!1188813 () Bool)

(assert (=> b!6488250 (= c!1188813 ((_ is EmptyLang!16367) (regTwo!33246 r!7292)))))

(declare-fun b!6488251 () Bool)

(declare-fun res!2664731 () Bool)

(assert (=> b!6488251 (=> (not res!2664731) (not e!3932216))))

(assert (=> b!6488251 (= res!2664731 (isEmpty!37468 (tail!12294 (_2!36649 (get!22634 lt!2389101)))))))

(declare-fun b!6488252 () Bool)

(declare-fun e!3932215 () Bool)

(assert (=> b!6488252 (= e!3932215 (nullable!6360 (regTwo!33246 r!7292)))))

(declare-fun b!6488253 () Bool)

(assert (=> b!6488253 (= e!3932214 (= lt!2389163 call!561580))))

(declare-fun b!6488254 () Bool)

(declare-fun res!2664725 () Bool)

(assert (=> b!6488254 (=> (not res!2664725) (not e!3932216))))

(assert (=> b!6488254 (= res!2664725 (not call!561580))))

(declare-fun b!6488255 () Bool)

(assert (=> b!6488255 (= e!3932212 (not lt!2389163))))

(declare-fun b!6488256 () Bool)

(assert (=> b!6488256 (= e!3932211 (not (= (head!13209 (_2!36649 (get!22634 lt!2389101))) (c!1188383 (regTwo!33246 r!7292)))))))

(declare-fun d!2035405 () Bool)

(assert (=> d!2035405 e!3932214))

(declare-fun c!1188812 () Bool)

(assert (=> d!2035405 (= c!1188812 ((_ is EmptyExpr!16367) (regTwo!33246 r!7292)))))

(assert (=> d!2035405 (= lt!2389163 e!3932215)))

(declare-fun c!1188811 () Bool)

(assert (=> d!2035405 (= c!1188811 (isEmpty!37468 (_2!36649 (get!22634 lt!2389101))))))

(assert (=> d!2035405 (validRegex!8103 (regTwo!33246 r!7292))))

(assert (=> d!2035405 (= (matchR!8550 (regTwo!33246 r!7292) (_2!36649 (get!22634 lt!2389101))) lt!2389163)))

(declare-fun b!6488244 () Bool)

(assert (=> b!6488244 (= e!3932215 (matchR!8550 (derivativeStep!5063 (regTwo!33246 r!7292) (head!13209 (_2!36649 (get!22634 lt!2389101)))) (tail!12294 (_2!36649 (get!22634 lt!2389101)))))))

(assert (= (and d!2035405 c!1188811) b!6488252))

(assert (= (and d!2035405 (not c!1188811)) b!6488244))

(assert (= (and d!2035405 c!1188812) b!6488253))

(assert (= (and d!2035405 (not c!1188812)) b!6488250))

(assert (= (and b!6488250 c!1188813) b!6488255))

(assert (= (and b!6488250 (not c!1188813)) b!6488248))

(assert (= (and b!6488248 (not res!2664730)) b!6488246))

(assert (= (and b!6488246 res!2664727) b!6488254))

(assert (= (and b!6488254 res!2664725) b!6488251))

(assert (= (and b!6488251 res!2664731) b!6488245))

(assert (= (and b!6488246 (not res!2664726)) b!6488249))

(assert (= (and b!6488249 res!2664728) b!6488247))

(assert (= (and b!6488247 (not res!2664732)) b!6488243))

(assert (= (and b!6488243 (not res!2664729)) b!6488256))

(assert (= (or b!6488253 b!6488247 b!6488254) bm!561575))

(declare-fun m!7276738 () Bool)

(assert (=> b!6488243 m!7276738))

(assert (=> b!6488243 m!7276738))

(declare-fun m!7276740 () Bool)

(assert (=> b!6488243 m!7276740))

(assert (=> b!6488252 m!7275874))

(declare-fun m!7276742 () Bool)

(assert (=> d!2035405 m!7276742))

(assert (=> d!2035405 m!7275878))

(assert (=> b!6488251 m!7276738))

(assert (=> b!6488251 m!7276738))

(assert (=> b!6488251 m!7276740))

(declare-fun m!7276744 () Bool)

(assert (=> b!6488256 m!7276744))

(assert (=> b!6488245 m!7276744))

(assert (=> b!6488244 m!7276744))

(assert (=> b!6488244 m!7276744))

(declare-fun m!7276746 () Bool)

(assert (=> b!6488244 m!7276746))

(assert (=> b!6488244 m!7276738))

(assert (=> b!6488244 m!7276746))

(assert (=> b!6488244 m!7276738))

(declare-fun m!7276748 () Bool)

(assert (=> b!6488244 m!7276748))

(assert (=> bm!561575 m!7276742))

(assert (=> b!6487681 d!2035405))

(declare-fun d!2035407 () Bool)

(assert (=> d!2035407 (= (get!22634 lt!2389101) (v!52436 lt!2389101))))

(assert (=> b!6487681 d!2035407))

(declare-fun d!2035409 () Bool)

(assert (=> d!2035409 (= (isEmpty!37470 (exprs!6251 (h!71726 zl!343))) ((_ is Nil!65277) (exprs!6251 (h!71726 zl!343))))))

(assert (=> b!6487728 d!2035409))

(declare-fun d!2035411 () Bool)

(assert (=> d!2035411 (= (nullable!6360 r!7292) (nullableFct!2298 r!7292))))

(declare-fun bs!1646127 () Bool)

(assert (= bs!1646127 d!2035411))

(declare-fun m!7276750 () Bool)

(assert (=> bs!1646127 m!7276750))

(assert (=> b!6487612 d!2035411))

(declare-fun b!6488257 () Bool)

(declare-fun e!3932218 () (InoxSet Context!11502))

(declare-fun call!561585 () (InoxSet Context!11502))

(declare-fun call!561584 () (InoxSet Context!11502))

(assert (=> b!6488257 (= e!3932218 ((_ map or) call!561585 call!561584))))

(declare-fun b!6488258 () Bool)

(declare-fun e!3932222 () (InoxSet Context!11502))

(declare-fun call!561582 () (InoxSet Context!11502))

(assert (=> b!6488258 (= e!3932222 ((_ map or) call!561584 call!561582))))

(declare-fun bm!561576 () Bool)

(declare-fun call!561583 () (InoxSet Context!11502))

(assert (=> bm!561576 (= call!561583 call!561582)))

(declare-fun b!6488259 () Bool)

(declare-fun e!3932223 () (InoxSet Context!11502))

(assert (=> b!6488259 (= e!3932222 e!3932223)))

(declare-fun c!1188814 () Bool)

(assert (=> b!6488259 (= c!1188814 ((_ is Concat!25212) (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292))))))))))

(declare-fun e!3932221 () (InoxSet Context!11502))

(declare-fun b!6488260 () Bool)

(assert (=> b!6488260 (= e!3932221 (store ((as const (Array Context!11502 Bool)) false) (ite (or c!1188570 c!1188573) lt!2388862 (Context!11503 call!561473)) true))))

(declare-fun b!6488261 () Bool)

(declare-fun e!3932220 () Bool)

(assert (=> b!6488261 (= e!3932220 (nullable!6360 (regOne!33246 (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292)))))))))))

(declare-fun bm!561577 () Bool)

(declare-fun c!1188815 () Bool)

(declare-fun call!561581 () List!65401)

(assert (=> bm!561577 (= call!561584 (derivationStepZipperDown!1615 (ite c!1188815 (regTwo!33247 (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292))))))) (regOne!33246 (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292)))))))) (ite c!1188815 (ite (or c!1188570 c!1188573) lt!2388862 (Context!11503 call!561473)) (Context!11503 call!561581)) (h!71724 s!2326)))))

(declare-fun c!1188818 () Bool)

(declare-fun bm!561578 () Bool)

(declare-fun call!561586 () List!65401)

(assert (=> bm!561578 (= call!561585 (derivationStepZipperDown!1615 (ite c!1188815 (regOne!33247 (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292))))))) (ite c!1188818 (regTwo!33246 (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292))))))) (ite c!1188814 (regOne!33246 (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292))))))) (reg!16696 (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292)))))))))) (ite (or c!1188815 c!1188818) (ite (or c!1188570 c!1188573) lt!2388862 (Context!11503 call!561473)) (Context!11503 call!561586)) (h!71724 s!2326)))))

(declare-fun bm!561579 () Bool)

(assert (=> bm!561579 (= call!561586 call!561581)))

(declare-fun b!6488262 () Bool)

(declare-fun e!3932219 () (InoxSet Context!11502))

(assert (=> b!6488262 (= e!3932219 call!561583)))

(declare-fun b!6488263 () Bool)

(assert (=> b!6488263 (= e!3932223 call!561583)))

(declare-fun b!6488264 () Bool)

(assert (=> b!6488264 (= e!3932219 ((as const (Array Context!11502 Bool)) false))))

(declare-fun bm!561580 () Bool)

(assert (=> bm!561580 (= call!561581 ($colon$colon!2219 (exprs!6251 (ite (or c!1188570 c!1188573) lt!2388862 (Context!11503 call!561473))) (ite (or c!1188818 c!1188814) (regTwo!33246 (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292))))))) (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292)))))))))))

(declare-fun b!6488265 () Bool)

(assert (=> b!6488265 (= c!1188818 e!3932220)))

(declare-fun res!2664733 () Bool)

(assert (=> b!6488265 (=> (not res!2664733) (not e!3932220))))

(assert (=> b!6488265 (= res!2664733 ((_ is Concat!25212) (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292))))))))))

(assert (=> b!6488265 (= e!3932218 e!3932222)))

(declare-fun c!1188816 () Bool)

(declare-fun b!6488266 () Bool)

(assert (=> b!6488266 (= c!1188816 ((_ is Star!16367) (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292))))))))))

(assert (=> b!6488266 (= e!3932223 e!3932219)))

(declare-fun bm!561581 () Bool)

(assert (=> bm!561581 (= call!561582 call!561585)))

(declare-fun b!6488267 () Bool)

(assert (=> b!6488267 (= e!3932221 e!3932218)))

(assert (=> b!6488267 (= c!1188815 ((_ is Union!16367) (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292))))))))))

(declare-fun c!1188817 () Bool)

(declare-fun d!2035413 () Bool)

(assert (=> d!2035413 (= c!1188817 (and ((_ is ElementMatch!16367) (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292))))))) (= (c!1188383 (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292))))))) (h!71724 s!2326))))))

(assert (=> d!2035413 (= (derivationStepZipperDown!1615 (ite c!1188570 (regOne!33247 (reg!16696 (regOne!33246 r!7292))) (ite c!1188573 (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (ite c!1188569 (regOne!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (reg!16696 (regOne!33246 r!7292)))))) (ite (or c!1188570 c!1188573) lt!2388862 (Context!11503 call!561473)) (h!71724 s!2326)) e!3932221)))

(assert (= (and d!2035413 c!1188817) b!6488260))

(assert (= (and d!2035413 (not c!1188817)) b!6488267))

(assert (= (and b!6488267 c!1188815) b!6488257))

(assert (= (and b!6488267 (not c!1188815)) b!6488265))

(assert (= (and b!6488265 res!2664733) b!6488261))

(assert (= (and b!6488265 c!1188818) b!6488258))

(assert (= (and b!6488265 (not c!1188818)) b!6488259))

(assert (= (and b!6488259 c!1188814) b!6488263))

(assert (= (and b!6488259 (not c!1188814)) b!6488266))

(assert (= (and b!6488266 c!1188816) b!6488262))

(assert (= (and b!6488266 (not c!1188816)) b!6488264))

(assert (= (or b!6488263 b!6488262) bm!561579))

(assert (= (or b!6488263 b!6488262) bm!561576))

(assert (= (or b!6488258 bm!561579) bm!561580))

(assert (= (or b!6488258 bm!561576) bm!561581))

(assert (= (or b!6488257 b!6488258) bm!561577))

(assert (= (or b!6488257 bm!561581) bm!561578))

(declare-fun m!7276752 () Bool)

(assert (=> bm!561580 m!7276752))

(declare-fun m!7276754 () Bool)

(assert (=> bm!561577 m!7276754))

(declare-fun m!7276756 () Bool)

(assert (=> b!6488261 m!7276756))

(declare-fun m!7276758 () Bool)

(assert (=> b!6488260 m!7276758))

(declare-fun m!7276760 () Bool)

(assert (=> bm!561578 m!7276760))

(assert (=> bm!561465 d!2035413))

(declare-fun d!2035415 () Bool)

(assert (=> d!2035415 (= (isEmpty!37468 (_1!36649 lt!2388858)) ((_ is Nil!65276) (_1!36649 lt!2388858)))))

(assert (=> d!2035067 d!2035415))

(declare-fun d!2035417 () Bool)

(assert (=> d!2035417 (= (isEmpty!37468 (tail!12294 (_2!36649 lt!2388858))) ((_ is Nil!65276) (tail!12294 (_2!36649 lt!2388858))))))

(assert (=> b!6487434 d!2035417))

(declare-fun d!2035419 () Bool)

(assert (=> d!2035419 (= (tail!12294 (_2!36649 lt!2388858)) (t!379026 (_2!36649 lt!2388858)))))

(assert (=> b!6487434 d!2035419))

(declare-fun d!2035421 () Bool)

(declare-fun res!2664734 () Bool)

(declare-fun e!3932224 () Bool)

(assert (=> d!2035421 (=> res!2664734 e!3932224)))

(assert (=> d!2035421 (= res!2664734 ((_ is Nil!65277) lt!2389121))))

(assert (=> d!2035421 (= (forall!15550 lt!2389121 lambda!359228) e!3932224)))

(declare-fun b!6488268 () Bool)

(declare-fun e!3932225 () Bool)

(assert (=> b!6488268 (= e!3932224 e!3932225)))

(declare-fun res!2664735 () Bool)

(assert (=> b!6488268 (=> (not res!2664735) (not e!3932225))))

(assert (=> b!6488268 (= res!2664735 (dynLambda!25928 lambda!359228 (h!71725 lt!2389121)))))

(declare-fun b!6488269 () Bool)

(assert (=> b!6488269 (= e!3932225 (forall!15550 (t!379027 lt!2389121) lambda!359228))))

(assert (= (and d!2035421 (not res!2664734)) b!6488268))

(assert (= (and b!6488268 res!2664735) b!6488269))

(declare-fun b_lambda!245637 () Bool)

(assert (=> (not b_lambda!245637) (not b!6488268)))

(declare-fun m!7276762 () Bool)

(assert (=> b!6488268 m!7276762))

(declare-fun m!7276764 () Bool)

(assert (=> b!6488269 m!7276764))

(assert (=> d!2035185 d!2035421))

(assert (=> b!6487605 d!2035323))

(declare-fun d!2035423 () Bool)

(declare-fun lambda!359244 () Int)

(declare-fun exists!2617 ((InoxSet Context!11502) Int) Bool)

(assert (=> d!2035423 (= (nullableZipper!2124 lt!2388869) (exists!2617 lt!2388869 lambda!359244))))

(declare-fun bs!1646128 () Bool)

(assert (= bs!1646128 d!2035423))

(declare-fun m!7276766 () Bool)

(assert (=> bs!1646128 m!7276766))

(assert (=> b!6487460 d!2035423))

(declare-fun bs!1646129 () Bool)

(declare-fun d!2035425 () Bool)

(assert (= bs!1646129 (and d!2035425 d!2035423)))

(declare-fun lambda!359245 () Int)

(assert (=> bs!1646129 (= lambda!359245 lambda!359244)))

(assert (=> d!2035425 (= (nullableZipper!2124 lt!2388893) (exists!2617 lt!2388893 lambda!359245))))

(declare-fun bs!1646130 () Bool)

(assert (= bs!1646130 d!2035425))

(declare-fun m!7276768 () Bool)

(assert (=> bs!1646130 m!7276768))

(assert (=> b!6487736 d!2035425))

(declare-fun d!2035427 () Bool)

(assert (=> d!2035427 (= (nullable!6360 (regTwo!33246 r!7292)) (nullableFct!2298 (regTwo!33246 r!7292)))))

(declare-fun bs!1646131 () Bool)

(assert (= bs!1646131 d!2035427))

(declare-fun m!7276770 () Bool)

(assert (=> bs!1646131 m!7276770))

(assert (=> b!6487455 d!2035427))

(assert (=> d!2035095 d!2035093))

(assert (=> d!2035095 d!2035091))

(declare-fun d!2035429 () Bool)

(assert (=> d!2035429 (= (matchR!8550 lt!2388855 s!2326) (matchRSpec!3468 lt!2388855 s!2326))))

(assert (=> d!2035429 true))

(declare-fun _$88!5175 () Unit!158799)

(assert (=> d!2035429 (= (choose!48162 lt!2388855 s!2326) _$88!5175)))

(declare-fun bs!1646132 () Bool)

(assert (= bs!1646132 d!2035429))

(assert (=> bs!1646132 m!7274986))

(assert (=> bs!1646132 m!7274984))

(assert (=> d!2035095 d!2035429))

(assert (=> d!2035095 d!2035335))

(declare-fun d!2035431 () Bool)

(declare-fun c!1188821 () Bool)

(assert (=> d!2035431 (= c!1188821 ((_ is Nil!65276) lt!2389001))))

(declare-fun e!3932226 () (InoxSet C!33004))

(assert (=> d!2035431 (= (content!12437 lt!2389001) e!3932226)))

(declare-fun b!6488270 () Bool)

(assert (=> b!6488270 (= e!3932226 ((as const (Array C!33004 Bool)) false))))

(declare-fun b!6488271 () Bool)

(assert (=> b!6488271 (= e!3932226 ((_ map or) (store ((as const (Array C!33004 Bool)) false) (h!71724 lt!2389001) true) (content!12437 (t!379026 lt!2389001))))))

(assert (= (and d!2035431 c!1188821) b!6488270))

(assert (= (and d!2035431 (not c!1188821)) b!6488271))

(declare-fun m!7276772 () Bool)

(assert (=> b!6488271 m!7276772))

(declare-fun m!7276774 () Bool)

(assert (=> b!6488271 m!7276774))

(assert (=> d!2034951 d!2035431))

(declare-fun d!2035433 () Bool)

(declare-fun c!1188822 () Bool)

(assert (=> d!2035433 (= c!1188822 ((_ is Nil!65276) (_2!36649 lt!2388858)))))

(declare-fun e!3932227 () (InoxSet C!33004))

(assert (=> d!2035433 (= (content!12437 (_2!36649 lt!2388858)) e!3932227)))

(declare-fun b!6488272 () Bool)

(assert (=> b!6488272 (= e!3932227 ((as const (Array C!33004 Bool)) false))))

(declare-fun b!6488273 () Bool)

(assert (=> b!6488273 (= e!3932227 ((_ map or) (store ((as const (Array C!33004 Bool)) false) (h!71724 (_2!36649 lt!2388858)) true) (content!12437 (t!379026 (_2!36649 lt!2388858)))))))

(assert (= (and d!2035433 c!1188822) b!6488272))

(assert (= (and d!2035433 (not c!1188822)) b!6488273))

(declare-fun m!7276776 () Bool)

(assert (=> b!6488273 m!7276776))

(declare-fun m!7276778 () Bool)

(assert (=> b!6488273 m!7276778))

(assert (=> d!2034951 d!2035433))

(assert (=> d!2034951 d!2035295))

(declare-fun bs!1646133 () Bool)

(declare-fun d!2035435 () Bool)

(assert (= bs!1646133 (and d!2035435 d!2035423)))

(declare-fun lambda!359246 () Int)

(assert (=> bs!1646133 (= lambda!359246 lambda!359244)))

(declare-fun bs!1646134 () Bool)

(assert (= bs!1646134 (and d!2035435 d!2035425)))

(assert (=> bs!1646134 (= lambda!359246 lambda!359245)))

(assert (=> d!2035435 (= (nullableZipper!2124 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 lt!2388881 lt!2388871)) true)) (exists!2617 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 lt!2388881 lt!2388871)) true) lambda!359246))))

(declare-fun bs!1646135 () Bool)

(assert (= bs!1646135 d!2035435))

(assert (=> bs!1646135 m!7274962))

(declare-fun m!7276780 () Bool)

(assert (=> bs!1646135 m!7276780))

(assert (=> b!6487478 d!2035435))

(declare-fun b!6488274 () Bool)

(declare-fun res!2664740 () Bool)

(declare-fun e!3932228 () Bool)

(assert (=> b!6488274 (=> res!2664740 e!3932228)))

(assert (=> b!6488274 (= res!2664740 (not (isEmpty!37468 (tail!12294 (tail!12294 (_1!36649 lt!2388900))))))))

(declare-fun b!6488276 () Bool)

(declare-fun e!3932233 () Bool)

(assert (=> b!6488276 (= e!3932233 (= (head!13209 (tail!12294 (_1!36649 lt!2388900))) (c!1188383 (derivativeStep!5063 lt!2388865 (head!13209 (_1!36649 lt!2388900))))))))

(declare-fun b!6488277 () Bool)

(declare-fun res!2664737 () Bool)

(declare-fun e!3932230 () Bool)

(assert (=> b!6488277 (=> res!2664737 e!3932230)))

(assert (=> b!6488277 (= res!2664737 e!3932233)))

(declare-fun res!2664738 () Bool)

(assert (=> b!6488277 (=> (not res!2664738) (not e!3932233))))

(declare-fun lt!2389164 () Bool)

(assert (=> b!6488277 (= res!2664738 lt!2389164)))

(declare-fun b!6488278 () Bool)

(declare-fun e!3932234 () Bool)

(assert (=> b!6488278 (= e!3932234 e!3932228)))

(declare-fun res!2664743 () Bool)

(assert (=> b!6488278 (=> res!2664743 e!3932228)))

(declare-fun call!561587 () Bool)

(assert (=> b!6488278 (= res!2664743 call!561587)))

(declare-fun b!6488279 () Bool)

(declare-fun res!2664741 () Bool)

(assert (=> b!6488279 (=> res!2664741 e!3932230)))

(assert (=> b!6488279 (= res!2664741 (not ((_ is ElementMatch!16367) (derivativeStep!5063 lt!2388865 (head!13209 (_1!36649 lt!2388900))))))))

(declare-fun e!3932229 () Bool)

(assert (=> b!6488279 (= e!3932229 e!3932230)))

(declare-fun bm!561582 () Bool)

(assert (=> bm!561582 (= call!561587 (isEmpty!37468 (tail!12294 (_1!36649 lt!2388900))))))

(declare-fun b!6488280 () Bool)

(assert (=> b!6488280 (= e!3932230 e!3932234)))

(declare-fun res!2664739 () Bool)

(assert (=> b!6488280 (=> (not res!2664739) (not e!3932234))))

(assert (=> b!6488280 (= res!2664739 (not lt!2389164))))

(declare-fun b!6488281 () Bool)

(declare-fun e!3932231 () Bool)

(assert (=> b!6488281 (= e!3932231 e!3932229)))

(declare-fun c!1188825 () Bool)

(assert (=> b!6488281 (= c!1188825 ((_ is EmptyLang!16367) (derivativeStep!5063 lt!2388865 (head!13209 (_1!36649 lt!2388900)))))))

(declare-fun b!6488282 () Bool)

(declare-fun res!2664742 () Bool)

(assert (=> b!6488282 (=> (not res!2664742) (not e!3932233))))

(assert (=> b!6488282 (= res!2664742 (isEmpty!37468 (tail!12294 (tail!12294 (_1!36649 lt!2388900)))))))

(declare-fun b!6488283 () Bool)

(declare-fun e!3932232 () Bool)

(assert (=> b!6488283 (= e!3932232 (nullable!6360 (derivativeStep!5063 lt!2388865 (head!13209 (_1!36649 lt!2388900)))))))

(declare-fun b!6488284 () Bool)

(assert (=> b!6488284 (= e!3932231 (= lt!2389164 call!561587))))

(declare-fun b!6488285 () Bool)

(declare-fun res!2664736 () Bool)

(assert (=> b!6488285 (=> (not res!2664736) (not e!3932233))))

(assert (=> b!6488285 (= res!2664736 (not call!561587))))

(declare-fun b!6488286 () Bool)

(assert (=> b!6488286 (= e!3932229 (not lt!2389164))))

(declare-fun b!6488287 () Bool)

(assert (=> b!6488287 (= e!3932228 (not (= (head!13209 (tail!12294 (_1!36649 lt!2388900))) (c!1188383 (derivativeStep!5063 lt!2388865 (head!13209 (_1!36649 lt!2388900)))))))))

(declare-fun d!2035437 () Bool)

(assert (=> d!2035437 e!3932231))

(declare-fun c!1188824 () Bool)

(assert (=> d!2035437 (= c!1188824 ((_ is EmptyExpr!16367) (derivativeStep!5063 lt!2388865 (head!13209 (_1!36649 lt!2388900)))))))

(assert (=> d!2035437 (= lt!2389164 e!3932232)))

(declare-fun c!1188823 () Bool)

(assert (=> d!2035437 (= c!1188823 (isEmpty!37468 (tail!12294 (_1!36649 lt!2388900))))))

(assert (=> d!2035437 (validRegex!8103 (derivativeStep!5063 lt!2388865 (head!13209 (_1!36649 lt!2388900))))))

(assert (=> d!2035437 (= (matchR!8550 (derivativeStep!5063 lt!2388865 (head!13209 (_1!36649 lt!2388900))) (tail!12294 (_1!36649 lt!2388900))) lt!2389164)))

(declare-fun b!6488275 () Bool)

(assert (=> b!6488275 (= e!3932232 (matchR!8550 (derivativeStep!5063 (derivativeStep!5063 lt!2388865 (head!13209 (_1!36649 lt!2388900))) (head!13209 (tail!12294 (_1!36649 lt!2388900)))) (tail!12294 (tail!12294 (_1!36649 lt!2388900)))))))

(assert (= (and d!2035437 c!1188823) b!6488283))

(assert (= (and d!2035437 (not c!1188823)) b!6488275))

(assert (= (and d!2035437 c!1188824) b!6488284))

(assert (= (and d!2035437 (not c!1188824)) b!6488281))

(assert (= (and b!6488281 c!1188825) b!6488286))

(assert (= (and b!6488281 (not c!1188825)) b!6488279))

(assert (= (and b!6488279 (not res!2664741)) b!6488277))

(assert (= (and b!6488277 res!2664738) b!6488285))

(assert (= (and b!6488285 res!2664736) b!6488282))

(assert (= (and b!6488282 res!2664742) b!6488276))

(assert (= (and b!6488277 (not res!2664737)) b!6488280))

(assert (= (and b!6488280 res!2664739) b!6488278))

(assert (= (and b!6488278 (not res!2664743)) b!6488274))

(assert (= (and b!6488274 (not res!2664740)) b!6488287))

(assert (= (or b!6488284 b!6488278 b!6488285) bm!561582))

(assert (=> b!6488274 m!7276272))

(declare-fun m!7276782 () Bool)

(assert (=> b!6488274 m!7276782))

(assert (=> b!6488274 m!7276782))

(declare-fun m!7276784 () Bool)

(assert (=> b!6488274 m!7276784))

(assert (=> b!6488283 m!7276278))

(declare-fun m!7276786 () Bool)

(assert (=> b!6488283 m!7276786))

(assert (=> d!2035437 m!7276272))

(assert (=> d!2035437 m!7276274))

(assert (=> d!2035437 m!7276278))

(declare-fun m!7276788 () Bool)

(assert (=> d!2035437 m!7276788))

(assert (=> b!6488282 m!7276272))

(assert (=> b!6488282 m!7276782))

(assert (=> b!6488282 m!7276782))

(assert (=> b!6488282 m!7276784))

(assert (=> b!6488287 m!7276272))

(declare-fun m!7276790 () Bool)

(assert (=> b!6488287 m!7276790))

(assert (=> b!6488276 m!7276272))

(assert (=> b!6488276 m!7276790))

(assert (=> b!6488275 m!7276272))

(assert (=> b!6488275 m!7276790))

(assert (=> b!6488275 m!7276278))

(assert (=> b!6488275 m!7276790))

(declare-fun m!7276792 () Bool)

(assert (=> b!6488275 m!7276792))

(assert (=> b!6488275 m!7276272))

(assert (=> b!6488275 m!7276782))

(assert (=> b!6488275 m!7276792))

(assert (=> b!6488275 m!7276782))

(declare-fun m!7276794 () Bool)

(assert (=> b!6488275 m!7276794))

(assert (=> bm!561582 m!7276272))

(assert (=> bm!561582 m!7276274))

(assert (=> b!6487777 d!2035437))

(declare-fun b!6488288 () Bool)

(declare-fun c!1188826 () Bool)

(assert (=> b!6488288 (= c!1188826 (nullable!6360 (regOne!33246 lt!2388865)))))

(declare-fun e!3932237 () Regex!16367)

(declare-fun e!3932238 () Regex!16367)

(assert (=> b!6488288 (= e!3932237 e!3932238)))

(declare-fun b!6488289 () Bool)

(declare-fun e!3932236 () Regex!16367)

(assert (=> b!6488289 (= e!3932236 e!3932237)))

(declare-fun c!1188830 () Bool)

(assert (=> b!6488289 (= c!1188830 ((_ is Star!16367) lt!2388865))))

(declare-fun bm!561584 () Bool)

(declare-fun call!561589 () Regex!16367)

(declare-fun c!1188827 () Bool)

(assert (=> bm!561584 (= call!561589 (derivativeStep!5063 (ite c!1188827 (regOne!33247 lt!2388865) (ite c!1188826 (regTwo!33246 lt!2388865) (regOne!33246 lt!2388865))) (head!13209 (_1!36649 lt!2388900))))))

(declare-fun b!6488290 () Bool)

(declare-fun call!561588 () Regex!16367)

(assert (=> b!6488290 (= e!3932237 (Concat!25212 call!561588 lt!2388865))))

(declare-fun b!6488291 () Bool)

(declare-fun e!3932235 () Regex!16367)

(assert (=> b!6488291 (= e!3932235 EmptyLang!16367)))

(declare-fun b!6488292 () Bool)

(declare-fun e!3932239 () Regex!16367)

(assert (=> b!6488292 (= e!3932239 (ite (= (head!13209 (_1!36649 lt!2388900)) (c!1188383 lt!2388865)) EmptyExpr!16367 EmptyLang!16367))))

(declare-fun bm!561585 () Bool)

(declare-fun call!561591 () Regex!16367)

(assert (=> bm!561585 (= call!561588 call!561591)))

(declare-fun b!6488293 () Bool)

(assert (=> b!6488293 (= e!3932235 e!3932239)))

(declare-fun c!1188829 () Bool)

(assert (=> b!6488293 (= c!1188829 ((_ is ElementMatch!16367) lt!2388865))))

(declare-fun b!6488294 () Bool)

(declare-fun call!561590 () Regex!16367)

(assert (=> b!6488294 (= e!3932238 (Union!16367 (Concat!25212 call!561588 (regTwo!33246 lt!2388865)) call!561590))))

(declare-fun b!6488295 () Bool)

(assert (=> b!6488295 (= e!3932238 (Union!16367 (Concat!25212 call!561590 (regTwo!33246 lt!2388865)) EmptyLang!16367))))

(declare-fun b!6488296 () Bool)

(assert (=> b!6488296 (= c!1188827 ((_ is Union!16367) lt!2388865))))

(assert (=> b!6488296 (= e!3932239 e!3932236)))

(declare-fun d!2035439 () Bool)

(declare-fun lt!2389165 () Regex!16367)

(assert (=> d!2035439 (validRegex!8103 lt!2389165)))

(assert (=> d!2035439 (= lt!2389165 e!3932235)))

(declare-fun c!1188828 () Bool)

(assert (=> d!2035439 (= c!1188828 (or ((_ is EmptyExpr!16367) lt!2388865) ((_ is EmptyLang!16367) lt!2388865)))))

(assert (=> d!2035439 (validRegex!8103 lt!2388865)))

(assert (=> d!2035439 (= (derivativeStep!5063 lt!2388865 (head!13209 (_1!36649 lt!2388900))) lt!2389165)))

(declare-fun bm!561583 () Bool)

(assert (=> bm!561583 (= call!561591 (derivativeStep!5063 (ite c!1188827 (regTwo!33247 lt!2388865) (ite c!1188830 (reg!16696 lt!2388865) (regOne!33246 lt!2388865))) (head!13209 (_1!36649 lt!2388900))))))

(declare-fun b!6488297 () Bool)

(assert (=> b!6488297 (= e!3932236 (Union!16367 call!561589 call!561591))))

(declare-fun bm!561586 () Bool)

(assert (=> bm!561586 (= call!561590 call!561589)))

(assert (= (and d!2035439 c!1188828) b!6488291))

(assert (= (and d!2035439 (not c!1188828)) b!6488293))

(assert (= (and b!6488293 c!1188829) b!6488292))

(assert (= (and b!6488293 (not c!1188829)) b!6488296))

(assert (= (and b!6488296 c!1188827) b!6488297))

(assert (= (and b!6488296 (not c!1188827)) b!6488289))

(assert (= (and b!6488289 c!1188830) b!6488290))

(assert (= (and b!6488289 (not c!1188830)) b!6488288))

(assert (= (and b!6488288 c!1188826) b!6488294))

(assert (= (and b!6488288 (not c!1188826)) b!6488295))

(assert (= (or b!6488294 b!6488295) bm!561586))

(assert (= (or b!6488290 b!6488294) bm!561585))

(assert (= (or b!6488297 bm!561585) bm!561583))

(assert (= (or b!6488297 bm!561586) bm!561584))

(assert (=> b!6488288 m!7276728))

(assert (=> bm!561584 m!7276276))

(declare-fun m!7276796 () Bool)

(assert (=> bm!561584 m!7276796))

(declare-fun m!7276798 () Bool)

(assert (=> d!2035439 m!7276798))

(assert (=> d!2035439 m!7275850))

(assert (=> bm!561583 m!7276276))

(declare-fun m!7276800 () Bool)

(assert (=> bm!561583 m!7276800))

(assert (=> b!6487777 d!2035439))

(declare-fun d!2035441 () Bool)

(assert (=> d!2035441 (= (head!13209 (_1!36649 lt!2388900)) (h!71724 (_1!36649 lt!2388900)))))

(assert (=> b!6487777 d!2035441))

(assert (=> b!6487777 d!2035333))

(declare-fun d!2035443 () Bool)

(assert (=> d!2035443 (= (nullable!6360 lt!2388855) (nullableFct!2298 lt!2388855))))

(declare-fun bs!1646136 () Bool)

(assert (= bs!1646136 d!2035443))

(declare-fun m!7276802 () Bool)

(assert (=> bs!1646136 m!7276802))

(assert (=> b!6487473 d!2035443))

(declare-fun bs!1646137 () Bool)

(declare-fun b!6488299 () Bool)

(assert (= bs!1646137 (and b!6488299 d!2035151)))

(declare-fun lambda!359247 () Int)

(assert (=> bs!1646137 (not (= lambda!359247 lambda!359216))))

(declare-fun bs!1646138 () Bool)

(assert (= bs!1646138 (and b!6488299 b!6487593)))

(assert (=> bs!1646138 (= (and (= (reg!16696 (regTwo!33247 lt!2388855)) (reg!16696 r!7292)) (= (regTwo!33247 lt!2388855) r!7292)) (= lambda!359247 lambda!359195))))

(declare-fun bs!1646139 () Bool)

(assert (= bs!1646139 (and b!6488299 b!6486638)))

(assert (=> bs!1646139 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regTwo!33247 lt!2388855)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33247 lt!2388855) lt!2388865)) (= lambda!359247 lambda!359124))))

(declare-fun bs!1646140 () Bool)

(assert (= bs!1646140 (and b!6488299 b!6486656)))

(assert (=> bs!1646140 (not (= lambda!359247 lambda!359121))))

(declare-fun bs!1646141 () Bool)

(assert (= bs!1646141 (and b!6488299 b!6487561)))

(assert (=> bs!1646141 (= (and (= (reg!16696 (regTwo!33247 lt!2388855)) (reg!16696 lt!2388855)) (= (regTwo!33247 lt!2388855) lt!2388855)) (= lambda!359247 lambda!359189))))

(declare-fun bs!1646142 () Bool)

(assert (= bs!1646142 (and b!6488299 b!6486655)))

(assert (=> bs!1646142 (not (= lambda!359247 lambda!359119))))

(declare-fun bs!1646143 () Bool)

(assert (= bs!1646143 (and b!6488299 d!2035135)))

(assert (=> bs!1646143 (not (= lambda!359247 lambda!359207))))

(declare-fun bs!1646144 () Bool)

(assert (= bs!1646144 (and b!6488299 d!2035139)))

(assert (=> bs!1646144 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regTwo!33247 lt!2388855)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33247 lt!2388855) (Star!16367 (reg!16696 (regOne!33246 r!7292))))) (= lambda!359247 lambda!359213))))

(declare-fun bs!1646145 () Bool)

(assert (= bs!1646145 (and b!6488299 d!2035129)))

(assert (=> bs!1646145 (not (= lambda!359247 lambda!359201))))

(assert (=> bs!1646137 (not (= lambda!359247 lambda!359215))))

(declare-fun bs!1646146 () Bool)

(assert (= bs!1646146 (and b!6488299 b!6487626)))

(assert (=> bs!1646146 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regTwo!33247 lt!2388855)) (reg!16696 lt!2388865)) (= (regTwo!33247 lt!2388855) lt!2388865)) (= lambda!359247 lambda!359203))))

(declare-fun bs!1646147 () Bool)

(assert (= bs!1646147 (and b!6488299 d!2035165)))

(assert (=> bs!1646147 (not (= lambda!359247 lambda!359219))))

(assert (=> bs!1646144 (not (= lambda!359247 lambda!359212))))

(declare-fun bs!1646148 () Bool)

(assert (= bs!1646148 (and b!6488299 b!6487630)))

(assert (=> bs!1646148 (not (= lambda!359247 lambda!359204))))

(assert (=> bs!1646145 (not (= lambda!359247 lambda!359202))))

(assert (=> bs!1646139 (not (= lambda!359247 lambda!359123))))

(assert (=> bs!1646147 (not (= lambda!359247 lambda!359218))))

(declare-fun bs!1646149 () Bool)

(assert (= bs!1646149 (and b!6488299 d!2035221)))

(assert (=> bs!1646149 (not (= lambda!359247 lambda!359231))))

(declare-fun bs!1646150 () Bool)

(assert (= bs!1646150 (and b!6488299 b!6487565)))

(assert (=> bs!1646150 (not (= lambda!359247 lambda!359190))))

(assert (=> bs!1646142 (not (= lambda!359247 lambda!359118))))

(declare-fun bs!1646151 () Bool)

(assert (= bs!1646151 (and b!6488299 d!2035387)))

(assert (=> bs!1646151 (not (= lambda!359247 lambda!359241))))

(assert (=> bs!1646139 (not (= lambda!359247 lambda!359125))))

(declare-fun bs!1646152 () Bool)

(assert (= bs!1646152 (and b!6488299 b!6488119)))

(assert (=> bs!1646152 (not (= lambda!359247 lambda!359234))))

(declare-fun bs!1646153 () Bool)

(assert (= bs!1646153 (and b!6488299 d!2035145)))

(assert (=> bs!1646153 (not (= lambda!359247 lambda!359214))))

(assert (=> bs!1646140 (not (= lambda!359247 lambda!359122))))

(assert (=> bs!1646151 (not (= lambda!359247 lambda!359240))))

(declare-fun bs!1646154 () Bool)

(assert (= bs!1646154 (and b!6488299 b!6488115)))

(assert (=> bs!1646154 (= (and (= (reg!16696 (regTwo!33247 lt!2388855)) (reg!16696 (regTwo!33247 r!7292))) (= (regTwo!33247 lt!2388855) (regTwo!33247 r!7292))) (= lambda!359247 lambda!359233))))

(declare-fun bs!1646155 () Bool)

(assert (= bs!1646155 (and b!6488299 d!2035161)))

(assert (=> bs!1646155 (not (= lambda!359247 lambda!359217))))

(declare-fun bs!1646156 () Bool)

(assert (= bs!1646156 (and b!6488299 b!6487597)))

(assert (=> bs!1646156 (not (= lambda!359247 lambda!359196))))

(assert (=> b!6488299 true))

(assert (=> b!6488299 true))

(declare-fun bs!1646157 () Bool)

(declare-fun b!6488303 () Bool)

(assert (= bs!1646157 (and b!6488303 d!2035151)))

(declare-fun lambda!359248 () Int)

(assert (=> bs!1646157 (= (and (= (regOne!33246 (regTwo!33247 lt!2388855)) (regOne!33246 r!7292)) (= (regTwo!33246 (regTwo!33247 lt!2388855)) (regTwo!33246 r!7292))) (= lambda!359248 lambda!359216))))

(declare-fun bs!1646158 () Bool)

(assert (= bs!1646158 (and b!6488303 b!6487593)))

(assert (=> bs!1646158 (not (= lambda!359248 lambda!359195))))

(declare-fun bs!1646159 () Bool)

(assert (= bs!1646159 (and b!6488303 b!6486638)))

(assert (=> bs!1646159 (not (= lambda!359248 lambda!359124))))

(declare-fun bs!1646160 () Bool)

(assert (= bs!1646160 (and b!6488303 b!6486656)))

(assert (=> bs!1646160 (not (= lambda!359248 lambda!359121))))

(declare-fun bs!1646161 () Bool)

(assert (= bs!1646161 (and b!6488303 b!6487561)))

(assert (=> bs!1646161 (not (= lambda!359248 lambda!359189))))

(declare-fun bs!1646162 () Bool)

(assert (= bs!1646162 (and b!6488303 b!6486655)))

(assert (=> bs!1646162 (= (and (= (regOne!33246 (regTwo!33247 lt!2388855)) (regOne!33246 r!7292)) (= (regTwo!33246 (regTwo!33247 lt!2388855)) (regTwo!33246 r!7292))) (= lambda!359248 lambda!359119))))

(declare-fun bs!1646163 () Bool)

(assert (= bs!1646163 (and b!6488303 d!2035135)))

(assert (=> bs!1646163 (not (= lambda!359248 lambda!359207))))

(declare-fun bs!1646164 () Bool)

(assert (= bs!1646164 (and b!6488303 d!2035139)))

(assert (=> bs!1646164 (not (= lambda!359248 lambda!359213))))

(declare-fun bs!1646165 () Bool)

(assert (= bs!1646165 (and b!6488303 d!2035129)))

(assert (=> bs!1646165 (not (= lambda!359248 lambda!359201))))

(assert (=> bs!1646157 (not (= lambda!359248 lambda!359215))))

(declare-fun bs!1646166 () Bool)

(assert (= bs!1646166 (and b!6488303 b!6487626)))

(assert (=> bs!1646166 (not (= lambda!359248 lambda!359203))))

(assert (=> bs!1646164 (not (= lambda!359248 lambda!359212))))

(declare-fun bs!1646167 () Bool)

(assert (= bs!1646167 (and b!6488303 b!6487630)))

(assert (=> bs!1646167 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regTwo!33247 lt!2388855)) (regOne!33246 lt!2388865)) (= (regTwo!33246 (regTwo!33247 lt!2388855)) (regTwo!33246 lt!2388865))) (= lambda!359248 lambda!359204))))

(assert (=> bs!1646165 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regTwo!33247 lt!2388855)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regTwo!33247 lt!2388855)) lt!2388865)) (= lambda!359248 lambda!359202))))

(assert (=> bs!1646159 (not (= lambda!359248 lambda!359123))))

(declare-fun bs!1646168 () Bool)

(assert (= bs!1646168 (and b!6488303 d!2035165)))

(assert (=> bs!1646168 (not (= lambda!359248 lambda!359218))))

(declare-fun bs!1646169 () Bool)

(assert (= bs!1646169 (and b!6488303 d!2035221)))

(assert (=> bs!1646169 (not (= lambda!359248 lambda!359231))))

(declare-fun bs!1646170 () Bool)

(assert (= bs!1646170 (and b!6488303 b!6487565)))

(assert (=> bs!1646170 (= (and (= (regOne!33246 (regTwo!33247 lt!2388855)) (regOne!33246 lt!2388855)) (= (regTwo!33246 (regTwo!33247 lt!2388855)) (regTwo!33246 lt!2388855))) (= lambda!359248 lambda!359190))))

(assert (=> bs!1646162 (not (= lambda!359248 lambda!359118))))

(declare-fun bs!1646171 () Bool)

(assert (= bs!1646171 (and b!6488303 d!2035387)))

(assert (=> bs!1646171 (= (and (= (regOne!33246 (regTwo!33247 lt!2388855)) lt!2388865) (= (regTwo!33246 (regTwo!33247 lt!2388855)) (regTwo!33246 r!7292))) (= lambda!359248 lambda!359241))))

(assert (=> bs!1646159 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regTwo!33247 lt!2388855)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regTwo!33247 lt!2388855)) lt!2388865)) (= lambda!359248 lambda!359125))))

(declare-fun bs!1646172 () Bool)

(assert (= bs!1646172 (and b!6488303 b!6488119)))

(assert (=> bs!1646172 (= (and (= (regOne!33246 (regTwo!33247 lt!2388855)) (regOne!33246 (regTwo!33247 r!7292))) (= (regTwo!33246 (regTwo!33247 lt!2388855)) (regTwo!33246 (regTwo!33247 r!7292)))) (= lambda!359248 lambda!359234))))

(declare-fun bs!1646173 () Bool)

(assert (= bs!1646173 (and b!6488303 d!2035145)))

(assert (=> bs!1646173 (not (= lambda!359248 lambda!359214))))

(assert (=> bs!1646160 (= (and (= (regOne!33246 (regTwo!33247 lt!2388855)) lt!2388865) (= (regTwo!33246 (regTwo!33247 lt!2388855)) (regTwo!33246 r!7292))) (= lambda!359248 lambda!359122))))

(assert (=> bs!1646171 (not (= lambda!359248 lambda!359240))))

(declare-fun bs!1646174 () Bool)

(assert (= bs!1646174 (and b!6488303 b!6488115)))

(assert (=> bs!1646174 (not (= lambda!359248 lambda!359233))))

(assert (=> bs!1646168 (= (and (= (regOne!33246 (regTwo!33247 lt!2388855)) lt!2388865) (= (regTwo!33246 (regTwo!33247 lt!2388855)) (regTwo!33246 r!7292))) (= lambda!359248 lambda!359219))))

(declare-fun bs!1646175 () Bool)

(assert (= bs!1646175 (and b!6488303 b!6488299)))

(assert (=> bs!1646175 (not (= lambda!359248 lambda!359247))))

(declare-fun bs!1646176 () Bool)

(assert (= bs!1646176 (and b!6488303 d!2035161)))

(assert (=> bs!1646176 (not (= lambda!359248 lambda!359217))))

(declare-fun bs!1646177 () Bool)

(assert (= bs!1646177 (and b!6488303 b!6487597)))

(assert (=> bs!1646177 (= (and (= (regOne!33246 (regTwo!33247 lt!2388855)) (regOne!33246 r!7292)) (= (regTwo!33246 (regTwo!33247 lt!2388855)) (regTwo!33246 r!7292))) (= lambda!359248 lambda!359196))))

(assert (=> b!6488303 true))

(assert (=> b!6488303 true))

(declare-fun b!6488298 () Bool)

(declare-fun c!1188834 () Bool)

(assert (=> b!6488298 (= c!1188834 ((_ is ElementMatch!16367) (regTwo!33247 lt!2388855)))))

(declare-fun e!3932240 () Bool)

(declare-fun e!3932244 () Bool)

(assert (=> b!6488298 (= e!3932240 e!3932244)))

(declare-fun e!3932246 () Bool)

(declare-fun call!561593 () Bool)

(assert (=> b!6488299 (= e!3932246 call!561593)))

(declare-fun b!6488300 () Bool)

(declare-fun e!3932242 () Bool)

(declare-fun call!561592 () Bool)

(assert (=> b!6488300 (= e!3932242 call!561592)))

(declare-fun bm!561587 () Bool)

(assert (=> bm!561587 (= call!561592 (isEmpty!37468 s!2326))))

(declare-fun b!6488301 () Bool)

(declare-fun e!3932243 () Bool)

(assert (=> b!6488301 (= e!3932243 (matchRSpec!3468 (regTwo!33247 (regTwo!33247 lt!2388855)) s!2326))))

(declare-fun d!2035445 () Bool)

(declare-fun c!1188832 () Bool)

(assert (=> d!2035445 (= c!1188832 ((_ is EmptyExpr!16367) (regTwo!33247 lt!2388855)))))

(assert (=> d!2035445 (= (matchRSpec!3468 (regTwo!33247 lt!2388855) s!2326) e!3932242)))

(declare-fun b!6488302 () Bool)

(declare-fun e!3932241 () Bool)

(declare-fun e!3932245 () Bool)

(assert (=> b!6488302 (= e!3932241 e!3932245)))

(declare-fun c!1188833 () Bool)

(assert (=> b!6488302 (= c!1188833 ((_ is Star!16367) (regTwo!33247 lt!2388855)))))

(declare-fun bm!561588 () Bool)

(assert (=> bm!561588 (= call!561593 (Exists!3437 (ite c!1188833 lambda!359247 lambda!359248)))))

(assert (=> b!6488303 (= e!3932245 call!561593)))

(declare-fun b!6488304 () Bool)

(declare-fun c!1188831 () Bool)

(assert (=> b!6488304 (= c!1188831 ((_ is Union!16367) (regTwo!33247 lt!2388855)))))

(assert (=> b!6488304 (= e!3932244 e!3932241)))

(declare-fun b!6488305 () Bool)

(assert (=> b!6488305 (= e!3932244 (= s!2326 (Cons!65276 (c!1188383 (regTwo!33247 lt!2388855)) Nil!65276)))))

(declare-fun b!6488306 () Bool)

(assert (=> b!6488306 (= e!3932241 e!3932243)))

(declare-fun res!2664746 () Bool)

(assert (=> b!6488306 (= res!2664746 (matchRSpec!3468 (regOne!33247 (regTwo!33247 lt!2388855)) s!2326))))

(assert (=> b!6488306 (=> res!2664746 e!3932243)))

(declare-fun b!6488307 () Bool)

(declare-fun res!2664745 () Bool)

(assert (=> b!6488307 (=> res!2664745 e!3932246)))

(assert (=> b!6488307 (= res!2664745 call!561592)))

(assert (=> b!6488307 (= e!3932245 e!3932246)))

(declare-fun b!6488308 () Bool)

(assert (=> b!6488308 (= e!3932242 e!3932240)))

(declare-fun res!2664744 () Bool)

(assert (=> b!6488308 (= res!2664744 (not ((_ is EmptyLang!16367) (regTwo!33247 lt!2388855))))))

(assert (=> b!6488308 (=> (not res!2664744) (not e!3932240))))

(assert (= (and d!2035445 c!1188832) b!6488300))

(assert (= (and d!2035445 (not c!1188832)) b!6488308))

(assert (= (and b!6488308 res!2664744) b!6488298))

(assert (= (and b!6488298 c!1188834) b!6488305))

(assert (= (and b!6488298 (not c!1188834)) b!6488304))

(assert (= (and b!6488304 c!1188831) b!6488306))

(assert (= (and b!6488304 (not c!1188831)) b!6488302))

(assert (= (and b!6488306 (not res!2664746)) b!6488301))

(assert (= (and b!6488302 c!1188833) b!6488307))

(assert (= (and b!6488302 (not c!1188833)) b!6488303))

(assert (= (and b!6488307 (not res!2664745)) b!6488299))

(assert (= (or b!6488299 b!6488303) bm!561588))

(assert (= (or b!6488300 b!6488307) bm!561587))

(assert (=> bm!561587 m!7275886))

(declare-fun m!7276804 () Bool)

(assert (=> b!6488301 m!7276804))

(declare-fun m!7276806 () Bool)

(assert (=> bm!561588 m!7276806))

(declare-fun m!7276808 () Bool)

(assert (=> b!6488306 m!7276808))

(assert (=> b!6487563 d!2035445))

(assert (=> b!6487501 d!2035349))

(declare-fun d!2035447 () Bool)

(declare-fun lt!2389166 () Int)

(assert (=> d!2035447 (>= lt!2389166 0)))

(declare-fun e!3932247 () Int)

(assert (=> d!2035447 (= lt!2389166 e!3932247)))

(declare-fun c!1188835 () Bool)

(assert (=> d!2035447 (= c!1188835 ((_ is Nil!65276) lt!2388998))))

(assert (=> d!2035447 (= (size!40424 lt!2388998) lt!2389166)))

(declare-fun b!6488309 () Bool)

(assert (=> b!6488309 (= e!3932247 0)))

(declare-fun b!6488310 () Bool)

(assert (=> b!6488310 (= e!3932247 (+ 1 (size!40424 (t!379026 lt!2388998))))))

(assert (= (and d!2035447 c!1188835) b!6488309))

(assert (= (and d!2035447 (not c!1188835)) b!6488310))

(declare-fun m!7276810 () Bool)

(assert (=> b!6488310 m!7276810))

(assert (=> b!6487038 d!2035447))

(declare-fun d!2035449 () Bool)

(declare-fun lt!2389167 () Int)

(assert (=> d!2035449 (>= lt!2389167 0)))

(declare-fun e!3932248 () Int)

(assert (=> d!2035449 (= lt!2389167 e!3932248)))

(declare-fun c!1188836 () Bool)

(assert (=> d!2035449 (= c!1188836 ((_ is Nil!65276) lt!2388889))))

(assert (=> d!2035449 (= (size!40424 lt!2388889) lt!2389167)))

(declare-fun b!6488311 () Bool)

(assert (=> b!6488311 (= e!3932248 0)))

(declare-fun b!6488312 () Bool)

(assert (=> b!6488312 (= e!3932248 (+ 1 (size!40424 (t!379026 lt!2388889))))))

(assert (= (and d!2035449 c!1188836) b!6488311))

(assert (= (and d!2035449 (not c!1188836)) b!6488312))

(assert (=> b!6488312 m!7276618))

(assert (=> b!6487038 d!2035449))

(declare-fun d!2035451 () Bool)

(declare-fun lt!2389168 () Int)

(assert (=> d!2035451 (>= lt!2389168 0)))

(declare-fun e!3932249 () Int)

(assert (=> d!2035451 (= lt!2389168 e!3932249)))

(declare-fun c!1188837 () Bool)

(assert (=> d!2035451 (= c!1188837 ((_ is Nil!65276) (_2!36649 lt!2388900)))))

(assert (=> d!2035451 (= (size!40424 (_2!36649 lt!2388900)) lt!2389168)))

(declare-fun b!6488313 () Bool)

(assert (=> b!6488313 (= e!3932249 0)))

(declare-fun b!6488314 () Bool)

(assert (=> b!6488314 (= e!3932249 (+ 1 (size!40424 (t!379026 (_2!36649 lt!2388900)))))))

(assert (= (and d!2035451 c!1188837) b!6488313))

(assert (= (and d!2035451 (not c!1188837)) b!6488314))

(declare-fun m!7276812 () Bool)

(assert (=> b!6488314 m!7276812))

(assert (=> b!6487038 d!2035451))

(assert (=> b!6487390 d!2035283))

(assert (=> b!6487390 d!2035285))

(assert (=> b!6487493 d!2035287))

(assert (=> b!6487493 d!2035289))

(declare-fun bs!1646178 () Bool)

(declare-fun d!2035453 () Bool)

(assert (= bs!1646178 (and d!2035453 b!6486640)))

(declare-fun lambda!359249 () Int)

(assert (=> bs!1646178 (= lambda!359249 lambda!359126)))

(declare-fun bs!1646179 () Bool)

(assert (= bs!1646179 (and d!2035453 d!2035183)))

(assert (=> bs!1646179 (= lambda!359249 lambda!359225)))

(declare-fun bs!1646180 () Bool)

(assert (= bs!1646180 (and d!2035453 d!2035173)))

(assert (=> bs!1646180 (= lambda!359249 lambda!359222)))

(declare-fun bs!1646181 () Bool)

(assert (= bs!1646181 (and d!2035453 d!2035185)))

(assert (=> bs!1646181 (= lambda!359249 lambda!359228)))

(declare-fun bs!1646182 () Bool)

(assert (= bs!1646182 (and d!2035453 d!2035009)))

(assert (=> bs!1646182 (= lambda!359249 lambda!359178)))

(declare-fun bs!1646183 () Bool)

(assert (= bs!1646183 (and d!2035453 d!2035379)))

(assert (=> bs!1646183 (= lambda!359249 lambda!359235)))

(declare-fun bs!1646184 () Bool)

(assert (= bs!1646184 (and d!2035453 d!2035083)))

(assert (=> bs!1646184 (= lambda!359249 lambda!359184)))

(declare-fun bs!1646185 () Bool)

(assert (= bs!1646185 (and d!2035453 d!2035073)))

(assert (=> bs!1646185 (= lambda!359249 lambda!359181)))

(declare-fun bs!1646186 () Bool)

(assert (= bs!1646186 (and d!2035453 d!2035109)))

(assert (=> bs!1646186 (= lambda!359249 lambda!359194)))

(assert (=> d!2035453 (= (inv!84164 (h!71726 (t!379028 zl!343))) (forall!15550 (exprs!6251 (h!71726 (t!379028 zl!343))) lambda!359249))))

(declare-fun bs!1646187 () Bool)

(assert (= bs!1646187 d!2035453))

(declare-fun m!7276814 () Bool)

(assert (=> bs!1646187 m!7276814))

(assert (=> b!6487841 d!2035453))

(declare-fun b!6488315 () Bool)

(declare-fun e!3932250 () (InoxSet Context!11502))

(declare-fun call!561598 () (InoxSet Context!11502))

(declare-fun call!561597 () (InoxSet Context!11502))

(assert (=> b!6488315 (= e!3932250 ((_ map or) call!561598 call!561597))))

(declare-fun b!6488316 () Bool)

(declare-fun e!3932254 () (InoxSet Context!11502))

(declare-fun call!561595 () (InoxSet Context!11502))

(assert (=> b!6488316 (= e!3932254 ((_ map or) call!561597 call!561595))))

(declare-fun bm!561589 () Bool)

(declare-fun call!561596 () (InoxSet Context!11502))

(assert (=> bm!561589 (= call!561596 call!561595)))

(declare-fun b!6488317 () Bool)

(declare-fun e!3932255 () (InoxSet Context!11502))

(assert (=> b!6488317 (= e!3932254 e!3932255)))

(declare-fun c!1188838 () Bool)

(assert (=> b!6488317 (= c!1188838 ((_ is Concat!25212) (h!71725 (exprs!6251 lt!2388862))))))

(declare-fun b!6488318 () Bool)

(declare-fun e!3932253 () (InoxSet Context!11502))

(assert (=> b!6488318 (= e!3932253 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (t!379027 (exprs!6251 lt!2388862))) true))))

(declare-fun b!6488319 () Bool)

(declare-fun e!3932252 () Bool)

(assert (=> b!6488319 (= e!3932252 (nullable!6360 (regOne!33246 (h!71725 (exprs!6251 lt!2388862)))))))

(declare-fun c!1188839 () Bool)

(declare-fun call!561594 () List!65401)

(declare-fun bm!561590 () Bool)

(assert (=> bm!561590 (= call!561597 (derivationStepZipperDown!1615 (ite c!1188839 (regTwo!33247 (h!71725 (exprs!6251 lt!2388862))) (regOne!33246 (h!71725 (exprs!6251 lt!2388862)))) (ite c!1188839 (Context!11503 (t!379027 (exprs!6251 lt!2388862))) (Context!11503 call!561594)) (h!71724 s!2326)))))

(declare-fun bm!561591 () Bool)

(declare-fun c!1188842 () Bool)

(declare-fun call!561599 () List!65401)

(assert (=> bm!561591 (= call!561598 (derivationStepZipperDown!1615 (ite c!1188839 (regOne!33247 (h!71725 (exprs!6251 lt!2388862))) (ite c!1188842 (regTwo!33246 (h!71725 (exprs!6251 lt!2388862))) (ite c!1188838 (regOne!33246 (h!71725 (exprs!6251 lt!2388862))) (reg!16696 (h!71725 (exprs!6251 lt!2388862)))))) (ite (or c!1188839 c!1188842) (Context!11503 (t!379027 (exprs!6251 lt!2388862))) (Context!11503 call!561599)) (h!71724 s!2326)))))

(declare-fun bm!561592 () Bool)

(assert (=> bm!561592 (= call!561599 call!561594)))

(declare-fun b!6488320 () Bool)

(declare-fun e!3932251 () (InoxSet Context!11502))

(assert (=> b!6488320 (= e!3932251 call!561596)))

(declare-fun b!6488321 () Bool)

(assert (=> b!6488321 (= e!3932255 call!561596)))

(declare-fun b!6488322 () Bool)

(assert (=> b!6488322 (= e!3932251 ((as const (Array Context!11502 Bool)) false))))

(declare-fun bm!561593 () Bool)

(assert (=> bm!561593 (= call!561594 ($colon$colon!2219 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388862)))) (ite (or c!1188842 c!1188838) (regTwo!33246 (h!71725 (exprs!6251 lt!2388862))) (h!71725 (exprs!6251 lt!2388862)))))))

(declare-fun b!6488323 () Bool)

(assert (=> b!6488323 (= c!1188842 e!3932252)))

(declare-fun res!2664747 () Bool)

(assert (=> b!6488323 (=> (not res!2664747) (not e!3932252))))

(assert (=> b!6488323 (= res!2664747 ((_ is Concat!25212) (h!71725 (exprs!6251 lt!2388862))))))

(assert (=> b!6488323 (= e!3932250 e!3932254)))

(declare-fun b!6488324 () Bool)

(declare-fun c!1188840 () Bool)

(assert (=> b!6488324 (= c!1188840 ((_ is Star!16367) (h!71725 (exprs!6251 lt!2388862))))))

(assert (=> b!6488324 (= e!3932255 e!3932251)))

(declare-fun bm!561594 () Bool)

(assert (=> bm!561594 (= call!561595 call!561598)))

(declare-fun b!6488325 () Bool)

(assert (=> b!6488325 (= e!3932253 e!3932250)))

(assert (=> b!6488325 (= c!1188839 ((_ is Union!16367) (h!71725 (exprs!6251 lt!2388862))))))

(declare-fun d!2035455 () Bool)

(declare-fun c!1188841 () Bool)

(assert (=> d!2035455 (= c!1188841 (and ((_ is ElementMatch!16367) (h!71725 (exprs!6251 lt!2388862))) (= (c!1188383 (h!71725 (exprs!6251 lt!2388862))) (h!71724 s!2326))))))

(assert (=> d!2035455 (= (derivationStepZipperDown!1615 (h!71725 (exprs!6251 lt!2388862)) (Context!11503 (t!379027 (exprs!6251 lt!2388862))) (h!71724 s!2326)) e!3932253)))

(assert (= (and d!2035455 c!1188841) b!6488318))

(assert (= (and d!2035455 (not c!1188841)) b!6488325))

(assert (= (and b!6488325 c!1188839) b!6488315))

(assert (= (and b!6488325 (not c!1188839)) b!6488323))

(assert (= (and b!6488323 res!2664747) b!6488319))

(assert (= (and b!6488323 c!1188842) b!6488316))

(assert (= (and b!6488323 (not c!1188842)) b!6488317))

(assert (= (and b!6488317 c!1188838) b!6488321))

(assert (= (and b!6488317 (not c!1188838)) b!6488324))

(assert (= (and b!6488324 c!1188840) b!6488320))

(assert (= (and b!6488324 (not c!1188840)) b!6488322))

(assert (= (or b!6488321 b!6488320) bm!561592))

(assert (= (or b!6488321 b!6488320) bm!561589))

(assert (= (or b!6488316 bm!561592) bm!561593))

(assert (= (or b!6488316 bm!561589) bm!561594))

(assert (= (or b!6488315 b!6488316) bm!561590))

(assert (= (or b!6488315 bm!561594) bm!561591))

(declare-fun m!7276816 () Bool)

(assert (=> bm!561593 m!7276816))

(declare-fun m!7276818 () Bool)

(assert (=> bm!561590 m!7276818))

(declare-fun m!7276820 () Bool)

(assert (=> b!6488319 m!7276820))

(declare-fun m!7276822 () Bool)

(assert (=> b!6488318 m!7276822))

(declare-fun m!7276824 () Bool)

(assert (=> bm!561591 m!7276824))

(assert (=> bm!561461 d!2035455))

(declare-fun b!6488326 () Bool)

(declare-fun res!2664752 () Bool)

(declare-fun e!3932256 () Bool)

(assert (=> b!6488326 (=> res!2664752 e!3932256)))

(assert (=> b!6488326 (= res!2664752 (not (isEmpty!37468 (tail!12294 (tail!12294 (_2!36649 lt!2388900))))))))

(declare-fun b!6488328 () Bool)

(declare-fun e!3932261 () Bool)

(assert (=> b!6488328 (= e!3932261 (= (head!13209 (tail!12294 (_2!36649 lt!2388900))) (c!1188383 (derivativeStep!5063 (regTwo!33246 r!7292) (head!13209 (_2!36649 lt!2388900))))))))

(declare-fun b!6488329 () Bool)

(declare-fun res!2664749 () Bool)

(declare-fun e!3932258 () Bool)

(assert (=> b!6488329 (=> res!2664749 e!3932258)))

(assert (=> b!6488329 (= res!2664749 e!3932261)))

(declare-fun res!2664750 () Bool)

(assert (=> b!6488329 (=> (not res!2664750) (not e!3932261))))

(declare-fun lt!2389169 () Bool)

(assert (=> b!6488329 (= res!2664750 lt!2389169)))

(declare-fun b!6488330 () Bool)

(declare-fun e!3932262 () Bool)

(assert (=> b!6488330 (= e!3932262 e!3932256)))

(declare-fun res!2664755 () Bool)

(assert (=> b!6488330 (=> res!2664755 e!3932256)))

(declare-fun call!561600 () Bool)

(assert (=> b!6488330 (= res!2664755 call!561600)))

(declare-fun b!6488331 () Bool)

(declare-fun res!2664753 () Bool)

(assert (=> b!6488331 (=> res!2664753 e!3932258)))

(assert (=> b!6488331 (= res!2664753 (not ((_ is ElementMatch!16367) (derivativeStep!5063 (regTwo!33246 r!7292) (head!13209 (_2!36649 lt!2388900))))))))

(declare-fun e!3932257 () Bool)

(assert (=> b!6488331 (= e!3932257 e!3932258)))

(declare-fun bm!561595 () Bool)

(assert (=> bm!561595 (= call!561600 (isEmpty!37468 (tail!12294 (_2!36649 lt!2388900))))))

(declare-fun b!6488332 () Bool)

(assert (=> b!6488332 (= e!3932258 e!3932262)))

(declare-fun res!2664751 () Bool)

(assert (=> b!6488332 (=> (not res!2664751) (not e!3932262))))

(assert (=> b!6488332 (= res!2664751 (not lt!2389169))))

(declare-fun b!6488333 () Bool)

(declare-fun e!3932259 () Bool)

(assert (=> b!6488333 (= e!3932259 e!3932257)))

(declare-fun c!1188845 () Bool)

(assert (=> b!6488333 (= c!1188845 ((_ is EmptyLang!16367) (derivativeStep!5063 (regTwo!33246 r!7292) (head!13209 (_2!36649 lt!2388900)))))))

(declare-fun b!6488334 () Bool)

(declare-fun res!2664754 () Bool)

(assert (=> b!6488334 (=> (not res!2664754) (not e!3932261))))

(assert (=> b!6488334 (= res!2664754 (isEmpty!37468 (tail!12294 (tail!12294 (_2!36649 lt!2388900)))))))

(declare-fun b!6488335 () Bool)

(declare-fun e!3932260 () Bool)

(assert (=> b!6488335 (= e!3932260 (nullable!6360 (derivativeStep!5063 (regTwo!33246 r!7292) (head!13209 (_2!36649 lt!2388900)))))))

(declare-fun b!6488336 () Bool)

(assert (=> b!6488336 (= e!3932259 (= lt!2389169 call!561600))))

(declare-fun b!6488337 () Bool)

(declare-fun res!2664748 () Bool)

(assert (=> b!6488337 (=> (not res!2664748) (not e!3932261))))

(assert (=> b!6488337 (= res!2664748 (not call!561600))))

(declare-fun b!6488338 () Bool)

(assert (=> b!6488338 (= e!3932257 (not lt!2389169))))

(declare-fun b!6488339 () Bool)

(assert (=> b!6488339 (= e!3932256 (not (= (head!13209 (tail!12294 (_2!36649 lt!2388900))) (c!1188383 (derivativeStep!5063 (regTwo!33246 r!7292) (head!13209 (_2!36649 lt!2388900)))))))))

(declare-fun d!2035457 () Bool)

(assert (=> d!2035457 e!3932259))

(declare-fun c!1188844 () Bool)

(assert (=> d!2035457 (= c!1188844 ((_ is EmptyExpr!16367) (derivativeStep!5063 (regTwo!33246 r!7292) (head!13209 (_2!36649 lt!2388900)))))))

(assert (=> d!2035457 (= lt!2389169 e!3932260)))

(declare-fun c!1188843 () Bool)

(assert (=> d!2035457 (= c!1188843 (isEmpty!37468 (tail!12294 (_2!36649 lt!2388900))))))

(assert (=> d!2035457 (validRegex!8103 (derivativeStep!5063 (regTwo!33246 r!7292) (head!13209 (_2!36649 lt!2388900))))))

(assert (=> d!2035457 (= (matchR!8550 (derivativeStep!5063 (regTwo!33246 r!7292) (head!13209 (_2!36649 lt!2388900))) (tail!12294 (_2!36649 lt!2388900))) lt!2389169)))

(declare-fun b!6488327 () Bool)

(assert (=> b!6488327 (= e!3932260 (matchR!8550 (derivativeStep!5063 (derivativeStep!5063 (regTwo!33246 r!7292) (head!13209 (_2!36649 lt!2388900))) (head!13209 (tail!12294 (_2!36649 lt!2388900)))) (tail!12294 (tail!12294 (_2!36649 lt!2388900)))))))

(assert (= (and d!2035457 c!1188843) b!6488335))

(assert (= (and d!2035457 (not c!1188843)) b!6488327))

(assert (= (and d!2035457 c!1188844) b!6488336))

(assert (= (and d!2035457 (not c!1188844)) b!6488333))

(assert (= (and b!6488333 c!1188845) b!6488338))

(assert (= (and b!6488333 (not c!1188845)) b!6488331))

(assert (= (and b!6488331 (not res!2664753)) b!6488329))

(assert (= (and b!6488329 res!2664750) b!6488337))

(assert (= (and b!6488337 res!2664748) b!6488334))

(assert (= (and b!6488334 res!2664754) b!6488328))

(assert (= (and b!6488329 (not res!2664749)) b!6488332))

(assert (= (and b!6488332 res!2664751) b!6488330))

(assert (= (and b!6488330 (not res!2664755)) b!6488326))

(assert (= (and b!6488326 (not res!2664752)) b!6488339))

(assert (= (or b!6488336 b!6488330 b!6488337) bm!561595))

(assert (=> b!6488326 m!7275870))

(declare-fun m!7276826 () Bool)

(assert (=> b!6488326 m!7276826))

(assert (=> b!6488326 m!7276826))

(declare-fun m!7276828 () Bool)

(assert (=> b!6488326 m!7276828))

(assert (=> b!6488335 m!7275882))

(declare-fun m!7276830 () Bool)

(assert (=> b!6488335 m!7276830))

(assert (=> d!2035457 m!7275870))

(assert (=> d!2035457 m!7275872))

(assert (=> d!2035457 m!7275882))

(declare-fun m!7276832 () Bool)

(assert (=> d!2035457 m!7276832))

(assert (=> b!6488334 m!7275870))

(assert (=> b!6488334 m!7276826))

(assert (=> b!6488334 m!7276826))

(assert (=> b!6488334 m!7276828))

(assert (=> b!6488339 m!7275870))

(declare-fun m!7276834 () Bool)

(assert (=> b!6488339 m!7276834))

(assert (=> b!6488328 m!7275870))

(assert (=> b!6488328 m!7276834))

(assert (=> b!6488327 m!7275870))

(assert (=> b!6488327 m!7276834))

(assert (=> b!6488327 m!7275882))

(assert (=> b!6488327 m!7276834))

(declare-fun m!7276836 () Bool)

(assert (=> b!6488327 m!7276836))

(assert (=> b!6488327 m!7275870))

(assert (=> b!6488327 m!7276826))

(assert (=> b!6488327 m!7276836))

(assert (=> b!6488327 m!7276826))

(declare-fun m!7276838 () Bool)

(assert (=> b!6488327 m!7276838))

(assert (=> bm!561595 m!7275870))

(assert (=> bm!561595 m!7275872))

(assert (=> b!6487447 d!2035457))

(declare-fun b!6488340 () Bool)

(declare-fun c!1188846 () Bool)

(assert (=> b!6488340 (= c!1188846 (nullable!6360 (regOne!33246 (regTwo!33246 r!7292))))))

(declare-fun e!3932265 () Regex!16367)

(declare-fun e!3932266 () Regex!16367)

(assert (=> b!6488340 (= e!3932265 e!3932266)))

(declare-fun b!6488341 () Bool)

(declare-fun e!3932264 () Regex!16367)

(assert (=> b!6488341 (= e!3932264 e!3932265)))

(declare-fun c!1188850 () Bool)

(assert (=> b!6488341 (= c!1188850 ((_ is Star!16367) (regTwo!33246 r!7292)))))

(declare-fun call!561602 () Regex!16367)

(declare-fun c!1188847 () Bool)

(declare-fun bm!561597 () Bool)

(assert (=> bm!561597 (= call!561602 (derivativeStep!5063 (ite c!1188847 (regOne!33247 (regTwo!33246 r!7292)) (ite c!1188846 (regTwo!33246 (regTwo!33246 r!7292)) (regOne!33246 (regTwo!33246 r!7292)))) (head!13209 (_2!36649 lt!2388900))))))

(declare-fun b!6488342 () Bool)

(declare-fun call!561601 () Regex!16367)

(assert (=> b!6488342 (= e!3932265 (Concat!25212 call!561601 (regTwo!33246 r!7292)))))

(declare-fun b!6488343 () Bool)

(declare-fun e!3932263 () Regex!16367)

(assert (=> b!6488343 (= e!3932263 EmptyLang!16367)))

(declare-fun b!6488344 () Bool)

(declare-fun e!3932267 () Regex!16367)

(assert (=> b!6488344 (= e!3932267 (ite (= (head!13209 (_2!36649 lt!2388900)) (c!1188383 (regTwo!33246 r!7292))) EmptyExpr!16367 EmptyLang!16367))))

(declare-fun bm!561598 () Bool)

(declare-fun call!561604 () Regex!16367)

(assert (=> bm!561598 (= call!561601 call!561604)))

(declare-fun b!6488345 () Bool)

(assert (=> b!6488345 (= e!3932263 e!3932267)))

(declare-fun c!1188849 () Bool)

(assert (=> b!6488345 (= c!1188849 ((_ is ElementMatch!16367) (regTwo!33246 r!7292)))))

(declare-fun b!6488346 () Bool)

(declare-fun call!561603 () Regex!16367)

(assert (=> b!6488346 (= e!3932266 (Union!16367 (Concat!25212 call!561601 (regTwo!33246 (regTwo!33246 r!7292))) call!561603))))

(declare-fun b!6488347 () Bool)

(assert (=> b!6488347 (= e!3932266 (Union!16367 (Concat!25212 call!561603 (regTwo!33246 (regTwo!33246 r!7292))) EmptyLang!16367))))

(declare-fun b!6488348 () Bool)

(assert (=> b!6488348 (= c!1188847 ((_ is Union!16367) (regTwo!33246 r!7292)))))

(assert (=> b!6488348 (= e!3932267 e!3932264)))

(declare-fun d!2035459 () Bool)

(declare-fun lt!2389170 () Regex!16367)

(assert (=> d!2035459 (validRegex!8103 lt!2389170)))

(assert (=> d!2035459 (= lt!2389170 e!3932263)))

(declare-fun c!1188848 () Bool)

(assert (=> d!2035459 (= c!1188848 (or ((_ is EmptyExpr!16367) (regTwo!33246 r!7292)) ((_ is EmptyLang!16367) (regTwo!33246 r!7292))))))

(assert (=> d!2035459 (validRegex!8103 (regTwo!33246 r!7292))))

(assert (=> d!2035459 (= (derivativeStep!5063 (regTwo!33246 r!7292) (head!13209 (_2!36649 lt!2388900))) lt!2389170)))

(declare-fun bm!561596 () Bool)

(assert (=> bm!561596 (= call!561604 (derivativeStep!5063 (ite c!1188847 (regTwo!33247 (regTwo!33246 r!7292)) (ite c!1188850 (reg!16696 (regTwo!33246 r!7292)) (regOne!33246 (regTwo!33246 r!7292)))) (head!13209 (_2!36649 lt!2388900))))))

(declare-fun b!6488349 () Bool)

(assert (=> b!6488349 (= e!3932264 (Union!16367 call!561602 call!561604))))

(declare-fun bm!561599 () Bool)

(assert (=> bm!561599 (= call!561603 call!561602)))

(assert (= (and d!2035459 c!1188848) b!6488343))

(assert (= (and d!2035459 (not c!1188848)) b!6488345))

(assert (= (and b!6488345 c!1188849) b!6488344))

(assert (= (and b!6488345 (not c!1188849)) b!6488348))

(assert (= (and b!6488348 c!1188847) b!6488349))

(assert (= (and b!6488348 (not c!1188847)) b!6488341))

(assert (= (and b!6488341 c!1188850) b!6488342))

(assert (= (and b!6488341 (not c!1188850)) b!6488340))

(assert (= (and b!6488340 c!1188846) b!6488346))

(assert (= (and b!6488340 (not c!1188846)) b!6488347))

(assert (= (or b!6488346 b!6488347) bm!561599))

(assert (= (or b!6488342 b!6488346) bm!561598))

(assert (= (or b!6488349 bm!561598) bm!561596))

(assert (= (or b!6488349 bm!561599) bm!561597))

(declare-fun m!7276840 () Bool)

(assert (=> b!6488340 m!7276840))

(assert (=> bm!561597 m!7275880))

(declare-fun m!7276842 () Bool)

(assert (=> bm!561597 m!7276842))

(declare-fun m!7276844 () Bool)

(assert (=> d!2035459 m!7276844))

(assert (=> d!2035459 m!7275878))

(assert (=> bm!561596 m!7275880))

(declare-fun m!7276846 () Bool)

(assert (=> bm!561596 m!7276846))

(assert (=> b!6487447 d!2035459))

(declare-fun d!2035461 () Bool)

(assert (=> d!2035461 (= (head!13209 (_2!36649 lt!2388900)) (h!71724 (_2!36649 lt!2388900)))))

(assert (=> b!6487447 d!2035461))

(assert (=> b!6487447 d!2035329))

(assert (=> b!6487426 d!2035417))

(assert (=> b!6487426 d!2035419))

(declare-fun d!2035463 () Bool)

(assert (=> d!2035463 true))

(assert (=> d!2035463 true))

(declare-fun res!2664756 () Bool)

(assert (=> d!2035463 (= (choose!48164 lambda!359121) res!2664756)))

(assert (=> d!2035169 d!2035463))

(declare-fun d!2035465 () Bool)

(assert (=> d!2035465 (= (isEmpty!37470 (unfocusZipperList!1788 zl!343)) ((_ is Nil!65277) (unfocusZipperList!1788 zl!343)))))

(assert (=> b!6487764 d!2035465))

(assert (=> b!6487701 d!2035337))

(assert (=> b!6487701 d!2035339))

(assert (=> b!6487701 d!2035341))

(declare-fun b!6488350 () Bool)

(declare-fun res!2664757 () Bool)

(declare-fun e!3932272 () Bool)

(assert (=> b!6488350 (=> (not res!2664757) (not e!3932272))))

(declare-fun lt!2389172 () Option!16258)

(assert (=> b!6488350 (= res!2664757 (matchR!8550 (regTwo!33246 r!7292) (_2!36649 (get!22634 lt!2389172))))))

(declare-fun b!6488351 () Bool)

(declare-fun e!3932268 () Option!16258)

(assert (=> b!6488351 (= e!3932268 None!16257)))

(declare-fun b!6488352 () Bool)

(assert (=> b!6488352 (= e!3932272 (= (++!14444 (_1!36649 (get!22634 lt!2389172)) (_2!36649 (get!22634 lt!2389172))) s!2326))))

(declare-fun b!6488353 () Bool)

(declare-fun res!2664759 () Bool)

(assert (=> b!6488353 (=> (not res!2664759) (not e!3932272))))

(assert (=> b!6488353 (= res!2664759 (matchR!8550 lt!2388865 (_1!36649 (get!22634 lt!2389172))))))

(declare-fun d!2035467 () Bool)

(declare-fun e!3932270 () Bool)

(assert (=> d!2035467 e!3932270))

(declare-fun res!2664758 () Bool)

(assert (=> d!2035467 (=> res!2664758 e!3932270)))

(assert (=> d!2035467 (= res!2664758 e!3932272)))

(declare-fun res!2664761 () Bool)

(assert (=> d!2035467 (=> (not res!2664761) (not e!3932272))))

(assert (=> d!2035467 (= res!2664761 (isDefined!12961 lt!2389172))))

(declare-fun e!3932271 () Option!16258)

(assert (=> d!2035467 (= lt!2389172 e!3932271)))

(declare-fun c!1188851 () Bool)

(declare-fun e!3932269 () Bool)

(assert (=> d!2035467 (= c!1188851 e!3932269)))

(declare-fun res!2664760 () Bool)

(assert (=> d!2035467 (=> (not res!2664760) (not e!3932269))))

(assert (=> d!2035467 (= res!2664760 (matchR!8550 lt!2388865 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276))))))

(assert (=> d!2035467 (validRegex!8103 lt!2388865)))

(assert (=> d!2035467 (= (findConcatSeparation!2672 lt!2388865 (regTwo!33246 r!7292) (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (t!379026 s!2326) s!2326) lt!2389172)))

(declare-fun b!6488354 () Bool)

(assert (=> b!6488354 (= e!3932271 (Some!16257 (tuple2!66693 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (t!379026 s!2326))))))

(declare-fun b!6488355 () Bool)

(assert (=> b!6488355 (= e!3932269 (matchR!8550 (regTwo!33246 r!7292) (t!379026 s!2326)))))

(declare-fun b!6488356 () Bool)

(assert (=> b!6488356 (= e!3932270 (not (isDefined!12961 lt!2389172)))))

(declare-fun b!6488357 () Bool)

(declare-fun lt!2389173 () Unit!158799)

(declare-fun lt!2389171 () Unit!158799)

(assert (=> b!6488357 (= lt!2389173 lt!2389171)))

(assert (=> b!6488357 (= (++!14444 (++!14444 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (Cons!65276 (h!71724 (t!379026 s!2326)) Nil!65276)) (t!379026 (t!379026 s!2326))) s!2326)))

(assert (=> b!6488357 (= lt!2389171 (lemmaMoveElementToOtherListKeepsConcatEq!2522 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (h!71724 (t!379026 s!2326)) (t!379026 (t!379026 s!2326)) s!2326))))

(assert (=> b!6488357 (= e!3932268 (findConcatSeparation!2672 lt!2388865 (regTwo!33246 r!7292) (++!14444 (++!14444 Nil!65276 (Cons!65276 (h!71724 s!2326) Nil!65276)) (Cons!65276 (h!71724 (t!379026 s!2326)) Nil!65276)) (t!379026 (t!379026 s!2326)) s!2326))))

(declare-fun b!6488358 () Bool)

(assert (=> b!6488358 (= e!3932271 e!3932268)))

(declare-fun c!1188852 () Bool)

(assert (=> b!6488358 (= c!1188852 ((_ is Nil!65276) (t!379026 s!2326)))))

(assert (= (and d!2035467 res!2664760) b!6488355))

(assert (= (and d!2035467 c!1188851) b!6488354))

(assert (= (and d!2035467 (not c!1188851)) b!6488358))

(assert (= (and b!6488358 c!1188852) b!6488351))

(assert (= (and b!6488358 (not c!1188852)) b!6488357))

(assert (= (and d!2035467 res!2664761) b!6488353))

(assert (= (and b!6488353 res!2664759) b!6488350))

(assert (= (and b!6488350 res!2664757) b!6488352))

(assert (= (and d!2035467 (not res!2664758)) b!6488356))

(declare-fun m!7276848 () Bool)

(assert (=> b!6488352 m!7276848))

(declare-fun m!7276850 () Bool)

(assert (=> b!6488352 m!7276850))

(declare-fun m!7276852 () Bool)

(assert (=> b!6488356 m!7276852))

(assert (=> b!6488350 m!7276848))

(declare-fun m!7276854 () Bool)

(assert (=> b!6488350 m!7276854))

(assert (=> b!6488357 m!7276150))

(assert (=> b!6488357 m!7276576))

(assert (=> b!6488357 m!7276576))

(assert (=> b!6488357 m!7276578))

(assert (=> b!6488357 m!7276150))

(assert (=> b!6488357 m!7276580))

(assert (=> b!6488357 m!7276576))

(declare-fun m!7276856 () Bool)

(assert (=> b!6488357 m!7276856))

(assert (=> b!6488355 m!7276584))

(assert (=> d!2035467 m!7276852))

(assert (=> d!2035467 m!7276150))

(declare-fun m!7276858 () Bool)

(assert (=> d!2035467 m!7276858))

(assert (=> d!2035467 m!7275850))

(assert (=> b!6488353 m!7276848))

(declare-fun m!7276860 () Bool)

(assert (=> b!6488353 m!7276860))

(assert (=> b!6487701 d!2035467))

(declare-fun b!6488359 () Bool)

(declare-fun e!3932274 () Bool)

(declare-fun call!561606 () Bool)

(assert (=> b!6488359 (= e!3932274 call!561606)))

(declare-fun b!6488360 () Bool)

(declare-fun e!3932277 () Bool)

(declare-fun e!3932273 () Bool)

(assert (=> b!6488360 (= e!3932277 e!3932273)))

(declare-fun c!1188853 () Bool)

(assert (=> b!6488360 (= c!1188853 ((_ is Star!16367) lt!2389075))))

(declare-fun d!2035469 () Bool)

(declare-fun res!2664765 () Bool)

(assert (=> d!2035469 (=> res!2664765 e!3932277)))

(assert (=> d!2035469 (= res!2664765 ((_ is ElementMatch!16367) lt!2389075))))

(assert (=> d!2035469 (= (validRegex!8103 lt!2389075) e!3932277)))

(declare-fun bm!561600 () Bool)

(declare-fun call!561607 () Bool)

(declare-fun c!1188854 () Bool)

(assert (=> bm!561600 (= call!561607 (validRegex!8103 (ite c!1188854 (regOne!33247 lt!2389075) (regOne!33246 lt!2389075))))))

(declare-fun b!6488361 () Bool)

(declare-fun res!2664766 () Bool)

(declare-fun e!3932276 () Bool)

(assert (=> b!6488361 (=> res!2664766 e!3932276)))

(assert (=> b!6488361 (= res!2664766 (not ((_ is Concat!25212) lt!2389075)))))

(declare-fun e!3932275 () Bool)

(assert (=> b!6488361 (= e!3932275 e!3932276)))

(declare-fun b!6488362 () Bool)

(declare-fun e!3932278 () Bool)

(assert (=> b!6488362 (= e!3932278 call!561606)))

(declare-fun bm!561601 () Bool)

(declare-fun call!561605 () Bool)

(assert (=> bm!561601 (= call!561605 (validRegex!8103 (ite c!1188853 (reg!16696 lt!2389075) (ite c!1188854 (regTwo!33247 lt!2389075) (regTwo!33246 lt!2389075)))))))

(declare-fun b!6488363 () Bool)

(declare-fun res!2664764 () Bool)

(assert (=> b!6488363 (=> (not res!2664764) (not e!3932278))))

(assert (=> b!6488363 (= res!2664764 call!561607)))

(assert (=> b!6488363 (= e!3932275 e!3932278)))

(declare-fun b!6488364 () Bool)

(assert (=> b!6488364 (= e!3932273 e!3932275)))

(assert (=> b!6488364 (= c!1188854 ((_ is Union!16367) lt!2389075))))

(declare-fun bm!561602 () Bool)

(assert (=> bm!561602 (= call!561606 call!561605)))

(declare-fun b!6488365 () Bool)

(declare-fun e!3932279 () Bool)

(assert (=> b!6488365 (= e!3932279 call!561605)))

(declare-fun b!6488366 () Bool)

(assert (=> b!6488366 (= e!3932273 e!3932279)))

(declare-fun res!2664763 () Bool)

(assert (=> b!6488366 (= res!2664763 (not (nullable!6360 (reg!16696 lt!2389075))))))

(assert (=> b!6488366 (=> (not res!2664763) (not e!3932279))))

(declare-fun b!6488367 () Bool)

(assert (=> b!6488367 (= e!3932276 e!3932274)))

(declare-fun res!2664762 () Bool)

(assert (=> b!6488367 (=> (not res!2664762) (not e!3932274))))

(assert (=> b!6488367 (= res!2664762 call!561607)))

(assert (= (and d!2035469 (not res!2664765)) b!6488360))

(assert (= (and b!6488360 c!1188853) b!6488366))

(assert (= (and b!6488360 (not c!1188853)) b!6488364))

(assert (= (and b!6488366 res!2664763) b!6488365))

(assert (= (and b!6488364 c!1188854) b!6488363))

(assert (= (and b!6488364 (not c!1188854)) b!6488361))

(assert (= (and b!6488363 res!2664764) b!6488362))

(assert (= (and b!6488361 (not res!2664766)) b!6488367))

(assert (= (and b!6488367 res!2664762) b!6488359))

(assert (= (or b!6488362 b!6488359) bm!561602))

(assert (= (or b!6488363 b!6488367) bm!561600))

(assert (= (or b!6488365 bm!561602) bm!561601))

(declare-fun m!7276862 () Bool)

(assert (=> bm!561600 m!7276862))

(declare-fun m!7276864 () Bool)

(assert (=> bm!561601 m!7276864))

(declare-fun m!7276866 () Bool)

(assert (=> b!6488366 m!7276866))

(assert (=> d!2035107 d!2035469))

(declare-fun bs!1646188 () Bool)

(declare-fun d!2035471 () Bool)

(assert (= bs!1646188 (and d!2035471 b!6486640)))

(declare-fun lambda!359250 () Int)

(assert (=> bs!1646188 (= lambda!359250 lambda!359126)))

(declare-fun bs!1646189 () Bool)

(assert (= bs!1646189 (and d!2035471 d!2035183)))

(assert (=> bs!1646189 (= lambda!359250 lambda!359225)))

(declare-fun bs!1646190 () Bool)

(assert (= bs!1646190 (and d!2035471 d!2035173)))

(assert (=> bs!1646190 (= lambda!359250 lambda!359222)))

(declare-fun bs!1646191 () Bool)

(assert (= bs!1646191 (and d!2035471 d!2035185)))

(assert (=> bs!1646191 (= lambda!359250 lambda!359228)))

(declare-fun bs!1646192 () Bool)

(assert (= bs!1646192 (and d!2035471 d!2035009)))

(assert (=> bs!1646192 (= lambda!359250 lambda!359178)))

(declare-fun bs!1646193 () Bool)

(assert (= bs!1646193 (and d!2035471 d!2035379)))

(assert (=> bs!1646193 (= lambda!359250 lambda!359235)))

(declare-fun bs!1646194 () Bool)

(assert (= bs!1646194 (and d!2035471 d!2035453)))

(assert (=> bs!1646194 (= lambda!359250 lambda!359249)))

(declare-fun bs!1646195 () Bool)

(assert (= bs!1646195 (and d!2035471 d!2035083)))

(assert (=> bs!1646195 (= lambda!359250 lambda!359184)))

(declare-fun bs!1646196 () Bool)

(assert (= bs!1646196 (and d!2035471 d!2035073)))

(assert (=> bs!1646196 (= lambda!359250 lambda!359181)))

(declare-fun bs!1646197 () Bool)

(assert (= bs!1646197 (and d!2035471 d!2035109)))

(assert (=> bs!1646197 (= lambda!359250 lambda!359194)))

(declare-fun b!6488368 () Bool)

(declare-fun e!3932283 () Bool)

(assert (=> b!6488368 (= e!3932283 (isEmpty!37470 (t!379027 (unfocusZipperList!1788 lt!2388863))))))

(declare-fun b!6488369 () Bool)

(declare-fun e!3932282 () Bool)

(declare-fun lt!2389174 () Regex!16367)

(assert (=> b!6488369 (= e!3932282 (= lt!2389174 (head!13210 (unfocusZipperList!1788 lt!2388863))))))

(declare-fun b!6488370 () Bool)

(assert (=> b!6488370 (= e!3932282 (isUnion!1197 lt!2389174))))

(declare-fun b!6488371 () Bool)

(declare-fun e!3932280 () Regex!16367)

(assert (=> b!6488371 (= e!3932280 (h!71725 (unfocusZipperList!1788 lt!2388863)))))

(declare-fun b!6488372 () Bool)

(declare-fun e!3932284 () Bool)

(declare-fun e!3932285 () Bool)

(assert (=> b!6488372 (= e!3932284 e!3932285)))

(declare-fun c!1188855 () Bool)

(assert (=> b!6488372 (= c!1188855 (isEmpty!37470 (unfocusZipperList!1788 lt!2388863)))))

(declare-fun b!6488373 () Bool)

(assert (=> b!6488373 (= e!3932285 e!3932282)))

(declare-fun c!1188857 () Bool)

(assert (=> b!6488373 (= c!1188857 (isEmpty!37470 (tail!12295 (unfocusZipperList!1788 lt!2388863))))))

(assert (=> d!2035471 e!3932284))

(declare-fun res!2664768 () Bool)

(assert (=> d!2035471 (=> (not res!2664768) (not e!3932284))))

(assert (=> d!2035471 (= res!2664768 (validRegex!8103 lt!2389174))))

(assert (=> d!2035471 (= lt!2389174 e!3932280)))

(declare-fun c!1188856 () Bool)

(assert (=> d!2035471 (= c!1188856 e!3932283)))

(declare-fun res!2664767 () Bool)

(assert (=> d!2035471 (=> (not res!2664767) (not e!3932283))))

(assert (=> d!2035471 (= res!2664767 ((_ is Cons!65277) (unfocusZipperList!1788 lt!2388863)))))

(assert (=> d!2035471 (forall!15550 (unfocusZipperList!1788 lt!2388863) lambda!359250)))

(assert (=> d!2035471 (= (generalisedUnion!2211 (unfocusZipperList!1788 lt!2388863)) lt!2389174)))

(declare-fun b!6488374 () Bool)

(declare-fun e!3932281 () Regex!16367)

(assert (=> b!6488374 (= e!3932281 EmptyLang!16367)))

(declare-fun b!6488375 () Bool)

(assert (=> b!6488375 (= e!3932281 (Union!16367 (h!71725 (unfocusZipperList!1788 lt!2388863)) (generalisedUnion!2211 (t!379027 (unfocusZipperList!1788 lt!2388863)))))))

(declare-fun b!6488376 () Bool)

(assert (=> b!6488376 (= e!3932280 e!3932281)))

(declare-fun c!1188858 () Bool)

(assert (=> b!6488376 (= c!1188858 ((_ is Cons!65277) (unfocusZipperList!1788 lt!2388863)))))

(declare-fun b!6488377 () Bool)

(assert (=> b!6488377 (= e!3932285 (isEmptyLang!1767 lt!2389174))))

(assert (= (and d!2035471 res!2664767) b!6488368))

(assert (= (and d!2035471 c!1188856) b!6488371))

(assert (= (and d!2035471 (not c!1188856)) b!6488376))

(assert (= (and b!6488376 c!1188858) b!6488375))

(assert (= (and b!6488376 (not c!1188858)) b!6488374))

(assert (= (and d!2035471 res!2664768) b!6488372))

(assert (= (and b!6488372 c!1188855) b!6488377))

(assert (= (and b!6488372 (not c!1188855)) b!6488373))

(assert (= (and b!6488373 c!1188857) b!6488369))

(assert (= (and b!6488373 (not c!1188857)) b!6488370))

(declare-fun m!7276868 () Bool)

(assert (=> d!2035471 m!7276868))

(assert (=> d!2035471 m!7276048))

(declare-fun m!7276870 () Bool)

(assert (=> d!2035471 m!7276870))

(assert (=> b!6488372 m!7276048))

(declare-fun m!7276872 () Bool)

(assert (=> b!6488372 m!7276872))

(assert (=> b!6488369 m!7276048))

(declare-fun m!7276874 () Bool)

(assert (=> b!6488369 m!7276874))

(declare-fun m!7276876 () Bool)

(assert (=> b!6488377 m!7276876))

(assert (=> b!6488373 m!7276048))

(declare-fun m!7276878 () Bool)

(assert (=> b!6488373 m!7276878))

(assert (=> b!6488373 m!7276878))

(declare-fun m!7276880 () Bool)

(assert (=> b!6488373 m!7276880))

(declare-fun m!7276882 () Bool)

(assert (=> b!6488370 m!7276882))

(declare-fun m!7276884 () Bool)

(assert (=> b!6488375 m!7276884))

(declare-fun m!7276886 () Bool)

(assert (=> b!6488368 m!7276886))

(assert (=> d!2035107 d!2035471))

(declare-fun bs!1646198 () Bool)

(declare-fun d!2035473 () Bool)

(assert (= bs!1646198 (and d!2035473 b!6486640)))

(declare-fun lambda!359251 () Int)

(assert (=> bs!1646198 (= lambda!359251 lambda!359126)))

(declare-fun bs!1646199 () Bool)

(assert (= bs!1646199 (and d!2035473 d!2035183)))

(assert (=> bs!1646199 (= lambda!359251 lambda!359225)))

(declare-fun bs!1646200 () Bool)

(assert (= bs!1646200 (and d!2035473 d!2035173)))

(assert (=> bs!1646200 (= lambda!359251 lambda!359222)))

(declare-fun bs!1646201 () Bool)

(assert (= bs!1646201 (and d!2035473 d!2035185)))

(assert (=> bs!1646201 (= lambda!359251 lambda!359228)))

(declare-fun bs!1646202 () Bool)

(assert (= bs!1646202 (and d!2035473 d!2035009)))

(assert (=> bs!1646202 (= lambda!359251 lambda!359178)))

(declare-fun bs!1646203 () Bool)

(assert (= bs!1646203 (and d!2035473 d!2035471)))

(assert (=> bs!1646203 (= lambda!359251 lambda!359250)))

(declare-fun bs!1646204 () Bool)

(assert (= bs!1646204 (and d!2035473 d!2035379)))

(assert (=> bs!1646204 (= lambda!359251 lambda!359235)))

(declare-fun bs!1646205 () Bool)

(assert (= bs!1646205 (and d!2035473 d!2035453)))

(assert (=> bs!1646205 (= lambda!359251 lambda!359249)))

(declare-fun bs!1646206 () Bool)

(assert (= bs!1646206 (and d!2035473 d!2035083)))

(assert (=> bs!1646206 (= lambda!359251 lambda!359184)))

(declare-fun bs!1646207 () Bool)

(assert (= bs!1646207 (and d!2035473 d!2035073)))

(assert (=> bs!1646207 (= lambda!359251 lambda!359181)))

(declare-fun bs!1646208 () Bool)

(assert (= bs!1646208 (and d!2035473 d!2035109)))

(assert (=> bs!1646208 (= lambda!359251 lambda!359194)))

(declare-fun lt!2389175 () List!65401)

(assert (=> d!2035473 (forall!15550 lt!2389175 lambda!359251)))

(declare-fun e!3932286 () List!65401)

(assert (=> d!2035473 (= lt!2389175 e!3932286)))

(declare-fun c!1188859 () Bool)

(assert (=> d!2035473 (= c!1188859 ((_ is Cons!65278) lt!2388863))))

(assert (=> d!2035473 (= (unfocusZipperList!1788 lt!2388863) lt!2389175)))

(declare-fun b!6488378 () Bool)

(assert (=> b!6488378 (= e!3932286 (Cons!65277 (generalisedConcat!1964 (exprs!6251 (h!71726 lt!2388863))) (unfocusZipperList!1788 (t!379028 lt!2388863))))))

(declare-fun b!6488379 () Bool)

(assert (=> b!6488379 (= e!3932286 Nil!65277)))

(assert (= (and d!2035473 c!1188859) b!6488378))

(assert (= (and d!2035473 (not c!1188859)) b!6488379))

(declare-fun m!7276888 () Bool)

(assert (=> d!2035473 m!7276888))

(declare-fun m!7276890 () Bool)

(assert (=> b!6488378 m!7276890))

(declare-fun m!7276892 () Bool)

(assert (=> b!6488378 m!7276892))

(assert (=> d!2035107 d!2035473))

(assert (=> b!6487466 d!2035375))

(declare-fun d!2035475 () Bool)

(declare-fun res!2664769 () Bool)

(declare-fun e!3932287 () Bool)

(assert (=> d!2035475 (=> res!2664769 e!3932287)))

(assert (=> d!2035475 (= res!2664769 ((_ is Nil!65277) (exprs!6251 (h!71726 zl!343))))))

(assert (=> d!2035475 (= (forall!15550 (exprs!6251 (h!71726 zl!343)) lambda!359178) e!3932287)))

(declare-fun b!6488380 () Bool)

(declare-fun e!3932288 () Bool)

(assert (=> b!6488380 (= e!3932287 e!3932288)))

(declare-fun res!2664770 () Bool)

(assert (=> b!6488380 (=> (not res!2664770) (not e!3932288))))

(assert (=> b!6488380 (= res!2664770 (dynLambda!25928 lambda!359178 (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun b!6488381 () Bool)

(assert (=> b!6488381 (= e!3932288 (forall!15550 (t!379027 (exprs!6251 (h!71726 zl!343))) lambda!359178))))

(assert (= (and d!2035475 (not res!2664769)) b!6488380))

(assert (= (and b!6488380 res!2664770) b!6488381))

(declare-fun b_lambda!245639 () Bool)

(assert (=> (not b_lambda!245639) (not b!6488380)))

(declare-fun m!7276894 () Bool)

(assert (=> b!6488380 m!7276894))

(declare-fun m!7276896 () Bool)

(assert (=> b!6488381 m!7276896))

(assert (=> d!2035009 d!2035475))

(declare-fun b!6488382 () Bool)

(declare-fun e!3932290 () List!65401)

(assert (=> b!6488382 (= e!3932290 lt!2388871)))

(declare-fun b!6488384 () Bool)

(declare-fun res!2664772 () Bool)

(declare-fun e!3932289 () Bool)

(assert (=> b!6488384 (=> (not res!2664772) (not e!3932289))))

(declare-fun lt!2389176 () List!65401)

(assert (=> b!6488384 (= res!2664772 (= (size!40426 lt!2389176) (+ (size!40426 (t!379027 lt!2388881)) (size!40426 lt!2388871))))))

(declare-fun b!6488385 () Bool)

(assert (=> b!6488385 (= e!3932289 (or (not (= lt!2388871 Nil!65277)) (= lt!2389176 (t!379027 lt!2388881))))))

(declare-fun b!6488383 () Bool)

(assert (=> b!6488383 (= e!3932290 (Cons!65277 (h!71725 (t!379027 lt!2388881)) (++!14445 (t!379027 (t!379027 lt!2388881)) lt!2388871)))))

(declare-fun d!2035477 () Bool)

(assert (=> d!2035477 e!3932289))

(declare-fun res!2664771 () Bool)

(assert (=> d!2035477 (=> (not res!2664771) (not e!3932289))))

(assert (=> d!2035477 (= res!2664771 (= (content!12440 lt!2389176) ((_ map or) (content!12440 (t!379027 lt!2388881)) (content!12440 lt!2388871))))))

(assert (=> d!2035477 (= lt!2389176 e!3932290)))

(declare-fun c!1188860 () Bool)

(assert (=> d!2035477 (= c!1188860 ((_ is Nil!65277) (t!379027 lt!2388881)))))

(assert (=> d!2035477 (= (++!14445 (t!379027 lt!2388881) lt!2388871) lt!2389176)))

(assert (= (and d!2035477 c!1188860) b!6488382))

(assert (= (and d!2035477 (not c!1188860)) b!6488383))

(assert (= (and d!2035477 res!2664771) b!6488384))

(assert (= (and b!6488384 res!2664772) b!6488385))

(declare-fun m!7276898 () Bool)

(assert (=> b!6488384 m!7276898))

(declare-fun m!7276900 () Bool)

(assert (=> b!6488384 m!7276900))

(assert (=> b!6488384 m!7276008))

(declare-fun m!7276902 () Bool)

(assert (=> b!6488383 m!7276902))

(declare-fun m!7276904 () Bool)

(assert (=> d!2035477 m!7276904))

(declare-fun m!7276906 () Bool)

(assert (=> d!2035477 m!7276906))

(assert (=> d!2035477 m!7276016))

(assert (=> b!6487525 d!2035477))

(declare-fun b!6488386 () Bool)

(declare-fun e!3932292 () Bool)

(declare-fun call!561609 () Bool)

(assert (=> b!6488386 (= e!3932292 call!561609)))

(declare-fun b!6488387 () Bool)

(declare-fun e!3932295 () Bool)

(declare-fun e!3932291 () Bool)

(assert (=> b!6488387 (= e!3932295 e!3932291)))

(declare-fun c!1188861 () Bool)

(assert (=> b!6488387 (= c!1188861 ((_ is Star!16367) lt!2389078))))

(declare-fun d!2035479 () Bool)

(declare-fun res!2664776 () Bool)

(assert (=> d!2035479 (=> res!2664776 e!3932295)))

(assert (=> d!2035479 (= res!2664776 ((_ is ElementMatch!16367) lt!2389078))))

(assert (=> d!2035479 (= (validRegex!8103 lt!2389078) e!3932295)))

(declare-fun bm!561603 () Bool)

(declare-fun call!561610 () Bool)

(declare-fun c!1188862 () Bool)

(assert (=> bm!561603 (= call!561610 (validRegex!8103 (ite c!1188862 (regOne!33247 lt!2389078) (regOne!33246 lt!2389078))))))

(declare-fun b!6488388 () Bool)

(declare-fun res!2664777 () Bool)

(declare-fun e!3932294 () Bool)

(assert (=> b!6488388 (=> res!2664777 e!3932294)))

(assert (=> b!6488388 (= res!2664777 (not ((_ is Concat!25212) lt!2389078)))))

(declare-fun e!3932293 () Bool)

(assert (=> b!6488388 (= e!3932293 e!3932294)))

(declare-fun b!6488389 () Bool)

(declare-fun e!3932296 () Bool)

(assert (=> b!6488389 (= e!3932296 call!561609)))

(declare-fun bm!561604 () Bool)

(declare-fun call!561608 () Bool)

(assert (=> bm!561604 (= call!561608 (validRegex!8103 (ite c!1188861 (reg!16696 lt!2389078) (ite c!1188862 (regTwo!33247 lt!2389078) (regTwo!33246 lt!2389078)))))))

(declare-fun b!6488390 () Bool)

(declare-fun res!2664775 () Bool)

(assert (=> b!6488390 (=> (not res!2664775) (not e!3932296))))

(assert (=> b!6488390 (= res!2664775 call!561610)))

(assert (=> b!6488390 (= e!3932293 e!3932296)))

(declare-fun b!6488391 () Bool)

(assert (=> b!6488391 (= e!3932291 e!3932293)))

(assert (=> b!6488391 (= c!1188862 ((_ is Union!16367) lt!2389078))))

(declare-fun bm!561605 () Bool)

(assert (=> bm!561605 (= call!561609 call!561608)))

(declare-fun b!6488392 () Bool)

(declare-fun e!3932297 () Bool)

(assert (=> b!6488392 (= e!3932297 call!561608)))

(declare-fun b!6488393 () Bool)

(assert (=> b!6488393 (= e!3932291 e!3932297)))

(declare-fun res!2664774 () Bool)

(assert (=> b!6488393 (= res!2664774 (not (nullable!6360 (reg!16696 lt!2389078))))))

(assert (=> b!6488393 (=> (not res!2664774) (not e!3932297))))

(declare-fun b!6488394 () Bool)

(assert (=> b!6488394 (= e!3932294 e!3932292)))

(declare-fun res!2664773 () Bool)

(assert (=> b!6488394 (=> (not res!2664773) (not e!3932292))))

(assert (=> b!6488394 (= res!2664773 call!561610)))

(assert (= (and d!2035479 (not res!2664776)) b!6488387))

(assert (= (and b!6488387 c!1188861) b!6488393))

(assert (= (and b!6488387 (not c!1188861)) b!6488391))

(assert (= (and b!6488393 res!2664774) b!6488392))

(assert (= (and b!6488391 c!1188862) b!6488390))

(assert (= (and b!6488391 (not c!1188862)) b!6488388))

(assert (= (and b!6488390 res!2664775) b!6488389))

(assert (= (and b!6488388 (not res!2664777)) b!6488394))

(assert (= (and b!6488394 res!2664773) b!6488386))

(assert (= (or b!6488389 b!6488386) bm!561605))

(assert (= (or b!6488390 b!6488394) bm!561603))

(assert (= (or b!6488392 bm!561605) bm!561604))

(declare-fun m!7276908 () Bool)

(assert (=> bm!561603 m!7276908))

(declare-fun m!7276910 () Bool)

(assert (=> bm!561604 m!7276910))

(declare-fun m!7276912 () Bool)

(assert (=> b!6488393 m!7276912))

(assert (=> d!2035117 d!2035479))

(declare-fun bs!1646209 () Bool)

(declare-fun d!2035481 () Bool)

(assert (= bs!1646209 (and d!2035481 b!6486640)))

(declare-fun lambda!359252 () Int)

(assert (=> bs!1646209 (= lambda!359252 lambda!359126)))

(declare-fun bs!1646210 () Bool)

(assert (= bs!1646210 (and d!2035481 d!2035473)))

(assert (=> bs!1646210 (= lambda!359252 lambda!359251)))

(declare-fun bs!1646211 () Bool)

(assert (= bs!1646211 (and d!2035481 d!2035183)))

(assert (=> bs!1646211 (= lambda!359252 lambda!359225)))

(declare-fun bs!1646212 () Bool)

(assert (= bs!1646212 (and d!2035481 d!2035173)))

(assert (=> bs!1646212 (= lambda!359252 lambda!359222)))

(declare-fun bs!1646213 () Bool)

(assert (= bs!1646213 (and d!2035481 d!2035185)))

(assert (=> bs!1646213 (= lambda!359252 lambda!359228)))

(declare-fun bs!1646214 () Bool)

(assert (= bs!1646214 (and d!2035481 d!2035009)))

(assert (=> bs!1646214 (= lambda!359252 lambda!359178)))

(declare-fun bs!1646215 () Bool)

(assert (= bs!1646215 (and d!2035481 d!2035471)))

(assert (=> bs!1646215 (= lambda!359252 lambda!359250)))

(declare-fun bs!1646216 () Bool)

(assert (= bs!1646216 (and d!2035481 d!2035379)))

(assert (=> bs!1646216 (= lambda!359252 lambda!359235)))

(declare-fun bs!1646217 () Bool)

(assert (= bs!1646217 (and d!2035481 d!2035453)))

(assert (=> bs!1646217 (= lambda!359252 lambda!359249)))

(declare-fun bs!1646218 () Bool)

(assert (= bs!1646218 (and d!2035481 d!2035083)))

(assert (=> bs!1646218 (= lambda!359252 lambda!359184)))

(declare-fun bs!1646219 () Bool)

(assert (= bs!1646219 (and d!2035481 d!2035073)))

(assert (=> bs!1646219 (= lambda!359252 lambda!359181)))

(declare-fun bs!1646220 () Bool)

(assert (= bs!1646220 (and d!2035481 d!2035109)))

(assert (=> bs!1646220 (= lambda!359252 lambda!359194)))

(declare-fun b!6488395 () Bool)

(declare-fun e!3932301 () Bool)

(assert (=> b!6488395 (= e!3932301 (isEmpty!37470 (t!379027 (unfocusZipperList!1788 (Cons!65278 lt!2388885 Nil!65278)))))))

(declare-fun b!6488396 () Bool)

(declare-fun e!3932300 () Bool)

(declare-fun lt!2389177 () Regex!16367)

(assert (=> b!6488396 (= e!3932300 (= lt!2389177 (head!13210 (unfocusZipperList!1788 (Cons!65278 lt!2388885 Nil!65278)))))))

(declare-fun b!6488397 () Bool)

(assert (=> b!6488397 (= e!3932300 (isUnion!1197 lt!2389177))))

(declare-fun b!6488398 () Bool)

(declare-fun e!3932298 () Regex!16367)

(assert (=> b!6488398 (= e!3932298 (h!71725 (unfocusZipperList!1788 (Cons!65278 lt!2388885 Nil!65278))))))

(declare-fun b!6488399 () Bool)

(declare-fun e!3932302 () Bool)

(declare-fun e!3932303 () Bool)

(assert (=> b!6488399 (= e!3932302 e!3932303)))

(declare-fun c!1188863 () Bool)

(assert (=> b!6488399 (= c!1188863 (isEmpty!37470 (unfocusZipperList!1788 (Cons!65278 lt!2388885 Nil!65278))))))

(declare-fun b!6488400 () Bool)

(assert (=> b!6488400 (= e!3932303 e!3932300)))

(declare-fun c!1188865 () Bool)

(assert (=> b!6488400 (= c!1188865 (isEmpty!37470 (tail!12295 (unfocusZipperList!1788 (Cons!65278 lt!2388885 Nil!65278)))))))

(assert (=> d!2035481 e!3932302))

(declare-fun res!2664779 () Bool)

(assert (=> d!2035481 (=> (not res!2664779) (not e!3932302))))

(assert (=> d!2035481 (= res!2664779 (validRegex!8103 lt!2389177))))

(assert (=> d!2035481 (= lt!2389177 e!3932298)))

(declare-fun c!1188864 () Bool)

(assert (=> d!2035481 (= c!1188864 e!3932301)))

(declare-fun res!2664778 () Bool)

(assert (=> d!2035481 (=> (not res!2664778) (not e!3932301))))

(assert (=> d!2035481 (= res!2664778 ((_ is Cons!65277) (unfocusZipperList!1788 (Cons!65278 lt!2388885 Nil!65278))))))

(assert (=> d!2035481 (forall!15550 (unfocusZipperList!1788 (Cons!65278 lt!2388885 Nil!65278)) lambda!359252)))

(assert (=> d!2035481 (= (generalisedUnion!2211 (unfocusZipperList!1788 (Cons!65278 lt!2388885 Nil!65278))) lt!2389177)))

(declare-fun b!6488401 () Bool)

(declare-fun e!3932299 () Regex!16367)

(assert (=> b!6488401 (= e!3932299 EmptyLang!16367)))

(declare-fun b!6488402 () Bool)

(assert (=> b!6488402 (= e!3932299 (Union!16367 (h!71725 (unfocusZipperList!1788 (Cons!65278 lt!2388885 Nil!65278))) (generalisedUnion!2211 (t!379027 (unfocusZipperList!1788 (Cons!65278 lt!2388885 Nil!65278))))))))

(declare-fun b!6488403 () Bool)

(assert (=> b!6488403 (= e!3932298 e!3932299)))

(declare-fun c!1188866 () Bool)

(assert (=> b!6488403 (= c!1188866 ((_ is Cons!65277) (unfocusZipperList!1788 (Cons!65278 lt!2388885 Nil!65278))))))

(declare-fun b!6488404 () Bool)

(assert (=> b!6488404 (= e!3932303 (isEmptyLang!1767 lt!2389177))))

(assert (= (and d!2035481 res!2664778) b!6488395))

(assert (= (and d!2035481 c!1188864) b!6488398))

(assert (= (and d!2035481 (not c!1188864)) b!6488403))

(assert (= (and b!6488403 c!1188866) b!6488402))

(assert (= (and b!6488403 (not c!1188866)) b!6488401))

(assert (= (and d!2035481 res!2664779) b!6488399))

(assert (= (and b!6488399 c!1188863) b!6488404))

(assert (= (and b!6488399 (not c!1188863)) b!6488400))

(assert (= (and b!6488400 c!1188865) b!6488396))

(assert (= (and b!6488400 (not c!1188865)) b!6488397))

(declare-fun m!7276914 () Bool)

(assert (=> d!2035481 m!7276914))

(assert (=> d!2035481 m!7276070))

(declare-fun m!7276916 () Bool)

(assert (=> d!2035481 m!7276916))

(assert (=> b!6488399 m!7276070))

(declare-fun m!7276918 () Bool)

(assert (=> b!6488399 m!7276918))

(assert (=> b!6488396 m!7276070))

(declare-fun m!7276920 () Bool)

(assert (=> b!6488396 m!7276920))

(declare-fun m!7276922 () Bool)

(assert (=> b!6488404 m!7276922))

(assert (=> b!6488400 m!7276070))

(declare-fun m!7276924 () Bool)

(assert (=> b!6488400 m!7276924))

(assert (=> b!6488400 m!7276924))

(declare-fun m!7276926 () Bool)

(assert (=> b!6488400 m!7276926))

(declare-fun m!7276928 () Bool)

(assert (=> b!6488397 m!7276928))

(declare-fun m!7276930 () Bool)

(assert (=> b!6488402 m!7276930))

(declare-fun m!7276932 () Bool)

(assert (=> b!6488395 m!7276932))

(assert (=> d!2035117 d!2035481))

(declare-fun bs!1646221 () Bool)

(declare-fun d!2035483 () Bool)

(assert (= bs!1646221 (and d!2035483 b!6486640)))

(declare-fun lambda!359253 () Int)

(assert (=> bs!1646221 (= lambda!359253 lambda!359126)))

(declare-fun bs!1646222 () Bool)

(assert (= bs!1646222 (and d!2035483 d!2035473)))

(assert (=> bs!1646222 (= lambda!359253 lambda!359251)))

(declare-fun bs!1646223 () Bool)

(assert (= bs!1646223 (and d!2035483 d!2035183)))

(assert (=> bs!1646223 (= lambda!359253 lambda!359225)))

(declare-fun bs!1646224 () Bool)

(assert (= bs!1646224 (and d!2035483 d!2035173)))

(assert (=> bs!1646224 (= lambda!359253 lambda!359222)))

(declare-fun bs!1646225 () Bool)

(assert (= bs!1646225 (and d!2035483 d!2035185)))

(assert (=> bs!1646225 (= lambda!359253 lambda!359228)))

(declare-fun bs!1646226 () Bool)

(assert (= bs!1646226 (and d!2035483 d!2035009)))

(assert (=> bs!1646226 (= lambda!359253 lambda!359178)))

(declare-fun bs!1646227 () Bool)

(assert (= bs!1646227 (and d!2035483 d!2035471)))

(assert (=> bs!1646227 (= lambda!359253 lambda!359250)))

(declare-fun bs!1646228 () Bool)

(assert (= bs!1646228 (and d!2035483 d!2035379)))

(assert (=> bs!1646228 (= lambda!359253 lambda!359235)))

(declare-fun bs!1646229 () Bool)

(assert (= bs!1646229 (and d!2035483 d!2035453)))

(assert (=> bs!1646229 (= lambda!359253 lambda!359249)))

(declare-fun bs!1646230 () Bool)

(assert (= bs!1646230 (and d!2035483 d!2035083)))

(assert (=> bs!1646230 (= lambda!359253 lambda!359184)))

(declare-fun bs!1646231 () Bool)

(assert (= bs!1646231 (and d!2035483 d!2035481)))

(assert (=> bs!1646231 (= lambda!359253 lambda!359252)))

(declare-fun bs!1646232 () Bool)

(assert (= bs!1646232 (and d!2035483 d!2035073)))

(assert (=> bs!1646232 (= lambda!359253 lambda!359181)))

(declare-fun bs!1646233 () Bool)

(assert (= bs!1646233 (and d!2035483 d!2035109)))

(assert (=> bs!1646233 (= lambda!359253 lambda!359194)))

(declare-fun lt!2389178 () List!65401)

(assert (=> d!2035483 (forall!15550 lt!2389178 lambda!359253)))

(declare-fun e!3932304 () List!65401)

(assert (=> d!2035483 (= lt!2389178 e!3932304)))

(declare-fun c!1188867 () Bool)

(assert (=> d!2035483 (= c!1188867 ((_ is Cons!65278) (Cons!65278 lt!2388885 Nil!65278)))))

(assert (=> d!2035483 (= (unfocusZipperList!1788 (Cons!65278 lt!2388885 Nil!65278)) lt!2389178)))

(declare-fun b!6488405 () Bool)

(assert (=> b!6488405 (= e!3932304 (Cons!65277 (generalisedConcat!1964 (exprs!6251 (h!71726 (Cons!65278 lt!2388885 Nil!65278)))) (unfocusZipperList!1788 (t!379028 (Cons!65278 lt!2388885 Nil!65278)))))))

(declare-fun b!6488406 () Bool)

(assert (=> b!6488406 (= e!3932304 Nil!65277)))

(assert (= (and d!2035483 c!1188867) b!6488405))

(assert (= (and d!2035483 (not c!1188867)) b!6488406))

(declare-fun m!7276934 () Bool)

(assert (=> d!2035483 m!7276934))

(declare-fun m!7276936 () Bool)

(assert (=> b!6488405 m!7276936))

(declare-fun m!7276938 () Bool)

(assert (=> b!6488405 m!7276938))

(assert (=> d!2035117 d!2035483))

(declare-fun d!2035485 () Bool)

(declare-fun c!1188868 () Bool)

(assert (=> d!2035485 (= c!1188868 (isEmpty!37468 (tail!12294 (t!379026 s!2326))))))

(declare-fun e!3932305 () Bool)

(assert (=> d!2035485 (= (matchZipper!2379 (derivationStepZipper!2333 lt!2388893 (head!13209 (t!379026 s!2326))) (tail!12294 (t!379026 s!2326))) e!3932305)))

(declare-fun b!6488407 () Bool)

(assert (=> b!6488407 (= e!3932305 (nullableZipper!2124 (derivationStepZipper!2333 lt!2388893 (head!13209 (t!379026 s!2326)))))))

(declare-fun b!6488408 () Bool)

(assert (=> b!6488408 (= e!3932305 (matchZipper!2379 (derivationStepZipper!2333 (derivationStepZipper!2333 lt!2388893 (head!13209 (t!379026 s!2326))) (head!13209 (tail!12294 (t!379026 s!2326)))) (tail!12294 (tail!12294 (t!379026 s!2326)))))))

(assert (= (and d!2035485 c!1188868) b!6488407))

(assert (= (and d!2035485 (not c!1188868)) b!6488408))

(assert (=> d!2035485 m!7275866))

(assert (=> d!2035485 m!7276302))

(assert (=> b!6488407 m!7276238))

(declare-fun m!7276940 () Bool)

(assert (=> b!6488407 m!7276940))

(assert (=> b!6488408 m!7275866))

(assert (=> b!6488408 m!7276306))

(assert (=> b!6488408 m!7276238))

(assert (=> b!6488408 m!7276306))

(declare-fun m!7276942 () Bool)

(assert (=> b!6488408 m!7276942))

(assert (=> b!6488408 m!7275866))

(assert (=> b!6488408 m!7276310))

(assert (=> b!6488408 m!7276942))

(assert (=> b!6488408 m!7276310))

(declare-fun m!7276944 () Bool)

(assert (=> b!6488408 m!7276944))

(assert (=> b!6487737 d!2035485))

(declare-fun bs!1646234 () Bool)

(declare-fun d!2035487 () Bool)

(assert (= bs!1646234 (and d!2035487 b!6486628)))

(declare-fun lambda!359254 () Int)

(assert (=> bs!1646234 (= (= (head!13209 (t!379026 s!2326)) (h!71724 s!2326)) (= lambda!359254 lambda!359120))))

(declare-fun bs!1646235 () Bool)

(assert (= bs!1646235 (and d!2035487 d!2035105)))

(assert (=> bs!1646235 (= (= (head!13209 (t!379026 s!2326)) (h!71724 s!2326)) (= lambda!359254 lambda!359193))))

(declare-fun bs!1646236 () Bool)

(assert (= bs!1646236 (and d!2035487 d!2035229)))

(assert (=> bs!1646236 (= lambda!359254 lambda!359232)))

(assert (=> d!2035487 true))

(assert (=> d!2035487 (= (derivationStepZipper!2333 lt!2388893 (head!13209 (t!379026 s!2326))) (flatMap!1872 lt!2388893 lambda!359254))))

(declare-fun bs!1646237 () Bool)

(assert (= bs!1646237 d!2035487))

(declare-fun m!7276946 () Bool)

(assert (=> bs!1646237 m!7276946))

(assert (=> b!6487737 d!2035487))

(assert (=> b!6487737 d!2035231))

(assert (=> b!6487737 d!2035233))

(assert (=> b!6487729 d!2035097))

(declare-fun d!2035489 () Bool)

(assert (=> d!2035489 (= ($colon$colon!2219 (exprs!6251 lt!2388870) (ite (or c!1188552 c!1188548) (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (h!71725 (exprs!6251 (h!71726 zl!343))))) (Cons!65277 (ite (or c!1188552 c!1188548) (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (h!71725 (exprs!6251 (h!71726 zl!343)))) (exprs!6251 lt!2388870)))))

(assert (=> bm!561450 d!2035489))

(declare-fun d!2035491 () Bool)

(declare-fun c!1188869 () Bool)

(assert (=> d!2035491 (= c!1188869 (isEmpty!37468 (tail!12294 s!2326)))))

(declare-fun e!3932306 () Bool)

(assert (=> d!2035491 (= (matchZipper!2379 (derivationStepZipper!2333 lt!2388869 (head!13209 s!2326)) (tail!12294 s!2326)) e!3932306)))

(declare-fun b!6488409 () Bool)

(assert (=> b!6488409 (= e!3932306 (nullableZipper!2124 (derivationStepZipper!2333 lt!2388869 (head!13209 s!2326))))))

(declare-fun b!6488410 () Bool)

(assert (=> b!6488410 (= e!3932306 (matchZipper!2379 (derivationStepZipper!2333 (derivationStepZipper!2333 lt!2388869 (head!13209 s!2326)) (head!13209 (tail!12294 s!2326))) (tail!12294 (tail!12294 s!2326))))))

(assert (= (and d!2035491 c!1188869) b!6488409))

(assert (= (and d!2035491 (not c!1188869)) b!6488410))

(assert (=> d!2035491 m!7275894))

(assert (=> d!2035491 m!7276024))

(assert (=> b!6488409 m!7275892))

(declare-fun m!7276948 () Bool)

(assert (=> b!6488409 m!7276948))

(assert (=> b!6488410 m!7275894))

(assert (=> b!6488410 m!7276518))

(assert (=> b!6488410 m!7275892))

(assert (=> b!6488410 m!7276518))

(declare-fun m!7276950 () Bool)

(assert (=> b!6488410 m!7276950))

(assert (=> b!6488410 m!7275894))

(assert (=> b!6488410 m!7276510))

(assert (=> b!6488410 m!7276950))

(assert (=> b!6488410 m!7276510))

(declare-fun m!7276952 () Bool)

(assert (=> b!6488410 m!7276952))

(assert (=> b!6487461 d!2035491))

(declare-fun bs!1646238 () Bool)

(declare-fun d!2035493 () Bool)

(assert (= bs!1646238 (and d!2035493 b!6486628)))

(declare-fun lambda!359255 () Int)

(assert (=> bs!1646238 (= (= (head!13209 s!2326) (h!71724 s!2326)) (= lambda!359255 lambda!359120))))

(declare-fun bs!1646239 () Bool)

(assert (= bs!1646239 (and d!2035493 d!2035105)))

(assert (=> bs!1646239 (= (= (head!13209 s!2326) (h!71724 s!2326)) (= lambda!359255 lambda!359193))))

(declare-fun bs!1646240 () Bool)

(assert (= bs!1646240 (and d!2035493 d!2035229)))

(assert (=> bs!1646240 (= (= (head!13209 s!2326) (head!13209 (t!379026 s!2326))) (= lambda!359255 lambda!359232))))

(declare-fun bs!1646241 () Bool)

(assert (= bs!1646241 (and d!2035493 d!2035487)))

(assert (=> bs!1646241 (= (= (head!13209 s!2326) (head!13209 (t!379026 s!2326))) (= lambda!359255 lambda!359254))))

(assert (=> d!2035493 true))

(assert (=> d!2035493 (= (derivationStepZipper!2333 lt!2388869 (head!13209 s!2326)) (flatMap!1872 lt!2388869 lambda!359255))))

(declare-fun bs!1646242 () Bool)

(assert (= bs!1646242 d!2035493))

(declare-fun m!7276954 () Bool)

(assert (=> bs!1646242 m!7276954))

(assert (=> b!6487461 d!2035493))

(assert (=> b!6487461 d!2035323))

(assert (=> b!6487461 d!2035307))

(assert (=> d!2034965 d!2034963))

(declare-fun d!2035495 () Bool)

(assert (=> d!2035495 (= (flatMap!1872 z!1189 lambda!359120) (dynLambda!25927 lambda!359120 (h!71726 zl!343)))))

(assert (=> d!2035495 true))

(declare-fun _$13!3708 () Unit!158799)

(assert (=> d!2035495 (= (choose!48154 z!1189 (h!71726 zl!343) lambda!359120) _$13!3708)))

(declare-fun b_lambda!245641 () Bool)

(assert (=> (not b_lambda!245641) (not d!2035495)))

(declare-fun bs!1646243 () Bool)

(assert (= bs!1646243 d!2035495))

(assert (=> bs!1646243 m!7274934))

(assert (=> bs!1646243 m!7275614))

(assert (=> d!2034965 d!2035495))

(assert (=> bm!561493 d!2035273))

(declare-fun b!6488411 () Bool)

(declare-fun res!2664784 () Bool)

(declare-fun e!3932307 () Bool)

(assert (=> b!6488411 (=> res!2664784 e!3932307)))

(assert (=> b!6488411 (= res!2664784 (not (isEmpty!37468 (tail!12294 (_2!36649 (get!22634 lt!2389108))))))))

(declare-fun b!6488413 () Bool)

(declare-fun e!3932312 () Bool)

(assert (=> b!6488413 (= e!3932312 (= (head!13209 (_2!36649 (get!22634 lt!2389108))) (c!1188383 (regTwo!33246 r!7292))))))

(declare-fun b!6488414 () Bool)

(declare-fun res!2664781 () Bool)

(declare-fun e!3932309 () Bool)

(assert (=> b!6488414 (=> res!2664781 e!3932309)))

(assert (=> b!6488414 (= res!2664781 e!3932312)))

(declare-fun res!2664782 () Bool)

(assert (=> b!6488414 (=> (not res!2664782) (not e!3932312))))

(declare-fun lt!2389179 () Bool)

(assert (=> b!6488414 (= res!2664782 lt!2389179)))

(declare-fun b!6488415 () Bool)

(declare-fun e!3932313 () Bool)

(assert (=> b!6488415 (= e!3932313 e!3932307)))

(declare-fun res!2664787 () Bool)

(assert (=> b!6488415 (=> res!2664787 e!3932307)))

(declare-fun call!561611 () Bool)

(assert (=> b!6488415 (= res!2664787 call!561611)))

(declare-fun b!6488416 () Bool)

(declare-fun res!2664785 () Bool)

(assert (=> b!6488416 (=> res!2664785 e!3932309)))

(assert (=> b!6488416 (= res!2664785 (not ((_ is ElementMatch!16367) (regTwo!33246 r!7292))))))

(declare-fun e!3932308 () Bool)

(assert (=> b!6488416 (= e!3932308 e!3932309)))

(declare-fun bm!561606 () Bool)

(assert (=> bm!561606 (= call!561611 (isEmpty!37468 (_2!36649 (get!22634 lt!2389108))))))

(declare-fun b!6488417 () Bool)

(assert (=> b!6488417 (= e!3932309 e!3932313)))

(declare-fun res!2664783 () Bool)

(assert (=> b!6488417 (=> (not res!2664783) (not e!3932313))))

(assert (=> b!6488417 (= res!2664783 (not lt!2389179))))

(declare-fun b!6488418 () Bool)

(declare-fun e!3932310 () Bool)

(assert (=> b!6488418 (= e!3932310 e!3932308)))

(declare-fun c!1188872 () Bool)

(assert (=> b!6488418 (= c!1188872 ((_ is EmptyLang!16367) (regTwo!33246 r!7292)))))

(declare-fun b!6488419 () Bool)

(declare-fun res!2664786 () Bool)

(assert (=> b!6488419 (=> (not res!2664786) (not e!3932312))))

(assert (=> b!6488419 (= res!2664786 (isEmpty!37468 (tail!12294 (_2!36649 (get!22634 lt!2389108)))))))

(declare-fun b!6488420 () Bool)

(declare-fun e!3932311 () Bool)

(assert (=> b!6488420 (= e!3932311 (nullable!6360 (regTwo!33246 r!7292)))))

(declare-fun b!6488421 () Bool)

(assert (=> b!6488421 (= e!3932310 (= lt!2389179 call!561611))))

(declare-fun b!6488422 () Bool)

(declare-fun res!2664780 () Bool)

(assert (=> b!6488422 (=> (not res!2664780) (not e!3932312))))

(assert (=> b!6488422 (= res!2664780 (not call!561611))))

(declare-fun b!6488423 () Bool)

(assert (=> b!6488423 (= e!3932308 (not lt!2389179))))

(declare-fun b!6488424 () Bool)

(assert (=> b!6488424 (= e!3932307 (not (= (head!13209 (_2!36649 (get!22634 lt!2389108))) (c!1188383 (regTwo!33246 r!7292)))))))

(declare-fun d!2035497 () Bool)

(assert (=> d!2035497 e!3932310))

(declare-fun c!1188871 () Bool)

(assert (=> d!2035497 (= c!1188871 ((_ is EmptyExpr!16367) (regTwo!33246 r!7292)))))

(assert (=> d!2035497 (= lt!2389179 e!3932311)))

(declare-fun c!1188870 () Bool)

(assert (=> d!2035497 (= c!1188870 (isEmpty!37468 (_2!36649 (get!22634 lt!2389108))))))

(assert (=> d!2035497 (validRegex!8103 (regTwo!33246 r!7292))))

(assert (=> d!2035497 (= (matchR!8550 (regTwo!33246 r!7292) (_2!36649 (get!22634 lt!2389108))) lt!2389179)))

(declare-fun b!6488412 () Bool)

(assert (=> b!6488412 (= e!3932311 (matchR!8550 (derivativeStep!5063 (regTwo!33246 r!7292) (head!13209 (_2!36649 (get!22634 lt!2389108)))) (tail!12294 (_2!36649 (get!22634 lt!2389108)))))))

(assert (= (and d!2035497 c!1188870) b!6488420))

(assert (= (and d!2035497 (not c!1188870)) b!6488412))

(assert (= (and d!2035497 c!1188871) b!6488421))

(assert (= (and d!2035497 (not c!1188871)) b!6488418))

(assert (= (and b!6488418 c!1188872) b!6488423))

(assert (= (and b!6488418 (not c!1188872)) b!6488416))

(assert (= (and b!6488416 (not res!2664785)) b!6488414))

(assert (= (and b!6488414 res!2664782) b!6488422))

(assert (= (and b!6488422 res!2664780) b!6488419))

(assert (= (and b!6488419 res!2664786) b!6488413))

(assert (= (and b!6488414 (not res!2664781)) b!6488417))

(assert (= (and b!6488417 res!2664783) b!6488415))

(assert (= (and b!6488415 (not res!2664787)) b!6488411))

(assert (= (and b!6488411 (not res!2664784)) b!6488424))

(assert (= (or b!6488421 b!6488415 b!6488422) bm!561606))

(declare-fun m!7276956 () Bool)

(assert (=> b!6488411 m!7276956))

(assert (=> b!6488411 m!7276956))

(declare-fun m!7276958 () Bool)

(assert (=> b!6488411 m!7276958))

(assert (=> b!6488420 m!7275874))

(declare-fun m!7276960 () Bool)

(assert (=> d!2035497 m!7276960))

(assert (=> d!2035497 m!7275878))

(assert (=> b!6488419 m!7276956))

(assert (=> b!6488419 m!7276956))

(assert (=> b!6488419 m!7276958))

(declare-fun m!7276962 () Bool)

(assert (=> b!6488424 m!7276962))

(assert (=> b!6488413 m!7276962))

(assert (=> b!6488412 m!7276962))

(assert (=> b!6488412 m!7276962))

(declare-fun m!7276964 () Bool)

(assert (=> b!6488412 m!7276964))

(assert (=> b!6488412 m!7276956))

(assert (=> b!6488412 m!7276964))

(assert (=> b!6488412 m!7276956))

(declare-fun m!7276966 () Bool)

(assert (=> b!6488412 m!7276966))

(assert (=> bm!561606 m!7276960))

(assert (=> b!6487694 d!2035497))

(declare-fun d!2035499 () Bool)

(assert (=> d!2035499 (= (get!22634 lt!2389108) (v!52436 lt!2389108))))

(assert (=> b!6487694 d!2035499))

(declare-fun d!2035501 () Bool)

(assert (=> d!2035501 (= (Exists!3437 (ite c!1188628 lambda!359189 lambda!359190)) (choose!48164 (ite c!1188628 lambda!359189 lambda!359190)))))

(declare-fun bs!1646244 () Bool)

(assert (= bs!1646244 d!2035501))

(declare-fun m!7276968 () Bool)

(assert (=> bs!1646244 m!7276968))

(assert (=> bm!561492 d!2035501))

(assert (=> d!2035177 d!2035181))

(assert (=> d!2035177 d!2035179))

(declare-fun e!3932316 () Bool)

(declare-fun d!2035503 () Bool)

(assert (=> d!2035503 (= (matchZipper!2379 ((_ map or) lt!2388893 lt!2388867) (t!379026 s!2326)) e!3932316)))

(declare-fun res!2664790 () Bool)

(assert (=> d!2035503 (=> res!2664790 e!3932316)))

(assert (=> d!2035503 (= res!2664790 (matchZipper!2379 lt!2388893 (t!379026 s!2326)))))

(assert (=> d!2035503 true))

(declare-fun _$48!2243 () Unit!158799)

(assert (=> d!2035503 (= (choose!48168 lt!2388893 lt!2388867 (t!379026 s!2326)) _$48!2243)))

(declare-fun b!6488427 () Bool)

(assert (=> b!6488427 (= e!3932316 (matchZipper!2379 lt!2388867 (t!379026 s!2326)))))

(assert (= (and d!2035503 (not res!2664790)) b!6488427))

(assert (=> d!2035503 m!7274916))

(assert (=> d!2035503 m!7274914))

(assert (=> b!6488427 m!7275074))

(assert (=> d!2035177 d!2035503))

(assert (=> b!6487435 d!2035403))

(declare-fun b!6488428 () Bool)

(declare-fun e!3932317 () (InoxSet Context!11502))

(declare-fun call!561616 () (InoxSet Context!11502))

(declare-fun call!561615 () (InoxSet Context!11502))

(assert (=> b!6488428 (= e!3932317 ((_ map or) call!561616 call!561615))))

(declare-fun b!6488429 () Bool)

(declare-fun e!3932321 () (InoxSet Context!11502))

(declare-fun call!561613 () (InoxSet Context!11502))

(assert (=> b!6488429 (= e!3932321 ((_ map or) call!561615 call!561613))))

(declare-fun bm!561607 () Bool)

(declare-fun call!561614 () (InoxSet Context!11502))

(assert (=> bm!561607 (= call!561614 call!561613)))

(declare-fun b!6488430 () Bool)

(declare-fun e!3932322 () (InoxSet Context!11502))

(assert (=> b!6488430 (= e!3932321 e!3932322)))

(declare-fun c!1188873 () Bool)

(assert (=> b!6488430 (= c!1188873 ((_ is Concat!25212) (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))))))

(declare-fun b!6488431 () Bool)

(declare-fun e!3932320 () (InoxSet Context!11502))

(assert (=> b!6488431 (= e!3932320 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (t!379027 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))) true))))

(declare-fun b!6488432 () Bool)

(declare-fun e!3932319 () Bool)

(assert (=> b!6488432 (= e!3932319 (nullable!6360 (regOne!33246 (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343))))))))))))

(declare-fun call!561612 () List!65401)

(declare-fun c!1188874 () Bool)

(declare-fun bm!561608 () Bool)

(assert (=> bm!561608 (= call!561615 (derivationStepZipperDown!1615 (ite c!1188874 (regTwo!33247 (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))) (regOne!33246 (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343))))))))) (ite c!1188874 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))) (Context!11503 call!561612)) (h!71724 s!2326)))))

(declare-fun call!561617 () List!65401)

(declare-fun c!1188877 () Bool)

(declare-fun bm!561609 () Bool)

(assert (=> bm!561609 (= call!561616 (derivationStepZipperDown!1615 (ite c!1188874 (regOne!33247 (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))) (ite c!1188877 (regTwo!33246 (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))) (ite c!1188873 (regOne!33246 (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))) (reg!16696 (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343))))))))))) (ite (or c!1188874 c!1188877) (Context!11503 (t!379027 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))) (Context!11503 call!561617)) (h!71724 s!2326)))))

(declare-fun bm!561610 () Bool)

(assert (=> bm!561610 (= call!561617 call!561612)))

(declare-fun b!6488433 () Bool)

(declare-fun e!3932318 () (InoxSet Context!11502))

(assert (=> b!6488433 (= e!3932318 call!561614)))

(declare-fun b!6488434 () Bool)

(assert (=> b!6488434 (= e!3932322 call!561614)))

(declare-fun b!6488435 () Bool)

(assert (=> b!6488435 (= e!3932318 ((as const (Array Context!11502 Bool)) false))))

(declare-fun bm!561611 () Bool)

(assert (=> bm!561611 (= call!561612 ($colon$colon!2219 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343))))))))) (ite (or c!1188877 c!1188873) (regTwo!33246 (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))) (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343))))))))))))

(declare-fun b!6488436 () Bool)

(assert (=> b!6488436 (= c!1188877 e!3932319)))

(declare-fun res!2664791 () Bool)

(assert (=> b!6488436 (=> (not res!2664791) (not e!3932319))))

(assert (=> b!6488436 (= res!2664791 ((_ is Concat!25212) (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))))))

(assert (=> b!6488436 (= e!3932317 e!3932321)))

(declare-fun b!6488437 () Bool)

(declare-fun c!1188875 () Bool)

(assert (=> b!6488437 (= c!1188875 ((_ is Star!16367) (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))))))

(assert (=> b!6488437 (= e!3932322 e!3932318)))

(declare-fun bm!561612 () Bool)

(assert (=> bm!561612 (= call!561613 call!561616)))

(declare-fun b!6488438 () Bool)

(assert (=> b!6488438 (= e!3932320 e!3932317)))

(assert (=> b!6488438 (= c!1188874 ((_ is Union!16367) (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))))))

(declare-fun d!2035505 () Bool)

(declare-fun c!1188876 () Bool)

(assert (=> d!2035505 (= c!1188876 (and ((_ is ElementMatch!16367) (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))) (= (c!1188383 (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))) (h!71724 s!2326))))))

(assert (=> d!2035505 (= (derivationStepZipperDown!1615 (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343))))))) (Context!11503 (t!379027 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))) (h!71724 s!2326)) e!3932320)))

(assert (= (and d!2035505 c!1188876) b!6488431))

(assert (= (and d!2035505 (not c!1188876)) b!6488438))

(assert (= (and b!6488438 c!1188874) b!6488428))

(assert (= (and b!6488438 (not c!1188874)) b!6488436))

(assert (= (and b!6488436 res!2664791) b!6488432))

(assert (= (and b!6488436 c!1188877) b!6488429))

(assert (= (and b!6488436 (not c!1188877)) b!6488430))

(assert (= (and b!6488430 c!1188873) b!6488434))

(assert (= (and b!6488430 (not c!1188873)) b!6488437))

(assert (= (and b!6488437 c!1188875) b!6488433))

(assert (= (and b!6488437 (not c!1188875)) b!6488435))

(assert (= (or b!6488434 b!6488433) bm!561610))

(assert (= (or b!6488434 b!6488433) bm!561607))

(assert (= (or b!6488429 bm!561610) bm!561611))

(assert (= (or b!6488429 bm!561607) bm!561612))

(assert (= (or b!6488428 b!6488429) bm!561608))

(assert (= (or b!6488428 bm!561612) bm!561609))

(declare-fun m!7276970 () Bool)

(assert (=> bm!561611 m!7276970))

(declare-fun m!7276972 () Bool)

(assert (=> bm!561608 m!7276972))

(declare-fun m!7276974 () Bool)

(assert (=> b!6488432 m!7276974))

(declare-fun m!7276976 () Bool)

(assert (=> b!6488431 m!7276976))

(declare-fun m!7276978 () Bool)

(assert (=> bm!561609 m!7276978))

(assert (=> bm!561452 d!2035505))

(assert (=> d!2035033 d!2035415))

(assert (=> d!2035033 d!2035253))

(declare-fun b!6488439 () Bool)

(declare-fun e!3932324 () Bool)

(declare-fun call!561619 () Bool)

(assert (=> b!6488439 (= e!3932324 call!561619)))

(declare-fun b!6488440 () Bool)

(declare-fun e!3932327 () Bool)

(declare-fun e!3932323 () Bool)

(assert (=> b!6488440 (= e!3932327 e!3932323)))

(declare-fun c!1188878 () Bool)

(assert (=> b!6488440 (= c!1188878 ((_ is Star!16367) lt!2388899))))

(declare-fun d!2035507 () Bool)

(declare-fun res!2664795 () Bool)

(assert (=> d!2035507 (=> res!2664795 e!3932327)))

(assert (=> d!2035507 (= res!2664795 ((_ is ElementMatch!16367) lt!2388899))))

(assert (=> d!2035507 (= (validRegex!8103 lt!2388899) e!3932327)))

(declare-fun bm!561613 () Bool)

(declare-fun call!561620 () Bool)

(declare-fun c!1188879 () Bool)

(assert (=> bm!561613 (= call!561620 (validRegex!8103 (ite c!1188879 (regOne!33247 lt!2388899) (regOne!33246 lt!2388899))))))

(declare-fun b!6488441 () Bool)

(declare-fun res!2664796 () Bool)

(declare-fun e!3932326 () Bool)

(assert (=> b!6488441 (=> res!2664796 e!3932326)))

(assert (=> b!6488441 (= res!2664796 (not ((_ is Concat!25212) lt!2388899)))))

(declare-fun e!3932325 () Bool)

(assert (=> b!6488441 (= e!3932325 e!3932326)))

(declare-fun b!6488442 () Bool)

(declare-fun e!3932328 () Bool)

(assert (=> b!6488442 (= e!3932328 call!561619)))

(declare-fun bm!561614 () Bool)

(declare-fun call!561618 () Bool)

(assert (=> bm!561614 (= call!561618 (validRegex!8103 (ite c!1188878 (reg!16696 lt!2388899) (ite c!1188879 (regTwo!33247 lt!2388899) (regTwo!33246 lt!2388899)))))))

(declare-fun b!6488443 () Bool)

(declare-fun res!2664794 () Bool)

(assert (=> b!6488443 (=> (not res!2664794) (not e!3932328))))

(assert (=> b!6488443 (= res!2664794 call!561620)))

(assert (=> b!6488443 (= e!3932325 e!3932328)))

(declare-fun b!6488444 () Bool)

(assert (=> b!6488444 (= e!3932323 e!3932325)))

(assert (=> b!6488444 (= c!1188879 ((_ is Union!16367) lt!2388899))))

(declare-fun bm!561615 () Bool)

(assert (=> bm!561615 (= call!561619 call!561618)))

(declare-fun b!6488445 () Bool)

(declare-fun e!3932329 () Bool)

(assert (=> b!6488445 (= e!3932329 call!561618)))

(declare-fun b!6488446 () Bool)

(assert (=> b!6488446 (= e!3932323 e!3932329)))

(declare-fun res!2664793 () Bool)

(assert (=> b!6488446 (= res!2664793 (not (nullable!6360 (reg!16696 lt!2388899))))))

(assert (=> b!6488446 (=> (not res!2664793) (not e!3932329))))

(declare-fun b!6488447 () Bool)

(assert (=> b!6488447 (= e!3932326 e!3932324)))

(declare-fun res!2664792 () Bool)

(assert (=> b!6488447 (=> (not res!2664792) (not e!3932324))))

(assert (=> b!6488447 (= res!2664792 call!561620)))

(assert (= (and d!2035507 (not res!2664795)) b!6488440))

(assert (= (and b!6488440 c!1188878) b!6488446))

(assert (= (and b!6488440 (not c!1188878)) b!6488444))

(assert (= (and b!6488446 res!2664793) b!6488445))

(assert (= (and b!6488444 c!1188879) b!6488443))

(assert (= (and b!6488444 (not c!1188879)) b!6488441))

(assert (= (and b!6488443 res!2664794) b!6488442))

(assert (= (and b!6488441 (not res!2664796)) b!6488447))

(assert (= (and b!6488447 res!2664792) b!6488439))

(assert (= (or b!6488442 b!6488439) bm!561615))

(assert (= (or b!6488443 b!6488447) bm!561613))

(assert (= (or b!6488445 bm!561615) bm!561614))

(declare-fun m!7276980 () Bool)

(assert (=> bm!561613 m!7276980))

(declare-fun m!7276982 () Bool)

(assert (=> bm!561614 m!7276982))

(declare-fun m!7276984 () Bool)

(assert (=> b!6488446 m!7276984))

(assert (=> b!6487513 d!2035507))

(assert (=> d!2035103 d!2035099))

(declare-fun d!2035509 () Bool)

(assert (=> d!2035509 (= (flatMap!1872 lt!2388869 lambda!359120) (dynLambda!25927 lambda!359120 lt!2388885))))

(assert (=> d!2035509 true))

(declare-fun _$13!3709 () Unit!158799)

(assert (=> d!2035509 (= (choose!48154 lt!2388869 lt!2388885 lambda!359120) _$13!3709)))

(declare-fun b_lambda!245643 () Bool)

(assert (=> (not b_lambda!245643) (not d!2035509)))

(declare-fun bs!1646245 () Bool)

(assert (= bs!1646245 d!2035509))

(assert (=> bs!1646245 m!7274906))

(assert (=> bs!1646245 m!7276040))

(assert (=> d!2035103 d!2035509))

(declare-fun bs!1646246 () Bool)

(declare-fun d!2035511 () Bool)

(assert (= bs!1646246 (and d!2035511 d!2035423)))

(declare-fun lambda!359256 () Int)

(assert (=> bs!1646246 (= lambda!359256 lambda!359244)))

(declare-fun bs!1646247 () Bool)

(assert (= bs!1646247 (and d!2035511 d!2035425)))

(assert (=> bs!1646247 (= lambda!359256 lambda!359245)))

(declare-fun bs!1646248 () Bool)

(assert (= bs!1646248 (and d!2035511 d!2035435)))

(assert (=> bs!1646248 (= lambda!359256 lambda!359246)))

(assert (=> d!2035511 (= (nullableZipper!2124 lt!2388913) (exists!2617 lt!2388913 lambda!359256))))

(declare-fun bs!1646249 () Bool)

(assert (= bs!1646249 d!2035511))

(declare-fun m!7276986 () Bool)

(assert (=> bs!1646249 m!7276986))

(assert (=> b!6487462 d!2035511))

(declare-fun d!2035513 () Bool)

(declare-fun res!2664797 () Bool)

(declare-fun e!3932330 () Bool)

(assert (=> d!2035513 (=> res!2664797 e!3932330)))

(assert (=> d!2035513 (= res!2664797 ((_ is Nil!65277) (exprs!6251 setElem!44193)))))

(assert (=> d!2035513 (= (forall!15550 (exprs!6251 setElem!44193) lambda!359194) e!3932330)))

(declare-fun b!6488448 () Bool)

(declare-fun e!3932331 () Bool)

(assert (=> b!6488448 (= e!3932330 e!3932331)))

(declare-fun res!2664798 () Bool)

(assert (=> b!6488448 (=> (not res!2664798) (not e!3932331))))

(assert (=> b!6488448 (= res!2664798 (dynLambda!25928 lambda!359194 (h!71725 (exprs!6251 setElem!44193))))))

(declare-fun b!6488449 () Bool)

(assert (=> b!6488449 (= e!3932331 (forall!15550 (t!379027 (exprs!6251 setElem!44193)) lambda!359194))))

(assert (= (and d!2035513 (not res!2664797)) b!6488448))

(assert (= (and b!6488448 res!2664798) b!6488449))

(declare-fun b_lambda!245645 () Bool)

(assert (=> (not b_lambda!245645) (not b!6488448)))

(declare-fun m!7276988 () Bool)

(assert (=> b!6488448 m!7276988))

(declare-fun m!7276990 () Bool)

(assert (=> b!6488449 m!7276990))

(assert (=> d!2035109 d!2035513))

(declare-fun b!6488450 () Bool)

(declare-fun e!3932333 () (InoxSet Context!11502))

(declare-fun e!3932332 () (InoxSet Context!11502))

(assert (=> b!6488450 (= e!3932333 e!3932332)))

(declare-fun c!1188881 () Bool)

(assert (=> b!6488450 (= c!1188881 ((_ is Cons!65277) (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388870))))))))

(declare-fun call!561621 () (InoxSet Context!11502))

(declare-fun b!6488451 () Bool)

(assert (=> b!6488451 (= e!3932333 ((_ map or) call!561621 (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388870)))))) (h!71724 s!2326))))))

(declare-fun b!6488452 () Bool)

(assert (=> b!6488452 (= e!3932332 ((as const (Array Context!11502 Bool)) false))))

(declare-fun d!2035515 () Bool)

(declare-fun c!1188880 () Bool)

(declare-fun e!3932334 () Bool)

(assert (=> d!2035515 (= c!1188880 e!3932334)))

(declare-fun res!2664799 () Bool)

(assert (=> d!2035515 (=> (not res!2664799) (not e!3932334))))

(assert (=> d!2035515 (= res!2664799 ((_ is Cons!65277) (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388870))))))))

(assert (=> d!2035515 (= (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 lt!2388870))) (h!71724 s!2326)) e!3932333)))

(declare-fun b!6488453 () Bool)

(assert (=> b!6488453 (= e!3932332 call!561621)))

(declare-fun b!6488454 () Bool)

(assert (=> b!6488454 (= e!3932334 (nullable!6360 (h!71725 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388870)))))))))

(declare-fun bm!561616 () Bool)

(assert (=> bm!561616 (= call!561621 (derivationStepZipperDown!1615 (h!71725 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388870))))) (Context!11503 (t!379027 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388870)))))) (h!71724 s!2326)))))

(assert (= (and d!2035515 res!2664799) b!6488454))

(assert (= (and d!2035515 c!1188880) b!6488451))

(assert (= (and d!2035515 (not c!1188880)) b!6488450))

(assert (= (and b!6488450 c!1188881) b!6488453))

(assert (= (and b!6488450 (not c!1188881)) b!6488452))

(assert (= (or b!6488451 b!6488453) bm!561616))

(declare-fun m!7276992 () Bool)

(assert (=> b!6488451 m!7276992))

(declare-fun m!7276994 () Bool)

(assert (=> b!6488454 m!7276994))

(declare-fun m!7276996 () Bool)

(assert (=> bm!561616 m!7276996))

(assert (=> b!6487109 d!2035515))

(declare-fun d!2035517 () Bool)

(assert (=> d!2035517 (= (isDefined!12961 lt!2389090) (not (isEmpty!37472 lt!2389090)))))

(declare-fun bs!1646250 () Bool)

(assert (= bs!1646250 d!2035517))

(declare-fun m!7276998 () Bool)

(assert (=> bs!1646250 m!7276998))

(assert (=> d!2035133 d!2035517))

(declare-fun b!6488455 () Bool)

(declare-fun res!2664804 () Bool)

(declare-fun e!3932335 () Bool)

(assert (=> b!6488455 (=> res!2664804 e!3932335)))

(assert (=> b!6488455 (= res!2664804 (not (isEmpty!37468 (tail!12294 Nil!65276))))))

(declare-fun b!6488457 () Bool)

(declare-fun e!3932340 () Bool)

(assert (=> b!6488457 (= e!3932340 (= (head!13209 Nil!65276) (c!1188383 (reg!16696 (regOne!33246 r!7292)))))))

(declare-fun b!6488458 () Bool)

(declare-fun res!2664801 () Bool)

(declare-fun e!3932337 () Bool)

(assert (=> b!6488458 (=> res!2664801 e!3932337)))

(assert (=> b!6488458 (= res!2664801 e!3932340)))

(declare-fun res!2664802 () Bool)

(assert (=> b!6488458 (=> (not res!2664802) (not e!3932340))))

(declare-fun lt!2389180 () Bool)

(assert (=> b!6488458 (= res!2664802 lt!2389180)))

(declare-fun b!6488459 () Bool)

(declare-fun e!3932341 () Bool)

(assert (=> b!6488459 (= e!3932341 e!3932335)))

(declare-fun res!2664807 () Bool)

(assert (=> b!6488459 (=> res!2664807 e!3932335)))

(declare-fun call!561622 () Bool)

(assert (=> b!6488459 (= res!2664807 call!561622)))

(declare-fun b!6488460 () Bool)

(declare-fun res!2664805 () Bool)

(assert (=> b!6488460 (=> res!2664805 e!3932337)))

(assert (=> b!6488460 (= res!2664805 (not ((_ is ElementMatch!16367) (reg!16696 (regOne!33246 r!7292)))))))

(declare-fun e!3932336 () Bool)

(assert (=> b!6488460 (= e!3932336 e!3932337)))

(declare-fun bm!561617 () Bool)

(assert (=> bm!561617 (= call!561622 (isEmpty!37468 Nil!65276))))

(declare-fun b!6488461 () Bool)

(assert (=> b!6488461 (= e!3932337 e!3932341)))

(declare-fun res!2664803 () Bool)

(assert (=> b!6488461 (=> (not res!2664803) (not e!3932341))))

(assert (=> b!6488461 (= res!2664803 (not lt!2389180))))

(declare-fun b!6488462 () Bool)

(declare-fun e!3932338 () Bool)

(assert (=> b!6488462 (= e!3932338 e!3932336)))

(declare-fun c!1188884 () Bool)

(assert (=> b!6488462 (= c!1188884 ((_ is EmptyLang!16367) (reg!16696 (regOne!33246 r!7292))))))

(declare-fun b!6488463 () Bool)

(declare-fun res!2664806 () Bool)

(assert (=> b!6488463 (=> (not res!2664806) (not e!3932340))))

(assert (=> b!6488463 (= res!2664806 (isEmpty!37468 (tail!12294 Nil!65276)))))

(declare-fun b!6488464 () Bool)

(declare-fun e!3932339 () Bool)

(assert (=> b!6488464 (= e!3932339 (nullable!6360 (reg!16696 (regOne!33246 r!7292))))))

(declare-fun b!6488465 () Bool)

(assert (=> b!6488465 (= e!3932338 (= lt!2389180 call!561622))))

(declare-fun b!6488466 () Bool)

(declare-fun res!2664800 () Bool)

(assert (=> b!6488466 (=> (not res!2664800) (not e!3932340))))

(assert (=> b!6488466 (= res!2664800 (not call!561622))))

(declare-fun b!6488467 () Bool)

(assert (=> b!6488467 (= e!3932336 (not lt!2389180))))

(declare-fun b!6488468 () Bool)

(assert (=> b!6488468 (= e!3932335 (not (= (head!13209 Nil!65276) (c!1188383 (reg!16696 (regOne!33246 r!7292))))))))

(declare-fun d!2035519 () Bool)

(assert (=> d!2035519 e!3932338))

(declare-fun c!1188883 () Bool)

(assert (=> d!2035519 (= c!1188883 ((_ is EmptyExpr!16367) (reg!16696 (regOne!33246 r!7292))))))

(assert (=> d!2035519 (= lt!2389180 e!3932339)))

(declare-fun c!1188882 () Bool)

(assert (=> d!2035519 (= c!1188882 (isEmpty!37468 Nil!65276))))

(assert (=> d!2035519 (validRegex!8103 (reg!16696 (regOne!33246 r!7292)))))

(assert (=> d!2035519 (= (matchR!8550 (reg!16696 (regOne!33246 r!7292)) Nil!65276) lt!2389180)))

(declare-fun b!6488456 () Bool)

(assert (=> b!6488456 (= e!3932339 (matchR!8550 (derivativeStep!5063 (reg!16696 (regOne!33246 r!7292)) (head!13209 Nil!65276)) (tail!12294 Nil!65276)))))

(assert (= (and d!2035519 c!1188882) b!6488464))

(assert (= (and d!2035519 (not c!1188882)) b!6488456))

(assert (= (and d!2035519 c!1188883) b!6488465))

(assert (= (and d!2035519 (not c!1188883)) b!6488462))

(assert (= (and b!6488462 c!1188884) b!6488467))

(assert (= (and b!6488462 (not c!1188884)) b!6488460))

(assert (= (and b!6488460 (not res!2664805)) b!6488458))

(assert (= (and b!6488458 res!2664802) b!6488466))

(assert (= (and b!6488466 res!2664800) b!6488463))

(assert (= (and b!6488463 res!2664806) b!6488457))

(assert (= (and b!6488458 (not res!2664801)) b!6488461))

(assert (= (and b!6488461 res!2664803) b!6488459))

(assert (= (and b!6488459 (not res!2664807)) b!6488455))

(assert (= (and b!6488455 (not res!2664804)) b!6488468))

(assert (= (or b!6488465 b!6488459 b!6488466) bm!561617))

(declare-fun m!7277000 () Bool)

(assert (=> b!6488455 m!7277000))

(assert (=> b!6488455 m!7277000))

(declare-fun m!7277002 () Bool)

(assert (=> b!6488455 m!7277002))

(assert (=> b!6488464 m!7275818))

(declare-fun m!7277004 () Bool)

(assert (=> d!2035519 m!7277004))

(assert (=> d!2035519 m!7275822))

(assert (=> b!6488463 m!7277000))

(assert (=> b!6488463 m!7277000))

(assert (=> b!6488463 m!7277002))

(declare-fun m!7277006 () Bool)

(assert (=> b!6488468 m!7277006))

(assert (=> b!6488457 m!7277006))

(assert (=> b!6488456 m!7277006))

(assert (=> b!6488456 m!7277006))

(declare-fun m!7277008 () Bool)

(assert (=> b!6488456 m!7277008))

(assert (=> b!6488456 m!7277000))

(assert (=> b!6488456 m!7277008))

(assert (=> b!6488456 m!7277000))

(declare-fun m!7277010 () Bool)

(assert (=> b!6488456 m!7277010))

(assert (=> bm!561617 m!7277004))

(assert (=> d!2035133 d!2035519))

(assert (=> d!2035133 d!2035253))

(assert (=> bs!1646023 d!2035101))

(declare-fun d!2035521 () Bool)

(assert (=> d!2035521 (= (nullable!6360 (reg!16696 (regOne!33246 r!7292))) (nullableFct!2298 (reg!16696 (regOne!33246 r!7292))))))

(declare-fun bs!1646251 () Bool)

(assert (= bs!1646251 d!2035521))

(declare-fun m!7277012 () Bool)

(assert (=> bs!1646251 m!7277012))

(assert (=> b!6487391 d!2035521))

(assert (=> b!6487494 d!2035403))

(assert (=> b!6487584 d!2035323))

(declare-fun d!2035523 () Bool)

(declare-fun c!1188885 () Bool)

(assert (=> d!2035523 (= c!1188885 (isEmpty!37468 (tail!12294 lt!2388887)))))

(declare-fun e!3932342 () Bool)

(assert (=> d!2035523 (= (matchZipper!2379 (derivationStepZipper!2333 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 lt!2388881 lt!2388871)) true) (head!13209 lt!2388887)) (tail!12294 lt!2388887)) e!3932342)))

(declare-fun b!6488469 () Bool)

(assert (=> b!6488469 (= e!3932342 (nullableZipper!2124 (derivationStepZipper!2333 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 lt!2388881 lt!2388871)) true) (head!13209 lt!2388887))))))

(declare-fun b!6488470 () Bool)

(assert (=> b!6488470 (= e!3932342 (matchZipper!2379 (derivationStepZipper!2333 (derivationStepZipper!2333 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 lt!2388881 lt!2388871)) true) (head!13209 lt!2388887)) (head!13209 (tail!12294 lt!2388887))) (tail!12294 (tail!12294 lt!2388887))))))

(assert (= (and d!2035523 c!1188885) b!6488469))

(assert (= (and d!2035523 (not c!1188885)) b!6488470))

(assert (=> d!2035523 m!7275904))

(assert (=> d!2035523 m!7275906))

(assert (=> b!6488469 m!7275926))

(declare-fun m!7277014 () Bool)

(assert (=> b!6488469 m!7277014))

(assert (=> b!6488470 m!7275904))

(assert (=> b!6488470 m!7276666))

(assert (=> b!6488470 m!7275926))

(assert (=> b!6488470 m!7276666))

(declare-fun m!7277016 () Bool)

(assert (=> b!6488470 m!7277016))

(assert (=> b!6488470 m!7275904))

(assert (=> b!6488470 m!7276658))

(assert (=> b!6488470 m!7277016))

(assert (=> b!6488470 m!7276658))

(declare-fun m!7277018 () Bool)

(assert (=> b!6488470 m!7277018))

(assert (=> b!6487479 d!2035523))

(declare-fun bs!1646252 () Bool)

(declare-fun d!2035525 () Bool)

(assert (= bs!1646252 (and d!2035525 d!2035105)))

(declare-fun lambda!359257 () Int)

(assert (=> bs!1646252 (= (= (head!13209 lt!2388887) (h!71724 s!2326)) (= lambda!359257 lambda!359193))))

(declare-fun bs!1646253 () Bool)

(assert (= bs!1646253 (and d!2035525 d!2035493)))

(assert (=> bs!1646253 (= (= (head!13209 lt!2388887) (head!13209 s!2326)) (= lambda!359257 lambda!359255))))

(declare-fun bs!1646254 () Bool)

(assert (= bs!1646254 (and d!2035525 d!2035487)))

(assert (=> bs!1646254 (= (= (head!13209 lt!2388887) (head!13209 (t!379026 s!2326))) (= lambda!359257 lambda!359254))))

(declare-fun bs!1646255 () Bool)

(assert (= bs!1646255 (and d!2035525 d!2035229)))

(assert (=> bs!1646255 (= (= (head!13209 lt!2388887) (head!13209 (t!379026 s!2326))) (= lambda!359257 lambda!359232))))

(declare-fun bs!1646256 () Bool)

(assert (= bs!1646256 (and d!2035525 b!6486628)))

(assert (=> bs!1646256 (= (= (head!13209 lt!2388887) (h!71724 s!2326)) (= lambda!359257 lambda!359120))))

(assert (=> d!2035525 true))

(assert (=> d!2035525 (= (derivationStepZipper!2333 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 lt!2388881 lt!2388871)) true) (head!13209 lt!2388887)) (flatMap!1872 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 lt!2388881 lt!2388871)) true) lambda!359257))))

(declare-fun bs!1646257 () Bool)

(assert (= bs!1646257 d!2035525))

(assert (=> bs!1646257 m!7274962))

(declare-fun m!7277020 () Bool)

(assert (=> bs!1646257 m!7277020))

(assert (=> b!6487479 d!2035525))

(assert (=> b!6487479 d!2035375))

(assert (=> b!6487479 d!2035203))

(declare-fun d!2035527 () Bool)

(assert (=> d!2035527 (= (nullable!6360 (h!71725 (exprs!6251 lt!2388885))) (nullableFct!2298 (h!71725 (exprs!6251 lt!2388885))))))

(declare-fun bs!1646258 () Bool)

(assert (= bs!1646258 d!2035527))

(declare-fun m!7277022 () Bool)

(assert (=> bs!1646258 m!7277022))

(assert (=> b!6487589 d!2035527))

(declare-fun d!2035529 () Bool)

(assert (=> d!2035529 (= (nullable!6360 (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))) (nullableFct!2298 (h!71725 (exprs!6251 (Context!11503 (Cons!65277 (h!71725 (exprs!6251 (h!71726 zl!343))) (t!379027 (exprs!6251 (h!71726 zl!343)))))))))))

(declare-fun bs!1646259 () Bool)

(assert (= bs!1646259 d!2035529))

(declare-fun m!7277024 () Bool)

(assert (=> bs!1646259 m!7277024))

(assert (=> b!6487242 d!2035529))

(declare-fun b!6488471 () Bool)

(declare-fun e!3932344 () Bool)

(declare-fun call!561624 () Bool)

(assert (=> b!6488471 (= e!3932344 call!561624)))

(declare-fun b!6488472 () Bool)

(declare-fun e!3932347 () Bool)

(declare-fun e!3932343 () Bool)

(assert (=> b!6488472 (= e!3932347 e!3932343)))

(declare-fun c!1188886 () Bool)

(assert (=> b!6488472 (= c!1188886 ((_ is Star!16367) (ite c!1188590 (reg!16696 r!7292) (ite c!1188591 (regTwo!33247 r!7292) (regTwo!33246 r!7292)))))))

(declare-fun d!2035531 () Bool)

(declare-fun res!2664811 () Bool)

(assert (=> d!2035531 (=> res!2664811 e!3932347)))

(assert (=> d!2035531 (= res!2664811 ((_ is ElementMatch!16367) (ite c!1188590 (reg!16696 r!7292) (ite c!1188591 (regTwo!33247 r!7292) (regTwo!33246 r!7292)))))))

(assert (=> d!2035531 (= (validRegex!8103 (ite c!1188590 (reg!16696 r!7292) (ite c!1188591 (regTwo!33247 r!7292) (regTwo!33246 r!7292)))) e!3932347)))

(declare-fun c!1188887 () Bool)

(declare-fun bm!561618 () Bool)

(declare-fun call!561625 () Bool)

(assert (=> bm!561618 (= call!561625 (validRegex!8103 (ite c!1188887 (regOne!33247 (ite c!1188590 (reg!16696 r!7292) (ite c!1188591 (regTwo!33247 r!7292) (regTwo!33246 r!7292)))) (regOne!33246 (ite c!1188590 (reg!16696 r!7292) (ite c!1188591 (regTwo!33247 r!7292) (regTwo!33246 r!7292)))))))))

(declare-fun b!6488473 () Bool)

(declare-fun res!2664812 () Bool)

(declare-fun e!3932346 () Bool)

(assert (=> b!6488473 (=> res!2664812 e!3932346)))

(assert (=> b!6488473 (= res!2664812 (not ((_ is Concat!25212) (ite c!1188590 (reg!16696 r!7292) (ite c!1188591 (regTwo!33247 r!7292) (regTwo!33246 r!7292))))))))

(declare-fun e!3932345 () Bool)

(assert (=> b!6488473 (= e!3932345 e!3932346)))

(declare-fun b!6488474 () Bool)

(declare-fun e!3932348 () Bool)

(assert (=> b!6488474 (= e!3932348 call!561624)))

(declare-fun call!561623 () Bool)

(declare-fun bm!561619 () Bool)

(assert (=> bm!561619 (= call!561623 (validRegex!8103 (ite c!1188886 (reg!16696 (ite c!1188590 (reg!16696 r!7292) (ite c!1188591 (regTwo!33247 r!7292) (regTwo!33246 r!7292)))) (ite c!1188887 (regTwo!33247 (ite c!1188590 (reg!16696 r!7292) (ite c!1188591 (regTwo!33247 r!7292) (regTwo!33246 r!7292)))) (regTwo!33246 (ite c!1188590 (reg!16696 r!7292) (ite c!1188591 (regTwo!33247 r!7292) (regTwo!33246 r!7292))))))))))

(declare-fun b!6488475 () Bool)

(declare-fun res!2664810 () Bool)

(assert (=> b!6488475 (=> (not res!2664810) (not e!3932348))))

(assert (=> b!6488475 (= res!2664810 call!561625)))

(assert (=> b!6488475 (= e!3932345 e!3932348)))

(declare-fun b!6488476 () Bool)

(assert (=> b!6488476 (= e!3932343 e!3932345)))

(assert (=> b!6488476 (= c!1188887 ((_ is Union!16367) (ite c!1188590 (reg!16696 r!7292) (ite c!1188591 (regTwo!33247 r!7292) (regTwo!33246 r!7292)))))))

(declare-fun bm!561620 () Bool)

(assert (=> bm!561620 (= call!561624 call!561623)))

(declare-fun b!6488477 () Bool)

(declare-fun e!3932349 () Bool)

(assert (=> b!6488477 (= e!3932349 call!561623)))

(declare-fun b!6488478 () Bool)

(assert (=> b!6488478 (= e!3932343 e!3932349)))

(declare-fun res!2664809 () Bool)

(assert (=> b!6488478 (= res!2664809 (not (nullable!6360 (reg!16696 (ite c!1188590 (reg!16696 r!7292) (ite c!1188591 (regTwo!33247 r!7292) (regTwo!33246 r!7292)))))))))

(assert (=> b!6488478 (=> (not res!2664809) (not e!3932349))))

(declare-fun b!6488479 () Bool)

(assert (=> b!6488479 (= e!3932346 e!3932344)))

(declare-fun res!2664808 () Bool)

(assert (=> b!6488479 (=> (not res!2664808) (not e!3932344))))

(assert (=> b!6488479 (= res!2664808 call!561625)))

(assert (= (and d!2035531 (not res!2664811)) b!6488472))

(assert (= (and b!6488472 c!1188886) b!6488478))

(assert (= (and b!6488472 (not c!1188886)) b!6488476))

(assert (= (and b!6488478 res!2664809) b!6488477))

(assert (= (and b!6488476 c!1188887) b!6488475))

(assert (= (and b!6488476 (not c!1188887)) b!6488473))

(assert (= (and b!6488475 res!2664810) b!6488474))

(assert (= (and b!6488473 (not res!2664812)) b!6488479))

(assert (= (and b!6488479 res!2664808) b!6488471))

(assert (= (or b!6488474 b!6488471) bm!561620))

(assert (= (or b!6488475 b!6488479) bm!561618))

(assert (= (or b!6488477 bm!561620) bm!561619))

(declare-fun m!7277026 () Bool)

(assert (=> bm!561618 m!7277026))

(declare-fun m!7277028 () Bool)

(assert (=> bm!561619 m!7277028))

(declare-fun m!7277030 () Bool)

(assert (=> b!6488478 m!7277030))

(assert (=> bm!561480 d!2035531))

(declare-fun b!6488480 () Bool)

(declare-fun res!2664817 () Bool)

(declare-fun e!3932350 () Bool)

(assert (=> b!6488480 (=> res!2664817 e!3932350)))

(assert (=> b!6488480 (= res!2664817 (not (isEmpty!37468 (tail!12294 (tail!12294 (_2!36649 lt!2388858))))))))

(declare-fun b!6488482 () Bool)

(declare-fun e!3932355 () Bool)

(assert (=> b!6488482 (= e!3932355 (= (head!13209 (tail!12294 (_2!36649 lt!2388858))) (c!1188383 (derivativeStep!5063 lt!2388865 (head!13209 (_2!36649 lt!2388858))))))))

(declare-fun b!6488483 () Bool)

(declare-fun res!2664814 () Bool)

(declare-fun e!3932352 () Bool)

(assert (=> b!6488483 (=> res!2664814 e!3932352)))

(assert (=> b!6488483 (= res!2664814 e!3932355)))

(declare-fun res!2664815 () Bool)

(assert (=> b!6488483 (=> (not res!2664815) (not e!3932355))))

(declare-fun lt!2389181 () Bool)

(assert (=> b!6488483 (= res!2664815 lt!2389181)))

(declare-fun b!6488484 () Bool)

(declare-fun e!3932356 () Bool)

(assert (=> b!6488484 (= e!3932356 e!3932350)))

(declare-fun res!2664820 () Bool)

(assert (=> b!6488484 (=> res!2664820 e!3932350)))

(declare-fun call!561626 () Bool)

(assert (=> b!6488484 (= res!2664820 call!561626)))

(declare-fun b!6488485 () Bool)

(declare-fun res!2664818 () Bool)

(assert (=> b!6488485 (=> res!2664818 e!3932352)))

(assert (=> b!6488485 (= res!2664818 (not ((_ is ElementMatch!16367) (derivativeStep!5063 lt!2388865 (head!13209 (_2!36649 lt!2388858))))))))

(declare-fun e!3932351 () Bool)

(assert (=> b!6488485 (= e!3932351 e!3932352)))

(declare-fun bm!561621 () Bool)

(assert (=> bm!561621 (= call!561626 (isEmpty!37468 (tail!12294 (_2!36649 lt!2388858))))))

(declare-fun b!6488486 () Bool)

(assert (=> b!6488486 (= e!3932352 e!3932356)))

(declare-fun res!2664816 () Bool)

(assert (=> b!6488486 (=> (not res!2664816) (not e!3932356))))

(assert (=> b!6488486 (= res!2664816 (not lt!2389181))))

(declare-fun b!6488487 () Bool)

(declare-fun e!3932353 () Bool)

(assert (=> b!6488487 (= e!3932353 e!3932351)))

(declare-fun c!1188890 () Bool)

(assert (=> b!6488487 (= c!1188890 ((_ is EmptyLang!16367) (derivativeStep!5063 lt!2388865 (head!13209 (_2!36649 lt!2388858)))))))

(declare-fun b!6488488 () Bool)

(declare-fun res!2664819 () Bool)

(assert (=> b!6488488 (=> (not res!2664819) (not e!3932355))))

(assert (=> b!6488488 (= res!2664819 (isEmpty!37468 (tail!12294 (tail!12294 (_2!36649 lt!2388858)))))))

(declare-fun b!6488489 () Bool)

(declare-fun e!3932354 () Bool)

(assert (=> b!6488489 (= e!3932354 (nullable!6360 (derivativeStep!5063 lt!2388865 (head!13209 (_2!36649 lt!2388858)))))))

(declare-fun b!6488490 () Bool)

(assert (=> b!6488490 (= e!3932353 (= lt!2389181 call!561626))))

(declare-fun b!6488491 () Bool)

(declare-fun res!2664813 () Bool)

(assert (=> b!6488491 (=> (not res!2664813) (not e!3932355))))

(assert (=> b!6488491 (= res!2664813 (not call!561626))))

(declare-fun b!6488492 () Bool)

(assert (=> b!6488492 (= e!3932351 (not lt!2389181))))

(declare-fun b!6488493 () Bool)

(assert (=> b!6488493 (= e!3932350 (not (= (head!13209 (tail!12294 (_2!36649 lt!2388858))) (c!1188383 (derivativeStep!5063 lt!2388865 (head!13209 (_2!36649 lt!2388858)))))))))

(declare-fun d!2035533 () Bool)

(assert (=> d!2035533 e!3932353))

(declare-fun c!1188889 () Bool)

(assert (=> d!2035533 (= c!1188889 ((_ is EmptyExpr!16367) (derivativeStep!5063 lt!2388865 (head!13209 (_2!36649 lt!2388858)))))))

(assert (=> d!2035533 (= lt!2389181 e!3932354)))

(declare-fun c!1188888 () Bool)

(assert (=> d!2035533 (= c!1188888 (isEmpty!37468 (tail!12294 (_2!36649 lt!2388858))))))

(assert (=> d!2035533 (validRegex!8103 (derivativeStep!5063 lt!2388865 (head!13209 (_2!36649 lt!2388858))))))

(assert (=> d!2035533 (= (matchR!8550 (derivativeStep!5063 lt!2388865 (head!13209 (_2!36649 lt!2388858))) (tail!12294 (_2!36649 lt!2388858))) lt!2389181)))

(declare-fun b!6488481 () Bool)

(assert (=> b!6488481 (= e!3932354 (matchR!8550 (derivativeStep!5063 (derivativeStep!5063 lt!2388865 (head!13209 (_2!36649 lt!2388858))) (head!13209 (tail!12294 (_2!36649 lt!2388858)))) (tail!12294 (tail!12294 (_2!36649 lt!2388858)))))))

(assert (= (and d!2035533 c!1188888) b!6488489))

(assert (= (and d!2035533 (not c!1188888)) b!6488481))

(assert (= (and d!2035533 c!1188889) b!6488490))

(assert (= (and d!2035533 (not c!1188889)) b!6488487))

(assert (= (and b!6488487 c!1188890) b!6488492))

(assert (= (and b!6488487 (not c!1188890)) b!6488485))

(assert (= (and b!6488485 (not res!2664818)) b!6488483))

(assert (= (and b!6488483 res!2664815) b!6488491))

(assert (= (and b!6488491 res!2664813) b!6488488))

(assert (= (and b!6488488 res!2664819) b!6488482))

(assert (= (and b!6488483 (not res!2664814)) b!6488486))

(assert (= (and b!6488486 res!2664816) b!6488484))

(assert (= (and b!6488484 (not res!2664820)) b!6488480))

(assert (= (and b!6488480 (not res!2664817)) b!6488493))

(assert (= (or b!6488490 b!6488484 b!6488491) bm!561621))

(assert (=> b!6488480 m!7275842))

(declare-fun m!7277032 () Bool)

(assert (=> b!6488480 m!7277032))

(assert (=> b!6488480 m!7277032))

(declare-fun m!7277034 () Bool)

(assert (=> b!6488480 m!7277034))

(assert (=> b!6488489 m!7275854))

(declare-fun m!7277036 () Bool)

(assert (=> b!6488489 m!7277036))

(assert (=> d!2035533 m!7275842))

(assert (=> d!2035533 m!7275844))

(assert (=> d!2035533 m!7275854))

(declare-fun m!7277038 () Bool)

(assert (=> d!2035533 m!7277038))

(assert (=> b!6488488 m!7275842))

(assert (=> b!6488488 m!7277032))

(assert (=> b!6488488 m!7277032))

(assert (=> b!6488488 m!7277034))

(assert (=> b!6488493 m!7275842))

(declare-fun m!7277040 () Bool)

(assert (=> b!6488493 m!7277040))

(assert (=> b!6488482 m!7275842))

(assert (=> b!6488482 m!7277040))

(assert (=> b!6488481 m!7275842))

(assert (=> b!6488481 m!7277040))

(assert (=> b!6488481 m!7275854))

(assert (=> b!6488481 m!7277040))

(declare-fun m!7277042 () Bool)

(assert (=> b!6488481 m!7277042))

(assert (=> b!6488481 m!7275842))

(assert (=> b!6488481 m!7277032))

(assert (=> b!6488481 m!7277042))

(assert (=> b!6488481 m!7277032))

(declare-fun m!7277044 () Bool)

(assert (=> b!6488481 m!7277044))

(assert (=> bm!561621 m!7275842))

(assert (=> bm!561621 m!7275844))

(assert (=> b!6487427 d!2035533))

(declare-fun b!6488494 () Bool)

(declare-fun c!1188891 () Bool)

(assert (=> b!6488494 (= c!1188891 (nullable!6360 (regOne!33246 lt!2388865)))))

(declare-fun e!3932359 () Regex!16367)

(declare-fun e!3932360 () Regex!16367)

(assert (=> b!6488494 (= e!3932359 e!3932360)))

(declare-fun b!6488495 () Bool)

(declare-fun e!3932358 () Regex!16367)

(assert (=> b!6488495 (= e!3932358 e!3932359)))

(declare-fun c!1188895 () Bool)

(assert (=> b!6488495 (= c!1188895 ((_ is Star!16367) lt!2388865))))

(declare-fun c!1188892 () Bool)

(declare-fun bm!561623 () Bool)

(declare-fun call!561628 () Regex!16367)

(assert (=> bm!561623 (= call!561628 (derivativeStep!5063 (ite c!1188892 (regOne!33247 lt!2388865) (ite c!1188891 (regTwo!33246 lt!2388865) (regOne!33246 lt!2388865))) (head!13209 (_2!36649 lt!2388858))))))

(declare-fun b!6488496 () Bool)

(declare-fun call!561627 () Regex!16367)

(assert (=> b!6488496 (= e!3932359 (Concat!25212 call!561627 lt!2388865))))

(declare-fun b!6488497 () Bool)

(declare-fun e!3932357 () Regex!16367)

(assert (=> b!6488497 (= e!3932357 EmptyLang!16367)))

(declare-fun b!6488498 () Bool)

(declare-fun e!3932361 () Regex!16367)

(assert (=> b!6488498 (= e!3932361 (ite (= (head!13209 (_2!36649 lt!2388858)) (c!1188383 lt!2388865)) EmptyExpr!16367 EmptyLang!16367))))

(declare-fun bm!561624 () Bool)

(declare-fun call!561630 () Regex!16367)

(assert (=> bm!561624 (= call!561627 call!561630)))

(declare-fun b!6488499 () Bool)

(assert (=> b!6488499 (= e!3932357 e!3932361)))

(declare-fun c!1188894 () Bool)

(assert (=> b!6488499 (= c!1188894 ((_ is ElementMatch!16367) lt!2388865))))

(declare-fun b!6488500 () Bool)

(declare-fun call!561629 () Regex!16367)

(assert (=> b!6488500 (= e!3932360 (Union!16367 (Concat!25212 call!561627 (regTwo!33246 lt!2388865)) call!561629))))

(declare-fun b!6488501 () Bool)

(assert (=> b!6488501 (= e!3932360 (Union!16367 (Concat!25212 call!561629 (regTwo!33246 lt!2388865)) EmptyLang!16367))))

(declare-fun b!6488502 () Bool)

(assert (=> b!6488502 (= c!1188892 ((_ is Union!16367) lt!2388865))))

(assert (=> b!6488502 (= e!3932361 e!3932358)))

(declare-fun d!2035535 () Bool)

(declare-fun lt!2389182 () Regex!16367)

(assert (=> d!2035535 (validRegex!8103 lt!2389182)))

(assert (=> d!2035535 (= lt!2389182 e!3932357)))

(declare-fun c!1188893 () Bool)

(assert (=> d!2035535 (= c!1188893 (or ((_ is EmptyExpr!16367) lt!2388865) ((_ is EmptyLang!16367) lt!2388865)))))

(assert (=> d!2035535 (validRegex!8103 lt!2388865)))

(assert (=> d!2035535 (= (derivativeStep!5063 lt!2388865 (head!13209 (_2!36649 lt!2388858))) lt!2389182)))

(declare-fun bm!561622 () Bool)

(assert (=> bm!561622 (= call!561630 (derivativeStep!5063 (ite c!1188892 (regTwo!33247 lt!2388865) (ite c!1188895 (reg!16696 lt!2388865) (regOne!33246 lt!2388865))) (head!13209 (_2!36649 lt!2388858))))))

(declare-fun b!6488503 () Bool)

(assert (=> b!6488503 (= e!3932358 (Union!16367 call!561628 call!561630))))

(declare-fun bm!561625 () Bool)

(assert (=> bm!561625 (= call!561629 call!561628)))

(assert (= (and d!2035535 c!1188893) b!6488497))

(assert (= (and d!2035535 (not c!1188893)) b!6488499))

(assert (= (and b!6488499 c!1188894) b!6488498))

(assert (= (and b!6488499 (not c!1188894)) b!6488502))

(assert (= (and b!6488502 c!1188892) b!6488503))

(assert (= (and b!6488502 (not c!1188892)) b!6488495))

(assert (= (and b!6488495 c!1188895) b!6488496))

(assert (= (and b!6488495 (not c!1188895)) b!6488494))

(assert (= (and b!6488494 c!1188891) b!6488500))

(assert (= (and b!6488494 (not c!1188891)) b!6488501))

(assert (= (or b!6488500 b!6488501) bm!561625))

(assert (= (or b!6488496 b!6488500) bm!561624))

(assert (= (or b!6488503 bm!561624) bm!561622))

(assert (= (or b!6488503 bm!561625) bm!561623))

(assert (=> b!6488494 m!7276728))

(assert (=> bm!561623 m!7275852))

(declare-fun m!7277046 () Bool)

(assert (=> bm!561623 m!7277046))

(declare-fun m!7277048 () Bool)

(assert (=> d!2035535 m!7277048))

(assert (=> d!2035535 m!7275850))

(assert (=> bm!561622 m!7275852))

(declare-fun m!7277050 () Bool)

(assert (=> bm!561622 m!7277050))

(assert (=> b!6487427 d!2035535))

(declare-fun d!2035537 () Bool)

(assert (=> d!2035537 (= (head!13209 (_2!36649 lt!2388858)) (h!71724 (_2!36649 lt!2388858)))))

(assert (=> b!6487427 d!2035537))

(assert (=> b!6487427 d!2035419))

(declare-fun d!2035539 () Bool)

(assert (=> d!2035539 true))

(declare-fun setRes!44204 () Bool)

(assert (=> d!2035539 setRes!44204))

(declare-fun condSetEmpty!44204 () Bool)

(declare-fun res!2664821 () (InoxSet Context!11502))

(assert (=> d!2035539 (= condSetEmpty!44204 (= res!2664821 ((as const (Array Context!11502 Bool)) false)))))

(assert (=> d!2035539 (= (choose!48152 lt!2388869 lambda!359120) res!2664821)))

(declare-fun setIsEmpty!44204 () Bool)

(assert (=> setIsEmpty!44204 setRes!44204))

(declare-fun setElem!44204 () Context!11502)

(declare-fun tp!1796320 () Bool)

(declare-fun setNonEmpty!44204 () Bool)

(declare-fun e!3932362 () Bool)

(assert (=> setNonEmpty!44204 (= setRes!44204 (and tp!1796320 (inv!84164 setElem!44204) e!3932362))))

(declare-fun setRest!44204 () (InoxSet Context!11502))

(assert (=> setNonEmpty!44204 (= res!2664821 ((_ map or) (store ((as const (Array Context!11502 Bool)) false) setElem!44204 true) setRest!44204))))

(declare-fun b!6488504 () Bool)

(declare-fun tp!1796319 () Bool)

(assert (=> b!6488504 (= e!3932362 tp!1796319)))

(assert (= (and d!2035539 condSetEmpty!44204) setIsEmpty!44204))

(assert (= (and d!2035539 (not condSetEmpty!44204)) setNonEmpty!44204))

(assert (= setNonEmpty!44204 b!6488504))

(declare-fun m!7277052 () Bool)

(assert (=> setNonEmpty!44204 m!7277052))

(assert (=> d!2035099 d!2035539))

(declare-fun d!2035541 () Bool)

(assert (=> d!2035541 true))

(declare-fun setRes!44205 () Bool)

(assert (=> d!2035541 setRes!44205))

(declare-fun condSetEmpty!44205 () Bool)

(declare-fun res!2664822 () (InoxSet Context!11502))

(assert (=> d!2035541 (= condSetEmpty!44205 (= res!2664822 ((as const (Array Context!11502 Bool)) false)))))

(assert (=> d!2035541 (= (choose!48152 z!1189 lambda!359120) res!2664822)))

(declare-fun setIsEmpty!44205 () Bool)

(assert (=> setIsEmpty!44205 setRes!44205))

(declare-fun setElem!44205 () Context!11502)

(declare-fun tp!1796322 () Bool)

(declare-fun setNonEmpty!44205 () Bool)

(declare-fun e!3932363 () Bool)

(assert (=> setNonEmpty!44205 (= setRes!44205 (and tp!1796322 (inv!84164 setElem!44205) e!3932363))))

(declare-fun setRest!44205 () (InoxSet Context!11502))

(assert (=> setNonEmpty!44205 (= res!2664822 ((_ map or) (store ((as const (Array Context!11502 Bool)) false) setElem!44205 true) setRest!44205))))

(declare-fun b!6488505 () Bool)

(declare-fun tp!1796321 () Bool)

(assert (=> b!6488505 (= e!3932363 tp!1796321)))

(assert (= (and d!2035541 condSetEmpty!44205) setIsEmpty!44205))

(assert (= (and d!2035541 (not condSetEmpty!44205)) setNonEmpty!44205))

(assert (= setNonEmpty!44205 b!6488505))

(declare-fun m!7277054 () Bool)

(assert (=> setNonEmpty!44205 m!7277054))

(assert (=> d!2034963 d!2035541))

(assert (=> b!6487778 d!2035441))

(assert (=> d!2035025 d!2035021))

(declare-fun d!2035543 () Bool)

(assert (=> d!2035543 (= (flatMap!1872 lt!2388898 lambda!359120) (dynLambda!25927 lambda!359120 lt!2388862))))

(assert (=> d!2035543 true))

(declare-fun _$13!3710 () Unit!158799)

(assert (=> d!2035543 (= (choose!48154 lt!2388898 lt!2388862 lambda!359120) _$13!3710)))

(declare-fun b_lambda!245647 () Bool)

(assert (=> (not b_lambda!245647) (not d!2035543)))

(declare-fun bs!1646260 () Bool)

(assert (= bs!1646260 d!2035543))

(assert (=> bs!1646260 m!7275062))

(assert (=> bs!1646260 m!7275778))

(assert (=> d!2035025 d!2035543))

(declare-fun d!2035545 () Bool)

(assert (=> d!2035545 (= (isEmpty!37470 (tail!12295 (unfocusZipperList!1788 zl!343))) ((_ is Nil!65277) (tail!12295 (unfocusZipperList!1788 zl!343))))))

(assert (=> b!6487765 d!2035545))

(declare-fun d!2035547 () Bool)

(assert (=> d!2035547 (= (tail!12295 (unfocusZipperList!1788 zl!343)) (t!379027 (unfocusZipperList!1788 zl!343)))))

(assert (=> b!6487765 d!2035547))

(assert (=> b!6487448 d!2035461))

(assert (=> b!6487384 d!2035393))

(assert (=> b!6487487 d!2035399))

(assert (=> bs!1646020 d!2035027))

(declare-fun d!2035549 () Bool)

(assert (=> d!2035549 (= (Exists!3437 (ite c!1188639 lambda!359195 lambda!359196)) (choose!48164 (ite c!1188639 lambda!359195 lambda!359196)))))

(declare-fun bs!1646261 () Bool)

(assert (= bs!1646261 d!2035549))

(declare-fun m!7277056 () Bool)

(assert (=> bs!1646261 m!7277056))

(assert (=> bm!561496 d!2035549))

(assert (=> d!2035147 d!2035275))

(declare-fun b!6488506 () Bool)

(declare-fun res!2664827 () Bool)

(declare-fun e!3932364 () Bool)

(assert (=> b!6488506 (=> res!2664827 e!3932364)))

(assert (=> b!6488506 (= res!2664827 (not (isEmpty!37468 (tail!12294 Nil!65276))))))

(declare-fun b!6488508 () Bool)

(declare-fun e!3932369 () Bool)

(assert (=> b!6488508 (= e!3932369 (= (head!13209 Nil!65276) (c!1188383 (regOne!33246 r!7292))))))

(declare-fun b!6488509 () Bool)

(declare-fun res!2664824 () Bool)

(declare-fun e!3932366 () Bool)

(assert (=> b!6488509 (=> res!2664824 e!3932366)))

(assert (=> b!6488509 (= res!2664824 e!3932369)))

(declare-fun res!2664825 () Bool)

(assert (=> b!6488509 (=> (not res!2664825) (not e!3932369))))

(declare-fun lt!2389183 () Bool)

(assert (=> b!6488509 (= res!2664825 lt!2389183)))

(declare-fun b!6488510 () Bool)

(declare-fun e!3932370 () Bool)

(assert (=> b!6488510 (= e!3932370 e!3932364)))

(declare-fun res!2664830 () Bool)

(assert (=> b!6488510 (=> res!2664830 e!3932364)))

(declare-fun call!561631 () Bool)

(assert (=> b!6488510 (= res!2664830 call!561631)))

(declare-fun b!6488511 () Bool)

(declare-fun res!2664828 () Bool)

(assert (=> b!6488511 (=> res!2664828 e!3932366)))

(assert (=> b!6488511 (= res!2664828 (not ((_ is ElementMatch!16367) (regOne!33246 r!7292))))))

(declare-fun e!3932365 () Bool)

(assert (=> b!6488511 (= e!3932365 e!3932366)))

(declare-fun bm!561626 () Bool)

(assert (=> bm!561626 (= call!561631 (isEmpty!37468 Nil!65276))))

(declare-fun b!6488512 () Bool)

(assert (=> b!6488512 (= e!3932366 e!3932370)))

(declare-fun res!2664826 () Bool)

(assert (=> b!6488512 (=> (not res!2664826) (not e!3932370))))

(assert (=> b!6488512 (= res!2664826 (not lt!2389183))))

(declare-fun b!6488513 () Bool)

(declare-fun e!3932367 () Bool)

(assert (=> b!6488513 (= e!3932367 e!3932365)))

(declare-fun c!1188898 () Bool)

(assert (=> b!6488513 (= c!1188898 ((_ is EmptyLang!16367) (regOne!33246 r!7292)))))

(declare-fun b!6488514 () Bool)

(declare-fun res!2664829 () Bool)

(assert (=> b!6488514 (=> (not res!2664829) (not e!3932369))))

(assert (=> b!6488514 (= res!2664829 (isEmpty!37468 (tail!12294 Nil!65276)))))

(declare-fun b!6488515 () Bool)

(declare-fun e!3932368 () Bool)

(assert (=> b!6488515 (= e!3932368 (nullable!6360 (regOne!33246 r!7292)))))

(declare-fun b!6488516 () Bool)

(assert (=> b!6488516 (= e!3932367 (= lt!2389183 call!561631))))

(declare-fun b!6488517 () Bool)

(declare-fun res!2664823 () Bool)

(assert (=> b!6488517 (=> (not res!2664823) (not e!3932369))))

(assert (=> b!6488517 (= res!2664823 (not call!561631))))

(declare-fun b!6488518 () Bool)

(assert (=> b!6488518 (= e!3932365 (not lt!2389183))))

(declare-fun b!6488519 () Bool)

(assert (=> b!6488519 (= e!3932364 (not (= (head!13209 Nil!65276) (c!1188383 (regOne!33246 r!7292)))))))

(declare-fun d!2035551 () Bool)

(assert (=> d!2035551 e!3932367))

(declare-fun c!1188897 () Bool)

(assert (=> d!2035551 (= c!1188897 ((_ is EmptyExpr!16367) (regOne!33246 r!7292)))))

(assert (=> d!2035551 (= lt!2389183 e!3932368)))

(declare-fun c!1188896 () Bool)

(assert (=> d!2035551 (= c!1188896 (isEmpty!37468 Nil!65276))))

(assert (=> d!2035551 (validRegex!8103 (regOne!33246 r!7292))))

(assert (=> d!2035551 (= (matchR!8550 (regOne!33246 r!7292) Nil!65276) lt!2389183)))

(declare-fun b!6488507 () Bool)

(assert (=> b!6488507 (= e!3932368 (matchR!8550 (derivativeStep!5063 (regOne!33246 r!7292) (head!13209 Nil!65276)) (tail!12294 Nil!65276)))))

(assert (= (and d!2035551 c!1188896) b!6488515))

(assert (= (and d!2035551 (not c!1188896)) b!6488507))

(assert (= (and d!2035551 c!1188897) b!6488516))

(assert (= (and d!2035551 (not c!1188897)) b!6488513))

(assert (= (and b!6488513 c!1188898) b!6488518))

(assert (= (and b!6488513 (not c!1188898)) b!6488511))

(assert (= (and b!6488511 (not res!2664828)) b!6488509))

(assert (= (and b!6488509 res!2664825) b!6488517))

(assert (= (and b!6488517 res!2664823) b!6488514))

(assert (= (and b!6488514 res!2664829) b!6488508))

(assert (= (and b!6488509 (not res!2664824)) b!6488512))

(assert (= (and b!6488512 res!2664826) b!6488510))

(assert (= (and b!6488510 (not res!2664830)) b!6488506))

(assert (= (and b!6488506 (not res!2664827)) b!6488519))

(assert (= (or b!6488516 b!6488510 b!6488517) bm!561626))

(assert (=> b!6488506 m!7277000))

(assert (=> b!6488506 m!7277000))

(assert (=> b!6488506 m!7277002))

(assert (=> b!6488515 m!7276524))

(assert (=> d!2035551 m!7277004))

(assert (=> d!2035551 m!7276136))

(assert (=> b!6488514 m!7277000))

(assert (=> b!6488514 m!7277000))

(assert (=> b!6488514 m!7277002))

(assert (=> b!6488519 m!7277006))

(assert (=> b!6488508 m!7277006))

(assert (=> b!6488507 m!7277006))

(assert (=> b!6488507 m!7277006))

(declare-fun m!7277058 () Bool)

(assert (=> b!6488507 m!7277058))

(assert (=> b!6488507 m!7277000))

(assert (=> b!6488507 m!7277058))

(assert (=> b!6488507 m!7277000))

(declare-fun m!7277060 () Bool)

(assert (=> b!6488507 m!7277060))

(assert (=> bm!561626 m!7277004))

(assert (=> d!2035147 d!2035551))

(declare-fun b!6488520 () Bool)

(declare-fun e!3932372 () Bool)

(declare-fun call!561633 () Bool)

(assert (=> b!6488520 (= e!3932372 call!561633)))

(declare-fun b!6488521 () Bool)

(declare-fun e!3932375 () Bool)

(declare-fun e!3932371 () Bool)

(assert (=> b!6488521 (= e!3932375 e!3932371)))

(declare-fun c!1188899 () Bool)

(assert (=> b!6488521 (= c!1188899 ((_ is Star!16367) (regOne!33246 r!7292)))))

(declare-fun d!2035553 () Bool)

(declare-fun res!2664834 () Bool)

(assert (=> d!2035553 (=> res!2664834 e!3932375)))

(assert (=> d!2035553 (= res!2664834 ((_ is ElementMatch!16367) (regOne!33246 r!7292)))))

(assert (=> d!2035553 (= (validRegex!8103 (regOne!33246 r!7292)) e!3932375)))

(declare-fun bm!561627 () Bool)

(declare-fun call!561634 () Bool)

(declare-fun c!1188900 () Bool)

(assert (=> bm!561627 (= call!561634 (validRegex!8103 (ite c!1188900 (regOne!33247 (regOne!33246 r!7292)) (regOne!33246 (regOne!33246 r!7292)))))))

(declare-fun b!6488522 () Bool)

(declare-fun res!2664835 () Bool)

(declare-fun e!3932374 () Bool)

(assert (=> b!6488522 (=> res!2664835 e!3932374)))

(assert (=> b!6488522 (= res!2664835 (not ((_ is Concat!25212) (regOne!33246 r!7292))))))

(declare-fun e!3932373 () Bool)

(assert (=> b!6488522 (= e!3932373 e!3932374)))

(declare-fun b!6488523 () Bool)

(declare-fun e!3932376 () Bool)

(assert (=> b!6488523 (= e!3932376 call!561633)))

(declare-fun call!561632 () Bool)

(declare-fun bm!561628 () Bool)

(assert (=> bm!561628 (= call!561632 (validRegex!8103 (ite c!1188899 (reg!16696 (regOne!33246 r!7292)) (ite c!1188900 (regTwo!33247 (regOne!33246 r!7292)) (regTwo!33246 (regOne!33246 r!7292))))))))

(declare-fun b!6488524 () Bool)

(declare-fun res!2664833 () Bool)

(assert (=> b!6488524 (=> (not res!2664833) (not e!3932376))))

(assert (=> b!6488524 (= res!2664833 call!561634)))

(assert (=> b!6488524 (= e!3932373 e!3932376)))

(declare-fun b!6488525 () Bool)

(assert (=> b!6488525 (= e!3932371 e!3932373)))

(assert (=> b!6488525 (= c!1188900 ((_ is Union!16367) (regOne!33246 r!7292)))))

(declare-fun bm!561629 () Bool)

(assert (=> bm!561629 (= call!561633 call!561632)))

(declare-fun b!6488526 () Bool)

(declare-fun e!3932377 () Bool)

(assert (=> b!6488526 (= e!3932377 call!561632)))

(declare-fun b!6488527 () Bool)

(assert (=> b!6488527 (= e!3932371 e!3932377)))

(declare-fun res!2664832 () Bool)

(assert (=> b!6488527 (= res!2664832 (not (nullable!6360 (reg!16696 (regOne!33246 r!7292)))))))

(assert (=> b!6488527 (=> (not res!2664832) (not e!3932377))))

(declare-fun b!6488528 () Bool)

(assert (=> b!6488528 (= e!3932374 e!3932372)))

(declare-fun res!2664831 () Bool)

(assert (=> b!6488528 (=> (not res!2664831) (not e!3932372))))

(assert (=> b!6488528 (= res!2664831 call!561634)))

(assert (= (and d!2035553 (not res!2664834)) b!6488521))

(assert (= (and b!6488521 c!1188899) b!6488527))

(assert (= (and b!6488521 (not c!1188899)) b!6488525))

(assert (= (and b!6488527 res!2664832) b!6488526))

(assert (= (and b!6488525 c!1188900) b!6488524))

(assert (= (and b!6488525 (not c!1188900)) b!6488522))

(assert (= (and b!6488524 res!2664833) b!6488523))

(assert (= (and b!6488522 (not res!2664835)) b!6488528))

(assert (= (and b!6488528 res!2664831) b!6488520))

(assert (= (or b!6488523 b!6488520) bm!561629))

(assert (= (or b!6488524 b!6488528) bm!561627))

(assert (= (or b!6488526 bm!561629) bm!561628))

(declare-fun m!7277062 () Bool)

(assert (=> bm!561627 m!7277062))

(declare-fun m!7277064 () Bool)

(assert (=> bm!561628 m!7277064))

(assert (=> b!6488527 m!7275818))

(assert (=> d!2035147 d!2035553))

(declare-fun b!6488532 () Bool)

(declare-fun e!3932378 () Bool)

(declare-fun lt!2389184 () List!65400)

(assert (=> b!6488532 (= e!3932378 (or (not (= (_2!36649 (get!22634 lt!2389090)) Nil!65276)) (= lt!2389184 (_1!36649 (get!22634 lt!2389090)))))))

(declare-fun d!2035555 () Bool)

(assert (=> d!2035555 e!3932378))

(declare-fun res!2664837 () Bool)

(assert (=> d!2035555 (=> (not res!2664837) (not e!3932378))))

(assert (=> d!2035555 (= res!2664837 (= (content!12437 lt!2389184) ((_ map or) (content!12437 (_1!36649 (get!22634 lt!2389090))) (content!12437 (_2!36649 (get!22634 lt!2389090))))))))

(declare-fun e!3932379 () List!65400)

(assert (=> d!2035555 (= lt!2389184 e!3932379)))

(declare-fun c!1188901 () Bool)

(assert (=> d!2035555 (= c!1188901 ((_ is Nil!65276) (_1!36649 (get!22634 lt!2389090))))))

(assert (=> d!2035555 (= (++!14444 (_1!36649 (get!22634 lt!2389090)) (_2!36649 (get!22634 lt!2389090))) lt!2389184)))

(declare-fun b!6488530 () Bool)

(assert (=> b!6488530 (= e!3932379 (Cons!65276 (h!71724 (_1!36649 (get!22634 lt!2389090))) (++!14444 (t!379026 (_1!36649 (get!22634 lt!2389090))) (_2!36649 (get!22634 lt!2389090)))))))

(declare-fun b!6488531 () Bool)

(declare-fun res!2664836 () Bool)

(assert (=> b!6488531 (=> (not res!2664836) (not e!3932378))))

(assert (=> b!6488531 (= res!2664836 (= (size!40424 lt!2389184) (+ (size!40424 (_1!36649 (get!22634 lt!2389090))) (size!40424 (_2!36649 (get!22634 lt!2389090))))))))

(declare-fun b!6488529 () Bool)

(assert (=> b!6488529 (= e!3932379 (_2!36649 (get!22634 lt!2389090)))))

(assert (= (and d!2035555 c!1188901) b!6488529))

(assert (= (and d!2035555 (not c!1188901)) b!6488530))

(assert (= (and d!2035555 res!2664837) b!6488531))

(assert (= (and b!6488531 res!2664836) b!6488532))

(declare-fun m!7277066 () Bool)

(assert (=> d!2035555 m!7277066))

(declare-fun m!7277068 () Bool)

(assert (=> d!2035555 m!7277068))

(declare-fun m!7277070 () Bool)

(assert (=> d!2035555 m!7277070))

(declare-fun m!7277072 () Bool)

(assert (=> b!6488530 m!7277072))

(declare-fun m!7277074 () Bool)

(assert (=> b!6488531 m!7277074))

(declare-fun m!7277076 () Bool)

(assert (=> b!6488531 m!7277076))

(declare-fun m!7277078 () Bool)

(assert (=> b!6488531 m!7277078))

(assert (=> b!6487656 d!2035555))

(assert (=> b!6487656 d!2035365))

(declare-fun bm!561634 () Bool)

(declare-fun call!561640 () Bool)

(declare-fun c!1188904 () Bool)

(assert (=> bm!561634 (= call!561640 (nullable!6360 (ite c!1188904 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))))))))

(declare-fun b!6488547 () Bool)

(declare-fun e!3932392 () Bool)

(assert (=> b!6488547 (= e!3932392 call!561640)))

(declare-fun bm!561635 () Bool)

(declare-fun call!561639 () Bool)

(assert (=> bm!561635 (= call!561639 (nullable!6360 (ite c!1188904 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))))))))

(declare-fun b!6488549 () Bool)

(declare-fun e!3932394 () Bool)

(declare-fun e!3932395 () Bool)

(assert (=> b!6488549 (= e!3932394 e!3932395)))

(declare-fun res!2664848 () Bool)

(assert (=> b!6488549 (=> (not res!2664848) (not e!3932395))))

(assert (=> b!6488549 (= res!2664848 (and (not ((_ is EmptyLang!16367) (h!71725 (exprs!6251 (h!71726 zl!343))))) (not ((_ is ElementMatch!16367) (h!71725 (exprs!6251 (h!71726 zl!343)))))))))

(declare-fun b!6488550 () Bool)

(declare-fun e!3932397 () Bool)

(assert (=> b!6488550 (= e!3932397 call!561640)))

(declare-fun b!6488551 () Bool)

(declare-fun e!3932393 () Bool)

(assert (=> b!6488551 (= e!3932395 e!3932393)))

(declare-fun res!2664852 () Bool)

(assert (=> b!6488551 (=> res!2664852 e!3932393)))

(assert (=> b!6488551 (= res!2664852 ((_ is Star!16367) (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun b!6488548 () Bool)

(declare-fun e!3932396 () Bool)

(assert (=> b!6488548 (= e!3932393 e!3932396)))

(assert (=> b!6488548 (= c!1188904 ((_ is Union!16367) (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun d!2035557 () Bool)

(declare-fun res!2664849 () Bool)

(assert (=> d!2035557 (=> res!2664849 e!3932394)))

(assert (=> d!2035557 (= res!2664849 ((_ is EmptyExpr!16367) (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(assert (=> d!2035557 (= (nullableFct!2298 (h!71725 (exprs!6251 (h!71726 zl!343)))) e!3932394)))

(declare-fun b!6488552 () Bool)

(assert (=> b!6488552 (= e!3932396 e!3932397)))

(declare-fun res!2664850 () Bool)

(assert (=> b!6488552 (= res!2664850 call!561639)))

(assert (=> b!6488552 (=> (not res!2664850) (not e!3932397))))

(declare-fun b!6488553 () Bool)

(assert (=> b!6488553 (= e!3932396 e!3932392)))

(declare-fun res!2664851 () Bool)

(assert (=> b!6488553 (= res!2664851 call!561639)))

(assert (=> b!6488553 (=> res!2664851 e!3932392)))

(assert (= (and d!2035557 (not res!2664849)) b!6488549))

(assert (= (and b!6488549 res!2664848) b!6488551))

(assert (= (and b!6488551 (not res!2664852)) b!6488548))

(assert (= (and b!6488548 c!1188904) b!6488553))

(assert (= (and b!6488548 (not c!1188904)) b!6488552))

(assert (= (and b!6488553 (not res!2664851)) b!6488547))

(assert (= (and b!6488552 res!2664850) b!6488550))

(assert (= (or b!6488547 b!6488550) bm!561634))

(assert (= (or b!6488553 b!6488552) bm!561635))

(declare-fun m!7277080 () Bool)

(assert (=> bm!561634 m!7277080))

(declare-fun m!7277082 () Bool)

(assert (=> bm!561635 m!7277082))

(assert (=> d!2034973 d!2035557))

(assert (=> d!2035181 d!2035225))

(declare-fun d!2035559 () Bool)

(declare-fun lt!2389187 () Int)

(assert (=> d!2035559 (>= lt!2389187 0)))

(declare-fun e!3932400 () Int)

(assert (=> d!2035559 (= lt!2389187 e!3932400)))

(declare-fun c!1188907 () Bool)

(assert (=> d!2035559 (= c!1188907 ((_ is Nil!65277) lt!2389069))))

(assert (=> d!2035559 (= (size!40426 lt!2389069) lt!2389187)))

(declare-fun b!6488558 () Bool)

(assert (=> b!6488558 (= e!3932400 0)))

(declare-fun b!6488559 () Bool)

(assert (=> b!6488559 (= e!3932400 (+ 1 (size!40426 (t!379027 lt!2389069))))))

(assert (= (and d!2035559 c!1188907) b!6488558))

(assert (= (and d!2035559 (not c!1188907)) b!6488559))

(declare-fun m!7277084 () Bool)

(assert (=> b!6488559 m!7277084))

(assert (=> b!6487526 d!2035559))

(declare-fun d!2035561 () Bool)

(declare-fun lt!2389188 () Int)

(assert (=> d!2035561 (>= lt!2389188 0)))

(declare-fun e!3932401 () Int)

(assert (=> d!2035561 (= lt!2389188 e!3932401)))

(declare-fun c!1188908 () Bool)

(assert (=> d!2035561 (= c!1188908 ((_ is Nil!65277) lt!2388881))))

(assert (=> d!2035561 (= (size!40426 lt!2388881) lt!2389188)))

(declare-fun b!6488560 () Bool)

(assert (=> b!6488560 (= e!3932401 0)))

(declare-fun b!6488561 () Bool)

(assert (=> b!6488561 (= e!3932401 (+ 1 (size!40426 (t!379027 lt!2388881))))))

(assert (= (and d!2035561 c!1188908) b!6488560))

(assert (= (and d!2035561 (not c!1188908)) b!6488561))

(assert (=> b!6488561 m!7276900))

(assert (=> b!6487526 d!2035561))

(declare-fun d!2035563 () Bool)

(declare-fun lt!2389189 () Int)

(assert (=> d!2035563 (>= lt!2389189 0)))

(declare-fun e!3932402 () Int)

(assert (=> d!2035563 (= lt!2389189 e!3932402)))

(declare-fun c!1188909 () Bool)

(assert (=> d!2035563 (= c!1188909 ((_ is Nil!65277) lt!2388871))))

(assert (=> d!2035563 (= (size!40426 lt!2388871) lt!2389189)))

(declare-fun b!6488562 () Bool)

(assert (=> b!6488562 (= e!3932402 0)))

(declare-fun b!6488563 () Bool)

(assert (=> b!6488563 (= e!3932402 (+ 1 (size!40426 (t!379027 lt!2388871))))))

(assert (= (and d!2035563 c!1188909) b!6488562))

(assert (= (and d!2035563 (not c!1188909)) b!6488563))

(declare-fun m!7277086 () Bool)

(assert (=> b!6488563 m!7277086))

(assert (=> b!6487526 d!2035563))

(declare-fun bs!1646262 () Bool)

(declare-fun d!2035567 () Bool)

(assert (= bs!1646262 (and d!2035567 d!2035423)))

(declare-fun lambda!359258 () Int)

(assert (=> bs!1646262 (= lambda!359258 lambda!359244)))

(declare-fun bs!1646263 () Bool)

(assert (= bs!1646263 (and d!2035567 d!2035425)))

(assert (=> bs!1646263 (= lambda!359258 lambda!359245)))

(declare-fun bs!1646264 () Bool)

(assert (= bs!1646264 (and d!2035567 d!2035435)))

(assert (=> bs!1646264 (= lambda!359258 lambda!359246)))

(declare-fun bs!1646265 () Bool)

(assert (= bs!1646265 (and d!2035567 d!2035511)))

(assert (=> bs!1646265 (= lambda!359258 lambda!359256)))

(assert (=> d!2035567 (= (nullableZipper!2124 lt!2388898) (exists!2617 lt!2388898 lambda!359258))))

(declare-fun bs!1646266 () Bool)

(assert (= bs!1646266 d!2035567))

(declare-fun m!7277088 () Bool)

(assert (=> bs!1646266 m!7277088))

(assert (=> b!6487514 d!2035567))

(declare-fun d!2035569 () Bool)

(assert (=> d!2035569 (= (Exists!3437 lambda!359201) (choose!48164 lambda!359201))))

(declare-fun bs!1646267 () Bool)

(assert (= bs!1646267 d!2035569))

(declare-fun m!7277090 () Bool)

(assert (=> bs!1646267 m!7277090))

(assert (=> d!2035129 d!2035569))

(declare-fun d!2035571 () Bool)

(assert (=> d!2035571 (= (Exists!3437 lambda!359202) (choose!48164 lambda!359202))))

(declare-fun bs!1646268 () Bool)

(assert (= bs!1646268 d!2035571))

(declare-fun m!7277092 () Bool)

(assert (=> bs!1646268 m!7277092))

(assert (=> d!2035129 d!2035571))

(declare-fun bs!1646269 () Bool)

(declare-fun d!2035573 () Bool)

(assert (= bs!1646269 (and d!2035573 d!2035151)))

(declare-fun lambda!359259 () Int)

(assert (=> bs!1646269 (not (= lambda!359259 lambda!359216))))

(declare-fun bs!1646270 () Bool)

(assert (= bs!1646270 (and d!2035573 b!6487593)))

(assert (=> bs!1646270 (not (= lambda!359259 lambda!359195))))

(declare-fun bs!1646271 () Bool)

(assert (= bs!1646271 (and d!2035573 b!6486638)))

(assert (=> bs!1646271 (not (= lambda!359259 lambda!359124))))

(declare-fun bs!1646272 () Bool)

(assert (= bs!1646272 (and d!2035573 b!6486656)))

(assert (=> bs!1646272 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359259 lambda!359121))))

(declare-fun bs!1646273 () Bool)

(assert (= bs!1646273 (and d!2035573 b!6487561)))

(assert (=> bs!1646273 (not (= lambda!359259 lambda!359189))))

(declare-fun bs!1646274 () Bool)

(assert (= bs!1646274 (and d!2035573 b!6486655)))

(assert (=> bs!1646274 (not (= lambda!359259 lambda!359119))))

(declare-fun bs!1646275 () Bool)

(assert (= bs!1646275 (and d!2035573 d!2035135)))

(assert (=> bs!1646275 (= lambda!359259 lambda!359207)))

(declare-fun bs!1646276 () Bool)

(assert (= bs!1646276 (and d!2035573 d!2035139)))

(assert (=> bs!1646276 (not (= lambda!359259 lambda!359213))))

(declare-fun bs!1646277 () Bool)

(assert (= bs!1646277 (and d!2035573 d!2035129)))

(assert (=> bs!1646277 (= lambda!359259 lambda!359201)))

(declare-fun bs!1646278 () Bool)

(assert (= bs!1646278 (and d!2035573 b!6487626)))

(assert (=> bs!1646278 (not (= lambda!359259 lambda!359203))))

(assert (=> bs!1646276 (= (= lt!2388865 (Star!16367 (reg!16696 (regOne!33246 r!7292)))) (= lambda!359259 lambda!359212))))

(declare-fun bs!1646279 () Bool)

(assert (= bs!1646279 (and d!2035573 b!6487630)))

(assert (=> bs!1646279 (not (= lambda!359259 lambda!359204))))

(assert (=> bs!1646277 (not (= lambda!359259 lambda!359202))))

(assert (=> bs!1646271 (= lambda!359259 lambda!359123)))

(declare-fun bs!1646280 () Bool)

(assert (= bs!1646280 (and d!2035573 d!2035165)))

(assert (=> bs!1646280 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359259 lambda!359218))))

(declare-fun bs!1646281 () Bool)

(assert (= bs!1646281 (and d!2035573 d!2035221)))

(assert (=> bs!1646281 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359259 lambda!359231))))

(declare-fun bs!1646282 () Bool)

(assert (= bs!1646282 (and d!2035573 b!6487565)))

(assert (=> bs!1646282 (not (= lambda!359259 lambda!359190))))

(assert (=> bs!1646274 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359259 lambda!359118))))

(declare-fun bs!1646283 () Bool)

(assert (= bs!1646283 (and d!2035573 d!2035387)))

(assert (=> bs!1646283 (not (= lambda!359259 lambda!359241))))

(assert (=> bs!1646271 (not (= lambda!359259 lambda!359125))))

(declare-fun bs!1646284 () Bool)

(assert (= bs!1646284 (and d!2035573 b!6488119)))

(assert (=> bs!1646284 (not (= lambda!359259 lambda!359234))))

(declare-fun bs!1646285 () Bool)

(assert (= bs!1646285 (and d!2035573 d!2035145)))

(assert (=> bs!1646285 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359259 lambda!359214))))

(assert (=> bs!1646269 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359259 lambda!359215))))

(declare-fun bs!1646286 () Bool)

(assert (= bs!1646286 (and d!2035573 b!6488303)))

(assert (=> bs!1646286 (not (= lambda!359259 lambda!359248))))

(assert (=> bs!1646272 (not (= lambda!359259 lambda!359122))))

(assert (=> bs!1646283 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359259 lambda!359240))))

(declare-fun bs!1646287 () Bool)

(assert (= bs!1646287 (and d!2035573 b!6488115)))

(assert (=> bs!1646287 (not (= lambda!359259 lambda!359233))))

(assert (=> bs!1646280 (not (= lambda!359259 lambda!359219))))

(declare-fun bs!1646288 () Bool)

(assert (= bs!1646288 (and d!2035573 b!6488299)))

(assert (=> bs!1646288 (not (= lambda!359259 lambda!359247))))

(declare-fun bs!1646289 () Bool)

(assert (= bs!1646289 (and d!2035573 d!2035161)))

(assert (=> bs!1646289 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359259 lambda!359217))))

(declare-fun bs!1646290 () Bool)

(assert (= bs!1646290 (and d!2035573 b!6487597)))

(assert (=> bs!1646290 (not (= lambda!359259 lambda!359196))))

(assert (=> d!2035573 true))

(assert (=> d!2035573 true))

(assert (=> d!2035573 true))

(declare-fun bs!1646291 () Bool)

(assert (= bs!1646291 d!2035573))

(declare-fun lambda!359260 () Int)

(assert (=> bs!1646291 (not (= lambda!359260 lambda!359259))))

(assert (=> bs!1646269 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359260 lambda!359216))))

(assert (=> bs!1646270 (not (= lambda!359260 lambda!359195))))

(assert (=> bs!1646271 (not (= lambda!359260 lambda!359124))))

(assert (=> bs!1646272 (not (= lambda!359260 lambda!359121))))

(assert (=> bs!1646273 (not (= lambda!359260 lambda!359189))))

(assert (=> bs!1646274 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359260 lambda!359119))))

(assert (=> bs!1646275 (not (= lambda!359260 lambda!359207))))

(assert (=> bs!1646276 (not (= lambda!359260 lambda!359213))))

(assert (=> bs!1646277 (not (= lambda!359260 lambda!359201))))

(assert (=> bs!1646278 (not (= lambda!359260 lambda!359203))))

(assert (=> bs!1646276 (not (= lambda!359260 lambda!359212))))

(assert (=> bs!1646279 (= (and (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 lt!2388865)) (= lt!2388865 (regTwo!33246 lt!2388865))) (= lambda!359260 lambda!359204))))

(assert (=> bs!1646277 (= lambda!359260 lambda!359202)))

(assert (=> bs!1646271 (not (= lambda!359260 lambda!359123))))

(assert (=> bs!1646280 (not (= lambda!359260 lambda!359218))))

(assert (=> bs!1646281 (not (= lambda!359260 lambda!359231))))

(assert (=> bs!1646282 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 lt!2388855)) (= lt!2388865 (regTwo!33246 lt!2388855))) (= lambda!359260 lambda!359190))))

(assert (=> bs!1646274 (not (= lambda!359260 lambda!359118))))

(assert (=> bs!1646283 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359260 lambda!359241))))

(assert (=> bs!1646271 (= lambda!359260 lambda!359125)))

(assert (=> bs!1646284 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 (regTwo!33247 r!7292))) (= lt!2388865 (regTwo!33246 (regTwo!33247 r!7292)))) (= lambda!359260 lambda!359234))))

(assert (=> bs!1646285 (not (= lambda!359260 lambda!359214))))

(assert (=> bs!1646269 (not (= lambda!359260 lambda!359215))))

(assert (=> bs!1646286 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 (regTwo!33247 lt!2388855))) (= lt!2388865 (regTwo!33246 (regTwo!33247 lt!2388855)))) (= lambda!359260 lambda!359248))))

(assert (=> bs!1646272 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359260 lambda!359122))))

(assert (=> bs!1646283 (not (= lambda!359260 lambda!359240))))

(assert (=> bs!1646287 (not (= lambda!359260 lambda!359233))))

(assert (=> bs!1646280 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359260 lambda!359219))))

(assert (=> bs!1646288 (not (= lambda!359260 lambda!359247))))

(assert (=> bs!1646289 (not (= lambda!359260 lambda!359217))))

(assert (=> bs!1646290 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359260 lambda!359196))))

(assert (=> d!2035573 true))

(assert (=> d!2035573 true))

(assert (=> d!2035573 true))

(assert (=> d!2035573 (= (Exists!3437 lambda!359259) (Exists!3437 lambda!359260))))

(assert (=> d!2035573 true))

(declare-fun _$90!2343 () Unit!158799)

(assert (=> d!2035573 (= (choose!48165 (reg!16696 (regOne!33246 r!7292)) lt!2388865 (_1!36649 lt!2388900)) _$90!2343)))

(declare-fun m!7277120 () Bool)

(assert (=> bs!1646291 m!7277120))

(declare-fun m!7277122 () Bool)

(assert (=> bs!1646291 m!7277122))

(assert (=> d!2035129 d!2035573))

(assert (=> d!2035129 d!2035253))

(declare-fun d!2035581 () Bool)

(assert (=> d!2035581 true))

(assert (=> d!2035581 true))

(declare-fun res!2664863 () Bool)

(assert (=> d!2035581 (= (choose!48164 lambda!359124) res!2664863)))

(assert (=> d!2035123 d!2035581))

(declare-fun d!2035583 () Bool)

(declare-fun c!1188917 () Bool)

(assert (=> d!2035583 (= c!1188917 (isEmpty!37468 (tail!12294 (t!379026 s!2326))))))

(declare-fun e!3932417 () Bool)

(assert (=> d!2035583 (= (matchZipper!2379 (derivationStepZipper!2333 lt!2388913 (head!13209 (t!379026 s!2326))) (tail!12294 (t!379026 s!2326))) e!3932417)))

(declare-fun b!6488585 () Bool)

(assert (=> b!6488585 (= e!3932417 (nullableZipper!2124 (derivationStepZipper!2333 lt!2388913 (head!13209 (t!379026 s!2326)))))))

(declare-fun b!6488586 () Bool)

(assert (=> b!6488586 (= e!3932417 (matchZipper!2379 (derivationStepZipper!2333 (derivationStepZipper!2333 lt!2388913 (head!13209 (t!379026 s!2326))) (head!13209 (tail!12294 (t!379026 s!2326)))) (tail!12294 (tail!12294 (t!379026 s!2326)))))))

(assert (= (and d!2035583 c!1188917) b!6488585))

(assert (= (and d!2035583 (not c!1188917)) b!6488586))

(assert (=> d!2035583 m!7275866))

(assert (=> d!2035583 m!7276302))

(assert (=> b!6488585 m!7275900))

(declare-fun m!7277124 () Bool)

(assert (=> b!6488585 m!7277124))

(assert (=> b!6488586 m!7275866))

(assert (=> b!6488586 m!7276306))

(assert (=> b!6488586 m!7275900))

(assert (=> b!6488586 m!7276306))

(declare-fun m!7277126 () Bool)

(assert (=> b!6488586 m!7277126))

(assert (=> b!6488586 m!7275866))

(assert (=> b!6488586 m!7276310))

(assert (=> b!6488586 m!7277126))

(assert (=> b!6488586 m!7276310))

(declare-fun m!7277128 () Bool)

(assert (=> b!6488586 m!7277128))

(assert (=> b!6487463 d!2035583))

(declare-fun bs!1646309 () Bool)

(declare-fun d!2035585 () Bool)

(assert (= bs!1646309 (and d!2035585 d!2035525)))

(declare-fun lambda!359263 () Int)

(assert (=> bs!1646309 (= (= (head!13209 (t!379026 s!2326)) (head!13209 lt!2388887)) (= lambda!359263 lambda!359257))))

(declare-fun bs!1646310 () Bool)

(assert (= bs!1646310 (and d!2035585 d!2035105)))

(assert (=> bs!1646310 (= (= (head!13209 (t!379026 s!2326)) (h!71724 s!2326)) (= lambda!359263 lambda!359193))))

(declare-fun bs!1646311 () Bool)

(assert (= bs!1646311 (and d!2035585 d!2035493)))

(assert (=> bs!1646311 (= (= (head!13209 (t!379026 s!2326)) (head!13209 s!2326)) (= lambda!359263 lambda!359255))))

(declare-fun bs!1646312 () Bool)

(assert (= bs!1646312 (and d!2035585 d!2035487)))

(assert (=> bs!1646312 (= lambda!359263 lambda!359254)))

(declare-fun bs!1646313 () Bool)

(assert (= bs!1646313 (and d!2035585 d!2035229)))

(assert (=> bs!1646313 (= lambda!359263 lambda!359232)))

(declare-fun bs!1646314 () Bool)

(assert (= bs!1646314 (and d!2035585 b!6486628)))

(assert (=> bs!1646314 (= (= (head!13209 (t!379026 s!2326)) (h!71724 s!2326)) (= lambda!359263 lambda!359120))))

(assert (=> d!2035585 true))

(assert (=> d!2035585 (= (derivationStepZipper!2333 lt!2388913 (head!13209 (t!379026 s!2326))) (flatMap!1872 lt!2388913 lambda!359263))))

(declare-fun bs!1646315 () Bool)

(assert (= bs!1646315 d!2035585))

(declare-fun m!7277136 () Bool)

(assert (=> bs!1646315 m!7277136))

(assert (=> b!6487463 d!2035585))

(assert (=> b!6487463 d!2035231))

(assert (=> b!6487463 d!2035233))

(declare-fun d!2035589 () Bool)

(assert (=> d!2035589 true))

(assert (=> d!2035589 true))

(declare-fun res!2664864 () Bool)

(assert (=> d!2035589 (= (choose!48164 lambda!359123) res!2664864)))

(assert (=> d!2035121 d!2035589))

(declare-fun d!2035593 () Bool)

(declare-fun c!1188918 () Bool)

(assert (=> d!2035593 (= c!1188918 (isEmpty!37468 (_1!36649 lt!2388858)))))

(declare-fun e!3932418 () Bool)

(assert (=> d!2035593 (= (matchZipper!2379 (store ((as const (Array Context!11502 Bool)) false) lt!2388895 true) (_1!36649 lt!2388858)) e!3932418)))

(declare-fun b!6488587 () Bool)

(assert (=> b!6488587 (= e!3932418 (nullableZipper!2124 (store ((as const (Array Context!11502 Bool)) false) lt!2388895 true)))))

(declare-fun b!6488588 () Bool)

(assert (=> b!6488588 (= e!3932418 (matchZipper!2379 (derivationStepZipper!2333 (store ((as const (Array Context!11502 Bool)) false) lt!2388895 true) (head!13209 (_1!36649 lt!2388858))) (tail!12294 (_1!36649 lt!2388858))))))

(assert (= (and d!2035593 c!1188918) b!6488587))

(assert (= (and d!2035593 (not c!1188918)) b!6488588))

(assert (=> d!2035593 m!7275820))

(assert (=> b!6488587 m!7275066))

(declare-fun m!7277140 () Bool)

(assert (=> b!6488587 m!7277140))

(assert (=> b!6488588 m!7275824))

(assert (=> b!6488588 m!7275066))

(assert (=> b!6488588 m!7275824))

(declare-fun m!7277142 () Bool)

(assert (=> b!6488588 m!7277142))

(assert (=> b!6488588 m!7275814))

(assert (=> b!6488588 m!7277142))

(assert (=> b!6488588 m!7275814))

(declare-fun m!7277144 () Bool)

(assert (=> b!6488588 m!7277144))

(assert (=> d!2035083 d!2035593))

(declare-fun b!6488589 () Bool)

(declare-fun e!3932420 () List!65401)

(assert (=> b!6488589 (= e!3932420 (exprs!6251 lt!2388862))))

(declare-fun b!6488591 () Bool)

(declare-fun res!2664866 () Bool)

(declare-fun e!3932419 () Bool)

(assert (=> b!6488591 (=> (not res!2664866) (not e!3932419))))

(declare-fun lt!2389192 () List!65401)

(assert (=> b!6488591 (= res!2664866 (= (size!40426 lt!2389192) (+ (size!40426 (exprs!6251 lt!2388895)) (size!40426 (exprs!6251 lt!2388862)))))))

(declare-fun b!6488592 () Bool)

(assert (=> b!6488592 (= e!3932419 (or (not (= (exprs!6251 lt!2388862) Nil!65277)) (= lt!2389192 (exprs!6251 lt!2388895))))))

(declare-fun b!6488590 () Bool)

(assert (=> b!6488590 (= e!3932420 (Cons!65277 (h!71725 (exprs!6251 lt!2388895)) (++!14445 (t!379027 (exprs!6251 lt!2388895)) (exprs!6251 lt!2388862))))))

(declare-fun d!2035595 () Bool)

(assert (=> d!2035595 e!3932419))

(declare-fun res!2664865 () Bool)

(assert (=> d!2035595 (=> (not res!2664865) (not e!3932419))))

(assert (=> d!2035595 (= res!2664865 (= (content!12440 lt!2389192) ((_ map or) (content!12440 (exprs!6251 lt!2388895)) (content!12440 (exprs!6251 lt!2388862)))))))

(assert (=> d!2035595 (= lt!2389192 e!3932420)))

(declare-fun c!1188919 () Bool)

(assert (=> d!2035595 (= c!1188919 ((_ is Nil!65277) (exprs!6251 lt!2388895)))))

(assert (=> d!2035595 (= (++!14445 (exprs!6251 lt!2388895) (exprs!6251 lt!2388862)) lt!2389192)))

(assert (= (and d!2035595 c!1188919) b!6488589))

(assert (= (and d!2035595 (not c!1188919)) b!6488590))

(assert (= (and d!2035595 res!2664865) b!6488591))

(assert (= (and b!6488591 res!2664866) b!6488592))

(declare-fun m!7277146 () Bool)

(assert (=> b!6488591 m!7277146))

(declare-fun m!7277148 () Bool)

(assert (=> b!6488591 m!7277148))

(declare-fun m!7277150 () Bool)

(assert (=> b!6488591 m!7277150))

(declare-fun m!7277152 () Bool)

(assert (=> b!6488590 m!7277152))

(declare-fun m!7277154 () Bool)

(assert (=> d!2035595 m!7277154))

(declare-fun m!7277156 () Bool)

(assert (=> d!2035595 m!7277156))

(declare-fun m!7277158 () Bool)

(assert (=> d!2035595 m!7277158))

(assert (=> d!2035083 d!2035595))

(declare-fun bs!1646318 () Bool)

(declare-fun d!2035597 () Bool)

(assert (= bs!1646318 (and d!2035597 b!6486640)))

(declare-fun lambda!359266 () Int)

(assert (=> bs!1646318 (= lambda!359266 lambda!359126)))

(declare-fun bs!1646319 () Bool)

(assert (= bs!1646319 (and d!2035597 d!2035473)))

(assert (=> bs!1646319 (= lambda!359266 lambda!359251)))

(declare-fun bs!1646320 () Bool)

(assert (= bs!1646320 (and d!2035597 d!2035183)))

(assert (=> bs!1646320 (= lambda!359266 lambda!359225)))

(declare-fun bs!1646321 () Bool)

(assert (= bs!1646321 (and d!2035597 d!2035173)))

(assert (=> bs!1646321 (= lambda!359266 lambda!359222)))

(declare-fun bs!1646322 () Bool)

(assert (= bs!1646322 (and d!2035597 d!2035185)))

(assert (=> bs!1646322 (= lambda!359266 lambda!359228)))

(declare-fun bs!1646323 () Bool)

(assert (= bs!1646323 (and d!2035597 d!2035009)))

(assert (=> bs!1646323 (= lambda!359266 lambda!359178)))

(declare-fun bs!1646324 () Bool)

(assert (= bs!1646324 (and d!2035597 d!2035471)))

(assert (=> bs!1646324 (= lambda!359266 lambda!359250)))

(declare-fun bs!1646325 () Bool)

(assert (= bs!1646325 (and d!2035597 d!2035379)))

(assert (=> bs!1646325 (= lambda!359266 lambda!359235)))

(declare-fun bs!1646326 () Bool)

(assert (= bs!1646326 (and d!2035597 d!2035453)))

(assert (=> bs!1646326 (= lambda!359266 lambda!359249)))

(declare-fun bs!1646327 () Bool)

(assert (= bs!1646327 (and d!2035597 d!2035083)))

(assert (=> bs!1646327 (= lambda!359266 lambda!359184)))

(declare-fun bs!1646328 () Bool)

(assert (= bs!1646328 (and d!2035597 d!2035481)))

(assert (=> bs!1646328 (= lambda!359266 lambda!359252)))

(declare-fun bs!1646329 () Bool)

(assert (= bs!1646329 (and d!2035597 d!2035073)))

(assert (=> bs!1646329 (= lambda!359266 lambda!359181)))

(declare-fun bs!1646330 () Bool)

(assert (= bs!1646330 (and d!2035597 d!2035109)))

(assert (=> bs!1646330 (= lambda!359266 lambda!359194)))

(declare-fun bs!1646331 () Bool)

(assert (= bs!1646331 (and d!2035597 d!2035483)))

(assert (=> bs!1646331 (= lambda!359266 lambda!359253)))

(assert (=> d!2035597 (matchZipper!2379 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 (exprs!6251 lt!2388895) (exprs!6251 lt!2388862))) true) (++!14444 (_1!36649 lt!2388858) lt!2388903))))

(declare-fun lt!2389195 () Unit!158799)

(assert (=> d!2035597 (= lt!2389195 (lemmaConcatPreservesForall!346 (exprs!6251 lt!2388895) (exprs!6251 lt!2388862) lambda!359266))))

(assert (=> d!2035597 true))

(declare-fun _$56!380 () Unit!158799)

(assert (=> d!2035597 (= (choose!48161 lt!2388895 lt!2388862 (_1!36649 lt!2388858) lt!2388903) _$56!380)))

(declare-fun bs!1646332 () Bool)

(assert (= bs!1646332 d!2035597))

(declare-fun m!7277170 () Bool)

(assert (=> bs!1646332 m!7277170))

(assert (=> bs!1646332 m!7275984))

(assert (=> bs!1646332 m!7274920))

(assert (=> bs!1646332 m!7275990))

(assert (=> bs!1646332 m!7274920))

(assert (=> bs!1646332 m!7275982))

(assert (=> bs!1646332 m!7275984))

(assert (=> d!2035083 d!2035597))

(declare-fun d!2035613 () Bool)

(declare-fun c!1188922 () Bool)

(assert (=> d!2035613 (= c!1188922 (isEmpty!37468 (++!14444 (_1!36649 lt!2388858) lt!2388903)))))

(declare-fun e!3932431 () Bool)

(assert (=> d!2035613 (= (matchZipper!2379 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 (exprs!6251 lt!2388895) (exprs!6251 lt!2388862))) true) (++!14444 (_1!36649 lt!2388858) lt!2388903)) e!3932431)))

(declare-fun b!6488605 () Bool)

(assert (=> b!6488605 (= e!3932431 (nullableZipper!2124 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 (exprs!6251 lt!2388895) (exprs!6251 lt!2388862))) true)))))

(declare-fun b!6488606 () Bool)

(assert (=> b!6488606 (= e!3932431 (matchZipper!2379 (derivationStepZipper!2333 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (++!14445 (exprs!6251 lt!2388895) (exprs!6251 lt!2388862))) true) (head!13209 (++!14444 (_1!36649 lt!2388858) lt!2388903))) (tail!12294 (++!14444 (_1!36649 lt!2388858) lt!2388903))))))

(assert (= (and d!2035613 c!1188922) b!6488605))

(assert (= (and d!2035613 (not c!1188922)) b!6488606))

(assert (=> d!2035613 m!7274920))

(assert (=> d!2035613 m!7276344))

(assert (=> b!6488605 m!7275984))

(declare-fun m!7277172 () Bool)

(assert (=> b!6488605 m!7277172))

(assert (=> b!6488606 m!7274920))

(assert (=> b!6488606 m!7276348))

(assert (=> b!6488606 m!7275984))

(assert (=> b!6488606 m!7276348))

(declare-fun m!7277174 () Bool)

(assert (=> b!6488606 m!7277174))

(assert (=> b!6488606 m!7274920))

(assert (=> b!6488606 m!7276338))

(assert (=> b!6488606 m!7277174))

(assert (=> b!6488606 m!7276338))

(declare-fun m!7277176 () Bool)

(assert (=> b!6488606 m!7277176))

(assert (=> d!2035083 d!2035613))

(assert (=> d!2035083 d!2034933))

(declare-fun d!2035615 () Bool)

(assert (=> d!2035615 (forall!15550 (++!14445 (exprs!6251 lt!2388895) (exprs!6251 lt!2388862)) lambda!359184)))

(declare-fun lt!2389196 () Unit!158799)

(assert (=> d!2035615 (= lt!2389196 (choose!48160 (exprs!6251 lt!2388895) (exprs!6251 lt!2388862) lambda!359184))))

(assert (=> d!2035615 (forall!15550 (exprs!6251 lt!2388895) lambda!359184)))

(assert (=> d!2035615 (= (lemmaConcatPreservesForall!346 (exprs!6251 lt!2388895) (exprs!6251 lt!2388862) lambda!359184) lt!2389196)))

(declare-fun bs!1646333 () Bool)

(assert (= bs!1646333 d!2035615))

(assert (=> bs!1646333 m!7275982))

(assert (=> bs!1646333 m!7275982))

(declare-fun m!7277178 () Bool)

(assert (=> bs!1646333 m!7277178))

(declare-fun m!7277180 () Bool)

(assert (=> bs!1646333 m!7277180))

(declare-fun m!7277182 () Bool)

(assert (=> bs!1646333 m!7277182))

(assert (=> d!2035083 d!2035615))

(declare-fun d!2035617 () Bool)

(assert (=> d!2035617 (= (isEmpty!37472 lt!2388868) (not ((_ is Some!16257) lt!2388868)))))

(assert (=> d!2035159 d!2035617))

(declare-fun b!6488611 () Bool)

(declare-fun e!3932436 () (InoxSet Context!11502))

(declare-fun call!561651 () (InoxSet Context!11502))

(declare-fun call!561650 () (InoxSet Context!11502))

(assert (=> b!6488611 (= e!3932436 ((_ map or) call!561651 call!561650))))

(declare-fun b!6488612 () Bool)

(declare-fun e!3932440 () (InoxSet Context!11502))

(declare-fun call!561648 () (InoxSet Context!11502))

(assert (=> b!6488612 (= e!3932440 ((_ map or) call!561650 call!561648))))

(declare-fun bm!561642 () Bool)

(declare-fun call!561649 () (InoxSet Context!11502))

(assert (=> bm!561642 (= call!561649 call!561648)))

(declare-fun b!6488613 () Bool)

(declare-fun e!3932441 () (InoxSet Context!11502))

(assert (=> b!6488613 (= e!3932440 e!3932441)))

(declare-fun c!1188923 () Bool)

(assert (=> b!6488613 (= c!1188923 ((_ is Concat!25212) (h!71725 (exprs!6251 lt!2388885))))))

(declare-fun b!6488614 () Bool)

(declare-fun e!3932439 () (InoxSet Context!11502))

(assert (=> b!6488614 (= e!3932439 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (t!379027 (exprs!6251 lt!2388885))) true))))

(declare-fun b!6488615 () Bool)

(declare-fun e!3932438 () Bool)

(assert (=> b!6488615 (= e!3932438 (nullable!6360 (regOne!33246 (h!71725 (exprs!6251 lt!2388885)))))))

(declare-fun c!1188924 () Bool)

(declare-fun call!561647 () List!65401)

(declare-fun bm!561643 () Bool)

(assert (=> bm!561643 (= call!561650 (derivationStepZipperDown!1615 (ite c!1188924 (regTwo!33247 (h!71725 (exprs!6251 lt!2388885))) (regOne!33246 (h!71725 (exprs!6251 lt!2388885)))) (ite c!1188924 (Context!11503 (t!379027 (exprs!6251 lt!2388885))) (Context!11503 call!561647)) (h!71724 s!2326)))))

(declare-fun bm!561644 () Bool)

(declare-fun c!1188927 () Bool)

(declare-fun call!561652 () List!65401)

(assert (=> bm!561644 (= call!561651 (derivationStepZipperDown!1615 (ite c!1188924 (regOne!33247 (h!71725 (exprs!6251 lt!2388885))) (ite c!1188927 (regTwo!33246 (h!71725 (exprs!6251 lt!2388885))) (ite c!1188923 (regOne!33246 (h!71725 (exprs!6251 lt!2388885))) (reg!16696 (h!71725 (exprs!6251 lt!2388885)))))) (ite (or c!1188924 c!1188927) (Context!11503 (t!379027 (exprs!6251 lt!2388885))) (Context!11503 call!561652)) (h!71724 s!2326)))))

(declare-fun bm!561645 () Bool)

(assert (=> bm!561645 (= call!561652 call!561647)))

(declare-fun b!6488616 () Bool)

(declare-fun e!3932437 () (InoxSet Context!11502))

(assert (=> b!6488616 (= e!3932437 call!561649)))

(declare-fun b!6488617 () Bool)

(assert (=> b!6488617 (= e!3932441 call!561649)))

(declare-fun b!6488618 () Bool)

(assert (=> b!6488618 (= e!3932437 ((as const (Array Context!11502 Bool)) false))))

(declare-fun bm!561646 () Bool)

(assert (=> bm!561646 (= call!561647 ($colon$colon!2219 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388885)))) (ite (or c!1188927 c!1188923) (regTwo!33246 (h!71725 (exprs!6251 lt!2388885))) (h!71725 (exprs!6251 lt!2388885)))))))

(declare-fun b!6488619 () Bool)

(assert (=> b!6488619 (= c!1188927 e!3932438)))

(declare-fun res!2664879 () Bool)

(assert (=> b!6488619 (=> (not res!2664879) (not e!3932438))))

(assert (=> b!6488619 (= res!2664879 ((_ is Concat!25212) (h!71725 (exprs!6251 lt!2388885))))))

(assert (=> b!6488619 (= e!3932436 e!3932440)))

(declare-fun b!6488620 () Bool)

(declare-fun c!1188925 () Bool)

(assert (=> b!6488620 (= c!1188925 ((_ is Star!16367) (h!71725 (exprs!6251 lt!2388885))))))

(assert (=> b!6488620 (= e!3932441 e!3932437)))

(declare-fun bm!561647 () Bool)

(assert (=> bm!561647 (= call!561648 call!561651)))

(declare-fun b!6488621 () Bool)

(assert (=> b!6488621 (= e!3932439 e!3932436)))

(assert (=> b!6488621 (= c!1188924 ((_ is Union!16367) (h!71725 (exprs!6251 lt!2388885))))))

(declare-fun d!2035619 () Bool)

(declare-fun c!1188926 () Bool)

(assert (=> d!2035619 (= c!1188926 (and ((_ is ElementMatch!16367) (h!71725 (exprs!6251 lt!2388885))) (= (c!1188383 (h!71725 (exprs!6251 lt!2388885))) (h!71724 s!2326))))))

(assert (=> d!2035619 (= (derivationStepZipperDown!1615 (h!71725 (exprs!6251 lt!2388885)) (Context!11503 (t!379027 (exprs!6251 lt!2388885))) (h!71724 s!2326)) e!3932439)))

(assert (= (and d!2035619 c!1188926) b!6488614))

(assert (= (and d!2035619 (not c!1188926)) b!6488621))

(assert (= (and b!6488621 c!1188924) b!6488611))

(assert (= (and b!6488621 (not c!1188924)) b!6488619))

(assert (= (and b!6488619 res!2664879) b!6488615))

(assert (= (and b!6488619 c!1188927) b!6488612))

(assert (= (and b!6488619 (not c!1188927)) b!6488613))

(assert (= (and b!6488613 c!1188923) b!6488617))

(assert (= (and b!6488613 (not c!1188923)) b!6488620))

(assert (= (and b!6488620 c!1188925) b!6488616))

(assert (= (and b!6488620 (not c!1188925)) b!6488618))

(assert (= (or b!6488617 b!6488616) bm!561645))

(assert (= (or b!6488617 b!6488616) bm!561642))

(assert (= (or b!6488612 bm!561645) bm!561646))

(assert (= (or b!6488612 bm!561642) bm!561647))

(assert (= (or b!6488611 b!6488612) bm!561643))

(assert (= (or b!6488611 bm!561647) bm!561644))

(declare-fun m!7277184 () Bool)

(assert (=> bm!561646 m!7277184))

(declare-fun m!7277186 () Bool)

(assert (=> bm!561643 m!7277186))

(declare-fun m!7277188 () Bool)

(assert (=> b!6488615 m!7277188))

(declare-fun m!7277190 () Bool)

(assert (=> b!6488614 m!7277190))

(declare-fun m!7277192 () Bool)

(assert (=> bm!561644 m!7277192))

(assert (=> bm!561494 d!2035619))

(declare-fun b!6488624 () Bool)

(declare-fun e!3932445 () Bool)

(declare-fun call!561654 () Bool)

(assert (=> b!6488624 (= e!3932445 call!561654)))

(declare-fun b!6488625 () Bool)

(declare-fun e!3932448 () Bool)

(declare-fun e!3932444 () Bool)

(assert (=> b!6488625 (= e!3932448 e!3932444)))

(declare-fun c!1188928 () Bool)

(assert (=> b!6488625 (= c!1188928 ((_ is Star!16367) lt!2389112))))

(declare-fun d!2035621 () Bool)

(declare-fun res!2664885 () Bool)

(assert (=> d!2035621 (=> res!2664885 e!3932448)))

(assert (=> d!2035621 (= res!2664885 ((_ is ElementMatch!16367) lt!2389112))))

(assert (=> d!2035621 (= (validRegex!8103 lt!2389112) e!3932448)))

(declare-fun bm!561648 () Bool)

(declare-fun call!561655 () Bool)

(declare-fun c!1188929 () Bool)

(assert (=> bm!561648 (= call!561655 (validRegex!8103 (ite c!1188929 (regOne!33247 lt!2389112) (regOne!33246 lt!2389112))))))

(declare-fun b!6488626 () Bool)

(declare-fun res!2664886 () Bool)

(declare-fun e!3932447 () Bool)

(assert (=> b!6488626 (=> res!2664886 e!3932447)))

(assert (=> b!6488626 (= res!2664886 (not ((_ is Concat!25212) lt!2389112)))))

(declare-fun e!3932446 () Bool)

(assert (=> b!6488626 (= e!3932446 e!3932447)))

(declare-fun b!6488627 () Bool)

(declare-fun e!3932449 () Bool)

(assert (=> b!6488627 (= e!3932449 call!561654)))

(declare-fun call!561653 () Bool)

(declare-fun bm!561649 () Bool)

(assert (=> bm!561649 (= call!561653 (validRegex!8103 (ite c!1188928 (reg!16696 lt!2389112) (ite c!1188929 (regTwo!33247 lt!2389112) (regTwo!33246 lt!2389112)))))))

(declare-fun b!6488628 () Bool)

(declare-fun res!2664884 () Bool)

(assert (=> b!6488628 (=> (not res!2664884) (not e!3932449))))

(assert (=> b!6488628 (= res!2664884 call!561655)))

(assert (=> b!6488628 (= e!3932446 e!3932449)))

(declare-fun b!6488629 () Bool)

(assert (=> b!6488629 (= e!3932444 e!3932446)))

(assert (=> b!6488629 (= c!1188929 ((_ is Union!16367) lt!2389112))))

(declare-fun bm!561650 () Bool)

(assert (=> bm!561650 (= call!561654 call!561653)))

(declare-fun b!6488630 () Bool)

(declare-fun e!3932450 () Bool)

(assert (=> b!6488630 (= e!3932450 call!561653)))

(declare-fun b!6488631 () Bool)

(assert (=> b!6488631 (= e!3932444 e!3932450)))

(declare-fun res!2664883 () Bool)

(assert (=> b!6488631 (= res!2664883 (not (nullable!6360 (reg!16696 lt!2389112))))))

(assert (=> b!6488631 (=> (not res!2664883) (not e!3932450))))

(declare-fun b!6488632 () Bool)

(assert (=> b!6488632 (= e!3932447 e!3932445)))

(declare-fun res!2664882 () Bool)

(assert (=> b!6488632 (=> (not res!2664882) (not e!3932445))))

(assert (=> b!6488632 (= res!2664882 call!561655)))

(assert (= (and d!2035621 (not res!2664885)) b!6488625))

(assert (= (and b!6488625 c!1188928) b!6488631))

(assert (= (and b!6488625 (not c!1188928)) b!6488629))

(assert (= (and b!6488631 res!2664883) b!6488630))

(assert (= (and b!6488629 c!1188929) b!6488628))

(assert (= (and b!6488629 (not c!1188929)) b!6488626))

(assert (= (and b!6488628 res!2664884) b!6488627))

(assert (= (and b!6488626 (not res!2664886)) b!6488632))

(assert (= (and b!6488632 res!2664882) b!6488624))

(assert (= (or b!6488627 b!6488624) bm!561650))

(assert (= (or b!6488628 b!6488632) bm!561648))

(assert (= (or b!6488630 bm!561650) bm!561649))

(declare-fun m!7277200 () Bool)

(assert (=> bm!561648 m!7277200))

(declare-fun m!7277202 () Bool)

(assert (=> bm!561649 m!7277202))

(declare-fun m!7277204 () Bool)

(assert (=> b!6488631 m!7277204))

(assert (=> d!2035173 d!2035621))

(declare-fun d!2035627 () Bool)

(declare-fun res!2664895 () Bool)

(declare-fun e!3932458 () Bool)

(assert (=> d!2035627 (=> res!2664895 e!3932458)))

(assert (=> d!2035627 (= res!2664895 ((_ is Nil!65277) (exprs!6251 (h!71726 zl!343))))))

(assert (=> d!2035627 (= (forall!15550 (exprs!6251 (h!71726 zl!343)) lambda!359222) e!3932458)))

(declare-fun b!6488647 () Bool)

(declare-fun e!3932459 () Bool)

(assert (=> b!6488647 (= e!3932458 e!3932459)))

(declare-fun res!2664896 () Bool)

(assert (=> b!6488647 (=> (not res!2664896) (not e!3932459))))

(assert (=> b!6488647 (= res!2664896 (dynLambda!25928 lambda!359222 (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun b!6488648 () Bool)

(assert (=> b!6488648 (= e!3932459 (forall!15550 (t!379027 (exprs!6251 (h!71726 zl!343))) lambda!359222))))

(assert (= (and d!2035627 (not res!2664895)) b!6488647))

(assert (= (and b!6488647 res!2664896) b!6488648))

(declare-fun b_lambda!245651 () Bool)

(assert (=> (not b_lambda!245651) (not b!6488647)))

(declare-fun m!7277206 () Bool)

(assert (=> b!6488647 m!7277206))

(declare-fun m!7277208 () Bool)

(assert (=> b!6488648 m!7277208))

(assert (=> d!2035173 d!2035627))

(assert (=> b!6487428 d!2035537))

(assert (=> b!6487735 d!2035053))

(declare-fun b!6488649 () Bool)

(declare-fun e!3932461 () Bool)

(declare-fun call!561658 () Bool)

(assert (=> b!6488649 (= e!3932461 call!561658)))

(declare-fun b!6488650 () Bool)

(declare-fun e!3932464 () Bool)

(declare-fun e!3932460 () Bool)

(assert (=> b!6488650 (= e!3932464 e!3932460)))

(declare-fun c!1188933 () Bool)

(assert (=> b!6488650 (= c!1188933 ((_ is Star!16367) lt!2389033))))

(declare-fun d!2035629 () Bool)

(declare-fun res!2664900 () Bool)

(assert (=> d!2035629 (=> res!2664900 e!3932464)))

(assert (=> d!2035629 (= res!2664900 ((_ is ElementMatch!16367) lt!2389033))))

(assert (=> d!2035629 (= (validRegex!8103 lt!2389033) e!3932464)))

(declare-fun bm!561652 () Bool)

(declare-fun call!561659 () Bool)

(declare-fun c!1188934 () Bool)

(assert (=> bm!561652 (= call!561659 (validRegex!8103 (ite c!1188934 (regOne!33247 lt!2389033) (regOne!33246 lt!2389033))))))

(declare-fun b!6488651 () Bool)

(declare-fun res!2664901 () Bool)

(declare-fun e!3932463 () Bool)

(assert (=> b!6488651 (=> res!2664901 e!3932463)))

(assert (=> b!6488651 (= res!2664901 (not ((_ is Concat!25212) lt!2389033)))))

(declare-fun e!3932462 () Bool)

(assert (=> b!6488651 (= e!3932462 e!3932463)))

(declare-fun b!6488652 () Bool)

(declare-fun e!3932465 () Bool)

(assert (=> b!6488652 (= e!3932465 call!561658)))

(declare-fun bm!561653 () Bool)

(declare-fun call!561657 () Bool)

(assert (=> bm!561653 (= call!561657 (validRegex!8103 (ite c!1188933 (reg!16696 lt!2389033) (ite c!1188934 (regTwo!33247 lt!2389033) (regTwo!33246 lt!2389033)))))))

(declare-fun b!6488653 () Bool)

(declare-fun res!2664899 () Bool)

(assert (=> b!6488653 (=> (not res!2664899) (not e!3932465))))

(assert (=> b!6488653 (= res!2664899 call!561659)))

(assert (=> b!6488653 (= e!3932462 e!3932465)))

(declare-fun b!6488654 () Bool)

(assert (=> b!6488654 (= e!3932460 e!3932462)))

(assert (=> b!6488654 (= c!1188934 ((_ is Union!16367) lt!2389033))))

(declare-fun bm!561654 () Bool)

(assert (=> bm!561654 (= call!561658 call!561657)))

(declare-fun b!6488655 () Bool)

(declare-fun e!3932466 () Bool)

(assert (=> b!6488655 (= e!3932466 call!561657)))

(declare-fun b!6488656 () Bool)

(assert (=> b!6488656 (= e!3932460 e!3932466)))

(declare-fun res!2664898 () Bool)

(assert (=> b!6488656 (= res!2664898 (not (nullable!6360 (reg!16696 lt!2389033))))))

(assert (=> b!6488656 (=> (not res!2664898) (not e!3932466))))

(declare-fun b!6488657 () Bool)

(assert (=> b!6488657 (= e!3932463 e!3932461)))

(declare-fun res!2664897 () Bool)

(assert (=> b!6488657 (=> (not res!2664897) (not e!3932461))))

(assert (=> b!6488657 (= res!2664897 call!561659)))

(assert (= (and d!2035629 (not res!2664900)) b!6488650))

(assert (= (and b!6488650 c!1188933) b!6488656))

(assert (= (and b!6488650 (not c!1188933)) b!6488654))

(assert (= (and b!6488656 res!2664898) b!6488655))

(assert (= (and b!6488654 c!1188934) b!6488653))

(assert (= (and b!6488654 (not c!1188934)) b!6488651))

(assert (= (and b!6488653 res!2664899) b!6488652))

(assert (= (and b!6488651 (not res!2664901)) b!6488657))

(assert (= (and b!6488657 res!2664897) b!6488649))

(assert (= (or b!6488652 b!6488649) bm!561654))

(assert (= (or b!6488653 b!6488657) bm!561652))

(assert (= (or b!6488655 bm!561654) bm!561653))

(declare-fun m!7277210 () Bool)

(assert (=> bm!561652 m!7277210))

(declare-fun m!7277212 () Bool)

(assert (=> bm!561653 m!7277212))

(declare-fun m!7277214 () Bool)

(assert (=> b!6488656 m!7277214))

(assert (=> d!2035031 d!2035629))

(assert (=> d!2035031 d!2035183))

(assert (=> d!2035031 d!2035185))

(declare-fun b!6488661 () Bool)

(declare-fun e!3932467 () Bool)

(declare-fun lt!2389198 () List!65400)

(assert (=> b!6488661 (= e!3932467 (or (not (= (_2!36649 (get!22634 lt!2389101)) Nil!65276)) (= lt!2389198 (_1!36649 (get!22634 lt!2389101)))))))

(declare-fun d!2035631 () Bool)

(assert (=> d!2035631 e!3932467))

(declare-fun res!2664903 () Bool)

(assert (=> d!2035631 (=> (not res!2664903) (not e!3932467))))

(assert (=> d!2035631 (= res!2664903 (= (content!12437 lt!2389198) ((_ map or) (content!12437 (_1!36649 (get!22634 lt!2389101))) (content!12437 (_2!36649 (get!22634 lt!2389101))))))))

(declare-fun e!3932468 () List!65400)

(assert (=> d!2035631 (= lt!2389198 e!3932468)))

(declare-fun c!1188935 () Bool)

(assert (=> d!2035631 (= c!1188935 ((_ is Nil!65276) (_1!36649 (get!22634 lt!2389101))))))

(assert (=> d!2035631 (= (++!14444 (_1!36649 (get!22634 lt!2389101)) (_2!36649 (get!22634 lt!2389101))) lt!2389198)))

(declare-fun b!6488659 () Bool)

(assert (=> b!6488659 (= e!3932468 (Cons!65276 (h!71724 (_1!36649 (get!22634 lt!2389101))) (++!14444 (t!379026 (_1!36649 (get!22634 lt!2389101))) (_2!36649 (get!22634 lt!2389101)))))))

(declare-fun b!6488660 () Bool)

(declare-fun res!2664902 () Bool)

(assert (=> b!6488660 (=> (not res!2664902) (not e!3932467))))

(assert (=> b!6488660 (= res!2664902 (= (size!40424 lt!2389198) (+ (size!40424 (_1!36649 (get!22634 lt!2389101))) (size!40424 (_2!36649 (get!22634 lt!2389101))))))))

(declare-fun b!6488658 () Bool)

(assert (=> b!6488658 (= e!3932468 (_2!36649 (get!22634 lt!2389101)))))

(assert (= (and d!2035631 c!1188935) b!6488658))

(assert (= (and d!2035631 (not c!1188935)) b!6488659))

(assert (= (and d!2035631 res!2664903) b!6488660))

(assert (= (and b!6488660 res!2664902) b!6488661))

(declare-fun m!7277216 () Bool)

(assert (=> d!2035631 m!7277216))

(declare-fun m!7277218 () Bool)

(assert (=> d!2035631 m!7277218))

(declare-fun m!7277220 () Bool)

(assert (=> d!2035631 m!7277220))

(declare-fun m!7277222 () Bool)

(assert (=> b!6488659 m!7277222))

(declare-fun m!7277224 () Bool)

(assert (=> b!6488660 m!7277224))

(declare-fun m!7277226 () Bool)

(assert (=> b!6488660 m!7277226))

(declare-fun m!7277228 () Bool)

(assert (=> b!6488660 m!7277228))

(assert (=> b!6487683 d!2035631))

(assert (=> b!6487683 d!2035407))

(declare-fun d!2035633 () Bool)

(assert (=> d!2035633 (= (isEmptyExpr!1759 lt!2389112) ((_ is EmptyExpr!16367) lt!2389112))))

(assert (=> b!6487730 d!2035633))

(assert (=> d!2035081 d!2035299))

(assert (=> d!2035081 d!2035507))

(declare-fun d!2035637 () Bool)

(assert (=> d!2035637 (= (isEmpty!37468 lt!2388887) ((_ is Nil!65276) lt!2388887))))

(assert (=> d!2035061 d!2035637))

(assert (=> d!2035061 d!2035335))

(declare-fun lt!2389199 () List!65400)

(declare-fun e!3932469 () Bool)

(declare-fun b!6488665 () Bool)

(assert (=> b!6488665 (= e!3932469 (or (not (= (_2!36649 lt!2388900) Nil!65276)) (= lt!2389199 (t!379026 (_2!36649 lt!2388858)))))))

(declare-fun d!2035639 () Bool)

(assert (=> d!2035639 e!3932469))

(declare-fun res!2664905 () Bool)

(assert (=> d!2035639 (=> (not res!2664905) (not e!3932469))))

(assert (=> d!2035639 (= res!2664905 (= (content!12437 lt!2389199) ((_ map or) (content!12437 (t!379026 (_2!36649 lt!2388858))) (content!12437 (_2!36649 lt!2388900)))))))

(declare-fun e!3932470 () List!65400)

(assert (=> d!2035639 (= lt!2389199 e!3932470)))

(declare-fun c!1188936 () Bool)

(assert (=> d!2035639 (= c!1188936 ((_ is Nil!65276) (t!379026 (_2!36649 lt!2388858))))))

(assert (=> d!2035639 (= (++!14444 (t!379026 (_2!36649 lt!2388858)) (_2!36649 lt!2388900)) lt!2389199)))

(declare-fun b!6488663 () Bool)

(assert (=> b!6488663 (= e!3932470 (Cons!65276 (h!71724 (t!379026 (_2!36649 lt!2388858))) (++!14444 (t!379026 (t!379026 (_2!36649 lt!2388858))) (_2!36649 lt!2388900))))))

(declare-fun b!6488664 () Bool)

(declare-fun res!2664904 () Bool)

(assert (=> b!6488664 (=> (not res!2664904) (not e!3932469))))

(assert (=> b!6488664 (= res!2664904 (= (size!40424 lt!2389199) (+ (size!40424 (t!379026 (_2!36649 lt!2388858))) (size!40424 (_2!36649 lt!2388900)))))))

(declare-fun b!6488662 () Bool)

(assert (=> b!6488662 (= e!3932470 (_2!36649 lt!2388900))))

(assert (= (and d!2035639 c!1188936) b!6488662))

(assert (= (and d!2035639 (not c!1188936)) b!6488663))

(assert (= (and d!2035639 res!2664905) b!6488664))

(assert (= (and b!6488664 res!2664904) b!6488665))

(declare-fun m!7277234 () Bool)

(assert (=> d!2035639 m!7277234))

(assert (=> d!2035639 m!7276778))

(assert (=> d!2035639 m!7275540))

(declare-fun m!7277236 () Bool)

(assert (=> b!6488663 m!7277236))

(declare-fun m!7277238 () Bool)

(assert (=> b!6488664 m!7277238))

(assert (=> b!6488664 m!7276324))

(assert (=> b!6488664 m!7275548))

(assert (=> b!6487043 d!2035639))

(declare-fun b!6488666 () Bool)

(declare-fun res!2664910 () Bool)

(declare-fun e!3932471 () Bool)

(assert (=> b!6488666 (=> res!2664910 e!3932471)))

(assert (=> b!6488666 (= res!2664910 (not (isEmpty!37468 (tail!12294 (_1!36649 (get!22634 lt!2389090))))))))

(declare-fun b!6488668 () Bool)

(declare-fun e!3932476 () Bool)

(assert (=> b!6488668 (= e!3932476 (= (head!13209 (_1!36649 (get!22634 lt!2389090))) (c!1188383 (reg!16696 (regOne!33246 r!7292)))))))

(declare-fun b!6488669 () Bool)

(declare-fun res!2664907 () Bool)

(declare-fun e!3932473 () Bool)

(assert (=> b!6488669 (=> res!2664907 e!3932473)))

(assert (=> b!6488669 (= res!2664907 e!3932476)))

(declare-fun res!2664908 () Bool)

(assert (=> b!6488669 (=> (not res!2664908) (not e!3932476))))

(declare-fun lt!2389200 () Bool)

(assert (=> b!6488669 (= res!2664908 lt!2389200)))

(declare-fun b!6488670 () Bool)

(declare-fun e!3932477 () Bool)

(assert (=> b!6488670 (= e!3932477 e!3932471)))

(declare-fun res!2664913 () Bool)

(assert (=> b!6488670 (=> res!2664913 e!3932471)))

(declare-fun call!561660 () Bool)

(assert (=> b!6488670 (= res!2664913 call!561660)))

(declare-fun b!6488671 () Bool)

(declare-fun res!2664911 () Bool)

(assert (=> b!6488671 (=> res!2664911 e!3932473)))

(assert (=> b!6488671 (= res!2664911 (not ((_ is ElementMatch!16367) (reg!16696 (regOne!33246 r!7292)))))))

(declare-fun e!3932472 () Bool)

(assert (=> b!6488671 (= e!3932472 e!3932473)))

(declare-fun bm!561655 () Bool)

(assert (=> bm!561655 (= call!561660 (isEmpty!37468 (_1!36649 (get!22634 lt!2389090))))))

(declare-fun b!6488672 () Bool)

(assert (=> b!6488672 (= e!3932473 e!3932477)))

(declare-fun res!2664909 () Bool)

(assert (=> b!6488672 (=> (not res!2664909) (not e!3932477))))

(assert (=> b!6488672 (= res!2664909 (not lt!2389200))))

(declare-fun b!6488673 () Bool)

(declare-fun e!3932474 () Bool)

(assert (=> b!6488673 (= e!3932474 e!3932472)))

(declare-fun c!1188939 () Bool)

(assert (=> b!6488673 (= c!1188939 ((_ is EmptyLang!16367) (reg!16696 (regOne!33246 r!7292))))))

(declare-fun b!6488674 () Bool)

(declare-fun res!2664912 () Bool)

(assert (=> b!6488674 (=> (not res!2664912) (not e!3932476))))

(assert (=> b!6488674 (= res!2664912 (isEmpty!37468 (tail!12294 (_1!36649 (get!22634 lt!2389090)))))))

(declare-fun b!6488675 () Bool)

(declare-fun e!3932475 () Bool)

(assert (=> b!6488675 (= e!3932475 (nullable!6360 (reg!16696 (regOne!33246 r!7292))))))

(declare-fun b!6488676 () Bool)

(assert (=> b!6488676 (= e!3932474 (= lt!2389200 call!561660))))

(declare-fun b!6488677 () Bool)

(declare-fun res!2664906 () Bool)

(assert (=> b!6488677 (=> (not res!2664906) (not e!3932476))))

(assert (=> b!6488677 (= res!2664906 (not call!561660))))

(declare-fun b!6488678 () Bool)

(assert (=> b!6488678 (= e!3932472 (not lt!2389200))))

(declare-fun b!6488679 () Bool)

(assert (=> b!6488679 (= e!3932471 (not (= (head!13209 (_1!36649 (get!22634 lt!2389090))) (c!1188383 (reg!16696 (regOne!33246 r!7292))))))))

(declare-fun d!2035641 () Bool)

(assert (=> d!2035641 e!3932474))

(declare-fun c!1188938 () Bool)

(assert (=> d!2035641 (= c!1188938 ((_ is EmptyExpr!16367) (reg!16696 (regOne!33246 r!7292))))))

(assert (=> d!2035641 (= lt!2389200 e!3932475)))

(declare-fun c!1188937 () Bool)

(assert (=> d!2035641 (= c!1188937 (isEmpty!37468 (_1!36649 (get!22634 lt!2389090))))))

(assert (=> d!2035641 (validRegex!8103 (reg!16696 (regOne!33246 r!7292)))))

(assert (=> d!2035641 (= (matchR!8550 (reg!16696 (regOne!33246 r!7292)) (_1!36649 (get!22634 lt!2389090))) lt!2389200)))

(declare-fun b!6488667 () Bool)

(assert (=> b!6488667 (= e!3932475 (matchR!8550 (derivativeStep!5063 (reg!16696 (regOne!33246 r!7292)) (head!13209 (_1!36649 (get!22634 lt!2389090)))) (tail!12294 (_1!36649 (get!22634 lt!2389090)))))))

(assert (= (and d!2035641 c!1188937) b!6488675))

(assert (= (and d!2035641 (not c!1188937)) b!6488667))

(assert (= (and d!2035641 c!1188938) b!6488676))

(assert (= (and d!2035641 (not c!1188938)) b!6488673))

(assert (= (and b!6488673 c!1188939) b!6488678))

(assert (= (and b!6488673 (not c!1188939)) b!6488671))

(assert (= (and b!6488671 (not res!2664911)) b!6488669))

(assert (= (and b!6488669 res!2664908) b!6488677))

(assert (= (and b!6488677 res!2664906) b!6488674))

(assert (= (and b!6488674 res!2664912) b!6488668))

(assert (= (and b!6488669 (not res!2664907)) b!6488672))

(assert (= (and b!6488672 res!2664909) b!6488670))

(assert (= (and b!6488670 (not res!2664913)) b!6488666))

(assert (= (and b!6488666 (not res!2664910)) b!6488679))

(assert (= (or b!6488676 b!6488670 b!6488677) bm!561655))

(declare-fun m!7277240 () Bool)

(assert (=> b!6488666 m!7277240))

(assert (=> b!6488666 m!7277240))

(declare-fun m!7277242 () Bool)

(assert (=> b!6488666 m!7277242))

(assert (=> b!6488675 m!7275818))

(declare-fun m!7277244 () Bool)

(assert (=> d!2035641 m!7277244))

(assert (=> d!2035641 m!7275822))

(assert (=> b!6488674 m!7277240))

(assert (=> b!6488674 m!7277240))

(assert (=> b!6488674 m!7277242))

(declare-fun m!7277246 () Bool)

(assert (=> b!6488679 m!7277246))

(assert (=> b!6488668 m!7277246))

(assert (=> b!6488667 m!7277246))

(assert (=> b!6488667 m!7277246))

(declare-fun m!7277248 () Bool)

(assert (=> b!6488667 m!7277248))

(assert (=> b!6488667 m!7277240))

(assert (=> b!6488667 m!7277248))

(assert (=> b!6488667 m!7277240))

(declare-fun m!7277250 () Bool)

(assert (=> b!6488667 m!7277250))

(assert (=> bm!561655 m!7277244))

(assert (=> b!6487657 d!2035641))

(assert (=> b!6487657 d!2035365))

(assert (=> d!2035167 d!2035381))

(declare-fun b!6488684 () Bool)

(declare-fun res!2664918 () Bool)

(declare-fun e!3932480 () Bool)

(assert (=> b!6488684 (=> res!2664918 e!3932480)))

(assert (=> b!6488684 (= res!2664918 (not (isEmpty!37468 (tail!12294 Nil!65276))))))

(declare-fun b!6488686 () Bool)

(declare-fun e!3932485 () Bool)

(assert (=> b!6488686 (= e!3932485 (= (head!13209 Nil!65276) (c!1188383 lt!2388865)))))

(declare-fun b!6488687 () Bool)

(declare-fun res!2664915 () Bool)

(declare-fun e!3932482 () Bool)

(assert (=> b!6488687 (=> res!2664915 e!3932482)))

(assert (=> b!6488687 (= res!2664915 e!3932485)))

(declare-fun res!2664916 () Bool)

(assert (=> b!6488687 (=> (not res!2664916) (not e!3932485))))

(declare-fun lt!2389201 () Bool)

(assert (=> b!6488687 (= res!2664916 lt!2389201)))

(declare-fun b!6488688 () Bool)

(declare-fun e!3932486 () Bool)

(assert (=> b!6488688 (= e!3932486 e!3932480)))

(declare-fun res!2664921 () Bool)

(assert (=> b!6488688 (=> res!2664921 e!3932480)))

(declare-fun call!561661 () Bool)

(assert (=> b!6488688 (= res!2664921 call!561661)))

(declare-fun b!6488689 () Bool)

(declare-fun res!2664919 () Bool)

(assert (=> b!6488689 (=> res!2664919 e!3932482)))

(assert (=> b!6488689 (= res!2664919 (not ((_ is ElementMatch!16367) lt!2388865)))))

(declare-fun e!3932481 () Bool)

(assert (=> b!6488689 (= e!3932481 e!3932482)))

(declare-fun bm!561656 () Bool)

(assert (=> bm!561656 (= call!561661 (isEmpty!37468 Nil!65276))))

(declare-fun b!6488690 () Bool)

(assert (=> b!6488690 (= e!3932482 e!3932486)))

(declare-fun res!2664917 () Bool)

(assert (=> b!6488690 (=> (not res!2664917) (not e!3932486))))

(assert (=> b!6488690 (= res!2664917 (not lt!2389201))))

(declare-fun b!6488691 () Bool)

(declare-fun e!3932483 () Bool)

(assert (=> b!6488691 (= e!3932483 e!3932481)))

(declare-fun c!1188944 () Bool)

(assert (=> b!6488691 (= c!1188944 ((_ is EmptyLang!16367) lt!2388865))))

(declare-fun b!6488692 () Bool)

(declare-fun res!2664920 () Bool)

(assert (=> b!6488692 (=> (not res!2664920) (not e!3932485))))

(assert (=> b!6488692 (= res!2664920 (isEmpty!37468 (tail!12294 Nil!65276)))))

(declare-fun b!6488693 () Bool)

(declare-fun e!3932484 () Bool)

(assert (=> b!6488693 (= e!3932484 (nullable!6360 lt!2388865))))

(declare-fun b!6488694 () Bool)

(assert (=> b!6488694 (= e!3932483 (= lt!2389201 call!561661))))

(declare-fun b!6488695 () Bool)

(declare-fun res!2664914 () Bool)

(assert (=> b!6488695 (=> (not res!2664914) (not e!3932485))))

(assert (=> b!6488695 (= res!2664914 (not call!561661))))

(declare-fun b!6488696 () Bool)

(assert (=> b!6488696 (= e!3932481 (not lt!2389201))))

(declare-fun b!6488697 () Bool)

(assert (=> b!6488697 (= e!3932480 (not (= (head!13209 Nil!65276) (c!1188383 lt!2388865))))))

(declare-fun d!2035643 () Bool)

(assert (=> d!2035643 e!3932483))

(declare-fun c!1188943 () Bool)

(assert (=> d!2035643 (= c!1188943 ((_ is EmptyExpr!16367) lt!2388865))))

(assert (=> d!2035643 (= lt!2389201 e!3932484)))

(declare-fun c!1188942 () Bool)

(assert (=> d!2035643 (= c!1188942 (isEmpty!37468 Nil!65276))))

(assert (=> d!2035643 (validRegex!8103 lt!2388865)))

(assert (=> d!2035643 (= (matchR!8550 lt!2388865 Nil!65276) lt!2389201)))

(declare-fun b!6488685 () Bool)

(assert (=> b!6488685 (= e!3932484 (matchR!8550 (derivativeStep!5063 lt!2388865 (head!13209 Nil!65276)) (tail!12294 Nil!65276)))))

(assert (= (and d!2035643 c!1188942) b!6488693))

(assert (= (and d!2035643 (not c!1188942)) b!6488685))

(assert (= (and d!2035643 c!1188943) b!6488694))

(assert (= (and d!2035643 (not c!1188943)) b!6488691))

(assert (= (and b!6488691 c!1188944) b!6488696))

(assert (= (and b!6488691 (not c!1188944)) b!6488689))

(assert (= (and b!6488689 (not res!2664919)) b!6488687))

(assert (= (and b!6488687 res!2664916) b!6488695))

(assert (= (and b!6488695 res!2664914) b!6488692))

(assert (= (and b!6488692 res!2664920) b!6488686))

(assert (= (and b!6488687 (not res!2664915)) b!6488690))

(assert (= (and b!6488690 res!2664917) b!6488688))

(assert (= (and b!6488688 (not res!2664921)) b!6488684))

(assert (= (and b!6488684 (not res!2664918)) b!6488697))

(assert (= (or b!6488694 b!6488688 b!6488695) bm!561656))

(assert (=> b!6488684 m!7277000))

(assert (=> b!6488684 m!7277000))

(assert (=> b!6488684 m!7277002))

(assert (=> b!6488693 m!7275846))

(assert (=> d!2035643 m!7277004))

(assert (=> d!2035643 m!7275850))

(assert (=> b!6488692 m!7277000))

(assert (=> b!6488692 m!7277000))

(assert (=> b!6488692 m!7277002))

(assert (=> b!6488697 m!7277006))

(assert (=> b!6488686 m!7277006))

(assert (=> b!6488685 m!7277006))

(assert (=> b!6488685 m!7277006))

(declare-fun m!7277256 () Bool)

(assert (=> b!6488685 m!7277256))

(assert (=> b!6488685 m!7277000))

(assert (=> b!6488685 m!7277256))

(assert (=> b!6488685 m!7277000))

(declare-fun m!7277260 () Bool)

(assert (=> b!6488685 m!7277260))

(assert (=> bm!561656 m!7277004))

(assert (=> d!2035167 d!2035643))

(assert (=> d!2035167 d!2035219))

(declare-fun d!2035647 () Bool)

(assert (=> d!2035647 (= (isEmpty!37472 (findConcatSeparation!2672 (regOne!33246 r!7292) (regTwo!33246 r!7292) Nil!65276 s!2326 s!2326)) (not ((_ is Some!16257) (findConcatSeparation!2672 (regOne!33246 r!7292) (regTwo!33246 r!7292) Nil!65276 s!2326 s!2326))))))

(assert (=> d!2035153 d!2035647))

(declare-fun d!2035651 () Bool)

(assert (=> d!2035651 (= (isEmpty!37468 lt!2388889) ((_ is Nil!65276) lt!2388889))))

(assert (=> d!2035079 d!2035651))

(assert (=> d!2035079 d!2035219))

(declare-fun bs!1646335 () Bool)

(declare-fun d!2035653 () Bool)

(assert (= bs!1646335 (and d!2035653 d!2035567)))

(declare-fun lambda!359267 () Int)

(assert (=> bs!1646335 (= lambda!359267 lambda!359258)))

(declare-fun bs!1646336 () Bool)

(assert (= bs!1646336 (and d!2035653 d!2035425)))

(assert (=> bs!1646336 (= lambda!359267 lambda!359245)))

(declare-fun bs!1646337 () Bool)

(assert (= bs!1646337 (and d!2035653 d!2035435)))

(assert (=> bs!1646337 (= lambda!359267 lambda!359246)))

(declare-fun bs!1646338 () Bool)

(assert (= bs!1646338 (and d!2035653 d!2035423)))

(assert (=> bs!1646338 (= lambda!359267 lambda!359244)))

(declare-fun bs!1646339 () Bool)

(assert (= bs!1646339 (and d!2035653 d!2035511)))

(assert (=> bs!1646339 (= lambda!359267 lambda!359256)))

(assert (=> d!2035653 (= (nullableZipper!2124 lt!2388878) (exists!2617 lt!2388878 lambda!359267))))

(declare-fun bs!1646341 () Bool)

(assert (= bs!1646341 d!2035653))

(declare-fun m!7277268 () Bool)

(assert (=> bs!1646341 m!7277268))

(assert (=> b!6487480 d!2035653))

(declare-fun b!6488707 () Bool)

(declare-fun e!3932490 () Bool)

(declare-fun lt!2389202 () List!65400)

(assert (=> b!6488707 (= e!3932490 (or (not (= (_2!36649 (get!22634 lt!2389108)) Nil!65276)) (= lt!2389202 (_1!36649 (get!22634 lt!2389108)))))))

(declare-fun d!2035657 () Bool)

(assert (=> d!2035657 e!3932490))

(declare-fun res!2664923 () Bool)

(assert (=> d!2035657 (=> (not res!2664923) (not e!3932490))))

(assert (=> d!2035657 (= res!2664923 (= (content!12437 lt!2389202) ((_ map or) (content!12437 (_1!36649 (get!22634 lt!2389108))) (content!12437 (_2!36649 (get!22634 lt!2389108))))))))

(declare-fun e!3932491 () List!65400)

(assert (=> d!2035657 (= lt!2389202 e!3932491)))

(declare-fun c!1188948 () Bool)

(assert (=> d!2035657 (= c!1188948 ((_ is Nil!65276) (_1!36649 (get!22634 lt!2389108))))))

(assert (=> d!2035657 (= (++!14444 (_1!36649 (get!22634 lt!2389108)) (_2!36649 (get!22634 lt!2389108))) lt!2389202)))

(declare-fun b!6488705 () Bool)

(assert (=> b!6488705 (= e!3932491 (Cons!65276 (h!71724 (_1!36649 (get!22634 lt!2389108))) (++!14444 (t!379026 (_1!36649 (get!22634 lt!2389108))) (_2!36649 (get!22634 lt!2389108)))))))

(declare-fun b!6488706 () Bool)

(declare-fun res!2664922 () Bool)

(assert (=> b!6488706 (=> (not res!2664922) (not e!3932490))))

(assert (=> b!6488706 (= res!2664922 (= (size!40424 lt!2389202) (+ (size!40424 (_1!36649 (get!22634 lt!2389108))) (size!40424 (_2!36649 (get!22634 lt!2389108))))))))

(declare-fun b!6488704 () Bool)

(assert (=> b!6488704 (= e!3932491 (_2!36649 (get!22634 lt!2389108)))))

(assert (= (and d!2035657 c!1188948) b!6488704))

(assert (= (and d!2035657 (not c!1188948)) b!6488705))

(assert (= (and d!2035657 res!2664923) b!6488706))

(assert (= (and b!6488706 res!2664922) b!6488707))

(declare-fun m!7277270 () Bool)

(assert (=> d!2035657 m!7277270))

(declare-fun m!7277272 () Bool)

(assert (=> d!2035657 m!7277272))

(declare-fun m!7277274 () Bool)

(assert (=> d!2035657 m!7277274))

(declare-fun m!7277276 () Bool)

(assert (=> b!6488705 m!7277276))

(declare-fun m!7277278 () Bool)

(assert (=> b!6488706 m!7277278))

(declare-fun m!7277280 () Bool)

(assert (=> b!6488706 m!7277280))

(declare-fun m!7277282 () Bool)

(assert (=> b!6488706 m!7277282))

(assert (=> b!6487696 d!2035657))

(assert (=> b!6487696 d!2035499))

(assert (=> b!6487512 d!2035349))

(assert (=> b!6487477 d!2035375))

(declare-fun d!2035659 () Bool)

(declare-fun c!1188949 () Bool)

(assert (=> d!2035659 (= c!1188949 ((_ is Nil!65276) lt!2388997))))

(declare-fun e!3932492 () (InoxSet C!33004))

(assert (=> d!2035659 (= (content!12437 lt!2388997) e!3932492)))

(declare-fun b!6488708 () Bool)

(assert (=> b!6488708 (= e!3932492 ((as const (Array C!33004 Bool)) false))))

(declare-fun b!6488709 () Bool)

(assert (=> b!6488709 (= e!3932492 ((_ map or) (store ((as const (Array C!33004 Bool)) false) (h!71724 lt!2388997) true) (content!12437 (t!379026 lt!2388997))))))

(assert (= (and d!2035659 c!1188949) b!6488708))

(assert (= (and d!2035659 (not c!1188949)) b!6488709))

(declare-fun m!7277284 () Bool)

(assert (=> b!6488709 m!7277284))

(declare-fun m!7277286 () Bool)

(assert (=> b!6488709 m!7277286))

(assert (=> d!2034933 d!2035659))

(declare-fun d!2035661 () Bool)

(declare-fun c!1188950 () Bool)

(assert (=> d!2035661 (= c!1188950 ((_ is Nil!65276) (_1!36649 lt!2388858)))))

(declare-fun e!3932493 () (InoxSet C!33004))

(assert (=> d!2035661 (= (content!12437 (_1!36649 lt!2388858)) e!3932493)))

(declare-fun b!6488710 () Bool)

(assert (=> b!6488710 (= e!3932493 ((as const (Array C!33004 Bool)) false))))

(declare-fun b!6488711 () Bool)

(assert (=> b!6488711 (= e!3932493 ((_ map or) (store ((as const (Array C!33004 Bool)) false) (h!71724 (_1!36649 lt!2388858)) true) (content!12437 (t!379026 (_1!36649 lt!2388858)))))))

(assert (= (and d!2035661 c!1188950) b!6488710))

(assert (= (and d!2035661 (not c!1188950)) b!6488711))

(declare-fun m!7277290 () Bool)

(assert (=> b!6488711 m!7277290))

(assert (=> b!6488711 m!7276440))

(assert (=> d!2034933 d!2035661))

(declare-fun d!2035665 () Bool)

(declare-fun c!1188951 () Bool)

(assert (=> d!2035665 (= c!1188951 ((_ is Nil!65276) lt!2388903))))

(declare-fun e!3932494 () (InoxSet C!33004))

(assert (=> d!2035665 (= (content!12437 lt!2388903) e!3932494)))

(declare-fun b!6488712 () Bool)

(assert (=> b!6488712 (= e!3932494 ((as const (Array C!33004 Bool)) false))))

(declare-fun b!6488713 () Bool)

(assert (=> b!6488713 (= e!3932494 ((_ map or) (store ((as const (Array C!33004 Bool)) false) (h!71724 lt!2388903) true) (content!12437 (t!379026 lt!2388903))))))

(assert (= (and d!2035665 c!1188951) b!6488712))

(assert (= (and d!2035665 (not c!1188951)) b!6488713))

(declare-fun m!7277292 () Bool)

(assert (=> b!6488713 m!7277292))

(declare-fun m!7277294 () Bool)

(assert (=> b!6488713 m!7277294))

(assert (=> d!2034933 d!2035665))

(declare-fun d!2035667 () Bool)

(assert (=> d!2035667 (= (isConcat!1282 lt!2389112) ((_ is Concat!25212) lt!2389112))))

(assert (=> b!6487723 d!2035667))

(declare-fun d!2035669 () Bool)

(assert (=> d!2035669 (= (Exists!3437 lambda!359215) (choose!48164 lambda!359215))))

(declare-fun bs!1646353 () Bool)

(assert (= bs!1646353 d!2035669))

(declare-fun m!7277302 () Bool)

(assert (=> bs!1646353 m!7277302))

(assert (=> d!2035151 d!2035669))

(declare-fun d!2035673 () Bool)

(assert (=> d!2035673 (= (Exists!3437 lambda!359216) (choose!48164 lambda!359216))))

(declare-fun bs!1646354 () Bool)

(assert (= bs!1646354 d!2035673))

(declare-fun m!7277304 () Bool)

(assert (=> bs!1646354 m!7277304))

(assert (=> d!2035151 d!2035673))

(declare-fun bs!1646355 () Bool)

(declare-fun d!2035675 () Bool)

(assert (= bs!1646355 (and d!2035675 d!2035573)))

(declare-fun lambda!359269 () Int)

(assert (=> bs!1646355 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359269 lambda!359259))))

(declare-fun bs!1646356 () Bool)

(assert (= bs!1646356 (and d!2035675 d!2035151)))

(assert (=> bs!1646356 (not (= lambda!359269 lambda!359216))))

(declare-fun bs!1646357 () Bool)

(assert (= bs!1646357 (and d!2035675 b!6487593)))

(assert (=> bs!1646357 (not (= lambda!359269 lambda!359195))))

(declare-fun bs!1646358 () Bool)

(assert (= bs!1646358 (and d!2035675 b!6486638)))

(assert (=> bs!1646358 (not (= lambda!359269 lambda!359124))))

(declare-fun bs!1646359 () Bool)

(assert (= bs!1646359 (and d!2035675 b!6486656)))

(assert (=> bs!1646359 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359269 lambda!359121))))

(declare-fun bs!1646360 () Bool)

(assert (= bs!1646360 (and d!2035675 b!6487561)))

(assert (=> bs!1646360 (not (= lambda!359269 lambda!359189))))

(declare-fun bs!1646361 () Bool)

(assert (= bs!1646361 (and d!2035675 b!6486655)))

(assert (=> bs!1646361 (not (= lambda!359269 lambda!359119))))

(declare-fun bs!1646362 () Bool)

(assert (= bs!1646362 (and d!2035675 d!2035135)))

(assert (=> bs!1646362 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359269 lambda!359207))))

(declare-fun bs!1646363 () Bool)

(assert (= bs!1646363 (and d!2035675 d!2035139)))

(assert (=> bs!1646363 (not (= lambda!359269 lambda!359213))))

(declare-fun bs!1646364 () Bool)

(assert (= bs!1646364 (and d!2035675 d!2035129)))

(assert (=> bs!1646364 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359269 lambda!359201))))

(assert (=> bs!1646355 (not (= lambda!359269 lambda!359260))))

(declare-fun bs!1646365 () Bool)

(assert (= bs!1646365 (and d!2035675 b!6487626)))

(assert (=> bs!1646365 (not (= lambda!359269 lambda!359203))))

(assert (=> bs!1646363 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) (Star!16367 (reg!16696 (regOne!33246 r!7292))))) (= lambda!359269 lambda!359212))))

(declare-fun bs!1646366 () Bool)

(assert (= bs!1646366 (and d!2035675 b!6487630)))

(assert (=> bs!1646366 (not (= lambda!359269 lambda!359204))))

(assert (=> bs!1646364 (not (= lambda!359269 lambda!359202))))

(assert (=> bs!1646358 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359269 lambda!359123))))

(declare-fun bs!1646367 () Bool)

(assert (= bs!1646367 (and d!2035675 d!2035165)))

(assert (=> bs!1646367 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359269 lambda!359218))))

(declare-fun bs!1646368 () Bool)

(assert (= bs!1646368 (and d!2035675 d!2035221)))

(assert (=> bs!1646368 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359269 lambda!359231))))

(declare-fun bs!1646369 () Bool)

(assert (= bs!1646369 (and d!2035675 b!6487565)))

(assert (=> bs!1646369 (not (= lambda!359269 lambda!359190))))

(assert (=> bs!1646361 (= lambda!359269 lambda!359118)))

(declare-fun bs!1646370 () Bool)

(assert (= bs!1646370 (and d!2035675 d!2035387)))

(assert (=> bs!1646370 (not (= lambda!359269 lambda!359241))))

(assert (=> bs!1646358 (not (= lambda!359269 lambda!359125))))

(declare-fun bs!1646371 () Bool)

(assert (= bs!1646371 (and d!2035675 b!6488119)))

(assert (=> bs!1646371 (not (= lambda!359269 lambda!359234))))

(declare-fun bs!1646372 () Bool)

(assert (= bs!1646372 (and d!2035675 d!2035145)))

(assert (=> bs!1646372 (= lambda!359269 lambda!359214)))

(assert (=> bs!1646356 (= lambda!359269 lambda!359215)))

(declare-fun bs!1646373 () Bool)

(assert (= bs!1646373 (and d!2035675 b!6488303)))

(assert (=> bs!1646373 (not (= lambda!359269 lambda!359248))))

(assert (=> bs!1646359 (not (= lambda!359269 lambda!359122))))

(assert (=> bs!1646370 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359269 lambda!359240))))

(declare-fun bs!1646374 () Bool)

(assert (= bs!1646374 (and d!2035675 b!6488115)))

(assert (=> bs!1646374 (not (= lambda!359269 lambda!359233))))

(assert (=> bs!1646367 (not (= lambda!359269 lambda!359219))))

(declare-fun bs!1646375 () Bool)

(assert (= bs!1646375 (and d!2035675 b!6488299)))

(assert (=> bs!1646375 (not (= lambda!359269 lambda!359247))))

(declare-fun bs!1646376 () Bool)

(assert (= bs!1646376 (and d!2035675 d!2035161)))

(assert (=> bs!1646376 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359269 lambda!359217))))

(declare-fun bs!1646377 () Bool)

(assert (= bs!1646377 (and d!2035675 b!6487597)))

(assert (=> bs!1646377 (not (= lambda!359269 lambda!359196))))

(assert (=> d!2035675 true))

(assert (=> d!2035675 true))

(assert (=> d!2035675 true))

(declare-fun lambda!359270 () Int)

(assert (=> bs!1646355 (not (= lambda!359270 lambda!359259))))

(assert (=> bs!1646356 (= lambda!359270 lambda!359216)))

(assert (=> bs!1646357 (not (= lambda!359270 lambda!359195))))

(assert (=> bs!1646359 (not (= lambda!359270 lambda!359121))))

(assert (=> bs!1646360 (not (= lambda!359270 lambda!359189))))

(assert (=> bs!1646361 (= lambda!359270 lambda!359119)))

(assert (=> bs!1646362 (not (= lambda!359270 lambda!359207))))

(assert (=> bs!1646363 (not (= lambda!359270 lambda!359213))))

(assert (=> bs!1646364 (not (= lambda!359270 lambda!359201))))

(assert (=> bs!1646355 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359270 lambda!359260))))

(assert (=> bs!1646365 (not (= lambda!359270 lambda!359203))))

(assert (=> bs!1646363 (not (= lambda!359270 lambda!359212))))

(assert (=> bs!1646366 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (regOne!33246 lt!2388865)) (= (regTwo!33246 r!7292) (regTwo!33246 lt!2388865))) (= lambda!359270 lambda!359204))))

(assert (=> bs!1646364 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359270 lambda!359202))))

(assert (=> bs!1646358 (not (= lambda!359270 lambda!359123))))

(assert (=> bs!1646367 (not (= lambda!359270 lambda!359218))))

(assert (=> bs!1646368 (not (= lambda!359270 lambda!359231))))

(assert (=> bs!1646369 (= (and (= (regOne!33246 r!7292) (regOne!33246 lt!2388855)) (= (regTwo!33246 r!7292) (regTwo!33246 lt!2388855))) (= lambda!359270 lambda!359190))))

(assert (=> bs!1646361 (not (= lambda!359270 lambda!359118))))

(declare-fun bs!1646378 () Bool)

(assert (= bs!1646378 d!2035675))

(assert (=> bs!1646378 (not (= lambda!359270 lambda!359269))))

(assert (=> bs!1646358 (not (= lambda!359270 lambda!359124))))

(assert (=> bs!1646370 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359270 lambda!359241))))

(assert (=> bs!1646358 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359270 lambda!359125))))

(assert (=> bs!1646371 (= (and (= (regOne!33246 r!7292) (regOne!33246 (regTwo!33247 r!7292))) (= (regTwo!33246 r!7292) (regTwo!33246 (regTwo!33247 r!7292)))) (= lambda!359270 lambda!359234))))

(assert (=> bs!1646372 (not (= lambda!359270 lambda!359214))))

(assert (=> bs!1646356 (not (= lambda!359270 lambda!359215))))

(assert (=> bs!1646373 (= (and (= (regOne!33246 r!7292) (regOne!33246 (regTwo!33247 lt!2388855))) (= (regTwo!33246 r!7292) (regTwo!33246 (regTwo!33247 lt!2388855)))) (= lambda!359270 lambda!359248))))

(assert (=> bs!1646359 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359270 lambda!359122))))

(assert (=> bs!1646370 (not (= lambda!359270 lambda!359240))))

(assert (=> bs!1646374 (not (= lambda!359270 lambda!359233))))

(assert (=> bs!1646367 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359270 lambda!359219))))

(assert (=> bs!1646375 (not (= lambda!359270 lambda!359247))))

(assert (=> bs!1646376 (not (= lambda!359270 lambda!359217))))

(assert (=> bs!1646377 (= lambda!359270 lambda!359196)))

(assert (=> d!2035675 true))

(assert (=> d!2035675 true))

(assert (=> d!2035675 true))

(assert (=> d!2035675 (= (Exists!3437 lambda!359269) (Exists!3437 lambda!359270))))

(assert (=> d!2035675 true))

(declare-fun _$90!2344 () Unit!158799)

(assert (=> d!2035675 (= (choose!48165 (regOne!33246 r!7292) (regTwo!33246 r!7292) s!2326) _$90!2344)))

(declare-fun m!7277318 () Bool)

(assert (=> bs!1646378 m!7277318))

(declare-fun m!7277320 () Bool)

(assert (=> bs!1646378 m!7277320))

(assert (=> d!2035151 d!2035675))

(assert (=> d!2035151 d!2035553))

(assert (=> b!6487571 d!2035305))

(assert (=> b!6487571 d!2035307))

(declare-fun d!2035679 () Bool)

(declare-fun c!1188955 () Bool)

(assert (=> d!2035679 (= c!1188955 ((_ is Nil!65277) lt!2389069))))

(declare-fun e!3932498 () (InoxSet Regex!16367))

(assert (=> d!2035679 (= (content!12440 lt!2389069) e!3932498)))

(declare-fun b!6488720 () Bool)

(assert (=> b!6488720 (= e!3932498 ((as const (Array Regex!16367 Bool)) false))))

(declare-fun b!6488721 () Bool)

(assert (=> b!6488721 (= e!3932498 ((_ map or) (store ((as const (Array Regex!16367 Bool)) false) (h!71725 lt!2389069) true) (content!12440 (t!379027 lt!2389069))))))

(assert (= (and d!2035679 c!1188955) b!6488720))

(assert (= (and d!2035679 (not c!1188955)) b!6488721))

(declare-fun m!7277322 () Bool)

(assert (=> b!6488721 m!7277322))

(declare-fun m!7277324 () Bool)

(assert (=> b!6488721 m!7277324))

(assert (=> d!2035089 d!2035679))

(declare-fun d!2035681 () Bool)

(declare-fun c!1188956 () Bool)

(assert (=> d!2035681 (= c!1188956 ((_ is Nil!65277) lt!2388881))))

(declare-fun e!3932499 () (InoxSet Regex!16367))

(assert (=> d!2035681 (= (content!12440 lt!2388881) e!3932499)))

(declare-fun b!6488722 () Bool)

(assert (=> b!6488722 (= e!3932499 ((as const (Array Regex!16367 Bool)) false))))

(declare-fun b!6488723 () Bool)

(assert (=> b!6488723 (= e!3932499 ((_ map or) (store ((as const (Array Regex!16367 Bool)) false) (h!71725 lt!2388881) true) (content!12440 (t!379027 lt!2388881))))))

(assert (= (and d!2035681 c!1188956) b!6488722))

(assert (= (and d!2035681 (not c!1188956)) b!6488723))

(declare-fun m!7277326 () Bool)

(assert (=> b!6488723 m!7277326))

(assert (=> b!6488723 m!7276906))

(assert (=> d!2035089 d!2035681))

(declare-fun d!2035683 () Bool)

(declare-fun c!1188957 () Bool)

(assert (=> d!2035683 (= c!1188957 ((_ is Nil!65277) lt!2388871))))

(declare-fun e!3932500 () (InoxSet Regex!16367))

(assert (=> d!2035683 (= (content!12440 lt!2388871) e!3932500)))

(declare-fun b!6488724 () Bool)

(assert (=> b!6488724 (= e!3932500 ((as const (Array Regex!16367 Bool)) false))))

(declare-fun b!6488725 () Bool)

(assert (=> b!6488725 (= e!3932500 ((_ map or) (store ((as const (Array Regex!16367 Bool)) false) (h!71725 lt!2388871) true) (content!12440 (t!379027 lt!2388871))))))

(assert (= (and d!2035683 c!1188957) b!6488724))

(assert (= (and d!2035683 (not c!1188957)) b!6488725))

(declare-fun m!7277328 () Bool)

(assert (=> b!6488725 m!7277328))

(declare-fun m!7277330 () Bool)

(assert (=> b!6488725 m!7277330))

(assert (=> d!2035089 d!2035683))

(declare-fun d!2035685 () Bool)

(assert (=> d!2035685 (= (nullable!6360 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343))))) (nullableFct!2298 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343))))))))

(declare-fun bs!1646379 () Bool)

(assert (= bs!1646379 d!2035685))

(declare-fun m!7277332 () Bool)

(assert (=> bs!1646379 m!7277332))

(assert (=> b!6487227 d!2035685))

(assert (=> d!2035187 d!2035175))

(assert (=> d!2035187 d!2035219))

(assert (=> d!2035113 d!2035273))

(assert (=> d!2035113 d!2035047))

(assert (=> b!6487130 d!2034973))

(declare-fun d!2035687 () Bool)

(declare-fun res!2664924 () Bool)

(declare-fun e!3932501 () Bool)

(assert (=> d!2035687 (=> res!2664924 e!3932501)))

(assert (=> d!2035687 (= res!2664924 ((_ is Nil!65277) (++!14445 lt!2388881 lt!2388871)))))

(assert (=> d!2035687 (= (forall!15550 (++!14445 lt!2388881 lt!2388871) lambda!359126) e!3932501)))

(declare-fun b!6488726 () Bool)

(declare-fun e!3932502 () Bool)

(assert (=> b!6488726 (= e!3932501 e!3932502)))

(declare-fun res!2664925 () Bool)

(assert (=> b!6488726 (=> (not res!2664925) (not e!3932502))))

(assert (=> b!6488726 (= res!2664925 (dynLambda!25928 lambda!359126 (h!71725 (++!14445 lt!2388881 lt!2388871))))))

(declare-fun b!6488727 () Bool)

(assert (=> b!6488727 (= e!3932502 (forall!15550 (t!379027 (++!14445 lt!2388881 lt!2388871)) lambda!359126))))

(assert (= (and d!2035687 (not res!2664924)) b!6488726))

(assert (= (and b!6488726 res!2664925) b!6488727))

(declare-fun b_lambda!245653 () Bool)

(assert (=> (not b_lambda!245653) (not b!6488726)))

(declare-fun m!7277334 () Bool)

(assert (=> b!6488726 m!7277334))

(declare-fun m!7277336 () Bool)

(assert (=> b!6488727 m!7277336))

(assert (=> d!2035077 d!2035687))

(assert (=> d!2035077 d!2035089))

(declare-fun d!2035689 () Bool)

(assert (=> d!2035689 (forall!15550 (++!14445 lt!2388881 lt!2388871) lambda!359126)))

(assert (=> d!2035689 true))

(declare-fun _$78!298 () Unit!158799)

(assert (=> d!2035689 (= (choose!48160 lt!2388881 lt!2388871 lambda!359126) _$78!298)))

(declare-fun bs!1646391 () Bool)

(assert (= bs!1646391 d!2035689))

(assert (=> bs!1646391 m!7274956))

(assert (=> bs!1646391 m!7274956))

(assert (=> bs!1646391 m!7275950))

(assert (=> d!2035077 d!2035689))

(declare-fun d!2035691 () Bool)

(declare-fun res!2664926 () Bool)

(declare-fun e!3932503 () Bool)

(assert (=> d!2035691 (=> res!2664926 e!3932503)))

(assert (=> d!2035691 (= res!2664926 ((_ is Nil!65277) lt!2388881))))

(assert (=> d!2035691 (= (forall!15550 lt!2388881 lambda!359126) e!3932503)))

(declare-fun b!6488728 () Bool)

(declare-fun e!3932504 () Bool)

(assert (=> b!6488728 (= e!3932503 e!3932504)))

(declare-fun res!2664927 () Bool)

(assert (=> b!6488728 (=> (not res!2664927) (not e!3932504))))

(assert (=> b!6488728 (= res!2664927 (dynLambda!25928 lambda!359126 (h!71725 lt!2388881)))))

(declare-fun b!6488729 () Bool)

(assert (=> b!6488729 (= e!3932504 (forall!15550 (t!379027 lt!2388881) lambda!359126))))

(assert (= (and d!2035691 (not res!2664926)) b!6488728))

(assert (= (and b!6488728 res!2664927) b!6488729))

(declare-fun b_lambda!245655 () Bool)

(assert (=> (not b_lambda!245655) (not b!6488728)))

(declare-fun m!7277340 () Bool)

(assert (=> b!6488728 m!7277340))

(declare-fun m!7277342 () Bool)

(assert (=> b!6488729 m!7277342))

(assert (=> d!2035077 d!2035691))

(declare-fun b!6488730 () Bool)

(declare-fun res!2664932 () Bool)

(declare-fun e!3932505 () Bool)

(assert (=> b!6488730 (=> res!2664932 e!3932505)))

(assert (=> b!6488730 (= res!2664932 (not (isEmpty!37468 (tail!12294 (_1!36649 (get!22634 lt!2389101))))))))

(declare-fun b!6488732 () Bool)

(declare-fun e!3932510 () Bool)

(assert (=> b!6488732 (= e!3932510 (= (head!13209 (_1!36649 (get!22634 lt!2389101))) (c!1188383 (regOne!33246 r!7292))))))

(declare-fun b!6488733 () Bool)

(declare-fun res!2664929 () Bool)

(declare-fun e!3932507 () Bool)

(assert (=> b!6488733 (=> res!2664929 e!3932507)))

(assert (=> b!6488733 (= res!2664929 e!3932510)))

(declare-fun res!2664930 () Bool)

(assert (=> b!6488733 (=> (not res!2664930) (not e!3932510))))

(declare-fun lt!2389207 () Bool)

(assert (=> b!6488733 (= res!2664930 lt!2389207)))

(declare-fun b!6488734 () Bool)

(declare-fun e!3932511 () Bool)

(assert (=> b!6488734 (= e!3932511 e!3932505)))

(declare-fun res!2664935 () Bool)

(assert (=> b!6488734 (=> res!2664935 e!3932505)))

(declare-fun call!561662 () Bool)

(assert (=> b!6488734 (= res!2664935 call!561662)))

(declare-fun b!6488735 () Bool)

(declare-fun res!2664933 () Bool)

(assert (=> b!6488735 (=> res!2664933 e!3932507)))

(assert (=> b!6488735 (= res!2664933 (not ((_ is ElementMatch!16367) (regOne!33246 r!7292))))))

(declare-fun e!3932506 () Bool)

(assert (=> b!6488735 (= e!3932506 e!3932507)))

(declare-fun bm!561657 () Bool)

(assert (=> bm!561657 (= call!561662 (isEmpty!37468 (_1!36649 (get!22634 lt!2389101))))))

(declare-fun b!6488736 () Bool)

(assert (=> b!6488736 (= e!3932507 e!3932511)))

(declare-fun res!2664931 () Bool)

(assert (=> b!6488736 (=> (not res!2664931) (not e!3932511))))

(assert (=> b!6488736 (= res!2664931 (not lt!2389207))))

(declare-fun b!6488737 () Bool)

(declare-fun e!3932508 () Bool)

(assert (=> b!6488737 (= e!3932508 e!3932506)))

(declare-fun c!1188960 () Bool)

(assert (=> b!6488737 (= c!1188960 ((_ is EmptyLang!16367) (regOne!33246 r!7292)))))

(declare-fun b!6488738 () Bool)

(declare-fun res!2664934 () Bool)

(assert (=> b!6488738 (=> (not res!2664934) (not e!3932510))))

(assert (=> b!6488738 (= res!2664934 (isEmpty!37468 (tail!12294 (_1!36649 (get!22634 lt!2389101)))))))

(declare-fun b!6488739 () Bool)

(declare-fun e!3932509 () Bool)

(assert (=> b!6488739 (= e!3932509 (nullable!6360 (regOne!33246 r!7292)))))

(declare-fun b!6488740 () Bool)

(assert (=> b!6488740 (= e!3932508 (= lt!2389207 call!561662))))

(declare-fun b!6488741 () Bool)

(declare-fun res!2664928 () Bool)

(assert (=> b!6488741 (=> (not res!2664928) (not e!3932510))))

(assert (=> b!6488741 (= res!2664928 (not call!561662))))

(declare-fun b!6488742 () Bool)

(assert (=> b!6488742 (= e!3932506 (not lt!2389207))))

(declare-fun b!6488743 () Bool)

(assert (=> b!6488743 (= e!3932505 (not (= (head!13209 (_1!36649 (get!22634 lt!2389101))) (c!1188383 (regOne!33246 r!7292)))))))

(declare-fun d!2035693 () Bool)

(assert (=> d!2035693 e!3932508))

(declare-fun c!1188959 () Bool)

(assert (=> d!2035693 (= c!1188959 ((_ is EmptyExpr!16367) (regOne!33246 r!7292)))))

(assert (=> d!2035693 (= lt!2389207 e!3932509)))

(declare-fun c!1188958 () Bool)

(assert (=> d!2035693 (= c!1188958 (isEmpty!37468 (_1!36649 (get!22634 lt!2389101))))))

(assert (=> d!2035693 (validRegex!8103 (regOne!33246 r!7292))))

(assert (=> d!2035693 (= (matchR!8550 (regOne!33246 r!7292) (_1!36649 (get!22634 lt!2389101))) lt!2389207)))

(declare-fun b!6488731 () Bool)

(assert (=> b!6488731 (= e!3932509 (matchR!8550 (derivativeStep!5063 (regOne!33246 r!7292) (head!13209 (_1!36649 (get!22634 lt!2389101)))) (tail!12294 (_1!36649 (get!22634 lt!2389101)))))))

(assert (= (and d!2035693 c!1188958) b!6488739))

(assert (= (and d!2035693 (not c!1188958)) b!6488731))

(assert (= (and d!2035693 c!1188959) b!6488740))

(assert (= (and d!2035693 (not c!1188959)) b!6488737))

(assert (= (and b!6488737 c!1188960) b!6488742))

(assert (= (and b!6488737 (not c!1188960)) b!6488735))

(assert (= (and b!6488735 (not res!2664933)) b!6488733))

(assert (= (and b!6488733 res!2664930) b!6488741))

(assert (= (and b!6488741 res!2664928) b!6488738))

(assert (= (and b!6488738 res!2664934) b!6488732))

(assert (= (and b!6488733 (not res!2664929)) b!6488736))

(assert (= (and b!6488736 res!2664931) b!6488734))

(assert (= (and b!6488734 (not res!2664935)) b!6488730))

(assert (= (and b!6488730 (not res!2664932)) b!6488743))

(assert (= (or b!6488740 b!6488734 b!6488741) bm!561657))

(declare-fun m!7277348 () Bool)

(assert (=> b!6488730 m!7277348))

(assert (=> b!6488730 m!7277348))

(declare-fun m!7277350 () Bool)

(assert (=> b!6488730 m!7277350))

(assert (=> b!6488739 m!7276524))

(declare-fun m!7277354 () Bool)

(assert (=> d!2035693 m!7277354))

(assert (=> d!2035693 m!7276136))

(assert (=> b!6488738 m!7277348))

(assert (=> b!6488738 m!7277348))

(assert (=> b!6488738 m!7277350))

(declare-fun m!7277356 () Bool)

(assert (=> b!6488743 m!7277356))

(assert (=> b!6488732 m!7277356))

(assert (=> b!6488731 m!7277356))

(assert (=> b!6488731 m!7277356))

(declare-fun m!7277358 () Bool)

(assert (=> b!6488731 m!7277358))

(assert (=> b!6488731 m!7277348))

(assert (=> b!6488731 m!7277358))

(assert (=> b!6488731 m!7277348))

(declare-fun m!7277360 () Bool)

(assert (=> b!6488731 m!7277360))

(assert (=> bm!561657 m!7277354))

(assert (=> b!6487684 d!2035693))

(assert (=> b!6487684 d!2035407))

(declare-fun d!2035699 () Bool)

(declare-fun c!1188963 () Bool)

(assert (=> d!2035699 (= c!1188963 (isEmpty!37468 (tail!12294 lt!2388903)))))

(declare-fun e!3932515 () Bool)

(assert (=> d!2035699 (= (matchZipper!2379 (derivationStepZipper!2333 lt!2388898 (head!13209 lt!2388903)) (tail!12294 lt!2388903)) e!3932515)))

(declare-fun b!6488750 () Bool)

(assert (=> b!6488750 (= e!3932515 (nullableZipper!2124 (derivationStepZipper!2333 lt!2388898 (head!13209 lt!2388903))))))

(declare-fun b!6488751 () Bool)

(assert (=> b!6488751 (= e!3932515 (matchZipper!2379 (derivationStepZipper!2333 (derivationStepZipper!2333 lt!2388898 (head!13209 lt!2388903)) (head!13209 (tail!12294 lt!2388903))) (tail!12294 (tail!12294 lt!2388903))))))

(assert (= (and d!2035699 c!1188963) b!6488750))

(assert (= (and d!2035699 (not c!1188963)) b!6488751))

(assert (=> d!2035699 m!7275968))

(assert (=> d!2035699 m!7275970))

(assert (=> b!6488750 m!7276000))

(declare-fun m!7277362 () Bool)

(assert (=> b!6488750 m!7277362))

(assert (=> b!6488751 m!7275968))

(assert (=> b!6488751 m!7276598))

(assert (=> b!6488751 m!7276000))

(assert (=> b!6488751 m!7276598))

(declare-fun m!7277364 () Bool)

(assert (=> b!6488751 m!7277364))

(assert (=> b!6488751 m!7275968))

(assert (=> b!6488751 m!7276590))

(assert (=> b!6488751 m!7277364))

(assert (=> b!6488751 m!7276590))

(declare-fun m!7277370 () Bool)

(assert (=> b!6488751 m!7277370))

(assert (=> b!6487515 d!2035699))

(declare-fun bs!1646393 () Bool)

(declare-fun d!2035701 () Bool)

(assert (= bs!1646393 (and d!2035701 d!2035525)))

(declare-fun lambda!359274 () Int)

(assert (=> bs!1646393 (= (= (head!13209 lt!2388903) (head!13209 lt!2388887)) (= lambda!359274 lambda!359257))))

(declare-fun bs!1646394 () Bool)

(assert (= bs!1646394 (and d!2035701 d!2035105)))

(assert (=> bs!1646394 (= (= (head!13209 lt!2388903) (h!71724 s!2326)) (= lambda!359274 lambda!359193))))

(declare-fun bs!1646395 () Bool)

(assert (= bs!1646395 (and d!2035701 d!2035585)))

(assert (=> bs!1646395 (= (= (head!13209 lt!2388903) (head!13209 (t!379026 s!2326))) (= lambda!359274 lambda!359263))))

(declare-fun bs!1646396 () Bool)

(assert (= bs!1646396 (and d!2035701 d!2035493)))

(assert (=> bs!1646396 (= (= (head!13209 lt!2388903) (head!13209 s!2326)) (= lambda!359274 lambda!359255))))

(declare-fun bs!1646397 () Bool)

(assert (= bs!1646397 (and d!2035701 d!2035487)))

(assert (=> bs!1646397 (= (= (head!13209 lt!2388903) (head!13209 (t!379026 s!2326))) (= lambda!359274 lambda!359254))))

(declare-fun bs!1646398 () Bool)

(assert (= bs!1646398 (and d!2035701 d!2035229)))

(assert (=> bs!1646398 (= (= (head!13209 lt!2388903) (head!13209 (t!379026 s!2326))) (= lambda!359274 lambda!359232))))

(declare-fun bs!1646399 () Bool)

(assert (= bs!1646399 (and d!2035701 b!6486628)))

(assert (=> bs!1646399 (= (= (head!13209 lt!2388903) (h!71724 s!2326)) (= lambda!359274 lambda!359120))))

(assert (=> d!2035701 true))

(assert (=> d!2035701 (= (derivationStepZipper!2333 lt!2388898 (head!13209 lt!2388903)) (flatMap!1872 lt!2388898 lambda!359274))))

(declare-fun bs!1646400 () Bool)

(assert (= bs!1646400 d!2035701))

(declare-fun m!7277382 () Bool)

(assert (=> bs!1646400 m!7277382))

(assert (=> b!6487515 d!2035701))

(assert (=> b!6487515 d!2035349))

(assert (=> b!6487515 d!2035215))

(declare-fun d!2035705 () Bool)

(assert (=> d!2035705 (= (isEmpty!37472 lt!2388861) (not ((_ is Some!16257) lt!2388861)))))

(assert (=> d!2035119 d!2035705))

(declare-fun b!6488752 () Bool)

(declare-fun e!3932517 () (InoxSet Context!11502))

(declare-fun e!3932516 () (InoxSet Context!11502))

(assert (=> b!6488752 (= e!3932517 e!3932516)))

(declare-fun c!1188965 () Bool)

(assert (=> b!6488752 (= c!1188965 ((_ is Cons!65277) (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388895))))))))

(declare-fun b!6488753 () Bool)

(declare-fun call!561663 () (InoxSet Context!11502))

(assert (=> b!6488753 (= e!3932517 ((_ map or) call!561663 (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388895)))))) (h!71724 s!2326))))))

(declare-fun b!6488754 () Bool)

(assert (=> b!6488754 (= e!3932516 ((as const (Array Context!11502 Bool)) false))))

(declare-fun d!2035707 () Bool)

(declare-fun c!1188964 () Bool)

(declare-fun e!3932518 () Bool)

(assert (=> d!2035707 (= c!1188964 e!3932518)))

(declare-fun res!2664938 () Bool)

(assert (=> d!2035707 (=> (not res!2664938) (not e!3932518))))

(assert (=> d!2035707 (= res!2664938 ((_ is Cons!65277) (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388895))))))))

(assert (=> d!2035707 (= (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 lt!2388895))) (h!71724 s!2326)) e!3932517)))

(declare-fun b!6488755 () Bool)

(assert (=> b!6488755 (= e!3932516 call!561663)))

(declare-fun b!6488756 () Bool)

(assert (=> b!6488756 (= e!3932518 (nullable!6360 (h!71725 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388895)))))))))

(declare-fun bm!561658 () Bool)

(assert (=> bm!561658 (= call!561663 (derivationStepZipperDown!1615 (h!71725 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388895))))) (Context!11503 (t!379027 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388895)))))) (h!71724 s!2326)))))

(assert (= (and d!2035707 res!2664938) b!6488756))

(assert (= (and d!2035707 c!1188964) b!6488753))

(assert (= (and d!2035707 (not c!1188964)) b!6488752))

(assert (= (and b!6488752 c!1188965) b!6488755))

(assert (= (and b!6488752 (not c!1188965)) b!6488754))

(assert (= (or b!6488753 b!6488755) bm!561658))

(declare-fun m!7277384 () Bool)

(assert (=> b!6488753 m!7277384))

(declare-fun m!7277386 () Bool)

(assert (=> b!6488756 m!7277386))

(declare-fun m!7277388 () Bool)

(assert (=> bm!561658 m!7277388))

(assert (=> b!6487271 d!2035707))

(declare-fun d!2035709 () Bool)

(declare-fun lt!2389209 () Int)

(assert (=> d!2035709 (>= lt!2389209 0)))

(declare-fun e!3932519 () Int)

(assert (=> d!2035709 (= lt!2389209 e!3932519)))

(declare-fun c!1188966 () Bool)

(assert (=> d!2035709 (= c!1188966 ((_ is Nil!65276) lt!2389001))))

(assert (=> d!2035709 (= (size!40424 lt!2389001) lt!2389209)))

(declare-fun b!6488757 () Bool)

(assert (=> b!6488757 (= e!3932519 0)))

(declare-fun b!6488758 () Bool)

(assert (=> b!6488758 (= e!3932519 (+ 1 (size!40424 (t!379026 lt!2389001))))))

(assert (= (and d!2035709 c!1188966) b!6488757))

(assert (= (and d!2035709 (not c!1188966)) b!6488758))

(declare-fun m!7277390 () Bool)

(assert (=> b!6488758 m!7277390))

(assert (=> b!6487044 d!2035709))

(assert (=> b!6487044 d!2035243))

(assert (=> b!6487044 d!2035451))

(declare-fun bs!1646401 () Bool)

(declare-fun d!2035711 () Bool)

(assert (= bs!1646401 (and d!2035711 b!6486640)))

(declare-fun lambda!359275 () Int)

(assert (=> bs!1646401 (= lambda!359275 lambda!359126)))

(declare-fun bs!1646402 () Bool)

(assert (= bs!1646402 (and d!2035711 d!2035473)))

(assert (=> bs!1646402 (= lambda!359275 lambda!359251)))

(declare-fun bs!1646403 () Bool)

(assert (= bs!1646403 (and d!2035711 d!2035183)))

(assert (=> bs!1646403 (= lambda!359275 lambda!359225)))

(declare-fun bs!1646404 () Bool)

(assert (= bs!1646404 (and d!2035711 d!2035173)))

(assert (=> bs!1646404 (= lambda!359275 lambda!359222)))

(declare-fun bs!1646405 () Bool)

(assert (= bs!1646405 (and d!2035711 d!2035185)))

(assert (=> bs!1646405 (= lambda!359275 lambda!359228)))

(declare-fun bs!1646406 () Bool)

(assert (= bs!1646406 (and d!2035711 d!2035009)))

(assert (=> bs!1646406 (= lambda!359275 lambda!359178)))

(declare-fun bs!1646407 () Bool)

(assert (= bs!1646407 (and d!2035711 d!2035597)))

(assert (=> bs!1646407 (= lambda!359275 lambda!359266)))

(declare-fun bs!1646408 () Bool)

(assert (= bs!1646408 (and d!2035711 d!2035471)))

(assert (=> bs!1646408 (= lambda!359275 lambda!359250)))

(declare-fun bs!1646409 () Bool)

(assert (= bs!1646409 (and d!2035711 d!2035379)))

(assert (=> bs!1646409 (= lambda!359275 lambda!359235)))

(declare-fun bs!1646410 () Bool)

(assert (= bs!1646410 (and d!2035711 d!2035453)))

(assert (=> bs!1646410 (= lambda!359275 lambda!359249)))

(declare-fun bs!1646411 () Bool)

(assert (= bs!1646411 (and d!2035711 d!2035083)))

(assert (=> bs!1646411 (= lambda!359275 lambda!359184)))

(declare-fun bs!1646412 () Bool)

(assert (= bs!1646412 (and d!2035711 d!2035481)))

(assert (=> bs!1646412 (= lambda!359275 lambda!359252)))

(declare-fun bs!1646413 () Bool)

(assert (= bs!1646413 (and d!2035711 d!2035073)))

(assert (=> bs!1646413 (= lambda!359275 lambda!359181)))

(declare-fun bs!1646414 () Bool)

(assert (= bs!1646414 (and d!2035711 d!2035109)))

(assert (=> bs!1646414 (= lambda!359275 lambda!359194)))

(declare-fun bs!1646415 () Bool)

(assert (= bs!1646415 (and d!2035711 d!2035483)))

(assert (=> bs!1646415 (= lambda!359275 lambda!359253)))

(declare-fun b!6488759 () Bool)

(declare-fun e!3932523 () Bool)

(assert (=> b!6488759 (= e!3932523 (isEmpty!37470 (t!379027 (t!379027 (unfocusZipperList!1788 zl!343)))))))

(declare-fun b!6488760 () Bool)

(declare-fun e!3932522 () Bool)

(declare-fun lt!2389210 () Regex!16367)

(assert (=> b!6488760 (= e!3932522 (= lt!2389210 (head!13210 (t!379027 (unfocusZipperList!1788 zl!343)))))))

(declare-fun b!6488761 () Bool)

(assert (=> b!6488761 (= e!3932522 (isUnion!1197 lt!2389210))))

(declare-fun b!6488762 () Bool)

(declare-fun e!3932520 () Regex!16367)

(assert (=> b!6488762 (= e!3932520 (h!71725 (t!379027 (unfocusZipperList!1788 zl!343))))))

(declare-fun b!6488763 () Bool)

(declare-fun e!3932524 () Bool)

(declare-fun e!3932525 () Bool)

(assert (=> b!6488763 (= e!3932524 e!3932525)))

(declare-fun c!1188967 () Bool)

(assert (=> b!6488763 (= c!1188967 (isEmpty!37470 (t!379027 (unfocusZipperList!1788 zl!343))))))

(declare-fun b!6488764 () Bool)

(assert (=> b!6488764 (= e!3932525 e!3932522)))

(declare-fun c!1188969 () Bool)

(assert (=> b!6488764 (= c!1188969 (isEmpty!37470 (tail!12295 (t!379027 (unfocusZipperList!1788 zl!343)))))))

(assert (=> d!2035711 e!3932524))

(declare-fun res!2664940 () Bool)

(assert (=> d!2035711 (=> (not res!2664940) (not e!3932524))))

(assert (=> d!2035711 (= res!2664940 (validRegex!8103 lt!2389210))))

(assert (=> d!2035711 (= lt!2389210 e!3932520)))

(declare-fun c!1188968 () Bool)

(assert (=> d!2035711 (= c!1188968 e!3932523)))

(declare-fun res!2664939 () Bool)

(assert (=> d!2035711 (=> (not res!2664939) (not e!3932523))))

(assert (=> d!2035711 (= res!2664939 ((_ is Cons!65277) (t!379027 (unfocusZipperList!1788 zl!343))))))

(assert (=> d!2035711 (forall!15550 (t!379027 (unfocusZipperList!1788 zl!343)) lambda!359275)))

(assert (=> d!2035711 (= (generalisedUnion!2211 (t!379027 (unfocusZipperList!1788 zl!343))) lt!2389210)))

(declare-fun b!6488765 () Bool)

(declare-fun e!3932521 () Regex!16367)

(assert (=> b!6488765 (= e!3932521 EmptyLang!16367)))

(declare-fun b!6488766 () Bool)

(assert (=> b!6488766 (= e!3932521 (Union!16367 (h!71725 (t!379027 (unfocusZipperList!1788 zl!343))) (generalisedUnion!2211 (t!379027 (t!379027 (unfocusZipperList!1788 zl!343))))))))

(declare-fun b!6488767 () Bool)

(assert (=> b!6488767 (= e!3932520 e!3932521)))

(declare-fun c!1188970 () Bool)

(assert (=> b!6488767 (= c!1188970 ((_ is Cons!65277) (t!379027 (unfocusZipperList!1788 zl!343))))))

(declare-fun b!6488768 () Bool)

(assert (=> b!6488768 (= e!3932525 (isEmptyLang!1767 lt!2389210))))

(assert (= (and d!2035711 res!2664939) b!6488759))

(assert (= (and d!2035711 c!1188968) b!6488762))

(assert (= (and d!2035711 (not c!1188968)) b!6488767))

(assert (= (and b!6488767 c!1188970) b!6488766))

(assert (= (and b!6488767 (not c!1188970)) b!6488765))

(assert (= (and d!2035711 res!2664940) b!6488763))

(assert (= (and b!6488763 c!1188967) b!6488768))

(assert (= (and b!6488763 (not c!1188967)) b!6488764))

(assert (= (and b!6488764 c!1188969) b!6488760))

(assert (= (and b!6488764 (not c!1188969)) b!6488761))

(declare-fun m!7277392 () Bool)

(assert (=> d!2035711 m!7277392))

(declare-fun m!7277394 () Bool)

(assert (=> d!2035711 m!7277394))

(assert (=> b!6488763 m!7276266))

(declare-fun m!7277396 () Bool)

(assert (=> b!6488760 m!7277396))

(declare-fun m!7277398 () Bool)

(assert (=> b!6488768 m!7277398))

(declare-fun m!7277400 () Bool)

(assert (=> b!6488764 m!7277400))

(assert (=> b!6488764 m!7277400))

(declare-fun m!7277404 () Bool)

(assert (=> b!6488764 m!7277404))

(declare-fun m!7277406 () Bool)

(assert (=> b!6488761 m!7277406))

(declare-fun m!7277408 () Bool)

(assert (=> b!6488766 m!7277408))

(declare-fun m!7277410 () Bool)

(assert (=> b!6488759 m!7277410))

(assert (=> b!6487767 d!2035711))

(declare-fun d!2035715 () Bool)

(assert (=> d!2035715 (= (flatMap!1872 lt!2388869 lambda!359193) (choose!48152 lt!2388869 lambda!359193))))

(declare-fun bs!1646417 () Bool)

(assert (= bs!1646417 d!2035715))

(declare-fun m!7277412 () Bool)

(assert (=> bs!1646417 m!7277412))

(assert (=> d!2035105 d!2035715))

(declare-fun bs!1646418 () Bool)

(declare-fun b!6488777 () Bool)

(assert (= bs!1646418 (and b!6488777 d!2035573)))

(declare-fun lambda!359279 () Int)

(assert (=> bs!1646418 (not (= lambda!359279 lambda!359259))))

(declare-fun bs!1646419 () Bool)

(assert (= bs!1646419 (and b!6488777 d!2035151)))

(assert (=> bs!1646419 (not (= lambda!359279 lambda!359216))))

(declare-fun bs!1646420 () Bool)

(assert (= bs!1646420 (and b!6488777 b!6487593)))

(assert (=> bs!1646420 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33247 lt!2388865)) (reg!16696 r!7292)) (= (regOne!33247 lt!2388865) r!7292)) (= lambda!359279 lambda!359195))))

(declare-fun bs!1646421 () Bool)

(assert (= bs!1646421 (and b!6488777 d!2035675)))

(assert (=> bs!1646421 (not (= lambda!359279 lambda!359270))))

(declare-fun bs!1646422 () Bool)

(assert (= bs!1646422 (and b!6488777 b!6486656)))

(assert (=> bs!1646422 (not (= lambda!359279 lambda!359121))))

(declare-fun bs!1646423 () Bool)

(assert (= bs!1646423 (and b!6488777 b!6487561)))

(assert (=> bs!1646423 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33247 lt!2388865)) (reg!16696 lt!2388855)) (= (regOne!33247 lt!2388865) lt!2388855)) (= lambda!359279 lambda!359189))))

(declare-fun bs!1646424 () Bool)

(assert (= bs!1646424 (and b!6488777 b!6486655)))

(assert (=> bs!1646424 (not (= lambda!359279 lambda!359119))))

(declare-fun bs!1646425 () Bool)

(assert (= bs!1646425 (and b!6488777 d!2035135)))

(assert (=> bs!1646425 (not (= lambda!359279 lambda!359207))))

(declare-fun bs!1646426 () Bool)

(assert (= bs!1646426 (and b!6488777 d!2035139)))

(assert (=> bs!1646426 (= (and (= (reg!16696 (regOne!33247 lt!2388865)) (reg!16696 (regOne!33246 r!7292))) (= (regOne!33247 lt!2388865) (Star!16367 (reg!16696 (regOne!33246 r!7292))))) (= lambda!359279 lambda!359213))))

(declare-fun bs!1646427 () Bool)

(assert (= bs!1646427 (and b!6488777 d!2035129)))

(assert (=> bs!1646427 (not (= lambda!359279 lambda!359201))))

(assert (=> bs!1646418 (not (= lambda!359279 lambda!359260))))

(declare-fun bs!1646428 () Bool)

(assert (= bs!1646428 (and b!6488777 b!6487626)))

(assert (=> bs!1646428 (= (and (= (reg!16696 (regOne!33247 lt!2388865)) (reg!16696 lt!2388865)) (= (regOne!33247 lt!2388865) lt!2388865)) (= lambda!359279 lambda!359203))))

(assert (=> bs!1646426 (not (= lambda!359279 lambda!359212))))

(declare-fun bs!1646429 () Bool)

(assert (= bs!1646429 (and b!6488777 b!6487630)))

(assert (=> bs!1646429 (not (= lambda!359279 lambda!359204))))

(assert (=> bs!1646427 (not (= lambda!359279 lambda!359202))))

(declare-fun bs!1646431 () Bool)

(assert (= bs!1646431 (and b!6488777 b!6486638)))

(assert (=> bs!1646431 (not (= lambda!359279 lambda!359123))))

(declare-fun bs!1646432 () Bool)

(assert (= bs!1646432 (and b!6488777 d!2035165)))

(assert (=> bs!1646432 (not (= lambda!359279 lambda!359218))))

(declare-fun bs!1646433 () Bool)

(assert (= bs!1646433 (and b!6488777 d!2035221)))

(assert (=> bs!1646433 (not (= lambda!359279 lambda!359231))))

(declare-fun bs!1646434 () Bool)

(assert (= bs!1646434 (and b!6488777 b!6487565)))

(assert (=> bs!1646434 (not (= lambda!359279 lambda!359190))))

(assert (=> bs!1646424 (not (= lambda!359279 lambda!359118))))

(assert (=> bs!1646421 (not (= lambda!359279 lambda!359269))))

(assert (=> bs!1646431 (= (and (= (reg!16696 (regOne!33247 lt!2388865)) (reg!16696 (regOne!33246 r!7292))) (= (regOne!33247 lt!2388865) lt!2388865)) (= lambda!359279 lambda!359124))))

(declare-fun bs!1646437 () Bool)

(assert (= bs!1646437 (and b!6488777 d!2035387)))

(assert (=> bs!1646437 (not (= lambda!359279 lambda!359241))))

(assert (=> bs!1646431 (not (= lambda!359279 lambda!359125))))

(declare-fun bs!1646438 () Bool)

(assert (= bs!1646438 (and b!6488777 b!6488119)))

(assert (=> bs!1646438 (not (= lambda!359279 lambda!359234))))

(declare-fun bs!1646439 () Bool)

(assert (= bs!1646439 (and b!6488777 d!2035145)))

(assert (=> bs!1646439 (not (= lambda!359279 lambda!359214))))

(assert (=> bs!1646419 (not (= lambda!359279 lambda!359215))))

(declare-fun bs!1646440 () Bool)

(assert (= bs!1646440 (and b!6488777 b!6488303)))

(assert (=> bs!1646440 (not (= lambda!359279 lambda!359248))))

(assert (=> bs!1646422 (not (= lambda!359279 lambda!359122))))

(assert (=> bs!1646437 (not (= lambda!359279 lambda!359240))))

(declare-fun bs!1646441 () Bool)

(assert (= bs!1646441 (and b!6488777 b!6488115)))

(assert (=> bs!1646441 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33247 lt!2388865)) (reg!16696 (regTwo!33247 r!7292))) (= (regOne!33247 lt!2388865) (regTwo!33247 r!7292))) (= lambda!359279 lambda!359233))))

(assert (=> bs!1646432 (not (= lambda!359279 lambda!359219))))

(declare-fun bs!1646442 () Bool)

(assert (= bs!1646442 (and b!6488777 b!6488299)))

(assert (=> bs!1646442 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33247 lt!2388865)) (reg!16696 (regTwo!33247 lt!2388855))) (= (regOne!33247 lt!2388865) (regTwo!33247 lt!2388855))) (= lambda!359279 lambda!359247))))

(declare-fun bs!1646443 () Bool)

(assert (= bs!1646443 (and b!6488777 d!2035161)))

(assert (=> bs!1646443 (not (= lambda!359279 lambda!359217))))

(declare-fun bs!1646444 () Bool)

(assert (= bs!1646444 (and b!6488777 b!6487597)))

(assert (=> bs!1646444 (not (= lambda!359279 lambda!359196))))

(assert (=> b!6488777 true))

(assert (=> b!6488777 true))

(declare-fun bs!1646445 () Bool)

(declare-fun b!6488783 () Bool)

(assert (= bs!1646445 (and b!6488783 d!2035573)))

(declare-fun lambda!359280 () Int)

(assert (=> bs!1646445 (not (= lambda!359280 lambda!359259))))

(declare-fun bs!1646446 () Bool)

(assert (= bs!1646446 (and b!6488783 d!2035151)))

(assert (=> bs!1646446 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regOne!33247 lt!2388865)) (regOne!33246 r!7292)) (= (regTwo!33246 (regOne!33247 lt!2388865)) (regTwo!33246 r!7292))) (= lambda!359280 lambda!359216))))

(declare-fun bs!1646447 () Bool)

(assert (= bs!1646447 (and b!6488783 b!6487593)))

(assert (=> bs!1646447 (not (= lambda!359280 lambda!359195))))

(declare-fun bs!1646448 () Bool)

(assert (= bs!1646448 (and b!6488783 d!2035675)))

(assert (=> bs!1646448 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regOne!33247 lt!2388865)) (regOne!33246 r!7292)) (= (regTwo!33246 (regOne!33247 lt!2388865)) (regTwo!33246 r!7292))) (= lambda!359280 lambda!359270))))

(declare-fun bs!1646449 () Bool)

(assert (= bs!1646449 (and b!6488783 b!6486656)))

(assert (=> bs!1646449 (not (= lambda!359280 lambda!359121))))

(declare-fun bs!1646450 () Bool)

(assert (= bs!1646450 (and b!6488783 b!6487561)))

(assert (=> bs!1646450 (not (= lambda!359280 lambda!359189))))

(declare-fun bs!1646451 () Bool)

(assert (= bs!1646451 (and b!6488783 b!6486655)))

(assert (=> bs!1646451 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regOne!33247 lt!2388865)) (regOne!33246 r!7292)) (= (regTwo!33246 (regOne!33247 lt!2388865)) (regTwo!33246 r!7292))) (= lambda!359280 lambda!359119))))

(declare-fun bs!1646452 () Bool)

(assert (= bs!1646452 (and b!6488783 d!2035135)))

(assert (=> bs!1646452 (not (= lambda!359280 lambda!359207))))

(declare-fun bs!1646453 () Bool)

(assert (= bs!1646453 (and b!6488783 d!2035129)))

(assert (=> bs!1646453 (not (= lambda!359280 lambda!359201))))

(assert (=> bs!1646445 (= (and (= (regOne!33246 (regOne!33247 lt!2388865)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regOne!33247 lt!2388865)) lt!2388865)) (= lambda!359280 lambda!359260))))

(declare-fun bs!1646454 () Bool)

(assert (= bs!1646454 (and b!6488783 b!6487626)))

(assert (=> bs!1646454 (not (= lambda!359280 lambda!359203))))

(declare-fun bs!1646455 () Bool)

(assert (= bs!1646455 (and b!6488783 d!2035139)))

(assert (=> bs!1646455 (not (= lambda!359280 lambda!359212))))

(declare-fun bs!1646456 () Bool)

(assert (= bs!1646456 (and b!6488783 b!6487630)))

(assert (=> bs!1646456 (= (and (= (regOne!33246 (regOne!33247 lt!2388865)) (regOne!33246 lt!2388865)) (= (regTwo!33246 (regOne!33247 lt!2388865)) (regTwo!33246 lt!2388865))) (= lambda!359280 lambda!359204))))

(assert (=> bs!1646453 (= (and (= (regOne!33246 (regOne!33247 lt!2388865)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regOne!33247 lt!2388865)) lt!2388865)) (= lambda!359280 lambda!359202))))

(declare-fun bs!1646457 () Bool)

(assert (= bs!1646457 (and b!6488783 b!6486638)))

(assert (=> bs!1646457 (not (= lambda!359280 lambda!359123))))

(declare-fun bs!1646458 () Bool)

(assert (= bs!1646458 (and b!6488783 d!2035165)))

(assert (=> bs!1646458 (not (= lambda!359280 lambda!359218))))

(declare-fun bs!1646459 () Bool)

(assert (= bs!1646459 (and b!6488783 d!2035221)))

(assert (=> bs!1646459 (not (= lambda!359280 lambda!359231))))

(declare-fun bs!1646460 () Bool)

(assert (= bs!1646460 (and b!6488783 b!6487565)))

(assert (=> bs!1646460 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regOne!33247 lt!2388865)) (regOne!33246 lt!2388855)) (= (regTwo!33246 (regOne!33247 lt!2388865)) (regTwo!33246 lt!2388855))) (= lambda!359280 lambda!359190))))

(assert (=> bs!1646451 (not (= lambda!359280 lambda!359118))))

(assert (=> bs!1646448 (not (= lambda!359280 lambda!359269))))

(assert (=> bs!1646457 (not (= lambda!359280 lambda!359124))))

(declare-fun bs!1646461 () Bool)

(assert (= bs!1646461 (and b!6488783 d!2035387)))

(assert (=> bs!1646461 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regOne!33247 lt!2388865)) lt!2388865) (= (regTwo!33246 (regOne!33247 lt!2388865)) (regTwo!33246 r!7292))) (= lambda!359280 lambda!359241))))

(assert (=> bs!1646457 (= (and (= (regOne!33246 (regOne!33247 lt!2388865)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regOne!33247 lt!2388865)) lt!2388865)) (= lambda!359280 lambda!359125))))

(assert (=> bs!1646455 (not (= lambda!359280 lambda!359213))))

(declare-fun bs!1646462 () Bool)

(assert (= bs!1646462 (and b!6488783 b!6488777)))

(assert (=> bs!1646462 (not (= lambda!359280 lambda!359279))))

(declare-fun bs!1646463 () Bool)

(assert (= bs!1646463 (and b!6488783 b!6488119)))

(assert (=> bs!1646463 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regOne!33247 lt!2388865)) (regOne!33246 (regTwo!33247 r!7292))) (= (regTwo!33246 (regOne!33247 lt!2388865)) (regTwo!33246 (regTwo!33247 r!7292)))) (= lambda!359280 lambda!359234))))

(declare-fun bs!1646464 () Bool)

(assert (= bs!1646464 (and b!6488783 d!2035145)))

(assert (=> bs!1646464 (not (= lambda!359280 lambda!359214))))

(assert (=> bs!1646446 (not (= lambda!359280 lambda!359215))))

(declare-fun bs!1646465 () Bool)

(assert (= bs!1646465 (and b!6488783 b!6488303)))

(assert (=> bs!1646465 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regOne!33247 lt!2388865)) (regOne!33246 (regTwo!33247 lt!2388855))) (= (regTwo!33246 (regOne!33247 lt!2388865)) (regTwo!33246 (regTwo!33247 lt!2388855)))) (= lambda!359280 lambda!359248))))

(assert (=> bs!1646449 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regOne!33247 lt!2388865)) lt!2388865) (= (regTwo!33246 (regOne!33247 lt!2388865)) (regTwo!33246 r!7292))) (= lambda!359280 lambda!359122))))

(assert (=> bs!1646461 (not (= lambda!359280 lambda!359240))))

(declare-fun bs!1646466 () Bool)

(assert (= bs!1646466 (and b!6488783 b!6488115)))

(assert (=> bs!1646466 (not (= lambda!359280 lambda!359233))))

(assert (=> bs!1646458 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regOne!33247 lt!2388865)) lt!2388865) (= (regTwo!33246 (regOne!33247 lt!2388865)) (regTwo!33246 r!7292))) (= lambda!359280 lambda!359219))))

(declare-fun bs!1646467 () Bool)

(assert (= bs!1646467 (and b!6488783 b!6488299)))

(assert (=> bs!1646467 (not (= lambda!359280 lambda!359247))))

(declare-fun bs!1646468 () Bool)

(assert (= bs!1646468 (and b!6488783 d!2035161)))

(assert (=> bs!1646468 (not (= lambda!359280 lambda!359217))))

(declare-fun bs!1646469 () Bool)

(assert (= bs!1646469 (and b!6488783 b!6487597)))

(assert (=> bs!1646469 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regOne!33247 lt!2388865)) (regOne!33246 r!7292)) (= (regTwo!33246 (regOne!33247 lt!2388865)) (regTwo!33246 r!7292))) (= lambda!359280 lambda!359196))))

(assert (=> b!6488783 true))

(assert (=> b!6488783 true))

(declare-fun b!6488776 () Bool)

(declare-fun c!1188981 () Bool)

(assert (=> b!6488776 (= c!1188981 ((_ is ElementMatch!16367) (regOne!33247 lt!2388865)))))

(declare-fun e!3932531 () Bool)

(declare-fun e!3932536 () Bool)

(assert (=> b!6488776 (= e!3932531 e!3932536)))

(declare-fun e!3932538 () Bool)

(declare-fun call!561671 () Bool)

(assert (=> b!6488777 (= e!3932538 call!561671)))

(declare-fun b!6488778 () Bool)

(declare-fun e!3932534 () Bool)

(declare-fun call!561670 () Bool)

(assert (=> b!6488778 (= e!3932534 call!561670)))

(declare-fun bm!561664 () Bool)

(assert (=> bm!561664 (= call!561670 (isEmpty!37468 (_1!36649 lt!2388900)))))

(declare-fun b!6488780 () Bool)

(declare-fun e!3932535 () Bool)

(assert (=> b!6488780 (= e!3932535 (matchRSpec!3468 (regTwo!33247 (regOne!33247 lt!2388865)) (_1!36649 lt!2388900)))))

(declare-fun d!2035717 () Bool)

(declare-fun c!1188979 () Bool)

(assert (=> d!2035717 (= c!1188979 ((_ is EmptyExpr!16367) (regOne!33247 lt!2388865)))))

(assert (=> d!2035717 (= (matchRSpec!3468 (regOne!33247 lt!2388865) (_1!36649 lt!2388900)) e!3932534)))

(declare-fun b!6488781 () Bool)

(declare-fun e!3932533 () Bool)

(declare-fun e!3932537 () Bool)

(assert (=> b!6488781 (= e!3932533 e!3932537)))

(declare-fun c!1188980 () Bool)

(assert (=> b!6488781 (= c!1188980 ((_ is Star!16367) (regOne!33247 lt!2388865)))))

(declare-fun bm!561666 () Bool)

(assert (=> bm!561666 (= call!561671 (Exists!3437 (ite c!1188980 lambda!359279 lambda!359280)))))

(assert (=> b!6488783 (= e!3932537 call!561671)))

(declare-fun b!6488785 () Bool)

(declare-fun c!1188978 () Bool)

(assert (=> b!6488785 (= c!1188978 ((_ is Union!16367) (regOne!33247 lt!2388865)))))

(assert (=> b!6488785 (= e!3932536 e!3932533)))

(declare-fun b!6488787 () Bool)

(assert (=> b!6488787 (= e!3932536 (= (_1!36649 lt!2388900) (Cons!65276 (c!1188383 (regOne!33247 lt!2388865)) Nil!65276)))))

(declare-fun b!6488788 () Bool)

(assert (=> b!6488788 (= e!3932533 e!3932535)))

(declare-fun res!2664944 () Bool)

(assert (=> b!6488788 (= res!2664944 (matchRSpec!3468 (regOne!33247 (regOne!33247 lt!2388865)) (_1!36649 lt!2388900)))))

(assert (=> b!6488788 (=> res!2664944 e!3932535)))

(declare-fun b!6488789 () Bool)

(declare-fun res!2664943 () Bool)

(assert (=> b!6488789 (=> res!2664943 e!3932538)))

(assert (=> b!6488789 (= res!2664943 call!561670)))

(assert (=> b!6488789 (= e!3932537 e!3932538)))

(declare-fun b!6488790 () Bool)

(assert (=> b!6488790 (= e!3932534 e!3932531)))

(declare-fun res!2664942 () Bool)

(assert (=> b!6488790 (= res!2664942 (not ((_ is EmptyLang!16367) (regOne!33247 lt!2388865))))))

(assert (=> b!6488790 (=> (not res!2664942) (not e!3932531))))

(assert (= (and d!2035717 c!1188979) b!6488778))

(assert (= (and d!2035717 (not c!1188979)) b!6488790))

(assert (= (and b!6488790 res!2664942) b!6488776))

(assert (= (and b!6488776 c!1188981) b!6488787))

(assert (= (and b!6488776 (not c!1188981)) b!6488785))

(assert (= (and b!6488785 c!1188978) b!6488788))

(assert (= (and b!6488785 (not c!1188978)) b!6488781))

(assert (= (and b!6488788 (not res!2664944)) b!6488780))

(assert (= (and b!6488781 c!1188980) b!6488789))

(assert (= (and b!6488781 (not c!1188980)) b!6488783))

(assert (= (and b!6488789 (not res!2664943)) b!6488777))

(assert (= (or b!6488777 b!6488783) bm!561666))

(assert (= (or b!6488778 b!6488789) bm!561664))

(assert (=> bm!561664 m!7275006))

(declare-fun m!7277430 () Bool)

(assert (=> b!6488780 m!7277430))

(declare-fun m!7277432 () Bool)

(assert (=> bm!561666 m!7277432))

(declare-fun m!7277434 () Bool)

(assert (=> b!6488788 m!7277434))

(assert (=> b!6487633 d!2035717))

(declare-fun d!2035733 () Bool)

(assert (=> d!2035733 (= (isEmpty!37468 (_2!36649 lt!2388900)) ((_ is Nil!65276) (_2!36649 lt!2388900)))))

(assert (=> d!2035055 d!2035733))

(assert (=> d!2035055 d!2035357))

(assert (=> d!2035145 d!2035147))

(assert (=> d!2035145 d!2035553))

(assert (=> d!2035145 d!2035153))

(declare-fun d!2035735 () Bool)

(assert (=> d!2035735 (= (Exists!3437 lambda!359214) (choose!48164 lambda!359214))))

(declare-fun bs!1646470 () Bool)

(assert (= bs!1646470 d!2035735))

(declare-fun m!7277436 () Bool)

(assert (=> bs!1646470 m!7277436))

(assert (=> d!2035145 d!2035735))

(declare-fun bs!1646471 () Bool)

(declare-fun d!2035737 () Bool)

(assert (= bs!1646471 (and d!2035737 d!2035573)))

(declare-fun lambda!359281 () Int)

(assert (=> bs!1646471 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359281 lambda!359259))))

(declare-fun bs!1646472 () Bool)

(assert (= bs!1646472 (and d!2035737 d!2035151)))

(assert (=> bs!1646472 (not (= lambda!359281 lambda!359216))))

(declare-fun bs!1646473 () Bool)

(assert (= bs!1646473 (and d!2035737 b!6487593)))

(assert (=> bs!1646473 (not (= lambda!359281 lambda!359195))))

(declare-fun bs!1646474 () Bool)

(assert (= bs!1646474 (and d!2035737 d!2035675)))

(assert (=> bs!1646474 (not (= lambda!359281 lambda!359270))))

(declare-fun bs!1646475 () Bool)

(assert (= bs!1646475 (and d!2035737 b!6486656)))

(assert (=> bs!1646475 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359281 lambda!359121))))

(declare-fun bs!1646476 () Bool)

(assert (= bs!1646476 (and d!2035737 b!6487561)))

(assert (=> bs!1646476 (not (= lambda!359281 lambda!359189))))

(declare-fun bs!1646477 () Bool)

(assert (= bs!1646477 (and d!2035737 b!6486655)))

(assert (=> bs!1646477 (not (= lambda!359281 lambda!359119))))

(declare-fun bs!1646478 () Bool)

(assert (= bs!1646478 (and d!2035737 d!2035135)))

(assert (=> bs!1646478 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359281 lambda!359207))))

(declare-fun bs!1646479 () Bool)

(assert (= bs!1646479 (and d!2035737 d!2035129)))

(assert (=> bs!1646479 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359281 lambda!359201))))

(assert (=> bs!1646471 (not (= lambda!359281 lambda!359260))))

(declare-fun bs!1646480 () Bool)

(assert (= bs!1646480 (and d!2035737 b!6487626)))

(assert (=> bs!1646480 (not (= lambda!359281 lambda!359203))))

(declare-fun bs!1646481 () Bool)

(assert (= bs!1646481 (and d!2035737 d!2035139)))

(assert (=> bs!1646481 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) (Star!16367 (reg!16696 (regOne!33246 r!7292))))) (= lambda!359281 lambda!359212))))

(declare-fun bs!1646482 () Bool)

(assert (= bs!1646482 (and d!2035737 b!6487630)))

(assert (=> bs!1646482 (not (= lambda!359281 lambda!359204))))

(declare-fun bs!1646483 () Bool)

(assert (= bs!1646483 (and d!2035737 b!6488783)))

(assert (=> bs!1646483 (not (= lambda!359281 lambda!359280))))

(assert (=> bs!1646479 (not (= lambda!359281 lambda!359202))))

(declare-fun bs!1646484 () Bool)

(assert (= bs!1646484 (and d!2035737 b!6486638)))

(assert (=> bs!1646484 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 r!7292) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 r!7292) lt!2388865)) (= lambda!359281 lambda!359123))))

(declare-fun bs!1646485 () Bool)

(assert (= bs!1646485 (and d!2035737 d!2035165)))

(assert (=> bs!1646485 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359281 lambda!359218))))

(declare-fun bs!1646486 () Bool)

(assert (= bs!1646486 (and d!2035737 d!2035221)))

(assert (=> bs!1646486 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359281 lambda!359231))))

(declare-fun bs!1646487 () Bool)

(assert (= bs!1646487 (and d!2035737 b!6487565)))

(assert (=> bs!1646487 (not (= lambda!359281 lambda!359190))))

(assert (=> bs!1646477 (= lambda!359281 lambda!359118)))

(assert (=> bs!1646474 (= lambda!359281 lambda!359269)))

(assert (=> bs!1646484 (not (= lambda!359281 lambda!359124))))

(declare-fun bs!1646488 () Bool)

(assert (= bs!1646488 (and d!2035737 d!2035387)))

(assert (=> bs!1646488 (not (= lambda!359281 lambda!359241))))

(assert (=> bs!1646484 (not (= lambda!359281 lambda!359125))))

(assert (=> bs!1646481 (not (= lambda!359281 lambda!359213))))

(declare-fun bs!1646489 () Bool)

(assert (= bs!1646489 (and d!2035737 b!6488777)))

(assert (=> bs!1646489 (not (= lambda!359281 lambda!359279))))

(declare-fun bs!1646490 () Bool)

(assert (= bs!1646490 (and d!2035737 b!6488119)))

(assert (=> bs!1646490 (not (= lambda!359281 lambda!359234))))

(declare-fun bs!1646491 () Bool)

(assert (= bs!1646491 (and d!2035737 d!2035145)))

(assert (=> bs!1646491 (= lambda!359281 lambda!359214)))

(assert (=> bs!1646472 (= lambda!359281 lambda!359215)))

(declare-fun bs!1646492 () Bool)

(assert (= bs!1646492 (and d!2035737 b!6488303)))

(assert (=> bs!1646492 (not (= lambda!359281 lambda!359248))))

(assert (=> bs!1646475 (not (= lambda!359281 lambda!359122))))

(assert (=> bs!1646488 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359281 lambda!359240))))

(declare-fun bs!1646493 () Bool)

(assert (= bs!1646493 (and d!2035737 b!6488115)))

(assert (=> bs!1646493 (not (= lambda!359281 lambda!359233))))

(assert (=> bs!1646485 (not (= lambda!359281 lambda!359219))))

(declare-fun bs!1646494 () Bool)

(assert (= bs!1646494 (and d!2035737 b!6488299)))

(assert (=> bs!1646494 (not (= lambda!359281 lambda!359247))))

(declare-fun bs!1646495 () Bool)

(assert (= bs!1646495 (and d!2035737 d!2035161)))

(assert (=> bs!1646495 (= (= (regOne!33246 r!7292) lt!2388865) (= lambda!359281 lambda!359217))))

(declare-fun bs!1646496 () Bool)

(assert (= bs!1646496 (and d!2035737 b!6487597)))

(assert (=> bs!1646496 (not (= lambda!359281 lambda!359196))))

(assert (=> d!2035737 true))

(assert (=> d!2035737 true))

(assert (=> d!2035737 true))

(assert (=> d!2035737 (= (isDefined!12961 (findConcatSeparation!2672 (regOne!33246 r!7292) (regTwo!33246 r!7292) Nil!65276 s!2326 s!2326)) (Exists!3437 lambda!359281))))

(assert (=> d!2035737 true))

(declare-fun _$89!2721 () Unit!158799)

(assert (=> d!2035737 (= (choose!48166 (regOne!33246 r!7292) (regTwo!33246 r!7292) s!2326) _$89!2721)))

(declare-fun bs!1646497 () Bool)

(assert (= bs!1646497 d!2035737))

(assert (=> bs!1646497 m!7275076))

(assert (=> bs!1646497 m!7275076))

(assert (=> bs!1646497 m!7275078))

(declare-fun m!7277438 () Bool)

(assert (=> bs!1646497 m!7277438))

(assert (=> d!2035145 d!2035737))

(assert (=> bm!561498 d!2035175))

(declare-fun d!2035739 () Bool)

(assert (=> d!2035739 (= (isEmpty!37470 (t!379027 (unfocusZipperList!1788 zl!343))) ((_ is Nil!65277) (t!379027 (unfocusZipperList!1788 zl!343))))))

(assert (=> b!6487760 d!2035739))

(declare-fun b!6488801 () Bool)

(declare-fun e!3932544 () (InoxSet Context!11502))

(declare-fun e!3932543 () (InoxSet Context!11502))

(assert (=> b!6488801 (= e!3932544 e!3932543)))

(declare-fun c!1188983 () Bool)

(assert (=> b!6488801 (= c!1188983 ((_ is Cons!65277) (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388862))))))))

(declare-fun call!561672 () (InoxSet Context!11502))

(declare-fun b!6488802 () Bool)

(assert (=> b!6488802 (= e!3932544 ((_ map or) call!561672 (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388862)))))) (h!71724 s!2326))))))

(declare-fun b!6488803 () Bool)

(assert (=> b!6488803 (= e!3932543 ((as const (Array Context!11502 Bool)) false))))

(declare-fun d!2035741 () Bool)

(declare-fun c!1188982 () Bool)

(declare-fun e!3932545 () Bool)

(assert (=> d!2035741 (= c!1188982 e!3932545)))

(declare-fun res!2664956 () Bool)

(assert (=> d!2035741 (=> (not res!2664956) (not e!3932545))))

(assert (=> d!2035741 (= res!2664956 ((_ is Cons!65277) (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388862))))))))

(assert (=> d!2035741 (= (derivationStepZipperUp!1541 (Context!11503 (t!379027 (exprs!6251 lt!2388862))) (h!71724 s!2326)) e!3932544)))

(declare-fun b!6488804 () Bool)

(assert (=> b!6488804 (= e!3932543 call!561672)))

(declare-fun b!6488805 () Bool)

(assert (=> b!6488805 (= e!3932545 (nullable!6360 (h!71725 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388862)))))))))

(declare-fun bm!561667 () Bool)

(assert (=> bm!561667 (= call!561672 (derivationStepZipperDown!1615 (h!71725 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388862))))) (Context!11503 (t!379027 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 lt!2388862)))))) (h!71724 s!2326)))))

(assert (= (and d!2035741 res!2664956) b!6488805))

(assert (= (and d!2035741 c!1188982) b!6488802))

(assert (= (and d!2035741 (not c!1188982)) b!6488801))

(assert (= (and b!6488801 c!1188983) b!6488804))

(assert (= (and b!6488801 (not c!1188983)) b!6488803))

(assert (= (or b!6488802 b!6488804) bm!561667))

(declare-fun m!7277440 () Bool)

(assert (=> b!6488802 m!7277440))

(declare-fun m!7277442 () Bool)

(assert (=> b!6488805 m!7277442))

(declare-fun m!7277444 () Bool)

(assert (=> bm!561667 m!7277444))

(assert (=> b!6487266 d!2035741))

(assert (=> b!6487459 d!2035461))

(assert (=> b!6487789 d!2035441))

(declare-fun d!2035743 () Bool)

(declare-fun c!1188986 () Bool)

(assert (=> d!2035743 (= c!1188986 ((_ is Nil!65278) lt!2389041))))

(declare-fun e!3932548 () (InoxSet Context!11502))

(assert (=> d!2035743 (= (content!12439 lt!2389041) e!3932548)))

(declare-fun b!6488810 () Bool)

(assert (=> b!6488810 (= e!3932548 ((as const (Array Context!11502 Bool)) false))))

(declare-fun b!6488811 () Bool)

(assert (=> b!6488811 (= e!3932548 ((_ map or) (store ((as const (Array Context!11502 Bool)) false) (h!71726 lt!2389041) true) (content!12439 (t!379028 lt!2389041))))))

(assert (= (and d!2035743 c!1188986) b!6488810))

(assert (= (and d!2035743 (not c!1188986)) b!6488811))

(declare-fun m!7277446 () Bool)

(assert (=> b!6488811 m!7277446))

(declare-fun m!7277448 () Bool)

(assert (=> b!6488811 m!7277448))

(assert (=> b!6487425 d!2035743))

(assert (=> b!6487774 d!2035173))

(declare-fun bs!1646498 () Bool)

(declare-fun d!2035745 () Bool)

(assert (= bs!1646498 (and d!2035745 d!2035473)))

(declare-fun lambda!359286 () Int)

(assert (=> bs!1646498 (= lambda!359286 lambda!359251)))

(declare-fun bs!1646499 () Bool)

(assert (= bs!1646499 (and d!2035745 d!2035183)))

(assert (=> bs!1646499 (= lambda!359286 lambda!359225)))

(declare-fun bs!1646500 () Bool)

(assert (= bs!1646500 (and d!2035745 d!2035173)))

(assert (=> bs!1646500 (= lambda!359286 lambda!359222)))

(declare-fun bs!1646501 () Bool)

(assert (= bs!1646501 (and d!2035745 d!2035185)))

(assert (=> bs!1646501 (= lambda!359286 lambda!359228)))

(declare-fun bs!1646502 () Bool)

(assert (= bs!1646502 (and d!2035745 d!2035009)))

(assert (=> bs!1646502 (= lambda!359286 lambda!359178)))

(declare-fun bs!1646503 () Bool)

(assert (= bs!1646503 (and d!2035745 d!2035597)))

(assert (=> bs!1646503 (= lambda!359286 lambda!359266)))

(declare-fun bs!1646504 () Bool)

(assert (= bs!1646504 (and d!2035745 d!2035471)))

(assert (=> bs!1646504 (= lambda!359286 lambda!359250)))

(declare-fun bs!1646505 () Bool)

(assert (= bs!1646505 (and d!2035745 d!2035379)))

(assert (=> bs!1646505 (= lambda!359286 lambda!359235)))

(declare-fun bs!1646506 () Bool)

(assert (= bs!1646506 (and d!2035745 d!2035453)))

(assert (=> bs!1646506 (= lambda!359286 lambda!359249)))

(declare-fun bs!1646507 () Bool)

(assert (= bs!1646507 (and d!2035745 d!2035083)))

(assert (=> bs!1646507 (= lambda!359286 lambda!359184)))

(declare-fun bs!1646508 () Bool)

(assert (= bs!1646508 (and d!2035745 d!2035481)))

(assert (=> bs!1646508 (= lambda!359286 lambda!359252)))

(declare-fun bs!1646509 () Bool)

(assert (= bs!1646509 (and d!2035745 d!2035073)))

(assert (=> bs!1646509 (= lambda!359286 lambda!359181)))

(declare-fun bs!1646510 () Bool)

(assert (= bs!1646510 (and d!2035745 d!2035109)))

(assert (=> bs!1646510 (= lambda!359286 lambda!359194)))

(declare-fun bs!1646511 () Bool)

(assert (= bs!1646511 (and d!2035745 d!2035483)))

(assert (=> bs!1646511 (= lambda!359286 lambda!359253)))

(declare-fun bs!1646512 () Bool)

(assert (= bs!1646512 (and d!2035745 b!6486640)))

(assert (=> bs!1646512 (= lambda!359286 lambda!359126)))

(declare-fun bs!1646513 () Bool)

(assert (= bs!1646513 (and d!2035745 d!2035711)))

(assert (=> bs!1646513 (= lambda!359286 lambda!359275)))

(declare-fun lt!2389211 () List!65401)

(assert (=> d!2035745 (forall!15550 lt!2389211 lambda!359286)))

(declare-fun e!3932549 () List!65401)

(assert (=> d!2035745 (= lt!2389211 e!3932549)))

(declare-fun c!1188987 () Bool)

(assert (=> d!2035745 (= c!1188987 ((_ is Cons!65278) (t!379028 zl!343)))))

(assert (=> d!2035745 (= (unfocusZipperList!1788 (t!379028 zl!343)) lt!2389211)))

(declare-fun b!6488812 () Bool)

(assert (=> b!6488812 (= e!3932549 (Cons!65277 (generalisedConcat!1964 (exprs!6251 (h!71726 (t!379028 zl!343)))) (unfocusZipperList!1788 (t!379028 (t!379028 zl!343)))))))

(declare-fun b!6488813 () Bool)

(assert (=> b!6488813 (= e!3932549 Nil!65277)))

(assert (= (and d!2035745 c!1188987) b!6488812))

(assert (= (and d!2035745 (not c!1188987)) b!6488813))

(declare-fun m!7277450 () Bool)

(assert (=> d!2035745 m!7277450))

(declare-fun m!7277452 () Bool)

(assert (=> b!6488812 m!7277452))

(declare-fun m!7277454 () Bool)

(assert (=> b!6488812 m!7277454))

(assert (=> b!6487774 d!2035745))

(assert (=> bm!561500 d!2035175))

(declare-fun b!6488814 () Bool)

(declare-fun e!3932550 () (InoxSet Context!11502))

(declare-fun call!561677 () (InoxSet Context!11502))

(declare-fun call!561676 () (InoxSet Context!11502))

(assert (=> b!6488814 (= e!3932550 ((_ map or) call!561677 call!561676))))

(declare-fun b!6488815 () Bool)

(declare-fun e!3932554 () (InoxSet Context!11502))

(declare-fun call!561674 () (InoxSet Context!11502))

(assert (=> b!6488815 (= e!3932554 ((_ map or) call!561676 call!561674))))

(declare-fun bm!561668 () Bool)

(declare-fun call!561675 () (InoxSet Context!11502))

(assert (=> bm!561668 (= call!561675 call!561674)))

(declare-fun b!6488816 () Bool)

(declare-fun e!3932555 () (InoxSet Context!11502))

(assert (=> b!6488816 (= e!3932554 e!3932555)))

(declare-fun c!1188988 () Bool)

(assert (=> b!6488816 (= c!1188988 ((_ is Concat!25212) (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343)))))))))))

(declare-fun e!3932553 () (InoxSet Context!11502))

(declare-fun b!6488817 () Bool)

(assert (=> b!6488817 (= e!3932553 (store ((as const (Array Context!11502 Bool)) false) (ite (or c!1188549 c!1188552) lt!2388870 (Context!11503 call!561456)) true))))

(declare-fun e!3932552 () Bool)

(declare-fun b!6488818 () Bool)

(assert (=> b!6488818 (= e!3932552 (nullable!6360 (regOne!33246 (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343))))))))))))

(declare-fun c!1188989 () Bool)

(declare-fun bm!561669 () Bool)

(declare-fun call!561673 () List!65401)

(assert (=> bm!561669 (= call!561676 (derivationStepZipperDown!1615 (ite c!1188989 (regTwo!33247 (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343)))))))) (regOne!33246 (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343))))))))) (ite c!1188989 (ite (or c!1188549 c!1188552) lt!2388870 (Context!11503 call!561456)) (Context!11503 call!561673)) (h!71724 s!2326)))))

(declare-fun c!1188992 () Bool)

(declare-fun call!561678 () List!65401)

(declare-fun bm!561670 () Bool)

(assert (=> bm!561670 (= call!561677 (derivationStepZipperDown!1615 (ite c!1188989 (regOne!33247 (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343)))))))) (ite c!1188992 (regTwo!33246 (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343)))))))) (ite c!1188988 (regOne!33246 (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343)))))))) (reg!16696 (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343))))))))))) (ite (or c!1188989 c!1188992) (ite (or c!1188549 c!1188552) lt!2388870 (Context!11503 call!561456)) (Context!11503 call!561678)) (h!71724 s!2326)))))

(declare-fun bm!561671 () Bool)

(assert (=> bm!561671 (= call!561678 call!561673)))

(declare-fun b!6488819 () Bool)

(declare-fun e!3932551 () (InoxSet Context!11502))

(assert (=> b!6488819 (= e!3932551 call!561675)))

(declare-fun b!6488820 () Bool)

(assert (=> b!6488820 (= e!3932555 call!561675)))

(declare-fun b!6488821 () Bool)

(assert (=> b!6488821 (= e!3932551 ((as const (Array Context!11502 Bool)) false))))

(declare-fun bm!561672 () Bool)

(assert (=> bm!561672 (= call!561673 ($colon$colon!2219 (exprs!6251 (ite (or c!1188549 c!1188552) lt!2388870 (Context!11503 call!561456))) (ite (or c!1188992 c!1188988) (regTwo!33246 (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343)))))))) (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343))))))))))))

(declare-fun b!6488822 () Bool)

(assert (=> b!6488822 (= c!1188992 e!3932552)))

(declare-fun res!2664957 () Bool)

(assert (=> b!6488822 (=> (not res!2664957) (not e!3932552))))

(assert (=> b!6488822 (= res!2664957 ((_ is Concat!25212) (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343)))))))))))

(assert (=> b!6488822 (= e!3932550 e!3932554)))

(declare-fun c!1188990 () Bool)

(declare-fun b!6488823 () Bool)

(assert (=> b!6488823 (= c!1188990 ((_ is Star!16367) (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343)))))))))))

(assert (=> b!6488823 (= e!3932555 e!3932551)))

(declare-fun bm!561673 () Bool)

(assert (=> bm!561673 (= call!561674 call!561677)))

(declare-fun b!6488824 () Bool)

(assert (=> b!6488824 (= e!3932553 e!3932550)))

(assert (=> b!6488824 (= c!1188989 ((_ is Union!16367) (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343)))))))))))

(declare-fun c!1188991 () Bool)

(declare-fun d!2035747 () Bool)

(assert (=> d!2035747 (= c!1188991 (and ((_ is ElementMatch!16367) (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343)))))))) (= (c!1188383 (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343)))))))) (h!71724 s!2326))))))

(assert (=> d!2035747 (= (derivationStepZipperDown!1615 (ite c!1188549 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188552 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1188548 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343))))))) (ite (or c!1188549 c!1188552) lt!2388870 (Context!11503 call!561456)) (h!71724 s!2326)) e!3932553)))

(assert (= (and d!2035747 c!1188991) b!6488817))

(assert (= (and d!2035747 (not c!1188991)) b!6488824))

(assert (= (and b!6488824 c!1188989) b!6488814))

(assert (= (and b!6488824 (not c!1188989)) b!6488822))

(assert (= (and b!6488822 res!2664957) b!6488818))

(assert (= (and b!6488822 c!1188992) b!6488815))

(assert (= (and b!6488822 (not c!1188992)) b!6488816))

(assert (= (and b!6488816 c!1188988) b!6488820))

(assert (= (and b!6488816 (not c!1188988)) b!6488823))

(assert (= (and b!6488823 c!1188990) b!6488819))

(assert (= (and b!6488823 (not c!1188990)) b!6488821))

(assert (= (or b!6488820 b!6488819) bm!561671))

(assert (= (or b!6488820 b!6488819) bm!561668))

(assert (= (or b!6488815 bm!561671) bm!561672))

(assert (= (or b!6488815 bm!561668) bm!561673))

(assert (= (or b!6488814 b!6488815) bm!561669))

(assert (= (or b!6488814 bm!561673) bm!561670))

(declare-fun m!7277456 () Bool)

(assert (=> bm!561672 m!7277456))

(declare-fun m!7277458 () Bool)

(assert (=> bm!561669 m!7277458))

(declare-fun m!7277460 () Bool)

(assert (=> b!6488818 m!7277460))

(declare-fun m!7277462 () Bool)

(assert (=> b!6488817 m!7277462))

(declare-fun m!7277464 () Bool)

(assert (=> bm!561670 m!7277464))

(assert (=> bm!561448 d!2035747))

(assert (=> bm!561497 d!2035273))

(declare-fun b!6488828 () Bool)

(declare-fun e!3932556 () Bool)

(declare-fun lt!2389212 () List!65400)

(assert (=> b!6488828 (= e!3932556 (or (not (= (_2!36649 lt!2388900) Nil!65276)) (= lt!2389212 (t!379026 (_1!36649 lt!2388900)))))))

(declare-fun d!2035749 () Bool)

(assert (=> d!2035749 e!3932556))

(declare-fun res!2664959 () Bool)

(assert (=> d!2035749 (=> (not res!2664959) (not e!3932556))))

(assert (=> d!2035749 (= res!2664959 (= (content!12437 lt!2389212) ((_ map or) (content!12437 (t!379026 (_1!36649 lt!2388900))) (content!12437 (_2!36649 lt!2388900)))))))

(declare-fun e!3932557 () List!65400)

(assert (=> d!2035749 (= lt!2389212 e!3932557)))

(declare-fun c!1188993 () Bool)

(assert (=> d!2035749 (= c!1188993 ((_ is Nil!65276) (t!379026 (_1!36649 lt!2388900))))))

(assert (=> d!2035749 (= (++!14444 (t!379026 (_1!36649 lt!2388900)) (_2!36649 lt!2388900)) lt!2389212)))

(declare-fun b!6488826 () Bool)

(assert (=> b!6488826 (= e!3932557 (Cons!65276 (h!71724 (t!379026 (_1!36649 lt!2388900))) (++!14444 (t!379026 (t!379026 (_1!36649 lt!2388900))) (_2!36649 lt!2388900))))))

(declare-fun b!6488827 () Bool)

(declare-fun res!2664958 () Bool)

(assert (=> b!6488827 (=> (not res!2664958) (not e!3932556))))

(assert (=> b!6488827 (= res!2664958 (= (size!40424 lt!2389212) (+ (size!40424 (t!379026 (_1!36649 lt!2388900))) (size!40424 (_2!36649 lt!2388900)))))))

(declare-fun b!6488825 () Bool)

(assert (=> b!6488825 (= e!3932557 (_2!36649 lt!2388900))))

(assert (= (and d!2035749 c!1188993) b!6488825))

(assert (= (and d!2035749 (not c!1188993)) b!6488826))

(assert (= (and d!2035749 res!2664959) b!6488827))

(assert (= (and b!6488827 res!2664958) b!6488828))

(declare-fun m!7277466 () Bool)

(assert (=> d!2035749 m!7277466))

(assert (=> d!2035749 m!7276364))

(assert (=> d!2035749 m!7275540))

(declare-fun m!7277468 () Bool)

(assert (=> b!6488826 m!7277468))

(declare-fun m!7277470 () Bool)

(assert (=> b!6488827 m!7277470))

(assert (=> b!6488827 m!7276372))

(assert (=> b!6488827 m!7275548))

(assert (=> b!6487691 d!2035749))

(declare-fun b!6488829 () Bool)

(declare-fun res!2664964 () Bool)

(declare-fun e!3932558 () Bool)

(assert (=> b!6488829 (=> res!2664964 e!3932558)))

(assert (=> b!6488829 (= res!2664964 (not (isEmpty!37468 (tail!12294 (tail!12294 s!2326)))))))

(declare-fun b!6488831 () Bool)

(declare-fun e!3932563 () Bool)

(assert (=> b!6488831 (= e!3932563 (= (head!13209 (tail!12294 s!2326)) (c!1188383 (derivativeStep!5063 lt!2388855 (head!13209 s!2326)))))))

(declare-fun b!6488832 () Bool)

(declare-fun res!2664961 () Bool)

(declare-fun e!3932560 () Bool)

(assert (=> b!6488832 (=> res!2664961 e!3932560)))

(assert (=> b!6488832 (= res!2664961 e!3932563)))

(declare-fun res!2664962 () Bool)

(assert (=> b!6488832 (=> (not res!2664962) (not e!3932563))))

(declare-fun lt!2389213 () Bool)

(assert (=> b!6488832 (= res!2664962 lt!2389213)))

(declare-fun b!6488833 () Bool)

(declare-fun e!3932564 () Bool)

(assert (=> b!6488833 (= e!3932564 e!3932558)))

(declare-fun res!2664967 () Bool)

(assert (=> b!6488833 (=> res!2664967 e!3932558)))

(declare-fun call!561679 () Bool)

(assert (=> b!6488833 (= res!2664967 call!561679)))

(declare-fun b!6488834 () Bool)

(declare-fun res!2664965 () Bool)

(assert (=> b!6488834 (=> res!2664965 e!3932560)))

(assert (=> b!6488834 (= res!2664965 (not ((_ is ElementMatch!16367) (derivativeStep!5063 lt!2388855 (head!13209 s!2326)))))))

(declare-fun e!3932559 () Bool)

(assert (=> b!6488834 (= e!3932559 e!3932560)))

(declare-fun bm!561674 () Bool)

(assert (=> bm!561674 (= call!561679 (isEmpty!37468 (tail!12294 s!2326)))))

(declare-fun b!6488835 () Bool)

(assert (=> b!6488835 (= e!3932560 e!3932564)))

(declare-fun res!2664963 () Bool)

(assert (=> b!6488835 (=> (not res!2664963) (not e!3932564))))

(assert (=> b!6488835 (= res!2664963 (not lt!2389213))))

(declare-fun b!6488836 () Bool)

(declare-fun e!3932561 () Bool)

(assert (=> b!6488836 (= e!3932561 e!3932559)))

(declare-fun c!1188996 () Bool)

(assert (=> b!6488836 (= c!1188996 ((_ is EmptyLang!16367) (derivativeStep!5063 lt!2388855 (head!13209 s!2326))))))

(declare-fun b!6488837 () Bool)

(declare-fun res!2664966 () Bool)

(assert (=> b!6488837 (=> (not res!2664966) (not e!3932563))))

(assert (=> b!6488837 (= res!2664966 (isEmpty!37468 (tail!12294 (tail!12294 s!2326))))))

(declare-fun b!6488838 () Bool)

(declare-fun e!3932562 () Bool)

(assert (=> b!6488838 (= e!3932562 (nullable!6360 (derivativeStep!5063 lt!2388855 (head!13209 s!2326))))))

(declare-fun b!6488839 () Bool)

(assert (=> b!6488839 (= e!3932561 (= lt!2389213 call!561679))))

(declare-fun b!6488840 () Bool)

(declare-fun res!2664960 () Bool)

(assert (=> b!6488840 (=> (not res!2664960) (not e!3932563))))

(assert (=> b!6488840 (= res!2664960 (not call!561679))))

(declare-fun b!6488841 () Bool)

(assert (=> b!6488841 (= e!3932559 (not lt!2389213))))

(declare-fun b!6488842 () Bool)

(assert (=> b!6488842 (= e!3932558 (not (= (head!13209 (tail!12294 s!2326)) (c!1188383 (derivativeStep!5063 lt!2388855 (head!13209 s!2326))))))))

(declare-fun d!2035751 () Bool)

(assert (=> d!2035751 e!3932561))

(declare-fun c!1188995 () Bool)

(assert (=> d!2035751 (= c!1188995 ((_ is EmptyExpr!16367) (derivativeStep!5063 lt!2388855 (head!13209 s!2326))))))

(assert (=> d!2035751 (= lt!2389213 e!3932562)))

(declare-fun c!1188994 () Bool)

(assert (=> d!2035751 (= c!1188994 (isEmpty!37468 (tail!12294 s!2326)))))

(assert (=> d!2035751 (validRegex!8103 (derivativeStep!5063 lt!2388855 (head!13209 s!2326)))))

(assert (=> d!2035751 (= (matchR!8550 (derivativeStep!5063 lt!2388855 (head!13209 s!2326)) (tail!12294 s!2326)) lt!2389213)))

(declare-fun b!6488830 () Bool)

(assert (=> b!6488830 (= e!3932562 (matchR!8550 (derivativeStep!5063 (derivativeStep!5063 lt!2388855 (head!13209 s!2326)) (head!13209 (tail!12294 s!2326))) (tail!12294 (tail!12294 s!2326))))))

(assert (= (and d!2035751 c!1188994) b!6488838))

(assert (= (and d!2035751 (not c!1188994)) b!6488830))

(assert (= (and d!2035751 c!1188995) b!6488839))

(assert (= (and d!2035751 (not c!1188995)) b!6488836))

(assert (= (and b!6488836 c!1188996) b!6488841))

(assert (= (and b!6488836 (not c!1188996)) b!6488834))

(assert (= (and b!6488834 (not res!2664965)) b!6488832))

(assert (= (and b!6488832 res!2664962) b!6488840))

(assert (= (and b!6488840 res!2664960) b!6488837))

(assert (= (and b!6488837 res!2664966) b!6488831))

(assert (= (and b!6488832 (not res!2664961)) b!6488835))

(assert (= (and b!6488835 res!2664963) b!6488833))

(assert (= (and b!6488833 (not res!2664967)) b!6488829))

(assert (= (and b!6488829 (not res!2664964)) b!6488842))

(assert (= (or b!6488839 b!6488833 b!6488840) bm!561674))

(assert (=> b!6488829 m!7275894))

(assert (=> b!6488829 m!7276510))

(assert (=> b!6488829 m!7276510))

(assert (=> b!6488829 m!7276512))

(assert (=> b!6488838 m!7276026))

(declare-fun m!7277472 () Bool)

(assert (=> b!6488838 m!7277472))

(assert (=> d!2035751 m!7275894))

(assert (=> d!2035751 m!7276024))

(assert (=> d!2035751 m!7276026))

(declare-fun m!7277474 () Bool)

(assert (=> d!2035751 m!7277474))

(assert (=> b!6488837 m!7275894))

(assert (=> b!6488837 m!7276510))

(assert (=> b!6488837 m!7276510))

(assert (=> b!6488837 m!7276512))

(assert (=> b!6488842 m!7275894))

(assert (=> b!6488842 m!7276518))

(assert (=> b!6488831 m!7275894))

(assert (=> b!6488831 m!7276518))

(assert (=> b!6488830 m!7275894))

(assert (=> b!6488830 m!7276518))

(assert (=> b!6488830 m!7276026))

(assert (=> b!6488830 m!7276518))

(declare-fun m!7277476 () Bool)

(assert (=> b!6488830 m!7277476))

(assert (=> b!6488830 m!7275894))

(assert (=> b!6488830 m!7276510))

(assert (=> b!6488830 m!7277476))

(assert (=> b!6488830 m!7276510))

(declare-fun m!7277478 () Bool)

(assert (=> b!6488830 m!7277478))

(assert (=> bm!561674 m!7275894))

(assert (=> bm!561674 m!7276024))

(assert (=> b!6487572 d!2035751))

(declare-fun b!6488843 () Bool)

(declare-fun c!1188997 () Bool)

(assert (=> b!6488843 (= c!1188997 (nullable!6360 (regOne!33246 lt!2388855)))))

(declare-fun e!3932567 () Regex!16367)

(declare-fun e!3932568 () Regex!16367)

(assert (=> b!6488843 (= e!3932567 e!3932568)))

(declare-fun b!6488844 () Bool)

(declare-fun e!3932566 () Regex!16367)

(assert (=> b!6488844 (= e!3932566 e!3932567)))

(declare-fun c!1189001 () Bool)

(assert (=> b!6488844 (= c!1189001 ((_ is Star!16367) lt!2388855))))

(declare-fun call!561681 () Regex!16367)

(declare-fun bm!561676 () Bool)

(declare-fun c!1188998 () Bool)

(assert (=> bm!561676 (= call!561681 (derivativeStep!5063 (ite c!1188998 (regOne!33247 lt!2388855) (ite c!1188997 (regTwo!33246 lt!2388855) (regOne!33246 lt!2388855))) (head!13209 s!2326)))))

(declare-fun b!6488845 () Bool)

(declare-fun call!561680 () Regex!16367)

(assert (=> b!6488845 (= e!3932567 (Concat!25212 call!561680 lt!2388855))))

(declare-fun b!6488846 () Bool)

(declare-fun e!3932565 () Regex!16367)

(assert (=> b!6488846 (= e!3932565 EmptyLang!16367)))

(declare-fun b!6488847 () Bool)

(declare-fun e!3932569 () Regex!16367)

(assert (=> b!6488847 (= e!3932569 (ite (= (head!13209 s!2326) (c!1188383 lt!2388855)) EmptyExpr!16367 EmptyLang!16367))))

(declare-fun bm!561677 () Bool)

(declare-fun call!561683 () Regex!16367)

(assert (=> bm!561677 (= call!561680 call!561683)))

(declare-fun b!6488848 () Bool)

(assert (=> b!6488848 (= e!3932565 e!3932569)))

(declare-fun c!1189000 () Bool)

(assert (=> b!6488848 (= c!1189000 ((_ is ElementMatch!16367) lt!2388855))))

(declare-fun b!6488849 () Bool)

(declare-fun call!561682 () Regex!16367)

(assert (=> b!6488849 (= e!3932568 (Union!16367 (Concat!25212 call!561680 (regTwo!33246 lt!2388855)) call!561682))))

(declare-fun b!6488850 () Bool)

(assert (=> b!6488850 (= e!3932568 (Union!16367 (Concat!25212 call!561682 (regTwo!33246 lt!2388855)) EmptyLang!16367))))

(declare-fun b!6488851 () Bool)

(assert (=> b!6488851 (= c!1188998 ((_ is Union!16367) lt!2388855))))

(assert (=> b!6488851 (= e!3932569 e!3932566)))

(declare-fun d!2035753 () Bool)

(declare-fun lt!2389214 () Regex!16367)

(assert (=> d!2035753 (validRegex!8103 lt!2389214)))

(assert (=> d!2035753 (= lt!2389214 e!3932565)))

(declare-fun c!1188999 () Bool)

(assert (=> d!2035753 (= c!1188999 (or ((_ is EmptyExpr!16367) lt!2388855) ((_ is EmptyLang!16367) lt!2388855)))))

(assert (=> d!2035753 (validRegex!8103 lt!2388855)))

(assert (=> d!2035753 (= (derivativeStep!5063 lt!2388855 (head!13209 s!2326)) lt!2389214)))

(declare-fun bm!561675 () Bool)

(assert (=> bm!561675 (= call!561683 (derivativeStep!5063 (ite c!1188998 (regTwo!33247 lt!2388855) (ite c!1189001 (reg!16696 lt!2388855) (regOne!33246 lt!2388855))) (head!13209 s!2326)))))

(declare-fun b!6488852 () Bool)

(assert (=> b!6488852 (= e!3932566 (Union!16367 call!561681 call!561683))))

(declare-fun bm!561678 () Bool)

(assert (=> bm!561678 (= call!561682 call!561681)))

(assert (= (and d!2035753 c!1188999) b!6488846))

(assert (= (and d!2035753 (not c!1188999)) b!6488848))

(assert (= (and b!6488848 c!1189000) b!6488847))

(assert (= (and b!6488848 (not c!1189000)) b!6488851))

(assert (= (and b!6488851 c!1188998) b!6488852))

(assert (= (and b!6488851 (not c!1188998)) b!6488844))

(assert (= (and b!6488844 c!1189001) b!6488845))

(assert (= (and b!6488844 (not c!1189001)) b!6488843))

(assert (= (and b!6488843 c!1188997) b!6488849))

(assert (= (and b!6488843 (not c!1188997)) b!6488850))

(assert (= (or b!6488849 b!6488850) bm!561678))

(assert (= (or b!6488845 b!6488849) bm!561677))

(assert (= (or b!6488852 bm!561677) bm!561675))

(assert (= (or b!6488852 bm!561678) bm!561676))

(assert (=> b!6488843 m!7276672))

(assert (=> bm!561676 m!7275890))

(declare-fun m!7277480 () Bool)

(assert (=> bm!561676 m!7277480))

(declare-fun m!7277482 () Bool)

(assert (=> d!2035753 m!7277482))

(assert (=> d!2035753 m!7275912))

(assert (=> bm!561675 m!7275890))

(declare-fun m!7277484 () Bool)

(assert (=> bm!561675 m!7277484))

(assert (=> b!6487572 d!2035753))

(assert (=> b!6487572 d!2035323))

(assert (=> b!6487572 d!2035307))

(declare-fun b!6488853 () Bool)

(declare-fun e!3932571 () Bool)

(declare-fun call!561685 () Bool)

(assert (=> b!6488853 (= e!3932571 call!561685)))

(declare-fun b!6488854 () Bool)

(declare-fun e!3932574 () Bool)

(declare-fun e!3932570 () Bool)

(assert (=> b!6488854 (= e!3932574 e!3932570)))

(declare-fun c!1189002 () Bool)

(assert (=> b!6488854 (= c!1189002 ((_ is Star!16367) lt!2389118))))

(declare-fun d!2035755 () Bool)

(declare-fun res!2664971 () Bool)

(assert (=> d!2035755 (=> res!2664971 e!3932574)))

(assert (=> d!2035755 (= res!2664971 ((_ is ElementMatch!16367) lt!2389118))))

(assert (=> d!2035755 (= (validRegex!8103 lt!2389118) e!3932574)))

(declare-fun bm!561679 () Bool)

(declare-fun call!561686 () Bool)

(declare-fun c!1189003 () Bool)

(assert (=> bm!561679 (= call!561686 (validRegex!8103 (ite c!1189003 (regOne!33247 lt!2389118) (regOne!33246 lt!2389118))))))

(declare-fun b!6488855 () Bool)

(declare-fun res!2664972 () Bool)

(declare-fun e!3932573 () Bool)

(assert (=> b!6488855 (=> res!2664972 e!3932573)))

(assert (=> b!6488855 (= res!2664972 (not ((_ is Concat!25212) lt!2389118)))))

(declare-fun e!3932572 () Bool)

(assert (=> b!6488855 (= e!3932572 e!3932573)))

(declare-fun b!6488856 () Bool)

(declare-fun e!3932575 () Bool)

(assert (=> b!6488856 (= e!3932575 call!561685)))

(declare-fun call!561684 () Bool)

(declare-fun bm!561680 () Bool)

(assert (=> bm!561680 (= call!561684 (validRegex!8103 (ite c!1189002 (reg!16696 lt!2389118) (ite c!1189003 (regTwo!33247 lt!2389118) (regTwo!33246 lt!2389118)))))))

(declare-fun b!6488857 () Bool)

(declare-fun res!2664970 () Bool)

(assert (=> b!6488857 (=> (not res!2664970) (not e!3932575))))

(assert (=> b!6488857 (= res!2664970 call!561686)))

(assert (=> b!6488857 (= e!3932572 e!3932575)))

(declare-fun b!6488858 () Bool)

(assert (=> b!6488858 (= e!3932570 e!3932572)))

(assert (=> b!6488858 (= c!1189003 ((_ is Union!16367) lt!2389118))))

(declare-fun bm!561681 () Bool)

(assert (=> bm!561681 (= call!561685 call!561684)))

(declare-fun b!6488859 () Bool)

(declare-fun e!3932576 () Bool)

(assert (=> b!6488859 (= e!3932576 call!561684)))

(declare-fun b!6488860 () Bool)

(assert (=> b!6488860 (= e!3932570 e!3932576)))

(declare-fun res!2664969 () Bool)

(assert (=> b!6488860 (= res!2664969 (not (nullable!6360 (reg!16696 lt!2389118))))))

(assert (=> b!6488860 (=> (not res!2664969) (not e!3932576))))

(declare-fun b!6488861 () Bool)

(assert (=> b!6488861 (= e!3932573 e!3932571)))

(declare-fun res!2664968 () Bool)

(assert (=> b!6488861 (=> (not res!2664968) (not e!3932571))))

(assert (=> b!6488861 (= res!2664968 call!561686)))

(assert (= (and d!2035755 (not res!2664971)) b!6488854))

(assert (= (and b!6488854 c!1189002) b!6488860))

(assert (= (and b!6488854 (not c!1189002)) b!6488858))

(assert (= (and b!6488860 res!2664969) b!6488859))

(assert (= (and b!6488858 c!1189003) b!6488857))

(assert (= (and b!6488858 (not c!1189003)) b!6488855))

(assert (= (and b!6488857 res!2664970) b!6488856))

(assert (= (and b!6488855 (not res!2664972)) b!6488861))

(assert (= (and b!6488861 res!2664968) b!6488853))

(assert (= (or b!6488856 b!6488853) bm!561681))

(assert (= (or b!6488857 b!6488861) bm!561679))

(assert (= (or b!6488859 bm!561681) bm!561680))

(declare-fun m!7277486 () Bool)

(assert (=> bm!561679 m!7277486))

(declare-fun m!7277488 () Bool)

(assert (=> bm!561680 m!7277488))

(declare-fun m!7277490 () Bool)

(assert (=> b!6488860 m!7277490))

(assert (=> d!2035183 d!2035755))

(declare-fun d!2035757 () Bool)

(declare-fun res!2664973 () Bool)

(declare-fun e!3932577 () Bool)

(assert (=> d!2035757 (=> res!2664973 e!3932577)))

(assert (=> d!2035757 (= res!2664973 ((_ is Nil!65277) (unfocusZipperList!1788 zl!343)))))

(assert (=> d!2035757 (= (forall!15550 (unfocusZipperList!1788 zl!343) lambda!359225) e!3932577)))

(declare-fun b!6488862 () Bool)

(declare-fun e!3932578 () Bool)

(assert (=> b!6488862 (= e!3932577 e!3932578)))

(declare-fun res!2664974 () Bool)

(assert (=> b!6488862 (=> (not res!2664974) (not e!3932578))))

(assert (=> b!6488862 (= res!2664974 (dynLambda!25928 lambda!359225 (h!71725 (unfocusZipperList!1788 zl!343))))))

(declare-fun b!6488863 () Bool)

(assert (=> b!6488863 (= e!3932578 (forall!15550 (t!379027 (unfocusZipperList!1788 zl!343)) lambda!359225))))

(assert (= (and d!2035757 (not res!2664973)) b!6488862))

(assert (= (and b!6488862 res!2664974) b!6488863))

(declare-fun b_lambda!245657 () Bool)

(assert (=> (not b_lambda!245657) (not b!6488862)))

(declare-fun m!7277492 () Bool)

(assert (=> b!6488862 m!7277492))

(declare-fun m!7277494 () Bool)

(assert (=> b!6488863 m!7277494))

(assert (=> d!2035183 d!2035757))

(assert (=> b!6487395 d!2035393))

(assert (=> b!6487498 d!2035399))

(assert (=> bs!1646021 d!2035019))

(declare-fun b!6488864 () Bool)

(declare-fun res!2664979 () Bool)

(declare-fun e!3932579 () Bool)

(assert (=> b!6488864 (=> res!2664979 e!3932579)))

(assert (=> b!6488864 (= res!2664979 (not (isEmpty!37468 (tail!12294 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858))))))))

(declare-fun b!6488866 () Bool)

(declare-fun e!3932584 () Bool)

(assert (=> b!6488866 (= e!3932584 (= (head!13209 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858))) (c!1188383 (Star!16367 (reg!16696 (regOne!33246 r!7292))))))))

(declare-fun b!6488867 () Bool)

(declare-fun res!2664976 () Bool)

(declare-fun e!3932581 () Bool)

(assert (=> b!6488867 (=> res!2664976 e!3932581)))

(assert (=> b!6488867 (= res!2664976 e!3932584)))

(declare-fun res!2664977 () Bool)

(assert (=> b!6488867 (=> (not res!2664977) (not e!3932584))))

(declare-fun lt!2389215 () Bool)

(assert (=> b!6488867 (= res!2664977 lt!2389215)))

(declare-fun b!6488868 () Bool)

(declare-fun e!3932585 () Bool)

(assert (=> b!6488868 (= e!3932585 e!3932579)))

(declare-fun res!2664982 () Bool)

(assert (=> b!6488868 (=> res!2664982 e!3932579)))

(declare-fun call!561687 () Bool)

(assert (=> b!6488868 (= res!2664982 call!561687)))

(declare-fun b!6488869 () Bool)

(declare-fun res!2664980 () Bool)

(assert (=> b!6488869 (=> res!2664980 e!3932581)))

(assert (=> b!6488869 (= res!2664980 (not ((_ is ElementMatch!16367) (Star!16367 (reg!16696 (regOne!33246 r!7292))))))))

(declare-fun e!3932580 () Bool)

(assert (=> b!6488869 (= e!3932580 e!3932581)))

(declare-fun bm!561682 () Bool)

(assert (=> bm!561682 (= call!561687 (isEmpty!37468 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858))))))

(declare-fun b!6488870 () Bool)

(assert (=> b!6488870 (= e!3932581 e!3932585)))

(declare-fun res!2664978 () Bool)

(assert (=> b!6488870 (=> (not res!2664978) (not e!3932585))))

(assert (=> b!6488870 (= res!2664978 (not lt!2389215))))

(declare-fun b!6488871 () Bool)

(declare-fun e!3932582 () Bool)

(assert (=> b!6488871 (= e!3932582 e!3932580)))

(declare-fun c!1189006 () Bool)

(assert (=> b!6488871 (= c!1189006 ((_ is EmptyLang!16367) (Star!16367 (reg!16696 (regOne!33246 r!7292)))))))

(declare-fun b!6488872 () Bool)

(declare-fun res!2664981 () Bool)

(assert (=> b!6488872 (=> (not res!2664981) (not e!3932584))))

(assert (=> b!6488872 (= res!2664981 (isEmpty!37468 (tail!12294 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858)))))))

(declare-fun b!6488873 () Bool)

(declare-fun e!3932583 () Bool)

(assert (=> b!6488873 (= e!3932583 (nullable!6360 (Star!16367 (reg!16696 (regOne!33246 r!7292)))))))

(declare-fun b!6488874 () Bool)

(assert (=> b!6488874 (= e!3932582 (= lt!2389215 call!561687))))

(declare-fun b!6488875 () Bool)

(declare-fun res!2664975 () Bool)

(assert (=> b!6488875 (=> (not res!2664975) (not e!3932584))))

(assert (=> b!6488875 (= res!2664975 (not call!561687))))

(declare-fun b!6488876 () Bool)

(assert (=> b!6488876 (= e!3932580 (not lt!2389215))))

(declare-fun b!6488877 () Bool)

(assert (=> b!6488877 (= e!3932579 (not (= (head!13209 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858))) (c!1188383 (Star!16367 (reg!16696 (regOne!33246 r!7292)))))))))

(declare-fun d!2035759 () Bool)

(assert (=> d!2035759 e!3932582))

(declare-fun c!1189005 () Bool)

(assert (=> d!2035759 (= c!1189005 ((_ is EmptyExpr!16367) (Star!16367 (reg!16696 (regOne!33246 r!7292)))))))

(assert (=> d!2035759 (= lt!2389215 e!3932583)))

(declare-fun c!1189004 () Bool)

(assert (=> d!2035759 (= c!1189004 (isEmpty!37468 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858))))))

(assert (=> d!2035759 (validRegex!8103 (Star!16367 (reg!16696 (regOne!33246 r!7292))))))

(assert (=> d!2035759 (= (matchR!8550 (Star!16367 (reg!16696 (regOne!33246 r!7292))) (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858))) lt!2389215)))

(declare-fun b!6488865 () Bool)

(assert (=> b!6488865 (= e!3932583 (matchR!8550 (derivativeStep!5063 (Star!16367 (reg!16696 (regOne!33246 r!7292))) (head!13209 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858)))) (tail!12294 (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858)))))))

(assert (= (and d!2035759 c!1189004) b!6488873))

(assert (= (and d!2035759 (not c!1189004)) b!6488865))

(assert (= (and d!2035759 c!1189005) b!6488874))

(assert (= (and d!2035759 (not c!1189005)) b!6488871))

(assert (= (and b!6488871 c!1189006) b!6488876))

(assert (= (and b!6488871 (not c!1189006)) b!6488869))

(assert (= (and b!6488869 (not res!2664980)) b!6488867))

(assert (= (and b!6488867 res!2664977) b!6488875))

(assert (= (and b!6488875 res!2664975) b!6488872))

(assert (= (and b!6488872 res!2664981) b!6488866))

(assert (= (and b!6488867 (not res!2664976)) b!6488870))

(assert (= (and b!6488870 res!2664978) b!6488868))

(assert (= (and b!6488868 (not res!2664982)) b!6488864))

(assert (= (and b!6488864 (not res!2664979)) b!6488877))

(assert (= (or b!6488874 b!6488868 b!6488875) bm!561682))

(assert (=> b!6488864 m!7275018))

(declare-fun m!7277496 () Bool)

(assert (=> b!6488864 m!7277496))

(assert (=> b!6488864 m!7277496))

(declare-fun m!7277498 () Bool)

(assert (=> b!6488864 m!7277498))

(declare-fun m!7277500 () Bool)

(assert (=> b!6488873 m!7277500))

(assert (=> d!2035759 m!7275018))

(declare-fun m!7277502 () Bool)

(assert (=> d!2035759 m!7277502))

(assert (=> d!2035759 m!7275940))

(assert (=> b!6488872 m!7275018))

(assert (=> b!6488872 m!7277496))

(assert (=> b!6488872 m!7277496))

(assert (=> b!6488872 m!7277498))

(assert (=> b!6488877 m!7275018))

(declare-fun m!7277504 () Bool)

(assert (=> b!6488877 m!7277504))

(assert (=> b!6488866 m!7275018))

(assert (=> b!6488866 m!7277504))

(assert (=> b!6488865 m!7275018))

(assert (=> b!6488865 m!7277504))

(assert (=> b!6488865 m!7277504))

(declare-fun m!7277506 () Bool)

(assert (=> b!6488865 m!7277506))

(assert (=> b!6488865 m!7275018))

(assert (=> b!6488865 m!7277496))

(assert (=> b!6488865 m!7277506))

(assert (=> b!6488865 m!7277496))

(declare-fun m!7277508 () Bool)

(assert (=> b!6488865 m!7277508))

(assert (=> bm!561682 m!7275018))

(assert (=> bm!561682 m!7277502))

(assert (=> d!2035069 d!2035759))

(assert (=> d!2035069 d!2035141))

(declare-fun d!2035761 () Bool)

(assert (=> d!2035761 (matchR!8550 (Star!16367 (reg!16696 (regOne!33246 r!7292))) (++!14444 (_1!36649 lt!2388858) (_2!36649 lt!2388858)))))

(assert (=> d!2035761 true))

(declare-fun _$125!336 () Unit!158799)

(assert (=> d!2035761 (= (choose!48158 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388858) (_2!36649 lt!2388858)) _$125!336)))

(declare-fun bs!1646531 () Bool)

(assert (= bs!1646531 d!2035761))

(assert (=> bs!1646531 m!7275018))

(assert (=> bs!1646531 m!7275018))

(assert (=> bs!1646531 m!7275936))

(assert (=> d!2035069 d!2035761))

(declare-fun b!6488878 () Bool)

(declare-fun e!3932587 () Bool)

(declare-fun call!561689 () Bool)

(assert (=> b!6488878 (= e!3932587 call!561689)))

(declare-fun b!6488879 () Bool)

(declare-fun e!3932590 () Bool)

(declare-fun e!3932586 () Bool)

(assert (=> b!6488879 (= e!3932590 e!3932586)))

(declare-fun c!1189007 () Bool)

(assert (=> b!6488879 (= c!1189007 ((_ is Star!16367) (Star!16367 (reg!16696 (regOne!33246 r!7292)))))))

(declare-fun d!2035763 () Bool)

(declare-fun res!2664986 () Bool)

(assert (=> d!2035763 (=> res!2664986 e!3932590)))

(assert (=> d!2035763 (= res!2664986 ((_ is ElementMatch!16367) (Star!16367 (reg!16696 (regOne!33246 r!7292)))))))

(assert (=> d!2035763 (= (validRegex!8103 (Star!16367 (reg!16696 (regOne!33246 r!7292)))) e!3932590)))

(declare-fun bm!561683 () Bool)

(declare-fun call!561690 () Bool)

(declare-fun c!1189008 () Bool)

(assert (=> bm!561683 (= call!561690 (validRegex!8103 (ite c!1189008 (regOne!33247 (Star!16367 (reg!16696 (regOne!33246 r!7292)))) (regOne!33246 (Star!16367 (reg!16696 (regOne!33246 r!7292)))))))))

(declare-fun b!6488880 () Bool)

(declare-fun res!2664987 () Bool)

(declare-fun e!3932589 () Bool)

(assert (=> b!6488880 (=> res!2664987 e!3932589)))

(assert (=> b!6488880 (= res!2664987 (not ((_ is Concat!25212) (Star!16367 (reg!16696 (regOne!33246 r!7292))))))))

(declare-fun e!3932588 () Bool)

(assert (=> b!6488880 (= e!3932588 e!3932589)))

(declare-fun b!6488881 () Bool)

(declare-fun e!3932591 () Bool)

(assert (=> b!6488881 (= e!3932591 call!561689)))

(declare-fun call!561688 () Bool)

(declare-fun bm!561684 () Bool)

(assert (=> bm!561684 (= call!561688 (validRegex!8103 (ite c!1189007 (reg!16696 (Star!16367 (reg!16696 (regOne!33246 r!7292)))) (ite c!1189008 (regTwo!33247 (Star!16367 (reg!16696 (regOne!33246 r!7292)))) (regTwo!33246 (Star!16367 (reg!16696 (regOne!33246 r!7292))))))))))

(declare-fun b!6488882 () Bool)

(declare-fun res!2664985 () Bool)

(assert (=> b!6488882 (=> (not res!2664985) (not e!3932591))))

(assert (=> b!6488882 (= res!2664985 call!561690)))

(assert (=> b!6488882 (= e!3932588 e!3932591)))

(declare-fun b!6488883 () Bool)

(assert (=> b!6488883 (= e!3932586 e!3932588)))

(assert (=> b!6488883 (= c!1189008 ((_ is Union!16367) (Star!16367 (reg!16696 (regOne!33246 r!7292)))))))

(declare-fun bm!561685 () Bool)

(assert (=> bm!561685 (= call!561689 call!561688)))

(declare-fun b!6488884 () Bool)

(declare-fun e!3932592 () Bool)

(assert (=> b!6488884 (= e!3932592 call!561688)))

(declare-fun b!6488885 () Bool)

(assert (=> b!6488885 (= e!3932586 e!3932592)))

(declare-fun res!2664984 () Bool)

(assert (=> b!6488885 (= res!2664984 (not (nullable!6360 (reg!16696 (Star!16367 (reg!16696 (regOne!33246 r!7292)))))))))

(assert (=> b!6488885 (=> (not res!2664984) (not e!3932592))))

(declare-fun b!6488886 () Bool)

(assert (=> b!6488886 (= e!3932589 e!3932587)))

(declare-fun res!2664983 () Bool)

(assert (=> b!6488886 (=> (not res!2664983) (not e!3932587))))

(assert (=> b!6488886 (= res!2664983 call!561690)))

(assert (= (and d!2035763 (not res!2664986)) b!6488879))

(assert (= (and b!6488879 c!1189007) b!6488885))

(assert (= (and b!6488879 (not c!1189007)) b!6488883))

(assert (= (and b!6488885 res!2664984) b!6488884))

(assert (= (and b!6488883 c!1189008) b!6488882))

(assert (= (and b!6488883 (not c!1189008)) b!6488880))

(assert (= (and b!6488882 res!2664985) b!6488881))

(assert (= (and b!6488880 (not res!2664987)) b!6488886))

(assert (= (and b!6488886 res!2664983) b!6488878))

(assert (= (or b!6488881 b!6488878) bm!561685))

(assert (= (or b!6488882 b!6488886) bm!561683))

(assert (= (or b!6488884 bm!561685) bm!561684))

(declare-fun m!7277514 () Bool)

(assert (=> bm!561683 m!7277514))

(declare-fun m!7277516 () Bool)

(assert (=> bm!561684 m!7277516))

(declare-fun m!7277518 () Bool)

(assert (=> b!6488885 m!7277518))

(assert (=> d!2035069 d!2035763))

(declare-fun b!6488896 () Bool)

(declare-fun e!3932600 () (InoxSet Context!11502))

(declare-fun call!561698 () (InoxSet Context!11502))

(declare-fun call!561697 () (InoxSet Context!11502))

(assert (=> b!6488896 (= e!3932600 ((_ map or) call!561698 call!561697))))

(declare-fun b!6488897 () Bool)

(declare-fun e!3932604 () (InoxSet Context!11502))

(declare-fun call!561695 () (InoxSet Context!11502))

(assert (=> b!6488897 (= e!3932604 ((_ map or) call!561697 call!561695))))

(declare-fun bm!561689 () Bool)

(declare-fun call!561696 () (InoxSet Context!11502))

(assert (=> bm!561689 (= call!561696 call!561695)))

(declare-fun b!6488898 () Bool)

(declare-fun e!3932605 () (InoxSet Context!11502))

(assert (=> b!6488898 (= e!3932604 e!3932605)))

(declare-fun c!1189011 () Bool)

(assert (=> b!6488898 (= c!1189011 ((_ is Concat!25212) (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun b!6488899 () Bool)

(declare-fun e!3932603 () (InoxSet Context!11502))

(assert (=> b!6488899 (= e!3932603 (store ((as const (Array Context!11502 Bool)) false) (Context!11503 (t!379027 (exprs!6251 (h!71726 zl!343)))) true))))

(declare-fun b!6488900 () Bool)

(declare-fun e!3932602 () Bool)

(assert (=> b!6488900 (= e!3932602 (nullable!6360 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343))))))))

(declare-fun c!1189012 () Bool)

(declare-fun bm!561690 () Bool)

(declare-fun call!561694 () List!65401)

(assert (=> bm!561690 (= call!561697 (derivationStepZipperDown!1615 (ite c!1189012 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343))))) (ite c!1189012 (Context!11503 (t!379027 (exprs!6251 (h!71726 zl!343)))) (Context!11503 call!561694)) (h!71724 s!2326)))))

(declare-fun bm!561691 () Bool)

(declare-fun c!1189015 () Bool)

(declare-fun call!561699 () List!65401)

(assert (=> bm!561691 (= call!561698 (derivationStepZipperDown!1615 (ite c!1189012 (regOne!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1189015 (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (ite c!1189011 (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (reg!16696 (h!71725 (exprs!6251 (h!71726 zl!343))))))) (ite (or c!1189012 c!1189015) (Context!11503 (t!379027 (exprs!6251 (h!71726 zl!343)))) (Context!11503 call!561699)) (h!71724 s!2326)))))

(declare-fun bm!561692 () Bool)

(assert (=> bm!561692 (= call!561699 call!561694)))

(declare-fun b!6488901 () Bool)

(declare-fun e!3932601 () (InoxSet Context!11502))

(assert (=> b!6488901 (= e!3932601 call!561696)))

(declare-fun b!6488902 () Bool)

(assert (=> b!6488902 (= e!3932605 call!561696)))

(declare-fun b!6488903 () Bool)

(assert (=> b!6488903 (= e!3932601 ((as const (Array Context!11502 Bool)) false))))

(declare-fun bm!561693 () Bool)

(assert (=> bm!561693 (= call!561694 ($colon$colon!2219 (exprs!6251 (Context!11503 (t!379027 (exprs!6251 (h!71726 zl!343))))) (ite (or c!1189015 c!1189011) (regTwo!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))) (h!71725 (exprs!6251 (h!71726 zl!343))))))))

(declare-fun b!6488904 () Bool)

(assert (=> b!6488904 (= c!1189015 e!3932602)))

(declare-fun res!2664993 () Bool)

(assert (=> b!6488904 (=> (not res!2664993) (not e!3932602))))

(assert (=> b!6488904 (= res!2664993 ((_ is Concat!25212) (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(assert (=> b!6488904 (= e!3932600 e!3932604)))

(declare-fun b!6488905 () Bool)

(declare-fun c!1189013 () Bool)

(assert (=> b!6488905 (= c!1189013 ((_ is Star!16367) (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(assert (=> b!6488905 (= e!3932605 e!3932601)))

(declare-fun bm!561694 () Bool)

(assert (=> bm!561694 (= call!561695 call!561698)))

(declare-fun b!6488906 () Bool)

(assert (=> b!6488906 (= e!3932603 e!3932600)))

(assert (=> b!6488906 (= c!1189012 ((_ is Union!16367) (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun d!2035767 () Bool)

(declare-fun c!1189014 () Bool)

(assert (=> d!2035767 (= c!1189014 (and ((_ is ElementMatch!16367) (h!71725 (exprs!6251 (h!71726 zl!343)))) (= (c!1188383 (h!71725 (exprs!6251 (h!71726 zl!343)))) (h!71724 s!2326))))))

(assert (=> d!2035767 (= (derivationStepZipperDown!1615 (h!71725 (exprs!6251 (h!71726 zl!343))) (Context!11503 (t!379027 (exprs!6251 (h!71726 zl!343)))) (h!71724 s!2326)) e!3932603)))

(assert (= (and d!2035767 c!1189014) b!6488899))

(assert (= (and d!2035767 (not c!1189014)) b!6488906))

(assert (= (and b!6488906 c!1189012) b!6488896))

(assert (= (and b!6488906 (not c!1189012)) b!6488904))

(assert (= (and b!6488904 res!2664993) b!6488900))

(assert (= (and b!6488904 c!1189015) b!6488897))

(assert (= (and b!6488904 (not c!1189015)) b!6488898))

(assert (= (and b!6488898 c!1189011) b!6488902))

(assert (= (and b!6488898 (not c!1189011)) b!6488905))

(assert (= (and b!6488905 c!1189013) b!6488901))

(assert (= (and b!6488905 (not c!1189013)) b!6488903))

(assert (= (or b!6488902 b!6488901) bm!561692))

(assert (= (or b!6488902 b!6488901) bm!561689))

(assert (= (or b!6488897 bm!561692) bm!561693))

(assert (= (or b!6488897 bm!561689) bm!561694))

(assert (= (or b!6488896 b!6488897) bm!561690))

(assert (= (or b!6488896 bm!561694) bm!561691))

(declare-fun m!7277532 () Bool)

(assert (=> bm!561693 m!7277532))

(declare-fun m!7277534 () Bool)

(assert (=> bm!561690 m!7277534))

(assert (=> b!6488900 m!7275730))

(declare-fun m!7277536 () Bool)

(assert (=> b!6488899 m!7277536))

(declare-fun m!7277538 () Bool)

(assert (=> bm!561691 m!7277538))

(assert (=> bm!561428 d!2035767))

(assert (=> b!6487659 d!2035187))

(declare-fun bs!1646532 () Bool)

(declare-fun d!2035777 () Bool)

(assert (= bs!1646532 (and d!2035777 d!2035567)))

(declare-fun lambda!359289 () Int)

(assert (=> bs!1646532 (= lambda!359289 lambda!359258)))

(declare-fun bs!1646533 () Bool)

(assert (= bs!1646533 (and d!2035777 d!2035425)))

(assert (=> bs!1646533 (= lambda!359289 lambda!359245)))

(declare-fun bs!1646534 () Bool)

(assert (= bs!1646534 (and d!2035777 d!2035435)))

(assert (=> bs!1646534 (= lambda!359289 lambda!359246)))

(declare-fun bs!1646535 () Bool)

(assert (= bs!1646535 (and d!2035777 d!2035423)))

(assert (=> bs!1646535 (= lambda!359289 lambda!359244)))

(declare-fun bs!1646536 () Bool)

(assert (= bs!1646536 (and d!2035777 d!2035653)))

(assert (=> bs!1646536 (= lambda!359289 lambda!359267)))

(declare-fun bs!1646537 () Bool)

(assert (= bs!1646537 (and d!2035777 d!2035511)))

(assert (=> bs!1646537 (= lambda!359289 lambda!359256)))

(assert (=> d!2035777 (= (nullableZipper!2124 ((_ map or) lt!2388893 lt!2388867)) (exists!2617 ((_ map or) lt!2388893 lt!2388867) lambda!359289))))

(declare-fun bs!1646538 () Bool)

(assert (= bs!1646538 d!2035777))

(declare-fun m!7277540 () Bool)

(assert (=> bs!1646538 m!7277540))

(assert (=> b!6487738 d!2035777))

(declare-fun b!6488912 () Bool)

(declare-fun e!3932609 () (InoxSet Context!11502))

(declare-fun call!561705 () (InoxSet Context!11502))

(declare-fun call!561704 () (InoxSet Context!11502))

(assert (=> b!6488912 (= e!3932609 ((_ map or) call!561705 call!561704))))

(declare-fun b!6488913 () Bool)

(declare-fun e!3932613 () (InoxSet Context!11502))

(declare-fun call!561702 () (InoxSet Context!11502))

(assert (=> b!6488913 (= e!3932613 ((_ map or) call!561704 call!561702))))

(declare-fun bm!561696 () Bool)

(declare-fun call!561703 () (InoxSet Context!11502))

(assert (=> bm!561696 (= call!561703 call!561702)))

(declare-fun b!6488914 () Bool)

(declare-fun e!3932614 () (InoxSet Context!11502))

(assert (=> b!6488914 (= e!3932613 e!3932614)))

(declare-fun c!1189018 () Bool)

(assert (=> b!6488914 (= c!1189018 ((_ is Concat!25212) (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))))))))

(declare-fun b!6488915 () Bool)

(declare-fun e!3932612 () (InoxSet Context!11502))

(assert (=> b!6488915 (= e!3932612 (store ((as const (Array Context!11502 Bool)) false) (ite c!1188549 lt!2388870 (Context!11503 call!561451)) true))))

(declare-fun b!6488916 () Bool)

(declare-fun e!3932611 () Bool)

(assert (=> b!6488916 (= e!3932611 (nullable!6360 (regOne!33246 (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343))))))))))

(declare-fun c!1189019 () Bool)

(declare-fun call!561701 () List!65401)

(declare-fun bm!561697 () Bool)

(assert (=> bm!561697 (= call!561704 (derivationStepZipperDown!1615 (ite c!1189019 (regTwo!33247 (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))))) (regOne!33246 (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343))))))) (ite c!1189019 (ite c!1188549 lt!2388870 (Context!11503 call!561451)) (Context!11503 call!561701)) (h!71724 s!2326)))))

(declare-fun call!561706 () List!65401)

(declare-fun c!1189022 () Bool)

(declare-fun bm!561698 () Bool)

(assert (=> bm!561698 (= call!561705 (derivationStepZipperDown!1615 (ite c!1189019 (regOne!33247 (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))))) (ite c!1189022 (regTwo!33246 (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))))) (ite c!1189018 (regOne!33246 (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))))) (reg!16696 (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343))))))))) (ite (or c!1189019 c!1189022) (ite c!1188549 lt!2388870 (Context!11503 call!561451)) (Context!11503 call!561706)) (h!71724 s!2326)))))

(declare-fun bm!561699 () Bool)

(assert (=> bm!561699 (= call!561706 call!561701)))

(declare-fun b!6488917 () Bool)

(declare-fun e!3932610 () (InoxSet Context!11502))

(assert (=> b!6488917 (= e!3932610 call!561703)))

(declare-fun b!6488918 () Bool)

(assert (=> b!6488918 (= e!3932614 call!561703)))

(declare-fun b!6488919 () Bool)

(assert (=> b!6488919 (= e!3932610 ((as const (Array Context!11502 Bool)) false))))

(declare-fun bm!561700 () Bool)

(assert (=> bm!561700 (= call!561701 ($colon$colon!2219 (exprs!6251 (ite c!1188549 lt!2388870 (Context!11503 call!561451))) (ite (or c!1189022 c!1189018) (regTwo!33246 (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))))) (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343))))))))))

(declare-fun b!6488920 () Bool)

(assert (=> b!6488920 (= c!1189022 e!3932611)))

(declare-fun res!2664995 () Bool)

(assert (=> b!6488920 (=> (not res!2664995) (not e!3932611))))

(assert (=> b!6488920 (= res!2664995 ((_ is Concat!25212) (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))))))))

(assert (=> b!6488920 (= e!3932609 e!3932613)))

(declare-fun b!6488921 () Bool)

(declare-fun c!1189020 () Bool)

(assert (=> b!6488921 (= c!1189020 ((_ is Star!16367) (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))))))))

(assert (=> b!6488921 (= e!3932614 e!3932610)))

(declare-fun bm!561701 () Bool)

(assert (=> bm!561701 (= call!561702 call!561705)))

(declare-fun b!6488922 () Bool)

(assert (=> b!6488922 (= e!3932612 e!3932609)))

(assert (=> b!6488922 (= c!1189019 ((_ is Union!16367) (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))))))))

(declare-fun c!1189021 () Bool)

(declare-fun d!2035779 () Bool)

(assert (=> d!2035779 (= c!1189021 (and ((_ is ElementMatch!16367) (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))))) (= (c!1188383 (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343)))))) (h!71724 s!2326))))))

(assert (=> d!2035779 (= (derivationStepZipperDown!1615 (ite c!1188549 (regTwo!33247 (h!71725 (exprs!6251 (h!71726 zl!343)))) (regOne!33246 (h!71725 (exprs!6251 (h!71726 zl!343))))) (ite c!1188549 lt!2388870 (Context!11503 call!561451)) (h!71724 s!2326)) e!3932612)))

(assert (= (and d!2035779 c!1189021) b!6488915))

(assert (= (and d!2035779 (not c!1189021)) b!6488922))

(assert (= (and b!6488922 c!1189019) b!6488912))

(assert (= (and b!6488922 (not c!1189019)) b!6488920))

(assert (= (and b!6488920 res!2664995) b!6488916))

(assert (= (and b!6488920 c!1189022) b!6488913))

(assert (= (and b!6488920 (not c!1189022)) b!6488914))

(assert (= (and b!6488914 c!1189018) b!6488918))

(assert (= (and b!6488914 (not c!1189018)) b!6488921))

(assert (= (and b!6488921 c!1189020) b!6488917))

(assert (= (and b!6488921 (not c!1189020)) b!6488919))

(assert (= (or b!6488918 b!6488917) bm!561699))

(assert (= (or b!6488918 b!6488917) bm!561696))

(assert (= (or b!6488913 bm!561699) bm!561700))

(assert (= (or b!6488913 bm!561696) bm!561701))

(assert (= (or b!6488912 b!6488913) bm!561697))

(assert (= (or b!6488912 bm!561701) bm!561698))

(declare-fun m!7277542 () Bool)

(assert (=> bm!561700 m!7277542))

(declare-fun m!7277544 () Bool)

(assert (=> bm!561697 m!7277544))

(declare-fun m!7277546 () Bool)

(assert (=> b!6488916 m!7277546))

(declare-fun m!7277548 () Bool)

(assert (=> b!6488915 m!7277548))

(declare-fun m!7277550 () Bool)

(assert (=> bm!561698 m!7277550))

(assert (=> bm!561447 d!2035779))

(assert (=> bm!561486 d!2035299))

(assert (=> d!2035115 d!2035113))

(assert (=> d!2035115 d!2035111))

(declare-fun d!2035781 () Bool)

(assert (=> d!2035781 (= (matchR!8550 r!7292 s!2326) (matchRSpec!3468 r!7292 s!2326))))

(assert (=> d!2035781 true))

(declare-fun _$88!5176 () Unit!158799)

(assert (=> d!2035781 (= (choose!48162 r!7292 s!2326) _$88!5176)))

(declare-fun bs!1646539 () Bool)

(assert (= bs!1646539 d!2035781))

(assert (=> bs!1646539 m!7275002))

(assert (=> bs!1646539 m!7275000))

(assert (=> d!2035115 d!2035781))

(assert (=> d!2035115 d!2035047))

(assert (=> bm!561484 d!2035637))

(assert (=> d!2035135 d!2035253))

(assert (=> d!2035135 d!2035133))

(declare-fun bs!1646540 () Bool)

(declare-fun d!2035783 () Bool)

(assert (= bs!1646540 (and d!2035783 d!2035573)))

(declare-fun lambda!359290 () Int)

(assert (=> bs!1646540 (= lambda!359290 lambda!359259)))

(declare-fun bs!1646541 () Bool)

(assert (= bs!1646541 (and d!2035783 d!2035151)))

(assert (=> bs!1646541 (not (= lambda!359290 lambda!359216))))

(declare-fun bs!1646542 () Bool)

(assert (= bs!1646542 (and d!2035783 b!6487593)))

(assert (=> bs!1646542 (not (= lambda!359290 lambda!359195))))

(declare-fun bs!1646543 () Bool)

(assert (= bs!1646543 (and d!2035783 d!2035675)))

(assert (=> bs!1646543 (not (= lambda!359290 lambda!359270))))

(declare-fun bs!1646544 () Bool)

(assert (= bs!1646544 (and d!2035783 b!6486656)))

(assert (=> bs!1646544 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359290 lambda!359121))))

(declare-fun bs!1646545 () Bool)

(assert (= bs!1646545 (and d!2035783 b!6487561)))

(assert (=> bs!1646545 (not (= lambda!359290 lambda!359189))))

(declare-fun bs!1646546 () Bool)

(assert (= bs!1646546 (and d!2035783 b!6486655)))

(assert (=> bs!1646546 (not (= lambda!359290 lambda!359119))))

(declare-fun bs!1646547 () Bool)

(assert (= bs!1646547 (and d!2035783 d!2035135)))

(assert (=> bs!1646547 (= lambda!359290 lambda!359207)))

(declare-fun bs!1646548 () Bool)

(assert (= bs!1646548 (and d!2035783 d!2035129)))

(assert (=> bs!1646548 (= lambda!359290 lambda!359201)))

(assert (=> bs!1646540 (not (= lambda!359290 lambda!359260))))

(declare-fun bs!1646549 () Bool)

(assert (= bs!1646549 (and d!2035783 b!6487626)))

(assert (=> bs!1646549 (not (= lambda!359290 lambda!359203))))

(declare-fun bs!1646550 () Bool)

(assert (= bs!1646550 (and d!2035783 d!2035139)))

(assert (=> bs!1646550 (= (= lt!2388865 (Star!16367 (reg!16696 (regOne!33246 r!7292)))) (= lambda!359290 lambda!359212))))

(declare-fun bs!1646551 () Bool)

(assert (= bs!1646551 (and d!2035783 b!6488783)))

(assert (=> bs!1646551 (not (= lambda!359290 lambda!359280))))

(assert (=> bs!1646548 (not (= lambda!359290 lambda!359202))))

(declare-fun bs!1646552 () Bool)

(assert (= bs!1646552 (and d!2035783 b!6486638)))

(assert (=> bs!1646552 (= lambda!359290 lambda!359123)))

(declare-fun bs!1646553 () Bool)

(assert (= bs!1646553 (and d!2035783 d!2035165)))

(assert (=> bs!1646553 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359290 lambda!359218))))

(declare-fun bs!1646554 () Bool)

(assert (= bs!1646554 (and d!2035783 d!2035221)))

(assert (=> bs!1646554 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359290 lambda!359231))))

(declare-fun bs!1646555 () Bool)

(assert (= bs!1646555 (and d!2035783 b!6487565)))

(assert (=> bs!1646555 (not (= lambda!359290 lambda!359190))))

(assert (=> bs!1646546 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359290 lambda!359118))))

(assert (=> bs!1646543 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359290 lambda!359269))))

(assert (=> bs!1646552 (not (= lambda!359290 lambda!359124))))

(declare-fun bs!1646556 () Bool)

(assert (= bs!1646556 (and d!2035783 d!2035387)))

(assert (=> bs!1646556 (not (= lambda!359290 lambda!359241))))

(assert (=> bs!1646552 (not (= lambda!359290 lambda!359125))))

(assert (=> bs!1646550 (not (= lambda!359290 lambda!359213))))

(declare-fun bs!1646557 () Bool)

(assert (= bs!1646557 (and d!2035783 b!6488777)))

(assert (=> bs!1646557 (not (= lambda!359290 lambda!359279))))

(declare-fun bs!1646558 () Bool)

(assert (= bs!1646558 (and d!2035783 b!6488119)))

(assert (=> bs!1646558 (not (= lambda!359290 lambda!359234))))

(declare-fun bs!1646559 () Bool)

(assert (= bs!1646559 (and d!2035783 d!2035145)))

(assert (=> bs!1646559 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359290 lambda!359214))))

(assert (=> bs!1646541 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359290 lambda!359215))))

(declare-fun bs!1646560 () Bool)

(assert (= bs!1646560 (and d!2035783 b!6488303)))

(assert (=> bs!1646560 (not (= lambda!359290 lambda!359248))))

(assert (=> bs!1646544 (not (= lambda!359290 lambda!359122))))

(assert (=> bs!1646556 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359290 lambda!359240))))

(declare-fun bs!1646561 () Bool)

(assert (= bs!1646561 (and d!2035783 b!6488115)))

(assert (=> bs!1646561 (not (= lambda!359290 lambda!359233))))

(assert (=> bs!1646553 (not (= lambda!359290 lambda!359219))))

(declare-fun bs!1646562 () Bool)

(assert (= bs!1646562 (and d!2035783 b!6488299)))

(assert (=> bs!1646562 (not (= lambda!359290 lambda!359247))))

(declare-fun bs!1646563 () Bool)

(assert (= bs!1646563 (and d!2035783 d!2035161)))

(assert (=> bs!1646563 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359290 lambda!359217))))

(declare-fun bs!1646564 () Bool)

(assert (= bs!1646564 (and d!2035783 b!6487597)))

(assert (=> bs!1646564 (not (= lambda!359290 lambda!359196))))

(declare-fun bs!1646565 () Bool)

(assert (= bs!1646565 (and d!2035783 d!2035737)))

(assert (=> bs!1646565 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= lt!2388865 (regTwo!33246 r!7292))) (= lambda!359290 lambda!359281))))

(declare-fun bs!1646566 () Bool)

(assert (= bs!1646566 (and d!2035783 b!6487630)))

(assert (=> bs!1646566 (not (= lambda!359290 lambda!359204))))

(assert (=> d!2035783 true))

(assert (=> d!2035783 true))

(assert (=> d!2035783 true))

(assert (=> d!2035783 (= (isDefined!12961 (findConcatSeparation!2672 (reg!16696 (regOne!33246 r!7292)) lt!2388865 Nil!65276 (_1!36649 lt!2388900) (_1!36649 lt!2388900))) (Exists!3437 lambda!359290))))

(assert (=> d!2035783 true))

(declare-fun _$89!2722 () Unit!158799)

(assert (=> d!2035783 (= (choose!48166 (reg!16696 (regOne!33246 r!7292)) lt!2388865 (_1!36649 lt!2388900)) _$89!2722)))

(declare-fun bs!1646567 () Bool)

(assert (= bs!1646567 d!2035783))

(assert (=> bs!1646567 m!7275032))

(assert (=> bs!1646567 m!7275032))

(assert (=> bs!1646567 m!7276116))

(declare-fun m!7277562 () Bool)

(assert (=> bs!1646567 m!7277562))

(assert (=> d!2035135 d!2035783))

(declare-fun d!2035799 () Bool)

(assert (=> d!2035799 (= (Exists!3437 lambda!359207) (choose!48164 lambda!359207))))

(declare-fun bs!1646568 () Bool)

(assert (= bs!1646568 d!2035799))

(declare-fun m!7277566 () Bool)

(assert (=> bs!1646568 m!7277566))

(assert (=> d!2035135 d!2035799))

(declare-fun d!2035805 () Bool)

(assert (=> d!2035805 (= (isDefined!12961 (findConcatSeparation!2672 (reg!16696 (regOne!33246 r!7292)) lt!2388865 Nil!65276 (_1!36649 lt!2388900) (_1!36649 lt!2388900))) (not (isEmpty!37472 (findConcatSeparation!2672 (reg!16696 (regOne!33246 r!7292)) lt!2388865 Nil!65276 (_1!36649 lt!2388900) (_1!36649 lt!2388900)))))))

(declare-fun bs!1646569 () Bool)

(assert (= bs!1646569 d!2035805))

(assert (=> bs!1646569 m!7275032))

(declare-fun m!7277568 () Bool)

(assert (=> bs!1646569 m!7277568))

(assert (=> d!2035135 d!2035805))

(assert (=> b!6487616 d!2035323))

(declare-fun bm!561704 () Bool)

(declare-fun call!561710 () Bool)

(declare-fun c!1189037 () Bool)

(assert (=> bm!561704 (= call!561710 (nullable!6360 (ite c!1189037 (regTwo!33247 (regOne!33246 (regOne!33246 r!7292))) (regTwo!33246 (regOne!33246 (regOne!33246 r!7292))))))))

(declare-fun b!6488957 () Bool)

(declare-fun e!3932635 () Bool)

(assert (=> b!6488957 (= e!3932635 call!561710)))

(declare-fun bm!561705 () Bool)

(declare-fun call!561709 () Bool)

(assert (=> bm!561705 (= call!561709 (nullable!6360 (ite c!1189037 (regOne!33247 (regOne!33246 (regOne!33246 r!7292))) (regOne!33246 (regOne!33246 (regOne!33246 r!7292))))))))

(declare-fun b!6488959 () Bool)

(declare-fun e!3932637 () Bool)

(declare-fun e!3932638 () Bool)

(assert (=> b!6488959 (= e!3932637 e!3932638)))

(declare-fun res!2665002 () Bool)

(assert (=> b!6488959 (=> (not res!2665002) (not e!3932638))))

(assert (=> b!6488959 (= res!2665002 (and (not ((_ is EmptyLang!16367) (regOne!33246 (regOne!33246 r!7292)))) (not ((_ is ElementMatch!16367) (regOne!33246 (regOne!33246 r!7292))))))))

(declare-fun b!6488960 () Bool)

(declare-fun e!3932640 () Bool)

(assert (=> b!6488960 (= e!3932640 call!561710)))

(declare-fun b!6488961 () Bool)

(declare-fun e!3932636 () Bool)

(assert (=> b!6488961 (= e!3932638 e!3932636)))

(declare-fun res!2665006 () Bool)

(assert (=> b!6488961 (=> res!2665006 e!3932636)))

(assert (=> b!6488961 (= res!2665006 ((_ is Star!16367) (regOne!33246 (regOne!33246 r!7292))))))

(declare-fun b!6488958 () Bool)

(declare-fun e!3932639 () Bool)

(assert (=> b!6488958 (= e!3932636 e!3932639)))

(assert (=> b!6488958 (= c!1189037 ((_ is Union!16367) (regOne!33246 (regOne!33246 r!7292))))))

(declare-fun d!2035807 () Bool)

(declare-fun res!2665003 () Bool)

(assert (=> d!2035807 (=> res!2665003 e!3932637)))

(assert (=> d!2035807 (= res!2665003 ((_ is EmptyExpr!16367) (regOne!33246 (regOne!33246 r!7292))))))

(assert (=> d!2035807 (= (nullableFct!2298 (regOne!33246 (regOne!33246 r!7292))) e!3932637)))

(declare-fun b!6488962 () Bool)

(assert (=> b!6488962 (= e!3932639 e!3932640)))

(declare-fun res!2665004 () Bool)

(assert (=> b!6488962 (= res!2665004 call!561709)))

(assert (=> b!6488962 (=> (not res!2665004) (not e!3932640))))

(declare-fun b!6488963 () Bool)

(assert (=> b!6488963 (= e!3932639 e!3932635)))

(declare-fun res!2665005 () Bool)

(assert (=> b!6488963 (= res!2665005 call!561709)))

(assert (=> b!6488963 (=> res!2665005 e!3932635)))

(assert (= (and d!2035807 (not res!2665003)) b!6488959))

(assert (= (and b!6488959 res!2665002) b!6488961))

(assert (= (and b!6488961 (not res!2665006)) b!6488958))

(assert (= (and b!6488958 c!1189037) b!6488963))

(assert (= (and b!6488958 (not c!1189037)) b!6488962))

(assert (= (and b!6488963 (not res!2665005)) b!6488957))

(assert (= (and b!6488962 res!2665004) b!6488960))

(assert (= (or b!6488957 b!6488960) bm!561704))

(assert (= (or b!6488963 b!6488962) bm!561705))

(declare-fun m!7277570 () Bool)

(assert (=> bm!561704 m!7277570))

(declare-fun m!7277572 () Bool)

(assert (=> bm!561705 m!7277572))

(assert (=> d!2034931 d!2035807))

(assert (=> b!6487579 d!2035305))

(assert (=> b!6487579 d!2035307))

(assert (=> d!2035051 d!2035237))

(assert (=> d!2035051 d!2035219))

(declare-fun b!6488964 () Bool)

(declare-fun res!2665011 () Bool)

(declare-fun e!3932641 () Bool)

(assert (=> b!6488964 (=> res!2665011 e!3932641)))

(assert (=> b!6488964 (= res!2665011 (not (isEmpty!37468 (tail!12294 (_1!36649 (get!22634 lt!2389108))))))))

(declare-fun b!6488966 () Bool)

(declare-fun e!3932646 () Bool)

(assert (=> b!6488966 (= e!3932646 (= (head!13209 (_1!36649 (get!22634 lt!2389108))) (c!1188383 lt!2388865)))))

(declare-fun b!6488967 () Bool)

(declare-fun res!2665008 () Bool)

(declare-fun e!3932643 () Bool)

(assert (=> b!6488967 (=> res!2665008 e!3932643)))

(assert (=> b!6488967 (= res!2665008 e!3932646)))

(declare-fun res!2665009 () Bool)

(assert (=> b!6488967 (=> (not res!2665009) (not e!3932646))))

(declare-fun lt!2389226 () Bool)

(assert (=> b!6488967 (= res!2665009 lt!2389226)))

(declare-fun b!6488968 () Bool)

(declare-fun e!3932647 () Bool)

(assert (=> b!6488968 (= e!3932647 e!3932641)))

(declare-fun res!2665014 () Bool)

(assert (=> b!6488968 (=> res!2665014 e!3932641)))

(declare-fun call!561711 () Bool)

(assert (=> b!6488968 (= res!2665014 call!561711)))

(declare-fun b!6488969 () Bool)

(declare-fun res!2665012 () Bool)

(assert (=> b!6488969 (=> res!2665012 e!3932643)))

(assert (=> b!6488969 (= res!2665012 (not ((_ is ElementMatch!16367) lt!2388865)))))

(declare-fun e!3932642 () Bool)

(assert (=> b!6488969 (= e!3932642 e!3932643)))

(declare-fun bm!561706 () Bool)

(assert (=> bm!561706 (= call!561711 (isEmpty!37468 (_1!36649 (get!22634 lt!2389108))))))

(declare-fun b!6488970 () Bool)

(assert (=> b!6488970 (= e!3932643 e!3932647)))

(declare-fun res!2665010 () Bool)

(assert (=> b!6488970 (=> (not res!2665010) (not e!3932647))))

(assert (=> b!6488970 (= res!2665010 (not lt!2389226))))

(declare-fun b!6488971 () Bool)

(declare-fun e!3932644 () Bool)

(assert (=> b!6488971 (= e!3932644 e!3932642)))

(declare-fun c!1189040 () Bool)

(assert (=> b!6488971 (= c!1189040 ((_ is EmptyLang!16367) lt!2388865))))

(declare-fun b!6488972 () Bool)

(declare-fun res!2665013 () Bool)

(assert (=> b!6488972 (=> (not res!2665013) (not e!3932646))))

(assert (=> b!6488972 (= res!2665013 (isEmpty!37468 (tail!12294 (_1!36649 (get!22634 lt!2389108)))))))

(declare-fun b!6488973 () Bool)

(declare-fun e!3932645 () Bool)

(assert (=> b!6488973 (= e!3932645 (nullable!6360 lt!2388865))))

(declare-fun b!6488974 () Bool)

(assert (=> b!6488974 (= e!3932644 (= lt!2389226 call!561711))))

(declare-fun b!6488975 () Bool)

(declare-fun res!2665007 () Bool)

(assert (=> b!6488975 (=> (not res!2665007) (not e!3932646))))

(assert (=> b!6488975 (= res!2665007 (not call!561711))))

(declare-fun b!6488976 () Bool)

(assert (=> b!6488976 (= e!3932642 (not lt!2389226))))

(declare-fun b!6488977 () Bool)

(assert (=> b!6488977 (= e!3932641 (not (= (head!13209 (_1!36649 (get!22634 lt!2389108))) (c!1188383 lt!2388865))))))

(declare-fun d!2035809 () Bool)

(assert (=> d!2035809 e!3932644))

(declare-fun c!1189039 () Bool)

(assert (=> d!2035809 (= c!1189039 ((_ is EmptyExpr!16367) lt!2388865))))

(assert (=> d!2035809 (= lt!2389226 e!3932645)))

(declare-fun c!1189038 () Bool)

(assert (=> d!2035809 (= c!1189038 (isEmpty!37468 (_1!36649 (get!22634 lt!2389108))))))

(assert (=> d!2035809 (validRegex!8103 lt!2388865)))

(assert (=> d!2035809 (= (matchR!8550 lt!2388865 (_1!36649 (get!22634 lt!2389108))) lt!2389226)))

(declare-fun b!6488965 () Bool)

(assert (=> b!6488965 (= e!3932645 (matchR!8550 (derivativeStep!5063 lt!2388865 (head!13209 (_1!36649 (get!22634 lt!2389108)))) (tail!12294 (_1!36649 (get!22634 lt!2389108)))))))

(assert (= (and d!2035809 c!1189038) b!6488973))

(assert (= (and d!2035809 (not c!1189038)) b!6488965))

(assert (= (and d!2035809 c!1189039) b!6488974))

(assert (= (and d!2035809 (not c!1189039)) b!6488971))

(assert (= (and b!6488971 c!1189040) b!6488976))

(assert (= (and b!6488971 (not c!1189040)) b!6488969))

(assert (= (and b!6488969 (not res!2665012)) b!6488967))

(assert (= (and b!6488967 res!2665009) b!6488975))

(assert (= (and b!6488975 res!2665007) b!6488972))

(assert (= (and b!6488972 res!2665013) b!6488966))

(assert (= (and b!6488967 (not res!2665008)) b!6488970))

(assert (= (and b!6488970 res!2665010) b!6488968))

(assert (= (and b!6488968 (not res!2665014)) b!6488964))

(assert (= (and b!6488964 (not res!2665011)) b!6488977))

(assert (= (or b!6488974 b!6488968 b!6488975) bm!561706))

(declare-fun m!7277574 () Bool)

(assert (=> b!6488964 m!7277574))

(assert (=> b!6488964 m!7277574))

(declare-fun m!7277576 () Bool)

(assert (=> b!6488964 m!7277576))

(assert (=> b!6488973 m!7275846))

(declare-fun m!7277578 () Bool)

(assert (=> d!2035809 m!7277578))

(assert (=> d!2035809 m!7275850))

(assert (=> b!6488972 m!7277574))

(assert (=> b!6488972 m!7277574))

(assert (=> b!6488972 m!7277576))

(declare-fun m!7277580 () Bool)

(assert (=> b!6488977 m!7277580))

(assert (=> b!6488966 m!7277580))

(assert (=> b!6488965 m!7277580))

(assert (=> b!6488965 m!7277580))

(declare-fun m!7277582 () Bool)

(assert (=> b!6488965 m!7277582))

(assert (=> b!6488965 m!7277574))

(assert (=> b!6488965 m!7277582))

(assert (=> b!6488965 m!7277574))

(declare-fun m!7277584 () Bool)

(assert (=> b!6488965 m!7277584))

(assert (=> bm!561706 m!7277578))

(assert (=> b!6487697 d!2035809))

(assert (=> b!6487697 d!2035499))

(declare-fun d!2035811 () Bool)

(declare-fun c!1189041 () Bool)

(assert (=> d!2035811 (= c!1189041 (isEmpty!37468 (tail!12294 (_1!36649 lt!2388858))))))

(declare-fun e!3932648 () Bool)

(assert (=> d!2035811 (= (matchZipper!2379 (derivationStepZipper!2333 lt!2388878 (head!13209 (_1!36649 lt!2388858))) (tail!12294 (_1!36649 lt!2388858))) e!3932648)))

(declare-fun b!6488978 () Bool)

(assert (=> b!6488978 (= e!3932648 (nullableZipper!2124 (derivationStepZipper!2333 lt!2388878 (head!13209 (_1!36649 lt!2388858)))))))

(declare-fun b!6488979 () Bool)

(assert (=> b!6488979 (= e!3932648 (matchZipper!2379 (derivationStepZipper!2333 (derivationStepZipper!2333 lt!2388878 (head!13209 (_1!36649 lt!2388858))) (head!13209 (tail!12294 (_1!36649 lt!2388858)))) (tail!12294 (tail!12294 (_1!36649 lt!2388858)))))))

(assert (= (and d!2035811 c!1189041) b!6488978))

(assert (= (and d!2035811 (not c!1189041)) b!6488979))

(assert (=> d!2035811 m!7275814))

(assert (=> d!2035811 m!7275816))

(assert (=> b!6488978 m!7275932))

(declare-fun m!7277586 () Bool)

(assert (=> b!6488978 m!7277586))

(assert (=> b!6488979 m!7275814))

(assert (=> b!6488979 m!7276702))

(assert (=> b!6488979 m!7275932))

(assert (=> b!6488979 m!7276702))

(declare-fun m!7277588 () Bool)

(assert (=> b!6488979 m!7277588))

(assert (=> b!6488979 m!7275814))

(assert (=> b!6488979 m!7276694))

(assert (=> b!6488979 m!7277588))

(assert (=> b!6488979 m!7276694))

(declare-fun m!7277590 () Bool)

(assert (=> b!6488979 m!7277590))

(assert (=> b!6487481 d!2035811))

(declare-fun bs!1646585 () Bool)

(declare-fun d!2035813 () Bool)

(assert (= bs!1646585 (and d!2035813 d!2035525)))

(declare-fun lambda!359292 () Int)

(assert (=> bs!1646585 (= (= (head!13209 (_1!36649 lt!2388858)) (head!13209 lt!2388887)) (= lambda!359292 lambda!359257))))

(declare-fun bs!1646587 () Bool)

(assert (= bs!1646587 (and d!2035813 d!2035701)))

(assert (=> bs!1646587 (= (= (head!13209 (_1!36649 lt!2388858)) (head!13209 lt!2388903)) (= lambda!359292 lambda!359274))))

(declare-fun bs!1646588 () Bool)

(assert (= bs!1646588 (and d!2035813 d!2035105)))

(assert (=> bs!1646588 (= (= (head!13209 (_1!36649 lt!2388858)) (h!71724 s!2326)) (= lambda!359292 lambda!359193))))

(declare-fun bs!1646589 () Bool)

(assert (= bs!1646589 (and d!2035813 d!2035585)))

(assert (=> bs!1646589 (= (= (head!13209 (_1!36649 lt!2388858)) (head!13209 (t!379026 s!2326))) (= lambda!359292 lambda!359263))))

(declare-fun bs!1646590 () Bool)

(assert (= bs!1646590 (and d!2035813 d!2035493)))

(assert (=> bs!1646590 (= (= (head!13209 (_1!36649 lt!2388858)) (head!13209 s!2326)) (= lambda!359292 lambda!359255))))

(declare-fun bs!1646591 () Bool)

(assert (= bs!1646591 (and d!2035813 d!2035487)))

(assert (=> bs!1646591 (= (= (head!13209 (_1!36649 lt!2388858)) (head!13209 (t!379026 s!2326))) (= lambda!359292 lambda!359254))))

(declare-fun bs!1646592 () Bool)

(assert (= bs!1646592 (and d!2035813 d!2035229)))

(assert (=> bs!1646592 (= (= (head!13209 (_1!36649 lt!2388858)) (head!13209 (t!379026 s!2326))) (= lambda!359292 lambda!359232))))

(declare-fun bs!1646594 () Bool)

(assert (= bs!1646594 (and d!2035813 b!6486628)))

(assert (=> bs!1646594 (= (= (head!13209 (_1!36649 lt!2388858)) (h!71724 s!2326)) (= lambda!359292 lambda!359120))))

(assert (=> d!2035813 true))

(assert (=> d!2035813 (= (derivationStepZipper!2333 lt!2388878 (head!13209 (_1!36649 lt!2388858))) (flatMap!1872 lt!2388878 lambda!359292))))

(declare-fun bs!1646595 () Bool)

(assert (= bs!1646595 d!2035813))

(declare-fun m!7277592 () Bool)

(assert (=> bs!1646595 m!7277592))

(assert (=> b!6487481 d!2035813))

(assert (=> b!6487481 d!2035393))

(assert (=> b!6487481 d!2035285))

(declare-fun bs!1646597 () Bool)

(declare-fun b!6488981 () Bool)

(assert (= bs!1646597 (and b!6488981 d!2035573)))

(declare-fun lambda!359294 () Int)

(assert (=> bs!1646597 (not (= lambda!359294 lambda!359259))))

(declare-fun bs!1646599 () Bool)

(assert (= bs!1646599 (and b!6488981 d!2035151)))

(assert (=> bs!1646599 (not (= lambda!359294 lambda!359216))))

(declare-fun bs!1646601 () Bool)

(assert (= bs!1646601 (and b!6488981 b!6487593)))

(assert (=> bs!1646601 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regTwo!33247 lt!2388865)) (reg!16696 r!7292)) (= (regTwo!33247 lt!2388865) r!7292)) (= lambda!359294 lambda!359195))))

(declare-fun bs!1646603 () Bool)

(assert (= bs!1646603 (and b!6488981 d!2035675)))

(assert (=> bs!1646603 (not (= lambda!359294 lambda!359270))))

(declare-fun bs!1646605 () Bool)

(assert (= bs!1646605 (and b!6488981 b!6486656)))

(assert (=> bs!1646605 (not (= lambda!359294 lambda!359121))))

(declare-fun bs!1646607 () Bool)

(assert (= bs!1646607 (and b!6488981 b!6487561)))

(assert (=> bs!1646607 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regTwo!33247 lt!2388865)) (reg!16696 lt!2388855)) (= (regTwo!33247 lt!2388865) lt!2388855)) (= lambda!359294 lambda!359189))))

(declare-fun bs!1646609 () Bool)

(assert (= bs!1646609 (and b!6488981 b!6486655)))

(assert (=> bs!1646609 (not (= lambda!359294 lambda!359119))))

(declare-fun bs!1646611 () Bool)

(assert (= bs!1646611 (and b!6488981 d!2035135)))

(assert (=> bs!1646611 (not (= lambda!359294 lambda!359207))))

(declare-fun bs!1646612 () Bool)

(assert (= bs!1646612 (and b!6488981 d!2035129)))

(assert (=> bs!1646612 (not (= lambda!359294 lambda!359201))))

(assert (=> bs!1646597 (not (= lambda!359294 lambda!359260))))

(declare-fun bs!1646614 () Bool)

(assert (= bs!1646614 (and b!6488981 b!6487626)))

(assert (=> bs!1646614 (= (and (= (reg!16696 (regTwo!33247 lt!2388865)) (reg!16696 lt!2388865)) (= (regTwo!33247 lt!2388865) lt!2388865)) (= lambda!359294 lambda!359203))))

(declare-fun bs!1646616 () Bool)

(assert (= bs!1646616 (and b!6488981 d!2035139)))

(assert (=> bs!1646616 (not (= lambda!359294 lambda!359212))))

(declare-fun bs!1646618 () Bool)

(assert (= bs!1646618 (and b!6488981 b!6488783)))

(assert (=> bs!1646618 (not (= lambda!359294 lambda!359280))))

(assert (=> bs!1646612 (not (= lambda!359294 lambda!359202))))

(declare-fun bs!1646620 () Bool)

(assert (= bs!1646620 (and b!6488981 b!6486638)))

(assert (=> bs!1646620 (not (= lambda!359294 lambda!359123))))

(declare-fun bs!1646621 () Bool)

(assert (= bs!1646621 (and b!6488981 d!2035165)))

(assert (=> bs!1646621 (not (= lambda!359294 lambda!359218))))

(declare-fun bs!1646623 () Bool)

(assert (= bs!1646623 (and b!6488981 d!2035221)))

(assert (=> bs!1646623 (not (= lambda!359294 lambda!359231))))

(declare-fun bs!1646625 () Bool)

(assert (= bs!1646625 (and b!6488981 b!6487565)))

(assert (=> bs!1646625 (not (= lambda!359294 lambda!359190))))

(assert (=> bs!1646609 (not (= lambda!359294 lambda!359118))))

(assert (=> bs!1646603 (not (= lambda!359294 lambda!359269))))

(assert (=> bs!1646620 (= (and (= (reg!16696 (regTwo!33247 lt!2388865)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33247 lt!2388865) lt!2388865)) (= lambda!359294 lambda!359124))))

(declare-fun bs!1646629 () Bool)

(assert (= bs!1646629 (and b!6488981 d!2035387)))

(assert (=> bs!1646629 (not (= lambda!359294 lambda!359241))))

(assert (=> bs!1646620 (not (= lambda!359294 lambda!359125))))

(assert (=> bs!1646616 (= (and (= (reg!16696 (regTwo!33247 lt!2388865)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33247 lt!2388865) (Star!16367 (reg!16696 (regOne!33246 r!7292))))) (= lambda!359294 lambda!359213))))

(declare-fun bs!1646631 () Bool)

(assert (= bs!1646631 (and b!6488981 b!6488777)))

(assert (=> bs!1646631 (= (and (= (reg!16696 (regTwo!33247 lt!2388865)) (reg!16696 (regOne!33247 lt!2388865))) (= (regTwo!33247 lt!2388865) (regOne!33247 lt!2388865))) (= lambda!359294 lambda!359279))))

(declare-fun bs!1646632 () Bool)

(assert (= bs!1646632 (and b!6488981 b!6488119)))

(assert (=> bs!1646632 (not (= lambda!359294 lambda!359234))))

(declare-fun bs!1646633 () Bool)

(assert (= bs!1646633 (and b!6488981 d!2035145)))

(assert (=> bs!1646633 (not (= lambda!359294 lambda!359214))))

(assert (=> bs!1646599 (not (= lambda!359294 lambda!359215))))

(declare-fun bs!1646634 () Bool)

(assert (= bs!1646634 (and b!6488981 b!6488303)))

(assert (=> bs!1646634 (not (= lambda!359294 lambda!359248))))

(assert (=> bs!1646605 (not (= lambda!359294 lambda!359122))))

(assert (=> bs!1646629 (not (= lambda!359294 lambda!359240))))

(declare-fun bs!1646635 () Bool)

(assert (= bs!1646635 (and b!6488981 b!6488115)))

(assert (=> bs!1646635 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regTwo!33247 lt!2388865)) (reg!16696 (regTwo!33247 r!7292))) (= (regTwo!33247 lt!2388865) (regTwo!33247 r!7292))) (= lambda!359294 lambda!359233))))

(assert (=> bs!1646621 (not (= lambda!359294 lambda!359219))))

(declare-fun bs!1646636 () Bool)

(assert (= bs!1646636 (and b!6488981 d!2035783)))

(assert (=> bs!1646636 (not (= lambda!359294 lambda!359290))))

(declare-fun bs!1646637 () Bool)

(assert (= bs!1646637 (and b!6488981 b!6488299)))

(assert (=> bs!1646637 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regTwo!33247 lt!2388865)) (reg!16696 (regTwo!33247 lt!2388855))) (= (regTwo!33247 lt!2388865) (regTwo!33247 lt!2388855))) (= lambda!359294 lambda!359247))))

(declare-fun bs!1646638 () Bool)

(assert (= bs!1646638 (and b!6488981 d!2035161)))

(assert (=> bs!1646638 (not (= lambda!359294 lambda!359217))))

(declare-fun bs!1646639 () Bool)

(assert (= bs!1646639 (and b!6488981 b!6487597)))

(assert (=> bs!1646639 (not (= lambda!359294 lambda!359196))))

(declare-fun bs!1646640 () Bool)

(assert (= bs!1646640 (and b!6488981 d!2035737)))

(assert (=> bs!1646640 (not (= lambda!359294 lambda!359281))))

(declare-fun bs!1646641 () Bool)

(assert (= bs!1646641 (and b!6488981 b!6487630)))

(assert (=> bs!1646641 (not (= lambda!359294 lambda!359204))))

(assert (=> b!6488981 true))

(assert (=> b!6488981 true))

(declare-fun bs!1646642 () Bool)

(declare-fun b!6488985 () Bool)

(assert (= bs!1646642 (and b!6488985 d!2035573)))

(declare-fun lambda!359295 () Int)

(assert (=> bs!1646642 (not (= lambda!359295 lambda!359259))))

(declare-fun bs!1646643 () Bool)

(assert (= bs!1646643 (and b!6488985 d!2035151)))

(assert (=> bs!1646643 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regTwo!33247 lt!2388865)) (regOne!33246 r!7292)) (= (regTwo!33246 (regTwo!33247 lt!2388865)) (regTwo!33246 r!7292))) (= lambda!359295 lambda!359216))))

(declare-fun bs!1646644 () Bool)

(assert (= bs!1646644 (and b!6488985 b!6487593)))

(assert (=> bs!1646644 (not (= lambda!359295 lambda!359195))))

(declare-fun bs!1646645 () Bool)

(assert (= bs!1646645 (and b!6488985 d!2035675)))

(assert (=> bs!1646645 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regTwo!33247 lt!2388865)) (regOne!33246 r!7292)) (= (regTwo!33246 (regTwo!33247 lt!2388865)) (regTwo!33246 r!7292))) (= lambda!359295 lambda!359270))))

(declare-fun bs!1646646 () Bool)

(assert (= bs!1646646 (and b!6488985 b!6486656)))

(assert (=> bs!1646646 (not (= lambda!359295 lambda!359121))))

(declare-fun bs!1646647 () Bool)

(assert (= bs!1646647 (and b!6488985 b!6487561)))

(assert (=> bs!1646647 (not (= lambda!359295 lambda!359189))))

(declare-fun bs!1646648 () Bool)

(assert (= bs!1646648 (and b!6488985 b!6486655)))

(assert (=> bs!1646648 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regTwo!33247 lt!2388865)) (regOne!33246 r!7292)) (= (regTwo!33246 (regTwo!33247 lt!2388865)) (regTwo!33246 r!7292))) (= lambda!359295 lambda!359119))))

(declare-fun bs!1646649 () Bool)

(assert (= bs!1646649 (and b!6488985 d!2035135)))

(assert (=> bs!1646649 (not (= lambda!359295 lambda!359207))))

(declare-fun bs!1646650 () Bool)

(assert (= bs!1646650 (and b!6488985 d!2035129)))

(assert (=> bs!1646650 (not (= lambda!359295 lambda!359201))))

(assert (=> bs!1646642 (= (and (= (regOne!33246 (regTwo!33247 lt!2388865)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regTwo!33247 lt!2388865)) lt!2388865)) (= lambda!359295 lambda!359260))))

(declare-fun bs!1646651 () Bool)

(assert (= bs!1646651 (and b!6488985 b!6487626)))

(assert (=> bs!1646651 (not (= lambda!359295 lambda!359203))))

(declare-fun bs!1646652 () Bool)

(assert (= bs!1646652 (and b!6488985 d!2035139)))

(assert (=> bs!1646652 (not (= lambda!359295 lambda!359212))))

(declare-fun bs!1646653 () Bool)

(assert (= bs!1646653 (and b!6488985 b!6488783)))

(assert (=> bs!1646653 (= (and (= (regOne!33246 (regTwo!33247 lt!2388865)) (regOne!33246 (regOne!33247 lt!2388865))) (= (regTwo!33246 (regTwo!33247 lt!2388865)) (regTwo!33246 (regOne!33247 lt!2388865)))) (= lambda!359295 lambda!359280))))

(assert (=> bs!1646650 (= (and (= (regOne!33246 (regTwo!33247 lt!2388865)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regTwo!33247 lt!2388865)) lt!2388865)) (= lambda!359295 lambda!359202))))

(declare-fun bs!1646654 () Bool)

(assert (= bs!1646654 (and b!6488985 b!6486638)))

(assert (=> bs!1646654 (not (= lambda!359295 lambda!359123))))

(declare-fun bs!1646655 () Bool)

(assert (= bs!1646655 (and b!6488985 b!6488981)))

(assert (=> bs!1646655 (not (= lambda!359295 lambda!359294))))

(declare-fun bs!1646656 () Bool)

(assert (= bs!1646656 (and b!6488985 d!2035165)))

(assert (=> bs!1646656 (not (= lambda!359295 lambda!359218))))

(declare-fun bs!1646657 () Bool)

(assert (= bs!1646657 (and b!6488985 d!2035221)))

(assert (=> bs!1646657 (not (= lambda!359295 lambda!359231))))

(declare-fun bs!1646658 () Bool)

(assert (= bs!1646658 (and b!6488985 b!6487565)))

(assert (=> bs!1646658 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regTwo!33247 lt!2388865)) (regOne!33246 lt!2388855)) (= (regTwo!33246 (regTwo!33247 lt!2388865)) (regTwo!33246 lt!2388855))) (= lambda!359295 lambda!359190))))

(assert (=> bs!1646648 (not (= lambda!359295 lambda!359118))))

(assert (=> bs!1646645 (not (= lambda!359295 lambda!359269))))

(assert (=> bs!1646654 (not (= lambda!359295 lambda!359124))))

(declare-fun bs!1646660 () Bool)

(assert (= bs!1646660 (and b!6488985 d!2035387)))

(assert (=> bs!1646660 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regTwo!33247 lt!2388865)) lt!2388865) (= (regTwo!33246 (regTwo!33247 lt!2388865)) (regTwo!33246 r!7292))) (= lambda!359295 lambda!359241))))

(assert (=> bs!1646654 (= (and (= (regOne!33246 (regTwo!33247 lt!2388865)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regTwo!33247 lt!2388865)) lt!2388865)) (= lambda!359295 lambda!359125))))

(assert (=> bs!1646652 (not (= lambda!359295 lambda!359213))))

(declare-fun bs!1646665 () Bool)

(assert (= bs!1646665 (and b!6488985 b!6488777)))

(assert (=> bs!1646665 (not (= lambda!359295 lambda!359279))))

(declare-fun bs!1646667 () Bool)

(assert (= bs!1646667 (and b!6488985 b!6488119)))

(assert (=> bs!1646667 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regTwo!33247 lt!2388865)) (regOne!33246 (regTwo!33247 r!7292))) (= (regTwo!33246 (regTwo!33247 lt!2388865)) (regTwo!33246 (regTwo!33247 r!7292)))) (= lambda!359295 lambda!359234))))

(declare-fun bs!1646670 () Bool)

(assert (= bs!1646670 (and b!6488985 d!2035145)))

(assert (=> bs!1646670 (not (= lambda!359295 lambda!359214))))

(assert (=> bs!1646643 (not (= lambda!359295 lambda!359215))))

(declare-fun bs!1646674 () Bool)

(assert (= bs!1646674 (and b!6488985 b!6488303)))

(assert (=> bs!1646674 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regTwo!33247 lt!2388865)) (regOne!33246 (regTwo!33247 lt!2388855))) (= (regTwo!33246 (regTwo!33247 lt!2388865)) (regTwo!33246 (regTwo!33247 lt!2388855)))) (= lambda!359295 lambda!359248))))

(assert (=> bs!1646646 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regTwo!33247 lt!2388865)) lt!2388865) (= (regTwo!33246 (regTwo!33247 lt!2388865)) (regTwo!33246 r!7292))) (= lambda!359295 lambda!359122))))

(assert (=> bs!1646660 (not (= lambda!359295 lambda!359240))))

(declare-fun bs!1646676 () Bool)

(assert (= bs!1646676 (and b!6488985 b!6488115)))

(assert (=> bs!1646676 (not (= lambda!359295 lambda!359233))))

(assert (=> bs!1646656 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regTwo!33247 lt!2388865)) lt!2388865) (= (regTwo!33246 (regTwo!33247 lt!2388865)) (regTwo!33246 r!7292))) (= lambda!359295 lambda!359219))))

(declare-fun bs!1646677 () Bool)

(assert (= bs!1646677 (and b!6488985 d!2035783)))

(assert (=> bs!1646677 (not (= lambda!359295 lambda!359290))))

(declare-fun bs!1646678 () Bool)

(assert (= bs!1646678 (and b!6488985 b!6488299)))

(assert (=> bs!1646678 (not (= lambda!359295 lambda!359247))))

(declare-fun bs!1646679 () Bool)

(assert (= bs!1646679 (and b!6488985 d!2035161)))

(assert (=> bs!1646679 (not (= lambda!359295 lambda!359217))))

(declare-fun bs!1646680 () Bool)

(assert (= bs!1646680 (and b!6488985 b!6487597)))

(assert (=> bs!1646680 (= (and (= (_1!36649 lt!2388900) s!2326) (= (regOne!33246 (regTwo!33247 lt!2388865)) (regOne!33246 r!7292)) (= (regTwo!33246 (regTwo!33247 lt!2388865)) (regTwo!33246 r!7292))) (= lambda!359295 lambda!359196))))

(declare-fun bs!1646681 () Bool)

(assert (= bs!1646681 (and b!6488985 d!2035737)))

(assert (=> bs!1646681 (not (= lambda!359295 lambda!359281))))

(declare-fun bs!1646682 () Bool)

(assert (= bs!1646682 (and b!6488985 b!6487630)))

(assert (=> bs!1646682 (= (and (= (regOne!33246 (regTwo!33247 lt!2388865)) (regOne!33246 lt!2388865)) (= (regTwo!33246 (regTwo!33247 lt!2388865)) (regTwo!33246 lt!2388865))) (= lambda!359295 lambda!359204))))

(assert (=> b!6488985 true))

(assert (=> b!6488985 true))

(declare-fun b!6488980 () Bool)

(declare-fun c!1189045 () Bool)

(assert (=> b!6488980 (= c!1189045 ((_ is ElementMatch!16367) (regTwo!33247 lt!2388865)))))

(declare-fun e!3932649 () Bool)

(declare-fun e!3932653 () Bool)

(assert (=> b!6488980 (= e!3932649 e!3932653)))

(declare-fun e!3932655 () Bool)

(declare-fun call!561713 () Bool)

(assert (=> b!6488981 (= e!3932655 call!561713)))

(declare-fun b!6488982 () Bool)

(declare-fun e!3932651 () Bool)

(declare-fun call!561712 () Bool)

(assert (=> b!6488982 (= e!3932651 call!561712)))

(declare-fun bm!561707 () Bool)

(assert (=> bm!561707 (= call!561712 (isEmpty!37468 (_1!36649 lt!2388900)))))

(declare-fun b!6488983 () Bool)

(declare-fun e!3932652 () Bool)

(assert (=> b!6488983 (= e!3932652 (matchRSpec!3468 (regTwo!33247 (regTwo!33247 lt!2388865)) (_1!36649 lt!2388900)))))

(declare-fun d!2035815 () Bool)

(declare-fun c!1189043 () Bool)

(assert (=> d!2035815 (= c!1189043 ((_ is EmptyExpr!16367) (regTwo!33247 lt!2388865)))))

(assert (=> d!2035815 (= (matchRSpec!3468 (regTwo!33247 lt!2388865) (_1!36649 lt!2388900)) e!3932651)))

(declare-fun b!6488984 () Bool)

(declare-fun e!3932650 () Bool)

(declare-fun e!3932654 () Bool)

(assert (=> b!6488984 (= e!3932650 e!3932654)))

(declare-fun c!1189044 () Bool)

(assert (=> b!6488984 (= c!1189044 ((_ is Star!16367) (regTwo!33247 lt!2388865)))))

(declare-fun bm!561708 () Bool)

(assert (=> bm!561708 (= call!561713 (Exists!3437 (ite c!1189044 lambda!359294 lambda!359295)))))

(assert (=> b!6488985 (= e!3932654 call!561713)))

(declare-fun b!6488986 () Bool)

(declare-fun c!1189042 () Bool)

(assert (=> b!6488986 (= c!1189042 ((_ is Union!16367) (regTwo!33247 lt!2388865)))))

(assert (=> b!6488986 (= e!3932653 e!3932650)))

(declare-fun b!6488987 () Bool)

(assert (=> b!6488987 (= e!3932653 (= (_1!36649 lt!2388900) (Cons!65276 (c!1188383 (regTwo!33247 lt!2388865)) Nil!65276)))))

(declare-fun b!6488988 () Bool)

(assert (=> b!6488988 (= e!3932650 e!3932652)))

(declare-fun res!2665017 () Bool)

(assert (=> b!6488988 (= res!2665017 (matchRSpec!3468 (regOne!33247 (regTwo!33247 lt!2388865)) (_1!36649 lt!2388900)))))

(assert (=> b!6488988 (=> res!2665017 e!3932652)))

(declare-fun b!6488989 () Bool)

(declare-fun res!2665016 () Bool)

(assert (=> b!6488989 (=> res!2665016 e!3932655)))

(assert (=> b!6488989 (= res!2665016 call!561712)))

(assert (=> b!6488989 (= e!3932654 e!3932655)))

(declare-fun b!6488990 () Bool)

(assert (=> b!6488990 (= e!3932651 e!3932649)))

(declare-fun res!2665015 () Bool)

(assert (=> b!6488990 (= res!2665015 (not ((_ is EmptyLang!16367) (regTwo!33247 lt!2388865))))))

(assert (=> b!6488990 (=> (not res!2665015) (not e!3932649))))

(assert (= (and d!2035815 c!1189043) b!6488982))

(assert (= (and d!2035815 (not c!1189043)) b!6488990))

(assert (= (and b!6488990 res!2665015) b!6488980))

(assert (= (and b!6488980 c!1189045) b!6488987))

(assert (= (and b!6488980 (not c!1189045)) b!6488986))

(assert (= (and b!6488986 c!1189042) b!6488988))

(assert (= (and b!6488986 (not c!1189042)) b!6488984))

(assert (= (and b!6488988 (not res!2665017)) b!6488983))

(assert (= (and b!6488984 c!1189044) b!6488989))

(assert (= (and b!6488984 (not c!1189044)) b!6488985))

(assert (= (and b!6488989 (not res!2665016)) b!6488981))

(assert (= (or b!6488981 b!6488985) bm!561708))

(assert (= (or b!6488982 b!6488989) bm!561707))

(assert (=> bm!561707 m!7275006))

(declare-fun m!7277642 () Bool)

(assert (=> b!6488983 m!7277642))

(declare-fun m!7277644 () Bool)

(assert (=> bm!561708 m!7277644))

(declare-fun m!7277646 () Bool)

(assert (=> b!6488988 m!7277646))

(assert (=> b!6487628 d!2035815))

(declare-fun bs!1646696 () Bool)

(declare-fun d!2035829 () Bool)

(assert (= bs!1646696 (and d!2035829 d!2035473)))

(declare-fun lambda!359298 () Int)

(assert (=> bs!1646696 (= lambda!359298 lambda!359251)))

(declare-fun bs!1646697 () Bool)

(assert (= bs!1646697 (and d!2035829 d!2035183)))

(assert (=> bs!1646697 (= lambda!359298 lambda!359225)))

(declare-fun bs!1646699 () Bool)

(assert (= bs!1646699 (and d!2035829 d!2035173)))

(assert (=> bs!1646699 (= lambda!359298 lambda!359222)))

(declare-fun bs!1646700 () Bool)

(assert (= bs!1646700 (and d!2035829 d!2035185)))

(assert (=> bs!1646700 (= lambda!359298 lambda!359228)))

(declare-fun bs!1646701 () Bool)

(assert (= bs!1646701 (and d!2035829 d!2035009)))

(assert (=> bs!1646701 (= lambda!359298 lambda!359178)))

(declare-fun bs!1646703 () Bool)

(assert (= bs!1646703 (and d!2035829 d!2035597)))

(assert (=> bs!1646703 (= lambda!359298 lambda!359266)))

(declare-fun bs!1646704 () Bool)

(assert (= bs!1646704 (and d!2035829 d!2035471)))

(assert (=> bs!1646704 (= lambda!359298 lambda!359250)))

(declare-fun bs!1646705 () Bool)

(assert (= bs!1646705 (and d!2035829 d!2035379)))

(assert (=> bs!1646705 (= lambda!359298 lambda!359235)))

(declare-fun bs!1646707 () Bool)

(assert (= bs!1646707 (and d!2035829 d!2035453)))

(assert (=> bs!1646707 (= lambda!359298 lambda!359249)))

(declare-fun bs!1646708 () Bool)

(assert (= bs!1646708 (and d!2035829 d!2035481)))

(assert (=> bs!1646708 (= lambda!359298 lambda!359252)))

(declare-fun bs!1646709 () Bool)

(assert (= bs!1646709 (and d!2035829 d!2035073)))

(assert (=> bs!1646709 (= lambda!359298 lambda!359181)))

(declare-fun bs!1646711 () Bool)

(assert (= bs!1646711 (and d!2035829 d!2035109)))

(assert (=> bs!1646711 (= lambda!359298 lambda!359194)))

(declare-fun bs!1646712 () Bool)

(assert (= bs!1646712 (and d!2035829 d!2035483)))

(assert (=> bs!1646712 (= lambda!359298 lambda!359253)))

(declare-fun bs!1646713 () Bool)

(assert (= bs!1646713 (and d!2035829 b!6486640)))

(assert (=> bs!1646713 (= lambda!359298 lambda!359126)))

(declare-fun bs!1646714 () Bool)

(assert (= bs!1646714 (and d!2035829 d!2035711)))

(assert (=> bs!1646714 (= lambda!359298 lambda!359275)))

(declare-fun bs!1646715 () Bool)

(assert (= bs!1646715 (and d!2035829 d!2035083)))

(assert (=> bs!1646715 (= lambda!359298 lambda!359184)))

(declare-fun bs!1646716 () Bool)

(assert (= bs!1646716 (and d!2035829 d!2035745)))

(assert (=> bs!1646716 (= lambda!359298 lambda!359286)))

(declare-fun b!6489032 () Bool)

(declare-fun e!3932687 () Bool)

(declare-fun lt!2389229 () Regex!16367)

(assert (=> b!6489032 (= e!3932687 (isConcat!1282 lt!2389229))))

(declare-fun b!6489033 () Bool)

(declare-fun e!3932688 () Regex!16367)

(assert (=> b!6489033 (= e!3932688 (h!71725 (t!379027 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun e!3932683 () Bool)

(assert (=> d!2035829 e!3932683))

(declare-fun res!2665031 () Bool)

(assert (=> d!2035829 (=> (not res!2665031) (not e!3932683))))

(assert (=> d!2035829 (= res!2665031 (validRegex!8103 lt!2389229))))

(assert (=> d!2035829 (= lt!2389229 e!3932688)))

(declare-fun c!1189061 () Bool)

(declare-fun e!3932685 () Bool)

(assert (=> d!2035829 (= c!1189061 e!3932685)))

(declare-fun res!2665032 () Bool)

(assert (=> d!2035829 (=> (not res!2665032) (not e!3932685))))

(assert (=> d!2035829 (= res!2665032 ((_ is Cons!65277) (t!379027 (exprs!6251 (h!71726 zl!343)))))))

(assert (=> d!2035829 (forall!15550 (t!379027 (exprs!6251 (h!71726 zl!343))) lambda!359298)))

(assert (=> d!2035829 (= (generalisedConcat!1964 (t!379027 (exprs!6251 (h!71726 zl!343)))) lt!2389229)))

(declare-fun b!6489034 () Bool)

(declare-fun e!3932684 () Regex!16367)

(assert (=> b!6489034 (= e!3932684 (Concat!25212 (h!71725 (t!379027 (exprs!6251 (h!71726 zl!343)))) (generalisedConcat!1964 (t!379027 (t!379027 (exprs!6251 (h!71726 zl!343)))))))))

(declare-fun b!6489035 () Bool)

(declare-fun e!3932686 () Bool)

(assert (=> b!6489035 (= e!3932686 e!3932687)))

(declare-fun c!1189060 () Bool)

(assert (=> b!6489035 (= c!1189060 (isEmpty!37470 (tail!12295 (t!379027 (exprs!6251 (h!71726 zl!343))))))))

(declare-fun b!6489036 () Bool)

(assert (=> b!6489036 (= e!3932687 (= lt!2389229 (head!13210 (t!379027 (exprs!6251 (h!71726 zl!343))))))))

(declare-fun b!6489037 () Bool)

(assert (=> b!6489037 (= e!3932683 e!3932686)))

(declare-fun c!1189062 () Bool)

(assert (=> b!6489037 (= c!1189062 (isEmpty!37470 (t!379027 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun b!6489038 () Bool)

(assert (=> b!6489038 (= e!3932685 (isEmpty!37470 (t!379027 (t!379027 (exprs!6251 (h!71726 zl!343))))))))

(declare-fun b!6489039 () Bool)

(assert (=> b!6489039 (= e!3932686 (isEmptyExpr!1759 lt!2389229))))

(declare-fun b!6489040 () Bool)

(assert (=> b!6489040 (= e!3932688 e!3932684)))

(declare-fun c!1189063 () Bool)

(assert (=> b!6489040 (= c!1189063 ((_ is Cons!65277) (t!379027 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun b!6489041 () Bool)

(assert (=> b!6489041 (= e!3932684 EmptyExpr!16367)))

(assert (= (and d!2035829 res!2665032) b!6489038))

(assert (= (and d!2035829 c!1189061) b!6489033))

(assert (= (and d!2035829 (not c!1189061)) b!6489040))

(assert (= (and b!6489040 c!1189063) b!6489034))

(assert (= (and b!6489040 (not c!1189063)) b!6489041))

(assert (= (and d!2035829 res!2665031) b!6489037))

(assert (= (and b!6489037 c!1189062) b!6489039))

(assert (= (and b!6489037 (not c!1189062)) b!6489035))

(assert (= (and b!6489035 c!1189060) b!6489036))

(assert (= (and b!6489035 (not c!1189060)) b!6489032))

(declare-fun m!7277674 () Bool)

(assert (=> b!6489034 m!7277674))

(declare-fun m!7277676 () Bool)

(assert (=> b!6489039 m!7277676))

(declare-fun m!7277678 () Bool)

(assert (=> b!6489036 m!7277678))

(assert (=> b!6489037 m!7274982))

(declare-fun m!7277680 () Bool)

(assert (=> b!6489038 m!7277680))

(declare-fun m!7277682 () Bool)

(assert (=> b!6489035 m!7277682))

(assert (=> b!6489035 m!7277682))

(declare-fun m!7277684 () Bool)

(assert (=> b!6489035 m!7277684))

(declare-fun m!7277686 () Bool)

(assert (=> d!2035829 m!7277686))

(declare-fun m!7277688 () Bool)

(assert (=> d!2035829 m!7277688))

(declare-fun m!7277690 () Bool)

(assert (=> b!6489032 m!7277690))

(assert (=> b!6487725 d!2035829))

(declare-fun bs!1646720 () Bool)

(declare-fun b!6489049 () Bool)

(assert (= bs!1646720 (and b!6489049 d!2035573)))

(declare-fun lambda!359301 () Int)

(assert (=> bs!1646720 (not (= lambda!359301 lambda!359259))))

(declare-fun bs!1646721 () Bool)

(assert (= bs!1646721 (and b!6489049 d!2035151)))

(assert (=> bs!1646721 (not (= lambda!359301 lambda!359216))))

(declare-fun bs!1646722 () Bool)

(assert (= bs!1646722 (and b!6489049 b!6487593)))

(assert (=> bs!1646722 (= (and (= (reg!16696 (regOne!33247 lt!2388855)) (reg!16696 r!7292)) (= (regOne!33247 lt!2388855) r!7292)) (= lambda!359301 lambda!359195))))

(declare-fun bs!1646723 () Bool)

(assert (= bs!1646723 (and b!6489049 d!2035675)))

(assert (=> bs!1646723 (not (= lambda!359301 lambda!359270))))

(declare-fun bs!1646724 () Bool)

(assert (= bs!1646724 (and b!6489049 b!6486656)))

(assert (=> bs!1646724 (not (= lambda!359301 lambda!359121))))

(declare-fun bs!1646725 () Bool)

(assert (= bs!1646725 (and b!6489049 b!6487561)))

(assert (=> bs!1646725 (= (and (= (reg!16696 (regOne!33247 lt!2388855)) (reg!16696 lt!2388855)) (= (regOne!33247 lt!2388855) lt!2388855)) (= lambda!359301 lambda!359189))))

(declare-fun bs!1646726 () Bool)

(assert (= bs!1646726 (and b!6489049 b!6486655)))

(assert (=> bs!1646726 (not (= lambda!359301 lambda!359119))))

(declare-fun bs!1646730 () Bool)

(assert (= bs!1646730 (and b!6489049 d!2035135)))

(assert (=> bs!1646730 (not (= lambda!359301 lambda!359207))))

(declare-fun bs!1646731 () Bool)

(assert (= bs!1646731 (and b!6489049 d!2035129)))

(assert (=> bs!1646731 (not (= lambda!359301 lambda!359201))))

(assert (=> bs!1646720 (not (= lambda!359301 lambda!359260))))

(declare-fun bs!1646733 () Bool)

(assert (= bs!1646733 (and b!6489049 b!6487626)))

(assert (=> bs!1646733 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regOne!33247 lt!2388855)) (reg!16696 lt!2388865)) (= (regOne!33247 lt!2388855) lt!2388865)) (= lambda!359301 lambda!359203))))

(declare-fun bs!1646735 () Bool)

(assert (= bs!1646735 (and b!6489049 d!2035139)))

(assert (=> bs!1646735 (not (= lambda!359301 lambda!359212))))

(declare-fun bs!1646737 () Bool)

(assert (= bs!1646737 (and b!6489049 b!6488783)))

(assert (=> bs!1646737 (not (= lambda!359301 lambda!359280))))

(assert (=> bs!1646731 (not (= lambda!359301 lambda!359202))))

(declare-fun bs!1646739 () Bool)

(assert (= bs!1646739 (and b!6489049 b!6486638)))

(assert (=> bs!1646739 (not (= lambda!359301 lambda!359123))))

(declare-fun bs!1646741 () Bool)

(assert (= bs!1646741 (and b!6489049 b!6488981)))

(assert (=> bs!1646741 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regOne!33247 lt!2388855)) (reg!16696 (regTwo!33247 lt!2388865))) (= (regOne!33247 lt!2388855) (regTwo!33247 lt!2388865))) (= lambda!359301 lambda!359294))))

(declare-fun bs!1646743 () Bool)

(assert (= bs!1646743 (and b!6489049 d!2035165)))

(assert (=> bs!1646743 (not (= lambda!359301 lambda!359218))))

(declare-fun bs!1646745 () Bool)

(assert (= bs!1646745 (and b!6489049 d!2035221)))

(assert (=> bs!1646745 (not (= lambda!359301 lambda!359231))))

(declare-fun bs!1646746 () Bool)

(assert (= bs!1646746 (and b!6489049 b!6487565)))

(assert (=> bs!1646746 (not (= lambda!359301 lambda!359190))))

(assert (=> bs!1646726 (not (= lambda!359301 lambda!359118))))

(assert (=> bs!1646723 (not (= lambda!359301 lambda!359269))))

(assert (=> bs!1646739 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regOne!33247 lt!2388855)) (reg!16696 (regOne!33246 r!7292))) (= (regOne!33247 lt!2388855) lt!2388865)) (= lambda!359301 lambda!359124))))

(declare-fun bs!1646749 () Bool)

(assert (= bs!1646749 (and b!6489049 d!2035387)))

(assert (=> bs!1646749 (not (= lambda!359301 lambda!359241))))

(assert (=> bs!1646739 (not (= lambda!359301 lambda!359125))))

(assert (=> bs!1646735 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regOne!33247 lt!2388855)) (reg!16696 (regOne!33246 r!7292))) (= (regOne!33247 lt!2388855) (Star!16367 (reg!16696 (regOne!33246 r!7292))))) (= lambda!359301 lambda!359213))))

(declare-fun bs!1646753 () Bool)

(assert (= bs!1646753 (and b!6489049 b!6488777)))

(assert (=> bs!1646753 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regOne!33247 lt!2388855)) (reg!16696 (regOne!33247 lt!2388865))) (= (regOne!33247 lt!2388855) (regOne!33247 lt!2388865))) (= lambda!359301 lambda!359279))))

(declare-fun bs!1646755 () Bool)

(assert (= bs!1646755 (and b!6489049 b!6488119)))

(assert (=> bs!1646755 (not (= lambda!359301 lambda!359234))))

(declare-fun bs!1646756 () Bool)

(assert (= bs!1646756 (and b!6489049 d!2035145)))

(assert (=> bs!1646756 (not (= lambda!359301 lambda!359214))))

(assert (=> bs!1646721 (not (= lambda!359301 lambda!359215))))

(declare-fun bs!1646758 () Bool)

(assert (= bs!1646758 (and b!6489049 b!6488303)))

(assert (=> bs!1646758 (not (= lambda!359301 lambda!359248))))

(assert (=> bs!1646724 (not (= lambda!359301 lambda!359122))))

(assert (=> bs!1646749 (not (= lambda!359301 lambda!359240))))

(declare-fun bs!1646761 () Bool)

(assert (= bs!1646761 (and b!6489049 b!6488115)))

(assert (=> bs!1646761 (= (and (= (reg!16696 (regOne!33247 lt!2388855)) (reg!16696 (regTwo!33247 r!7292))) (= (regOne!33247 lt!2388855) (regTwo!33247 r!7292))) (= lambda!359301 lambda!359233))))

(assert (=> bs!1646743 (not (= lambda!359301 lambda!359219))))

(declare-fun bs!1646762 () Bool)

(assert (= bs!1646762 (and b!6489049 d!2035783)))

(assert (=> bs!1646762 (not (= lambda!359301 lambda!359290))))

(declare-fun bs!1646763 () Bool)

(assert (= bs!1646763 (and b!6489049 b!6488299)))

(assert (=> bs!1646763 (= (and (= (reg!16696 (regOne!33247 lt!2388855)) (reg!16696 (regTwo!33247 lt!2388855))) (= (regOne!33247 lt!2388855) (regTwo!33247 lt!2388855))) (= lambda!359301 lambda!359247))))

(declare-fun bs!1646764 () Bool)

(assert (= bs!1646764 (and b!6489049 b!6488985)))

(assert (=> bs!1646764 (not (= lambda!359301 lambda!359295))))

(declare-fun bs!1646765 () Bool)

(assert (= bs!1646765 (and b!6489049 d!2035161)))

(assert (=> bs!1646765 (not (= lambda!359301 lambda!359217))))

(declare-fun bs!1646766 () Bool)

(assert (= bs!1646766 (and b!6489049 b!6487597)))

(assert (=> bs!1646766 (not (= lambda!359301 lambda!359196))))

(declare-fun bs!1646767 () Bool)

(assert (= bs!1646767 (and b!6489049 d!2035737)))

(assert (=> bs!1646767 (not (= lambda!359301 lambda!359281))))

(declare-fun bs!1646769 () Bool)

(assert (= bs!1646769 (and b!6489049 b!6487630)))

(assert (=> bs!1646769 (not (= lambda!359301 lambda!359204))))

(assert (=> b!6489049 true))

(assert (=> b!6489049 true))

(declare-fun bs!1646776 () Bool)

(declare-fun b!6489053 () Bool)

(assert (= bs!1646776 (and b!6489053 d!2035573)))

(declare-fun lambda!359304 () Int)

(assert (=> bs!1646776 (not (= lambda!359304 lambda!359259))))

(declare-fun bs!1646777 () Bool)

(assert (= bs!1646777 (and b!6489053 d!2035151)))

(assert (=> bs!1646777 (= (and (= (regOne!33246 (regOne!33247 lt!2388855)) (regOne!33246 r!7292)) (= (regTwo!33246 (regOne!33247 lt!2388855)) (regTwo!33246 r!7292))) (= lambda!359304 lambda!359216))))

(declare-fun bs!1646779 () Bool)

(assert (= bs!1646779 (and b!6489053 b!6487593)))

(assert (=> bs!1646779 (not (= lambda!359304 lambda!359195))))

(declare-fun bs!1646781 () Bool)

(assert (= bs!1646781 (and b!6489053 b!6489049)))

(assert (=> bs!1646781 (not (= lambda!359304 lambda!359301))))

(declare-fun bs!1646783 () Bool)

(assert (= bs!1646783 (and b!6489053 d!2035675)))

(assert (=> bs!1646783 (= (and (= (regOne!33246 (regOne!33247 lt!2388855)) (regOne!33246 r!7292)) (= (regTwo!33246 (regOne!33247 lt!2388855)) (regTwo!33246 r!7292))) (= lambda!359304 lambda!359270))))

(declare-fun bs!1646785 () Bool)

(assert (= bs!1646785 (and b!6489053 b!6486656)))

(assert (=> bs!1646785 (not (= lambda!359304 lambda!359121))))

(declare-fun bs!1646786 () Bool)

(assert (= bs!1646786 (and b!6489053 b!6487561)))

(assert (=> bs!1646786 (not (= lambda!359304 lambda!359189))))

(declare-fun bs!1646788 () Bool)

(assert (= bs!1646788 (and b!6489053 b!6486655)))

(assert (=> bs!1646788 (= (and (= (regOne!33246 (regOne!33247 lt!2388855)) (regOne!33246 r!7292)) (= (regTwo!33246 (regOne!33247 lt!2388855)) (regTwo!33246 r!7292))) (= lambda!359304 lambda!359119))))

(declare-fun bs!1646789 () Bool)

(assert (= bs!1646789 (and b!6489053 d!2035135)))

(assert (=> bs!1646789 (not (= lambda!359304 lambda!359207))))

(declare-fun bs!1646791 () Bool)

(assert (= bs!1646791 (and b!6489053 d!2035129)))

(assert (=> bs!1646791 (not (= lambda!359304 lambda!359201))))

(assert (=> bs!1646776 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regOne!33247 lt!2388855)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regOne!33247 lt!2388855)) lt!2388865)) (= lambda!359304 lambda!359260))))

(declare-fun bs!1646793 () Bool)

(assert (= bs!1646793 (and b!6489053 b!6487626)))

(assert (=> bs!1646793 (not (= lambda!359304 lambda!359203))))

(declare-fun bs!1646795 () Bool)

(assert (= bs!1646795 (and b!6489053 d!2035139)))

(assert (=> bs!1646795 (not (= lambda!359304 lambda!359212))))

(declare-fun bs!1646797 () Bool)

(assert (= bs!1646797 (and b!6489053 b!6488783)))

(assert (=> bs!1646797 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regOne!33247 lt!2388855)) (regOne!33246 (regOne!33247 lt!2388865))) (= (regTwo!33246 (regOne!33247 lt!2388855)) (regTwo!33246 (regOne!33247 lt!2388865)))) (= lambda!359304 lambda!359280))))

(assert (=> bs!1646791 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regOne!33247 lt!2388855)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regOne!33247 lt!2388855)) lt!2388865)) (= lambda!359304 lambda!359202))))

(declare-fun bs!1646799 () Bool)

(assert (= bs!1646799 (and b!6489053 b!6486638)))

(assert (=> bs!1646799 (not (= lambda!359304 lambda!359123))))

(declare-fun bs!1646800 () Bool)

(assert (= bs!1646800 (and b!6489053 b!6488981)))

(assert (=> bs!1646800 (not (= lambda!359304 lambda!359294))))

(declare-fun bs!1646802 () Bool)

(assert (= bs!1646802 (and b!6489053 d!2035165)))

(assert (=> bs!1646802 (not (= lambda!359304 lambda!359218))))

(declare-fun bs!1646804 () Bool)

(assert (= bs!1646804 (and b!6489053 d!2035221)))

(assert (=> bs!1646804 (not (= lambda!359304 lambda!359231))))

(declare-fun bs!1646805 () Bool)

(assert (= bs!1646805 (and b!6489053 b!6487565)))

(assert (=> bs!1646805 (= (and (= (regOne!33246 (regOne!33247 lt!2388855)) (regOne!33246 lt!2388855)) (= (regTwo!33246 (regOne!33247 lt!2388855)) (regTwo!33246 lt!2388855))) (= lambda!359304 lambda!359190))))

(assert (=> bs!1646788 (not (= lambda!359304 lambda!359118))))

(assert (=> bs!1646783 (not (= lambda!359304 lambda!359269))))

(assert (=> bs!1646799 (not (= lambda!359304 lambda!359124))))

(declare-fun bs!1646807 () Bool)

(assert (= bs!1646807 (and b!6489053 d!2035387)))

(assert (=> bs!1646807 (= (and (= (regOne!33246 (regOne!33247 lt!2388855)) lt!2388865) (= (regTwo!33246 (regOne!33247 lt!2388855)) (regTwo!33246 r!7292))) (= lambda!359304 lambda!359241))))

(assert (=> bs!1646799 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regOne!33247 lt!2388855)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regOne!33247 lt!2388855)) lt!2388865)) (= lambda!359304 lambda!359125))))

(assert (=> bs!1646795 (not (= lambda!359304 lambda!359213))))

(declare-fun bs!1646808 () Bool)

(assert (= bs!1646808 (and b!6489053 b!6488777)))

(assert (=> bs!1646808 (not (= lambda!359304 lambda!359279))))

(declare-fun bs!1646809 () Bool)

(assert (= bs!1646809 (and b!6489053 b!6488119)))

(assert (=> bs!1646809 (= (and (= (regOne!33246 (regOne!33247 lt!2388855)) (regOne!33246 (regTwo!33247 r!7292))) (= (regTwo!33246 (regOne!33247 lt!2388855)) (regTwo!33246 (regTwo!33247 r!7292)))) (= lambda!359304 lambda!359234))))

(declare-fun bs!1646810 () Bool)

(assert (= bs!1646810 (and b!6489053 d!2035145)))

(assert (=> bs!1646810 (not (= lambda!359304 lambda!359214))))

(assert (=> bs!1646777 (not (= lambda!359304 lambda!359215))))

(declare-fun bs!1646811 () Bool)

(assert (= bs!1646811 (and b!6489053 b!6488303)))

(assert (=> bs!1646811 (= (and (= (regOne!33246 (regOne!33247 lt!2388855)) (regOne!33246 (regTwo!33247 lt!2388855))) (= (regTwo!33246 (regOne!33247 lt!2388855)) (regTwo!33246 (regTwo!33247 lt!2388855)))) (= lambda!359304 lambda!359248))))

(assert (=> bs!1646785 (= (and (= (regOne!33246 (regOne!33247 lt!2388855)) lt!2388865) (= (regTwo!33246 (regOne!33247 lt!2388855)) (regTwo!33246 r!7292))) (= lambda!359304 lambda!359122))))

(assert (=> bs!1646807 (not (= lambda!359304 lambda!359240))))

(declare-fun bs!1646812 () Bool)

(assert (= bs!1646812 (and b!6489053 b!6488115)))

(assert (=> bs!1646812 (not (= lambda!359304 lambda!359233))))

(assert (=> bs!1646802 (= (and (= (regOne!33246 (regOne!33247 lt!2388855)) lt!2388865) (= (regTwo!33246 (regOne!33247 lt!2388855)) (regTwo!33246 r!7292))) (= lambda!359304 lambda!359219))))

(declare-fun bs!1646813 () Bool)

(assert (= bs!1646813 (and b!6489053 d!2035783)))

(assert (=> bs!1646813 (not (= lambda!359304 lambda!359290))))

(declare-fun bs!1646814 () Bool)

(assert (= bs!1646814 (and b!6489053 b!6488299)))

(assert (=> bs!1646814 (not (= lambda!359304 lambda!359247))))

(declare-fun bs!1646815 () Bool)

(assert (= bs!1646815 (and b!6489053 b!6488985)))

(assert (=> bs!1646815 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regOne!33247 lt!2388855)) (regOne!33246 (regTwo!33247 lt!2388865))) (= (regTwo!33246 (regOne!33247 lt!2388855)) (regTwo!33246 (regTwo!33247 lt!2388865)))) (= lambda!359304 lambda!359295))))

(declare-fun bs!1646816 () Bool)

(assert (= bs!1646816 (and b!6489053 d!2035161)))

(assert (=> bs!1646816 (not (= lambda!359304 lambda!359217))))

(declare-fun bs!1646817 () Bool)

(assert (= bs!1646817 (and b!6489053 b!6487597)))

(assert (=> bs!1646817 (= (and (= (regOne!33246 (regOne!33247 lt!2388855)) (regOne!33246 r!7292)) (= (regTwo!33246 (regOne!33247 lt!2388855)) (regTwo!33246 r!7292))) (= lambda!359304 lambda!359196))))

(declare-fun bs!1646818 () Bool)

(assert (= bs!1646818 (and b!6489053 d!2035737)))

(assert (=> bs!1646818 (not (= lambda!359304 lambda!359281))))

(declare-fun bs!1646819 () Bool)

(assert (= bs!1646819 (and b!6489053 b!6487630)))

(assert (=> bs!1646819 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regOne!33247 lt!2388855)) (regOne!33246 lt!2388865)) (= (regTwo!33246 (regOne!33247 lt!2388855)) (regTwo!33246 lt!2388865))) (= lambda!359304 lambda!359204))))

(assert (=> b!6489053 true))

(assert (=> b!6489053 true))

(declare-fun b!6489048 () Bool)

(declare-fun c!1189069 () Bool)

(assert (=> b!6489048 (= c!1189069 ((_ is ElementMatch!16367) (regOne!33247 lt!2388855)))))

(declare-fun e!3932692 () Bool)

(declare-fun e!3932696 () Bool)

(assert (=> b!6489048 (= e!3932692 e!3932696)))

(declare-fun e!3932698 () Bool)

(declare-fun call!561727 () Bool)

(assert (=> b!6489049 (= e!3932698 call!561727)))

(declare-fun b!6489050 () Bool)

(declare-fun e!3932694 () Bool)

(declare-fun call!561726 () Bool)

(assert (=> b!6489050 (= e!3932694 call!561726)))

(declare-fun bm!561721 () Bool)

(assert (=> bm!561721 (= call!561726 (isEmpty!37468 s!2326))))

(declare-fun b!6489051 () Bool)

(declare-fun e!3932695 () Bool)

(assert (=> b!6489051 (= e!3932695 (matchRSpec!3468 (regTwo!33247 (regOne!33247 lt!2388855)) s!2326))))

(declare-fun d!2035855 () Bool)

(declare-fun c!1189067 () Bool)

(assert (=> d!2035855 (= c!1189067 ((_ is EmptyExpr!16367) (regOne!33247 lt!2388855)))))

(assert (=> d!2035855 (= (matchRSpec!3468 (regOne!33247 lt!2388855) s!2326) e!3932694)))

(declare-fun b!6489052 () Bool)

(declare-fun e!3932693 () Bool)

(declare-fun e!3932697 () Bool)

(assert (=> b!6489052 (= e!3932693 e!3932697)))

(declare-fun c!1189068 () Bool)

(assert (=> b!6489052 (= c!1189068 ((_ is Star!16367) (regOne!33247 lt!2388855)))))

(declare-fun bm!561722 () Bool)

(assert (=> bm!561722 (= call!561727 (Exists!3437 (ite c!1189068 lambda!359301 lambda!359304)))))

(assert (=> b!6489053 (= e!3932697 call!561727)))

(declare-fun b!6489054 () Bool)

(declare-fun c!1189066 () Bool)

(assert (=> b!6489054 (= c!1189066 ((_ is Union!16367) (regOne!33247 lt!2388855)))))

(assert (=> b!6489054 (= e!3932696 e!3932693)))

(declare-fun b!6489055 () Bool)

(assert (=> b!6489055 (= e!3932696 (= s!2326 (Cons!65276 (c!1188383 (regOne!33247 lt!2388855)) Nil!65276)))))

(declare-fun b!6489056 () Bool)

(assert (=> b!6489056 (= e!3932693 e!3932695)))

(declare-fun res!2665037 () Bool)

(assert (=> b!6489056 (= res!2665037 (matchRSpec!3468 (regOne!33247 (regOne!33247 lt!2388855)) s!2326))))

(assert (=> b!6489056 (=> res!2665037 e!3932695)))

(declare-fun b!6489057 () Bool)

(declare-fun res!2665036 () Bool)

(assert (=> b!6489057 (=> res!2665036 e!3932698)))

(assert (=> b!6489057 (= res!2665036 call!561726)))

(assert (=> b!6489057 (= e!3932697 e!3932698)))

(declare-fun b!6489058 () Bool)

(assert (=> b!6489058 (= e!3932694 e!3932692)))

(declare-fun res!2665035 () Bool)

(assert (=> b!6489058 (= res!2665035 (not ((_ is EmptyLang!16367) (regOne!33247 lt!2388855))))))

(assert (=> b!6489058 (=> (not res!2665035) (not e!3932692))))

(assert (= (and d!2035855 c!1189067) b!6489050))

(assert (= (and d!2035855 (not c!1189067)) b!6489058))

(assert (= (and b!6489058 res!2665035) b!6489048))

(assert (= (and b!6489048 c!1189069) b!6489055))

(assert (= (and b!6489048 (not c!1189069)) b!6489054))

(assert (= (and b!6489054 c!1189066) b!6489056))

(assert (= (and b!6489054 (not c!1189066)) b!6489052))

(assert (= (and b!6489056 (not res!2665037)) b!6489051))

(assert (= (and b!6489052 c!1189068) b!6489057))

(assert (= (and b!6489052 (not c!1189068)) b!6489053))

(assert (= (and b!6489057 (not res!2665036)) b!6489049))

(assert (= (or b!6489049 b!6489053) bm!561722))

(assert (= (or b!6489050 b!6489057) bm!561721))

(assert (=> bm!561721 m!7275886))

(declare-fun m!7277718 () Bool)

(assert (=> b!6489051 m!7277718))

(declare-fun m!7277720 () Bool)

(assert (=> bm!561722 m!7277720))

(declare-fun m!7277722 () Bool)

(assert (=> b!6489056 m!7277722))

(assert (=> b!6487568 d!2035855))

(declare-fun d!2035877 () Bool)

(declare-fun lt!2389231 () Int)

(assert (=> d!2035877 (>= lt!2389231 0)))

(declare-fun e!3932715 () Int)

(assert (=> d!2035877 (= lt!2389231 e!3932715)))

(declare-fun c!1189076 () Bool)

(assert (=> d!2035877 (= c!1189076 ((_ is Nil!65276) lt!2389104))))

(assert (=> d!2035877 (= (size!40424 lt!2389104) lt!2389231)))

(declare-fun b!6489081 () Bool)

(assert (=> b!6489081 (= e!3932715 0)))

(declare-fun b!6489082 () Bool)

(assert (=> b!6489082 (= e!3932715 (+ 1 (size!40424 (t!379026 lt!2389104))))))

(assert (= (and d!2035877 c!1189076) b!6489081))

(assert (= (and d!2035877 (not c!1189076)) b!6489082))

(declare-fun m!7277728 () Bool)

(assert (=> b!6489082 m!7277728))

(assert (=> b!6487692 d!2035877))

(declare-fun d!2035883 () Bool)

(declare-fun lt!2389232 () Int)

(assert (=> d!2035883 (>= lt!2389232 0)))

(declare-fun e!3932716 () Int)

(assert (=> d!2035883 (= lt!2389232 e!3932716)))

(declare-fun c!1189077 () Bool)

(assert (=> d!2035883 (= c!1189077 ((_ is Nil!65276) (_1!36649 lt!2388900)))))

(assert (=> d!2035883 (= (size!40424 (_1!36649 lt!2388900)) lt!2389232)))

(declare-fun b!6489083 () Bool)

(assert (=> b!6489083 (= e!3932716 0)))

(declare-fun b!6489084 () Bool)

(assert (=> b!6489084 (= e!3932716 (+ 1 (size!40424 (t!379026 (_1!36649 lt!2388900)))))))

(assert (= (and d!2035883 c!1189077) b!6489083))

(assert (= (and d!2035883 (not c!1189077)) b!6489084))

(assert (=> b!6489084 m!7276372))

(assert (=> b!6487692 d!2035883))

(assert (=> b!6487692 d!2035451))

(declare-fun b!6489085 () Bool)

(declare-fun e!3932718 () Bool)

(declare-fun call!561734 () Bool)

(assert (=> b!6489085 (= e!3932718 call!561734)))

(declare-fun b!6489086 () Bool)

(declare-fun e!3932721 () Bool)

(declare-fun e!3932717 () Bool)

(assert (=> b!6489086 (= e!3932721 e!3932717)))

(declare-fun c!1189078 () Bool)

(assert (=> b!6489086 (= c!1189078 ((_ is Star!16367) lt!2389031))))

(declare-fun d!2035885 () Bool)

(declare-fun res!2665051 () Bool)

(assert (=> d!2035885 (=> res!2665051 e!3932721)))

(assert (=> d!2035885 (= res!2665051 ((_ is ElementMatch!16367) lt!2389031))))

(assert (=> d!2035885 (= (validRegex!8103 lt!2389031) e!3932721)))

(declare-fun bm!561728 () Bool)

(declare-fun call!561735 () Bool)

(declare-fun c!1189079 () Bool)

(assert (=> bm!561728 (= call!561735 (validRegex!8103 (ite c!1189079 (regOne!33247 lt!2389031) (regOne!33246 lt!2389031))))))

(declare-fun b!6489087 () Bool)

(declare-fun res!2665052 () Bool)

(declare-fun e!3932720 () Bool)

(assert (=> b!6489087 (=> res!2665052 e!3932720)))

(assert (=> b!6489087 (= res!2665052 (not ((_ is Concat!25212) lt!2389031)))))

(declare-fun e!3932719 () Bool)

(assert (=> b!6489087 (= e!3932719 e!3932720)))

(declare-fun b!6489088 () Bool)

(declare-fun e!3932722 () Bool)

(assert (=> b!6489088 (= e!3932722 call!561734)))

(declare-fun bm!561729 () Bool)

(declare-fun call!561733 () Bool)

(assert (=> bm!561729 (= call!561733 (validRegex!8103 (ite c!1189078 (reg!16696 lt!2389031) (ite c!1189079 (regTwo!33247 lt!2389031) (regTwo!33246 lt!2389031)))))))

(declare-fun b!6489089 () Bool)

(declare-fun res!2665050 () Bool)

(assert (=> b!6489089 (=> (not res!2665050) (not e!3932722))))

(assert (=> b!6489089 (= res!2665050 call!561735)))

(assert (=> b!6489089 (= e!3932719 e!3932722)))

(declare-fun b!6489090 () Bool)

(assert (=> b!6489090 (= e!3932717 e!3932719)))

(assert (=> b!6489090 (= c!1189079 ((_ is Union!16367) lt!2389031))))

(declare-fun bm!561730 () Bool)

(assert (=> bm!561730 (= call!561734 call!561733)))

(declare-fun b!6489091 () Bool)

(declare-fun e!3932723 () Bool)

(assert (=> b!6489091 (= e!3932723 call!561733)))

(declare-fun b!6489092 () Bool)

(assert (=> b!6489092 (= e!3932717 e!3932723)))

(declare-fun res!2665049 () Bool)

(assert (=> b!6489092 (= res!2665049 (not (nullable!6360 (reg!16696 lt!2389031))))))

(assert (=> b!6489092 (=> (not res!2665049) (not e!3932723))))

(declare-fun b!6489093 () Bool)

(assert (=> b!6489093 (= e!3932720 e!3932718)))

(declare-fun res!2665048 () Bool)

(assert (=> b!6489093 (=> (not res!2665048) (not e!3932718))))

(assert (=> b!6489093 (= res!2665048 call!561735)))

(assert (= (and d!2035885 (not res!2665051)) b!6489086))

(assert (= (and b!6489086 c!1189078) b!6489092))

(assert (= (and b!6489086 (not c!1189078)) b!6489090))

(assert (= (and b!6489092 res!2665049) b!6489091))

(assert (= (and b!6489090 c!1189079) b!6489089))

(assert (= (and b!6489090 (not c!1189079)) b!6489087))

(assert (= (and b!6489089 res!2665050) b!6489088))

(assert (= (and b!6489087 (not res!2665052)) b!6489093))

(assert (= (and b!6489093 res!2665048) b!6489085))

(assert (= (or b!6489088 b!6489085) bm!561730))

(assert (= (or b!6489089 b!6489093) bm!561728))

(assert (= (or b!6489091 bm!561730) bm!561729))

(declare-fun m!7277730 () Bool)

(assert (=> bm!561728 m!7277730))

(declare-fun m!7277732 () Bool)

(assert (=> bm!561729 m!7277732))

(declare-fun m!7277734 () Bool)

(assert (=> b!6489092 m!7277734))

(assert (=> d!2035023 d!2035885))

(declare-fun bs!1646820 () Bool)

(declare-fun d!2035887 () Bool)

(assert (= bs!1646820 (and d!2035887 d!2035473)))

(declare-fun lambda!359305 () Int)

(assert (=> bs!1646820 (= lambda!359305 lambda!359251)))

(declare-fun bs!1646821 () Bool)

(assert (= bs!1646821 (and d!2035887 d!2035183)))

(assert (=> bs!1646821 (= lambda!359305 lambda!359225)))

(declare-fun bs!1646822 () Bool)

(assert (= bs!1646822 (and d!2035887 d!2035173)))

(assert (=> bs!1646822 (= lambda!359305 lambda!359222)))

(declare-fun bs!1646823 () Bool)

(assert (= bs!1646823 (and d!2035887 d!2035185)))

(assert (=> bs!1646823 (= lambda!359305 lambda!359228)))

(declare-fun bs!1646824 () Bool)

(assert (= bs!1646824 (and d!2035887 d!2035009)))

(assert (=> bs!1646824 (= lambda!359305 lambda!359178)))

(declare-fun bs!1646825 () Bool)

(assert (= bs!1646825 (and d!2035887 d!2035597)))

(assert (=> bs!1646825 (= lambda!359305 lambda!359266)))

(declare-fun bs!1646826 () Bool)

(assert (= bs!1646826 (and d!2035887 d!2035471)))

(assert (=> bs!1646826 (= lambda!359305 lambda!359250)))

(declare-fun bs!1646827 () Bool)

(assert (= bs!1646827 (and d!2035887 d!2035379)))

(assert (=> bs!1646827 (= lambda!359305 lambda!359235)))

(declare-fun bs!1646828 () Bool)

(assert (= bs!1646828 (and d!2035887 d!2035481)))

(assert (=> bs!1646828 (= lambda!359305 lambda!359252)))

(declare-fun bs!1646829 () Bool)

(assert (= bs!1646829 (and d!2035887 d!2035073)))

(assert (=> bs!1646829 (= lambda!359305 lambda!359181)))

(declare-fun bs!1646830 () Bool)

(assert (= bs!1646830 (and d!2035887 d!2035109)))

(assert (=> bs!1646830 (= lambda!359305 lambda!359194)))

(declare-fun bs!1646831 () Bool)

(assert (= bs!1646831 (and d!2035887 d!2035483)))

(assert (=> bs!1646831 (= lambda!359305 lambda!359253)))

(declare-fun bs!1646832 () Bool)

(assert (= bs!1646832 (and d!2035887 b!6486640)))

(assert (=> bs!1646832 (= lambda!359305 lambda!359126)))

(declare-fun bs!1646833 () Bool)

(assert (= bs!1646833 (and d!2035887 d!2035711)))

(assert (=> bs!1646833 (= lambda!359305 lambda!359275)))

(declare-fun bs!1646834 () Bool)

(assert (= bs!1646834 (and d!2035887 d!2035453)))

(assert (=> bs!1646834 (= lambda!359305 lambda!359249)))

(declare-fun bs!1646835 () Bool)

(assert (= bs!1646835 (and d!2035887 d!2035829)))

(assert (=> bs!1646835 (= lambda!359305 lambda!359298)))

(declare-fun bs!1646836 () Bool)

(assert (= bs!1646836 (and d!2035887 d!2035083)))

(assert (=> bs!1646836 (= lambda!359305 lambda!359184)))

(declare-fun bs!1646837 () Bool)

(assert (= bs!1646837 (and d!2035887 d!2035745)))

(assert (=> bs!1646837 (= lambda!359305 lambda!359286)))

(declare-fun b!6489098 () Bool)

(declare-fun e!3932731 () Bool)

(assert (=> b!6489098 (= e!3932731 (isEmpty!37470 (t!379027 (unfocusZipperList!1788 lt!2388883))))))

(declare-fun b!6489099 () Bool)

(declare-fun e!3932730 () Bool)

(declare-fun lt!2389233 () Regex!16367)

(assert (=> b!6489099 (= e!3932730 (= lt!2389233 (head!13210 (unfocusZipperList!1788 lt!2388883))))))

(declare-fun b!6489100 () Bool)

(assert (=> b!6489100 (= e!3932730 (isUnion!1197 lt!2389233))))

(declare-fun b!6489101 () Bool)

(declare-fun e!3932728 () Regex!16367)

(assert (=> b!6489101 (= e!3932728 (h!71725 (unfocusZipperList!1788 lt!2388883)))))

(declare-fun b!6489102 () Bool)

(declare-fun e!3932732 () Bool)

(declare-fun e!3932733 () Bool)

(assert (=> b!6489102 (= e!3932732 e!3932733)))

(declare-fun c!1189080 () Bool)

(assert (=> b!6489102 (= c!1189080 (isEmpty!37470 (unfocusZipperList!1788 lt!2388883)))))

(declare-fun b!6489103 () Bool)

(assert (=> b!6489103 (= e!3932733 e!3932730)))

(declare-fun c!1189082 () Bool)

(assert (=> b!6489103 (= c!1189082 (isEmpty!37470 (tail!12295 (unfocusZipperList!1788 lt!2388883))))))

(assert (=> d!2035887 e!3932732))

(declare-fun res!2665058 () Bool)

(assert (=> d!2035887 (=> (not res!2665058) (not e!3932732))))

(assert (=> d!2035887 (= res!2665058 (validRegex!8103 lt!2389233))))

(assert (=> d!2035887 (= lt!2389233 e!3932728)))

(declare-fun c!1189081 () Bool)

(assert (=> d!2035887 (= c!1189081 e!3932731)))

(declare-fun res!2665057 () Bool)

(assert (=> d!2035887 (=> (not res!2665057) (not e!3932731))))

(assert (=> d!2035887 (= res!2665057 ((_ is Cons!65277) (unfocusZipperList!1788 lt!2388883)))))

(assert (=> d!2035887 (forall!15550 (unfocusZipperList!1788 lt!2388883) lambda!359305)))

(assert (=> d!2035887 (= (generalisedUnion!2211 (unfocusZipperList!1788 lt!2388883)) lt!2389233)))

(declare-fun b!6489104 () Bool)

(declare-fun e!3932729 () Regex!16367)

(assert (=> b!6489104 (= e!3932729 EmptyLang!16367)))

(declare-fun b!6489105 () Bool)

(assert (=> b!6489105 (= e!3932729 (Union!16367 (h!71725 (unfocusZipperList!1788 lt!2388883)) (generalisedUnion!2211 (t!379027 (unfocusZipperList!1788 lt!2388883)))))))

(declare-fun b!6489106 () Bool)

(assert (=> b!6489106 (= e!3932728 e!3932729)))

(declare-fun c!1189083 () Bool)

(assert (=> b!6489106 (= c!1189083 ((_ is Cons!65277) (unfocusZipperList!1788 lt!2388883)))))

(declare-fun b!6489107 () Bool)

(assert (=> b!6489107 (= e!3932733 (isEmptyLang!1767 lt!2389233))))

(assert (= (and d!2035887 res!2665057) b!6489098))

(assert (= (and d!2035887 c!1189081) b!6489101))

(assert (= (and d!2035887 (not c!1189081)) b!6489106))

(assert (= (and b!6489106 c!1189083) b!6489105))

(assert (= (and b!6489106 (not c!1189083)) b!6489104))

(assert (= (and d!2035887 res!2665058) b!6489102))

(assert (= (and b!6489102 c!1189080) b!6489107))

(assert (= (and b!6489102 (not c!1189080)) b!6489103))

(assert (= (and b!6489103 c!1189082) b!6489099))

(assert (= (and b!6489103 (not c!1189082)) b!6489100))

(declare-fun m!7277740 () Bool)

(assert (=> d!2035887 m!7277740))

(assert (=> d!2035887 m!7275774))

(declare-fun m!7277742 () Bool)

(assert (=> d!2035887 m!7277742))

(assert (=> b!6489102 m!7275774))

(declare-fun m!7277744 () Bool)

(assert (=> b!6489102 m!7277744))

(assert (=> b!6489099 m!7275774))

(declare-fun m!7277746 () Bool)

(assert (=> b!6489099 m!7277746))

(declare-fun m!7277748 () Bool)

(assert (=> b!6489107 m!7277748))

(assert (=> b!6489103 m!7275774))

(declare-fun m!7277750 () Bool)

(assert (=> b!6489103 m!7277750))

(assert (=> b!6489103 m!7277750))

(declare-fun m!7277752 () Bool)

(assert (=> b!6489103 m!7277752))

(declare-fun m!7277754 () Bool)

(assert (=> b!6489100 m!7277754))

(declare-fun m!7277756 () Bool)

(assert (=> b!6489105 m!7277756))

(declare-fun m!7277758 () Bool)

(assert (=> b!6489098 m!7277758))

(assert (=> d!2035023 d!2035887))

(declare-fun bs!1646838 () Bool)

(declare-fun d!2035891 () Bool)

(assert (= bs!1646838 (and d!2035891 d!2035473)))

(declare-fun lambda!359306 () Int)

(assert (=> bs!1646838 (= lambda!359306 lambda!359251)))

(declare-fun bs!1646839 () Bool)

(assert (= bs!1646839 (and d!2035891 d!2035183)))

(assert (=> bs!1646839 (= lambda!359306 lambda!359225)))

(declare-fun bs!1646840 () Bool)

(assert (= bs!1646840 (and d!2035891 d!2035173)))

(assert (=> bs!1646840 (= lambda!359306 lambda!359222)))

(declare-fun bs!1646841 () Bool)

(assert (= bs!1646841 (and d!2035891 d!2035185)))

(assert (=> bs!1646841 (= lambda!359306 lambda!359228)))

(declare-fun bs!1646842 () Bool)

(assert (= bs!1646842 (and d!2035891 d!2035009)))

(assert (=> bs!1646842 (= lambda!359306 lambda!359178)))

(declare-fun bs!1646843 () Bool)

(assert (= bs!1646843 (and d!2035891 d!2035597)))

(assert (=> bs!1646843 (= lambda!359306 lambda!359266)))

(declare-fun bs!1646844 () Bool)

(assert (= bs!1646844 (and d!2035891 d!2035471)))

(assert (=> bs!1646844 (= lambda!359306 lambda!359250)))

(declare-fun bs!1646845 () Bool)

(assert (= bs!1646845 (and d!2035891 d!2035379)))

(assert (=> bs!1646845 (= lambda!359306 lambda!359235)))

(declare-fun bs!1646846 () Bool)

(assert (= bs!1646846 (and d!2035891 d!2035887)))

(assert (=> bs!1646846 (= lambda!359306 lambda!359305)))

(declare-fun bs!1646847 () Bool)

(assert (= bs!1646847 (and d!2035891 d!2035481)))

(assert (=> bs!1646847 (= lambda!359306 lambda!359252)))

(declare-fun bs!1646848 () Bool)

(assert (= bs!1646848 (and d!2035891 d!2035073)))

(assert (=> bs!1646848 (= lambda!359306 lambda!359181)))

(declare-fun bs!1646849 () Bool)

(assert (= bs!1646849 (and d!2035891 d!2035109)))

(assert (=> bs!1646849 (= lambda!359306 lambda!359194)))

(declare-fun bs!1646850 () Bool)

(assert (= bs!1646850 (and d!2035891 d!2035483)))

(assert (=> bs!1646850 (= lambda!359306 lambda!359253)))

(declare-fun bs!1646851 () Bool)

(assert (= bs!1646851 (and d!2035891 b!6486640)))

(assert (=> bs!1646851 (= lambda!359306 lambda!359126)))

(declare-fun bs!1646852 () Bool)

(assert (= bs!1646852 (and d!2035891 d!2035711)))

(assert (=> bs!1646852 (= lambda!359306 lambda!359275)))

(declare-fun bs!1646853 () Bool)

(assert (= bs!1646853 (and d!2035891 d!2035453)))

(assert (=> bs!1646853 (= lambda!359306 lambda!359249)))

(declare-fun bs!1646854 () Bool)

(assert (= bs!1646854 (and d!2035891 d!2035829)))

(assert (=> bs!1646854 (= lambda!359306 lambda!359298)))

(declare-fun bs!1646855 () Bool)

(assert (= bs!1646855 (and d!2035891 d!2035083)))

(assert (=> bs!1646855 (= lambda!359306 lambda!359184)))

(declare-fun bs!1646857 () Bool)

(assert (= bs!1646857 (and d!2035891 d!2035745)))

(assert (=> bs!1646857 (= lambda!359306 lambda!359286)))

(declare-fun lt!2389234 () List!65401)

(assert (=> d!2035891 (forall!15550 lt!2389234 lambda!359306)))

(declare-fun e!3932742 () List!65401)

(assert (=> d!2035891 (= lt!2389234 e!3932742)))

(declare-fun c!1189084 () Bool)

(assert (=> d!2035891 (= c!1189084 ((_ is Cons!65278) lt!2388883))))

(assert (=> d!2035891 (= (unfocusZipperList!1788 lt!2388883) lt!2389234)))

(declare-fun b!6489116 () Bool)

(assert (=> b!6489116 (= e!3932742 (Cons!65277 (generalisedConcat!1964 (exprs!6251 (h!71726 lt!2388883))) (unfocusZipperList!1788 (t!379028 lt!2388883))))))

(declare-fun b!6489117 () Bool)

(assert (=> b!6489117 (= e!3932742 Nil!65277)))

(assert (= (and d!2035891 c!1189084) b!6489116))

(assert (= (and d!2035891 (not c!1189084)) b!6489117))

(declare-fun m!7277768 () Bool)

(assert (=> d!2035891 m!7277768))

(declare-fun m!7277770 () Bool)

(assert (=> b!6489116 m!7277770))

(declare-fun m!7277772 () Bool)

(assert (=> b!6489116 m!7277772))

(assert (=> d!2035023 d!2035891))

(declare-fun d!2035899 () Bool)

(assert (=> d!2035899 (= (Exists!3437 lambda!359212) (choose!48164 lambda!359212))))

(declare-fun bs!1646858 () Bool)

(assert (= bs!1646858 d!2035899))

(declare-fun m!7277774 () Bool)

(assert (=> bs!1646858 m!7277774))

(assert (=> d!2035139 d!2035899))

(declare-fun d!2035901 () Bool)

(assert (=> d!2035901 (= (Exists!3437 lambda!359213) (choose!48164 lambda!359213))))

(declare-fun bs!1646859 () Bool)

(assert (= bs!1646859 d!2035901))

(declare-fun m!7277776 () Bool)

(assert (=> bs!1646859 m!7277776))

(assert (=> d!2035139 d!2035901))

(declare-fun bs!1646872 () Bool)

(declare-fun d!2035903 () Bool)

(assert (= bs!1646872 (and d!2035903 d!2035573)))

(declare-fun lambda!359314 () Int)

(assert (=> bs!1646872 (= (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) lt!2388865) (= lambda!359314 lambda!359259))))

(declare-fun bs!1646873 () Bool)

(assert (= bs!1646873 (and d!2035903 d!2035151)))

(assert (=> bs!1646873 (not (= lambda!359314 lambda!359216))))

(declare-fun bs!1646874 () Bool)

(assert (= bs!1646874 (and d!2035903 b!6487593)))

(assert (=> bs!1646874 (not (= lambda!359314 lambda!359195))))

(declare-fun bs!1646875 () Bool)

(assert (= bs!1646875 (and d!2035903 b!6489049)))

(assert (=> bs!1646875 (not (= lambda!359314 lambda!359301))))

(declare-fun bs!1646876 () Bool)

(assert (= bs!1646876 (and d!2035903 d!2035675)))

(assert (=> bs!1646876 (not (= lambda!359314 lambda!359270))))

(declare-fun bs!1646877 () Bool)

(assert (= bs!1646877 (and d!2035903 b!6486656)))

(assert (=> bs!1646877 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regTwo!33246 r!7292))) (= lambda!359314 lambda!359121))))

(declare-fun bs!1646878 () Bool)

(assert (= bs!1646878 (and d!2035903 b!6487561)))

(assert (=> bs!1646878 (not (= lambda!359314 lambda!359189))))

(declare-fun bs!1646879 () Bool)

(assert (= bs!1646879 (and d!2035903 b!6486655)))

(assert (=> bs!1646879 (not (= lambda!359314 lambda!359119))))

(declare-fun bs!1646880 () Bool)

(assert (= bs!1646880 (and d!2035903 d!2035135)))

(assert (=> bs!1646880 (= (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) lt!2388865) (= lambda!359314 lambda!359207))))

(declare-fun bs!1646881 () Bool)

(assert (= bs!1646881 (and d!2035903 d!2035129)))

(assert (=> bs!1646881 (= (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) lt!2388865) (= lambda!359314 lambda!359201))))

(assert (=> bs!1646872 (not (= lambda!359314 lambda!359260))))

(declare-fun bs!1646883 () Bool)

(assert (= bs!1646883 (and d!2035903 b!6487626)))

(assert (=> bs!1646883 (not (= lambda!359314 lambda!359203))))

(declare-fun bs!1646884 () Bool)

(assert (= bs!1646884 (and d!2035903 d!2035139)))

(assert (=> bs!1646884 (= lambda!359314 lambda!359212)))

(declare-fun bs!1646885 () Bool)

(assert (= bs!1646885 (and d!2035903 b!6488783)))

(assert (=> bs!1646885 (not (= lambda!359314 lambda!359280))))

(assert (=> bs!1646881 (not (= lambda!359314 lambda!359202))))

(declare-fun bs!1646886 () Bool)

(assert (= bs!1646886 (and d!2035903 b!6486638)))

(assert (=> bs!1646886 (= (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) lt!2388865) (= lambda!359314 lambda!359123))))

(declare-fun bs!1646887 () Bool)

(assert (= bs!1646887 (and d!2035903 b!6488981)))

(assert (=> bs!1646887 (not (= lambda!359314 lambda!359294))))

(declare-fun bs!1646888 () Bool)

(assert (= bs!1646888 (and d!2035903 d!2035165)))

(assert (=> bs!1646888 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regTwo!33246 r!7292))) (= lambda!359314 lambda!359218))))

(declare-fun bs!1646889 () Bool)

(assert (= bs!1646889 (and d!2035903 d!2035221)))

(assert (=> bs!1646889 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regTwo!33246 r!7292))) (= lambda!359314 lambda!359231))))

(declare-fun bs!1646890 () Bool)

(assert (= bs!1646890 (and d!2035903 b!6487565)))

(assert (=> bs!1646890 (not (= lambda!359314 lambda!359190))))

(assert (=> bs!1646879 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regTwo!33246 r!7292))) (= lambda!359314 lambda!359118))))

(assert (=> bs!1646876 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regTwo!33246 r!7292))) (= lambda!359314 lambda!359269))))

(assert (=> bs!1646886 (not (= lambda!359314 lambda!359124))))

(declare-fun bs!1646891 () Bool)

(assert (= bs!1646891 (and d!2035903 d!2035387)))

(assert (=> bs!1646891 (not (= lambda!359314 lambda!359241))))

(assert (=> bs!1646886 (not (= lambda!359314 lambda!359125))))

(assert (=> bs!1646884 (not (= lambda!359314 lambda!359213))))

(declare-fun bs!1646892 () Bool)

(assert (= bs!1646892 (and d!2035903 b!6488777)))

(assert (=> bs!1646892 (not (= lambda!359314 lambda!359279))))

(declare-fun bs!1646893 () Bool)

(assert (= bs!1646893 (and d!2035903 b!6488119)))

(assert (=> bs!1646893 (not (= lambda!359314 lambda!359234))))

(declare-fun bs!1646894 () Bool)

(assert (= bs!1646894 (and d!2035903 d!2035145)))

(assert (=> bs!1646894 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regTwo!33246 r!7292))) (= lambda!359314 lambda!359214))))

(assert (=> bs!1646873 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regTwo!33246 r!7292))) (= lambda!359314 lambda!359215))))

(declare-fun bs!1646895 () Bool)

(assert (= bs!1646895 (and d!2035903 b!6489053)))

(assert (=> bs!1646895 (not (= lambda!359314 lambda!359304))))

(declare-fun bs!1646896 () Bool)

(assert (= bs!1646896 (and d!2035903 b!6488303)))

(assert (=> bs!1646896 (not (= lambda!359314 lambda!359248))))

(assert (=> bs!1646877 (not (= lambda!359314 lambda!359122))))

(assert (=> bs!1646891 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regTwo!33246 r!7292))) (= lambda!359314 lambda!359240))))

(declare-fun bs!1646897 () Bool)

(assert (= bs!1646897 (and d!2035903 b!6488115)))

(assert (=> bs!1646897 (not (= lambda!359314 lambda!359233))))

(assert (=> bs!1646888 (not (= lambda!359314 lambda!359219))))

(declare-fun bs!1646898 () Bool)

(assert (= bs!1646898 (and d!2035903 d!2035783)))

(assert (=> bs!1646898 (= (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) lt!2388865) (= lambda!359314 lambda!359290))))

(declare-fun bs!1646899 () Bool)

(assert (= bs!1646899 (and d!2035903 b!6488299)))

(assert (=> bs!1646899 (not (= lambda!359314 lambda!359247))))

(declare-fun bs!1646900 () Bool)

(assert (= bs!1646900 (and d!2035903 b!6488985)))

(assert (=> bs!1646900 (not (= lambda!359314 lambda!359295))))

(declare-fun bs!1646901 () Bool)

(assert (= bs!1646901 (and d!2035903 d!2035161)))

(assert (=> bs!1646901 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) lt!2388865) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regTwo!33246 r!7292))) (= lambda!359314 lambda!359217))))

(declare-fun bs!1646902 () Bool)

(assert (= bs!1646902 (and d!2035903 b!6487597)))

(assert (=> bs!1646902 (not (= lambda!359314 lambda!359196))))

(declare-fun bs!1646903 () Bool)

(assert (= bs!1646903 (and d!2035903 d!2035737)))

(assert (=> bs!1646903 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (regOne!33246 r!7292)) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regTwo!33246 r!7292))) (= lambda!359314 lambda!359281))))

(declare-fun bs!1646904 () Bool)

(assert (= bs!1646904 (and d!2035903 b!6487630)))

(assert (=> bs!1646904 (not (= lambda!359314 lambda!359204))))

(assert (=> d!2035903 true))

(assert (=> d!2035903 true))

(declare-fun lambda!359315 () Int)

(assert (=> bs!1646872 (not (= lambda!359315 lambda!359259))))

(assert (=> bs!1646873 (not (= lambda!359315 lambda!359216))))

(assert (=> bs!1646874 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (reg!16696 r!7292)) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) r!7292)) (= lambda!359315 lambda!359195))))

(assert (=> bs!1646875 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (reg!16696 (regOne!33247 lt!2388855))) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regOne!33247 lt!2388855))) (= lambda!359315 lambda!359301))))

(assert (=> bs!1646876 (not (= lambda!359315 lambda!359270))))

(assert (=> bs!1646877 (not (= lambda!359315 lambda!359121))))

(assert (=> bs!1646878 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (reg!16696 lt!2388855)) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) lt!2388855)) (= lambda!359315 lambda!359189))))

(assert (=> bs!1646879 (not (= lambda!359315 lambda!359119))))

(assert (=> bs!1646880 (not (= lambda!359315 lambda!359207))))

(assert (=> bs!1646881 (not (= lambda!359315 lambda!359201))))

(assert (=> bs!1646872 (not (= lambda!359315 lambda!359260))))

(assert (=> bs!1646883 (= (and (= (reg!16696 (regOne!33246 r!7292)) (reg!16696 lt!2388865)) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) lt!2388865)) (= lambda!359315 lambda!359203))))

(assert (=> bs!1646884 (not (= lambda!359315 lambda!359212))))

(assert (=> bs!1646885 (not (= lambda!359315 lambda!359280))))

(assert (=> bs!1646881 (not (= lambda!359315 lambda!359202))))

(assert (=> bs!1646886 (not (= lambda!359315 lambda!359123))))

(assert (=> bs!1646887 (= (and (= (reg!16696 (regOne!33246 r!7292)) (reg!16696 (regTwo!33247 lt!2388865))) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regTwo!33247 lt!2388865))) (= lambda!359315 lambda!359294))))

(assert (=> bs!1646888 (not (= lambda!359315 lambda!359218))))

(assert (=> bs!1646889 (not (= lambda!359315 lambda!359231))))

(assert (=> bs!1646890 (not (= lambda!359315 lambda!359190))))

(assert (=> bs!1646879 (not (= lambda!359315 lambda!359118))))

(assert (=> bs!1646876 (not (= lambda!359315 lambda!359269))))

(declare-fun bs!1646905 () Bool)

(assert (= bs!1646905 d!2035903))

(assert (=> bs!1646905 (not (= lambda!359315 lambda!359314))))

(assert (=> bs!1646886 (= (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) lt!2388865) (= lambda!359315 lambda!359124))))

(assert (=> bs!1646891 (not (= lambda!359315 lambda!359241))))

(assert (=> bs!1646886 (not (= lambda!359315 lambda!359125))))

(assert (=> bs!1646884 (= lambda!359315 lambda!359213)))

(assert (=> bs!1646892 (= (and (= (reg!16696 (regOne!33246 r!7292)) (reg!16696 (regOne!33247 lt!2388865))) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regOne!33247 lt!2388865))) (= lambda!359315 lambda!359279))))

(assert (=> bs!1646893 (not (= lambda!359315 lambda!359234))))

(assert (=> bs!1646894 (not (= lambda!359315 lambda!359214))))

(assert (=> bs!1646873 (not (= lambda!359315 lambda!359215))))

(assert (=> bs!1646895 (not (= lambda!359315 lambda!359304))))

(assert (=> bs!1646896 (not (= lambda!359315 lambda!359248))))

(assert (=> bs!1646877 (not (= lambda!359315 lambda!359122))))

(assert (=> bs!1646891 (not (= lambda!359315 lambda!359240))))

(assert (=> bs!1646897 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (reg!16696 (regTwo!33247 r!7292))) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regTwo!33247 r!7292))) (= lambda!359315 lambda!359233))))

(assert (=> bs!1646888 (not (= lambda!359315 lambda!359219))))

(assert (=> bs!1646898 (not (= lambda!359315 lambda!359290))))

(assert (=> bs!1646899 (= (and (= (_1!36649 lt!2388900) s!2326) (= (reg!16696 (regOne!33246 r!7292)) (reg!16696 (regTwo!33247 lt!2388855))) (= (Star!16367 (reg!16696 (regOne!33246 r!7292))) (regTwo!33247 lt!2388855))) (= lambda!359315 lambda!359247))))

(assert (=> bs!1646900 (not (= lambda!359315 lambda!359295))))

(assert (=> bs!1646901 (not (= lambda!359315 lambda!359217))))

(assert (=> bs!1646902 (not (= lambda!359315 lambda!359196))))

(assert (=> bs!1646903 (not (= lambda!359315 lambda!359281))))

(assert (=> bs!1646904 (not (= lambda!359315 lambda!359204))))

(assert (=> d!2035903 true))

(assert (=> d!2035903 true))

(assert (=> d!2035903 (= (Exists!3437 lambda!359314) (Exists!3437 lambda!359315))))

(assert (=> d!2035903 true))

(declare-fun _$91!605 () Unit!158799)

(assert (=> d!2035903 (= (choose!48167 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388900)) _$91!605)))

(declare-fun m!7277866 () Bool)

(assert (=> bs!1646905 m!7277866))

(declare-fun m!7277868 () Bool)

(assert (=> bs!1646905 m!7277868))

(assert (=> d!2035139 d!2035903))

(assert (=> d!2035139 d!2035253))

(assert (=> d!2035075 d!2035033))

(assert (=> d!2035075 d!2035067))

(declare-fun d!2035949 () Bool)

(assert (=> d!2035949 (= (matchR!8550 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388858)) (matchZipper!2379 lt!2388878 (_1!36649 lt!2388858)))))

(assert (=> d!2035949 true))

(declare-fun _$44!1665 () Unit!158799)

(assert (=> d!2035949 (= (choose!48157 lt!2388878 lt!2388883 (reg!16696 (regOne!33246 r!7292)) (_1!36649 lt!2388858)) _$44!1665)))

(declare-fun bs!1646917 () Bool)

(assert (= bs!1646917 d!2035949))

(assert (=> bs!1646917 m!7275092))

(assert (=> bs!1646917 m!7274960))

(assert (=> d!2035075 d!2035949))

(assert (=> d!2035075 d!2035253))

(declare-fun d!2035951 () Bool)

(assert (=> d!2035951 (= (head!13210 (unfocusZipperList!1788 zl!343)) (h!71725 (unfocusZipperList!1788 zl!343)))))

(assert (=> b!6487761 d!2035951))

(assert (=> b!6487439 d!2035537))

(assert (=> d!2035179 d!2035225))

(declare-fun d!2035953 () Bool)

(assert (=> d!2035953 true))

(assert (=> d!2035953 true))

(declare-fun res!2665117 () Bool)

(assert (=> d!2035953 (= (choose!48164 lambda!359125) res!2665117)))

(assert (=> d!2035127 d!2035953))

(declare-fun d!2035955 () Bool)

(assert (=> d!2035955 (= (nullable!6360 (reg!16696 r!7292)) (nullableFct!2298 (reg!16696 r!7292)))))

(declare-fun bs!1646921 () Bool)

(assert (= bs!1646921 d!2035955))

(declare-fun m!7277870 () Bool)

(assert (=> bs!1646921 m!7277870))

(assert (=> b!6487421 d!2035955))

(assert (=> b!6487573 d!2035323))

(assert (=> d!2035057 d!2035273))

(assert (=> bm!561483 d!2035733))

(assert (=> b!6487660 d!2035517))

(declare-fun bs!1646925 () Bool)

(declare-fun d!2035957 () Bool)

(assert (= bs!1646925 (and d!2035957 d!2035567)))

(declare-fun lambda!359319 () Int)

(assert (=> bs!1646925 (= lambda!359319 lambda!359258)))

(declare-fun bs!1646927 () Bool)

(assert (= bs!1646927 (and d!2035957 d!2035425)))

(assert (=> bs!1646927 (= lambda!359319 lambda!359245)))

(declare-fun bs!1646928 () Bool)

(assert (= bs!1646928 (and d!2035957 d!2035777)))

(assert (=> bs!1646928 (= lambda!359319 lambda!359289)))

(declare-fun bs!1646929 () Bool)

(assert (= bs!1646929 (and d!2035957 d!2035435)))

(assert (=> bs!1646929 (= lambda!359319 lambda!359246)))

(declare-fun bs!1646930 () Bool)

(assert (= bs!1646930 (and d!2035957 d!2035423)))

(assert (=> bs!1646930 (= lambda!359319 lambda!359244)))

(declare-fun bs!1646931 () Bool)

(assert (= bs!1646931 (and d!2035957 d!2035653)))

(assert (=> bs!1646931 (= lambda!359319 lambda!359267)))

(declare-fun bs!1646933 () Bool)

(assert (= bs!1646933 (and d!2035957 d!2035511)))

(assert (=> bs!1646933 (= lambda!359319 lambda!359256)))

(assert (=> d!2035957 (= (nullableZipper!2124 lt!2388867) (exists!2617 lt!2388867 lambda!359319))))

(declare-fun bs!1646935 () Bool)

(assert (= bs!1646935 d!2035957))

(declare-fun m!7277872 () Bool)

(assert (=> bs!1646935 m!7277872))

(assert (=> b!6487444 d!2035957))

(declare-fun d!2035959 () Bool)

(declare-fun c!1189110 () Bool)

(assert (=> d!2035959 (= c!1189110 ((_ is Nil!65276) lt!2389104))))

(declare-fun e!3932807 () (InoxSet C!33004))

(assert (=> d!2035959 (= (content!12437 lt!2389104) e!3932807)))

(declare-fun b!6489220 () Bool)

(assert (=> b!6489220 (= e!3932807 ((as const (Array C!33004 Bool)) false))))

(declare-fun b!6489221 () Bool)

(assert (=> b!6489221 (= e!3932807 ((_ map or) (store ((as const (Array C!33004 Bool)) false) (h!71724 lt!2389104) true) (content!12437 (t!379026 lt!2389104))))))

(assert (= (and d!2035959 c!1189110) b!6489220))

(assert (= (and d!2035959 (not c!1189110)) b!6489221))

(declare-fun m!7277874 () Bool)

(assert (=> b!6489221 m!7277874))

(declare-fun m!7277876 () Bool)

(assert (=> b!6489221 m!7277876))

(assert (=> d!2035157 d!2035959))

(declare-fun d!2035961 () Bool)

(declare-fun c!1189111 () Bool)

(assert (=> d!2035961 (= c!1189111 ((_ is Nil!65276) (_1!36649 lt!2388900)))))

(declare-fun e!3932808 () (InoxSet C!33004))

(assert (=> d!2035961 (= (content!12437 (_1!36649 lt!2388900)) e!3932808)))

(declare-fun b!6489222 () Bool)

(assert (=> b!6489222 (= e!3932808 ((as const (Array C!33004 Bool)) false))))

(declare-fun b!6489223 () Bool)

(assert (=> b!6489223 (= e!3932808 ((_ map or) (store ((as const (Array C!33004 Bool)) false) (h!71724 (_1!36649 lt!2388900)) true) (content!12437 (t!379026 (_1!36649 lt!2388900)))))))

(assert (= (and d!2035961 c!1189111) b!6489222))

(assert (= (and d!2035961 (not c!1189111)) b!6489223))

(declare-fun m!7277878 () Bool)

(assert (=> b!6489223 m!7277878))

(assert (=> b!6489223 m!7276364))

(assert (=> d!2035157 d!2035961))

(assert (=> d!2035157 d!2035295))

(declare-fun d!2035963 () Bool)

(declare-fun c!1189112 () Bool)

(assert (=> d!2035963 (= c!1189112 (isEmpty!37468 (tail!12294 (t!379026 s!2326))))))

(declare-fun e!3932809 () Bool)

(assert (=> d!2035963 (= (matchZipper!2379 (derivationStepZipper!2333 ((_ map or) lt!2388893 lt!2388867) (head!13209 (t!379026 s!2326))) (tail!12294 (t!379026 s!2326))) e!3932809)))

(declare-fun b!6489224 () Bool)

(assert (=> b!6489224 (= e!3932809 (nullableZipper!2124 (derivationStepZipper!2333 ((_ map or) lt!2388893 lt!2388867) (head!13209 (t!379026 s!2326)))))))

(declare-fun b!6489225 () Bool)

(assert (=> b!6489225 (= e!3932809 (matchZipper!2379 (derivationStepZipper!2333 (derivationStepZipper!2333 ((_ map or) lt!2388893 lt!2388867) (head!13209 (t!379026 s!2326))) (head!13209 (tail!12294 (t!379026 s!2326)))) (tail!12294 (tail!12294 (t!379026 s!2326)))))))

(assert (= (and d!2035963 c!1189112) b!6489224))

(assert (= (and d!2035963 (not c!1189112)) b!6489225))

(assert (=> d!2035963 m!7275866))

(assert (=> d!2035963 m!7276302))

(assert (=> b!6489224 m!7276244))

(declare-fun m!7277882 () Bool)

(assert (=> b!6489224 m!7277882))

(assert (=> b!6489225 m!7275866))

(assert (=> b!6489225 m!7276306))

(assert (=> b!6489225 m!7276244))

(assert (=> b!6489225 m!7276306))

(declare-fun m!7277884 () Bool)

(assert (=> b!6489225 m!7277884))

(assert (=> b!6489225 m!7275866))

(assert (=> b!6489225 m!7276310))

(assert (=> b!6489225 m!7277884))

(assert (=> b!6489225 m!7276310))

(declare-fun m!7277888 () Bool)

(assert (=> b!6489225 m!7277888))

(assert (=> b!6487739 d!2035963))

(declare-fun bs!1646940 () Bool)

(declare-fun d!2035969 () Bool)

(assert (= bs!1646940 (and d!2035969 d!2035525)))

(declare-fun lambda!359320 () Int)

(assert (=> bs!1646940 (= (= (head!13209 (t!379026 s!2326)) (head!13209 lt!2388887)) (= lambda!359320 lambda!359257))))

(declare-fun bs!1646941 () Bool)

(assert (= bs!1646941 (and d!2035969 d!2035701)))

(assert (=> bs!1646941 (= (= (head!13209 (t!379026 s!2326)) (head!13209 lt!2388903)) (= lambda!359320 lambda!359274))))

(declare-fun bs!1646942 () Bool)

(assert (= bs!1646942 (and d!2035969 d!2035105)))

(assert (=> bs!1646942 (= (= (head!13209 (t!379026 s!2326)) (h!71724 s!2326)) (= lambda!359320 lambda!359193))))

(declare-fun bs!1646943 () Bool)

(assert (= bs!1646943 (and d!2035969 d!2035585)))

(assert (=> bs!1646943 (= lambda!359320 lambda!359263)))

(declare-fun bs!1646944 () Bool)

(assert (= bs!1646944 (and d!2035969 d!2035813)))

(assert (=> bs!1646944 (= (= (head!13209 (t!379026 s!2326)) (head!13209 (_1!36649 lt!2388858))) (= lambda!359320 lambda!359292))))

(declare-fun bs!1646945 () Bool)

(assert (= bs!1646945 (and d!2035969 d!2035493)))

(assert (=> bs!1646945 (= (= (head!13209 (t!379026 s!2326)) (head!13209 s!2326)) (= lambda!359320 lambda!359255))))

(declare-fun bs!1646946 () Bool)

(assert (= bs!1646946 (and d!2035969 d!2035487)))

(assert (=> bs!1646946 (= lambda!359320 lambda!359254)))

(declare-fun bs!1646947 () Bool)

(assert (= bs!1646947 (and d!2035969 d!2035229)))

(assert (=> bs!1646947 (= lambda!359320 lambda!359232)))

(declare-fun bs!1646948 () Bool)

(assert (= bs!1646948 (and d!2035969 b!6486628)))

(assert (=> bs!1646948 (= (= (head!13209 (t!379026 s!2326)) (h!71724 s!2326)) (= lambda!359320 lambda!359120))))

(assert (=> d!2035969 true))

(assert (=> d!2035969 (= (derivationStepZipper!2333 ((_ map or) lt!2388893 lt!2388867) (head!13209 (t!379026 s!2326))) (flatMap!1872 ((_ map or) lt!2388893 lt!2388867) lambda!359320))))

(declare-fun bs!1646949 () Bool)

(assert (= bs!1646949 d!2035969))

(declare-fun m!7277900 () Bool)

(assert (=> bs!1646949 m!7277900))

(assert (=> b!6487739 d!2035969))

(assert (=> b!6487739 d!2035231))

(assert (=> b!6487739 d!2035233))

(declare-fun d!2035977 () Bool)

(assert (=> d!2035977 (= (isEmptyLang!1767 lt!2389118) ((_ is EmptyLang!16367) lt!2389118))))

(assert (=> b!6487769 d!2035977))

(assert (=> d!2035063 d!2035081))

(assert (=> d!2035063 d!2035087))

(declare-fun d!2035985 () Bool)

(assert (=> d!2035985 (= (matchR!8550 lt!2388899 lt!2388903) (matchZipper!2379 lt!2388898 lt!2388903))))

(assert (=> d!2035985 true))

(declare-fun _$44!1666 () Unit!158799)

(assert (=> d!2035985 (= (choose!48157 lt!2388898 lt!2388863 lt!2388899 lt!2388903) _$44!1666)))

(declare-fun bs!1646951 () Bool)

(assert (= bs!1646951 d!2035985))

(assert (=> bs!1646951 m!7274968))

(assert (=> bs!1646951 m!7274950))

(assert (=> d!2035063 d!2035985))

(assert (=> d!2035063 d!2035507))

(declare-fun b!6489248 () Bool)

(declare-fun res!2665132 () Bool)

(declare-fun e!3932821 () Bool)

(assert (=> b!6489248 (=> res!2665132 e!3932821)))

(assert (=> b!6489248 (= res!2665132 (not (isEmpty!37468 (tail!12294 (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900))))))))

(declare-fun e!3932826 () Bool)

(declare-fun b!6489250 () Bool)

(assert (=> b!6489250 (= e!3932826 (= (head!13209 (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900))) (c!1188383 (Concat!25212 lt!2388865 (regTwo!33246 r!7292)))))))

(declare-fun b!6489251 () Bool)

(declare-fun res!2665129 () Bool)

(declare-fun e!3932823 () Bool)

(assert (=> b!6489251 (=> res!2665129 e!3932823)))

(assert (=> b!6489251 (= res!2665129 e!3932826)))

(declare-fun res!2665130 () Bool)

(assert (=> b!6489251 (=> (not res!2665130) (not e!3932826))))

(declare-fun lt!2389239 () Bool)

(assert (=> b!6489251 (= res!2665130 lt!2389239)))

(declare-fun b!6489252 () Bool)

(declare-fun e!3932827 () Bool)

(assert (=> b!6489252 (= e!3932827 e!3932821)))

(declare-fun res!2665135 () Bool)

(assert (=> b!6489252 (=> res!2665135 e!3932821)))

(declare-fun call!561759 () Bool)

(assert (=> b!6489252 (= res!2665135 call!561759)))

(declare-fun b!6489253 () Bool)

(declare-fun res!2665133 () Bool)

(assert (=> b!6489253 (=> res!2665133 e!3932823)))

(assert (=> b!6489253 (= res!2665133 (not ((_ is ElementMatch!16367) (Concat!25212 lt!2388865 (regTwo!33246 r!7292)))))))

(declare-fun e!3932822 () Bool)

(assert (=> b!6489253 (= e!3932822 e!3932823)))

(declare-fun bm!561754 () Bool)

(assert (=> bm!561754 (= call!561759 (isEmpty!37468 (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900))))))

(declare-fun b!6489254 () Bool)

(assert (=> b!6489254 (= e!3932823 e!3932827)))

(declare-fun res!2665131 () Bool)

(assert (=> b!6489254 (=> (not res!2665131) (not e!3932827))))

(assert (=> b!6489254 (= res!2665131 (not lt!2389239))))

(declare-fun b!6489255 () Bool)

(declare-fun e!3932824 () Bool)

(assert (=> b!6489255 (= e!3932824 e!3932822)))

(declare-fun c!1189121 () Bool)

(assert (=> b!6489255 (= c!1189121 ((_ is EmptyLang!16367) (Concat!25212 lt!2388865 (regTwo!33246 r!7292))))))

(declare-fun b!6489256 () Bool)

(declare-fun res!2665134 () Bool)

(assert (=> b!6489256 (=> (not res!2665134) (not e!3932826))))

(assert (=> b!6489256 (= res!2665134 (isEmpty!37468 (tail!12294 (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900)))))))

(declare-fun b!6489257 () Bool)

(declare-fun e!3932825 () Bool)

(assert (=> b!6489257 (= e!3932825 (nullable!6360 (Concat!25212 lt!2388865 (regTwo!33246 r!7292))))))

(declare-fun b!6489258 () Bool)

(assert (=> b!6489258 (= e!3932824 (= lt!2389239 call!561759))))

(declare-fun b!6489259 () Bool)

(declare-fun res!2665128 () Bool)

(assert (=> b!6489259 (=> (not res!2665128) (not e!3932826))))

(assert (=> b!6489259 (= res!2665128 (not call!561759))))

(declare-fun b!6489260 () Bool)

(assert (=> b!6489260 (= e!3932822 (not lt!2389239))))

(declare-fun b!6489261 () Bool)

(assert (=> b!6489261 (= e!3932821 (not (= (head!13209 (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900))) (c!1188383 (Concat!25212 lt!2388865 (regTwo!33246 r!7292))))))))

(declare-fun d!2035987 () Bool)

(assert (=> d!2035987 e!3932824))

(declare-fun c!1189120 () Bool)

(assert (=> d!2035987 (= c!1189120 ((_ is EmptyExpr!16367) (Concat!25212 lt!2388865 (regTwo!33246 r!7292))))))

(assert (=> d!2035987 (= lt!2389239 e!3932825)))

(declare-fun c!1189119 () Bool)

(assert (=> d!2035987 (= c!1189119 (isEmpty!37468 (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900))))))

(assert (=> d!2035987 (validRegex!8103 (Concat!25212 lt!2388865 (regTwo!33246 r!7292)))))

(assert (=> d!2035987 (= (matchR!8550 (Concat!25212 lt!2388865 (regTwo!33246 r!7292)) (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900))) lt!2389239)))

(declare-fun b!6489249 () Bool)

(assert (=> b!6489249 (= e!3932825 (matchR!8550 (derivativeStep!5063 (Concat!25212 lt!2388865 (regTwo!33246 r!7292)) (head!13209 (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900)))) (tail!12294 (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900)))))))

(assert (= (and d!2035987 c!1189119) b!6489257))

(assert (= (and d!2035987 (not c!1189119)) b!6489249))

(assert (= (and d!2035987 c!1189120) b!6489258))

(assert (= (and d!2035987 (not c!1189120)) b!6489255))

(assert (= (and b!6489255 c!1189121) b!6489260))

(assert (= (and b!6489255 (not c!1189121)) b!6489253))

(assert (= (and b!6489253 (not res!2665133)) b!6489251))

(assert (= (and b!6489251 res!2665130) b!6489259))

(assert (= (and b!6489259 res!2665128) b!6489256))

(assert (= (and b!6489256 res!2665134) b!6489250))

(assert (= (and b!6489251 (not res!2665129)) b!6489254))

(assert (= (and b!6489254 res!2665131) b!6489252))

(assert (= (and b!6489252 (not res!2665135)) b!6489248))

(assert (= (and b!6489248 (not res!2665132)) b!6489261))

(assert (= (or b!6489258 b!6489252 b!6489259) bm!561754))

(assert (=> b!6489248 m!7274924))

(declare-fun m!7277930 () Bool)

(assert (=> b!6489248 m!7277930))

(assert (=> b!6489248 m!7277930))

(declare-fun m!7277932 () Bool)

(assert (=> b!6489248 m!7277932))

(declare-fun m!7277934 () Bool)

(assert (=> b!6489257 m!7277934))

(assert (=> d!2035987 m!7274924))

(declare-fun m!7277936 () Bool)

(assert (=> d!2035987 m!7277936))

(declare-fun m!7277938 () Bool)

(assert (=> d!2035987 m!7277938))

(assert (=> b!6489256 m!7274924))

(assert (=> b!6489256 m!7277930))

(assert (=> b!6489256 m!7277930))

(assert (=> b!6489256 m!7277932))

(assert (=> b!6489261 m!7274924))

(declare-fun m!7277940 () Bool)

(assert (=> b!6489261 m!7277940))

(assert (=> b!6489250 m!7274924))

(assert (=> b!6489250 m!7277940))

(assert (=> b!6489249 m!7274924))

(assert (=> b!6489249 m!7277940))

(assert (=> b!6489249 m!7277940))

(declare-fun m!7277942 () Bool)

(assert (=> b!6489249 m!7277942))

(assert (=> b!6489249 m!7274924))

(assert (=> b!6489249 m!7277930))

(assert (=> b!6489249 m!7277942))

(assert (=> b!6489249 m!7277930))

(declare-fun m!7277944 () Bool)

(assert (=> b!6489249 m!7277944))

(assert (=> bm!561754 m!7274924))

(assert (=> bm!561754 m!7277936))

(assert (=> d!2035071 d!2035987))

(assert (=> d!2035071 d!2034951))

(declare-fun d!2035991 () Bool)

(assert (=> d!2035991 (matchR!8550 (Concat!25212 lt!2388865 (regTwo!33246 r!7292)) (++!14444 (_2!36649 lt!2388858) (_2!36649 lt!2388900)))))

(assert (=> d!2035991 true))

(declare-fun _$119!478 () Unit!158799)

(assert (=> d!2035991 (= (choose!48159 lt!2388865 (regTwo!33246 r!7292) (_2!36649 lt!2388858) (_2!36649 lt!2388900)) _$119!478)))

(declare-fun bs!1646952 () Bool)

(assert (= bs!1646952 d!2035991))

(assert (=> bs!1646952 m!7274924))

(assert (=> bs!1646952 m!7274924))

(assert (=> bs!1646952 m!7275942))

(assert (=> d!2035071 d!2035991))

(assert (=> d!2035071 d!2035219))

(assert (=> d!2035065 d!2035637))

(declare-fun b!6489285 () Bool)

(declare-fun e!3932841 () Bool)

(declare-fun lt!2389240 () List!65400)

(assert (=> b!6489285 (= e!3932841 (or (not (= (_2!36649 lt!2388858) Nil!65276)) (= lt!2389240 (t!379026 (_1!36649 lt!2388858)))))))

(declare-fun d!2035995 () Bool)

(assert (=> d!2035995 e!3932841))

(declare-fun res!2665143 () Bool)

(assert (=> d!2035995 (=> (not res!2665143) (not e!3932841))))

(assert (=> d!2035995 (= res!2665143 (= (content!12437 lt!2389240) ((_ map or) (content!12437 (t!379026 (_1!36649 lt!2388858))) (content!12437 (_2!36649 lt!2388858)))))))

(declare-fun e!3932842 () List!65400)

(assert (=> d!2035995 (= lt!2389240 e!3932842)))

(declare-fun c!1189129 () Bool)

(assert (=> d!2035995 (= c!1189129 ((_ is Nil!65276) (t!379026 (_1!36649 lt!2388858))))))

(assert (=> d!2035995 (= (++!14444 (t!379026 (_1!36649 lt!2388858)) (_2!36649 lt!2388858)) lt!2389240)))

(declare-fun b!6489283 () Bool)

(assert (=> b!6489283 (= e!3932842 (Cons!65276 (h!71724 (t!379026 (_1!36649 lt!2388858))) (++!14444 (t!379026 (t!379026 (_1!36649 lt!2388858))) (_2!36649 lt!2388858))))))

(declare-fun b!6489284 () Bool)

(declare-fun res!2665142 () Bool)

(assert (=> b!6489284 (=> (not res!2665142) (not e!3932841))))

(assert (=> b!6489284 (= res!2665142 (= (size!40424 lt!2389240) (+ (size!40424 (t!379026 (_1!36649 lt!2388858))) (size!40424 (_2!36649 lt!2388858)))))))

(declare-fun b!6489282 () Bool)

(assert (=> b!6489282 (= e!3932842 (_2!36649 lt!2388858))))

(assert (= (and d!2035995 c!1189129) b!6489282))

(assert (= (and d!2035995 (not c!1189129)) b!6489283))

(assert (= (and d!2035995 res!2665143) b!6489284))

(assert (= (and b!6489284 res!2665142) b!6489285))

(declare-fun m!7277952 () Bool)

(assert (=> d!2035995 m!7277952))

(assert (=> d!2035995 m!7276440))

(assert (=> d!2035995 m!7275552))

(declare-fun m!7277954 () Bool)

(assert (=> b!6489283 m!7277954))

(declare-fun m!7277956 () Bool)

(assert (=> b!6489284 m!7277956))

(assert (=> b!6489284 m!7276322))

(assert (=> b!6489284 m!7275558))

(assert (=> b!6487678 d!2035995))

(declare-fun bs!1646953 () Bool)

(declare-fun b!6489287 () Bool)

(assert (= bs!1646953 (and b!6489287 d!2035573)))

(declare-fun lambda!359321 () Int)

(assert (=> bs!1646953 (not (= lambda!359321 lambda!359259))))

(declare-fun bs!1646954 () Bool)

(assert (= bs!1646954 (and b!6489287 d!2035151)))

(assert (=> bs!1646954 (not (= lambda!359321 lambda!359216))))

(declare-fun bs!1646955 () Bool)

(assert (= bs!1646955 (and b!6489287 b!6487593)))

(assert (=> bs!1646955 (= (and (= (reg!16696 (regOne!33247 r!7292)) (reg!16696 r!7292)) (= (regOne!33247 r!7292) r!7292)) (= lambda!359321 lambda!359195))))

(declare-fun bs!1646956 () Bool)

(assert (= bs!1646956 (and b!6489287 b!6489049)))

(assert (=> bs!1646956 (= (and (= (reg!16696 (regOne!33247 r!7292)) (reg!16696 (regOne!33247 lt!2388855))) (= (regOne!33247 r!7292) (regOne!33247 lt!2388855))) (= lambda!359321 lambda!359301))))

(declare-fun bs!1646957 () Bool)

(assert (= bs!1646957 (and b!6489287 d!2035675)))

(assert (=> bs!1646957 (not (= lambda!359321 lambda!359270))))

(declare-fun bs!1646958 () Bool)

(assert (= bs!1646958 (and b!6489287 b!6486656)))

(assert (=> bs!1646958 (not (= lambda!359321 lambda!359121))))

(declare-fun bs!1646959 () Bool)

(assert (= bs!1646959 (and b!6489287 b!6487561)))

(assert (=> bs!1646959 (= (and (= (reg!16696 (regOne!33247 r!7292)) (reg!16696 lt!2388855)) (= (regOne!33247 r!7292) lt!2388855)) (= lambda!359321 lambda!359189))))

(declare-fun bs!1646960 () Bool)

(assert (= bs!1646960 (and b!6489287 b!6486655)))

(assert (=> bs!1646960 (not (= lambda!359321 lambda!359119))))

(declare-fun bs!1646961 () Bool)

(assert (= bs!1646961 (and b!6489287 d!2035129)))

(assert (=> bs!1646961 (not (= lambda!359321 lambda!359201))))

(assert (=> bs!1646953 (not (= lambda!359321 lambda!359260))))

(declare-fun bs!1646962 () Bool)

(assert (= bs!1646962 (and b!6489287 b!6487626)))

(assert (=> bs!1646962 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regOne!33247 r!7292)) (reg!16696 lt!2388865)) (= (regOne!33247 r!7292) lt!2388865)) (= lambda!359321 lambda!359203))))

(declare-fun bs!1646963 () Bool)

(assert (= bs!1646963 (and b!6489287 d!2035139)))

(assert (=> bs!1646963 (not (= lambda!359321 lambda!359212))))

(declare-fun bs!1646964 () Bool)

(assert (= bs!1646964 (and b!6489287 b!6488783)))

(assert (=> bs!1646964 (not (= lambda!359321 lambda!359280))))

(assert (=> bs!1646961 (not (= lambda!359321 lambda!359202))))

(declare-fun bs!1646965 () Bool)

(assert (= bs!1646965 (and b!6489287 b!6486638)))

(assert (=> bs!1646965 (not (= lambda!359321 lambda!359123))))

(declare-fun bs!1646966 () Bool)

(assert (= bs!1646966 (and b!6489287 b!6488981)))

(assert (=> bs!1646966 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regOne!33247 r!7292)) (reg!16696 (regTwo!33247 lt!2388865))) (= (regOne!33247 r!7292) (regTwo!33247 lt!2388865))) (= lambda!359321 lambda!359294))))

(declare-fun bs!1646967 () Bool)

(assert (= bs!1646967 (and b!6489287 d!2035165)))

(assert (=> bs!1646967 (not (= lambda!359321 lambda!359218))))

(declare-fun bs!1646968 () Bool)

(assert (= bs!1646968 (and b!6489287 d!2035221)))

(assert (=> bs!1646968 (not (= lambda!359321 lambda!359231))))

(declare-fun bs!1646969 () Bool)

(assert (= bs!1646969 (and b!6489287 b!6487565)))

(assert (=> bs!1646969 (not (= lambda!359321 lambda!359190))))

(assert (=> bs!1646960 (not (= lambda!359321 lambda!359118))))

(assert (=> bs!1646957 (not (= lambda!359321 lambda!359269))))

(declare-fun bs!1646970 () Bool)

(assert (= bs!1646970 (and b!6489287 d!2035903)))

(assert (=> bs!1646970 (not (= lambda!359321 lambda!359314))))

(assert (=> bs!1646965 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regOne!33247 r!7292)) (reg!16696 (regOne!33246 r!7292))) (= (regOne!33247 r!7292) lt!2388865)) (= lambda!359321 lambda!359124))))

(assert (=> bs!1646970 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regOne!33247 r!7292)) (reg!16696 (regOne!33246 r!7292))) (= (regOne!33247 r!7292) (Star!16367 (reg!16696 (regOne!33246 r!7292))))) (= lambda!359321 lambda!359315))))

(declare-fun bs!1646971 () Bool)

(assert (= bs!1646971 (and b!6489287 d!2035135)))

(assert (=> bs!1646971 (not (= lambda!359321 lambda!359207))))

(declare-fun bs!1646972 () Bool)

(assert (= bs!1646972 (and b!6489287 d!2035387)))

(assert (=> bs!1646972 (not (= lambda!359321 lambda!359241))))

(assert (=> bs!1646965 (not (= lambda!359321 lambda!359125))))

(assert (=> bs!1646963 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regOne!33247 r!7292)) (reg!16696 (regOne!33246 r!7292))) (= (regOne!33247 r!7292) (Star!16367 (reg!16696 (regOne!33246 r!7292))))) (= lambda!359321 lambda!359213))))

(declare-fun bs!1646973 () Bool)

(assert (= bs!1646973 (and b!6489287 b!6488777)))

(assert (=> bs!1646973 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (reg!16696 (regOne!33247 r!7292)) (reg!16696 (regOne!33247 lt!2388865))) (= (regOne!33247 r!7292) (regOne!33247 lt!2388865))) (= lambda!359321 lambda!359279))))

(declare-fun bs!1646974 () Bool)

(assert (= bs!1646974 (and b!6489287 b!6488119)))

(assert (=> bs!1646974 (not (= lambda!359321 lambda!359234))))

(declare-fun bs!1646976 () Bool)

(assert (= bs!1646976 (and b!6489287 d!2035145)))

(assert (=> bs!1646976 (not (= lambda!359321 lambda!359214))))

(assert (=> bs!1646954 (not (= lambda!359321 lambda!359215))))

(declare-fun bs!1646977 () Bool)

(assert (= bs!1646977 (and b!6489287 b!6489053)))

(assert (=> bs!1646977 (not (= lambda!359321 lambda!359304))))

(declare-fun bs!1646978 () Bool)

(assert (= bs!1646978 (and b!6489287 b!6488303)))

(assert (=> bs!1646978 (not (= lambda!359321 lambda!359248))))

(assert (=> bs!1646958 (not (= lambda!359321 lambda!359122))))

(assert (=> bs!1646972 (not (= lambda!359321 lambda!359240))))

(declare-fun bs!1646979 () Bool)

(assert (= bs!1646979 (and b!6489287 b!6488115)))

(assert (=> bs!1646979 (= (and (= (reg!16696 (regOne!33247 r!7292)) (reg!16696 (regTwo!33247 r!7292))) (= (regOne!33247 r!7292) (regTwo!33247 r!7292))) (= lambda!359321 lambda!359233))))

(assert (=> bs!1646967 (not (= lambda!359321 lambda!359219))))

(declare-fun bs!1646980 () Bool)

(assert (= bs!1646980 (and b!6489287 d!2035783)))

(assert (=> bs!1646980 (not (= lambda!359321 lambda!359290))))

(declare-fun bs!1646981 () Bool)

(assert (= bs!1646981 (and b!6489287 b!6488299)))

(assert (=> bs!1646981 (= (and (= (reg!16696 (regOne!33247 r!7292)) (reg!16696 (regTwo!33247 lt!2388855))) (= (regOne!33247 r!7292) (regTwo!33247 lt!2388855))) (= lambda!359321 lambda!359247))))

(declare-fun bs!1646982 () Bool)

(assert (= bs!1646982 (and b!6489287 b!6488985)))

(assert (=> bs!1646982 (not (= lambda!359321 lambda!359295))))

(declare-fun bs!1646983 () Bool)

(assert (= bs!1646983 (and b!6489287 d!2035161)))

(assert (=> bs!1646983 (not (= lambda!359321 lambda!359217))))

(declare-fun bs!1646984 () Bool)

(assert (= bs!1646984 (and b!6489287 b!6487597)))

(assert (=> bs!1646984 (not (= lambda!359321 lambda!359196))))

(declare-fun bs!1646985 () Bool)

(assert (= bs!1646985 (and b!6489287 d!2035737)))

(assert (=> bs!1646985 (not (= lambda!359321 lambda!359281))))

(declare-fun bs!1646986 () Bool)

(assert (= bs!1646986 (and b!6489287 b!6487630)))

(assert (=> bs!1646986 (not (= lambda!359321 lambda!359204))))

(assert (=> b!6489287 true))

(assert (=> b!6489287 true))

(declare-fun bs!1646987 () Bool)

(declare-fun b!6489291 () Bool)

(assert (= bs!1646987 (and b!6489291 d!2035573)))

(declare-fun lambda!359322 () Int)

(assert (=> bs!1646987 (not (= lambda!359322 lambda!359259))))

(declare-fun bs!1646988 () Bool)

(assert (= bs!1646988 (and b!6489291 d!2035151)))

(assert (=> bs!1646988 (= (and (= (regOne!33246 (regOne!33247 r!7292)) (regOne!33246 r!7292)) (= (regTwo!33246 (regOne!33247 r!7292)) (regTwo!33246 r!7292))) (= lambda!359322 lambda!359216))))

(declare-fun bs!1646989 () Bool)

(assert (= bs!1646989 (and b!6489291 b!6487593)))

(assert (=> bs!1646989 (not (= lambda!359322 lambda!359195))))

(declare-fun bs!1646990 () Bool)

(assert (= bs!1646990 (and b!6489291 b!6489049)))

(assert (=> bs!1646990 (not (= lambda!359322 lambda!359301))))

(declare-fun bs!1646991 () Bool)

(assert (= bs!1646991 (and b!6489291 d!2035675)))

(assert (=> bs!1646991 (= (and (= (regOne!33246 (regOne!33247 r!7292)) (regOne!33246 r!7292)) (= (regTwo!33246 (regOne!33247 r!7292)) (regTwo!33246 r!7292))) (= lambda!359322 lambda!359270))))

(declare-fun bs!1646992 () Bool)

(assert (= bs!1646992 (and b!6489291 b!6486656)))

(assert (=> bs!1646992 (not (= lambda!359322 lambda!359121))))

(declare-fun bs!1646993 () Bool)

(assert (= bs!1646993 (and b!6489291 b!6487561)))

(assert (=> bs!1646993 (not (= lambda!359322 lambda!359189))))

(declare-fun bs!1646994 () Bool)

(assert (= bs!1646994 (and b!6489291 b!6486655)))

(assert (=> bs!1646994 (= (and (= (regOne!33246 (regOne!33247 r!7292)) (regOne!33246 r!7292)) (= (regTwo!33246 (regOne!33247 r!7292)) (regTwo!33246 r!7292))) (= lambda!359322 lambda!359119))))

(declare-fun bs!1646995 () Bool)

(assert (= bs!1646995 (and b!6489291 d!2035129)))

(assert (=> bs!1646995 (not (= lambda!359322 lambda!359201))))

(assert (=> bs!1646987 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regOne!33247 r!7292)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regOne!33247 r!7292)) lt!2388865)) (= lambda!359322 lambda!359260))))

(declare-fun bs!1646996 () Bool)

(assert (= bs!1646996 (and b!6489291 b!6487626)))

(assert (=> bs!1646996 (not (= lambda!359322 lambda!359203))))

(declare-fun bs!1646997 () Bool)

(assert (= bs!1646997 (and b!6489291 d!2035139)))

(assert (=> bs!1646997 (not (= lambda!359322 lambda!359212))))

(declare-fun bs!1646999 () Bool)

(assert (= bs!1646999 (and b!6489291 b!6488783)))

(assert (=> bs!1646999 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regOne!33247 r!7292)) (regOne!33246 (regOne!33247 lt!2388865))) (= (regTwo!33246 (regOne!33247 r!7292)) (regTwo!33246 (regOne!33247 lt!2388865)))) (= lambda!359322 lambda!359280))))

(assert (=> bs!1646995 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regOne!33247 r!7292)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regOne!33247 r!7292)) lt!2388865)) (= lambda!359322 lambda!359202))))

(declare-fun bs!1647000 () Bool)

(assert (= bs!1647000 (and b!6489291 b!6486638)))

(assert (=> bs!1647000 (not (= lambda!359322 lambda!359123))))

(declare-fun bs!1647001 () Bool)

(assert (= bs!1647001 (and b!6489291 b!6488981)))

(assert (=> bs!1647001 (not (= lambda!359322 lambda!359294))))

(declare-fun bs!1647002 () Bool)

(assert (= bs!1647002 (and b!6489291 d!2035165)))

(assert (=> bs!1647002 (not (= lambda!359322 lambda!359218))))

(declare-fun bs!1647003 () Bool)

(assert (= bs!1647003 (and b!6489291 d!2035221)))

(assert (=> bs!1647003 (not (= lambda!359322 lambda!359231))))

(declare-fun bs!1647004 () Bool)

(assert (= bs!1647004 (and b!6489291 b!6487565)))

(assert (=> bs!1647004 (= (and (= (regOne!33246 (regOne!33247 r!7292)) (regOne!33246 lt!2388855)) (= (regTwo!33246 (regOne!33247 r!7292)) (regTwo!33246 lt!2388855))) (= lambda!359322 lambda!359190))))

(assert (=> bs!1646994 (not (= lambda!359322 lambda!359118))))

(assert (=> bs!1646991 (not (= lambda!359322 lambda!359269))))

(declare-fun bs!1647005 () Bool)

(assert (= bs!1647005 (and b!6489291 d!2035903)))

(assert (=> bs!1647005 (not (= lambda!359322 lambda!359314))))

(assert (=> bs!1647000 (not (= lambda!359322 lambda!359124))))

(assert (=> bs!1647005 (not (= lambda!359322 lambda!359315))))

(declare-fun bs!1647006 () Bool)

(assert (= bs!1647006 (and b!6489291 d!2035135)))

(assert (=> bs!1647006 (not (= lambda!359322 lambda!359207))))

(declare-fun bs!1647007 () Bool)

(assert (= bs!1647007 (and b!6489291 d!2035387)))

(assert (=> bs!1647007 (= (and (= (regOne!33246 (regOne!33247 r!7292)) lt!2388865) (= (regTwo!33246 (regOne!33247 r!7292)) (regTwo!33246 r!7292))) (= lambda!359322 lambda!359241))))

(declare-fun bs!1647008 () Bool)

(assert (= bs!1647008 (and b!6489291 b!6489287)))

(assert (=> bs!1647008 (not (= lambda!359322 lambda!359321))))

(assert (=> bs!1647000 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regOne!33247 r!7292)) (reg!16696 (regOne!33246 r!7292))) (= (regTwo!33246 (regOne!33247 r!7292)) lt!2388865)) (= lambda!359322 lambda!359125))))

(assert (=> bs!1646997 (not (= lambda!359322 lambda!359213))))

(declare-fun bs!1647009 () Bool)

(assert (= bs!1647009 (and b!6489291 b!6488777)))

(assert (=> bs!1647009 (not (= lambda!359322 lambda!359279))))

(declare-fun bs!1647010 () Bool)

(assert (= bs!1647010 (and b!6489291 b!6488119)))

(assert (=> bs!1647010 (= (and (= (regOne!33246 (regOne!33247 r!7292)) (regOne!33246 (regTwo!33247 r!7292))) (= (regTwo!33246 (regOne!33247 r!7292)) (regTwo!33246 (regTwo!33247 r!7292)))) (= lambda!359322 lambda!359234))))

(declare-fun bs!1647011 () Bool)

(assert (= bs!1647011 (and b!6489291 d!2035145)))

(assert (=> bs!1647011 (not (= lambda!359322 lambda!359214))))

(assert (=> bs!1646988 (not (= lambda!359322 lambda!359215))))

(declare-fun bs!1647012 () Bool)

(assert (= bs!1647012 (and b!6489291 b!6489053)))

(assert (=> bs!1647012 (= (and (= (regOne!33246 (regOne!33247 r!7292)) (regOne!33246 (regOne!33247 lt!2388855))) (= (regTwo!33246 (regOne!33247 r!7292)) (regTwo!33246 (regOne!33247 lt!2388855)))) (= lambda!359322 lambda!359304))))

(declare-fun bs!1647013 () Bool)

(assert (= bs!1647013 (and b!6489291 b!6488303)))

(assert (=> bs!1647013 (= (and (= (regOne!33246 (regOne!33247 r!7292)) (regOne!33246 (regTwo!33247 lt!2388855))) (= (regTwo!33246 (regOne!33247 r!7292)) (regTwo!33246 (regTwo!33247 lt!2388855)))) (= lambda!359322 lambda!359248))))

(assert (=> bs!1646992 (= (and (= (regOne!33246 (regOne!33247 r!7292)) lt!2388865) (= (regTwo!33246 (regOne!33247 r!7292)) (regTwo!33246 r!7292))) (= lambda!359322 lambda!359122))))

(assert (=> bs!1647007 (not (= lambda!359322 lambda!359240))))

(declare-fun bs!1647014 () Bool)

(assert (= bs!1647014 (and b!6489291 b!6488115)))

(assert (=> bs!1647014 (not (= lambda!359322 lambda!359233))))

(assert (=> bs!1647002 (= (and (= (regOne!33246 (regOne!33247 r!7292)) lt!2388865) (= (regTwo!33246 (regOne!33247 r!7292)) (regTwo!33246 r!7292))) (= lambda!359322 lambda!359219))))

(declare-fun bs!1647015 () Bool)

(assert (= bs!1647015 (and b!6489291 d!2035783)))

(assert (=> bs!1647015 (not (= lambda!359322 lambda!359290))))

(declare-fun bs!1647016 () Bool)

(assert (= bs!1647016 (and b!6489291 b!6488299)))

(assert (=> bs!1647016 (not (= lambda!359322 lambda!359247))))

(declare-fun bs!1647017 () Bool)

(assert (= bs!1647017 (and b!6489291 b!6488985)))

(assert (=> bs!1647017 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regOne!33247 r!7292)) (regOne!33246 (regTwo!33247 lt!2388865))) (= (regTwo!33246 (regOne!33247 r!7292)) (regTwo!33246 (regTwo!33247 lt!2388865)))) (= lambda!359322 lambda!359295))))

(declare-fun bs!1647018 () Bool)

(assert (= bs!1647018 (and b!6489291 d!2035161)))

(assert (=> bs!1647018 (not (= lambda!359322 lambda!359217))))

(declare-fun bs!1647019 () Bool)

(assert (= bs!1647019 (and b!6489291 b!6487597)))

(assert (=> bs!1647019 (= (and (= (regOne!33246 (regOne!33247 r!7292)) (regOne!33246 r!7292)) (= (regTwo!33246 (regOne!33247 r!7292)) (regTwo!33246 r!7292))) (= lambda!359322 lambda!359196))))

(declare-fun bs!1647020 () Bool)

(assert (= bs!1647020 (and b!6489291 d!2035737)))

(assert (=> bs!1647020 (not (= lambda!359322 lambda!359281))))

(declare-fun bs!1647021 () Bool)

(assert (= bs!1647021 (and b!6489291 b!6487630)))

(assert (=> bs!1647021 (= (and (= s!2326 (_1!36649 lt!2388900)) (= (regOne!33246 (regOne!33247 r!7292)) (regOne!33246 lt!2388865)) (= (regTwo!33246 (regOne!33247 r!7292)) (regTwo!33246 lt!2388865))) (= lambda!359322 lambda!359204))))

(assert (=> b!6489291 true))

(assert (=> b!6489291 true))

(declare-fun b!6489286 () Bool)

(declare-fun c!1189133 () Bool)

(assert (=> b!6489286 (= c!1189133 ((_ is ElementMatch!16367) (regOne!33247 r!7292)))))

(declare-fun e!3932843 () Bool)

(declare-fun e!3932847 () Bool)

(assert (=> b!6489286 (= e!3932843 e!3932847)))

(declare-fun e!3932849 () Bool)

(declare-fun call!561770 () Bool)

(assert (=> b!6489287 (= e!3932849 call!561770)))

(declare-fun b!6489288 () Bool)

(declare-fun e!3932845 () Bool)

(declare-fun call!561769 () Bool)

(assert (=> b!6489288 (= e!3932845 call!561769)))

(declare-fun bm!561764 () Bool)

(assert (=> bm!561764 (= call!561769 (isEmpty!37468 s!2326))))

(declare-fun b!6489289 () Bool)

(declare-fun e!3932846 () Bool)

(assert (=> b!6489289 (= e!3932846 (matchRSpec!3468 (regTwo!33247 (regOne!33247 r!7292)) s!2326))))

(declare-fun d!2035997 () Bool)

(declare-fun c!1189131 () Bool)

(assert (=> d!2035997 (= c!1189131 ((_ is EmptyExpr!16367) (regOne!33247 r!7292)))))

(assert (=> d!2035997 (= (matchRSpec!3468 (regOne!33247 r!7292) s!2326) e!3932845)))

(declare-fun b!6489290 () Bool)

(declare-fun e!3932844 () Bool)

(declare-fun e!3932848 () Bool)

(assert (=> b!6489290 (= e!3932844 e!3932848)))

(declare-fun c!1189132 () Bool)

(assert (=> b!6489290 (= c!1189132 ((_ is Star!16367) (regOne!33247 r!7292)))))

(declare-fun bm!561765 () Bool)

(assert (=> bm!561765 (= call!561770 (Exists!3437 (ite c!1189132 lambda!359321 lambda!359322)))))

(assert (=> b!6489291 (= e!3932848 call!561770)))

(declare-fun b!6489292 () Bool)

(declare-fun c!1189130 () Bool)

(assert (=> b!6489292 (= c!1189130 ((_ is Union!16367) (regOne!33247 r!7292)))))

(assert (=> b!6489292 (= e!3932847 e!3932844)))

(declare-fun b!6489293 () Bool)

(assert (=> b!6489293 (= e!3932847 (= s!2326 (Cons!65276 (c!1188383 (regOne!33247 r!7292)) Nil!65276)))))

(declare-fun b!6489294 () Bool)

(assert (=> b!6489294 (= e!3932844 e!3932846)))

(declare-fun res!2665146 () Bool)

(assert (=> b!6489294 (= res!2665146 (matchRSpec!3468 (regOne!33247 (regOne!33247 r!7292)) s!2326))))

(assert (=> b!6489294 (=> res!2665146 e!3932846)))

(declare-fun b!6489295 () Bool)

(declare-fun res!2665145 () Bool)

(assert (=> b!6489295 (=> res!2665145 e!3932849)))

(assert (=> b!6489295 (= res!2665145 call!561769)))

(assert (=> b!6489295 (= e!3932848 e!3932849)))

(declare-fun b!6489296 () Bool)

(assert (=> b!6489296 (= e!3932845 e!3932843)))

(declare-fun res!2665144 () Bool)

(assert (=> b!6489296 (= res!2665144 (not ((_ is EmptyLang!16367) (regOne!33247 r!7292))))))

(assert (=> b!6489296 (=> (not res!2665144) (not e!3932843))))

(assert (= (and d!2035997 c!1189131) b!6489288))

(assert (= (and d!2035997 (not c!1189131)) b!6489296))

(assert (= (and b!6489296 res!2665144) b!6489286))

(assert (= (and b!6489286 c!1189133) b!6489293))

(assert (= (and b!6489286 (not c!1189133)) b!6489292))

(assert (= (and b!6489292 c!1189130) b!6489294))

(assert (= (and b!6489292 (not c!1189130)) b!6489290))

(assert (= (and b!6489294 (not res!2665146)) b!6489289))

(assert (= (and b!6489290 c!1189132) b!6489295))

(assert (= (and b!6489290 (not c!1189132)) b!6489291))

(assert (= (and b!6489295 (not res!2665145)) b!6489287))

(assert (= (or b!6489287 b!6489291) bm!561765))

(assert (= (or b!6489288 b!6489295) bm!561764))

(assert (=> bm!561764 m!7275886))

(declare-fun m!7278006 () Bool)

(assert (=> b!6489289 m!7278006))

(declare-fun m!7278008 () Bool)

(assert (=> bm!561765 m!7278008))

(declare-fun m!7278010 () Bool)

(assert (=> b!6489294 m!7278010))

(assert (=> b!6487600 d!2035997))

(assert (=> b!6487580 d!2035443))

(assert (=> bm!561472 d!2035415))

(assert (=> bm!561485 d!2035651))

(declare-fun d!2036035 () Bool)

(declare-fun c!1189142 () Bool)

(assert (=> d!2036035 (= c!1189142 ((_ is Nil!65276) lt!2389098))))

(declare-fun e!3932870 () (InoxSet C!33004))

(assert (=> d!2036035 (= (content!12437 lt!2389098) e!3932870)))

(declare-fun b!6489333 () Bool)

(assert (=> b!6489333 (= e!3932870 ((as const (Array C!33004 Bool)) false))))

(declare-fun b!6489334 () Bool)

(assert (=> b!6489334 (= e!3932870 ((_ map or) (store ((as const (Array C!33004 Bool)) false) (h!71724 lt!2389098) true) (content!12437 (t!379026 lt!2389098))))))

(assert (= (and d!2036035 c!1189142) b!6489333))

(assert (= (and d!2036035 (not c!1189142)) b!6489334))

(declare-fun m!7278012 () Bool)

(assert (=> b!6489334 m!7278012))

(declare-fun m!7278014 () Bool)

(assert (=> b!6489334 m!7278014))

(assert (=> d!2035141 d!2036035))

(assert (=> d!2035141 d!2035661))

(assert (=> d!2035141 d!2035433))

(declare-fun d!2036037 () Bool)

(assert (=> d!2036037 true))

(assert (=> d!2036037 true))

(declare-fun res!2665167 () Bool)

(assert (=> d!2036037 (= (choose!48164 lambda!359122) res!2665167)))

(assert (=> d!2035171 d!2036037))

(assert (=> b!6487686 d!2035263))

(declare-fun d!2036039 () Bool)

(assert (=> d!2036039 (= ($colon$colon!2219 (exprs!6251 lt!2388862) (ite (or c!1188573 c!1188569) (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (regOne!33246 r!7292)))) (Cons!65277 (ite (or c!1188573 c!1188569) (regTwo!33246 (reg!16696 (regOne!33246 r!7292))) (reg!16696 (regOne!33246 r!7292))) (exprs!6251 lt!2388862)))))

(assert (=> bm!561467 d!2036039))

(declare-fun b!6489344 () Bool)

(declare-fun e!3932874 () Bool)

(declare-fun tp!1796340 () Bool)

(declare-fun tp!1796338 () Bool)

(assert (=> b!6489344 (= e!3932874 (and tp!1796340 tp!1796338))))

(declare-fun b!6489341 () Bool)

(assert (=> b!6489341 (= e!3932874 tp_is_empty!41987)))

(declare-fun b!6489343 () Bool)

(declare-fun tp!1796341 () Bool)

(assert (=> b!6489343 (= e!3932874 tp!1796341)))

(declare-fun b!6489342 () Bool)

(declare-fun tp!1796339 () Bool)

(declare-fun tp!1796337 () Bool)

(assert (=> b!6489342 (= e!3932874 (and tp!1796339 tp!1796337))))

(assert (=> b!6487810 (= tp!1796271 e!3932874)))

(assert (= (and b!6487810 ((_ is ElementMatch!16367) (reg!16696 (regTwo!33246 r!7292)))) b!6489341))

(assert (= (and b!6487810 ((_ is Concat!25212) (reg!16696 (regTwo!33246 r!7292)))) b!6489342))

(assert (= (and b!6487810 ((_ is Star!16367) (reg!16696 (regTwo!33246 r!7292)))) b!6489343))

(assert (= (and b!6487810 ((_ is Union!16367) (reg!16696 (regTwo!33246 r!7292)))) b!6489344))

(declare-fun b!6489348 () Bool)

(declare-fun e!3932875 () Bool)

(declare-fun tp!1796345 () Bool)

(declare-fun tp!1796343 () Bool)

(assert (=> b!6489348 (= e!3932875 (and tp!1796345 tp!1796343))))

(declare-fun b!6489345 () Bool)

(assert (=> b!6489345 (= e!3932875 tp_is_empty!41987)))

(declare-fun b!6489347 () Bool)

(declare-fun tp!1796346 () Bool)

(assert (=> b!6489347 (= e!3932875 tp!1796346)))

(declare-fun b!6489346 () Bool)

(declare-fun tp!1796344 () Bool)

(declare-fun tp!1796342 () Bool)

(assert (=> b!6489346 (= e!3932875 (and tp!1796344 tp!1796342))))

(assert (=> b!6487809 (= tp!1796269 e!3932875)))

(assert (= (and b!6487809 ((_ is ElementMatch!16367) (regOne!33246 (regTwo!33246 r!7292)))) b!6489345))

(assert (= (and b!6487809 ((_ is Concat!25212) (regOne!33246 (regTwo!33246 r!7292)))) b!6489346))

(assert (= (and b!6487809 ((_ is Star!16367) (regOne!33246 (regTwo!33246 r!7292)))) b!6489347))

(assert (= (and b!6487809 ((_ is Union!16367) (regOne!33246 (regTwo!33246 r!7292)))) b!6489348))

(declare-fun b!6489352 () Bool)

(declare-fun e!3932876 () Bool)

(declare-fun tp!1796350 () Bool)

(declare-fun tp!1796348 () Bool)

(assert (=> b!6489352 (= e!3932876 (and tp!1796350 tp!1796348))))

(declare-fun b!6489349 () Bool)

(assert (=> b!6489349 (= e!3932876 tp_is_empty!41987)))

(declare-fun b!6489351 () Bool)

(declare-fun tp!1796351 () Bool)

(assert (=> b!6489351 (= e!3932876 tp!1796351)))

(declare-fun b!6489350 () Bool)

(declare-fun tp!1796349 () Bool)

(declare-fun tp!1796347 () Bool)

(assert (=> b!6489350 (= e!3932876 (and tp!1796349 tp!1796347))))

(assert (=> b!6487809 (= tp!1796267 e!3932876)))

(assert (= (and b!6487809 ((_ is ElementMatch!16367) (regTwo!33246 (regTwo!33246 r!7292)))) b!6489349))

(assert (= (and b!6487809 ((_ is Concat!25212) (regTwo!33246 (regTwo!33246 r!7292)))) b!6489350))

(assert (= (and b!6487809 ((_ is Star!16367) (regTwo!33246 (regTwo!33246 r!7292)))) b!6489351))

(assert (= (and b!6487809 ((_ is Union!16367) (regTwo!33246 (regTwo!33246 r!7292)))) b!6489352))

(declare-fun b!6489356 () Bool)

(declare-fun e!3932877 () Bool)

(declare-fun tp!1796355 () Bool)

(declare-fun tp!1796353 () Bool)

(assert (=> b!6489356 (= e!3932877 (and tp!1796355 tp!1796353))))

(declare-fun b!6489353 () Bool)

(assert (=> b!6489353 (= e!3932877 tp_is_empty!41987)))

(declare-fun b!6489355 () Bool)

(declare-fun tp!1796356 () Bool)

(assert (=> b!6489355 (= e!3932877 tp!1796356)))

(declare-fun b!6489354 () Bool)

(declare-fun tp!1796354 () Bool)

(declare-fun tp!1796352 () Bool)

(assert (=> b!6489354 (= e!3932877 (and tp!1796354 tp!1796352))))

(assert (=> b!6487823 (= tp!1796283 e!3932877)))

(assert (= (and b!6487823 ((_ is ElementMatch!16367) (regOne!33246 (regOne!33247 r!7292)))) b!6489353))

(assert (= (and b!6487823 ((_ is Concat!25212) (regOne!33246 (regOne!33247 r!7292)))) b!6489354))

(assert (= (and b!6487823 ((_ is Star!16367) (regOne!33246 (regOne!33247 r!7292)))) b!6489355))

(assert (= (and b!6487823 ((_ is Union!16367) (regOne!33246 (regOne!33247 r!7292)))) b!6489356))

(declare-fun b!6489360 () Bool)

(declare-fun e!3932878 () Bool)

(declare-fun tp!1796360 () Bool)

(declare-fun tp!1796358 () Bool)

(assert (=> b!6489360 (= e!3932878 (and tp!1796360 tp!1796358))))

(declare-fun b!6489357 () Bool)

(assert (=> b!6489357 (= e!3932878 tp_is_empty!41987)))

(declare-fun b!6489359 () Bool)

(declare-fun tp!1796361 () Bool)

(assert (=> b!6489359 (= e!3932878 tp!1796361)))

(declare-fun b!6489358 () Bool)

(declare-fun tp!1796359 () Bool)

(declare-fun tp!1796357 () Bool)

(assert (=> b!6489358 (= e!3932878 (and tp!1796359 tp!1796357))))

(assert (=> b!6487823 (= tp!1796281 e!3932878)))

(assert (= (and b!6487823 ((_ is ElementMatch!16367) (regTwo!33246 (regOne!33247 r!7292)))) b!6489357))

(assert (= (and b!6487823 ((_ is Concat!25212) (regTwo!33246 (regOne!33247 r!7292)))) b!6489358))

(assert (= (and b!6487823 ((_ is Star!16367) (regTwo!33246 (regOne!33247 r!7292)))) b!6489359))

(assert (= (and b!6487823 ((_ is Union!16367) (regTwo!33246 (regOne!33247 r!7292)))) b!6489360))

(declare-fun b!6489364 () Bool)

(declare-fun e!3932879 () Bool)

(declare-fun tp!1796365 () Bool)

(declare-fun tp!1796363 () Bool)

(assert (=> b!6489364 (= e!3932879 (and tp!1796365 tp!1796363))))

(declare-fun b!6489361 () Bool)

(assert (=> b!6489361 (= e!3932879 tp_is_empty!41987)))

(declare-fun b!6489363 () Bool)

(declare-fun tp!1796366 () Bool)

(assert (=> b!6489363 (= e!3932879 tp!1796366)))

(declare-fun b!6489362 () Bool)

(declare-fun tp!1796364 () Bool)

(declare-fun tp!1796362 () Bool)

(assert (=> b!6489362 (= e!3932879 (and tp!1796364 tp!1796362))))

(assert (=> b!6487816 (= tp!1796276 e!3932879)))

(assert (= (and b!6487816 ((_ is ElementMatch!16367) (h!71725 (exprs!6251 (h!71726 zl!343))))) b!6489361))

(assert (= (and b!6487816 ((_ is Concat!25212) (h!71725 (exprs!6251 (h!71726 zl!343))))) b!6489362))

(assert (= (and b!6487816 ((_ is Star!16367) (h!71725 (exprs!6251 (h!71726 zl!343))))) b!6489363))

(assert (= (and b!6487816 ((_ is Union!16367) (h!71725 (exprs!6251 (h!71726 zl!343))))) b!6489364))

(declare-fun b!6489365 () Bool)

(declare-fun e!3932880 () Bool)

(declare-fun tp!1796367 () Bool)

(declare-fun tp!1796368 () Bool)

(assert (=> b!6489365 (= e!3932880 (and tp!1796367 tp!1796368))))

(assert (=> b!6487816 (= tp!1796277 e!3932880)))

(assert (= (and b!6487816 ((_ is Cons!65277) (t!379027 (exprs!6251 (h!71726 zl!343))))) b!6489365))

(declare-fun b!6489369 () Bool)

(declare-fun e!3932881 () Bool)

(declare-fun tp!1796372 () Bool)

(declare-fun tp!1796370 () Bool)

(assert (=> b!6489369 (= e!3932881 (and tp!1796372 tp!1796370))))

(declare-fun b!6489366 () Bool)

(assert (=> b!6489366 (= e!3932881 tp_is_empty!41987)))

(declare-fun b!6489368 () Bool)

(declare-fun tp!1796373 () Bool)

(assert (=> b!6489368 (= e!3932881 tp!1796373)))

(declare-fun b!6489367 () Bool)

(declare-fun tp!1796371 () Bool)

(declare-fun tp!1796369 () Bool)

(assert (=> b!6489367 (= e!3932881 (and tp!1796371 tp!1796369))))

(assert (=> b!6487807 (= tp!1796265 e!3932881)))

(assert (= (and b!6487807 ((_ is ElementMatch!16367) (regOne!33247 (regOne!33246 r!7292)))) b!6489366))

(assert (= (and b!6487807 ((_ is Concat!25212) (regOne!33247 (regOne!33246 r!7292)))) b!6489367))

(assert (= (and b!6487807 ((_ is Star!16367) (regOne!33247 (regOne!33246 r!7292)))) b!6489368))

(assert (= (and b!6487807 ((_ is Union!16367) (regOne!33247 (regOne!33246 r!7292)))) b!6489369))

(declare-fun b!6489375 () Bool)

(declare-fun e!3932883 () Bool)

(declare-fun tp!1796377 () Bool)

(declare-fun tp!1796375 () Bool)

(assert (=> b!6489375 (= e!3932883 (and tp!1796377 tp!1796375))))

(declare-fun b!6489370 () Bool)

(assert (=> b!6489370 (= e!3932883 tp_is_empty!41987)))

(declare-fun b!6489374 () Bool)

(declare-fun tp!1796378 () Bool)

(assert (=> b!6489374 (= e!3932883 tp!1796378)))

(declare-fun b!6489372 () Bool)

(declare-fun tp!1796376 () Bool)

(declare-fun tp!1796374 () Bool)

(assert (=> b!6489372 (= e!3932883 (and tp!1796376 tp!1796374))))

(assert (=> b!6487807 (= tp!1796263 e!3932883)))

(assert (= (and b!6487807 ((_ is ElementMatch!16367) (regTwo!33247 (regOne!33246 r!7292)))) b!6489370))

(assert (= (and b!6487807 ((_ is Concat!25212) (regTwo!33247 (regOne!33246 r!7292)))) b!6489372))

(assert (= (and b!6487807 ((_ is Star!16367) (regTwo!33247 (regOne!33246 r!7292)))) b!6489374))

(assert (= (and b!6487807 ((_ is Union!16367) (regTwo!33247 (regOne!33246 r!7292)))) b!6489375))

(declare-fun b!6489376 () Bool)

(declare-fun e!3932884 () Bool)

(declare-fun tp!1796379 () Bool)

(assert (=> b!6489376 (= e!3932884 (and tp_is_empty!41987 tp!1796379))))

(assert (=> b!6487821 (= tp!1796280 e!3932884)))

(assert (= (and b!6487821 ((_ is Cons!65276) (t!379026 (t!379026 s!2326)))) b!6489376))

(declare-fun b!6489380 () Bool)

(declare-fun e!3932885 () Bool)

(declare-fun tp!1796383 () Bool)

(declare-fun tp!1796381 () Bool)

(assert (=> b!6489380 (= e!3932885 (and tp!1796383 tp!1796381))))

(declare-fun b!6489377 () Bool)

(assert (=> b!6489377 (= e!3932885 tp_is_empty!41987)))

(declare-fun b!6489379 () Bool)

(declare-fun tp!1796384 () Bool)

(assert (=> b!6489379 (= e!3932885 tp!1796384)))

(declare-fun b!6489378 () Bool)

(declare-fun tp!1796382 () Bool)

(declare-fun tp!1796380 () Bool)

(assert (=> b!6489378 (= e!3932885 (and tp!1796382 tp!1796380))))

(assert (=> b!6487829 (= tp!1796289 e!3932885)))

(assert (= (and b!6487829 ((_ is ElementMatch!16367) (regOne!33247 (regTwo!33247 r!7292)))) b!6489377))

(assert (= (and b!6487829 ((_ is Concat!25212) (regOne!33247 (regTwo!33247 r!7292)))) b!6489378))

(assert (= (and b!6487829 ((_ is Star!16367) (regOne!33247 (regTwo!33247 r!7292)))) b!6489379))

(assert (= (and b!6487829 ((_ is Union!16367) (regOne!33247 (regTwo!33247 r!7292)))) b!6489380))

(declare-fun b!6489384 () Bool)

(declare-fun e!3932886 () Bool)

(declare-fun tp!1796388 () Bool)

(declare-fun tp!1796386 () Bool)

(assert (=> b!6489384 (= e!3932886 (and tp!1796388 tp!1796386))))

(declare-fun b!6489381 () Bool)

(assert (=> b!6489381 (= e!3932886 tp_is_empty!41987)))

(declare-fun b!6489383 () Bool)

(declare-fun tp!1796389 () Bool)

(assert (=> b!6489383 (= e!3932886 tp!1796389)))

(declare-fun b!6489382 () Bool)

(declare-fun tp!1796387 () Bool)

(declare-fun tp!1796385 () Bool)

(assert (=> b!6489382 (= e!3932886 (and tp!1796387 tp!1796385))))

(assert (=> b!6487829 (= tp!1796287 e!3932886)))

(assert (= (and b!6487829 ((_ is ElementMatch!16367) (regTwo!33247 (regTwo!33247 r!7292)))) b!6489381))

(assert (= (and b!6487829 ((_ is Concat!25212) (regTwo!33247 (regTwo!33247 r!7292)))) b!6489382))

(assert (= (and b!6487829 ((_ is Star!16367) (regTwo!33247 (regTwo!33247 r!7292)))) b!6489383))

(assert (= (and b!6487829 ((_ is Union!16367) (regTwo!33247 (regTwo!33247 r!7292)))) b!6489384))

(declare-fun b!6489388 () Bool)

(declare-fun e!3932887 () Bool)

(declare-fun tp!1796393 () Bool)

(declare-fun tp!1796391 () Bool)

(assert (=> b!6489388 (= e!3932887 (and tp!1796393 tp!1796391))))

(declare-fun b!6489385 () Bool)

(assert (=> b!6489385 (= e!3932887 tp_is_empty!41987)))

(declare-fun b!6489387 () Bool)

(declare-fun tp!1796394 () Bool)

(assert (=> b!6489387 (= e!3932887 tp!1796394)))

(declare-fun b!6489386 () Bool)

(declare-fun tp!1796392 () Bool)

(declare-fun tp!1796390 () Bool)

(assert (=> b!6489386 (= e!3932887 (and tp!1796392 tp!1796390))))

(assert (=> b!6487806 (= tp!1796266 e!3932887)))

(assert (= (and b!6487806 ((_ is ElementMatch!16367) (reg!16696 (regOne!33246 r!7292)))) b!6489385))

(assert (= (and b!6487806 ((_ is Concat!25212) (reg!16696 (regOne!33246 r!7292)))) b!6489386))

(assert (= (and b!6487806 ((_ is Star!16367) (reg!16696 (regOne!33246 r!7292)))) b!6489387))

(assert (= (and b!6487806 ((_ is Union!16367) (reg!16696 (regOne!33246 r!7292)))) b!6489388))

(declare-fun b!6489392 () Bool)

(declare-fun e!3932888 () Bool)

(declare-fun tp!1796398 () Bool)

(declare-fun tp!1796396 () Bool)

(assert (=> b!6489392 (= e!3932888 (and tp!1796398 tp!1796396))))

(declare-fun b!6489389 () Bool)

(assert (=> b!6489389 (= e!3932888 tp_is_empty!41987)))

(declare-fun b!6489391 () Bool)

(declare-fun tp!1796399 () Bool)

(assert (=> b!6489391 (= e!3932888 tp!1796399)))

(declare-fun b!6489390 () Bool)

(declare-fun tp!1796397 () Bool)

(declare-fun tp!1796395 () Bool)

(assert (=> b!6489390 (= e!3932888 (and tp!1796397 tp!1796395))))

(assert (=> b!6487843 (= tp!1796303 e!3932888)))

(assert (= (and b!6487843 ((_ is ElementMatch!16367) (h!71725 (exprs!6251 setElem!44193)))) b!6489389))

(assert (= (and b!6487843 ((_ is Concat!25212) (h!71725 (exprs!6251 setElem!44193)))) b!6489390))

(assert (= (and b!6487843 ((_ is Star!16367) (h!71725 (exprs!6251 setElem!44193)))) b!6489391))

(assert (= (and b!6487843 ((_ is Union!16367) (h!71725 (exprs!6251 setElem!44193)))) b!6489392))

(declare-fun b!6489393 () Bool)

(declare-fun e!3932889 () Bool)

(declare-fun tp!1796400 () Bool)

(declare-fun tp!1796401 () Bool)

(assert (=> b!6489393 (= e!3932889 (and tp!1796400 tp!1796401))))

(assert (=> b!6487843 (= tp!1796304 e!3932889)))

(assert (= (and b!6487843 ((_ is Cons!65277) (t!379027 (exprs!6251 setElem!44193)))) b!6489393))

(declare-fun b!6489397 () Bool)

(declare-fun e!3932890 () Bool)

(declare-fun tp!1796405 () Bool)

(declare-fun tp!1796403 () Bool)

(assert (=> b!6489397 (= e!3932890 (and tp!1796405 tp!1796403))))

(declare-fun b!6489394 () Bool)

(assert (=> b!6489394 (= e!3932890 tp_is_empty!41987)))

(declare-fun b!6489396 () Bool)

(declare-fun tp!1796406 () Bool)

(assert (=> b!6489396 (= e!3932890 tp!1796406)))

(declare-fun b!6489395 () Bool)

(declare-fun tp!1796404 () Bool)

(declare-fun tp!1796402 () Bool)

(assert (=> b!6489395 (= e!3932890 (and tp!1796404 tp!1796402))))

(assert (=> b!6487828 (= tp!1796290 e!3932890)))

(assert (= (and b!6487828 ((_ is ElementMatch!16367) (reg!16696 (regTwo!33247 r!7292)))) b!6489394))

(assert (= (and b!6487828 ((_ is Concat!25212) (reg!16696 (regTwo!33247 r!7292)))) b!6489395))

(assert (= (and b!6487828 ((_ is Star!16367) (reg!16696 (regTwo!33247 r!7292)))) b!6489396))

(assert (= (and b!6487828 ((_ is Union!16367) (reg!16696 (regTwo!33247 r!7292)))) b!6489397))

(declare-fun b!6489403 () Bool)

(declare-fun e!3932891 () Bool)

(declare-fun tp!1796410 () Bool)

(declare-fun tp!1796408 () Bool)

(assert (=> b!6489403 (= e!3932891 (and tp!1796410 tp!1796408))))

(declare-fun b!6489398 () Bool)

(assert (=> b!6489398 (= e!3932891 tp_is_empty!41987)))

(declare-fun b!6489401 () Bool)

(declare-fun tp!1796411 () Bool)

(assert (=> b!6489401 (= e!3932891 tp!1796411)))

(declare-fun b!6489399 () Bool)

(declare-fun tp!1796409 () Bool)

(declare-fun tp!1796407 () Bool)

(assert (=> b!6489399 (= e!3932891 (and tp!1796409 tp!1796407))))

(assert (=> b!6487805 (= tp!1796264 e!3932891)))

(assert (= (and b!6487805 ((_ is ElementMatch!16367) (regOne!33246 (regOne!33246 r!7292)))) b!6489398))

(assert (= (and b!6487805 ((_ is Concat!25212) (regOne!33246 (regOne!33246 r!7292)))) b!6489399))

(assert (= (and b!6487805 ((_ is Star!16367) (regOne!33246 (regOne!33246 r!7292)))) b!6489401))

(assert (= (and b!6487805 ((_ is Union!16367) (regOne!33246 (regOne!33246 r!7292)))) b!6489403))

(declare-fun b!6489407 () Bool)

(declare-fun e!3932893 () Bool)

(declare-fun tp!1796415 () Bool)

(declare-fun tp!1796413 () Bool)

(assert (=> b!6489407 (= e!3932893 (and tp!1796415 tp!1796413))))

(declare-fun b!6489404 () Bool)

(assert (=> b!6489404 (= e!3932893 tp_is_empty!41987)))

(declare-fun b!6489406 () Bool)

(declare-fun tp!1796416 () Bool)

(assert (=> b!6489406 (= e!3932893 tp!1796416)))

(declare-fun b!6489405 () Bool)

(declare-fun tp!1796414 () Bool)

(declare-fun tp!1796412 () Bool)

(assert (=> b!6489405 (= e!3932893 (and tp!1796414 tp!1796412))))

(assert (=> b!6487805 (= tp!1796262 e!3932893)))

(assert (= (and b!6487805 ((_ is ElementMatch!16367) (regTwo!33246 (regOne!33246 r!7292)))) b!6489404))

(assert (= (and b!6487805 ((_ is Concat!25212) (regTwo!33246 (regOne!33246 r!7292)))) b!6489405))

(assert (= (and b!6487805 ((_ is Star!16367) (regTwo!33246 (regOne!33246 r!7292)))) b!6489406))

(assert (= (and b!6487805 ((_ is Union!16367) (regTwo!33246 (regOne!33246 r!7292)))) b!6489407))

(declare-fun b!6489410 () Bool)

(declare-fun e!3932895 () Bool)

(declare-fun tp!1796417 () Bool)

(declare-fun tp!1796418 () Bool)

(assert (=> b!6489410 (= e!3932895 (and tp!1796417 tp!1796418))))

(assert (=> b!6487842 (= tp!1796301 e!3932895)))

(assert (= (and b!6487842 ((_ is Cons!65277) (exprs!6251 (h!71726 (t!379028 zl!343))))) b!6489410))

(declare-fun b!6489416 () Bool)

(declare-fun e!3932897 () Bool)

(declare-fun tp!1796422 () Bool)

(declare-fun tp!1796420 () Bool)

(assert (=> b!6489416 (= e!3932897 (and tp!1796422 tp!1796420))))

(declare-fun b!6489413 () Bool)

(assert (=> b!6489413 (= e!3932897 tp_is_empty!41987)))

(declare-fun b!6489415 () Bool)

(declare-fun tp!1796423 () Bool)

(assert (=> b!6489415 (= e!3932897 tp!1796423)))

(declare-fun b!6489414 () Bool)

(declare-fun tp!1796421 () Bool)

(declare-fun tp!1796419 () Bool)

(assert (=> b!6489414 (= e!3932897 (and tp!1796421 tp!1796419))))

(assert (=> b!6487827 (= tp!1796288 e!3932897)))

(assert (= (and b!6487827 ((_ is ElementMatch!16367) (regOne!33246 (regTwo!33247 r!7292)))) b!6489413))

(assert (= (and b!6487827 ((_ is Concat!25212) (regOne!33246 (regTwo!33247 r!7292)))) b!6489414))

(assert (= (and b!6487827 ((_ is Star!16367) (regOne!33246 (regTwo!33247 r!7292)))) b!6489415))

(assert (= (and b!6487827 ((_ is Union!16367) (regOne!33246 (regTwo!33247 r!7292)))) b!6489416))

(declare-fun b!6489420 () Bool)

(declare-fun e!3932898 () Bool)

(declare-fun tp!1796427 () Bool)

(declare-fun tp!1796425 () Bool)

(assert (=> b!6489420 (= e!3932898 (and tp!1796427 tp!1796425))))

(declare-fun b!6489417 () Bool)

(assert (=> b!6489417 (= e!3932898 tp_is_empty!41987)))

(declare-fun b!6489419 () Bool)

(declare-fun tp!1796428 () Bool)

(assert (=> b!6489419 (= e!3932898 tp!1796428)))

(declare-fun b!6489418 () Bool)

(declare-fun tp!1796426 () Bool)

(declare-fun tp!1796424 () Bool)

(assert (=> b!6489418 (= e!3932898 (and tp!1796426 tp!1796424))))

(assert (=> b!6487827 (= tp!1796286 e!3932898)))

(assert (= (and b!6487827 ((_ is ElementMatch!16367) (regTwo!33246 (regTwo!33247 r!7292)))) b!6489417))

(assert (= (and b!6487827 ((_ is Concat!25212) (regTwo!33246 (regTwo!33247 r!7292)))) b!6489418))

(assert (= (and b!6487827 ((_ is Star!16367) (regTwo!33246 (regTwo!33247 r!7292)))) b!6489419))

(assert (= (and b!6487827 ((_ is Union!16367) (regTwo!33246 (regTwo!33247 r!7292)))) b!6489420))

(declare-fun b!6489422 () Bool)

(declare-fun e!3932900 () Bool)

(declare-fun tp!1796429 () Bool)

(assert (=> b!6489422 (= e!3932900 tp!1796429)))

(declare-fun tp!1796430 () Bool)

(declare-fun e!3932899 () Bool)

(declare-fun b!6489421 () Bool)

(assert (=> b!6489421 (= e!3932899 (and (inv!84164 (h!71726 (t!379028 (t!379028 zl!343)))) e!3932900 tp!1796430))))

(assert (=> b!6487841 (= tp!1796302 e!3932899)))

(assert (= b!6489421 b!6489422))

(assert (= (and b!6487841 ((_ is Cons!65278) (t!379028 (t!379028 zl!343)))) b!6489421))

(declare-fun m!7278038 () Bool)

(assert (=> b!6489421 m!7278038))

(declare-fun b!6489435 () Bool)

(declare-fun e!3932908 () Bool)

(declare-fun tp!1796434 () Bool)

(declare-fun tp!1796432 () Bool)

(assert (=> b!6489435 (= e!3932908 (and tp!1796434 tp!1796432))))

(declare-fun b!6489432 () Bool)

(assert (=> b!6489432 (= e!3932908 tp_is_empty!41987)))

(declare-fun b!6489434 () Bool)

(declare-fun tp!1796435 () Bool)

(assert (=> b!6489434 (= e!3932908 tp!1796435)))

(declare-fun b!6489433 () Bool)

(declare-fun tp!1796433 () Bool)

(declare-fun tp!1796431 () Bool)

(assert (=> b!6489433 (= e!3932908 (and tp!1796433 tp!1796431))))

(assert (=> b!6487803 (= tp!1796260 e!3932908)))

(assert (= (and b!6487803 ((_ is ElementMatch!16367) (regOne!33247 (reg!16696 r!7292)))) b!6489432))

(assert (= (and b!6487803 ((_ is Concat!25212) (regOne!33247 (reg!16696 r!7292)))) b!6489433))

(assert (= (and b!6487803 ((_ is Star!16367) (regOne!33247 (reg!16696 r!7292)))) b!6489434))

(assert (= (and b!6487803 ((_ is Union!16367) (regOne!33247 (reg!16696 r!7292)))) b!6489435))

(declare-fun b!6489439 () Bool)

(declare-fun e!3932909 () Bool)

(declare-fun tp!1796439 () Bool)

(declare-fun tp!1796437 () Bool)

(assert (=> b!6489439 (= e!3932909 (and tp!1796439 tp!1796437))))

(declare-fun b!6489436 () Bool)

(assert (=> b!6489436 (= e!3932909 tp_is_empty!41987)))

(declare-fun b!6489438 () Bool)

(declare-fun tp!1796440 () Bool)

(assert (=> b!6489438 (= e!3932909 tp!1796440)))

(declare-fun b!6489437 () Bool)

(declare-fun tp!1796438 () Bool)

(declare-fun tp!1796436 () Bool)

(assert (=> b!6489437 (= e!3932909 (and tp!1796438 tp!1796436))))

(assert (=> b!6487803 (= tp!1796258 e!3932909)))

(assert (= (and b!6487803 ((_ is ElementMatch!16367) (regTwo!33247 (reg!16696 r!7292)))) b!6489436))

(assert (= (and b!6487803 ((_ is Concat!25212) (regTwo!33247 (reg!16696 r!7292)))) b!6489437))

(assert (= (and b!6487803 ((_ is Star!16367) (regTwo!33247 (reg!16696 r!7292)))) b!6489438))

(assert (= (and b!6487803 ((_ is Union!16367) (regTwo!33247 (reg!16696 r!7292)))) b!6489439))

(declare-fun b!6489443 () Bool)

(declare-fun e!3932910 () Bool)

(declare-fun tp!1796444 () Bool)

(declare-fun tp!1796442 () Bool)

(assert (=> b!6489443 (= e!3932910 (and tp!1796444 tp!1796442))))

(declare-fun b!6489440 () Bool)

(assert (=> b!6489440 (= e!3932910 tp_is_empty!41987)))

(declare-fun b!6489442 () Bool)

(declare-fun tp!1796445 () Bool)

(assert (=> b!6489442 (= e!3932910 tp!1796445)))

(declare-fun b!6489441 () Bool)

(declare-fun tp!1796443 () Bool)

(declare-fun tp!1796441 () Bool)

(assert (=> b!6489441 (= e!3932910 (and tp!1796443 tp!1796441))))

(assert (=> b!6487811 (= tp!1796270 e!3932910)))

(assert (= (and b!6487811 ((_ is ElementMatch!16367) (regOne!33247 (regTwo!33246 r!7292)))) b!6489440))

(assert (= (and b!6487811 ((_ is Concat!25212) (regOne!33247 (regTwo!33246 r!7292)))) b!6489441))

(assert (= (and b!6487811 ((_ is Star!16367) (regOne!33247 (regTwo!33246 r!7292)))) b!6489442))

(assert (= (and b!6487811 ((_ is Union!16367) (regOne!33247 (regTwo!33246 r!7292)))) b!6489443))

(declare-fun b!6489447 () Bool)

(declare-fun e!3932911 () Bool)

(declare-fun tp!1796449 () Bool)

(declare-fun tp!1796447 () Bool)

(assert (=> b!6489447 (= e!3932911 (and tp!1796449 tp!1796447))))

(declare-fun b!6489444 () Bool)

(assert (=> b!6489444 (= e!3932911 tp_is_empty!41987)))

(declare-fun b!6489446 () Bool)

(declare-fun tp!1796450 () Bool)

(assert (=> b!6489446 (= e!3932911 tp!1796450)))

(declare-fun b!6489445 () Bool)

(declare-fun tp!1796448 () Bool)

(declare-fun tp!1796446 () Bool)

(assert (=> b!6489445 (= e!3932911 (and tp!1796448 tp!1796446))))

(assert (=> b!6487811 (= tp!1796268 e!3932911)))

(assert (= (and b!6487811 ((_ is ElementMatch!16367) (regTwo!33247 (regTwo!33246 r!7292)))) b!6489444))

(assert (= (and b!6487811 ((_ is Concat!25212) (regTwo!33247 (regTwo!33246 r!7292)))) b!6489445))

(assert (= (and b!6487811 ((_ is Star!16367) (regTwo!33247 (regTwo!33246 r!7292)))) b!6489446))

(assert (= (and b!6487811 ((_ is Union!16367) (regTwo!33247 (regTwo!33246 r!7292)))) b!6489447))

(declare-fun b!6489461 () Bool)

(declare-fun e!3932918 () Bool)

(declare-fun tp!1796454 () Bool)

(declare-fun tp!1796452 () Bool)

(assert (=> b!6489461 (= e!3932918 (and tp!1796454 tp!1796452))))

(declare-fun b!6489458 () Bool)

(assert (=> b!6489458 (= e!3932918 tp_is_empty!41987)))

(declare-fun b!6489460 () Bool)

(declare-fun tp!1796455 () Bool)

(assert (=> b!6489460 (= e!3932918 tp!1796455)))

(declare-fun b!6489459 () Bool)

(declare-fun tp!1796453 () Bool)

(declare-fun tp!1796451 () Bool)

(assert (=> b!6489459 (= e!3932918 (and tp!1796453 tp!1796451))))

(assert (=> b!6487825 (= tp!1796284 e!3932918)))

(assert (= (and b!6487825 ((_ is ElementMatch!16367) (regOne!33247 (regOne!33247 r!7292)))) b!6489458))

(assert (= (and b!6487825 ((_ is Concat!25212) (regOne!33247 (regOne!33247 r!7292)))) b!6489459))

(assert (= (and b!6487825 ((_ is Star!16367) (regOne!33247 (regOne!33247 r!7292)))) b!6489460))

(assert (= (and b!6487825 ((_ is Union!16367) (regOne!33247 (regOne!33247 r!7292)))) b!6489461))

(declare-fun b!6489465 () Bool)

(declare-fun e!3932919 () Bool)

(declare-fun tp!1796459 () Bool)

(declare-fun tp!1796457 () Bool)

(assert (=> b!6489465 (= e!3932919 (and tp!1796459 tp!1796457))))

(declare-fun b!6489462 () Bool)

(assert (=> b!6489462 (= e!3932919 tp_is_empty!41987)))

(declare-fun b!6489464 () Bool)

(declare-fun tp!1796460 () Bool)

(assert (=> b!6489464 (= e!3932919 tp!1796460)))

(declare-fun b!6489463 () Bool)

(declare-fun tp!1796458 () Bool)

(declare-fun tp!1796456 () Bool)

(assert (=> b!6489463 (= e!3932919 (and tp!1796458 tp!1796456))))

(assert (=> b!6487825 (= tp!1796282 e!3932919)))

(assert (= (and b!6487825 ((_ is ElementMatch!16367) (regTwo!33247 (regOne!33247 r!7292)))) b!6489462))

(assert (= (and b!6487825 ((_ is Concat!25212) (regTwo!33247 (regOne!33247 r!7292)))) b!6489463))

(assert (= (and b!6487825 ((_ is Star!16367) (regTwo!33247 (regOne!33247 r!7292)))) b!6489464))

(assert (= (and b!6487825 ((_ is Union!16367) (regTwo!33247 (regOne!33247 r!7292)))) b!6489465))

(declare-fun b!6489469 () Bool)

(declare-fun e!3932920 () Bool)

(declare-fun tp!1796464 () Bool)

(declare-fun tp!1796462 () Bool)

(assert (=> b!6489469 (= e!3932920 (and tp!1796464 tp!1796462))))

(declare-fun b!6489466 () Bool)

(assert (=> b!6489466 (= e!3932920 tp_is_empty!41987)))

(declare-fun b!6489468 () Bool)

(declare-fun tp!1796465 () Bool)

(assert (=> b!6489468 (= e!3932920 tp!1796465)))

(declare-fun b!6489467 () Bool)

(declare-fun tp!1796463 () Bool)

(declare-fun tp!1796461 () Bool)

(assert (=> b!6489467 (= e!3932920 (and tp!1796463 tp!1796461))))

(assert (=> b!6487802 (= tp!1796261 e!3932920)))

(assert (= (and b!6487802 ((_ is ElementMatch!16367) (reg!16696 (reg!16696 r!7292)))) b!6489466))

(assert (= (and b!6487802 ((_ is Concat!25212) (reg!16696 (reg!16696 r!7292)))) b!6489467))

(assert (= (and b!6487802 ((_ is Star!16367) (reg!16696 (reg!16696 r!7292)))) b!6489468))

(assert (= (and b!6487802 ((_ is Union!16367) (reg!16696 (reg!16696 r!7292)))) b!6489469))

(declare-fun b!6489473 () Bool)

(declare-fun e!3932921 () Bool)

(declare-fun tp!1796469 () Bool)

(declare-fun tp!1796467 () Bool)

(assert (=> b!6489473 (= e!3932921 (and tp!1796469 tp!1796467))))

(declare-fun b!6489470 () Bool)

(assert (=> b!6489470 (= e!3932921 tp_is_empty!41987)))

(declare-fun b!6489472 () Bool)

(declare-fun tp!1796470 () Bool)

(assert (=> b!6489472 (= e!3932921 tp!1796470)))

(declare-fun b!6489471 () Bool)

(declare-fun tp!1796468 () Bool)

(declare-fun tp!1796466 () Bool)

(assert (=> b!6489471 (= e!3932921 (and tp!1796468 tp!1796466))))

(assert (=> b!6487824 (= tp!1796285 e!3932921)))

(assert (= (and b!6487824 ((_ is ElementMatch!16367) (reg!16696 (regOne!33247 r!7292)))) b!6489470))

(assert (= (and b!6487824 ((_ is Concat!25212) (reg!16696 (regOne!33247 r!7292)))) b!6489471))

(assert (= (and b!6487824 ((_ is Star!16367) (reg!16696 (regOne!33247 r!7292)))) b!6489472))

(assert (= (and b!6487824 ((_ is Union!16367) (reg!16696 (regOne!33247 r!7292)))) b!6489473))

(declare-fun b!6489477 () Bool)

(declare-fun e!3932922 () Bool)

(declare-fun tp!1796474 () Bool)

(declare-fun tp!1796472 () Bool)

(assert (=> b!6489477 (= e!3932922 (and tp!1796474 tp!1796472))))

(declare-fun b!6489474 () Bool)

(assert (=> b!6489474 (= e!3932922 tp_is_empty!41987)))

(declare-fun b!6489476 () Bool)

(declare-fun tp!1796475 () Bool)

(assert (=> b!6489476 (= e!3932922 tp!1796475)))

(declare-fun b!6489475 () Bool)

(declare-fun tp!1796473 () Bool)

(declare-fun tp!1796471 () Bool)

(assert (=> b!6489475 (= e!3932922 (and tp!1796473 tp!1796471))))

(assert (=> b!6487801 (= tp!1796259 e!3932922)))

(assert (= (and b!6487801 ((_ is ElementMatch!16367) (regOne!33246 (reg!16696 r!7292)))) b!6489474))

(assert (= (and b!6487801 ((_ is Concat!25212) (regOne!33246 (reg!16696 r!7292)))) b!6489475))

(assert (= (and b!6487801 ((_ is Star!16367) (regOne!33246 (reg!16696 r!7292)))) b!6489476))

(assert (= (and b!6487801 ((_ is Union!16367) (regOne!33246 (reg!16696 r!7292)))) b!6489477))

(declare-fun b!6489481 () Bool)

(declare-fun e!3932923 () Bool)

(declare-fun tp!1796479 () Bool)

(declare-fun tp!1796477 () Bool)

(assert (=> b!6489481 (= e!3932923 (and tp!1796479 tp!1796477))))

(declare-fun b!6489478 () Bool)

(assert (=> b!6489478 (= e!3932923 tp_is_empty!41987)))

(declare-fun b!6489480 () Bool)

(declare-fun tp!1796480 () Bool)

(assert (=> b!6489480 (= e!3932923 tp!1796480)))

(declare-fun b!6489479 () Bool)

(declare-fun tp!1796478 () Bool)

(declare-fun tp!1796476 () Bool)

(assert (=> b!6489479 (= e!3932923 (and tp!1796478 tp!1796476))))

(assert (=> b!6487801 (= tp!1796257 e!3932923)))

(assert (= (and b!6487801 ((_ is ElementMatch!16367) (regTwo!33246 (reg!16696 r!7292)))) b!6489478))

(assert (= (and b!6487801 ((_ is Concat!25212) (regTwo!33246 (reg!16696 r!7292)))) b!6489479))

(assert (= (and b!6487801 ((_ is Star!16367) (regTwo!33246 (reg!16696 r!7292)))) b!6489480))

(assert (= (and b!6487801 ((_ is Union!16367) (regTwo!33246 (reg!16696 r!7292)))) b!6489481))

(declare-fun b!6489482 () Bool)

(declare-fun e!3932924 () Bool)

(declare-fun tp!1796481 () Bool)

(declare-fun tp!1796482 () Bool)

(assert (=> b!6489482 (= e!3932924 (and tp!1796481 tp!1796482))))

(assert (=> b!6487834 (= tp!1796295 e!3932924)))

(assert (= (and b!6487834 ((_ is Cons!65277) (exprs!6251 setElem!44199))) b!6489482))

(declare-fun condSetEmpty!44210 () Bool)

(assert (=> setNonEmpty!44199 (= condSetEmpty!44210 (= setRest!44199 ((as const (Array Context!11502 Bool)) false)))))

(declare-fun setRes!44210 () Bool)

(assert (=> setNonEmpty!44199 (= tp!1796296 setRes!44210)))

(declare-fun setIsEmpty!44210 () Bool)

(assert (=> setIsEmpty!44210 setRes!44210))

(declare-fun tp!1796484 () Bool)

(declare-fun e!3932925 () Bool)

(declare-fun setNonEmpty!44210 () Bool)

(declare-fun setElem!44210 () Context!11502)

(assert (=> setNonEmpty!44210 (= setRes!44210 (and tp!1796484 (inv!84164 setElem!44210) e!3932925))))

(declare-fun setRest!44210 () (InoxSet Context!11502))

(assert (=> setNonEmpty!44210 (= setRest!44199 ((_ map or) (store ((as const (Array Context!11502 Bool)) false) setElem!44210 true) setRest!44210))))

(declare-fun b!6489483 () Bool)

(declare-fun tp!1796483 () Bool)

(assert (=> b!6489483 (= e!3932925 tp!1796483)))

(assert (= (and setNonEmpty!44199 condSetEmpty!44210) setIsEmpty!44210))

(assert (= (and setNonEmpty!44199 (not condSetEmpty!44210)) setNonEmpty!44210))

(assert (= setNonEmpty!44210 b!6489483))

(declare-fun m!7278046 () Bool)

(assert (=> setNonEmpty!44210 m!7278046))

(declare-fun b_lambda!245669 () Bool)

(assert (= b_lambda!245641 (or b!6486628 b_lambda!245669)))

(assert (=> d!2035495 d!2035193))

(declare-fun b_lambda!245671 () Bool)

(assert (= b_lambda!245647 (or b!6486628 b_lambda!245671)))

(assert (=> d!2035543 d!2035191))

(declare-fun b_lambda!245673 () Bool)

(assert (= b_lambda!245653 (or b!6486640 b_lambda!245673)))

(declare-fun bs!1647044 () Bool)

(declare-fun d!2036061 () Bool)

(assert (= bs!1647044 (and d!2036061 b!6486640)))

(assert (=> bs!1647044 (= (dynLambda!25928 lambda!359126 (h!71725 (++!14445 lt!2388881 lt!2388871))) (validRegex!8103 (h!71725 (++!14445 lt!2388881 lt!2388871))))))

(declare-fun m!7278066 () Bool)

(assert (=> bs!1647044 m!7278066))

(assert (=> b!6488726 d!2036061))

(declare-fun b_lambda!245675 () Bool)

(assert (= b_lambda!245637 (or d!2035185 b_lambda!245675)))

(declare-fun bs!1647045 () Bool)

(declare-fun d!2036063 () Bool)

(assert (= bs!1647045 (and d!2036063 d!2035185)))

(assert (=> bs!1647045 (= (dynLambda!25928 lambda!359228 (h!71725 lt!2389121)) (validRegex!8103 (h!71725 lt!2389121)))))

(declare-fun m!7278068 () Bool)

(assert (=> bs!1647045 m!7278068))

(assert (=> b!6488268 d!2036063))

(declare-fun b_lambda!245677 () Bool)

(assert (= b_lambda!245657 (or d!2035183 b_lambda!245677)))

(declare-fun bs!1647046 () Bool)

(declare-fun d!2036065 () Bool)

(assert (= bs!1647046 (and d!2036065 d!2035183)))

(assert (=> bs!1647046 (= (dynLambda!25928 lambda!359225 (h!71725 (unfocusZipperList!1788 zl!343))) (validRegex!8103 (h!71725 (unfocusZipperList!1788 zl!343))))))

(declare-fun m!7278070 () Bool)

(assert (=> bs!1647046 m!7278070))

(assert (=> b!6488862 d!2036065))

(declare-fun b_lambda!245679 () Bool)

(assert (= b_lambda!245639 (or d!2035009 b_lambda!245679)))

(declare-fun bs!1647047 () Bool)

(declare-fun d!2036067 () Bool)

(assert (= bs!1647047 (and d!2036067 d!2035009)))

(assert (=> bs!1647047 (= (dynLambda!25928 lambda!359178 (h!71725 (exprs!6251 (h!71726 zl!343)))) (validRegex!8103 (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(declare-fun m!7278072 () Bool)

(assert (=> bs!1647047 m!7278072))

(assert (=> b!6488380 d!2036067))

(declare-fun b_lambda!245681 () Bool)

(assert (= b_lambda!245651 (or d!2035173 b_lambda!245681)))

(declare-fun bs!1647048 () Bool)

(declare-fun d!2036069 () Bool)

(assert (= bs!1647048 (and d!2036069 d!2035173)))

(assert (=> bs!1647048 (= (dynLambda!25928 lambda!359222 (h!71725 (exprs!6251 (h!71726 zl!343)))) (validRegex!8103 (h!71725 (exprs!6251 (h!71726 zl!343)))))))

(assert (=> bs!1647048 m!7278072))

(assert (=> b!6488647 d!2036069))

(declare-fun b_lambda!245683 () Bool)

(assert (= b_lambda!245645 (or d!2035109 b_lambda!245683)))

(declare-fun bs!1647049 () Bool)

(declare-fun d!2036071 () Bool)

(assert (= bs!1647049 (and d!2036071 d!2035109)))

(assert (=> bs!1647049 (= (dynLambda!25928 lambda!359194 (h!71725 (exprs!6251 setElem!44193))) (validRegex!8103 (h!71725 (exprs!6251 setElem!44193))))))

(declare-fun m!7278074 () Bool)

(assert (=> bs!1647049 m!7278074))

(assert (=> b!6488448 d!2036071))

(declare-fun b_lambda!245685 () Bool)

(assert (= b_lambda!245643 (or b!6486628 b_lambda!245685)))

(assert (=> d!2035509 d!2035195))

(declare-fun b_lambda!245687 () Bool)

(assert (= b_lambda!245633 (or d!2035073 b_lambda!245687)))

(declare-fun bs!1647050 () Bool)

(declare-fun d!2036073 () Bool)

(assert (= bs!1647050 (and d!2036073 d!2035073)))

(assert (=> bs!1647050 (= (dynLambda!25928 lambda!359181 (h!71725 (exprs!6251 lt!2388885))) (validRegex!8103 (h!71725 (exprs!6251 lt!2388885))))))

(declare-fun m!7278076 () Bool)

(assert (=> bs!1647050 m!7278076))

(assert (=> b!6487863 d!2036073))

(declare-fun b_lambda!245689 () Bool)

(assert (= b_lambda!245635 (or b!6486628 b_lambda!245689)))

(assert (=> d!2035401 d!2035189))

(declare-fun b_lambda!245691 () Bool)

(assert (= b_lambda!245655 (or b!6486640 b_lambda!245691)))

(declare-fun bs!1647051 () Bool)

(declare-fun d!2036075 () Bool)

(assert (= bs!1647051 (and d!2036075 b!6486640)))

(assert (=> bs!1647051 (= (dynLambda!25928 lambda!359126 (h!71725 lt!2388881)) (validRegex!8103 (h!71725 lt!2388881)))))

(declare-fun m!7278080 () Bool)

(assert (=> bs!1647051 m!7278080))

(assert (=> b!6488728 d!2036075))

(check-sat (not b!6488350) (not d!2035523) (not b!6488760) (not b!6488586) (not b!6488588) (not setNonEmpty!44210) (not b_lambda!245691) (not bm!561578) (not bm!561549) (not d!2035495) (not b!6488766) (not b!6489051) (not bm!561705) (not b!6489382) (not b!6488872) (not b!6488805) (not b!6487965) (not b!6488731) (not bm!561596) (not b!6488837) (not b!6488605) (not b!6487952) (not b!6489224) (not b!6489433) (not b!6488693) (not bm!561729) (not b!6488885) (not b!6489036) (not b!6489465) (not d!2035901) (not bm!561588) (not b!6489098) (not b!6489397) (not b!6489289) (not d!2035381) (not b!6488675) (not d!2035383) (not bm!561658) (not bm!561522) (not b!6488227) (not b!6489406) (not b!6488493) (not d!2035369) (not b!6489099) (not b!6489369) (not d!2035277) (not d!2035263) (not b!6488326) (not b!6488831) (not b!6487942) (not bm!561664) (not b!6488251) (not b!6488147) (not b!6489407) (not b!6487897) (not bm!561652) (not b!6488164) (not b!6487931) (not d!2035597) (not b!6489056) (not d!2035995) (not b!6487918) (not d!2035957) (not b!6487990) (not b!6488383) (not b!6488488) (not d!2035391) (not b!6489390) (not bm!561575) (not b!6487879) (not bm!561570) (not b!6488411) (not b!6489343) (not d!2035567) (not b!6489467) (not d!2035675) (not d!2035583) (not d!2035903) (not b!6489482) (not b!6488763) (not b!6488864) (not b!6488764) (not bm!561764) (not b!6487858) (not bm!561655) (not b!6489461) (not b!6489248) (not b!6488988) (not b!6487962) (not b!6488413) (not d!2035497) (not b_lambda!245679) (not bm!561543) (not bm!561556) (not b!6489483) (not b!6488506) (not b!6488667) (not b!6488587) (not b!6488353) (not b!6489463) (not d!2035471) (not b!6488310) (not bm!561508) (not b!6488480) (not b!6489355) (not d!2035887) (not b!6488663) (not b!6487870) (not b!6488559) (not b!6487976) (not b!6489447) (not b!6489479) (not b!6488659) (not b!6488084) (not d!2035353) (not b!6489092) (not b!6488768) (not b!6489438) (not b!6488334) (not b!6489392) (not b!6488370) (not b!6488396) (not b!6489445) (not bm!561707) (not d!2035511) (not b!6487857) (not b!6487997) (not b!6489368) (not b_lambda!245675) (not b!6489477) (not bm!561627) (not b!6488788) (not b!6489418) (not b!6488812) (not b!6488368) (not b!6488071) (not b!6488860) (not b!6488177) (not b!6488454) (not bm!561728) (not d!2035985) (not b!6488977) (not bm!561623) (not d!2035345) (not b!6487914) (not setNonEmpty!44203) (not b!6488312) (not b!6488252) (not b!6488256) (not bm!561649) (not b!6488203) (not b!6488287) (not bm!561676) (not bm!561540) (not b!6488009) (not b!6488100) (not bm!561587) (not d!2035701) (not bm!561577) (not b!6489416) (not b_lambda!245671) (not b!6488015) (not b!6488721) (not d!2035401) (not d!2035395) (not b!6488470) (not b!6489391) (not b!6488751) (not bm!561680) (not setNonEmpty!44202) (not b!6487902) (not b!6488531) (not b!6488006) (not b!6488196) (not b!6487891) (not b!6488585) (not b!6489362) (not b!6487917) (not d!2035809) (not b!6488163) (not b!6488468) (not bm!561567) (not bm!561643) (not b!6488419) (not b!6488275) (not b!6488151) (not b!6489372) (not d!2035459) (not b!6489035) (not b!6488660) (not d!2035387) (not b!6488067) (not b!6489386) (not b!6487926) (not b!6488016) (not d!2035255) (not d!2035411) (not d!2035549) (not b!6488711) (not b!6488245) (not b!6488122) (not d!2035673) (not b!6488761) (not b!6488455) (not bm!561646) (not b!6489367) (not b!6488233) (not b!6488165) (not d!2035427) (not b!6488432) (not d!2035429) (not bm!561670) (not d!2035405) (not b!6488397) (not d!2035501) (not b!6488384) (not b!6489116) (not b!6489422) (not bm!561669) (not bm!561657) (not b_lambda!245625) (not bs!1647048) (not b!6488232) (not bm!561617) (not d!2035551) (not b!6488082) (not d!2035221) (not b!6488080) (not b!6487887) (not d!2035585) (not bs!1647049) (not d!2035481) (not d!2035737) (not b!6488283) (not b!6488273) (not b!6488219) (not d!2035487) (not b!6488753) (not bm!561674) (not bm!561754) (not bm!561626) (not b!6488983) (not b!6488373) (not bm!561506) (not b!6489107) (not d!2035641) (not b!6488482) (not b!6488319) (not d!2035341) (not b!6488863) (not b!6489393) (not b!6488088) (not b!6488024) (not d!2035735) (not b!6488220) (not d!2035443) (not d!2035657) (not bm!561536) (not bm!561501) (not b!6489374) (not b!6489358) (not b!6489375) (not b!6489348) (not b!6488378) (not b!6489434) (not b!6489442) (not b!6489380) (not bm!561601) (not b!6487992) (not b!6487910) (not d!2035217) (not bm!561614) (not b!6489439) (not b!6488271) (not b!6489480) (not b!6489476) (not b!6488489) (not bm!561675) (not bm!561653) (not b!6488400) (not b_lambda!245685) (not bm!561590) (not b!6488508) (not b!6487874) (not b!6487925) (not b!6488408) (not b!6487971) (not b!6488405) (not d!2035749) (not d!2035991) (not b!6488527) (not bm!561691) (not b!6488099) (not b!6489346) (not b!6488352) (not d!2035453) (not b!6488463) (not d!2035813) (not b!6488059) (not bm!561697) (not bm!561555) (not bm!561618) (not d!2035593) (not b!6488756) (not d!2035313) (not b!6488615) (not b!6488457) (not b!6488725) (not b!6487960) (not d!2035573) (not b!6488706) (not b_lambda!245627) (not b!6489350) (not bm!561510) (not b!6487937) (not b!6489257) (not b!6489084) (not d!2035615) (not b!6489460) (not bm!561611) (not d!2035685) (not b!6488561) (not b!6488666) (not b!6487876) (not b!6488195) (not b!6488505) (not bm!561544) (not b_lambda!245683) (not b!6489344) (not b!6488369) (not b!6488243) (not b!6488842) (not b!6488357) (not b!6487922) (not bm!561550) (not d!2035745) (not b!6487872) (not b!6488865) (not b!6488873) (not b!6488366) (not b!6488049) (not b!6488117) (not b!6488866) (not b!6489039) (not b!6488228) (not d!2035509) (not bm!561537) (not b!6489356) (not bm!561584) (not d!2035435) (not d!2035343) (not bs!1647046) (not b!6488451) (not bm!561504) (not b!6488208) (not d!2035527) (not bm!561693) (not b!6488074) (not bm!561516) (not b!6488111) (not b!6489225) (not bm!561690) (not d!2035503) (not d!2035229) (not b!6488732) (not bm!561683) (not b!6488070) (not b!6488075) (not bm!561622) (not b!6488395) (not b!6489395) (not b!6489100) (not b!6488631) (not bm!561591) (not d!2035533) (not bm!561513) (not b!6489472) (not d!2035543) (not bm!561656) (not d!2035491) (not b!6487913) (not b!6488729) (not setNonEmpty!44205) (not b!6488156) (not bm!561505) (not b!6489401) (not b!6488978) (not d!2035969) (not bm!561603) (not b!6488705) (not b!6488135) (not d!2035525) (not bm!561635) (not b!6488606) (not bm!561582) (not d!2035715) (not bs!1647045) (not b_lambda!245687) (not b!6489481) (not b!6489250) (not b!6489376) (not bm!561721) (not b!6489403) (not b!6488381) (not bm!561600) (not b!6489469) (not b!6489365) (not b!6489034) (not b!6489363) (not b!6488668) (not bm!561541) (not b!6488410) (not bm!561551) (not d!2035211) (not bm!561606) (not b!6489032) (not d!2035805) (not b!6487927) (not bm!561706) (not b!6488017) (not d!2035751) (not d!2035269) (not b!6489459) (not d!2035891) (not b!6488140) (not bm!561644) (not b!6488372) (not d!2035371) (not b!6489378) (not d!2035811) (not d!2035223) (not b!6488478) (not b!6489261) (not b!6488843) (not b!6488759) (not b!6489334) (not d!2035397) (not bs!1647050) (not bs!1647044) (not b!6488112) (not b_lambda!245629) (not b!6488811) (not d!2035535) (not bm!561621) (not b!6487889) (not b!6488010) (not d!2035439) (not b!6487988) (not b!6488356) (not bm!561514) (not b!6488028) (not b!6489468) (not b!6488274) (not d!2035261) (not b!6488686) (not b!6488204) (not d!2035385) (not bm!561765) (not d!2035693) (not bm!561704) (not b!6488530) (not b!6489384) (not b!6488404) (not d!2035297) (not d!2035761) (not d!2035259) (not b!6489383) (not d!2035467) (not b!6488412) (not bm!561523) (not d!2035955) (not b!6488328) (not bm!561560) (not b!6488750) (not d!2035555) (not b!6488979) (not b!6488664) (not b!6489351) (not b!6488739) (not b!6488446) (not b!6488138) (not bm!561545) (not b!6488197) (not b!6488519) (not bm!561679) (not bm!561509) (not d!2035613) (not b!6489342) tp_is_empty!41987 (not b!6488427) (not b!6488393) (not b!6487938) (not b!6488830) (not b!6488375) (not b!6489103) (not b!6489038) (not b!6488407) (not b!6489256) (not b!6488481) (not d!2035403) (not b!6488132) (not b!6488355) (not b!6488276) (not b!6489464) (not b!6489294) (not d!2035205) (not d!2035653) (not d!2035595) (not b!6489354) (not b!6489475) (not bm!561604) (not b!6489396) (not b!6488095) (not d!2035949) (not d!2035271) (not b!6488261) (not d!2035781) (not b!6488402) (not d!2035373) (not d!2035485) (not b!6488972) (not bm!561667) (not b!6489471) (not b!6489441) (not b!6489473) (not bm!561648) (not b!6488282) (not b!6488288) (not b!6488802) (not b!6489037) (not b!6488590) (not b!6488730) (not b!6488685) (not b!6488171) (not bm!561613) (not b!6488827) (not b!6488340) (not b!6489364) (not b!6488743) (not b!6488409) (not bm!561619) (not d!2035347) (not bm!561628) (not b!6488014) (not bm!561593) (not b!6488780) (not b!6488077) (not b!6488335) (not b!6488137) (not b_lambda!245673) (not d!2035753) (not b!6488306) (not b!6489435) (not bm!561700) (not b!6487944) (not b!6488965) (not b!6488758) (not b_lambda!245689) (not d!2035669) (not b!6488094) (not b!6489082) (not b!6489437) (not d!2035425) (not b!6488005) (not d!2035251) (not bm!561595) (not b!6488420) (not b!6487964) (not bm!561565) (not d!2035569) (not b!6487920) (not bm!561684) (not d!2035275) (not d!2035227) (not d!2035699) (not b!6487961) (not b!6489249) (not b!6488648) (not b!6487923) (not setNonEmpty!44204) (not b!6488692) (not d!2035257) (not bm!561512) (not bm!561566) (not b!6488826) (not b_lambda!245669) (not b_lambda!245677) (not d!2035777) (not d!2035315) (not d!2035337) (not bm!561571) (not b!6487947) (not bm!561561) (not b!6488838) (not d!2035799) (not bm!561527) (not b!6488494) (not b!6489105) (not bm!561698) (not bs!1647047) (not b!6488684) (not b!6488456) (not b!6488209) (not b_lambda!245681) (not bm!561583) (not b!6489443) (not b!6489446) (not d!2035309) (not bm!561708) (not b!6489102) (not b!6488818) (not b!6488738) (not d!2035339) (not d!2035517) (not d!2035519) (not b!6488399) (not b!6488139) (not d!2035571) (not d!2035631) (not b!6488314) (not b!6488023) (not b!6489410) (not bm!561517) (not b!6487864) (not b!6488674) (not d!2035389) (not b!6489221) (not b!6488515) (not b_lambda!245631) (not b!6487930) (not d!2035529) (not d!2035987) (not d!2035473) (not d!2035321) (not b!6488176) (not bm!561682) (not bm!561562) (not b!6489419) (not bm!561580) (not b!6488086) (not d!2035899) (not b!6489359) (not bm!561609) (not b!6488087) (not b!6488727) (not d!2035437) (not d!2035711) (not b!6488507) (not d!2035379) (not d!2035377) (not b!6489405) (not b!6489379) (not d!2035319) (not b!6488244) (not b!6488424) (not b!6488829) (not d!2035249) (not bm!561672) (not b!6489347) (not b!6489399) (not b!6488877) (not d!2035783) (not b!6488966) (not bs!1647051) (not b!6488591) (not b!6488563) (not b!6488900) (not b!6489284) (not d!2035759) (not d!2035477) (not b!6488327) (not b!6487953) (not bm!561553) (not d!2035689) (not b!6488083) (not b!6488339) (not b!6488301) (not b!6488377) (not bm!561558) (not b!6489388) (not b!6487929) (not b!6489283) (not bm!561634) (not b!6488269) (not b!6488973) (not b!6488656) (not b!6488172) (not b!6489420) (not b!6489415) (not d!2035363) (not b!6488679) (not d!2035483) (not bm!561548) (not d!2035829) (not b!6488514) (not b!6488504) (not b!6488723) (not b!6489387) (not b!6489360) (not bm!561597) (not d!2035639) (not bm!561525) (not b!6488464) (not b!6489421) (not b!6489352) (not b!6488709) (not b!6489414) (not b!6488146) (not d!2035521) (not bm!561502) (not b!6488916) (not bm!561722) (not d!2035963) (not b!6487968) (not bm!561616) (not b!6488221) (not d!2035493) (not b!6488713) (not b!6487890) (not b!6488697) (not b!6488079) (not bm!561519) (not b!6487851) (not bm!561608) (not d!2035311) (not bm!561666) (not b!6489223) (not d!2035643) (not b!6487898) (not d!2035423) (not b!6488964) (not b!6488449) (not d!2035457) (not bm!561572) (not b!6488469))
(check-sat)
