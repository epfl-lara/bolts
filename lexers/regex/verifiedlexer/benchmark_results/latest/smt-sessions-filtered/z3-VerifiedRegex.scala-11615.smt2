; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!646150 () Bool)

(assert start!646150)

(declare-fun b!6610200 () Bool)

(assert (=> b!6610200 true))

(assert (=> b!6610200 true))

(declare-fun lambda!368962 () Int)

(declare-fun lambda!368961 () Int)

(assert (=> b!6610200 (not (= lambda!368962 lambda!368961))))

(assert (=> b!6610200 true))

(assert (=> b!6610200 true))

(declare-fun b!6610202 () Bool)

(assert (=> b!6610202 true))

(declare-fun b!6610166 () Bool)

(assert (=> b!6610166 true))

(declare-fun bs!1695209 () Bool)

(assert (= bs!1695209 (and b!6610166 b!6610200)))

(declare-datatypes ((C!33224 0))(
  ( (C!33225 (val!26314 Int)) )
))
(declare-datatypes ((Regex!16477 0))(
  ( (ElementMatch!16477 (c!1218308 C!33224)) (Concat!25322 (regOne!33466 Regex!16477) (regTwo!33466 Regex!16477)) (EmptyExpr!16477) (Star!16477 (reg!16806 Regex!16477)) (EmptyLang!16477) (Union!16477 (regOne!33467 Regex!16477) (regTwo!33467 Regex!16477)) )
))
(declare-fun r!7292 () Regex!16477)

(declare-fun lt!2415885 () Regex!16477)

(declare-fun lambda!368966 () Int)

(assert (=> bs!1695209 (= (= lt!2415885 (regOne!33466 r!7292)) (= lambda!368966 lambda!368961))))

(assert (=> bs!1695209 (not (= lambda!368966 lambda!368962))))

(assert (=> b!6610166 true))

(assert (=> b!6610166 true))

(assert (=> b!6610166 true))

(declare-fun lambda!368967 () Int)

(assert (=> bs!1695209 (not (= lambda!368967 lambda!368961))))

(assert (=> bs!1695209 (= (= lt!2415885 (regOne!33466 r!7292)) (= lambda!368967 lambda!368962))))

(assert (=> b!6610166 (not (= lambda!368967 lambda!368966))))

(assert (=> b!6610166 true))

(assert (=> b!6610166 true))

(assert (=> b!6610166 true))

(declare-datatypes ((List!65730 0))(
  ( (Nil!65606) (Cons!65606 (h!72054 C!33224) (t!379384 List!65730)) )
))
(declare-fun s!2326 () List!65730)

(declare-datatypes ((tuple2!66912 0))(
  ( (tuple2!66913 (_1!36759 List!65730) (_2!36759 List!65730)) )
))
(declare-fun lt!2415891 () tuple2!66912)

(declare-fun lt!2415925 () Regex!16477)

(declare-fun lambda!368968 () Int)

(assert (=> bs!1695209 (= (and (= (_1!36759 lt!2415891) s!2326) (= (reg!16806 (regOne!33466 r!7292)) (regOne!33466 r!7292)) (= lt!2415925 (regTwo!33466 r!7292))) (= lambda!368968 lambda!368961))))

(assert (=> bs!1695209 (not (= lambda!368968 lambda!368962))))

(assert (=> b!6610166 (= (and (= (_1!36759 lt!2415891) s!2326) (= (reg!16806 (regOne!33466 r!7292)) lt!2415885) (= lt!2415925 (regTwo!33466 r!7292))) (= lambda!368968 lambda!368966))))

(assert (=> b!6610166 (not (= lambda!368968 lambda!368967))))

(assert (=> b!6610166 true))

(assert (=> b!6610166 true))

(assert (=> b!6610166 true))

(declare-fun lambda!368969 () Int)

(assert (=> bs!1695209 (not (= lambda!368969 lambda!368961))))

(assert (=> b!6610166 (not (= lambda!368969 lambda!368968))))

(assert (=> b!6610166 (= (and (= (_1!36759 lt!2415891) s!2326) (= (reg!16806 (regOne!33466 r!7292)) lt!2415885) (= lt!2415925 (regTwo!33466 r!7292))) (= lambda!368969 lambda!368967))))

(assert (=> bs!1695209 (= (and (= (_1!36759 lt!2415891) s!2326) (= (reg!16806 (regOne!33466 r!7292)) (regOne!33466 r!7292)) (= lt!2415925 (regTwo!33466 r!7292))) (= lambda!368969 lambda!368962))))

(assert (=> b!6610166 (not (= lambda!368969 lambda!368966))))

(assert (=> b!6610166 true))

(assert (=> b!6610166 true))

(assert (=> b!6610166 true))

(declare-fun lambda!368970 () Int)

(assert (=> bs!1695209 (not (= lambda!368970 lambda!368961))))

(assert (=> b!6610166 (not (= lambda!368970 lambda!368968))))

(assert (=> b!6610166 (not (= lambda!368970 lambda!368967))))

(assert (=> bs!1695209 (not (= lambda!368970 lambda!368962))))

(assert (=> b!6610166 (not (= lambda!368970 lambda!368969))))

(assert (=> b!6610166 (not (= lambda!368970 lambda!368966))))

(assert (=> b!6610166 true))

(assert (=> b!6610166 true))

(assert (=> b!6610166 true))

(declare-fun bs!1695210 () Bool)

(declare-fun b!6610195 () Bool)

(assert (= bs!1695210 (and b!6610195 b!6610200)))

(declare-fun lambda!368971 () Int)

(assert (=> bs!1695210 (= (and (= Nil!65606 s!2326) (= (reg!16806 (regOne!33466 r!7292)) (regOne!33466 r!7292)) (= lt!2415925 (regTwo!33466 r!7292))) (= lambda!368971 lambda!368961))))

(declare-fun bs!1695211 () Bool)

(assert (= bs!1695211 (and b!6610195 b!6610166)))

(assert (=> bs!1695211 (= (= Nil!65606 (_1!36759 lt!2415891)) (= lambda!368971 lambda!368968))))

(assert (=> bs!1695211 (not (= lambda!368971 lambda!368967))))

(assert (=> bs!1695211 (not (= lambda!368971 lambda!368970))))

(assert (=> bs!1695210 (not (= lambda!368971 lambda!368962))))

(assert (=> bs!1695211 (not (= lambda!368971 lambda!368969))))

(assert (=> bs!1695211 (= (and (= Nil!65606 s!2326) (= (reg!16806 (regOne!33466 r!7292)) lt!2415885) (= lt!2415925 (regTwo!33466 r!7292))) (= lambda!368971 lambda!368966))))

(assert (=> b!6610195 true))

(assert (=> b!6610195 true))

(declare-fun lambda!368972 () Int)

(assert (=> bs!1695210 (not (= lambda!368972 lambda!368961))))

(assert (=> bs!1695211 (not (= lambda!368972 lambda!368968))))

(assert (=> bs!1695211 (= (and (= Nil!65606 s!2326) (= (reg!16806 (regOne!33466 r!7292)) lt!2415885) (= lt!2415925 (regTwo!33466 r!7292))) (= lambda!368972 lambda!368967))))

(assert (=> bs!1695211 (not (= lambda!368972 lambda!368970))))

(assert (=> b!6610195 (not (= lambda!368972 lambda!368971))))

(assert (=> bs!1695210 (= (and (= Nil!65606 s!2326) (= (reg!16806 (regOne!33466 r!7292)) (regOne!33466 r!7292)) (= lt!2415925 (regTwo!33466 r!7292))) (= lambda!368972 lambda!368962))))

(assert (=> bs!1695211 (= (= Nil!65606 (_1!36759 lt!2415891)) (= lambda!368972 lambda!368969))))

(assert (=> bs!1695211 (not (= lambda!368972 lambda!368966))))

(assert (=> b!6610195 true))

(assert (=> b!6610195 true))

(declare-fun lambda!368973 () Int)

(assert (=> bs!1695210 (not (= lambda!368973 lambda!368961))))

(assert (=> bs!1695211 (not (= lambda!368973 lambda!368968))))

(assert (=> bs!1695211 (not (= lambda!368973 lambda!368967))))

(assert (=> bs!1695211 (= (= Nil!65606 (_1!36759 lt!2415891)) (= lambda!368973 lambda!368970))))

(assert (=> b!6610195 (not (= lambda!368973 lambda!368971))))

(assert (=> b!6610195 (not (= lambda!368973 lambda!368972))))

(assert (=> bs!1695210 (not (= lambda!368973 lambda!368962))))

(assert (=> bs!1695211 (not (= lambda!368973 lambda!368969))))

