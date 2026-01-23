; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570270 () Bool)

(assert start!570270)

(declare-fun b!5437029 () Bool)

(assert (=> b!5437029 true))

(assert (=> b!5437029 true))

(declare-fun lambda!285916 () Int)

(declare-fun lambda!285915 () Int)

(assert (=> b!5437029 (not (= lambda!285916 lambda!285915))))

(assert (=> b!5437029 true))

(assert (=> b!5437029 true))

(declare-fun b!5437008 () Bool)

(assert (=> b!5437008 true))

(declare-fun bs!1254909 () Bool)

(declare-fun b!5437006 () Bool)

(assert (= bs!1254909 (and b!5437006 b!5437029)))

(declare-datatypes ((C!30756 0))(
  ( (C!30757 (val!25080 Int)) )
))
(declare-datatypes ((Regex!15243 0))(
  ( (ElementMatch!15243 (c!948735 C!30756)) (Concat!24088 (regOne!30998 Regex!15243) (regTwo!30998 Regex!15243)) (EmptyExpr!15243) (Star!15243 (reg!15572 Regex!15243)) (EmptyLang!15243) (Union!15243 (regOne!30999 Regex!15243) (regTwo!30999 Regex!15243)) )
))
(declare-fun r!7292 () Regex!15243)

(declare-fun lambda!285918 () Int)

(declare-fun lt!2217869 () Regex!15243)

(assert (=> bs!1254909 (= (= lt!2217869 (regOne!30998 r!7292)) (= lambda!285918 lambda!285915))))

(assert (=> bs!1254909 (not (= lambda!285918 lambda!285916))))

(assert (=> b!5437006 true))

(assert (=> b!5437006 true))

(assert (=> b!5437006 true))

(declare-fun lambda!285919 () Int)

(assert (=> bs!1254909 (not (= lambda!285919 lambda!285915))))

(assert (=> bs!1254909 (= (= lt!2217869 (regOne!30998 r!7292)) (= lambda!285919 lambda!285916))))

(assert (=> b!5437006 (not (= lambda!285919 lambda!285918))))

(assert (=> b!5437006 true))

(assert (=> b!5437006 true))

(assert (=> b!5437006 true))

(declare-fun bs!1254910 () Bool)

(declare-fun b!5437004 () Bool)

(assert (= bs!1254910 (and b!5437004 b!5437029)))

(declare-datatypes ((List!62028 0))(
  ( (Nil!61904) (Cons!61904 (h!68352 C!30756) (t!375253 List!62028)) )
))
(declare-fun s!2326 () List!62028)

(declare-datatypes ((tuple2!64884 0))(
  ( (tuple2!64885 (_1!35745 List!62028) (_2!35745 List!62028)) )
))
(declare-fun lt!2217871 () tuple2!64884)

(declare-fun lambda!285920 () Int)

(assert (=> bs!1254910 (= (and (= (_1!35745 lt!2217871) s!2326) (= (reg!15572 (regOne!30998 r!7292)) (regOne!30998 r!7292)) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285920 lambda!285915))))

(assert (=> bs!1254910 (not (= lambda!285920 lambda!285916))))

(declare-fun bs!1254911 () Bool)

(assert (= bs!1254911 (and b!5437004 b!5437006)))

(assert (=> bs!1254911 (= (and (= (_1!35745 lt!2217871) s!2326) (= (reg!15572 (regOne!30998 r!7292)) lt!2217869) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285920 lambda!285918))))

(assert (=> bs!1254911 (not (= lambda!285920 lambda!285919))))

(assert (=> b!5437004 true))

(assert (=> b!5437004 true))

(assert (=> b!5437004 true))

(declare-fun lambda!285921 () Int)

(assert (=> bs!1254910 (not (= lambda!285921 lambda!285916))))

(assert (=> bs!1254911 (not (= lambda!285921 lambda!285919))))

(assert (=> bs!1254911 (not (= lambda!285921 lambda!285918))))

(assert (=> bs!1254910 (not (= lambda!285921 lambda!285915))))

(assert (=> b!5437004 (not (= lambda!285921 lambda!285920))))

(assert (=> b!5437004 true))

(assert (=> b!5437004 true))

(assert (=> b!5437004 true))

(declare-fun lambda!285922 () Int)

(assert (=> bs!1254910 (= (and (= (_1!35745 lt!2217871) s!2326) (= (reg!15572 (regOne!30998 r!7292)) (regOne!30998 r!7292)) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285922 lambda!285916))))

(assert (=> bs!1254911 (= (and (= (_1!35745 lt!2217871) s!2326) (= (reg!15572 (regOne!30998 r!7292)) lt!2217869) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285922 lambda!285919))))

(assert (=> bs!1254911 (not (= lambda!285922 lambda!285918))))

(assert (=> bs!1254910 (not (= lambda!285922 lambda!285915))))

(assert (=> b!5437004 (not (= lambda!285922 lambda!285921))))

(assert (=> b!5437004 (not (= lambda!285922 lambda!285920))))

(assert (=> b!5437004 true))

(assert (=> b!5437004 true))

(assert (=> b!5437004 true))

(declare-fun b!5437035 () Bool)

(assert (=> b!5437035 true))

(declare-fun bs!1254912 () Bool)

(assert (= bs!1254912 (and b!5437035 b!5437004)))

(declare-fun lambda!285925 () Int)

(declare-fun lambda!285923 () Int)

(assert (=> bs!1254912 (= lambda!285925 lambda!285923)))

(declare-fun bs!1254913 () Bool)

(assert (= bs!1254913 (and b!5437035 b!5437029)))

(declare-fun lambda!285926 () Int)

(assert (=> bs!1254913 (not (= lambda!285926 lambda!285916))))

(declare-fun bs!1254914 () Bool)

(assert (= bs!1254914 (and b!5437035 b!5437006)))

(assert (=> bs!1254914 (not (= lambda!285926 lambda!285919))))

(declare-fun lt!2217826 () Regex!15243)

(assert (=> bs!1254914 (= (= lt!2217826 lt!2217869) (= lambda!285926 lambda!285918))))

(assert (=> bs!1254913 (= (= lt!2217826 (regOne!30998 r!7292)) (= lambda!285926 lambda!285915))))

(assert (=> bs!1254912 (not (= lambda!285926 lambda!285921))))

(assert (=> bs!1254912 (= (and (= s!2326 (_1!35745 lt!2217871)) (= lt!2217826 (reg!15572 (regOne!30998 r!7292))) (= (regTwo!30998 r!7292) lt!2217869)) (= lambda!285926 lambda!285920))))

(assert (=> bs!1254912 (not (= lambda!285926 lambda!285922))))

(assert (=> b!5437035 true))

(assert (=> b!5437035 true))

(assert (=> b!5437035 true))

(declare-fun lambda!285927 () Int)

(assert (=> bs!1254913 (= (= lt!2217826 (regOne!30998 r!7292)) (= lambda!285927 lambda!285916))))

(assert (=> bs!1254914 (= (= lt!2217826 lt!2217869) (= lambda!285927 lambda!285919))))

(assert (=> bs!1254914 (not (= lambda!285927 lambda!285918))))

(assert (=> bs!1254913 (not (= lambda!285927 lambda!285915))))

(assert (=> bs!1254912 (not (= lambda!285927 lambda!285921))))

(assert (=> b!5437035 (not (= lambda!285927 lambda!285926))))

(assert (=> bs!1254912 (not (= lambda!285927 lambda!285920))))

(assert (=> bs!1254912 (= (and (= s!2326 (_1!35745 lt!2217871)) (= lt!2217826 (reg!15572 (regOne!30998 r!7292))) (= (regTwo!30998 r!7292) lt!2217869)) (= lambda!285927 lambda!285922))))

(assert (=> b!5437035 true))

(assert (=> b!5437035 true))

(assert (=> b!5437035 true))

(declare-fun lambda!285928 () Int)

(assert (=> bs!1254913 (not (= lambda!285928 lambda!285916))))

(assert (=> bs!1254914 (not (= lambda!285928 lambda!285919))))

(assert (=> b!5437035 (not (= lambda!285928 lambda!285927))))

(declare-fun lt!2217816 () tuple2!64884)

(assert (=> bs!1254914 (= (and (= (_1!35745 lt!2217816) s!2326) (= (reg!15572 (regOne!30998 r!7292)) lt!2217869) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285928 lambda!285918))))

(assert (=> bs!1254913 (= (and (= (_1!35745 lt!2217816) s!2326) (= (reg!15572 (regOne!30998 r!7292)) (regOne!30998 r!7292)) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285928 lambda!285915))))

(assert (=> bs!1254912 (not (= lambda!285928 lambda!285921))))

(assert (=> b!5437035 (= (and (= (_1!35745 lt!2217816) s!2326) (= (reg!15572 (regOne!30998 r!7292)) lt!2217826) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285928 lambda!285926))))

(assert (=> bs!1254912 (= (= (_1!35745 lt!2217816) (_1!35745 lt!2217871)) (= lambda!285928 lambda!285920))))

(assert (=> bs!1254912 (not (= lambda!285928 lambda!285922))))

(assert (=> b!5437035 true))

(assert (=> b!5437035 true))

(assert (=> b!5437035 true))

(declare-fun lambda!285929 () Int)

(assert (=> bs!1254913 (= (and (= (_1!35745 lt!2217816) s!2326) (= (reg!15572 (regOne!30998 r!7292)) (regOne!30998 r!7292)) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285929 lambda!285916))))

(assert (=> bs!1254914 (= (and (= (_1!35745 lt!2217816) s!2326) (= (reg!15572 (regOne!30998 r!7292)) lt!2217869) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285929 lambda!285919))))

(assert (=> b!5437035 (not (= lambda!285929 lambda!285928))))

(assert (=> b!5437035 (= (and (= (_1!35745 lt!2217816) s!2326) (= (reg!15572 (regOne!30998 r!7292)) lt!2217826) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285929 lambda!285927))))

(assert (=> bs!1254914 (not (= lambda!285929 lambda!285918))))

(assert (=> bs!1254913 (not (= lambda!285929 lambda!285915))))

(assert (=> bs!1254912 (not (= lambda!285929 lambda!285921))))

(assert (=> b!5437035 (not (= lambda!285929 lambda!285926))))

(assert (=> bs!1254912 (not (= lambda!285929 lambda!285920))))

(assert (=> bs!1254912 (= (= (_1!35745 lt!2217816) (_1!35745 lt!2217871)) (= lambda!285929 lambda!285922))))

(assert (=> b!5437035 true))

(assert (=> b!5437035 true))

(assert (=> b!5437035 true))

(declare-fun lambda!285930 () Int)

(assert (=> bs!1254913 (not (= lambda!285930 lambda!285916))))

(assert (=> bs!1254914 (not (= lambda!285930 lambda!285919))))

(assert (=> b!5437035 (not (= lambda!285930 lambda!285929))))

(assert (=> b!5437035 (not (= lambda!285930 lambda!285928))))

(assert (=> b!5437035 (not (= lambda!285930 lambda!285927))))

(assert (=> bs!1254914 (not (= lambda!285930 lambda!285918))))

(assert (=> bs!1254913 (not (= lambda!285930 lambda!285915))))

(assert (=> bs!1254912 (= (= (_1!35745 lt!2217816) (_1!35745 lt!2217871)) (= lambda!285930 lambda!285921))))

(assert (=> b!5437035 (not (= lambda!285930 lambda!285926))))

(assert (=> bs!1254912 (not (= lambda!285930 lambda!285920))))

(assert (=> bs!1254912 (not (= lambda!285930 lambda!285922))))

(assert (=> b!5437035 true))

(assert (=> b!5437035 true))

(assert (=> b!5437035 true))

(declare-fun bs!1254915 () Bool)

(declare-fun b!5437000 () Bool)

(assert (= bs!1254915 (and b!5437000 b!5437029)))

(declare-fun lambda!285931 () Int)

(assert (=> bs!1254915 (not (= lambda!285931 lambda!285916))))

(declare-fun bs!1254916 () Bool)

(assert (= bs!1254916 (and b!5437000 b!5437006)))

(assert (=> bs!1254916 (not (= lambda!285931 lambda!285919))))

(declare-fun bs!1254917 () Bool)

(assert (= bs!1254917 (and b!5437000 b!5437035)))

(assert (=> bs!1254917 (not (= lambda!285931 lambda!285929))))