(assert (=> bs!1695211 (not (= lambda!368973 lambda!368966))))

(assert (=> b!6610195 true))

(assert (=> b!6610195 true))

(declare-fun b!6610165 () Bool)

(declare-fun e!3999338 () Bool)

(declare-fun e!3999328 () Bool)

(declare-fun tp!1820991 () Bool)

(declare-datatypes ((List!65731 0))(
  ( (Nil!65607) (Cons!65607 (h!72055 Regex!16477) (t!379385 List!65731)) )
))
(declare-datatypes ((Context!11722 0))(
  ( (Context!11723 (exprs!6361 List!65731)) )
))
(declare-datatypes ((List!65732 0))(
  ( (Nil!65608) (Cons!65608 (h!72056 Context!11722) (t!379386 List!65732)) )
))
(declare-fun zl!343 () List!65732)

(declare-fun inv!84439 (Context!11722) Bool)

(assert (=> b!6610165 (= e!3999328 (and (inv!84439 (h!72056 zl!343)) e!3999338 tp!1820991))))

(declare-fun e!3999319 () Bool)

(assert (=> b!6610166 e!3999319))

(declare-fun res!2710462 () Bool)

(assert (=> b!6610166 (=> (not res!2710462) (not e!3999319))))

(declare-fun lt!2415914 () Regex!16477)

(declare-fun lt!2415890 () List!65730)

(declare-fun matchR!8660 (Regex!16477 List!65730) Bool)

(assert (=> b!6610166 (= res!2710462 (matchR!8660 lt!2415914 lt!2415890))))

(declare-datatypes ((Unit!159246 0))(
  ( (Unit!159247) )
))
(declare-fun lt!2415904 () Unit!159246)

(declare-fun lt!2415927 () List!65730)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!366 (Regex!16477 Regex!16477 List!65730 List!65730) Unit!159246)

(assert (=> b!6610166 (= lt!2415904 (lemmaTwoRegexMatchThenConcatMatchesConcatString!366 lt!2415925 (regTwo!33466 r!7292) lt!2415927 (_2!36759 lt!2415891)))))

(declare-fun call!578681 () Bool)

(assert (=> b!6610166 call!578681))

(declare-fun lt!2415896 () Unit!159246)

(declare-fun lt!2415895 () tuple2!66912)

(declare-fun lemmaStarApp!152 (Regex!16477 List!65730 List!65730) Unit!159246)

(assert (=> b!6610166 (= lt!2415896 (lemmaStarApp!152 (reg!16806 (regOne!33466 r!7292)) (_1!36759 lt!2415895) (_2!36759 lt!2415895)))))

(declare-fun lt!2415880 () List!65730)

(declare-fun ++!14624 (List!65730 List!65730) List!65730)

(assert (=> b!6610166 (= lt!2415890 (++!14624 (_1!36759 lt!2415895) lt!2415880))))

(assert (=> b!6610166 (= lt!2415890 (++!14624 lt!2415927 (_2!36759 lt!2415891)))))

(assert (=> b!6610166 (= lt!2415880 (++!14624 (_2!36759 lt!2415895) (_2!36759 lt!2415891)))))

(declare-fun call!578684 () List!65730)

(assert (=> b!6610166 (= lt!2415927 call!578684)))

(declare-fun lt!2415883 () Unit!159246)

(declare-fun lemmaConcatAssociativity!2948 (List!65730 List!65730 List!65730) Unit!159246)

(assert (=> b!6610166 (= lt!2415883 (lemmaConcatAssociativity!2948 (_1!36759 lt!2415895) (_2!36759 lt!2415895) (_2!36759 lt!2415891)))))

(declare-datatypes ((Option!16368 0))(
  ( (None!16367) (Some!16367 (v!52556 tuple2!66912)) )
))
(declare-fun lt!2415945 () Option!16368)

(declare-fun get!22797 (Option!16368) tuple2!66912)

(assert (=> b!6610166 (= lt!2415895 (get!22797 lt!2415945))))

(declare-fun call!578689 () Bool)

(declare-fun Exists!3547 (Int) Bool)

(assert (=> b!6610166 (= call!578689 (Exists!3547 lambda!368970))))

(declare-fun lt!2415931 () Unit!159246)

(declare-fun call!578673 () Unit!159246)

(assert (=> b!6610166 (= lt!2415931 call!578673)))

(declare-fun call!578677 () Bool)

(assert (=> b!6610166 (= (Exists!3547 lambda!368968) call!578677)))

(declare-fun lt!2415912 () Unit!159246)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2084 (Regex!16477 Regex!16477 List!65730) Unit!159246)

(assert (=> b!6610166 (= lt!2415912 (lemmaExistCutMatchRandMatchRSpecEquivalent!2084 (reg!16806 (regOne!33466 r!7292)) lt!2415925 (_1!36759 lt!2415891)))))

(declare-fun call!578672 () Bool)

(declare-fun call!578678 () Bool)

(assert (=> b!6610166 (= call!578672 call!578678)))

(declare-fun findConcatSeparation!2782 (Regex!16477 Regex!16477 List!65730 List!65730 List!65730) Option!16368)

(assert (=> b!6610166 (= lt!2415945 (findConcatSeparation!2782 (reg!16806 (regOne!33466 r!7292)) lt!2415925 Nil!65606 (_1!36759 lt!2415891) (_1!36759 lt!2415891)))))

(declare-fun lt!2415930 () Unit!159246)

(declare-fun call!578686 () Unit!159246)

(assert (=> b!6610166 (= lt!2415930 call!578686)))

(declare-fun call!578687 () Bool)

(assert (=> b!6610166 (= (matchR!8660 lt!2415885 (_1!36759 lt!2415891)) call!578687)))

(declare-fun lt!2415909 () Unit!159246)

(declare-fun mainMatchTheorem!3578 (Regex!16477 List!65730) Unit!159246)

(assert (=> b!6610166 (= lt!2415909 (mainMatchTheorem!3578 lt!2415885 (_1!36759 lt!2415891)))))

(declare-fun lt!2415911 () Option!16368)

(assert (=> b!6610166 (= lt!2415891 (get!22797 lt!2415911))))

(declare-fun call!578680 () Bool)

(assert (=> b!6610166 (= call!578680 (Exists!3547 lambda!368967))))

(declare-fun lt!2415929 () Unit!159246)

(declare-fun call!578675 () Unit!159246)

(assert (=> b!6610166 (= lt!2415929 call!578675)))

(declare-fun call!578685 () Bool)

(declare-fun isDefined!13071 (Option!16368) Bool)

(assert (=> b!6610166 (= (isDefined!13071 lt!2415911) call!578685)))

(declare-fun call!578674 () Option!16368)

(assert (=> b!6610166 (= lt!2415911 call!578674)))

(declare-fun lt!2415935 () Unit!159246)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2546 (Regex!16477 Regex!16477 List!65730) Unit!159246)

(assert (=> b!6610166 (= lt!2415935 (lemmaFindConcatSeparationEquivalentToExists!2546 lt!2415885 (regTwo!33466 r!7292) s!2326))))

(declare-fun lt!2415928 () Regex!16477)

(declare-fun matchRSpec!3578 (Regex!16477 List!65730) Bool)

(assert (=> b!6610166 (matchRSpec!3578 lt!2415928 s!2326)))

(declare-fun lt!2415905 () Unit!159246)

(declare-fun call!578671 () Unit!159246)

(assert (=> b!6610166 (= lt!2415905 call!578671)))

(declare-fun call!578679 () Bool)

(assert (=> b!6610166 call!578679))

(assert (=> b!6610166 (= lt!2415928 (Concat!25322 lt!2415885 (regTwo!33466 r!7292)))))

(assert (=> b!6610166 (= lt!2415885 (Concat!25322 (reg!16806 (regOne!33466 r!7292)) lt!2415925))))

(declare-fun lt!2415937 () Unit!159246)

(declare-fun lemmaConcatAssociative!142 (Regex!16477 Regex!16477 Regex!16477 List!65730) Unit!159246)

(assert (=> b!6610166 (= lt!2415937 (lemmaConcatAssociative!142 (reg!16806 (regOne!33466 r!7292)) lt!2415925 (regTwo!33466 r!7292) s!2326))))

(declare-fun e!3999334 () Bool)

(assert (=> b!6610166 e!3999334))

(declare-fun res!2710473 () Bool)

(assert (=> b!6610166 (=> (not res!2710473) (not e!3999334))))

(declare-fun call!578682 () Bool)

(assert (=> b!6610166 (= res!2710473 call!578682)))

(declare-fun lt!2415944 () Unit!159246)