(assert (=> bs!1254917 (= (= Nil!61904 (_1!35745 lt!2217816)) (= lambda!285931 lambda!285928))))

(assert (=> bs!1254917 (not (= lambda!285931 lambda!285927))))

(assert (=> bs!1254917 (not (= lambda!285931 lambda!285930))))

(assert (=> bs!1254916 (= (and (= Nil!61904 s!2326) (= (reg!15572 (regOne!30998 r!7292)) lt!2217869) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285931 lambda!285918))))

(assert (=> bs!1254915 (= (and (= Nil!61904 s!2326) (= (reg!15572 (regOne!30998 r!7292)) (regOne!30998 r!7292)) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285931 lambda!285915))))

(declare-fun bs!1254918 () Bool)

(assert (= bs!1254918 (and b!5437000 b!5437004)))

(assert (=> bs!1254918 (not (= lambda!285931 lambda!285921))))

(assert (=> bs!1254917 (= (and (= Nil!61904 s!2326) (= (reg!15572 (regOne!30998 r!7292)) lt!2217826) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285931 lambda!285926))))

(assert (=> bs!1254918 (= (= Nil!61904 (_1!35745 lt!2217871)) (= lambda!285931 lambda!285920))))

(assert (=> bs!1254918 (not (= lambda!285931 lambda!285922))))

(assert (=> b!5437000 true))

(assert (=> b!5437000 true))

(declare-fun lambda!285932 () Int)

(assert (=> bs!1254915 (= (and (= Nil!61904 s!2326) (= (reg!15572 (regOne!30998 r!7292)) (regOne!30998 r!7292)) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285932 lambda!285916))))

(assert (=> b!5437000 (not (= lambda!285932 lambda!285931))))

(assert (=> bs!1254916 (= (and (= Nil!61904 s!2326) (= (reg!15572 (regOne!30998 r!7292)) lt!2217869) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285932 lambda!285919))))

(assert (=> bs!1254917 (= (= Nil!61904 (_1!35745 lt!2217816)) (= lambda!285932 lambda!285929))))

(assert (=> bs!1254917 (not (= lambda!285932 lambda!285928))))

(assert (=> bs!1254917 (= (and (= Nil!61904 s!2326) (= (reg!15572 (regOne!30998 r!7292)) lt!2217826) (= lt!2217869 (regTwo!30998 r!7292))) (= lambda!285932 lambda!285927))))

(assert (=> bs!1254917 (not (= lambda!285932 lambda!285930))))

(assert (=> bs!1254916 (not (= lambda!285932 lambda!285918))))

(assert (=> bs!1254915 (not (= lambda!285932 lambda!285915))))

(assert (=> bs!1254918 (not (= lambda!285932 lambda!285921))))

(assert (=> bs!1254917 (not (= lambda!285932 lambda!285926))))

(assert (=> bs!1254918 (not (= lambda!285932 lambda!285920))))

(assert (=> bs!1254918 (= (= Nil!61904 (_1!35745 lt!2217871)) (= lambda!285932 lambda!285922))))

(assert (=> b!5437000 true))

(assert (=> b!5437000 true))

(declare-fun lambda!285933 () Int)

(assert (=> bs!1254915 (not (= lambda!285933 lambda!285916))))

(assert (=> b!5437000 (not (= lambda!285933 lambda!285931))))

(assert (=> bs!1254916 (not (= lambda!285933 lambda!285919))))

(assert (=> bs!1254917 (not (= lambda!285933 lambda!285929))))

(assert (=> bs!1254917 (not (= lambda!285933 lambda!285928))))

(assert (=> bs!1254917 (not (= lambda!285933 lambda!285927))))

(assert (=> b!5437000 (not (= lambda!285933 lambda!285932))))

(assert (=> bs!1254917 (= (= Nil!61904 (_1!35745 lt!2217816)) (= lambda!285933 lambda!285930))))

(assert (=> bs!1254916 (not (= lambda!285933 lambda!285918))))

(assert (=> bs!1254915 (not (= lambda!285933 lambda!285915))))

(assert (=> bs!1254918 (= (= Nil!61904 (_1!35745 lt!2217871)) (= lambda!285933 lambda!285921))))

(assert (=> bs!1254917 (not (= lambda!285933 lambda!285926))))

(assert (=> bs!1254918 (not (= lambda!285933 lambda!285920))))

(assert (=> bs!1254918 (not (= lambda!285933 lambda!285922))))

(assert (=> b!5437000 true))

(assert (=> b!5437000 true))

(declare-fun lt!2217886 () tuple2!64884)

(declare-fun call!389847 () List!62028)

(declare-fun c!948733 () Bool)

(declare-fun bm!389815 () Bool)

(declare-fun lt!2217788 () List!62028)

(declare-fun ++!13617 (List!62028 List!62028) List!62028)

(assert (=> bm!389815 (= call!389847 (++!13617 (ite c!948733 lt!2217788 (_2!35745 lt!2217886)) (ite c!948733 (_2!35745 lt!2217871) (_2!35745 lt!2217816))))))

(declare-fun b!5436990 () Bool)

(declare-fun e!3368473 () Bool)

(declare-fun e!3368482 () Bool)

(assert (=> b!5436990 (= e!3368473 e!3368482)))

(declare-fun res!2314623 () Bool)

(assert (=> b!5436990 (=> res!2314623 e!3368482)))

(declare-datatypes ((List!62029 0))(
  ( (Nil!61905) (Cons!61905 (h!68353 Regex!15243) (t!375254 List!62029)) )
))
(declare-datatypes ((Context!9254 0))(
  ( (Context!9255 (exprs!5127 List!62029)) )
))
(declare-datatypes ((List!62030 0))(
  ( (Nil!61906) (Cons!61906 (h!68354 Context!9254) (t!375255 List!62030)) )
))
(declare-fun lt!2217838 () List!62030)

(declare-fun unfocusZipper!985 (List!62030) Regex!15243)

(assert (=> b!5436990 (= res!2314623 (not (= (unfocusZipper!985 lt!2217838) (reg!15572 (regOne!30998 r!7292)))))))

(declare-fun lt!2217817 () Context!9254)

(assert (=> b!5436990 (= lt!2217838 (Cons!61906 lt!2217817 Nil!61906))))

(declare-fun lt!2217867 () Context!9254)

(declare-fun lambda!285917 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2217848 () (InoxSet Context!9254))

(declare-fun flatMap!970 ((InoxSet Context!9254) Int) (InoxSet Context!9254))

(declare-fun derivationStepZipperUp!615 (Context!9254 C!30756) (InoxSet Context!9254))

(assert (=> b!5436990 (= (flatMap!970 lt!2217848 lambda!285917) (derivationStepZipperUp!615 lt!2217867 (h!68352 s!2326)))))

(declare-datatypes ((Unit!154507 0))(
  ( (Unit!154508) )
))
(declare-fun lt!2217782 () Unit!154507)

(declare-fun lemmaFlatMapOnSingletonSet!502 ((InoxSet Context!9254) Context!9254 Int) Unit!154507)

(assert (=> b!5436990 (= lt!2217782 (lemmaFlatMapOnSingletonSet!502 lt!2217848 lt!2217867 lambda!285917))))

(declare-fun lt!2217792 () (InoxSet Context!9254))

(assert (=> b!5436990 (= (flatMap!970 lt!2217792 lambda!285917) (derivationStepZipperUp!615 lt!2217817 (h!68352 s!2326)))))

(declare-fun lt!2217789 () Unit!154507)

(assert (=> b!5436990 (= lt!2217789 (lemmaFlatMapOnSingletonSet!502 lt!2217792 lt!2217817 lambda!285917))))

(declare-fun lt!2217810 () (InoxSet Context!9254))

(assert (=> b!5436990 (= lt!2217810 (derivationStepZipperUp!615 lt!2217867 (h!68352 s!2326)))))

(declare-fun lt!2217805 () (InoxSet Context!9254))

(assert (=> b!5436990 (= lt!2217805 (derivationStepZipperUp!615 lt!2217817 (h!68352 s!2326)))))

(assert (=> b!5436990 (= lt!2217848 (store ((as const (Array Context!9254 Bool)) false) lt!2217867 true))))

(assert (=> b!5436990 (= lt!2217792 (store ((as const (Array Context!9254 Bool)) false) lt!2217817 true))))

(declare-fun lt!2217874 () List!62029)

(assert (=> b!5436990 (= lt!2217817 (Context!9255 lt!2217874))))

(assert (=> b!5436990 (= lt!2217874 (Cons!61905 (reg!15572 (regOne!30998 r!7292)) Nil!61905))))

(declare-fun b!5436991 () Bool)

(declare-fun e!3368459 () Bool)

(declare-fun e!3368480 () Bool)

(assert (=> b!5436991 (= e!3368459 e!3368480)))

(declare-fun res!2314631 () Bool)

(assert (=> b!5436991 (=> res!2314631 e!3368480)))

(declare-fun lt!2217790 () Regex!15243)

(assert (=> b!5436991 (= res!2314631 (not (= r!7292 lt!2217790)))))

(assert (=> b!5436991 (= lt!2217790 (Concat!24088 lt!2217869 (regTwo!30998 r!7292)))))

(declare-fun b!5436992 () Bool)

(declare-fun e!3368481 () Bool)

(declare-fun e!3368457 () Bool)

(assert (=> b!5436992 (= e!3368481 (not e!3368457))))

(declare-fun res!2314622 () Bool)

(assert (=> b!5436992 (=> res!2314622 e!3368457)))

(declare-fun zl!343 () List!62030)

(get-info :version)

(assert (=> b!5436992 (= res!2314622 (not ((_ is Cons!61906) zl!343)))))

(declare-fun lt!2217832 () Bool)

(declare-fun lt!2217872 () Bool)

(assert (=> b!5436992 (= lt!2217832 lt!2217872)))

(declare-fun matchRSpec!2346 (Regex!15243 List!62028) Bool)

(assert (=> b!5436992 (= lt!2217872 (matchRSpec!2346 r!7292 s!2326))))

(declare-fun matchR!7428 (Regex!15243 List!62028) Bool)

(assert (=> b!5436992 (= lt!2217832 (matchR!7428 r!7292 s!2326))))

(declare-fun lt!2217795 () Unit!154507)

(declare-fun mainMatchTheorem!2346 (Regex!15243 List!62028) Unit!154507)

(assert (=> b!5436992 (= lt!2217795 (mainMatchTheorem!2346 r!7292 s!2326))))

(declare-fun b!5436993 () Bool)

(declare-fun e!3368476 () Unit!154507)

(declare-fun Unit!154509 () Unit!154507)

(assert (=> b!5436993 (= e!3368476 Unit!154509)))

(declare-fun call!389867 () Unit!154507)

(declare-fun lt!2217793 () List!62030)

(declare-fun lt!2217864 () tuple2!64884)

(declare-fun lt!2217844 () List!62028)

(declare-fun bm!389816 () Bool)

(declare-fun theoremZipperRegexEquiv!547 ((InoxSet Context!9254) List!62030 Regex!15243 List!62028) Unit!154507)

(assert (=> bm!389816 (= call!389867 (theoremZipperRegexEquiv!547 lt!2217848 lt!2217793 lt!2217790 (ite c!948733 lt!2217844 (_2!35745 lt!2217864))))))

(declare-fun c!948734 () Bool)

(declare-fun call!389829 () Bool)

(declare-fun bm!389817 () Bool)

(declare-fun Exists!2424 (Int) Bool)

(assert (=> bm!389817 (= call!389829 (Exists!2424 (ite c!948733 lambda!285920 (ite c!948734 lambda!285930 lambda!285933))))))

(declare-fun b!5436994 () Bool)

(declare-fun res!2314614 () Bool)

(assert (=> b!5436994 (=> res!2314614 e!3368457)))

(declare-fun generalisedConcat!912 (List!62029) Regex!15243)

(assert (=> b!5436994 (= res!2314614 (not (= r!7292 (generalisedConcat!912 (exprs!5127 (h!68354 zl!343))))))))

(declare-fun bm!389818 () Bool)

(declare-fun call!389888 () Unit!154507)

(declare-fun call!389837 () Unit!154507)

(assert (=> bm!389818 (= call!389888 call!389837)))

(declare-fun b!5436995 () Bool)

(declare-fun e!3368464 () Bool)

(declare-fun tp!1499185 () Bool)