(declare-fun call!578676 () Unit!159246)

(assert (=> b!6610166 (= lt!2415944 call!578676)))

(declare-fun lt!2415939 () tuple2!66912)

(declare-fun call!578688 () Bool)

(assert (=> b!6610166 (= (matchR!8660 lt!2415914 (_2!36759 lt!2415939)) call!578688)))

(declare-fun lt!2415923 () List!65732)

(declare-fun lt!2415940 () Unit!159246)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2415886 () (InoxSet Context!11722))

(declare-fun theoremZipperRegexEquiv!899 ((InoxSet Context!11722) List!65732 Regex!16477 List!65730) Unit!159246)

(assert (=> b!6610166 (= lt!2415940 (theoremZipperRegexEquiv!899 lt!2415886 lt!2415923 lt!2415914 (_2!36759 lt!2415939)))))

(declare-fun lt!2415942 () (InoxSet Context!11722))

(declare-fun matchZipper!2489 ((InoxSet Context!11722) List!65730) Bool)

(assert (=> b!6610166 (= (matchR!8660 (reg!16806 (regOne!33466 r!7292)) (_1!36759 lt!2415939)) (matchZipper!2489 lt!2415942 (_1!36759 lt!2415939)))))

(declare-fun lt!2415907 () Unit!159246)

(declare-fun call!578683 () Unit!159246)

(assert (=> b!6610166 (= lt!2415907 call!578683)))

(declare-fun lt!2415903 () List!65731)

(declare-fun lt!2415897 () List!65730)

(assert (=> b!6610166 (matchZipper!2489 (store ((as const (Array Context!11722 Bool)) false) (Context!11723 lt!2415903) true) lt!2415897)))

(assert (=> b!6610166 (= lt!2415897 (++!14624 (_1!36759 lt!2415939) (_2!36759 lt!2415939)))))

(declare-fun lt!2415922 () List!65731)

(declare-fun lt!2415933 () List!65731)

(declare-fun ++!14625 (List!65731 List!65731) List!65731)

(assert (=> b!6610166 (= lt!2415903 (++!14625 lt!2415922 lt!2415933))))

(declare-fun lambda!368965 () Int)

(declare-fun lt!2415941 () Unit!159246)

(declare-fun lemmaConcatPreservesForall!418 (List!65731 List!65731 Int) Unit!159246)

(assert (=> b!6610166 (= lt!2415941 (lemmaConcatPreservesForall!418 lt!2415922 lt!2415933 lambda!368965))))

(declare-fun lt!2415888 () Context!11722)

(declare-fun lt!2415926 () Unit!159246)

(declare-fun lt!2415946 () Context!11722)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!226 (Context!11722 Context!11722 List!65730 List!65730) Unit!159246)

(assert (=> b!6610166 (= lt!2415926 (lemmaConcatenateContextMatchesConcatOfStrings!226 lt!2415888 lt!2415946 (_1!36759 lt!2415939) (_2!36759 lt!2415939)))))

(declare-fun lt!2415936 () Option!16368)

(assert (=> b!6610166 (= lt!2415939 (get!22797 lt!2415936))))

(assert (=> b!6610166 (isDefined!13071 lt!2415936)))

(declare-fun findConcatSeparationZippers!210 ((InoxSet Context!11722) (InoxSet Context!11722) List!65730 List!65730 List!65730) Option!16368)

(assert (=> b!6610166 (= lt!2415936 (findConcatSeparationZippers!210 lt!2415942 lt!2415886 Nil!65606 s!2326 s!2326))))

(declare-fun lt!2415908 () Unit!159246)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!210 ((InoxSet Context!11722) Context!11722 List!65730) Unit!159246)

(assert (=> b!6610166 (= lt!2415908 (lemmaConcatZipperMatchesStringThenFindConcatDefined!210 lt!2415942 lt!2415946 s!2326))))

(declare-fun lambda!368964 () Int)

(declare-fun map!14992 ((InoxSet Context!11722) Int) (InoxSet Context!11722))

(assert (=> b!6610166 (= (map!14992 lt!2415942 lambda!368964) (store ((as const (Array Context!11722 Bool)) false) (Context!11723 (++!14625 lt!2415922 lt!2415933)) true))))

(declare-fun lt!2415906 () Unit!159246)

(assert (=> b!6610166 (= lt!2415906 (lemmaConcatPreservesForall!418 lt!2415922 lt!2415933 lambda!368965))))

(declare-fun lt!2415919 () Unit!159246)

(declare-fun lemmaMapOnSingletonSet!228 ((InoxSet Context!11722) Context!11722 Int) Unit!159246)

(assert (=> b!6610166 (= lt!2415919 (lemmaMapOnSingletonSet!228 lt!2415942 lt!2415888 lambda!368964))))

(declare-fun e!3999331 () Unit!159246)

(declare-fun Unit!159248 () Unit!159246)

(assert (=> b!6610166 (= e!3999331 Unit!159248)))

(declare-fun b!6610167 () Bool)

(declare-fun e!3999337 () Bool)

(declare-fun tp_is_empty!42207 () Bool)

(declare-fun tp!1820998 () Bool)

(assert (=> b!6610167 (= e!3999337 (and tp_is_empty!42207 tp!1820998))))

(declare-fun b!6610168 () Bool)

(declare-fun res!2710470 () Bool)

(declare-fun e!3999324 () Bool)

(assert (=> b!6610168 (=> res!2710470 e!3999324)))

(declare-fun generalisedConcat!2074 (List!65731) Regex!16477)

(assert (=> b!6610168 (= res!2710470 (not (= r!7292 (generalisedConcat!2074 (exprs!6361 (h!72056 zl!343))))))))

(declare-fun c!1218306 () Bool)

(declare-fun bm!578666 () Bool)

(assert (=> bm!578666 (= call!578684 (++!14624 (ite c!1218306 (_1!36759 lt!2415895) Nil!65606) (ite c!1218306 (_2!36759 lt!2415895) s!2326)))))

(declare-fun b!6610169 () Bool)

(declare-fun res!2710459 () Bool)

(declare-fun e!3999322 () Bool)

(assert (=> b!6610169 (=> res!2710459 e!3999322)))

(declare-fun isEmpty!37885 (List!65731) Bool)

(assert (=> b!6610169 (= res!2710459 (isEmpty!37885 (t!379385 (exprs!6361 (h!72056 zl!343)))))))

(declare-fun bm!578667 () Bool)

(assert (=> bm!578667 (= call!578677 (Exists!3547 (ite c!1218306 lambda!368969 lambda!368972)))))

(declare-fun b!6610170 () Bool)

(declare-fun e!3999340 () Unit!159246)

(declare-fun Unit!159249 () Unit!159246)

(assert (=> b!6610170 (= e!3999340 Unit!159249)))

(declare-fun lt!2415938 () (InoxSet Context!11722))

(declare-fun lt!2415881 () Unit!159246)

(declare-fun lt!2415910 () (InoxSet Context!11722))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1308 ((InoxSet Context!11722) (InoxSet Context!11722) List!65730) Unit!159246)

(assert (=> b!6610170 (= lt!2415881 (lemmaZipperConcatMatchesSameAsBothZippers!1308 lt!2415938 lt!2415910 (t!379384 s!2326)))))

(declare-fun res!2710465 () Bool)

(assert (=> b!6610170 (= res!2710465 (matchZipper!2489 lt!2415938 (t!379384 s!2326)))))

(declare-fun e!3999318 () Bool)

(assert (=> b!6610170 (=> res!2710465 e!3999318)))

(assert (=> b!6610170 (= (matchZipper!2489 ((_ map or) lt!2415938 lt!2415910) (t!379384 s!2326)) e!3999318)))

(declare-fun lt!2415884 () (InoxSet Context!11722))

(declare-fun bm!578668 () Bool)

(assert (=> bm!578668 (= call!578688 (matchZipper!2489 (ite c!1218306 lt!2415886 lt!2415884) (ite c!1218306 (_2!36759 lt!2415939) s!2326)))))

(declare-fun bm!578669 () Bool)

(declare-fun lt!2415889 () Regex!16477)

(declare-fun lt!2415879 () Regex!16477)

(assert (=> bm!578669 (= call!578682 (matchR!8660 (ite c!1218306 lt!2415879 lt!2415889) (ite c!1218306 lt!2415897 s!2326)))))

(declare-fun b!6610171 () Bool)

(declare-fun e!3999335 () Bool)

(declare-fun e!3999320 () Bool)

(assert (=> b!6610171 (= e!3999335 e!3999320)))

(declare-fun res!2710455 () Bool)

(assert (=> b!6610171 (=> res!2710455 e!3999320)))

(declare-fun lt!2415920 () List!65732)

(declare-fun unfocusZipper!2219 (List!65732) Regex!16477)

(assert (=> b!6610171 (= res!2710455 (not (= (unfocusZipper!2219 lt!2415920) (reg!16806 (regOne!33466 r!7292)))))))

(assert (=> b!6610171 (= lt!2415920 (Cons!65608 lt!2415888 Nil!65608))))

(declare-fun lambda!368963 () Int)

(declare-fun flatMap!1982 ((InoxSet Context!11722) Int) (InoxSet Context!11722))

(declare-fun derivationStepZipperUp!1651 (Context!11722 C!33224) (InoxSet Context!11722))

(assert (=> b!6610171 (= (flatMap!1982 lt!2415886 lambda!368963) (derivationStepZipperUp!1651 lt!2415946 (h!72054 s!2326)))))

(declare-fun lt!2415899 () Unit!159246)

(declare-fun lemmaFlatMapOnSingletonSet!1508 ((InoxSet Context!11722) Context!11722 Int) Unit!159246)

(assert (=> b!6610171 (= lt!2415899 (lemmaFlatMapOnSingletonSet!1508 lt!2415886 lt!2415946 lambda!368963))))

(assert (=> b!6610171 (= (flatMap!1982 lt!2415942 lambda!368963) (derivationStepZipperUp!1651 lt!2415888 (h!72054 s!2326)))))

(declare-fun lt!2415882 () Unit!159246)

(assert (=> b!6610171 (= lt!2415882 (lemmaFlatMapOnSingletonSet!1508 lt!2415942 lt!2415888 lambda!368963))))

(declare-fun lt!2415934 () (InoxSet Context!11722))

(assert (=> b!6610171 (= lt!2415934 (derivationStepZipperUp!1651 lt!2415946 (h!72054 s!2326)))))

(declare-fun lt!2415902 () (InoxSet Context!11722))

(assert (=> b!6610171 (= lt!2415902 (derivationStepZipperUp!1651 lt!2415888 (h!72054 s!2326)))))

(assert (=> b!6610171 (= lt!2415886 (store ((as const (Array Context!11722 Bool)) false) lt!2415946 true))))

(assert (=> b!6610171 (= lt!2415942 (store ((as const (Array Context!11722 Bool)) false) lt!2415888 true))))

(assert (=> b!6610171 (= lt!2415888 (Context!11723 lt!2415922))))

(assert (=> b!6610171 (= lt!2415922 (Cons!65607 (reg!16806 (regOne!33466 r!7292)) Nil!65607))))

(declare-fun b!6610172 () Bool)

(declare-fun res!2710457 () Bool)

(assert (=> b!6610172 (=> res!2710457 e!3999324)))

(get-info :version)

(assert (=> b!6610172 (= res!2710457 (or ((_ is EmptyExpr!16477) r!7292) ((_ is EmptyLang!16477) r!7292) ((_ is ElementMatch!16477) r!7292) ((_ is Union!16477) r!7292) (not ((_ is Concat!25322) r!7292))))))

(declare-fun setIsEmpty!45148 () Bool)

(declare-fun setRes!45148 () Bool)

(assert (=> setIsEmpty!45148 setRes!45148))

(declare-fun b!6610173 () Bool)

(declare-fun lt!2415901 () Bool)

(assert (=> b!6610173 (= e!3999334 lt!2415901)))

(declare-fun b!6610174 () Bool)

(declare-fun e!3999341 () Unit!159246)

(assert (=> b!6610174 (= e!3999341 e!3999331)))

(assert (=> b!6610174 (= c!1218306 (matchZipper!2489 lt!2415938 (t!379384 s!2326)))))

(declare-fun b!6610175 () Bool)

(declare-fun Unit!159250 () Unit!159246)

(assert (=> b!6610175 (= e!3999340 Unit!159250)))

(declare-fun bm!578670 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!672 (Regex!16477 List!65730) Unit!159246)

(assert (=> bm!578670 (= call!578673 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!672 (reg!16806 (regOne!33466 r!7292)) (ite c!1218306 (_1!36759 lt!2415891) Nil!65606)))))

(declare-fun bm!578671 () Bool)

(assert (=> bm!578671 (= call!578687 (matchRSpec!3578 (ite c!1218306 lt!2415885 lt!2415925) (ite c!1218306 (_1!36759 lt!2415891) Nil!65606)))))

(declare-fun b!6610176 () Bool)

(declare-fun e!3999327 () Bool)

(declare-fun lt!2415949 () Bool)

(assert (=> b!6610176 (= e!3999327 (not lt!2415949))))

(declare-fun lt!2415898 () Unit!159246)

(assert (=> b!6610176 (= lt!2415898 e!3999341)))

(declare-fun c!1218305 () Bool)

(assert (=> b!6610176 (= c!1218305 lt!2415949)))

(declare-fun z!1189 () (InoxSet Context!11722))

(assert (=> b!6610176 (= lt!2415949 (matchZipper!2489 z!1189 s!2326))))

(declare-fun b!6610177 () Bool)

(declare-fun e!3999321 () Bool)

(declare-fun tp!1820997 () Bool)

(declare-fun tp!1820993 () Bool)

(assert (=> b!6610177 (= e!3999321 (and tp!1820997 tp!1820993))))

(declare-fun b!6610178 () Bool)

(assert (=> b!6610178 (= e!3999319 false)))

(declare-fun bm!578672 () Bool)

(assert (=> bm!578672 (= call!578685 (Exists!3547 (ite c!1218306 lambda!368966 lambda!368971)))))

(declare-fun b!6610179 () Bool)

(declare-fun e!3999336 () Bool)

(assert (=> b!6610179 (= e!3999336 e!3999327)))

(declare-fun res!2710469 () Bool)

(assert (=> b!6610179 (=> res!2710469 e!3999327)))

(declare-fun lt!2415917 () Bool)

(assert (=> b!6610179 (= res!2710469 lt!2415917)))

(assert (=> b!6610179 (= lt!2415901 (matchRSpec!3578 lt!2415879 s!2326))))

(assert (=> b!6610179 (= lt!2415901 (matchR!8660 lt!2415879 s!2326))))

(declare-fun lt!2415916 () Unit!159246)

(assert (=> b!6610179 (= lt!2415916 (mainMatchTheorem!3578 lt!2415879 s!2326))))

(declare-fun bm!578673 () Bool)

(assert (=> bm!578673 (= call!578672 (isDefined!13071 (ite c!1218306 lt!2415945 call!578674)))))

(declare-fun b!6610180 () Bool)

(declare-fun res!2710453 () Bool)

(declare-fun e!3999325 () Bool)

(assert (=> b!6610180 (=> res!2710453 e!3999325)))

(declare-fun lt!2415893 () (InoxSet Context!11722))

(declare-fun lt!2415943 () (InoxSet Context!11722))

(assert (=> b!6610180 (= res!2710453 (not (= (matchZipper!2489 lt!2415893 s!2326) (matchZipper!2489 lt!2415943 (t!379384 s!2326)))))))

(declare-fun b!6610181 () Bool)

(declare-fun e!3999330 () Bool)

(declare-fun e!3999333 () Bool)

(assert (=> b!6610181 (= e!3999330 e!3999333)))

(declare-fun res!2710476 () Bool)

(assert (=> b!6610181 (=> res!2710476 e!3999333)))

(declare-fun lt!2415952 () (InoxSet Context!11722))

(assert (=> b!6610181 (= res!2710476 (not (= lt!2415938 lt!2415952)))))

(declare-fun derivationStepZipperDown!1725 (Regex!16477 Context!11722 C!33224) (InoxSet Context!11722))

(assert (=> b!6610181 (= lt!2415952 (derivationStepZipperDown!1725 (reg!16806 (regOne!33466 r!7292)) lt!2415946 (h!72054 s!2326)))))

(assert (=> b!6610181 (= lt!2415946 (Context!11723 lt!2415933))))

(assert (=> b!6610181 (= lt!2415933 (Cons!65607 lt!2415925 (t!379385 (exprs!6361 (h!72056 zl!343)))))))

(assert (=> b!6610181 (= lt!2415925 (Star!16477 (reg!16806 (regOne!33466 r!7292))))))

(declare-fun bm!578674 () Bool)

(assert (=> bm!578674 (= call!578689 (Exists!3547 (ite c!1218306 lambda!368968 lambda!368971)))))

(declare-fun b!6610182 () Bool)

(declare-fun e!3999332 () Bool)

(assert (=> b!6610182 (= e!3999325 e!3999332)))

(declare-fun res!2710461 () Bool)

(assert (=> b!6610182 (=> res!2710461 e!3999332)))