(declare-fun tp!1499187 () Bool)

(assert (=> b!5436995 (= e!3368464 (and tp!1499185 tp!1499187))))

(declare-fun bm!389819 () Bool)

(declare-fun call!389885 () (InoxSet Context!9254))

(declare-fun lt!2217818 () Context!9254)

(assert (=> bm!389819 (= call!389885 (derivationStepZipperUp!615 lt!2217818 (h!68352 s!2326)))))

(declare-fun b!5436996 () Bool)

(assert (=> b!5436996 (= e!3368480 e!3368473)))

(declare-fun res!2314639 () Bool)

(assert (=> b!5436996 (=> res!2314639 e!3368473)))

(declare-fun lt!2217823 () Context!9254)

(declare-fun lt!2217885 () Regex!15243)

(assert (=> b!5436996 (= res!2314639 (not (= (unfocusZipper!985 (Cons!61906 lt!2217823 Nil!61906)) lt!2217885)))))

(assert (=> b!5436996 (= lt!2217885 (Concat!24088 (reg!15572 (regOne!30998 r!7292)) lt!2217790))))

(declare-fun call!389827 () Unit!154507)

(declare-fun bm!389820 () Bool)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1532 (Regex!15243 Regex!15243 List!62028) Unit!154507)

(assert (=> bm!389820 (= call!389827 (lemmaFindConcatSeparationEquivalentToExists!1532 (ite c!948733 lt!2217869 (reg!15572 (regOne!30998 r!7292))) (ite c!948733 (regTwo!30998 r!7292) lt!2217869) (ite c!948733 s!2326 (_1!35745 lt!2217816))))))

(declare-fun b!5436997 () Bool)

(declare-fun res!2314630 () Bool)

(assert (=> b!5436997 (=> res!2314630 e!3368457)))

(declare-fun isEmpty!33897 (List!62030) Bool)

(assert (=> b!5436997 (= res!2314630 (not (isEmpty!33897 (t!375255 zl!343))))))

(declare-fun call!389864 () Bool)

(declare-fun bm!389821 () Bool)

(assert (=> bm!389821 (= call!389864 (Exists!2424 (ite c!948733 lambda!285920 lambda!285928)))))

(declare-fun bm!389822 () Bool)

(declare-fun call!389831 () Bool)

(assert (=> bm!389822 (= call!389831 call!389829)))

(declare-fun b!5436998 () Bool)

(declare-fun res!2314640 () Bool)

(assert (=> b!5436998 (=> res!2314640 e!3368457)))

(declare-fun generalisedUnion!1172 (List!62029) Regex!15243)

(declare-fun unfocusZipperList!685 (List!62030) List!62029)

(assert (=> b!5436998 (= res!2314640 (not (= r!7292 (generalisedUnion!1172 (unfocusZipperList!685 zl!343)))))))

(declare-fun b!5436999 () Bool)

(declare-fun e!3368469 () Bool)

(declare-fun tp_is_empty!39739 () Bool)

(declare-fun tp!1499192 () Bool)

(assert (=> b!5436999 (= e!3368469 (and tp_is_empty!39739 tp!1499192))))

(declare-fun bm!389823 () Bool)

(declare-fun lt!2217784 () (InoxSet Context!9254))

(declare-fun call!389889 () Bool)

(declare-fun matchZipper!1487 ((InoxSet Context!9254) List!62028) Bool)

(assert (=> bm!389823 (= call!389889 (matchZipper!1487 (ite c!948734 lt!2217848 lt!2217784) (ite c!948734 (_2!35745 lt!2217864) s!2326)))))

(declare-fun e!3368455 () Unit!154507)

(declare-fun Unit!154510 () Unit!154507)

(assert (=> b!5437000 (= e!3368455 Unit!154510)))

(assert (=> b!5437000 (= lt!2217784 (store ((as const (Array Context!9254 Bool)) false) lt!2217818 true))))

(declare-fun lt!2217860 () Unit!154507)

(declare-fun call!389842 () Unit!154507)

(assert (=> b!5437000 (= lt!2217860 call!389842)))

(declare-fun call!389830 () (InoxSet Context!9254))

(assert (=> b!5437000 (= call!389830 call!389885)))

(declare-fun lt!2217796 () Regex!15243)

(declare-fun call!389875 () Regex!15243)

(assert (=> b!5437000 (= lt!2217796 call!389875)))

(declare-fun lt!2217870 () Unit!154507)

(declare-fun call!389871 () Unit!154507)

(assert (=> b!5437000 (= lt!2217870 call!389871)))

(declare-fun call!389859 () Bool)

(assert (=> b!5437000 (= call!389859 call!389889)))

(declare-fun lt!2217786 () Unit!154507)

(declare-fun call!389854 () Unit!154507)

(assert (=> b!5437000 (= lt!2217786 call!389854)))

(declare-fun call!389866 () Bool)

(declare-fun call!389843 () Bool)

(assert (=> b!5437000 (= call!389866 call!389843)))

(declare-fun lt!2217853 () Unit!154507)

(declare-fun call!389853 () Unit!154507)

(assert (=> b!5437000 (= lt!2217853 call!389853)))

(declare-fun call!389874 () Bool)

(declare-fun call!389878 () Bool)

(assert (=> b!5437000 (= call!389874 call!389878)))

(declare-fun lt!2217821 () Unit!154507)

(declare-fun call!389836 () Unit!154507)

(assert (=> b!5437000 (= lt!2217821 call!389836)))

(declare-fun call!389880 () Bool)

(declare-fun call!389828 () Bool)

(assert (=> b!5437000 (= call!389880 call!389828)))

(declare-fun lt!2217815 () Unit!154507)

(assert (=> b!5437000 (= lt!2217815 call!389888)))

(declare-fun call!389879 () Bool)

(assert (=> b!5437000 (= call!389879 call!389831)))

(declare-fun lt!2217828 () Unit!154507)

(declare-fun call!389852 () Unit!154507)

(assert (=> b!5437000 (= lt!2217828 call!389852)))

(declare-fun res!2314637 () Bool)

(declare-fun call!389822 () Bool)

(assert (=> b!5437000 (= res!2314637 call!389822)))

(declare-fun e!3368458 () Bool)

(assert (=> b!5437000 (=> (not res!2314637) (not e!3368458))))

(assert (=> b!5437000 e!3368458))

(declare-datatypes ((Option!15354 0))(
  ( (None!15353) (Some!15353 (v!51382 tuple2!64884)) )
))
(declare-fun lt!2217799 () Option!15354)

(declare-fun bm!389824 () Bool)

(declare-fun lt!2217857 () Option!15354)

(declare-fun call!389851 () tuple2!64884)

(declare-fun get!21351 (Option!15354) tuple2!64884)

(assert (=> bm!389824 (= call!389851 (get!21351 (ite c!948733 lt!2217799 lt!2217857)))))

(declare-fun b!5437001 () Bool)

(declare-fun e!3368462 () Bool)

(assert (=> b!5437001 e!3368462))

(declare-fun res!2314615 () Bool)

(assert (=> b!5437001 (=> (not res!2314615) (not e!3368462))))

(declare-fun call!389823 () Bool)

(declare-fun call!389821 () Bool)

(assert (=> b!5437001 (= res!2314615 (= call!389823 call!389821))))

(declare-fun lt!2217833 () Unit!154507)

(declare-fun call!389848 () Unit!154507)

(assert (=> b!5437001 (= lt!2217833 call!389848)))

(declare-fun lt!2217862 () Regex!15243)

(assert (=> b!5437001 (= lt!2217862 call!389875)))

(assert (=> b!5437001 (= call!389830 call!389885)))

(declare-fun lt!2217868 () Unit!154507)

(assert (=> b!5437001 (= lt!2217868 call!389842)))

(declare-fun lt!2217849 () (InoxSet Context!9254))

(assert (=> b!5437001 (= lt!2217849 (store ((as const (Array Context!9254 Bool)) false) lt!2217818 true))))

(declare-fun e!3368468 () Unit!154507)

(declare-fun Unit!154511 () Unit!154507)

(assert (=> b!5437001 (= e!3368468 Unit!154511)))

(declare-fun b!5437002 () Bool)

(declare-fun e!3368471 () Bool)

(declare-fun lt!2217858 () Bool)

(assert (=> b!5437002 (= e!3368471 lt!2217858)))

(declare-fun b!5437003 () Bool)

(declare-fun e!3368463 () Bool)

(assert (=> b!5437003 (= e!3368463 false)))

(declare-fun bm!389825 () Bool)

(declare-fun call!389883 () Option!15354)

(declare-fun call!389861 () Option!15354)

(assert (=> bm!389825 (= call!389883 call!389861)))

(declare-fun bm!389826 () Bool)

(declare-fun findConcatSeparation!1768 (Regex!15243 Regex!15243 List!62028 List!62028 List!62028) Option!15354)

(assert (=> bm!389826 (= call!389861 (findConcatSeparation!1768 (reg!15572 (regOne!30998 r!7292)) lt!2217869 Nil!61904 (ite c!948733 (_1!35745 lt!2217871) (ite c!948734 (_1!35745 lt!2217816) Nil!61904)) (ite c!948733 (_1!35745 lt!2217871) (ite c!948734 (_1!35745 lt!2217816) Nil!61904))))))

(declare-fun lt!2217839 () Option!15354)

(declare-fun call!389870 () Bool)

(declare-fun bm!389827 () Bool)

(declare-fun isDefined!12057 (Option!15354) Bool)

(assert (=> bm!389827 (= call!389870 (isDefined!12057 (ite c!948733 lt!2217799 (ite c!948734 lt!2217839 call!389883))))))

(declare-fun call!389857 () Bool)

(assert (=> b!5437004 call!389857))

(declare-fun lt!2217827 () Unit!154507)

(declare-fun call!389862 () Unit!154507)

(assert (=> b!5437004 (= lt!2217827 call!389862)))

(declare-fun e!3368456 () Bool)

(assert (=> b!5437004 e!3368456))

(declare-fun res!2314626 () Bool)

(assert (=> b!5437004 (=> (not res!2314626) (not e!3368456))))

(assert (=> b!5437004 (= res!2314626 call!389823)))

(declare-fun lt!2217842 () Unit!154507)

(declare-fun call!389860 () Unit!154507)

(assert (=> b!5437004 (= lt!2217842 call!389860)))

(declare-fun call!389855 () Bool)

(assert (=> b!5437004 call!389855))

(declare-fun lt!2217845 () Unit!154507)

(declare-fun call!389833 () Unit!154507)

(assert (=> b!5437004 (= lt!2217845 call!389833)))

(declare-fun lt!2217877 () Unit!154507)

(declare-fun call!389869 () Unit!154507)

(assert (=> b!5437004 (= lt!2217877 call!389869)))

(assert (=> b!5437004 call!389821))

(declare-fun lt!2217890 () Unit!154507)

(assert (=> b!5437004 (= lt!2217890 call!389867)))

(declare-fun call!389882 () Bool)

(declare-fun call!389838 () Bool)

(assert (=> b!5437004 (= call!389882 call!389838)))

(declare-fun lt!2217863 () Unit!154507)

(assert (=> b!5437004 (= lt!2217863 call!389848)))

(declare-fun call!389890 () Bool)

(assert (=> b!5437004 call!389890))

(declare-fun lt!2217888 () Unit!154507)

(declare-fun call!389844 () Unit!154507)

(assert (=> b!5437004 (= lt!2217888 call!389844)))

(declare-fun call!389841 () Bool)

(assert (=> b!5437004 call!389841))

(declare-fun lt!2217855 () Unit!154507)

(declare-fun call!389850 () Unit!154507)

(assert (=> b!5437004 (= lt!2217855 call!389850)))

(declare-fun lt!2217802 () List!62028)

(declare-fun lt!2217882 () List!62028)

(assert (=> b!5437004 (= lt!2217802 lt!2217882)))

(declare-fun call!389824 () List!62028)

(assert (=> b!5437004 (= lt!2217882 call!389824)))

(assert (=> b!5437004 (= lt!2217802 call!389847)))

(declare-fun call!389863 () List!62028)

(assert (=> b!5437004 (= lt!2217844 call!389863)))

(declare-fun call!389820 () List!62028)

(assert (=> b!5437004 (= lt!2217788 call!389820)))

(declare-fun lt!2217809 () Unit!154507)