(assert (=> b!6610182 (= res!2710461 (not (= r!7292 lt!2415914)))))

(assert (=> b!6610182 (= lt!2415914 (Concat!25322 lt!2415925 (regTwo!33466 r!7292)))))

(declare-fun lt!2415900 () Context!11722)

(declare-fun bm!578675 () Bool)

(assert (=> bm!578675 (= call!578683 (theoremZipperRegexEquiv!899 (ite c!1218306 lt!2415942 lt!2415884) (ite c!1218306 lt!2415920 (Cons!65608 lt!2415900 Nil!65608)) (ite c!1218306 (reg!16806 (regOne!33466 r!7292)) lt!2415889) (ite c!1218306 (_1!36759 lt!2415939) s!2326)))))

(declare-fun b!6610183 () Bool)

(declare-fun res!2710464 () Bool)

(assert (=> b!6610183 (=> res!2710464 e!3999330)))

(declare-fun e!3999342 () Bool)

(assert (=> b!6610183 (= res!2710464 e!3999342)))

(declare-fun res!2710471 () Bool)

(assert (=> b!6610183 (=> (not res!2710471) (not e!3999342))))

(assert (=> b!6610183 (= res!2710471 ((_ is Concat!25322) (regOne!33466 r!7292)))))

(declare-fun bm!578676 () Bool)

(assert (=> bm!578676 (= call!578686 (lemmaFindConcatSeparationEquivalentToExists!2546 (reg!16806 (regOne!33466 r!7292)) lt!2415925 (ite c!1218306 (_1!36759 lt!2415891) Nil!65606)))))

(declare-fun bm!578677 () Bool)

(assert (=> bm!578677 (= call!578675 (lemmaExistCutMatchRandMatchRSpecEquivalent!2084 (ite c!1218306 lt!2415885 (reg!16806 (regOne!33466 r!7292))) (ite c!1218306 (regTwo!33466 r!7292) lt!2415925) (ite c!1218306 s!2326 Nil!65606)))))

(declare-fun bm!578678 () Bool)

(assert (=> bm!578678 (= call!578679 (matchR!8660 (ite c!1218306 lt!2415928 lt!2415925) (ite c!1218306 s!2326 Nil!65606)))))

(declare-fun b!6610184 () Bool)

(declare-fun nullable!6470 (Regex!16477) Bool)

(assert (=> b!6610184 (= e!3999342 (nullable!6470 (regOne!33466 (regOne!33466 r!7292))))))

(declare-fun b!6610185 () Bool)

(declare-fun Unit!159251 () Unit!159246)

(assert (=> b!6610185 (= e!3999341 Unit!159251)))

(declare-fun b!6610186 () Bool)

(declare-fun res!2710458 () Bool)

(assert (=> b!6610186 (=> res!2710458 e!3999330)))

(assert (=> b!6610186 (= res!2710458 (or ((_ is Concat!25322) (regOne!33466 r!7292)) (not ((_ is Star!16477) (regOne!33466 r!7292)))))))

(declare-fun b!6610187 () Bool)

(assert (=> b!6610187 (= e!3999318 (matchZipper!2489 lt!2415910 (t!379384 s!2326)))))

(declare-fun bm!578679 () Bool)

(assert (=> bm!578679 (= call!578681 (matchR!8660 (ite c!1218306 lt!2415925 lt!2415914) (ite c!1218306 lt!2415927 call!578684)))))

(declare-fun b!6610188 () Bool)

(assert (=> b!6610188 (= e!3999333 e!3999325)))

(declare-fun res!2710468 () Bool)

(assert (=> b!6610188 (=> res!2710468 e!3999325)))

(assert (=> b!6610188 (= res!2710468 (not (= lt!2415943 lt!2415952)))))

(declare-fun lt!2415913 () Context!11722)

(assert (=> b!6610188 (= (flatMap!1982 lt!2415893 lambda!368963) (derivationStepZipperUp!1651 lt!2415913 (h!72054 s!2326)))))

(declare-fun lt!2415876 () Unit!159246)

(assert (=> b!6610188 (= lt!2415876 (lemmaFlatMapOnSingletonSet!1508 lt!2415893 lt!2415913 lambda!368963))))

(declare-fun lt!2415918 () (InoxSet Context!11722))

(assert (=> b!6610188 (= lt!2415918 (derivationStepZipperUp!1651 lt!2415913 (h!72054 s!2326)))))

(declare-fun derivationStepZipper!2443 ((InoxSet Context!11722) C!33224) (InoxSet Context!11722))

(assert (=> b!6610188 (= lt!2415943 (derivationStepZipper!2443 lt!2415893 (h!72054 s!2326)))))

(assert (=> b!6610188 (= lt!2415893 (store ((as const (Array Context!11722 Bool)) false) lt!2415913 true))))

(assert (=> b!6610188 (= lt!2415913 (Context!11723 (Cons!65607 (reg!16806 (regOne!33466 r!7292)) lt!2415933)))))

(declare-fun b!6610189 () Bool)

(declare-fun res!2710449 () Bool)

(assert (=> b!6610189 (=> res!2710449 e!3999324)))

(declare-fun isEmpty!37886 (List!65732) Bool)

(assert (=> b!6610189 (= res!2710449 (not (isEmpty!37886 (t!379386 zl!343))))))

(declare-fun res!2710451 () Bool)

(declare-fun e!3999339 () Bool)

(assert (=> start!646150 (=> (not res!2710451) (not e!3999339))))

(declare-fun validRegex!8213 (Regex!16477) Bool)

(assert (=> start!646150 (= res!2710451 (validRegex!8213 r!7292))))

(assert (=> start!646150 e!3999339))

(assert (=> start!646150 e!3999321))

(declare-fun condSetEmpty!45148 () Bool)

(assert (=> start!646150 (= condSetEmpty!45148 (= z!1189 ((as const (Array Context!11722 Bool)) false)))))

(assert (=> start!646150 setRes!45148))

(assert (=> start!646150 e!3999328))

(assert (=> start!646150 e!3999337))

(declare-fun b!6610190 () Bool)

(declare-fun e!3999326 () Bool)

(assert (=> b!6610190 (= e!3999326 (not e!3999324))))

(declare-fun res!2710472 () Bool)

(assert (=> b!6610190 (=> res!2710472 e!3999324)))

(assert (=> b!6610190 (= res!2710472 (not ((_ is Cons!65608) zl!343)))))

(assert (=> b!6610190 (= lt!2415917 (matchRSpec!3578 r!7292 s!2326))))

(assert (=> b!6610190 (= lt!2415917 (matchR!8660 r!7292 s!2326))))

(declare-fun lt!2415924 () Unit!159246)

(assert (=> b!6610190 (= lt!2415924 (mainMatchTheorem!3578 r!7292 s!2326))))

(declare-fun bm!578680 () Bool)

(assert (=> bm!578680 (= call!578676 (lemmaTwoRegexMatchThenConcatMatchesConcatString!366 (ite c!1218306 (reg!16806 (regOne!33466 r!7292)) lt!2415925) (ite c!1218306 lt!2415914 (regTwo!33466 r!7292)) (ite c!1218306 (_1!36759 lt!2415939) Nil!65606) (ite c!1218306 (_2!36759 lt!2415939) s!2326)))))

(declare-fun bm!578681 () Bool)

(assert (=> bm!578681 (= call!578674 (findConcatSeparation!2782 (ite c!1218306 lt!2415885 (reg!16806 (regOne!33466 r!7292))) (ite c!1218306 (regTwo!33466 r!7292) lt!2415925) Nil!65606 (ite c!1218306 s!2326 Nil!65606) (ite c!1218306 s!2326 Nil!65606)))))

(declare-fun b!6610191 () Bool)

(declare-fun e!3999323 () Bool)

(assert (=> b!6610191 (= e!3999323 false)))

(declare-fun bm!578682 () Bool)

(assert (=> bm!578682 (= call!578680 (Exists!3547 (ite c!1218306 lambda!368966 lambda!368971)))))

(declare-fun b!6610192 () Bool)

(assert (=> b!6610192 (= e!3999321 tp_is_empty!42207)))

(declare-fun b!6610193 () Bool)

(declare-fun e!3999329 () Bool)

(declare-fun tp!1820990 () Bool)

(assert (=> b!6610193 (= e!3999329 tp!1820990)))

(declare-fun b!6610194 () Bool)

(declare-fun res!2710452 () Bool)

(assert (=> b!6610194 (=> res!2710452 e!3999324)))

(declare-fun generalisedUnion!2321 (List!65731) Regex!16477)

(declare-fun unfocusZipperList!1898 (List!65732) List!65731)

(assert (=> b!6610194 (= res!2710452 (not (= r!7292 (generalisedUnion!2321 (unfocusZipperList!1898 zl!343)))))))

(assert (=> b!6610195 e!3999323))

(declare-fun res!2710450 () Bool)

(assert (=> b!6610195 (=> (not res!2710450) (not e!3999323))))

(assert (=> b!6610195 (= res!2710450 call!578681)))

(declare-fun lt!2415921 () Unit!159246)

(assert (=> b!6610195 (= lt!2415921 call!578676)))

(assert (=> b!6610195 (= call!578680 call!578678)))

(declare-fun lt!2415947 () Unit!159246)

(assert (=> b!6610195 (= lt!2415947 call!578673)))

(assert (=> b!6610195 (= call!578685 call!578677)))

(declare-fun lt!2415877 () Unit!159246)

(assert (=> b!6610195 (= lt!2415877 call!578675)))

(assert (=> b!6610195 (= call!578672 call!578689)))

(declare-fun lt!2415950 () Unit!159246)

(assert (=> b!6610195 (= lt!2415950 call!578686)))

(assert (=> b!6610195 (= call!578679 call!578687)))

(declare-fun lt!2415915 () Unit!159246)

(assert (=> b!6610195 (= lt!2415915 call!578671)))

(assert (=> b!6610195 (= call!578682 call!578688)))

(declare-fun lt!2415948 () Unit!159246)

(assert (=> b!6610195 (= lt!2415948 call!578683)))

(assert (=> b!6610195 (= lt!2415889 (generalisedConcat!2074 (t!379385 (exprs!6361 (h!72056 zl!343)))))))

(assert (=> b!6610195 (= (flatMap!1982 lt!2415884 lambda!368963) (derivationStepZipperUp!1651 lt!2415900 (h!72054 s!2326)))))

(declare-fun lt!2415894 () Unit!159246)

(assert (=> b!6610195 (= lt!2415894 (lemmaFlatMapOnSingletonSet!1508 lt!2415884 lt!2415900 lambda!368963))))

(assert (=> b!6610195 (= lt!2415884 (store ((as const (Array Context!11722 Bool)) false) lt!2415900 true))))

(declare-fun Unit!159252 () Unit!159246)

(assert (=> b!6610195 (= e!3999331 Unit!159252)))

(declare-fun b!6610196 () Bool)

(declare-fun res!2710463 () Bool)

(assert (=> b!6610196 (=> (not res!2710463) (not e!3999339))))

(declare-fun toList!10261 ((InoxSet Context!11722)) List!65732)

(assert (=> b!6610196 (= res!2710463 (= (toList!10261 z!1189) zl!343))))

(declare-fun b!6610197 () Bool)

(assert (=> b!6610197 (= e!3999320 e!3999336)))

(declare-fun res!2710474 () Bool)

(assert (=> b!6610197 (=> res!2710474 e!3999336)))

(assert (=> b!6610197 (= res!2710474 (not (= (unfocusZipper!2219 lt!2415923) lt!2415914)))))

(assert (=> b!6610197 (= lt!2415923 (Cons!65608 lt!2415946 Nil!65608))))

(declare-fun bm!578683 () Bool)

(assert (=> bm!578683 (= call!578678 (Exists!3547 (ite c!1218306 lambda!368968 lambda!368973)))))

(declare-fun b!6610198 () Bool)

(declare-fun res!2710456 () Bool)

(assert (=> b!6610198 (=> res!2710456 e!3999325)))

(declare-fun lt!2415892 () Regex!16477)

(assert (=> b!6610198 (= res!2710456 (not (= lt!2415892 r!7292)))))

(declare-fun b!6610199 () Bool)

(declare-fun tp!1820999 () Bool)

(assert (=> b!6610199 (= e!3999321 tp!1820999)))

(assert (=> b!6610200 (= e!3999324 e!3999322)))

(declare-fun res!2710466 () Bool)

(assert (=> b!6610200 (=> res!2710466 e!3999322)))

(declare-fun lt!2415951 () Bool)

(assert (=> b!6610200 (= res!2710466 (or (not (= lt!2415917 lt!2415951)) ((_ is Nil!65606) s!2326)))))

(assert (=> b!6610200 (= (Exists!3547 lambda!368961) (Exists!3547 lambda!368962))))

(declare-fun lt!2415875 () Unit!159246)

(assert (=> b!6610200 (= lt!2415875 (lemmaExistCutMatchRandMatchRSpecEquivalent!2084 (regOne!33466 r!7292) (regTwo!33466 r!7292) s!2326))))

(assert (=> b!6610200 (= lt!2415951 (Exists!3547 lambda!368961))))

(assert (=> b!6610200 (= lt!2415951 (isDefined!13071 (findConcatSeparation!2782 (regOne!33466 r!7292) (regTwo!33466 r!7292) Nil!65606 s!2326 s!2326)))))

(declare-fun lt!2415932 () Unit!159246)

(assert (=> b!6610200 (= lt!2415932 (lemmaFindConcatSeparationEquivalentToExists!2546 (regOne!33466 r!7292) (regTwo!33466 r!7292) s!2326))))

(declare-fun b!6610201 () Bool)

(declare-fun tp!1820996 () Bool)

(declare-fun tp!1820995 () Bool)

(assert (=> b!6610201 (= e!3999321 (and tp!1820996 tp!1820995))))

(declare-fun setNonEmpty!45148 () Bool)

(declare-fun tp!1820992 () Bool)

(declare-fun setElem!45148 () Context!11722)

(assert (=> setNonEmpty!45148 (= setRes!45148 (and tp!1820992 (inv!84439 setElem!45148) e!3999329))))

(declare-fun setRest!45148 () (InoxSet Context!11722))

(assert (=> setNonEmpty!45148 (= z!1189 ((_ map or) (store ((as const (Array Context!11722 Bool)) false) setElem!45148 true) setRest!45148))))

(assert (=> b!6610202 (= e!3999322 e!3999330)))

(declare-fun res!2710467 () Bool)

(assert (=> b!6610202 (=> res!2710467 e!3999330)))

(assert (=> b!6610202 (= res!2710467 (or (and ((_ is ElementMatch!16477) (regOne!33466 r!7292)) (= (c!1218308 (regOne!33466 r!7292)) (h!72054 s!2326))) ((_ is Union!16477) (regOne!33466 r!7292))))))

(declare-fun lt!2415878 () Unit!159246)

(assert (=> b!6610202 (= lt!2415878 e!3999340)))

(declare-fun c!1218307 () Bool)

(assert (=> b!6610202 (= c!1218307 (nullable!6470 (h!72055 (exprs!6361 (h!72056 zl!343)))))))

(assert (=> b!6610202 (= (flatMap!1982 z!1189 lambda!368963) (derivationStepZipperUp!1651 (h!72056 zl!343) (h!72054 s!2326)))))

(declare-fun lt!2415874 () Unit!159246)

(assert (=> b!6610202 (= lt!2415874 (lemmaFlatMapOnSingletonSet!1508 z!1189 (h!72056 zl!343) lambda!368963))))

(assert (=> b!6610202 (= lt!2415910 (derivationStepZipperUp!1651 lt!2415900 (h!72054 s!2326)))))

(assert (=> b!6610202 (= lt!2415938 (derivationStepZipperDown!1725 (h!72055 (exprs!6361 (h!72056 zl!343))) lt!2415900 (h!72054 s!2326)))))

(assert (=> b!6610202 (= lt!2415900 (Context!11723 (t!379385 (exprs!6361 (h!72056 zl!343)))))))

(declare-fun lt!2415887 () (InoxSet Context!11722))

(assert (=> b!6610202 (= lt!2415887 (derivationStepZipperUp!1651 (Context!11723 (Cons!65607 (h!72055 (exprs!6361 (h!72056 zl!343))) (t!379385 (exprs!6361 (h!72056 zl!343))))) (h!72054 s!2326)))))

(declare-fun b!6610203 () Bool)

(declare-fun tp!1820994 () Bool)

(assert (=> b!6610203 (= e!3999338 tp!1820994)))

(declare-fun b!6610204 () Bool)

(assert (=> b!6610204 (= e!3999332 e!3999335)))

(declare-fun res!2710475 () Bool)

(assert (=> b!6610204 (=> res!2710475 e!3999335)))

(assert (=> b!6610204 (= res!2710475 (not (= (unfocusZipper!2219 (Cons!65608 lt!2415913 Nil!65608)) lt!2415879)))))

(assert (=> b!6610204 (= lt!2415879 (Concat!25322 (reg!16806 (regOne!33466 r!7292)) lt!2415914))))