(declare-fun call!389856 () Unit!154507)

(assert (=> b!5437004 (= lt!2217809 call!389856)))

(declare-fun lt!2217843 () tuple2!64884)

(assert (=> b!5437004 (= lt!2217843 call!389851)))

(declare-fun call!389834 () Bool)

(assert (=> b!5437004 (= call!389829 call!389834)))

(declare-fun lt!2217811 () Unit!154507)

(declare-fun call!389825 () Unit!154507)

(assert (=> b!5437004 (= lt!2217811 call!389825)))

(declare-fun call!389872 () Bool)

(assert (=> b!5437004 (= call!389864 call!389872)))

(declare-fun lt!2217825 () Unit!154507)

(assert (=> b!5437004 (= lt!2217825 call!389837)))

(declare-fun call!389845 () Bool)

(assert (=> b!5437004 (= call!389870 call!389845)))

(assert (=> b!5437004 (= lt!2217799 call!389861)))

(declare-fun lt!2217856 () Unit!154507)

(declare-fun call!389876 () Unit!154507)

(assert (=> b!5437004 (= lt!2217856 call!389876)))

(declare-fun call!389840 () Bool)

(declare-fun call!389881 () Bool)

(assert (=> b!5437004 (= call!389840 call!389881)))

(declare-fun lt!2217889 () Unit!154507)

(declare-fun call!389858 () Unit!154507)

(assert (=> b!5437004 (= lt!2217889 call!389858)))

(declare-fun Unit!154512 () Unit!154507)

(assert (=> b!5437004 (= e!3368468 Unit!154512)))

(declare-fun bm!389828 () Bool)

(declare-fun lemmaConcatAssociativity!2850 (List!62028 List!62028 List!62028) Unit!154507)

(assert (=> bm!389828 (= call!389856 (lemmaConcatAssociativity!2850 (ite c!948733 (_1!35745 lt!2217843) (_1!35745 lt!2217886)) (ite c!948733 (_2!35745 lt!2217843) (_2!35745 lt!2217886)) (ite c!948733 (_2!35745 lt!2217871) (_2!35745 lt!2217816))))))

(declare-fun b!5437005 () Bool)

(assert (=> b!5437005 (= c!948734 call!389838)))

(declare-fun e!3368460 () Unit!154507)

(assert (=> b!5437005 (= e!3368460 e!3368455)))

(declare-fun e!3368454 () Unit!154507)

(declare-fun Unit!154513 () Unit!154507)

(assert (=> b!5437006 (= e!3368454 Unit!154513)))

(declare-fun lt!2217878 () Unit!154507)

(assert (=> b!5437006 (= lt!2217878 call!389827)))

(declare-fun lt!2217800 () Option!15354)

(declare-fun call!389839 () Option!15354)

(assert (=> b!5437006 (= lt!2217800 call!389839)))

(declare-fun call!389865 () Bool)

(declare-fun call!389884 () Bool)

(assert (=> b!5437006 (= call!389865 call!389884)))

(declare-fun lt!2217852 () Unit!154507)

(declare-fun call!389873 () Unit!154507)

(assert (=> b!5437006 (= lt!2217852 call!389873)))

(declare-fun call!389832 () Bool)

(declare-fun call!389846 () Bool)

(assert (=> b!5437006 (= call!389832 call!389846)))

(declare-fun call!389887 () tuple2!64884)

(assert (=> b!5437006 (= lt!2217871 call!389887)))

(declare-fun c!948731 () Bool)

(declare-fun isEmpty!33898 (List!62028) Bool)

(assert (=> b!5437006 (= c!948731 (isEmpty!33898 (_1!35745 lt!2217871)))))

(declare-fun lt!2217794 () Unit!154507)

(assert (=> b!5437006 (= lt!2217794 e!3368468)))

(declare-fun call!389868 () Bool)

(assert (=> b!5437006 call!389868))

(declare-fun call!389877 () List!62028)

(declare-fun bm!389829 () Bool)

(declare-fun call!389826 () Bool)

(assert (=> bm!389829 (= call!389826 (matchR!7428 (ite c!948733 (ite c!948731 lt!2217862 lt!2217885) (ite c!948734 lt!2217826 lt!2217790)) (ite c!948733 (ite c!948731 s!2326 lt!2217882) (ite c!948734 (_1!35745 lt!2217816) call!389877))))))

(declare-fun bm!389830 () Bool)

(assert (=> bm!389830 (= call!389857 call!389868)))

(declare-fun bm!389831 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!430 (Regex!15243 List!62028) Unit!154507)

(assert (=> bm!389831 (= call!389837 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!430 (reg!15572 (regOne!30998 r!7292)) (ite c!948733 (_1!35745 lt!2217871) (ite c!948734 (_1!35745 lt!2217816) Nil!61904))))))

(declare-fun bm!389832 () Bool)

(assert (=> bm!389832 (= call!389858 (mainMatchTheorem!2346 (ite c!948733 lt!2217869 lt!2217826) (ite c!948733 (_1!35745 lt!2217871) (_1!35745 lt!2217816))))))

(declare-fun b!5437007 () Bool)

(declare-fun e!3368472 () Bool)

(assert (=> b!5437007 (= e!3368472 e!3368459)))

(declare-fun res!2314628 () Bool)

(assert (=> b!5437007 (=> res!2314628 e!3368459)))

(declare-fun lt!2217801 () (InoxSet Context!9254))

(declare-fun lt!2217814 () (InoxSet Context!9254))

(assert (=> b!5437007 (= res!2314628 (not (= lt!2217801 lt!2217814)))))

(declare-fun lt!2217841 () (InoxSet Context!9254))

(assert (=> b!5437007 (= (flatMap!970 lt!2217841 lambda!285917) (derivationStepZipperUp!615 lt!2217823 (h!68352 s!2326)))))

(declare-fun lt!2217807 () Unit!154507)

(assert (=> b!5437007 (= lt!2217807 (lemmaFlatMapOnSingletonSet!502 lt!2217841 lt!2217823 lambda!285917))))

(declare-fun lt!2217873 () (InoxSet Context!9254))

(assert (=> b!5437007 (= lt!2217873 (derivationStepZipperUp!615 lt!2217823 (h!68352 s!2326)))))

(declare-fun derivationStepZipper!1482 ((InoxSet Context!9254) C!30756) (InoxSet Context!9254))

(assert (=> b!5437007 (= lt!2217801 (derivationStepZipper!1482 lt!2217841 (h!68352 s!2326)))))

(assert (=> b!5437007 (= lt!2217841 (store ((as const (Array Context!9254 Bool)) false) lt!2217823 true))))

(declare-fun lt!2217803 () List!62029)

(assert (=> b!5437007 (= lt!2217823 (Context!9255 (Cons!61905 (reg!15572 (regOne!30998 r!7292)) lt!2217803)))))

(declare-fun bm!389833 () Bool)

(declare-fun call!389835 () Bool)

(assert (=> bm!389833 (= call!389821 call!389835)))

(declare-fun bm!389834 () Bool)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!88 (Context!9254 Context!9254 List!62028 List!62028) Unit!154507)

(assert (=> bm!389834 (= call!389869 (lemmaConcatenateContextMatchesConcatOfStrings!88 lt!2217817 lt!2217867 (ite c!948733 (_1!35745 lt!2217843) (_1!35745 lt!2217864)) (ite c!948733 lt!2217844 (_2!35745 lt!2217864))))))

(declare-fun bm!389835 () Bool)

(assert (=> bm!389835 (= call!389872 (Exists!2424 (ite c!948733 lambda!285921 (ite c!948734 lambda!285928 lambda!285932))))))

(declare-fun e!3368478 () Bool)

(declare-fun e!3368467 () Bool)

(assert (=> b!5437008 (= e!3368478 e!3368467)))

(declare-fun res!2314616 () Bool)

(assert (=> b!5437008 (=> res!2314616 e!3368467)))

(assert (=> b!5437008 (= res!2314616 (or (and ((_ is ElementMatch!15243) (regOne!30998 r!7292)) (= (c!948735 (regOne!30998 r!7292)) (h!68352 s!2326))) ((_ is Union!15243) (regOne!30998 r!7292))))))

(declare-fun lt!2217820 () Unit!154507)

(assert (=> b!5437008 (= lt!2217820 e!3368476)))

(declare-fun c!948732 () Bool)

(declare-fun nullable!5412 (Regex!15243) Bool)