(declare-fun b!6610205 () Bool)

(declare-fun res!2710454 () Bool)

(assert (=> b!6610205 (=> res!2710454 e!3999324)))

(assert (=> b!6610205 (= res!2710454 (not ((_ is Cons!65607) (exprs!6361 (h!72056 zl!343)))))))

(declare-fun bm!578684 () Bool)

(assert (=> bm!578684 (= call!578671 (mainMatchTheorem!3578 (ite c!1218306 lt!2415928 lt!2415925) (ite c!1218306 s!2326 Nil!65606)))))

(declare-fun b!6610206 () Bool)

(assert (=> b!6610206 (= e!3999339 e!3999326)))

(declare-fun res!2710460 () Bool)

(assert (=> b!6610206 (=> (not res!2710460) (not e!3999326))))

(assert (=> b!6610206 (= res!2710460 (= r!7292 lt!2415892))))

(assert (=> b!6610206 (= lt!2415892 (unfocusZipper!2219 zl!343))))

(assert (= (and start!646150 res!2710451) b!6610196))

(assert (= (and b!6610196 res!2710463) b!6610206))

(assert (= (and b!6610206 res!2710460) b!6610190))

(assert (= (and b!6610190 (not res!2710472)) b!6610189))

(assert (= (and b!6610189 (not res!2710449)) b!6610168))

(assert (= (and b!6610168 (not res!2710470)) b!6610205))

(assert (= (and b!6610205 (not res!2710454)) b!6610194))

(assert (= (and b!6610194 (not res!2710452)) b!6610172))

(assert (= (and b!6610172 (not res!2710457)) b!6610200))

(assert (= (and b!6610200 (not res!2710466)) b!6610169))

(assert (= (and b!6610169 (not res!2710459)) b!6610202))

(assert (= (and b!6610202 c!1218307) b!6610170))

(assert (= (and b!6610202 (not c!1218307)) b!6610175))

(assert (= (and b!6610170 (not res!2710465)) b!6610187))

(assert (= (and b!6610202 (not res!2710467)) b!6610183))

(assert (= (and b!6610183 res!2710471) b!6610184))

(assert (= (and b!6610183 (not res!2710464)) b!6610186))

(assert (= (and b!6610186 (not res!2710458)) b!6610181))

(assert (= (and b!6610181 (not res!2710476)) b!6610188))

(assert (= (and b!6610188 (not res!2710468)) b!6610180))

(assert (= (and b!6610180 (not res!2710453)) b!6610198))

(assert (= (and b!6610198 (not res!2710456)) b!6610182))

(assert (= (and b!6610182 (not res!2710461)) b!6610204))

(assert (= (and b!6610204 (not res!2710475)) b!6610171))

(assert (= (and b!6610171 (not res!2710455)) b!6610197))

(assert (= (and b!6610197 (not res!2710474)) b!6610179))

(assert (= (and b!6610179 (not res!2710469)) b!6610176))

(assert (= (and b!6610176 c!1218305) b!6610174))

(assert (= (and b!6610176 (not c!1218305)) b!6610185))

(assert (= (and b!6610174 c!1218306) b!6610166))

(assert (= (and b!6610174 (not c!1218306)) b!6610195))

(assert (= (and b!6610166 res!2710473) b!6610173))

(assert (= (and b!6610166 res!2710462) b!6610178))

(assert (= (and b!6610195 res!2710450) b!6610191))

(assert (= (or b!6610166 b!6610195) bm!578669))

(assert (= (or b!6610166 b!6610195) bm!578677))

(assert (= (or b!6610166 b!6610195) bm!578667))

(assert (= (or b!6610166 b!6610195) bm!578681))

(assert (= (or b!6610166 b!6610195) bm!578671))

(assert (= (or b!6610166 b!6610195) bm!578674))

(assert (= (or b!6610166 b!6610195) bm!578666))

(assert (= (or b!6610166 b!6610195) bm!578683))

(assert (= (or b!6610166 b!6610195) bm!578675))

(assert (= (or b!6610166 b!6610195) bm!578670))

(assert (= (or b!6610166 b!6610195) bm!578678))

(assert (= (or b!6610166 b!6610195) bm!578682))

(assert (= (or b!6610166 b!6610195) bm!578668))

(assert (= (or b!6610166 b!6610195) bm!578672))

(assert (= (or b!6610166 b!6610195) bm!578680))

(assert (= (or b!6610166 b!6610195) bm!578684))

(assert (= (or b!6610166 b!6610195) bm!578676))

(assert (= (or b!6610166 b!6610195) bm!578679))

(assert (= (or b!6610166 b!6610195) bm!578673))

(assert (= (and start!646150 ((_ is ElementMatch!16477) r!7292)) b!6610192))

(assert (= (and start!646150 ((_ is Concat!25322) r!7292)) b!6610177))

(assert (= (and start!646150 ((_ is Star!16477) r!7292)) b!6610199))

(assert (= (and start!646150 ((_ is Union!16477) r!7292)) b!6610201))

(assert (= (and start!646150 condSetEmpty!45148) setIsEmpty!45148))

(assert (= (and start!646150 (not condSetEmpty!45148)) setNonEmpty!45148))

(assert (= setNonEmpty!45148 b!6610193))

(assert (= b!6610165 b!6610203))

(assert (= (and start!646150 ((_ is Cons!65608) zl!343)) b!6610165))

(assert (= (and start!646150 ((_ is Cons!65606) s!2326)) b!6610167))

(declare-fun m!7384820 () Bool)

(assert (=> bm!578683 m!7384820))

(declare-fun m!7384822 () Bool)

(assert (=> bm!578684 m!7384822))

(declare-fun m!7384824 () Bool)

(assert (=> bm!578678 m!7384824))

(declare-fun m!7384826 () Bool)

(assert (=> b!6610170 m!7384826))

(declare-fun m!7384828 () Bool)

(assert (=> b!6610170 m!7384828))

(declare-fun m!7384830 () Bool)

(assert (=> b!6610170 m!7384830))

(declare-fun m!7384832 () Bool)

(assert (=> bm!578681 m!7384832))

(declare-fun m!7384834 () Bool)

(assert (=> b!6610188 m!7384834))

(declare-fun m!7384836 () Bool)

(assert (=> b!6610188 m!7384836))

(declare-fun m!7384838 () Bool)

(assert (=> b!6610188 m!7384838))

(declare-fun m!7384840 () Bool)

(assert (=> b!6610188 m!7384840))

(declare-fun m!7384842 () Bool)

(assert (=> b!6610188 m!7384842))

(declare-fun m!7384844 () Bool)

(assert (=> b!6610180 m!7384844))

(declare-fun m!7384846 () Bool)

(assert (=> b!6610180 m!7384846))

(declare-fun m!7384848 () Bool)

(assert (=> bm!578671 m!7384848))

(declare-fun m!7384850 () Bool)

(assert (=> b!6610206 m!7384850))

(declare-fun m!7384852 () Bool)

(assert (=> b!6610168 m!7384852))

(declare-fun m!7384854 () Bool)

(assert (=> b!6610166 m!7384854))

(declare-fun m!7384856 () Bool)

(assert (=> b!6610166 m!7384856))

(declare-fun m!7384858 () Bool)

(assert (=> b!6610166 m!7384858))

(declare-fun m!7384860 () Bool)

(assert (=> b!6610166 m!7384860))

(declare-fun m!7384862 () Bool)

(assert (=> b!6610166 m!7384862))

(declare-fun m!7384864 () Bool)

(assert (=> b!6610166 m!7384864))

(declare-fun m!7384866 () Bool)

(assert (=> b!6610166 m!7384866))

(declare-fun m!7384868 () Bool)

(assert (=> b!6610166 m!7384868))

(declare-fun m!7384870 () Bool)

(assert (=> b!6610166 m!7384870))

(declare-fun m!7384872 () Bool)

(assert (=> b!6610166 m!7384872))

(declare-fun m!7384874 () Bool)

(assert (=> b!6610166 m!7384874))

(declare-fun m!7384876 () Bool)

(assert (=> b!6610166 m!7384876))

(assert (=> b!6610166 m!7384868))

(declare-fun m!7384878 () Bool)

(assert (=> b!6610166 m!7384878))

(declare-fun m!7384880 () Bool)

(assert (=> b!6610166 m!7384880))

(declare-fun m!7384882 () Bool)

(assert (=> b!6610166 m!7384882))

(declare-fun m!7384884 () Bool)

(assert (=> b!6610166 m!7384884))

(declare-fun m!7384886 () Bool)

(assert (=> b!6610166 m!7384886))

(declare-fun m!7384888 () Bool)

(assert (=> b!6610166 m!7384888))

(declare-fun m!7384890 () Bool)

(assert (=> b!6610166 m!7384890))

(declare-fun m!7384892 () Bool)

(assert (=> b!6610166 m!7384892))

(declare-fun m!7384894 () Bool)

(assert (=> b!6610166 m!7384894))

(declare-fun m!7384896 () Bool)

(assert (=> b!6610166 m!7384896))

(declare-fun m!7384898 () Bool)

(assert (=> b!6610166 m!7384898))

(declare-fun m!7384900 () Bool)

(assert (=> b!6610166 m!7384900))

(declare-fun m!7384902 () Bool)

(assert (=> b!6610166 m!7384902))

(declare-fun m!7384904 () Bool)

(assert (=> b!6610166 m!7384904))

(declare-fun m!7384906 () Bool)

(assert (=> b!6610166 m!7384906))

(declare-fun m!7384908 () Bool)

(assert (=> b!6610166 m!7384908))

(declare-fun m!7384910 () Bool)

(assert (=> b!6610166 m!7384910))

(declare-fun m!7384912 () Bool)

(assert (=> b!6610166 m!7384912))

(declare-fun m!7384914 () Bool)

(assert (=> b!6610166 m!7384914))

(declare-fun m!7384916 () Bool)

(assert (=> b!6610166 m!7384916))

(declare-fun m!7384918 () Bool)

(assert (=> b!6610166 m!7384918))

(declare-fun m!7384920 () Bool)

(assert (=> b!6610166 m!7384920))

(declare-fun m!7384922 () Bool)

(assert (=> b!6610166 m!7384922))

(declare-fun m!7384924 () Bool)

(assert (=> b!6610166 m!7384924))

(assert (=> b!6610166 m!7384924))

(declare-fun m!7384926 () Bool)

(assert (=> b!6610166 m!7384926))

(declare-fun m!7384928 () Bool)

(assert (=> b!6610194 m!7384928))

(assert (=> b!6610194 m!7384928))

(declare-fun m!7384930 () Bool)

(assert (=> b!6610194 m!7384930))

(declare-fun m!7384932 () Bool)

(assert (=> bm!578669 m!7384932))

(declare-fun m!7384934 () Bool)

(assert (=> b!6610171 m!7384934))

(declare-fun m!7384936 () Bool)

(assert (=> b!6610171 m!7384936))

(declare-fun m!7384938 () Bool)

(assert (=> b!6610171 m!7384938))

(declare-fun m!7384940 () Bool)

(assert (=> b!6610171 m!7384940))

(declare-fun m!7384942 () Bool)

(assert (=> b!6610171 m!7384942))

(declare-fun m!7384944 () Bool)

(assert (=> b!6610171 m!7384944))

(declare-fun m!7384946 () Bool)

(assert (=> b!6610171 m!7384946))

(declare-fun m!7384948 () Bool)

(assert (=> b!6610171 m!7384948))

(declare-fun m!7384950 () Bool)

(assert (=> b!6610171 m!7384950))

(declare-fun m!7384952 () Bool)

(assert (=> b!6610181 m!7384952))

(declare-fun m!7384954 () Bool)

(assert (=> bm!578667 m!7384954))

(declare-fun m!7384956 () Bool)

(assert (=> b!6610169 m!7384956))

(declare-fun m!7384958 () Bool)

(assert (=> bm!578682 m!7384958))

(declare-fun m!7384960 () Bool)

(assert (=> setNonEmpty!45148 m!7384960))

(declare-fun m!7384962 () Bool)

(assert (=> b!6610184 m!7384962))

(assert (=> b!6610174 m!7384828))

(declare-fun m!7384964 () Bool)

(assert (=> bm!578673 m!7384964))

(declare-fun m!7384966 () Bool)

(assert (=> bm!578675 m!7384966))

(declare-fun m!7384968 () Bool)

(assert (=> b!6610202 m!7384968))

(declare-fun m!7384970 () Bool)

(assert (=> b!6610202 m!7384970))

(declare-fun m!7384972 () Bool)

(assert (=> b!6610202 m!7384972))

(declare-fun m!7384974 () Bool)

(assert (=> b!6610202 m!7384974))

(declare-fun m!7384976 () Bool)

(assert (=> b!6610202 m!7384976))

(declare-fun m!7384978 () Bool)

(assert (=> b!6610202 m!7384978))

(declare-fun m!7384980 () Bool)

(assert (=> b!6610202 m!7384980))

(declare-fun m!7384982 () Bool)

(assert (=> bm!578670 m!7384982))

(declare-fun m!7384984 () Bool)

(assert (=> b!6610200 m!7384984))

(declare-fun m!7384986 () Bool)

(assert (=> b!6610200 m!7384986))

(declare-fun m!7384988 () Bool)

(assert (=> b!6610200 m!7384988))

(declare-fun m!7384990 () Bool)

(assert (=> b!6610200 m!7384990))

(assert (=> b!6610200 m!7384990))

(declare-fun m!7384992 () Bool)

(assert (=> b!6610200 m!7384992))

(assert (=> b!6610200 m!7384986))

(declare-fun m!7384994 () Bool)

(assert (=> b!6610200 m!7384994))

(declare-fun m!7384996 () Bool)

(assert (=> b!6610204 m!7384996))

(declare-fun m!7384998 () Bool)

(assert (=> bm!578676 m!7384998))

(declare-fun m!7385000 () Bool)

(assert (=> bm!578679 m!7385000))

(declare-fun m!7385002 () Bool)

(assert (=> b!6610179 m!7385002))

(declare-fun m!7385004 () Bool)

(assert (=> b!6610179 m!7385004))

(declare-fun m!7385006 () Bool)

(assert (=> b!6610179 m!7385006))

(declare-fun m!7385008 () Bool)

(assert (=> b!6610197 m!7385008))

(declare-fun m!7385010 () Bool)

(assert (=> b!6610196 m!7385010))

(declare-fun m!7385012 () Bool)

(assert (=> bm!578680 m!7385012))

(declare-fun m!7385014 () Bool)

(assert (=> b!6610187 m!7385014))

(declare-fun m!7385016 () Bool)

(assert (=> bm!578677 m!7385016))

(declare-fun m!7385018 () Bool)

(assert (=> start!646150 m!7385018))

(declare-fun m!7385020 () Bool)

(assert (=> b!6610176 m!7385020))

(declare-fun m!7385022 () Bool)

(assert (=> b!6610195 m!7385022))

(declare-fun m!7385024 () Bool)

(assert (=> b!6610195 m!7385024))

(declare-fun m!7385026 () Bool)

(assert (=> b!6610195 m!7385026))

(declare-fun m!7385028 () Bool)

(assert (=> b!6610195 m!7385028))

(assert (=> b!6610195 m!7384978))

(assert (=> bm!578672 m!7384958))

(declare-fun m!7385030 () Bool)

(assert (=> b!6610165 m!7385030))

(declare-fun m!7385032 () Bool)

(assert (=> bm!578666 m!7385032))

(declare-fun m!7385034 () Bool)

(assert (=> bm!578668 m!7385034))

(declare-fun m!7385036 () Bool)

(assert (=> bm!578674 m!7385036))

(declare-fun m!7385038 () Bool)

(assert (=> b!6610189 m!7385038))

(declare-fun m!7385040 () Bool)

(assert (=> b!6610190 m!7385040))

(declare-fun m!7385042 () Bool)

(assert (=> b!6610190 m!7385042))

(declare-fun m!7385044 () Bool)

(assert (=> b!6610190 m!7385044))

(check-sat (not start!646150) (not bm!578673) (not b!6610189) (not bm!578668) (not bm!578672) (not b!6610200) (not b!6610193) (not b!6610171) (not b!6610194) (not bm!578681) (not bm!578683) (not b!6610179) tp_is_empty!42207 (not b!6610167) (not bm!578674) (not bm!578684) (not bm!578679) (not setNonEmpty!45148) (not b!6610169) (not b!6610195) (not b!6610177) (not b!6610201) (not b!6610187) (not b!6610202) (not b!6610204) (not bm!578666) (not bm!578675) (not b!6610170) (not bm!578669) (not bm!578676) (not b!6610176) (not b!6610196) (not bm!578671) (not bm!578682) (not b!6610197) (not b!6610206) (not b!6610165) (not b!6610174) (not b!6610188) (not bm!578677) (not b!6610181) (not b!6610168) (not bm!578667) (not b!6610190) (not b!6610180) (not bm!578678) (not b!6610166) (not b!6610199) (not b!6610203) (not b!6610184) (not bm!578670) (not bm!578680))
(check-sat)