(assert (=> b!5437008 (= c!948732 (nullable!5412 (h!68353 (exprs!5127 (h!68354 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!9254))

(assert (=> b!5437008 (= (flatMap!970 z!1189 lambda!285917) (derivationStepZipperUp!615 (h!68354 zl!343) (h!68352 s!2326)))))

(declare-fun lt!2217837 () Unit!154507)

(assert (=> b!5437008 (= lt!2217837 (lemmaFlatMapOnSingletonSet!502 z!1189 (h!68354 zl!343) lambda!285917))))

(declare-fun lt!2217806 () (InoxSet Context!9254))

(assert (=> b!5437008 (= lt!2217806 (derivationStepZipperUp!615 lt!2217818 (h!68352 s!2326)))))

(declare-fun lt!2217851 () (InoxSet Context!9254))

(declare-fun derivationStepZipperDown!691 (Regex!15243 Context!9254 C!30756) (InoxSet Context!9254))

(assert (=> b!5437008 (= lt!2217851 (derivationStepZipperDown!691 (h!68353 (exprs!5127 (h!68354 zl!343))) lt!2217818 (h!68352 s!2326)))))

(assert (=> b!5437008 (= lt!2217818 (Context!9255 (t!375254 (exprs!5127 (h!68354 zl!343)))))))

(declare-fun lt!2217798 () (InoxSet Context!9254))

(assert (=> b!5437008 (= lt!2217798 (derivationStepZipperUp!615 (Context!9255 (Cons!61905 (h!68353 (exprs!5127 (h!68354 zl!343))) (t!375254 (exprs!5127 (h!68354 zl!343))))) (h!68352 s!2326)))))

(declare-fun b!5437009 () Bool)

(assert (=> b!5437009 (= e!3368462 call!389857)))

(declare-fun bm!389836 () Bool)

(assert (=> bm!389836 (= call!389822 call!389826)))

(declare-fun bm!389837 () Bool)

(assert (=> bm!389837 (= call!389852 call!389844)))

(declare-fun b!5437010 () Bool)

(declare-fun Unit!154514 () Unit!154507)

(assert (=> b!5437010 (= e!3368454 Unit!154514)))

(declare-fun lt!2217831 () Bool)

(assert (=> b!5437010 (= lt!2217831 call!389835)))

(declare-fun c!948730 () Bool)

(assert (=> b!5437010 (= c!948730 lt!2217831)))

(declare-fun lt!2217836 () Unit!154507)

(assert (=> b!5437010 (= lt!2217836 e!3368460)))

(assert (=> b!5437010 (not lt!2217831)))

(declare-fun b!5437011 () Bool)

(declare-fun Unit!154515 () Unit!154507)

(assert (=> b!5437011 (= e!3368460 Unit!154515)))

(declare-fun b!5437012 () Bool)

(declare-fun e!3368477 () Bool)

(declare-fun tp!1499191 () Bool)

(assert (=> b!5437012 (= e!3368477 tp!1499191)))

(declare-fun bm!389838 () Bool)

(assert (=> bm!389838 (= call!389846 (Exists!2424 (ite c!948733 lambda!285919 lambda!285926)))))

(declare-fun bm!389839 () Bool)

(assert (=> bm!389839 (= call!389842 (lemmaFlatMapOnSingletonSet!502 (ite c!948733 lt!2217849 lt!2217784) lt!2217818 (ite c!948733 lambda!285917 lambda!285917)))))

(declare-fun b!5437013 () Bool)

(declare-fun e!3368474 () Bool)

(declare-fun tp!1499189 () Bool)

(assert (=> b!5437013 (= e!3368474 tp!1499189)))

(declare-fun b!5437014 () Bool)

(declare-fun res!2314627 () Bool)

(assert (=> b!5437014 (=> res!2314627 e!3368459)))

(assert (=> b!5437014 (= res!2314627 (not (= (matchZipper!1487 lt!2217841 s!2326) (matchZipper!1487 lt!2217801 (t!375253 s!2326)))))))

(declare-fun b!5437015 () Bool)

(declare-fun res!2314633 () Bool)

(assert (=> b!5437015 (=> res!2314633 e!3368478)))

(declare-fun isEmpty!33899 (List!62029) Bool)

(assert (=> b!5437015 (= res!2314633 (isEmpty!33899 (t!375254 (exprs!5127 (h!68354 zl!343)))))))

(declare-fun bm!389840 () Bool)

(assert (=> bm!389840 (= call!389866 call!389882)))

(declare-fun b!5437016 () Bool)

(assert (=> b!5437016 (= e!3368458 false)))

(declare-fun bm!389841 () Bool)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!240 (Regex!15243 Regex!15243 List!62028 List!62028) Unit!154507)

(assert (=> bm!389841 (= call!389860 (lemmaTwoRegexMatchThenConcatMatchesConcatString!240 (reg!15572 (regOne!30998 r!7292)) lt!2217790 (ite c!948733 (_1!35745 lt!2217843) (_1!35745 lt!2217864)) (ite c!948733 lt!2217844 (_2!35745 lt!2217864))))))

(declare-fun lt!2217797 () List!62028)

(declare-fun bm!389842 () Bool)

(assert (=> bm!389842 (= call!389824 (++!13617 (ite c!948733 (_1!35745 lt!2217843) (ite c!948734 (_1!35745 lt!2217886) Nil!61904)) (ite c!948733 lt!2217844 (ite c!948734 lt!2217797 s!2326))))))

(declare-fun b!5437017 () Bool)

(declare-fun e!3368465 () Bool)

(assert (=> b!5437017 (= e!3368465 (nullable!5412 (regOne!30998 (regOne!30998 r!7292))))))

(declare-fun b!5437018 () Bool)

(declare-fun Unit!154516 () Unit!154507)

(assert (=> b!5437018 (= e!3368476 Unit!154516)))

(declare-fun lt!2217785 () Unit!154507)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!480 ((InoxSet Context!9254) (InoxSet Context!9254) List!62028) Unit!154507)

(assert (=> b!5437018 (= lt!2217785 (lemmaZipperConcatMatchesSameAsBothZippers!480 lt!2217851 lt!2217806 (t!375253 s!2326)))))

(declare-fun res!2314618 () Bool)

(assert (=> b!5437018 (= res!2314618 (matchZipper!1487 lt!2217851 (t!375253 s!2326)))))

(declare-fun e!3368470 () Bool)

(assert (=> b!5437018 (=> res!2314618 e!3368470)))

(assert (=> b!5437018 (= (matchZipper!1487 ((_ map or) lt!2217851 lt!2217806) (t!375253 s!2326)) e!3368470)))

(declare-fun b!5437019 () Bool)

(declare-fun res!2314624 () Bool)

(assert (=> b!5437019 (=> res!2314624 e!3368467)))

(assert (=> b!5437019 (= res!2314624 e!3368465)))

(declare-fun res!2314634 () Bool)

(assert (=> b!5437019 (=> (not res!2314634) (not e!3368465))))

(assert (=> b!5437019 (= res!2314634 ((_ is Concat!24088) (regOne!30998 r!7292)))))

(declare-fun bm!389843 () Bool)

(assert (=> bm!389843 (= call!389878 call!389834)))

(declare-fun bm!389844 () Bool)

(assert (=> bm!389844 (= call!389843 call!389881)))

(declare-fun bm!389845 () Bool)

(declare-fun call!389886 () Unit!154507)

(assert (=> bm!389845 (= call!389871 call!389886)))

(declare-fun lt!2217804 () Option!15354)

(declare-fun bm!389846 () Bool)

(assert (=> bm!389846 (= call!389865 (isDefined!12057 (ite c!948733 lt!2217800 lt!2217804)))))

(declare-fun lt!2217822 () List!62028)

(declare-fun bm!389847 () Bool)

(assert (=> bm!389847 (= call!389844 (lemmaTwoRegexMatchThenConcatMatchesConcatString!240 lt!2217869 (regTwo!30998 r!7292) (ite c!948733 (_2!35745 lt!2217843) (ite c!948734 lt!2217822 Nil!61904)) (ite c!948733 (_2!35745 lt!2217871) (ite c!948734 (_2!35745 lt!2217816) s!2326))))))

(declare-fun b!5437020 () Bool)

(declare-fun res!2314617 () Bool)

(assert (=> b!5437020 (=> res!2314617 e!3368457)))

(assert (=> b!5437020 (= res!2314617 (not ((_ is Cons!61905) (exprs!5127 (h!68354 zl!343)))))))

(declare-fun bm!389848 () Bool)

(assert (=> bm!389848 (= call!389839 (findConcatSeparation!1768 (ite c!948733 lt!2217869 lt!2217826) (regTwo!30998 r!7292) Nil!61904 s!2326 s!2326))))

(declare-fun b!5437021 () Bool)

(declare-fun e!3368475 () Bool)

(assert (=> b!5437021 (= e!3368475 e!3368481)))

(declare-fun res!2314613 () Bool)

(assert (=> b!5437021 (=> (not res!2314613) (not e!3368481))))

(declare-fun lt!2217883 () Regex!15243)

(assert (=> b!5437021 (= res!2314613 (= r!7292 lt!2217883))))

(assert (=> b!5437021 (= lt!2217883 (unfocusZipper!985 zl!343))))

(declare-fun b!5437022 () Bool)

(declare-fun res!2314621 () Bool)

(assert (=> b!5437022 (=> res!2314621 e!3368457)))

(assert (=> b!5437022 (= res!2314621 (or ((_ is EmptyExpr!15243) r!7292) ((_ is EmptyLang!15243) r!7292) ((_ is ElementMatch!15243) r!7292) ((_ is Union!15243) r!7292) (not ((_ is Concat!24088) r!7292))))))

(declare-fun bm!389849 () Bool)

(assert (=> bm!389849 (= call!389828 call!389872)))

(declare-fun setIsEmpty!35505 () Bool)

(declare-fun setRes!35505 () Bool)

(assert (=> setIsEmpty!35505 setRes!35505))

(declare-fun bm!389850 () Bool)

(assert (=> bm!389850 (= call!389880 call!389884)))

(declare-fun bm!389851 () Bool)

(assert (=> bm!389851 (= call!389848 call!389886)))

(declare-fun bm!389852 () Bool)

(assert (=> bm!389852 (= call!389853 call!389876)))

(declare-fun bm!389853 () Bool)

(assert (=> bm!389853 (= call!389877 call!389824)))

(declare-fun bm!389854 () Bool)

(declare-fun lt!2217783 () List!62028)

(assert (=> bm!389854 (= call!389840 (matchR!7428 (ite c!948733 lt!2217869 lt!2217885) (ite c!948733 (_1!35745 lt!2217871) lt!2217783)))))

(declare-fun b!5437023 () Bool)

(assert (=> b!5437023 (= e!3368470 (matchZipper!1487 lt!2217806 (t!375253 s!2326)))))

(declare-fun b!5437024 () Bool)

(assert (=> b!5437024 (= e!3368456 lt!2217858)))

(declare-fun bm!389855 () Bool)

(assert (=> bm!389855 (= call!389823 call!389826)))

(declare-fun bm!389856 () Bool)

(declare-fun call!389849 () List!62029)

(declare-fun ++!13618 (List!62029 List!62029) List!62029)

(assert (=> bm!389856 (= call!389849 (++!13618 lt!2217874 lt!2217803))))

(declare-fun bm!389857 () Bool)

(assert (=> bm!389857 (= call!389868 (matchZipper!1487 (ite c!948733 z!1189 lt!2217792) (ite c!948733 s!2326 (_1!35745 lt!2217864))))))

(declare-fun bm!389858 () Bool)

(assert (=> bm!389858 (= call!389876 (lemmaFindConcatSeparationEquivalentToExists!1532 (ite c!948733 (reg!15572 (regOne!30998 r!7292)) (ite c!948734 lt!2217826 (reg!15572 (regOne!30998 r!7292)))) (ite c!948733 lt!2217869 (ite c!948734 (regTwo!30998 r!7292) lt!2217869)) (ite c!948733 (_1!35745 lt!2217871) (ite c!948734 s!2326 Nil!61904))))))

(declare-fun bm!389859 () Bool)

(declare-fun lemmaStarApp!68 (Regex!15243 List!62028 List!62028) Unit!154507)

(assert (=> bm!389859 (= call!389850 (lemmaStarApp!68 (reg!15572 (regOne!30998 r!7292)) (ite c!948733 (_1!35745 lt!2217843) (_1!35745 lt!2217886)) (ite c!948733 (_2!35745 lt!2217843) (_2!35745 lt!2217886))))))

(declare-fun bm!389860 () Bool)

(assert (=> bm!389860 (= call!389835 (matchZipper!1487 (ite c!948733 (ite c!948731 lt!2217849 lt!2217848) z!1189) (ite c!948733 (ite c!948731 s!2326 lt!2217844) s!2326)))))

(declare-fun bm!389861 () Bool)

(assert (=> bm!389861 (= call!389841 (matchR!7428 (ite c!948733 lt!2217869 lt!2217790) (ite c!948733 lt!2217788 (_2!35745 lt!2217864))))))

(declare-fun bm!389862 () Bool)

(assert (=> bm!389862 (= call!389834 (Exists!2424 (ite c!948733 lambda!285922 (ite c!948734 lambda!285926 lambda!285931))))))

(declare-fun bm!389863 () Bool)

(declare-fun lt!2217846 () Regex!15243)

(assert (=> bm!389863 (= call!389859 (matchR!7428 (ite c!948734 lt!2217846 lt!2217796) s!2326))))

(declare-fun bm!389864 () Bool)

(assert (=> bm!389864 (= call!389854 (mainMatchTheorem!2346 (ite c!948734 lt!2217846 lt!2217869) (ite c!948734 s!2326 Nil!61904)))))

(declare-fun b!5437025 () Bool)

(declare-fun e!3368479 () Bool)

(assert (=> b!5437025 (= e!3368482 e!3368479)))

(declare-fun res!2314632 () Bool)

(assert (=> b!5437025 (=> res!2314632 e!3368479)))

(assert (=> b!5437025 (= res!2314632 (not (= (unfocusZipper!985 lt!2217793) lt!2217790)))))

(assert (=> b!5437025 (= lt!2217793 (Cons!61906 lt!2217867 Nil!61906))))

(declare-fun bm!389865 () Bool)

(declare-fun lemmaConcatPreservesForall!240 (List!62029 List!62029 Int) Unit!154507)

(assert (=> bm!389865 (= call!389862 (lemmaConcatPreservesForall!240 lt!2217874 lt!2217803 (ite c!948733 lambda!285923 lambda!285925)))))

(declare-fun bm!389866 () Bool)

(assert (=> bm!389866 (= call!389882 (matchR!7428 (ite (or c!948733 c!948734) (reg!15572 (regOne!30998 r!7292)) lt!2217869) (ite c!948733 (_1!35745 lt!2217843) (ite c!948734 (_1!35745 lt!2217864) Nil!61904))))))

(declare-fun b!5437026 () Bool)

(declare-fun e!3368461 () Bool)

(declare-fun tp!1499188 () Bool)

(declare-fun inv!81354 (Context!9254) Bool)

(assert (=> b!5437026 (= e!3368461 (and (inv!81354 (h!68354 zl!343)) e!3368474 tp!1499188))))

(declare-fun b!5437027 () Bool)

(declare-fun res!2314612 () Bool)

(assert (=> b!5437027 (=> res!2314612 e!3368459)))

(assert (=> b!5437027 (= res!2314612 (not (= lt!2217883 r!7292)))))

(declare-fun bm!389867 () Bool)

(assert (=> bm!389867 (= call!389863 (++!13617 (ite c!948733 (_2!35745 lt!2217843) (_1!35745 lt!2217886)) (ite c!948733 (_2!35745 lt!2217871) (_2!35745 lt!2217886))))))

(declare-fun b!5437028 () Bool)

(declare-fun e!3368466 () Bool)

(assert (=> b!5437028 (= e!3368466 (or (not lt!2217832) lt!2217872))))

(declare-fun bm!389868 () Bool)

(assert (=> bm!389868 (= call!389838 (matchZipper!1487 (ite c!948733 lt!2217792 lt!2217851) (ite c!948733 (_1!35745 lt!2217843) (t!375253 s!2326))))))

(declare-fun bm!389869 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1078 (Regex!15243 Regex!15243 List!62028) Unit!154507)

(assert (=> bm!389869 (= call!389873 (lemmaExistCutMatchRandMatchRSpecEquivalent!1078 (ite c!948733 lt!2217869 lt!2217826) (regTwo!30998 r!7292) s!2326))))

(declare-fun bm!389870 () Bool)

(assert (=> bm!389870 (= call!389820 (++!13617 (ite c!948733 (_1!35745 lt!2217843) lt!2217822) (ite c!948733 (_2!35745 lt!2217843) (_2!35745 lt!2217816))))))

(declare-fun bm!389871 () Bool)

(assert (=> bm!389871 (= call!389825 (lemmaExistCutMatchRandMatchRSpecEquivalent!1078 (reg!15572 (regOne!30998 r!7292)) lt!2217869 (ite c!948733 (_1!35745 lt!2217871) (ite c!948734 (_1!35745 lt!2217816) Nil!61904))))))

(declare-fun bm!389872 () Bool)

(assert (=> bm!389872 (= call!389886 (theoremZipperRegexEquiv!547 (ite c!948733 (ite c!948731 lt!2217849 lt!2217792) (ite c!948734 lt!2217792 lt!2217784)) (ite c!948733 (ite c!948731 (Cons!61906 lt!2217818 Nil!61906) lt!2217838) (ite c!948734 lt!2217838 (Cons!61906 lt!2217818 Nil!61906))) (ite c!948733 (ite c!948731 lt!2217862 (reg!15572 (regOne!30998 r!7292))) (ite c!948734 (reg!15572 (regOne!30998 r!7292)) lt!2217796)) (ite c!948733 (ite c!948731 s!2326 (_1!35745 lt!2217843)) (ite c!948734 (_1!35745 lt!2217864) s!2326))))))

(declare-fun bm!389873 () Bool)

(assert (=> bm!389873 (= call!389879 call!389832)))

(declare-fun lt!2217819 () List!62029)

(declare-fun bm!389874 () Bool)

(assert (=> bm!389874 (= call!389855 (matchZipper!1487 (ite c!948733 (store ((as const (Array Context!9254 Bool)) false) (Context!9255 call!389849) true) (store ((as const (Array Context!9254 Bool)) false) (Context!9255 lt!2217819) true)) (ite c!948733 lt!2217882 lt!2217783)))))

(declare-fun lt!2217787 () List!62028)

(declare-fun bm!389875 () Bool)

(assert (=> bm!389875 (= call!389890 (matchR!7428 lt!2217790 (ite c!948733 lt!2217844 lt!2217787)))))

(declare-fun bm!389876 () Bool)

(assert (=> bm!389876 (= call!389874 call!389870)))

(declare-fun bm!389877 () Bool)

(assert (=> bm!389877 (= call!389832 (Exists!2424 (ite c!948733 lambda!285918 (ite c!948734 lambda!285929 lambda!285931))))))

(declare-fun bm!389878 () Bool)

(assert (=> bm!389878 (= call!389875 (generalisedConcat!912 (t!375254 (exprs!5127 (h!68354 zl!343)))))))

(assert (=> b!5437029 (= e!3368457 e!3368478)))

(declare-fun res!2314620 () Bool)

(assert (=> b!5437029 (=> res!2314620 e!3368478)))

(declare-fun lt!2217850 () Bool)

(assert (=> b!5437029 (= res!2314620 (or (not (= lt!2217832 lt!2217850)) ((_ is Nil!61904) s!2326)))))

(assert (=> b!5437029 (= (Exists!2424 lambda!285915) (Exists!2424 lambda!285916))))

(declare-fun lt!2217884 () Unit!154507)

(assert (=> b!5437029 (= lt!2217884 (lemmaExistCutMatchRandMatchRSpecEquivalent!1078 (regOne!30998 r!7292) (regTwo!30998 r!7292) s!2326))))

(assert (=> b!5437029 (= lt!2217850 (Exists!2424 lambda!285915))))

(assert (=> b!5437029 (= lt!2217850 (isDefined!12057 (findConcatSeparation!1768 (regOne!30998 r!7292) (regTwo!30998 r!7292) Nil!61904 s!2326 s!2326)))))

(declare-fun lt!2217835 () Unit!154507)

(assert (=> b!5437029 (= lt!2217835 (lemmaFindConcatSeparationEquivalentToExists!1532 (regOne!30998 r!7292) (regTwo!30998 r!7292) s!2326))))

(declare-fun bm!389879 () Bool)

(assert (=> bm!389879 (= call!389845 (Exists!2424 (ite c!948733 lambda!285920 lambda!285927)))))

(declare-fun b!5437030 () Bool)

(declare-fun res!2314619 () Bool)

(assert (=> b!5437030 (=> (not res!2314619) (not e!3368475))))

(declare-fun toList!9027 ((InoxSet Context!9254)) List!62030)

(assert (=> b!5437030 (= res!2314619 (= (toList!9027 z!1189) zl!343))))

(declare-fun b!5437031 () Bool)

(assert (=> b!5437031 (= e!3368464 tp_is_empty!39739)))

(declare-fun b!5437032 () Bool)

(assert (=> b!5437032 (= e!3368479 true)))

(declare-fun lt!2217847 () Unit!154507)

(assert (=> b!5437032 (= lt!2217847 e!3368454)))

(assert (=> b!5437032 (= c!948733 lt!2217832)))

(assert (=> b!5437032 e!3368466))

(declare-fun res!2314625 () Bool)

(assert (=> b!5437032 (=> (not res!2314625) (not e!3368466))))

(assert (=> b!5437032 (= res!2314625 (= lt!2217858 (matchRSpec!2346 lt!2217885 s!2326)))))

(assert (=> b!5437032 (= lt!2217858 (matchR!7428 lt!2217885 s!2326))))

(declare-fun lt!2217881 () Unit!154507)

(assert (=> b!5437032 (= lt!2217881 (mainMatchTheorem!2346 lt!2217885 s!2326))))

(declare-fun bm!389880 () Bool)

(assert (=> bm!389880 (= call!389836 call!389825)))

(declare-fun b!5437033 () Bool)

(declare-fun res!2314635 () Bool)

(assert (=> b!5437033 (=> res!2314635 e!3368467)))

(assert (=> b!5437033 (= res!2314635 (or ((_ is Concat!24088) (regOne!30998 r!7292)) (not ((_ is Star!15243) (regOne!30998 r!7292)))))))

(declare-fun b!5437034 () Bool)

(declare-fun tp!1499190 () Bool)

(declare-fun tp!1499186 () Bool)

(assert (=> b!5437034 (= e!3368464 (and tp!1499190 tp!1499186))))

(declare-fun Unit!154517 () Unit!154507)

(assert (=> b!5437035 (= e!3368455 Unit!154517)))

(declare-fun lt!2217866 () Unit!154507)

(declare-fun lambda!285924 () Int)

(declare-fun lemmaMapOnSingletonSet!74 ((InoxSet Context!9254) Context!9254 Int) Unit!154507)

(assert (=> b!5437035 (= lt!2217866 (lemmaMapOnSingletonSet!74 lt!2217792 lt!2217817 lambda!285924))))

(declare-fun lt!2217880 () Unit!154507)

(assert (=> b!5437035 (= lt!2217880 call!389833)))

(declare-fun map!14221 ((InoxSet Context!9254) Int) (InoxSet Context!9254))

(assert (=> b!5437035 (= (map!14221 lt!2217792 lambda!285924) (store ((as const (Array Context!9254 Bool)) false) (Context!9255 call!389849) true))))

(declare-fun lt!2217808 () Unit!154507)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!72 ((InoxSet Context!9254) Context!9254 List!62028) Unit!154507)

(assert (=> b!5437035 (= lt!2217808 (lemmaConcatZipperMatchesStringThenFindConcatDefined!72 lt!2217792 lt!2217867 s!2326))))

(declare-fun findConcatSeparationZippers!72 ((InoxSet Context!9254) (InoxSet Context!9254) List!62028 List!62028 List!62028) Option!15354)

(assert (=> b!5437035 (= lt!2217839 (findConcatSeparationZippers!72 lt!2217792 lt!2217848 Nil!61904 s!2326 s!2326))))

(assert (=> b!5437035 call!389874))

(assert (=> b!5437035 (= lt!2217864 (get!21351 lt!2217839))))

(declare-fun lt!2217859 () Unit!154507)

(assert (=> b!5437035 (= lt!2217859 call!389869)))

(declare-fun lt!2217865 () Unit!154507)

(assert (=> b!5437035 (= lt!2217865 call!389862)))

(assert (=> b!5437035 (= lt!2217819 call!389849)))

(assert (=> b!5437035 (= lt!2217783 (++!13617 (_1!35745 lt!2217864) (_2!35745 lt!2217864)))))

(assert (=> b!5437035 call!389855))

(declare-fun lt!2217875 () Unit!154507)

(assert (=> b!5437035 (= lt!2217875 call!389871)))

(assert (=> b!5437035 (= call!389866 call!389868)))

(declare-fun lt!2217879 () Unit!154507)

(assert (=> b!5437035 (= lt!2217879 call!389867)))

(assert (=> b!5437035 (= call!389841 call!389889)))

(declare-fun lt!2217840 () Unit!154507)

(assert (=> b!5437035 (= lt!2217840 call!389860)))

(declare-fun res!2314638 () Bool)

(assert (=> b!5437035 (= res!2314638 call!389840)))

(assert (=> b!5437035 (=> (not res!2314638) (not e!3368471))))

(assert (=> b!5437035 e!3368471))

(declare-fun lt!2217813 () Unit!154507)

(declare-fun lemmaConcatAssociative!68 (Regex!15243 Regex!15243 Regex!15243 List!62028) Unit!154507)

(assert (=> b!5437035 (= lt!2217813 (lemmaConcatAssociative!68 (reg!15572 (regOne!30998 r!7292)) lt!2217869 (regTwo!30998 r!7292) s!2326))))

(assert (=> b!5437035 (= lt!2217826 (Concat!24088 (reg!15572 (regOne!30998 r!7292)) lt!2217869))))

(assert (=> b!5437035 (= lt!2217846 (Concat!24088 lt!2217826 (regTwo!30998 r!7292)))))

(assert (=> b!5437035 call!389859))

(declare-fun lt!2217791 () Unit!154507)

(assert (=> b!5437035 (= lt!2217791 call!389854)))

(assert (=> b!5437035 call!389843))

(declare-fun lt!2217854 () Unit!154507)

(assert (=> b!5437035 (= lt!2217854 call!389853)))

(assert (=> b!5437035 (= lt!2217857 call!389839)))

(assert (=> b!5437035 (= (isDefined!12057 lt!2217857) call!389846)))

(declare-fun lt!2217876 () Unit!154507)

(assert (=> b!5437035 (= lt!2217876 call!389873)))

(assert (=> b!5437035 (= call!389878 call!389845)))

(assert (=> b!5437035 (= lt!2217816 call!389851)))

(declare-fun lt!2217861 () Unit!154507)

(assert (=> b!5437035 (= lt!2217861 call!389858)))

(assert (=> b!5437035 (= call!389822 (matchRSpec!2346 lt!2217826 (_1!35745 lt!2217816)))))

(declare-fun lt!2217829 () Unit!154507)

(assert (=> b!5437035 (= lt!2217829 call!389827)))

(assert (=> b!5437035 (= lt!2217804 call!389883)))

(assert (=> b!5437035 (= call!389865 call!389864)))

(declare-fun lt!2217824 () Unit!154507)

(assert (=> b!5437035 (= lt!2217824 call!389836)))

(assert (=> b!5437035 (= call!389828 call!389879)))

(declare-fun lt!2217812 () Unit!154507)

(assert (=> b!5437035 (= lt!2217812 call!389888)))

(assert (=> b!5437035 (= call!389880 call!389831)))

(assert (=> b!5437035 (= lt!2217886 call!389887)))

(declare-fun lt!2217834 () Unit!154507)

(assert (=> b!5437035 (= lt!2217834 call!389856)))

(assert (=> b!5437035 (= lt!2217822 call!389863)))

(assert (=> b!5437035 (= lt!2217797 call!389847)))

(assert (=> b!5437035 (= lt!2217787 call!389820)))

(assert (=> b!5437035 (= lt!2217787 call!389877)))

(declare-fun lt!2217887 () Unit!154507)

(assert (=> b!5437035 (= lt!2217887 call!389850)))

(assert (=> b!5437035 (matchR!7428 lt!2217869 lt!2217822)))

(declare-fun lt!2217830 () Unit!154507)

(assert (=> b!5437035 (= lt!2217830 call!389852)))

(declare-fun res!2314636 () Bool)

(assert (=> b!5437035 (= res!2314636 call!389890)))

(assert (=> b!5437035 (=> (not res!2314636) (not e!3368463))))

(assert (=> b!5437035 e!3368463))

(declare-fun res!2314629 () Bool)

(assert (=> start!570270 (=> (not res!2314629) (not e!3368475))))

(declare-fun validRegex!6979 (Regex!15243) Bool)

(assert (=> start!570270 (= res!2314629 (validRegex!6979 r!7292))))

(assert (=> start!570270 e!3368475))

(assert (=> start!570270 e!3368464))

(declare-fun condSetEmpty!35505 () Bool)

(assert (=> start!570270 (= condSetEmpty!35505 (= z!1189 ((as const (Array Context!9254 Bool)) false)))))

(assert (=> start!570270 setRes!35505))

(assert (=> start!570270 e!3368461))

(assert (=> start!570270 e!3368469))

(declare-fun setElem!35505 () Context!9254)

(declare-fun tp!1499184 () Bool)

(declare-fun setNonEmpty!35505 () Bool)

(assert (=> setNonEmpty!35505 (= setRes!35505 (and tp!1499184 (inv!81354 setElem!35505) e!3368477))))

(declare-fun setRest!35505 () (InoxSet Context!9254))

(assert (=> setNonEmpty!35505 (= z!1189 ((_ map or) (store ((as const (Array Context!9254 Bool)) false) setElem!35505 true) setRest!35505))))

(declare-fun bm!389881 () Bool)

(assert (=> bm!389881 (= call!389881 (matchRSpec!2346 (ite c!948733 lt!2217869 (ite c!948734 lt!2217846 lt!2217869)) (ite c!948733 (_1!35745 lt!2217871) (ite c!948734 s!2326 Nil!61904))))))

(declare-fun bm!389882 () Bool)

(assert (=> bm!389882 (= call!389887 (get!21351 (ite c!948733 lt!2217800 lt!2217804)))))

(declare-fun b!5437036 () Bool)

(declare-fun tp!1499193 () Bool)

(assert (=> b!5437036 (= e!3368464 tp!1499193)))

(declare-fun bm!389883 () Bool)

(assert (=> bm!389883 (= call!389830 (flatMap!970 (ite c!948733 lt!2217849 lt!2217784) (ite c!948733 lambda!285917 lambda!285917)))))

(declare-fun bm!389884 () Bool)

(assert (=> bm!389884 (= call!389884 (Exists!2424 (ite c!948733 lambda!285918 (ite c!948734 lambda!285928 lambda!285931))))))

(declare-fun bm!389885 () Bool)

(assert (=> bm!389885 (= call!389833 (lemmaConcatPreservesForall!240 lt!2217874 lt!2217803 (ite c!948733 lambda!285923 lambda!285925)))))

(declare-fun b!5437037 () Bool)

(assert (=> b!5437037 (= e!3368467 e!3368472)))

(declare-fun res!2314641 () Bool)

(assert (=> b!5437037 (=> res!2314641 e!3368472)))

(assert (=> b!5437037 (= res!2314641 (not (= lt!2217851 lt!2217814)))))

(assert (=> b!5437037 (= lt!2217814 (derivationStepZipperDown!691 (reg!15572 (regOne!30998 r!7292)) lt!2217867 (h!68352 s!2326)))))

(assert (=> b!5437037 (= lt!2217867 (Context!9255 lt!2217803))))

(assert (=> b!5437037 (= lt!2217803 (Cons!61905 lt!2217869 (t!375254 (exprs!5127 (h!68354 zl!343)))))))

(assert (=> b!5437037 (= lt!2217869 (Star!15243 (reg!15572 (regOne!30998 r!7292))))))

(assert (= (and start!570270 res!2314629) b!5437030))

(assert (= (and b!5437030 res!2314619) b!5437021))

(assert (= (and b!5437021 res!2314613) b!5436992))

(assert (= (and b!5436992 (not res!2314622)) b!5436997))

(assert (= (and b!5436997 (not res!2314630)) b!5436994))

(assert (= (and b!5436994 (not res!2314614)) b!5437020))

(assert (= (and b!5437020 (not res!2314617)) b!5436998))

(assert (= (and b!5436998 (not res!2314640)) b!5437022))

(assert (= (and b!5437022 (not res!2314621)) b!5437029))

(assert (= (and b!5437029 (not res!2314620)) b!5437015))

(assert (= (and b!5437015 (not res!2314633)) b!5437008))

(assert (= (and b!5437008 c!948732) b!5437018))

(assert (= (and b!5437008 (not c!948732)) b!5436993))

(assert (= (and b!5437018 (not res!2314618)) b!5437023))

(assert (= (and b!5437008 (not res!2314616)) b!5437019))

(assert (= (and b!5437019 res!2314634) b!5437017))

(assert (= (and b!5437019 (not res!2314624)) b!5437033))

(assert (= (and b!5437033 (not res!2314635)) b!5437037))

(assert (= (and b!5437037 (not res!2314641)) b!5437007))

(assert (= (and b!5437007 (not res!2314628)) b!5437014))

(assert (= (and b!5437014 (not res!2314627)) b!5437027))

(assert (= (and b!5437027 (not res!2314612)) b!5436991))

(assert (= (and b!5436991 (not res!2314631)) b!5436996))

(assert (= (and b!5436996 (not res!2314639)) b!5436990))

(assert (= (and b!5436990 (not res!2314623)) b!5437025))

(assert (= (and b!5437025 (not res!2314632)) b!5437032))

(assert (= (and b!5437032 res!2314625) b!5437028))

(assert (= (and b!5437032 c!948733) b!5437006))

(assert (= (and b!5437032 (not c!948733)) b!5437010))

(assert (= (and b!5437006 c!948731) b!5437001))

(assert (= (and b!5437006 (not c!948731)) b!5437004))

(assert (= (and b!5437001 res!2314615) b!5437009))

(assert (= (and b!5437004 res!2314626) b!5437024))

(assert (= (or b!5437001 b!5437004) bm!389855))

(assert (= (or b!5437001 b!5437004) bm!389851))

(assert (= (or b!5437009 b!5437004) bm!389830))

(assert (= (or b!5437001 b!5437004) bm!389833))

(assert (= (and b!5437010 c!948730) b!5437005))

(assert (= (and b!5437010 (not c!948730)) b!5437011))

(assert (= (and b!5437005 c!948734) b!5437035))

(assert (= (and b!5437005 (not c!948734)) b!5437000))

(assert (= (and b!5437035 res!2314638) b!5437002))

(assert (= (and b!5437035 res!2314636) b!5437003))

(assert (= (and b!5437000 res!2314637) b!5437016))

(assert (= (or b!5437035 b!5437000) bm!389849))

(assert (= (or b!5437035 b!5437000) bm!389850))

(assert (= (or b!5437035 b!5437000) bm!389880))

(assert (= (or b!5437035 b!5437000) bm!389864))

(assert (= (or b!5437035 b!5437000) bm!389837))

(assert (= (or b!5437035 b!5437000) bm!389863))

(assert (= (or b!5437035 b!5437000) bm!389825))

(assert (= (or b!5437035 b!5437000) bm!389853))

(assert (= (or b!5437035 b!5437000) bm!389844))

(assert (= (or b!5437035 b!5437000) bm!389873))

(assert (= (or b!5437035 b!5437000) bm!389845))

(assert (= (or b!5437035 b!5437000) bm!389852))

(assert (= (or b!5437035 b!5437000) bm!389823))

(assert (= (or b!5437035 b!5437000) bm!389840))

(assert (= (or b!5437035 b!5437000) bm!389818))

(assert (= (or b!5437035 b!5437000) bm!389843))

(assert (= (or b!5437035 b!5437000) bm!389822))

(assert (= (or b!5437035 b!5437000) bm!389876))

(assert (= (or b!5437035 b!5437000) bm!389836))

(assert (= (or b!5437004 b!5437035) bm!389865))

(assert (= (or b!5437004 b!5437035) bm!389870))

(assert (= (or b!5437004 bm!389849) bm!389835))

(assert (= (or b!5437001 b!5437000) bm!389819))

(assert (= (or b!5437006 b!5437035) bm!389846))

(assert (= (or b!5437004 b!5437035) bm!389859))

(assert (= (or b!5437004 b!5437035) bm!389841))

(assert (= (or b!5437004 b!5437035) bm!389832))

(assert (= (or b!5437004 b!5437035) bm!389875))

(assert (= (or b!5437006 b!5437035) bm!389838))

(assert (= (or bm!389855 bm!389836) bm!389829))

(assert (= (or b!5437006 bm!389850) bm!389884))

(assert (= (or b!5437004 b!5437035) bm!389885))

(assert (= (or b!5437001 b!5437000) bm!389839))

(assert (= (or b!5437004 b!5437035) bm!389816))

(assert (= (or b!5437001 b!5437000) bm!389878))

(assert (= (or b!5437004 bm!389852) bm!389858))

(assert (= (or b!5437004 b!5437035) bm!389861))

(assert (= (or b!5437004 b!5437035) bm!389824))

(assert (= (or b!5437004 b!5437035) bm!389856))

(assert (= (or b!5437004 b!5437035) bm!389854))

(assert (= (or b!5437004 bm!389818) bm!389831))

(assert (= (or b!5437004 bm!389880) bm!389871))

(assert (= (or b!5437006 b!5437035) bm!389882))

(assert (= (or b!5437004 b!5437035) bm!389879))

(assert (= (or b!5437006 b!5437035) bm!389848))

(assert (= (or b!5437006 b!5437035) bm!389820))

(assert (= (or bm!389833 b!5437010) bm!389860))

(assert (= (or b!5437006 bm!389830 b!5437035) bm!389857))

(assert (= (or b!5437001 b!5437000) bm!389883))

(assert (= (or b!5437004 bm!389837) bm!389847))

(assert (= (or b!5437004 bm!389844) bm!389881))

(assert (= (or b!5437004 bm!389822) bm!389817))

(assert (= (or bm!389851 bm!389845) bm!389872))

(assert (= (or b!5437006 b!5437035) bm!389869))

(assert (= (or b!5437004 b!5437035) bm!389828))

(assert (= (or b!5437004 bm!389853) bm!389842))

(assert (= (or b!5437006 bm!389873) bm!389877))

(assert (= (or b!5437004 b!5437035) bm!389821))

(assert (= (or b!5437004 bm!389840) bm!389866))

(assert (= (or b!5437004 b!5437005) bm!389868))

(assert (= (or b!5437004 bm!389876) bm!389827))

(assert (= (or b!5437004 b!5437035) bm!389834))

(assert (= (or b!5437004 b!5437035) bm!389867))

(assert (= (or b!5437004 bm!389825) bm!389826))

(assert (= (or b!5437004 bm!389843) bm!389862))

(assert (= (or b!5437004 b!5437035) bm!389815))

(assert (= (or b!5437004 b!5437035) bm!389874))

(assert (= (and start!570270 ((_ is ElementMatch!15243) r!7292)) b!5437031))

(assert (= (and start!570270 ((_ is Concat!24088) r!7292)) b!5437034))

(assert (= (and start!570270 ((_ is Star!15243) r!7292)) b!5437036))

(assert (= (and start!570270 ((_ is Union!15243) r!7292)) b!5436995))

(assert (= (and start!570270 condSetEmpty!35505) setIsEmpty!35505))

(assert (= (and start!570270 (not condSetEmpty!35505)) setNonEmpty!35505))

(assert (= setNonEmpty!35505 b!5437012))

(assert (= b!5437026 b!5437013))

(assert (= (and start!570270 ((_ is Cons!61906) zl!343)) b!5437026))

(assert (= (and start!570270 ((_ is Cons!61904) s!2326)) b!5436999))

(declare-fun m!6458916 () Bool)

(assert (=> bm!389863 m!6458916))

(declare-fun m!6458918 () Bool)

(assert (=> bm!389874 m!6458918))

(declare-fun m!6458920 () Bool)

(assert (=> bm!389874 m!6458920))

(declare-fun m!6458922 () Bool)

(assert (=> bm!389874 m!6458922))

(declare-fun m!6458924 () Bool)

(assert (=> b!5437001 m!6458924))

(declare-fun m!6458926 () Bool)

(assert (=> bm!389839 m!6458926))

(declare-fun m!6458928 () Bool)

(assert (=> bm!389816 m!6458928))

(declare-fun m!6458930 () Bool)

(assert (=> bm!389842 m!6458930))

(declare-fun m!6458932 () Bool)

(assert (=> bm!389871 m!6458932))

(declare-fun m!6458934 () Bool)

(assert (=> b!5437017 m!6458934))

(declare-fun m!6458936 () Bool)

(assert (=> b!5437025 m!6458936))

(declare-fun m!6458938 () Bool)

(assert (=> bm!389829 m!6458938))

(declare-fun m!6458940 () Bool)

(assert (=> bm!389834 m!6458940))

(declare-fun m!6458942 () Bool)

(assert (=> b!5436990 m!6458942))

(declare-fun m!6458944 () Bool)

(assert (=> b!5436990 m!6458944))

(declare-fun m!6458946 () Bool)

(assert (=> b!5436990 m!6458946))

(declare-fun m!6458948 () Bool)

(assert (=> b!5436990 m!6458948))

(declare-fun m!6458950 () Bool)

(assert (=> b!5436990 m!6458950))

(declare-fun m!6458952 () Bool)

(assert (=> b!5436990 m!6458952))

(declare-fun m!6458954 () Bool)

(assert (=> b!5436990 m!6458954))

(declare-fun m!6458956 () Bool)

(assert (=> b!5436990 m!6458956))

(declare-fun m!6458958 () Bool)

(assert (=> b!5436990 m!6458958))

(declare-fun m!6458960 () Bool)

(assert (=> bm!389848 m!6458960))

(declare-fun m!6458962 () Bool)

(assert (=> b!5436998 m!6458962))

(assert (=> b!5436998 m!6458962))

(declare-fun m!6458964 () Bool)

(assert (=> b!5436998 m!6458964))

(declare-fun m!6458966 () Bool)

(assert (=> bm!389861 m!6458966))

(declare-fun m!6458968 () Bool)

(assert (=> bm!389858 m!6458968))

(declare-fun m!6458970 () Bool)

(assert (=> setNonEmpty!35505 m!6458970))

(declare-fun m!6458972 () Bool)

(assert (=> bm!389868 m!6458972))

(declare-fun m!6458974 () Bool)

(assert (=> start!570270 m!6458974))

(declare-fun m!6458976 () Bool)

(assert (=> bm!389831 m!6458976))

(declare-fun m!6458978 () Bool)

(assert (=> bm!389862 m!6458978))

(declare-fun m!6458980 () Bool)

(assert (=> bm!389878 m!6458980))

(declare-fun m!6458982 () Bool)

(assert (=> b!5437023 m!6458982))

(declare-fun m!6458984 () Bool)

(assert (=> bm!389854 m!6458984))

(declare-fun m!6458986 () Bool)

(assert (=> bm!389879 m!6458986))

(declare-fun m!6458988 () Bool)

(assert (=> bm!389859 m!6458988))

(declare-fun m!6458990 () Bool)

(assert (=> bm!389847 m!6458990))

(declare-fun m!6458992 () Bool)

(assert (=> bm!389883 m!6458992))

(declare-fun m!6458994 () Bool)

(assert (=> bm!389832 m!6458994))

(declare-fun m!6458996 () Bool)

(assert (=> b!5437026 m!6458996))

(declare-fun m!6458998 () Bool)

(assert (=> b!5436997 m!6458998))

(declare-fun m!6459000 () Bool)

(assert (=> bm!389866 m!6459000))

(assert (=> b!5437000 m!6458924))

(declare-fun m!6459002 () Bool)

(assert (=> bm!389881 m!6459002))

(declare-fun m!6459004 () Bool)

(assert (=> bm!389864 m!6459004))

(declare-fun m!6459006 () Bool)

(assert (=> bm!389841 m!6459006))

(declare-fun m!6459008 () Bool)

(assert (=> b!5437029 m!6459008))

(declare-fun m!6459010 () Bool)

(assert (=> b!5437029 m!6459010))

(declare-fun m!6459012 () Bool)

(assert (=> b!5437029 m!6459012))

(assert (=> b!5437029 m!6459008))

(declare-fun m!6459014 () Bool)

(assert (=> b!5437029 m!6459014))

(declare-fun m!6459016 () Bool)

(assert (=> b!5437029 m!6459016))

(assert (=> b!5437029 m!6459010))

(declare-fun m!6459018 () Bool)

(assert (=> b!5437029 m!6459018))

(declare-fun m!6459020 () Bool)

(assert (=> bm!389823 m!6459020))

(declare-fun m!6459022 () Bool)

(assert (=> b!5437007 m!6459022))

(declare-fun m!6459024 () Bool)

(assert (=> b!5437007 m!6459024))

(declare-fun m!6459026 () Bool)

(assert (=> b!5437007 m!6459026))

(declare-fun m!6459028 () Bool)

(assert (=> b!5437007 m!6459028))

(declare-fun m!6459030 () Bool)

(assert (=> b!5437007 m!6459030))

(declare-fun m!6459032 () Bool)

(assert (=> bm!389869 m!6459032))

(declare-fun m!6459034 () Bool)

(assert (=> bm!389820 m!6459034))

(declare-fun m!6459036 () Bool)

(assert (=> b!5437032 m!6459036))

(declare-fun m!6459038 () Bool)

(assert (=> b!5437032 m!6459038))

(declare-fun m!6459040 () Bool)

(assert (=> b!5437032 m!6459040))

(declare-fun m!6459042 () Bool)

(assert (=> b!5437037 m!6459042))

(declare-fun m!6459044 () Bool)

(assert (=> b!5437021 m!6459044))

(declare-fun m!6459046 () Bool)

(assert (=> bm!389877 m!6459046))

(declare-fun m!6459048 () Bool)

(assert (=> b!5436994 m!6459048))

(declare-fun m!6459050 () Bool)

(assert (=> bm!389885 m!6459050))

(declare-fun m!6459052 () Bool)

(assert (=> bm!389856 m!6459052))

(declare-fun m!6459054 () Bool)

(assert (=> b!5436992 m!6459054))

(declare-fun m!6459056 () Bool)

(assert (=> b!5436992 m!6459056))

(declare-fun m!6459058 () Bool)

(assert (=> b!5436992 m!6459058))

(declare-fun m!6459060 () Bool)

(assert (=> bm!389838 m!6459060))

(declare-fun m!6459062 () Bool)

(assert (=> b!5437006 m!6459062))

(declare-fun m!6459064 () Bool)

(assert (=> bm!389817 m!6459064))

(declare-fun m!6459066 () Bool)

(assert (=> bm!389826 m!6459066))

(declare-fun m!6459068 () Bool)

(assert (=> bm!389870 m!6459068))

(declare-fun m!6459070 () Bool)

(assert (=> b!5437008 m!6459070))

(declare-fun m!6459072 () Bool)

(assert (=> b!5437008 m!6459072))

(declare-fun m!6459074 () Bool)

(assert (=> b!5437008 m!6459074))

(declare-fun m!6459076 () Bool)

(assert (=> b!5437008 m!6459076))

(declare-fun m!6459078 () Bool)

(assert (=> b!5437008 m!6459078))

(declare-fun m!6459080 () Bool)

(assert (=> b!5437008 m!6459080))

(declare-fun m!6459082 () Bool)

(assert (=> b!5437008 m!6459082))

(assert (=> bm!389865 m!6459050))

(declare-fun m!6459084 () Bool)

(assert (=> bm!389824 m!6459084))

(assert (=> bm!389819 m!6459080))

(declare-fun m!6459086 () Bool)

(assert (=> bm!389821 m!6459086))

(declare-fun m!6459088 () Bool)

(assert (=> bm!389827 m!6459088))

(declare-fun m!6459090 () Bool)

(assert (=> bm!389835 m!6459090))

(declare-fun m!6459092 () Bool)

(assert (=> bm!389815 m!6459092))

(declare-fun m!6459094 () Bool)

(assert (=> b!5437030 m!6459094))

(declare-fun m!6459096 () Bool)

(assert (=> b!5437035 m!6459096))

(declare-fun m!6459098 () Bool)

(assert (=> b!5437035 m!6459098))

(declare-fun m!6459100 () Bool)

(assert (=> b!5437035 m!6459100))

(declare-fun m!6459102 () Bool)

(assert (=> b!5437035 m!6459102))

(assert (=> b!5437035 m!6458918))

(declare-fun m!6459104 () Bool)

(assert (=> b!5437035 m!6459104))

(declare-fun m!6459106 () Bool)

(assert (=> b!5437035 m!6459106))

(declare-fun m!6459108 () Bool)

(assert (=> b!5437035 m!6459108))

(declare-fun m!6459110 () Bool)

(assert (=> b!5437035 m!6459110))

(declare-fun m!6459112 () Bool)

(assert (=> b!5437035 m!6459112))

(declare-fun m!6459114 () Bool)

(assert (=> b!5437035 m!6459114))

(declare-fun m!6459116 () Bool)

(assert (=> bm!389882 m!6459116))

(declare-fun m!6459118 () Bool)

(assert (=> bm!389846 m!6459118))

(declare-fun m!6459120 () Bool)

(assert (=> b!5437018 m!6459120))

(declare-fun m!6459122 () Bool)

(assert (=> b!5437018 m!6459122))

(declare-fun m!6459124 () Bool)

(assert (=> b!5437018 m!6459124))

(declare-fun m!6459126 () Bool)

(assert (=> b!5436996 m!6459126))

(declare-fun m!6459128 () Bool)

(assert (=> bm!389867 m!6459128))

(declare-fun m!6459130 () Bool)

(assert (=> bm!389828 m!6459130))

(declare-fun m!6459132 () Bool)

(assert (=> bm!389884 m!6459132))

(declare-fun m!6459134 () Bool)

(assert (=> b!5437014 m!6459134))

(declare-fun m!6459136 () Bool)

(assert (=> b!5437014 m!6459136))

(declare-fun m!6459138 () Bool)

(assert (=> b!5437015 m!6459138))

(declare-fun m!6459140 () Bool)

(assert (=> bm!389875 m!6459140))

(declare-fun m!6459142 () Bool)

(assert (=> bm!389872 m!6459142))

(declare-fun m!6459144 () Bool)

(assert (=> bm!389857 m!6459144))

(declare-fun m!6459146 () Bool)

(assert (=> bm!389860 m!6459146))

(check-sat (not bm!389829) (not b!5436995) tp_is_empty!39739 (not b!5436992) (not b!5436998) (not bm!389881) (not bm!389828) (not bm!389867) (not bm!389878) (not bm!389868) (not b!5437017) (not b!5437032) (not bm!389834) (not bm!389854) (not bm!389863) (not bm!389870) (not bm!389874) (not bm!389821) (not bm!389872) (not b!5436999) (not bm!389842) (not bm!389820) (not bm!389817) (not bm!389857) (not b!5437014) (not b!5437037) (not b!5437025) (not bm!389861) (not b!5437021) (not bm!389877) (not bm!389848) (not bm!389866) (not bm!389871) (not b!5437012) (not bm!389823) (not b!5437018) (not bm!389816) (not bm!389885) (not bm!389839) (not b!5437036) (not b!5436994) (not bm!389819) (not bm!389884) (not bm!389835) (not bm!389827) (not bm!389883) (not bm!389882) (not b!5437023) (not bm!389826) (not bm!389859) (not b!5437030) (not bm!389841) (not start!570270) (not bm!389865) (not b!5437013) (not bm!389864) (not bm!389831) (not b!5437035) (not bm!389858) (not bm!389869) (not b!5437015) (not b!5436997) (not bm!389824) (not b!5436990) (not b!5437007) (not bm!389847) (not b!5437006) (not b!5436996) (not b!5437029) (not bm!389815) (not b!5437008) (not setNonEmpty!35505) (not bm!389875) (not bm!389832) (not b!5437026) (not bm!389879) (not bm!389838) (not bm!389846) (not bm!389856) (not bm!389862) (not b!5437034) (not bm!389860))
(check-sat)
