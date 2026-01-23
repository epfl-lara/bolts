; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!559040 () Bool)

(assert start!559040)

(declare-fun b!5298408 () Bool)

(assert (=> b!5298408 true))

(assert (=> b!5298408 true))

(declare-fun lambda!268875 () Int)

(declare-fun lambda!268874 () Int)

(assert (=> b!5298408 (not (= lambda!268875 lambda!268874))))

(assert (=> b!5298408 true))

(assert (=> b!5298408 true))

(declare-fun b!5298424 () Bool)

(assert (=> b!5298424 true))

(declare-fun bs!1228871 () Bool)

(declare-fun b!5298427 () Bool)

(assert (= bs!1228871 (and b!5298427 b!5298408)))

(declare-datatypes ((C!30146 0))(
  ( (C!30147 (val!24775 Int)) )
))
(declare-datatypes ((Regex!14938 0))(
  ( (ElementMatch!14938 (c!919624 C!30146)) (Concat!23783 (regOne!30388 Regex!14938) (regTwo!30388 Regex!14938)) (EmptyExpr!14938) (Star!14938 (reg!15267 Regex!14938)) (EmptyLang!14938) (Union!14938 (regOne!30389 Regex!14938) (regTwo!30389 Regex!14938)) )
))
(declare-fun r!7292 () Regex!14938)

(declare-fun lt!2164865 () Regex!14938)

(declare-fun lambda!268877 () Int)

(assert (=> bs!1228871 (= (and (= (regOne!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164865 (regTwo!30388 r!7292))) (= lambda!268877 lambda!268874))))

(assert (=> bs!1228871 (not (= lambda!268877 lambda!268875))))

(assert (=> b!5298427 true))

(assert (=> b!5298427 true))

(assert (=> b!5298427 true))

(declare-fun lambda!268878 () Int)

(assert (=> bs!1228871 (not (= lambda!268878 lambda!268874))))

(assert (=> bs!1228871 (= (and (= (regOne!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164865 (regTwo!30388 r!7292))) (= lambda!268878 lambda!268875))))

(assert (=> b!5298427 (not (= lambda!268878 lambda!268877))))

(assert (=> b!5298427 true))

(assert (=> b!5298427 true))

(assert (=> b!5298427 true))

(declare-fun lambda!268879 () Int)

(declare-fun lt!2164843 () Regex!14938)

(assert (=> bs!1228871 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164843 (regTwo!30388 r!7292))) (= lambda!268879 lambda!268874))))

(assert (=> bs!1228871 (not (= lambda!268879 lambda!268875))))

(assert (=> b!5298427 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 (regOne!30388 r!7292))) (= lt!2164843 lt!2164865)) (= lambda!268879 lambda!268877))))

(assert (=> b!5298427 (not (= lambda!268879 lambda!268878))))

(assert (=> b!5298427 true))

(assert (=> b!5298427 true))

(assert (=> b!5298427 true))

(declare-fun lambda!268880 () Int)

(assert (=> b!5298427 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 (regOne!30388 r!7292))) (= lt!2164843 lt!2164865)) (= lambda!268880 lambda!268878))))

(assert (=> b!5298427 (not (= lambda!268880 lambda!268879))))

(assert (=> b!5298427 (not (= lambda!268880 lambda!268877))))

(assert (=> bs!1228871 (not (= lambda!268880 lambda!268874))))

(assert (=> bs!1228871 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164843 (regTwo!30388 r!7292))) (= lambda!268880 lambda!268875))))

(assert (=> b!5298427 true))

(assert (=> b!5298427 true))

(assert (=> b!5298427 true))

(declare-fun b!5298406 () Bool)

(declare-fun res!2247239 () Bool)

(declare-fun e!3293336 () Bool)

(assert (=> b!5298406 (=> res!2247239 e!3293336)))

(declare-datatypes ((List!61113 0))(
  ( (Nil!60989) (Cons!60989 (h!67437 Regex!14938) (t!374318 List!61113)) )
))
(declare-datatypes ((Context!8644 0))(
  ( (Context!8645 (exprs!4822 List!61113)) )
))
(declare-datatypes ((List!61114 0))(
  ( (Nil!60990) (Cons!60990 (h!67438 Context!8644) (t!374319 List!61114)) )
))
(declare-fun zl!343 () List!61114)

(assert (=> b!5298406 (= res!2247239 (not (is-Cons!60989 (exprs!4822 (h!67438 zl!343)))))))

(declare-fun b!5298407 () Bool)

(declare-fun e!3293338 () Bool)

(declare-fun tp!1477952 () Bool)

(assert (=> b!5298407 (= e!3293338 tp!1477952)))

(declare-fun e!3293344 () Bool)

(assert (=> b!5298408 (= e!3293336 e!3293344)))

(declare-fun res!2247220 () Bool)

(assert (=> b!5298408 (=> res!2247220 e!3293344)))

(declare-fun lt!2164862 () Bool)

(declare-datatypes ((List!61115 0))(
  ( (Nil!60991) (Cons!60991 (h!67439 C!30146) (t!374320 List!61115)) )
))
(declare-fun s!2326 () List!61115)

(declare-fun lt!2164869 () Bool)

(assert (=> b!5298408 (= res!2247220 (or (not (= lt!2164862 lt!2164869)) (is-Nil!60991 s!2326)))))

(declare-fun Exists!2119 (Int) Bool)

(assert (=> b!5298408 (= (Exists!2119 lambda!268874) (Exists!2119 lambda!268875))))

(declare-datatypes ((Unit!153270 0))(
  ( (Unit!153271) )
))
(declare-fun lt!2164847 () Unit!153270)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!773 (Regex!14938 Regex!14938 List!61115) Unit!153270)

(assert (=> b!5298408 (= lt!2164847 (lemmaExistCutMatchRandMatchRSpecEquivalent!773 (regOne!30388 r!7292) (regTwo!30388 r!7292) s!2326))))

(assert (=> b!5298408 (= lt!2164869 (Exists!2119 lambda!268874))))

(declare-datatypes ((tuple2!64274 0))(
  ( (tuple2!64275 (_1!35440 List!61115) (_2!35440 List!61115)) )
))
(declare-datatypes ((Option!15049 0))(
  ( (None!15048) (Some!15048 (v!51077 tuple2!64274)) )
))
(declare-fun isDefined!11752 (Option!15049) Bool)

(declare-fun findConcatSeparation!1463 (Regex!14938 Regex!14938 List!61115 List!61115 List!61115) Option!15049)

(assert (=> b!5298408 (= lt!2164869 (isDefined!11752 (findConcatSeparation!1463 (regOne!30388 r!7292) (regTwo!30388 r!7292) Nil!60991 s!2326 s!2326)))))

(declare-fun lt!2164840 () Unit!153270)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1227 (Regex!14938 Regex!14938 List!61115) Unit!153270)

(assert (=> b!5298408 (= lt!2164840 (lemmaFindConcatSeparationEquivalentToExists!1227 (regOne!30388 r!7292) (regTwo!30388 r!7292) s!2326))))

(declare-fun b!5298409 () Bool)

(declare-fun tp!1477954 () Bool)

(declare-fun e!3293342 () Bool)

(declare-fun e!3293332 () Bool)

(declare-fun inv!80593 (Context!8644) Bool)

(assert (=> b!5298409 (= e!3293332 (and (inv!80593 (h!67438 zl!343)) e!3293342 tp!1477954))))

(declare-fun b!5298410 () Bool)

(declare-fun tp!1477948 () Bool)

(declare-fun tp!1477947 () Bool)

(assert (=> b!5298410 (= e!3293338 (and tp!1477948 tp!1477947))))

(declare-fun b!5298411 () Bool)

(declare-fun res!2247240 () Bool)

(declare-fun e!3293331 () Bool)

(assert (=> b!5298411 (=> res!2247240 e!3293331)))

(assert (=> b!5298411 (= res!2247240 (not (= (exprs!4822 (h!67438 zl!343)) (Cons!60989 (Concat!23783 (regOne!30388 (regOne!30388 r!7292)) (regTwo!30388 (regOne!30388 r!7292))) (t!374318 (exprs!4822 (h!67438 zl!343)))))))))

(declare-fun b!5298412 () Bool)

(declare-fun e!3293335 () Bool)

(assert (=> b!5298412 (= e!3293331 e!3293335)))

(declare-fun res!2247237 () Bool)

(assert (=> b!5298412 (=> res!2247237 e!3293335)))

(declare-fun lt!2164855 () List!61114)

(declare-fun zipperDepthTotal!99 (List!61114) Int)

(assert (=> b!5298412 (= res!2247237 (>= (zipperDepthTotal!99 lt!2164855) (zipperDepthTotal!99 zl!343)))))

(declare-fun lt!2164873 () Context!8644)

(assert (=> b!5298412 (= lt!2164855 (Cons!60990 lt!2164873 Nil!60990))))

(declare-fun b!5298413 () Bool)

(declare-fun e!3293348 () Bool)

(declare-fun lt!2164851 () (Set Context!8644))

(declare-fun matchZipper!1182 ((Set Context!8644) List!61115) Bool)

(assert (=> b!5298413 (= e!3293348 (not (matchZipper!1182 lt!2164851 (t!374320 s!2326))))))

(declare-fun b!5298414 () Bool)

(declare-fun res!2247222 () Bool)

(assert (=> b!5298414 (=> res!2247222 e!3293335)))

(declare-fun zipperDepth!55 (List!61114) Int)

(assert (=> b!5298414 (= res!2247222 (> (zipperDepth!55 lt!2164855) (zipperDepth!55 zl!343)))))

(declare-fun b!5298415 () Bool)

(declare-fun e!3293349 () Bool)

(assert (=> b!5298415 (= e!3293349 (not e!3293336))))

(declare-fun res!2247215 () Bool)

(assert (=> b!5298415 (=> res!2247215 e!3293336)))

(assert (=> b!5298415 (= res!2247215 (not (is-Cons!60990 zl!343)))))

(declare-fun matchRSpec!2041 (Regex!14938 List!61115) Bool)

(assert (=> b!5298415 (= lt!2164862 (matchRSpec!2041 r!7292 s!2326))))

(declare-fun matchR!7123 (Regex!14938 List!61115) Bool)

(assert (=> b!5298415 (= lt!2164862 (matchR!7123 r!7292 s!2326))))

(declare-fun lt!2164836 () Unit!153270)

(declare-fun mainMatchTheorem!2041 (Regex!14938 List!61115) Unit!153270)

(assert (=> b!5298415 (= lt!2164836 (mainMatchTheorem!2041 r!7292 s!2326))))

(declare-fun b!5298416 () Bool)

(declare-fun res!2247231 () Bool)

(assert (=> b!5298416 (=> (not res!2247231) (not e!3293349))))

(declare-fun unfocusZipper!680 (List!61114) Regex!14938)

(assert (=> b!5298416 (= res!2247231 (= r!7292 (unfocusZipper!680 zl!343)))))

(declare-fun b!5298417 () Bool)

(declare-fun res!2247221 () Bool)

(assert (=> b!5298417 (=> res!2247221 e!3293336)))

(declare-fun isEmpty!32949 (List!61114) Bool)

(assert (=> b!5298417 (= res!2247221 (not (isEmpty!32949 (t!374319 zl!343))))))

(declare-fun b!5298418 () Bool)

(declare-fun e!3293341 () Bool)

(declare-fun e!3293340 () Bool)

(assert (=> b!5298418 (= e!3293341 e!3293340)))

(declare-fun res!2247217 () Bool)

(assert (=> b!5298418 (=> res!2247217 e!3293340)))

(declare-fun lt!2164866 () (Set Context!8644))

(declare-fun lt!2164830 () (Set Context!8644))

(assert (=> b!5298418 (= res!2247217 (not (= lt!2164866 lt!2164830)))))

(declare-fun lt!2164860 () (Set Context!8644))

(declare-fun lt!2164858 () (Set Context!8644))

(assert (=> b!5298418 (= lt!2164830 (set.union lt!2164860 lt!2164858))))

(declare-fun lt!2164828 () Context!8644)

(declare-fun derivationStepZipperUp!310 (Context!8644 C!30146) (Set Context!8644))

(assert (=> b!5298418 (= lt!2164858 (derivationStepZipperUp!310 lt!2164828 (h!67439 s!2326)))))

(declare-fun lambda!268876 () Int)

(declare-fun lt!2164829 () (Set Context!8644))

(declare-fun flatMap!665 ((Set Context!8644) Int) (Set Context!8644))

(assert (=> b!5298418 (= (flatMap!665 lt!2164829 lambda!268876) (derivationStepZipperUp!310 lt!2164873 (h!67439 s!2326)))))

(declare-fun lt!2164852 () Unit!153270)

(declare-fun lemmaFlatMapOnSingletonSet!197 ((Set Context!8644) Context!8644 Int) Unit!153270)

(assert (=> b!5298418 (= lt!2164852 (lemmaFlatMapOnSingletonSet!197 lt!2164829 lt!2164873 lambda!268876))))

(declare-fun lt!2164846 () (Set Context!8644))

(assert (=> b!5298418 (= lt!2164846 (derivationStepZipperUp!310 lt!2164873 (h!67439 s!2326)))))

(declare-fun derivationStepZipper!1181 ((Set Context!8644) C!30146) (Set Context!8644))

(assert (=> b!5298418 (= lt!2164866 (derivationStepZipper!1181 lt!2164829 (h!67439 s!2326)))))

(declare-fun lt!2164844 () (Set Context!8644))

(assert (=> b!5298418 (= lt!2164844 (set.insert lt!2164828 (as set.empty (Set Context!8644))))))

(assert (=> b!5298418 (= lt!2164829 (set.insert lt!2164873 (as set.empty (Set Context!8644))))))

(declare-fun lt!2164850 () List!61113)

(assert (=> b!5298418 (= lt!2164873 (Context!8645 lt!2164850))))

(declare-fun lt!2164839 () List!61113)

(assert (=> b!5298418 (= lt!2164850 (Cons!60989 (regOne!30388 (regOne!30388 r!7292)) lt!2164839))))

(declare-fun b!5298419 () Bool)

(declare-fun res!2247216 () Bool)

(assert (=> b!5298419 (=> res!2247216 e!3293336)))

(declare-fun generalisedConcat!607 (List!61113) Regex!14938)

(assert (=> b!5298419 (= res!2247216 (not (= r!7292 (generalisedConcat!607 (exprs!4822 (h!67438 zl!343))))))))

(declare-fun b!5298420 () Bool)

(declare-fun e!3293334 () Bool)

(declare-fun tp!1477953 () Bool)

(assert (=> b!5298420 (= e!3293334 tp!1477953)))

(declare-fun b!5298421 () Bool)

(declare-fun res!2247235 () Bool)

(assert (=> b!5298421 (=> res!2247235 e!3293336)))

(declare-fun generalisedUnion!867 (List!61113) Regex!14938)

(declare-fun unfocusZipperList!380 (List!61114) List!61113)

(assert (=> b!5298421 (= res!2247235 (not (= r!7292 (generalisedUnion!867 (unfocusZipperList!380 zl!343)))))))

(declare-fun b!5298422 () Bool)

(declare-fun e!3293345 () Bool)

(assert (=> b!5298422 (= e!3293345 (matchZipper!1182 lt!2164858 (t!374320 s!2326)))))

(declare-fun setIsEmpty!34028 () Bool)

(declare-fun setRes!34028 () Bool)

(assert (=> setIsEmpty!34028 setRes!34028))

(declare-fun b!5298423 () Bool)

(declare-fun res!2247225 () Bool)

(assert (=> b!5298423 (=> res!2247225 e!3293331)))

(declare-fun contextDepthTotal!79 (Context!8644) Int)

(assert (=> b!5298423 (= res!2247225 (>= (contextDepthTotal!79 lt!2164873) (contextDepthTotal!79 (h!67438 zl!343))))))

(declare-fun e!3293350 () Bool)

(assert (=> b!5298424 (= e!3293344 e!3293350)))

(declare-fun res!2247228 () Bool)

(assert (=> b!5298424 (=> res!2247228 e!3293350)))

(assert (=> b!5298424 (= res!2247228 (or (and (is-ElementMatch!14938 (regOne!30388 r!7292)) (= (c!919624 (regOne!30388 r!7292)) (h!67439 s!2326))) (is-Union!14938 (regOne!30388 r!7292)) (not (is-Concat!23783 (regOne!30388 r!7292)))))))

(declare-fun lt!2164831 () Unit!153270)

(declare-fun e!3293347 () Unit!153270)

(assert (=> b!5298424 (= lt!2164831 e!3293347)))

(declare-fun c!919623 () Bool)

(declare-fun nullable!5107 (Regex!14938) Bool)

(assert (=> b!5298424 (= c!919623 (nullable!5107 (h!67437 (exprs!4822 (h!67438 zl!343)))))))

(declare-fun z!1189 () (Set Context!8644))

(assert (=> b!5298424 (= (flatMap!665 z!1189 lambda!268876) (derivationStepZipperUp!310 (h!67438 zl!343) (h!67439 s!2326)))))

(declare-fun lt!2164848 () Unit!153270)

(assert (=> b!5298424 (= lt!2164848 (lemmaFlatMapOnSingletonSet!197 z!1189 (h!67438 zl!343) lambda!268876))))

(declare-fun lt!2164872 () (Set Context!8644))

(declare-fun lt!2164868 () Context!8644)

(assert (=> b!5298424 (= lt!2164872 (derivationStepZipperUp!310 lt!2164868 (h!67439 s!2326)))))

(declare-fun lt!2164849 () (Set Context!8644))

(declare-fun derivationStepZipperDown!386 (Regex!14938 Context!8644 C!30146) (Set Context!8644))

(assert (=> b!5298424 (= lt!2164849 (derivationStepZipperDown!386 (h!67437 (exprs!4822 (h!67438 zl!343))) lt!2164868 (h!67439 s!2326)))))

(assert (=> b!5298424 (= lt!2164868 (Context!8645 (t!374318 (exprs!4822 (h!67438 zl!343)))))))

(declare-fun lt!2164842 () (Set Context!8644))

(assert (=> b!5298424 (= lt!2164842 (derivationStepZipperUp!310 (Context!8645 (Cons!60989 (h!67437 (exprs!4822 (h!67438 zl!343))) (t!374318 (exprs!4822 (h!67438 zl!343))))) (h!67439 s!2326)))))

(declare-fun b!5298425 () Bool)

(declare-fun e!3293351 () Bool)

(declare-fun tp_is_empty!39129 () Bool)

(declare-fun tp!1477951 () Bool)

(assert (=> b!5298425 (= e!3293351 (and tp_is_empty!39129 tp!1477951))))

(declare-fun b!5298426 () Bool)

(declare-fun tp!1477950 () Bool)

(declare-fun tp!1477955 () Bool)

(assert (=> b!5298426 (= e!3293338 (and tp!1477950 tp!1477955))))

(declare-fun e!3293339 () Bool)

(assert (=> b!5298427 (= e!3293335 e!3293339)))

(declare-fun res!2247232 () Bool)

(assert (=> b!5298427 (=> res!2247232 e!3293339)))

(declare-fun lt!2164841 () Bool)

(declare-fun lt!2164854 () Bool)

(declare-fun lt!2164867 () Bool)

(declare-fun lt!2164853 () Bool)

(declare-fun lt!2164859 () Bool)

(assert (=> b!5298427 (= res!2247232 (or (not (= lt!2164854 (or lt!2164859 lt!2164841))) (not (= lt!2164854 (or lt!2164867 lt!2164853)))))))

(assert (=> b!5298427 (= lt!2164854 (matchZipper!1182 z!1189 s!2326))))

(assert (=> b!5298427 (= (Exists!2119 lambda!268879) (Exists!2119 lambda!268880))))

(declare-fun lt!2164838 () Unit!153270)

(assert (=> b!5298427 (= lt!2164838 (lemmaExistCutMatchRandMatchRSpecEquivalent!773 (regTwo!30388 (regOne!30388 r!7292)) lt!2164843 s!2326))))

(assert (=> b!5298427 (= (isDefined!11752 (findConcatSeparation!1463 (regTwo!30388 (regOne!30388 r!7292)) lt!2164843 Nil!60991 s!2326 s!2326)) (Exists!2119 lambda!268879))))

(declare-fun lt!2164874 () Unit!153270)

(assert (=> b!5298427 (= lt!2164874 (lemmaFindConcatSeparationEquivalentToExists!1227 (regTwo!30388 (regOne!30388 r!7292)) lt!2164843 s!2326))))

(assert (=> b!5298427 (= lt!2164843 (generalisedConcat!607 (t!374318 (exprs!4822 (h!67438 zl!343)))))))

(assert (=> b!5298427 (= lt!2164853 (matchRSpec!2041 lt!2164865 s!2326))))

(declare-fun lt!2164864 () Unit!153270)

(assert (=> b!5298427 (= lt!2164864 (mainMatchTheorem!2041 lt!2164865 s!2326))))

(assert (=> b!5298427 (= (Exists!2119 lambda!268877) (Exists!2119 lambda!268878))))

(declare-fun lt!2164863 () Unit!153270)

(assert (=> b!5298427 (= lt!2164863 (lemmaExistCutMatchRandMatchRSpecEquivalent!773 (regOne!30388 (regOne!30388 r!7292)) lt!2164865 s!2326))))

(assert (=> b!5298427 (= (isDefined!11752 (findConcatSeparation!1463 (regOne!30388 (regOne!30388 r!7292)) lt!2164865 Nil!60991 s!2326 s!2326)) (Exists!2119 lambda!268877))))

(declare-fun lt!2164834 () Unit!153270)

(assert (=> b!5298427 (= lt!2164834 (lemmaFindConcatSeparationEquivalentToExists!1227 (regOne!30388 (regOne!30388 r!7292)) lt!2164865 s!2326))))

(declare-fun lt!2164870 () Regex!14938)

(assert (=> b!5298427 (= lt!2164867 (matchRSpec!2041 lt!2164870 s!2326))))

(declare-fun lt!2164871 () Unit!153270)

(assert (=> b!5298427 (= lt!2164871 (mainMatchTheorem!2041 lt!2164870 s!2326))))

(assert (=> b!5298427 (= lt!2164853 lt!2164841)))

(assert (=> b!5298427 (= lt!2164841 (matchZipper!1182 lt!2164844 s!2326))))

(assert (=> b!5298427 (= lt!2164853 (matchR!7123 lt!2164865 s!2326))))

(declare-fun lt!2164837 () Unit!153270)

(declare-fun theoremZipperRegexEquiv!348 ((Set Context!8644) List!61114 Regex!14938 List!61115) Unit!153270)

(assert (=> b!5298427 (= lt!2164837 (theoremZipperRegexEquiv!348 lt!2164844 (Cons!60990 lt!2164828 Nil!60990) lt!2164865 s!2326))))

(assert (=> b!5298427 (= lt!2164865 (generalisedConcat!607 lt!2164839))))

(assert (=> b!5298427 (= lt!2164867 lt!2164859)))

(assert (=> b!5298427 (= lt!2164859 (matchZipper!1182 lt!2164829 s!2326))))

(assert (=> b!5298427 (= lt!2164867 (matchR!7123 lt!2164870 s!2326))))

(declare-fun lt!2164827 () Unit!153270)

(assert (=> b!5298427 (= lt!2164827 (theoremZipperRegexEquiv!348 lt!2164829 lt!2164855 lt!2164870 s!2326))))

(assert (=> b!5298427 (= lt!2164870 (generalisedConcat!607 lt!2164850))))

(declare-fun b!5298428 () Bool)

(declare-fun Unit!153272 () Unit!153270)

(assert (=> b!5298428 (= e!3293347 Unit!153272)))

(declare-fun lt!2164835 () Unit!153270)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!175 ((Set Context!8644) (Set Context!8644) List!61115) Unit!153270)

(assert (=> b!5298428 (= lt!2164835 (lemmaZipperConcatMatchesSameAsBothZippers!175 lt!2164849 lt!2164872 (t!374320 s!2326)))))

(declare-fun res!2247236 () Bool)

(assert (=> b!5298428 (= res!2247236 (matchZipper!1182 lt!2164849 (t!374320 s!2326)))))

(declare-fun e!3293346 () Bool)

(assert (=> b!5298428 (=> res!2247236 e!3293346)))

(assert (=> b!5298428 (= (matchZipper!1182 (set.union lt!2164849 lt!2164872) (t!374320 s!2326)) e!3293346)))

(declare-fun b!5298429 () Bool)

(declare-fun res!2247230 () Bool)

(assert (=> b!5298429 (=> (not res!2247230) (not e!3293349))))

(declare-fun toList!8722 ((Set Context!8644)) List!61114)

(assert (=> b!5298429 (= res!2247230 (= (toList!8722 z!1189) zl!343))))

(declare-fun b!5298430 () Bool)

(declare-fun tp!1477949 () Bool)

(assert (=> b!5298430 (= e!3293342 tp!1477949)))

(declare-fun b!5298431 () Bool)

(declare-fun res!2247226 () Bool)

(assert (=> b!5298431 (=> res!2247226 e!3293350)))

(assert (=> b!5298431 (= res!2247226 (not (nullable!5107 (regOne!30388 (regOne!30388 r!7292)))))))

(declare-fun b!5298432 () Bool)

(declare-fun Unit!153273 () Unit!153270)

(assert (=> b!5298432 (= e!3293347 Unit!153273)))

(declare-fun b!5298433 () Bool)

(assert (=> b!5298433 (= e!3293338 tp_is_empty!39129)))

(declare-fun res!2247238 () Bool)

(assert (=> start!559040 (=> (not res!2247238) (not e!3293349))))

(declare-fun validRegex!6674 (Regex!14938) Bool)

(assert (=> start!559040 (= res!2247238 (validRegex!6674 r!7292))))

(assert (=> start!559040 e!3293349))

(assert (=> start!559040 e!3293338))

(declare-fun condSetEmpty!34028 () Bool)

(assert (=> start!559040 (= condSetEmpty!34028 (= z!1189 (as set.empty (Set Context!8644))))))

(assert (=> start!559040 setRes!34028))

(assert (=> start!559040 e!3293332))

(assert (=> start!559040 e!3293351))

(declare-fun setElem!34028 () Context!8644)

(declare-fun setNonEmpty!34028 () Bool)

(declare-fun tp!1477946 () Bool)

(assert (=> setNonEmpty!34028 (= setRes!34028 (and tp!1477946 (inv!80593 setElem!34028) e!3293334))))

(declare-fun setRest!34028 () (Set Context!8644))

(assert (=> setNonEmpty!34028 (= z!1189 (set.union (set.insert setElem!34028 (as set.empty (Set Context!8644))) setRest!34028))))

(declare-fun b!5298434 () Bool)

(declare-fun e!3293333 () Bool)

(assert (=> b!5298434 (= e!3293333 e!3293341)))

(declare-fun res!2247234 () Bool)

(assert (=> b!5298434 (=> res!2247234 e!3293341)))

(assert (=> b!5298434 (= res!2247234 e!3293348)))

(declare-fun res!2247233 () Bool)

(assert (=> b!5298434 (=> (not res!2247233) (not e!3293348))))

(declare-fun lt!2164845 () Bool)

(declare-fun lt!2164833 () Bool)

(assert (=> b!5298434 (= res!2247233 (not (= lt!2164845 lt!2164833)))))

(assert (=> b!5298434 (= lt!2164845 (matchZipper!1182 lt!2164849 (t!374320 s!2326)))))

(declare-fun lt!2164857 () (Set Context!8644))

(declare-fun e!3293343 () Bool)

(assert (=> b!5298434 (= (matchZipper!1182 lt!2164857 (t!374320 s!2326)) e!3293343)))

(declare-fun res!2247229 () Bool)

(assert (=> b!5298434 (=> res!2247229 e!3293343)))

(assert (=> b!5298434 (= res!2247229 lt!2164833)))

(assert (=> b!5298434 (= lt!2164833 (matchZipper!1182 lt!2164860 (t!374320 s!2326)))))

(declare-fun lt!2164832 () Unit!153270)

(assert (=> b!5298434 (= lt!2164832 (lemmaZipperConcatMatchesSameAsBothZippers!175 lt!2164860 lt!2164851 (t!374320 s!2326)))))

(declare-fun b!5298435 () Bool)

(assert (=> b!5298435 (= e!3293339 (validRegex!6674 (regOne!30388 r!7292)))))

(declare-fun b!5298436 () Bool)

(assert (=> b!5298436 (= e!3293343 (matchZipper!1182 lt!2164851 (t!374320 s!2326)))))

(declare-fun b!5298437 () Bool)

(assert (=> b!5298437 (= e!3293350 e!3293333)))

(declare-fun res!2247219 () Bool)

(assert (=> b!5298437 (=> res!2247219 e!3293333)))

(assert (=> b!5298437 (= res!2247219 (not (= lt!2164849 lt!2164857)))))

(assert (=> b!5298437 (= lt!2164857 (set.union lt!2164860 lt!2164851))))

(assert (=> b!5298437 (= lt!2164851 (derivationStepZipperDown!386 (regTwo!30388 (regOne!30388 r!7292)) lt!2164868 (h!67439 s!2326)))))

(assert (=> b!5298437 (= lt!2164860 (derivationStepZipperDown!386 (regOne!30388 (regOne!30388 r!7292)) lt!2164828 (h!67439 s!2326)))))

(assert (=> b!5298437 (= lt!2164828 (Context!8645 lt!2164839))))

(assert (=> b!5298437 (= lt!2164839 (Cons!60989 (regTwo!30388 (regOne!30388 r!7292)) (t!374318 (exprs!4822 (h!67438 zl!343)))))))

(declare-fun b!5298438 () Bool)

(declare-fun res!2247223 () Bool)

(assert (=> b!5298438 (=> res!2247223 e!3293344)))

(declare-fun isEmpty!32950 (List!61113) Bool)

(assert (=> b!5298438 (= res!2247223 (isEmpty!32950 (t!374318 (exprs!4822 (h!67438 zl!343)))))))

(declare-fun b!5298439 () Bool)

(assert (=> b!5298439 (= e!3293340 e!3293331)))

(declare-fun res!2247227 () Bool)

(assert (=> b!5298439 (=> res!2247227 e!3293331)))

(declare-fun e!3293337 () Bool)

(assert (=> b!5298439 (= res!2247227 e!3293337)))

(declare-fun res!2247224 () Bool)

(assert (=> b!5298439 (=> (not res!2247224) (not e!3293337))))

(assert (=> b!5298439 (= res!2247224 (not (= lt!2164845 (matchZipper!1182 lt!2164866 (t!374320 s!2326)))))))

(assert (=> b!5298439 (= (matchZipper!1182 lt!2164830 (t!374320 s!2326)) e!3293345)))

(declare-fun res!2247214 () Bool)

(assert (=> b!5298439 (=> res!2247214 e!3293345)))

(assert (=> b!5298439 (= res!2247214 lt!2164833)))

(declare-fun lt!2164861 () Unit!153270)

(assert (=> b!5298439 (= lt!2164861 (lemmaZipperConcatMatchesSameAsBothZippers!175 lt!2164860 lt!2164858 (t!374320 s!2326)))))

(assert (=> b!5298439 (= (flatMap!665 lt!2164844 lambda!268876) (derivationStepZipperUp!310 lt!2164828 (h!67439 s!2326)))))

(declare-fun lt!2164856 () Unit!153270)

(assert (=> b!5298439 (= lt!2164856 (lemmaFlatMapOnSingletonSet!197 lt!2164844 lt!2164828 lambda!268876))))

(declare-fun b!5298440 () Bool)

(assert (=> b!5298440 (= e!3293337 (not (matchZipper!1182 (derivationStepZipper!1181 lt!2164844 (h!67439 s!2326)) (t!374320 s!2326))))))

(declare-fun b!5298441 () Bool)

(declare-fun res!2247218 () Bool)

(assert (=> b!5298441 (=> res!2247218 e!3293336)))

(assert (=> b!5298441 (= res!2247218 (or (is-EmptyExpr!14938 r!7292) (is-EmptyLang!14938 r!7292) (is-ElementMatch!14938 r!7292) (is-Union!14938 r!7292) (not (is-Concat!23783 r!7292))))))

(declare-fun b!5298442 () Bool)

(assert (=> b!5298442 (= e!3293346 (matchZipper!1182 lt!2164872 (t!374320 s!2326)))))

(assert (= (and start!559040 res!2247238) b!5298429))

(assert (= (and b!5298429 res!2247230) b!5298416))

(assert (= (and b!5298416 res!2247231) b!5298415))

(assert (= (and b!5298415 (not res!2247215)) b!5298417))

(assert (= (and b!5298417 (not res!2247221)) b!5298419))

(assert (= (and b!5298419 (not res!2247216)) b!5298406))

(assert (= (and b!5298406 (not res!2247239)) b!5298421))

(assert (= (and b!5298421 (not res!2247235)) b!5298441))

(assert (= (and b!5298441 (not res!2247218)) b!5298408))

(assert (= (and b!5298408 (not res!2247220)) b!5298438))

(assert (= (and b!5298438 (not res!2247223)) b!5298424))

(assert (= (and b!5298424 c!919623) b!5298428))

(assert (= (and b!5298424 (not c!919623)) b!5298432))

(assert (= (and b!5298428 (not res!2247236)) b!5298442))

(assert (= (and b!5298424 (not res!2247228)) b!5298431))

(assert (= (and b!5298431 (not res!2247226)) b!5298437))

(assert (= (and b!5298437 (not res!2247219)) b!5298434))

(assert (= (and b!5298434 (not res!2247229)) b!5298436))

(assert (= (and b!5298434 res!2247233) b!5298413))

(assert (= (and b!5298434 (not res!2247234)) b!5298418))

(assert (= (and b!5298418 (not res!2247217)) b!5298439))

(assert (= (and b!5298439 (not res!2247214)) b!5298422))

(assert (= (and b!5298439 res!2247224) b!5298440))

(assert (= (and b!5298439 (not res!2247227)) b!5298411))

(assert (= (and b!5298411 (not res!2247240)) b!5298423))

(assert (= (and b!5298423 (not res!2247225)) b!5298412))

(assert (= (and b!5298412 (not res!2247237)) b!5298414))

(assert (= (and b!5298414 (not res!2247222)) b!5298427))

(assert (= (and b!5298427 (not res!2247232)) b!5298435))

(assert (= (and start!559040 (is-ElementMatch!14938 r!7292)) b!5298433))

(assert (= (and start!559040 (is-Concat!23783 r!7292)) b!5298410))

(assert (= (and start!559040 (is-Star!14938 r!7292)) b!5298407))

(assert (= (and start!559040 (is-Union!14938 r!7292)) b!5298426))

(assert (= (and start!559040 condSetEmpty!34028) setIsEmpty!34028))

(assert (= (and start!559040 (not condSetEmpty!34028)) setNonEmpty!34028))

(assert (= setNonEmpty!34028 b!5298420))

(assert (= b!5298409 b!5298430))

(assert (= (and start!559040 (is-Cons!60990 zl!343)) b!5298409))

(assert (= (and start!559040 (is-Cons!60991 s!2326)) b!5298425))

(declare-fun m!6335712 () Bool)

(assert (=> b!5298431 m!6335712))

(declare-fun m!6335714 () Bool)

(assert (=> b!5298434 m!6335714))

(declare-fun m!6335716 () Bool)

(assert (=> b!5298434 m!6335716))

(declare-fun m!6335718 () Bool)

(assert (=> b!5298434 m!6335718))

(declare-fun m!6335720 () Bool)

(assert (=> b!5298434 m!6335720))

(declare-fun m!6335722 () Bool)

(assert (=> b!5298428 m!6335722))

(assert (=> b!5298428 m!6335714))

(declare-fun m!6335724 () Bool)

(assert (=> b!5298428 m!6335724))

(declare-fun m!6335726 () Bool)

(assert (=> b!5298437 m!6335726))

(declare-fun m!6335728 () Bool)

(assert (=> b!5298437 m!6335728))

(declare-fun m!6335730 () Bool)

(assert (=> b!5298416 m!6335730))

(declare-fun m!6335732 () Bool)

(assert (=> b!5298421 m!6335732))

(assert (=> b!5298421 m!6335732))

(declare-fun m!6335734 () Bool)

(assert (=> b!5298421 m!6335734))

(declare-fun m!6335736 () Bool)

(assert (=> start!559040 m!6335736))

(declare-fun m!6335738 () Bool)

(assert (=> setNonEmpty!34028 m!6335738))

(declare-fun m!6335740 () Bool)

(assert (=> b!5298442 m!6335740))

(declare-fun m!6335742 () Bool)

(assert (=> b!5298417 m!6335742))

(declare-fun m!6335744 () Bool)

(assert (=> b!5298429 m!6335744))

(declare-fun m!6335746 () Bool)

(assert (=> b!5298415 m!6335746))

(declare-fun m!6335748 () Bool)

(assert (=> b!5298415 m!6335748))

(declare-fun m!6335750 () Bool)

(assert (=> b!5298415 m!6335750))

(declare-fun m!6335752 () Bool)

(assert (=> b!5298418 m!6335752))

(declare-fun m!6335754 () Bool)

(assert (=> b!5298418 m!6335754))

(declare-fun m!6335756 () Bool)

(assert (=> b!5298418 m!6335756))

(declare-fun m!6335758 () Bool)

(assert (=> b!5298418 m!6335758))

(declare-fun m!6335760 () Bool)

(assert (=> b!5298418 m!6335760))

(declare-fun m!6335762 () Bool)

(assert (=> b!5298418 m!6335762))

(declare-fun m!6335764 () Bool)

(assert (=> b!5298418 m!6335764))

(declare-fun m!6335766 () Bool)

(assert (=> b!5298435 m!6335766))

(declare-fun m!6335768 () Bool)

(assert (=> b!5298440 m!6335768))

(assert (=> b!5298440 m!6335768))

(declare-fun m!6335770 () Bool)

(assert (=> b!5298440 m!6335770))

(declare-fun m!6335772 () Bool)

(assert (=> b!5298412 m!6335772))

(declare-fun m!6335774 () Bool)

(assert (=> b!5298412 m!6335774))

(declare-fun m!6335776 () Bool)

(assert (=> b!5298409 m!6335776))

(declare-fun m!6335778 () Bool)

(assert (=> b!5298427 m!6335778))

(declare-fun m!6335780 () Bool)

(assert (=> b!5298427 m!6335780))

(declare-fun m!6335782 () Bool)

(assert (=> b!5298427 m!6335782))

(declare-fun m!6335784 () Bool)

(assert (=> b!5298427 m!6335784))

(declare-fun m!6335786 () Bool)

(assert (=> b!5298427 m!6335786))

(declare-fun m!6335788 () Bool)

(assert (=> b!5298427 m!6335788))

(declare-fun m!6335790 () Bool)

(assert (=> b!5298427 m!6335790))

(declare-fun m!6335792 () Bool)

(assert (=> b!5298427 m!6335792))

(declare-fun m!6335794 () Bool)

(assert (=> b!5298427 m!6335794))

(assert (=> b!5298427 m!6335790))

(declare-fun m!6335796 () Bool)

(assert (=> b!5298427 m!6335796))

(declare-fun m!6335798 () Bool)

(assert (=> b!5298427 m!6335798))

(declare-fun m!6335800 () Bool)

(assert (=> b!5298427 m!6335800))

(declare-fun m!6335802 () Bool)

(assert (=> b!5298427 m!6335802))

(declare-fun m!6335804 () Bool)

(assert (=> b!5298427 m!6335804))

(assert (=> b!5298427 m!6335792))

(declare-fun m!6335806 () Bool)

(assert (=> b!5298427 m!6335806))

(declare-fun m!6335808 () Bool)

(assert (=> b!5298427 m!6335808))

(declare-fun m!6335810 () Bool)

(assert (=> b!5298427 m!6335810))

(declare-fun m!6335812 () Bool)

(assert (=> b!5298427 m!6335812))

(declare-fun m!6335814 () Bool)

(assert (=> b!5298427 m!6335814))

(declare-fun m!6335816 () Bool)

(assert (=> b!5298427 m!6335816))

(declare-fun m!6335818 () Bool)

(assert (=> b!5298427 m!6335818))

(assert (=> b!5298427 m!6335784))

(declare-fun m!6335820 () Bool)

(assert (=> b!5298427 m!6335820))

(assert (=> b!5298427 m!6335814))

(declare-fun m!6335822 () Bool)

(assert (=> b!5298427 m!6335822))

(declare-fun m!6335824 () Bool)

(assert (=> b!5298427 m!6335824))

(declare-fun m!6335826 () Bool)

(assert (=> b!5298427 m!6335826))

(declare-fun m!6335828 () Bool)

(assert (=> b!5298427 m!6335828))

(declare-fun m!6335830 () Bool)

(assert (=> b!5298408 m!6335830))

(declare-fun m!6335832 () Bool)

(assert (=> b!5298408 m!6335832))

(declare-fun m!6335834 () Bool)

(assert (=> b!5298408 m!6335834))

(assert (=> b!5298408 m!6335834))

(declare-fun m!6335836 () Bool)

(assert (=> b!5298408 m!6335836))

(declare-fun m!6335838 () Bool)

(assert (=> b!5298408 m!6335838))

(assert (=> b!5298408 m!6335830))

(declare-fun m!6335840 () Bool)

(assert (=> b!5298408 m!6335840))

(declare-fun m!6335842 () Bool)

(assert (=> b!5298419 m!6335842))

(declare-fun m!6335844 () Bool)

(assert (=> b!5298438 m!6335844))

(declare-fun m!6335846 () Bool)

(assert (=> b!5298436 m!6335846))

(assert (=> b!5298413 m!6335846))

(declare-fun m!6335848 () Bool)

(assert (=> b!5298423 m!6335848))

(declare-fun m!6335850 () Bool)

(assert (=> b!5298423 m!6335850))

(assert (=> b!5298439 m!6335752))

(declare-fun m!6335852 () Bool)

(assert (=> b!5298439 m!6335852))

(declare-fun m!6335854 () Bool)

(assert (=> b!5298439 m!6335854))

(declare-fun m!6335856 () Bool)

(assert (=> b!5298439 m!6335856))

(declare-fun m!6335858 () Bool)

(assert (=> b!5298439 m!6335858))

(declare-fun m!6335860 () Bool)

(assert (=> b!5298439 m!6335860))

(declare-fun m!6335862 () Bool)

(assert (=> b!5298424 m!6335862))

(declare-fun m!6335864 () Bool)

(assert (=> b!5298424 m!6335864))

(declare-fun m!6335866 () Bool)

(assert (=> b!5298424 m!6335866))

(declare-fun m!6335868 () Bool)

(assert (=> b!5298424 m!6335868))

(declare-fun m!6335870 () Bool)

(assert (=> b!5298424 m!6335870))

(declare-fun m!6335872 () Bool)

(assert (=> b!5298424 m!6335872))

(declare-fun m!6335874 () Bool)

(assert (=> b!5298424 m!6335874))

(declare-fun m!6335876 () Bool)

(assert (=> b!5298422 m!6335876))

(declare-fun m!6335878 () Bool)

(assert (=> b!5298414 m!6335878))

(declare-fun m!6335880 () Bool)

(assert (=> b!5298414 m!6335880))

(push 1)

(assert (not setNonEmpty!34028))

(assert (not b!5298434))

(assert (not b!5298412))

(assert (not b!5298428))

(assert (not b!5298440))

(assert (not start!559040))

(assert (not b!5298422))

(assert (not b!5298438))

(assert (not b!5298425))

(assert (not b!5298416))

(assert (not b!5298439))

(assert (not b!5298429))

(assert (not b!5298421))

(assert (not b!5298424))

(assert (not b!5298415))

(assert (not b!5298414))

(assert (not b!5298430))

(assert (not b!5298407))

(assert (not b!5298419))

(assert (not b!5298409))

(assert (not b!5298427))

(assert (not b!5298410))

(assert (not b!5298436))

(assert (not b!5298423))

(assert (not b!5298420))

(assert (not b!5298426))

(assert (not b!5298408))

(assert (not b!5298442))

(assert (not b!5298431))

(assert (not b!5298413))

(assert (not b!5298417))

(assert tp_is_empty!39129)

(assert (not b!5298418))

(assert (not b!5298435))

(assert (not b!5298437))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1703917 () Bool)

(declare-fun e!3293435 () Bool)

(assert (=> d!1703917 e!3293435))

(declare-fun res!2247360 () Bool)

(assert (=> d!1703917 (=> (not res!2247360) (not e!3293435))))

(declare-fun lt!2165021 () List!61114)

(declare-fun noDuplicate!1274 (List!61114) Bool)

(assert (=> d!1703917 (= res!2247360 (noDuplicate!1274 lt!2165021))))

(declare-fun choose!39591 ((Set Context!8644)) List!61114)

(assert (=> d!1703917 (= lt!2165021 (choose!39591 z!1189))))

(assert (=> d!1703917 (= (toList!8722 z!1189) lt!2165021)))

(declare-fun b!5298604 () Bool)

(declare-fun content!10862 (List!61114) (Set Context!8644))

(assert (=> b!5298604 (= e!3293435 (= (content!10862 lt!2165021) z!1189))))

(assert (= (and d!1703917 res!2247360) b!5298604))

(declare-fun m!6336052 () Bool)

(assert (=> d!1703917 m!6336052))

(declare-fun m!6336054 () Bool)

(assert (=> d!1703917 m!6336054))

(declare-fun m!6336056 () Bool)

(assert (=> b!5298604 m!6336056))

(assert (=> b!5298429 d!1703917))

(declare-fun d!1703919 () Bool)

(declare-fun lambda!268914 () Int)

(declare-fun forall!14352 (List!61113 Int) Bool)

(assert (=> d!1703919 (= (inv!80593 (h!67438 zl!343)) (forall!14352 (exprs!4822 (h!67438 zl!343)) lambda!268914))))

(declare-fun bs!1228873 () Bool)

(assert (= bs!1228873 d!1703919))

(declare-fun m!6336058 () Bool)

(assert (=> bs!1228873 m!6336058))

(assert (=> b!5298409 d!1703919))

(declare-fun e!3293438 () Bool)

(declare-fun d!1703921 () Bool)

(assert (=> d!1703921 (= (matchZipper!1182 (set.union lt!2164849 lt!2164872) (t!374320 s!2326)) e!3293438)))

(declare-fun res!2247363 () Bool)

(assert (=> d!1703921 (=> res!2247363 e!3293438)))

(assert (=> d!1703921 (= res!2247363 (matchZipper!1182 lt!2164849 (t!374320 s!2326)))))

(declare-fun lt!2165024 () Unit!153270)

(declare-fun choose!39592 ((Set Context!8644) (Set Context!8644) List!61115) Unit!153270)

(assert (=> d!1703921 (= lt!2165024 (choose!39592 lt!2164849 lt!2164872 (t!374320 s!2326)))))

(assert (=> d!1703921 (= (lemmaZipperConcatMatchesSameAsBothZippers!175 lt!2164849 lt!2164872 (t!374320 s!2326)) lt!2165024)))

(declare-fun b!5298607 () Bool)

(assert (=> b!5298607 (= e!3293438 (matchZipper!1182 lt!2164872 (t!374320 s!2326)))))

(assert (= (and d!1703921 (not res!2247363)) b!5298607))

(assert (=> d!1703921 m!6335724))

(assert (=> d!1703921 m!6335714))

(declare-fun m!6336060 () Bool)

(assert (=> d!1703921 m!6336060))

(assert (=> b!5298607 m!6335740))

(assert (=> b!5298428 d!1703921))

(declare-fun d!1703923 () Bool)

(declare-fun c!919638 () Bool)

(declare-fun isEmpty!32953 (List!61115) Bool)

(assert (=> d!1703923 (= c!919638 (isEmpty!32953 (t!374320 s!2326)))))

(declare-fun e!3293441 () Bool)

(assert (=> d!1703923 (= (matchZipper!1182 lt!2164849 (t!374320 s!2326)) e!3293441)))

(declare-fun b!5298612 () Bool)

(declare-fun nullableZipper!1319 ((Set Context!8644)) Bool)

(assert (=> b!5298612 (= e!3293441 (nullableZipper!1319 lt!2164849))))

(declare-fun b!5298613 () Bool)

(declare-fun head!11356 (List!61115) C!30146)

(declare-fun tail!10453 (List!61115) List!61115)

(assert (=> b!5298613 (= e!3293441 (matchZipper!1182 (derivationStepZipper!1181 lt!2164849 (head!11356 (t!374320 s!2326))) (tail!10453 (t!374320 s!2326))))))

(assert (= (and d!1703923 c!919638) b!5298612))

(assert (= (and d!1703923 (not c!919638)) b!5298613))

(declare-fun m!6336062 () Bool)

(assert (=> d!1703923 m!6336062))

(declare-fun m!6336064 () Bool)

(assert (=> b!5298612 m!6336064))

(declare-fun m!6336066 () Bool)

(assert (=> b!5298613 m!6336066))

(assert (=> b!5298613 m!6336066))

(declare-fun m!6336068 () Bool)

(assert (=> b!5298613 m!6336068))

(declare-fun m!6336070 () Bool)

(assert (=> b!5298613 m!6336070))

(assert (=> b!5298613 m!6336068))

(assert (=> b!5298613 m!6336070))

(declare-fun m!6336072 () Bool)

(assert (=> b!5298613 m!6336072))

(assert (=> b!5298428 d!1703923))

(declare-fun d!1703925 () Bool)

(declare-fun c!919639 () Bool)

(assert (=> d!1703925 (= c!919639 (isEmpty!32953 (t!374320 s!2326)))))

(declare-fun e!3293442 () Bool)

(assert (=> d!1703925 (= (matchZipper!1182 (set.union lt!2164849 lt!2164872) (t!374320 s!2326)) e!3293442)))

(declare-fun b!5298614 () Bool)

(assert (=> b!5298614 (= e!3293442 (nullableZipper!1319 (set.union lt!2164849 lt!2164872)))))

(declare-fun b!5298615 () Bool)

(assert (=> b!5298615 (= e!3293442 (matchZipper!1182 (derivationStepZipper!1181 (set.union lt!2164849 lt!2164872) (head!11356 (t!374320 s!2326))) (tail!10453 (t!374320 s!2326))))))

(assert (= (and d!1703925 c!919639) b!5298614))

(assert (= (and d!1703925 (not c!919639)) b!5298615))

(assert (=> d!1703925 m!6336062))

(declare-fun m!6336074 () Bool)

(assert (=> b!5298614 m!6336074))

(assert (=> b!5298615 m!6336066))

(assert (=> b!5298615 m!6336066))

(declare-fun m!6336076 () Bool)

(assert (=> b!5298615 m!6336076))

(assert (=> b!5298615 m!6336070))

(assert (=> b!5298615 m!6336076))

(assert (=> b!5298615 m!6336070))

(declare-fun m!6336078 () Bool)

(assert (=> b!5298615 m!6336078))

(assert (=> b!5298428 d!1703925))

(declare-fun bm!377686 () Bool)

(declare-fun call!377693 () Bool)

(declare-fun c!919644 () Bool)

(assert (=> bm!377686 (= call!377693 (validRegex!6674 (ite c!919644 (regTwo!30389 r!7292) (regTwo!30388 r!7292))))))

(declare-fun b!5298634 () Bool)

(declare-fun e!3293461 () Bool)

(declare-fun call!377691 () Bool)

(assert (=> b!5298634 (= e!3293461 call!377691)))

(declare-fun b!5298635 () Bool)

(declare-fun res!2247377 () Bool)

(declare-fun e!3293462 () Bool)

(assert (=> b!5298635 (=> (not res!2247377) (not e!3293462))))

(declare-fun call!377692 () Bool)

(assert (=> b!5298635 (= res!2247377 call!377692)))

(declare-fun e!3293458 () Bool)

(assert (=> b!5298635 (= e!3293458 e!3293462)))

(declare-fun b!5298636 () Bool)

(declare-fun e!3293459 () Bool)

(assert (=> b!5298636 (= e!3293459 e!3293458)))

(assert (=> b!5298636 (= c!919644 (is-Union!14938 r!7292))))

(declare-fun c!919645 () Bool)

(declare-fun bm!377687 () Bool)

(assert (=> bm!377687 (= call!377691 (validRegex!6674 (ite c!919645 (reg!15267 r!7292) (ite c!919644 (regOne!30389 r!7292) (regOne!30388 r!7292)))))))

(declare-fun b!5298637 () Bool)

(declare-fun e!3293460 () Bool)

(assert (=> b!5298637 (= e!3293460 call!377693)))

(declare-fun bm!377688 () Bool)

(assert (=> bm!377688 (= call!377692 call!377691)))

(declare-fun b!5298638 () Bool)

(assert (=> b!5298638 (= e!3293462 call!377693)))

(declare-fun b!5298639 () Bool)

(assert (=> b!5298639 (= e!3293459 e!3293461)))

(declare-fun res!2247376 () Bool)

(assert (=> b!5298639 (= res!2247376 (not (nullable!5107 (reg!15267 r!7292))))))

(assert (=> b!5298639 (=> (not res!2247376) (not e!3293461))))

(declare-fun d!1703927 () Bool)

(declare-fun res!2247378 () Bool)

(declare-fun e!3293463 () Bool)

(assert (=> d!1703927 (=> res!2247378 e!3293463)))

(assert (=> d!1703927 (= res!2247378 (is-ElementMatch!14938 r!7292))))

(assert (=> d!1703927 (= (validRegex!6674 r!7292) e!3293463)))

(declare-fun b!5298640 () Bool)

(assert (=> b!5298640 (= e!3293463 e!3293459)))

(assert (=> b!5298640 (= c!919645 (is-Star!14938 r!7292))))

(declare-fun b!5298641 () Bool)

(declare-fun e!3293457 () Bool)

(assert (=> b!5298641 (= e!3293457 e!3293460)))

(declare-fun res!2247375 () Bool)

(assert (=> b!5298641 (=> (not res!2247375) (not e!3293460))))

(assert (=> b!5298641 (= res!2247375 call!377692)))

(declare-fun b!5298642 () Bool)

(declare-fun res!2247374 () Bool)

(assert (=> b!5298642 (=> res!2247374 e!3293457)))

(assert (=> b!5298642 (= res!2247374 (not (is-Concat!23783 r!7292)))))

(assert (=> b!5298642 (= e!3293458 e!3293457)))

(assert (= (and d!1703927 (not res!2247378)) b!5298640))

(assert (= (and b!5298640 c!919645) b!5298639))

(assert (= (and b!5298640 (not c!919645)) b!5298636))

(assert (= (and b!5298639 res!2247376) b!5298634))

(assert (= (and b!5298636 c!919644) b!5298635))

(assert (= (and b!5298636 (not c!919644)) b!5298642))

(assert (= (and b!5298635 res!2247377) b!5298638))

(assert (= (and b!5298642 (not res!2247374)) b!5298641))

(assert (= (and b!5298641 res!2247375) b!5298637))

(assert (= (or b!5298638 b!5298637) bm!377686))

(assert (= (or b!5298635 b!5298641) bm!377688))

(assert (= (or b!5298634 bm!377688) bm!377687))

(declare-fun m!6336080 () Bool)

(assert (=> bm!377686 m!6336080))

(declare-fun m!6336082 () Bool)

(assert (=> bm!377687 m!6336082))

(declare-fun m!6336084 () Bool)

(assert (=> b!5298639 m!6336084))

(assert (=> start!559040 d!1703927))

(declare-fun b!5298661 () Bool)

(declare-fun lt!2165031 () Unit!153270)

(declare-fun lt!2165032 () Unit!153270)

(assert (=> b!5298661 (= lt!2165031 lt!2165032)))

(declare-fun ++!13299 (List!61115 List!61115) List!61115)

(assert (=> b!5298661 (= (++!13299 (++!13299 Nil!60991 (Cons!60991 (h!67439 s!2326) Nil!60991)) (t!374320 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1714 (List!61115 C!30146 List!61115 List!61115) Unit!153270)

(assert (=> b!5298661 (= lt!2165032 (lemmaMoveElementToOtherListKeepsConcatEq!1714 Nil!60991 (h!67439 s!2326) (t!374320 s!2326) s!2326))))

(declare-fun e!3293474 () Option!15049)

(assert (=> b!5298661 (= e!3293474 (findConcatSeparation!1463 (regOne!30388 r!7292) (regTwo!30388 r!7292) (++!13299 Nil!60991 (Cons!60991 (h!67439 s!2326) Nil!60991)) (t!374320 s!2326) s!2326))))

(declare-fun b!5298662 () Bool)

(declare-fun e!3293477 () Bool)

(declare-fun lt!2165033 () Option!15049)

(declare-fun get!20974 (Option!15049) tuple2!64274)

(assert (=> b!5298662 (= e!3293477 (= (++!13299 (_1!35440 (get!20974 lt!2165033)) (_2!35440 (get!20974 lt!2165033))) s!2326))))

(declare-fun b!5298663 () Bool)

(declare-fun res!2247389 () Bool)

(assert (=> b!5298663 (=> (not res!2247389) (not e!3293477))))

(assert (=> b!5298663 (= res!2247389 (matchR!7123 (regOne!30388 r!7292) (_1!35440 (get!20974 lt!2165033))))))

(declare-fun b!5298664 () Bool)

(declare-fun e!3293478 () Bool)

(assert (=> b!5298664 (= e!3293478 (not (isDefined!11752 lt!2165033)))))

(declare-fun b!5298666 () Bool)

(declare-fun e!3293476 () Option!15049)

(assert (=> b!5298666 (= e!3293476 e!3293474)))

(declare-fun c!919650 () Bool)

(assert (=> b!5298666 (= c!919650 (is-Nil!60991 s!2326))))

(declare-fun b!5298667 () Bool)

(assert (=> b!5298667 (= e!3293476 (Some!15048 (tuple2!64275 Nil!60991 s!2326)))))

(declare-fun b!5298665 () Bool)

(declare-fun res!2247390 () Bool)

(assert (=> b!5298665 (=> (not res!2247390) (not e!3293477))))

(assert (=> b!5298665 (= res!2247390 (matchR!7123 (regTwo!30388 r!7292) (_2!35440 (get!20974 lt!2165033))))))

(declare-fun d!1703929 () Bool)

(assert (=> d!1703929 e!3293478))

(declare-fun res!2247391 () Bool)

(assert (=> d!1703929 (=> res!2247391 e!3293478)))

(assert (=> d!1703929 (= res!2247391 e!3293477)))

(declare-fun res!2247393 () Bool)

(assert (=> d!1703929 (=> (not res!2247393) (not e!3293477))))

(assert (=> d!1703929 (= res!2247393 (isDefined!11752 lt!2165033))))

(assert (=> d!1703929 (= lt!2165033 e!3293476)))

(declare-fun c!919651 () Bool)

(declare-fun e!3293475 () Bool)

(assert (=> d!1703929 (= c!919651 e!3293475)))

(declare-fun res!2247392 () Bool)

(assert (=> d!1703929 (=> (not res!2247392) (not e!3293475))))

(assert (=> d!1703929 (= res!2247392 (matchR!7123 (regOne!30388 r!7292) Nil!60991))))

(assert (=> d!1703929 (validRegex!6674 (regOne!30388 r!7292))))

(assert (=> d!1703929 (= (findConcatSeparation!1463 (regOne!30388 r!7292) (regTwo!30388 r!7292) Nil!60991 s!2326 s!2326) lt!2165033)))

(declare-fun b!5298668 () Bool)

(assert (=> b!5298668 (= e!3293475 (matchR!7123 (regTwo!30388 r!7292) s!2326))))

(declare-fun b!5298669 () Bool)

(assert (=> b!5298669 (= e!3293474 None!15048)))

(assert (= (and d!1703929 res!2247392) b!5298668))

(assert (= (and d!1703929 c!919651) b!5298667))

(assert (= (and d!1703929 (not c!919651)) b!5298666))

(assert (= (and b!5298666 c!919650) b!5298669))

(assert (= (and b!5298666 (not c!919650)) b!5298661))

(assert (= (and d!1703929 res!2247393) b!5298663))

(assert (= (and b!5298663 res!2247389) b!5298665))

(assert (= (and b!5298665 res!2247390) b!5298662))

(assert (= (and d!1703929 (not res!2247391)) b!5298664))

(declare-fun m!6336086 () Bool)

(assert (=> b!5298668 m!6336086))

(declare-fun m!6336088 () Bool)

(assert (=> b!5298661 m!6336088))

(assert (=> b!5298661 m!6336088))

(declare-fun m!6336090 () Bool)

(assert (=> b!5298661 m!6336090))

(declare-fun m!6336092 () Bool)

(assert (=> b!5298661 m!6336092))

(assert (=> b!5298661 m!6336088))

(declare-fun m!6336094 () Bool)

(assert (=> b!5298661 m!6336094))

(declare-fun m!6336096 () Bool)

(assert (=> b!5298662 m!6336096))

(declare-fun m!6336098 () Bool)

(assert (=> b!5298662 m!6336098))

(assert (=> b!5298665 m!6336096))

(declare-fun m!6336100 () Bool)

(assert (=> b!5298665 m!6336100))

(declare-fun m!6336102 () Bool)

(assert (=> b!5298664 m!6336102))

(assert (=> d!1703929 m!6336102))

(declare-fun m!6336104 () Bool)

(assert (=> d!1703929 m!6336104))

(assert (=> d!1703929 m!6335766))

(assert (=> b!5298663 m!6336096))

(declare-fun m!6336106 () Bool)

(assert (=> b!5298663 m!6336106))

(assert (=> b!5298408 d!1703929))

(declare-fun d!1703931 () Bool)

(declare-fun choose!39593 (Int) Bool)

(assert (=> d!1703931 (= (Exists!2119 lambda!268874) (choose!39593 lambda!268874))))

(declare-fun bs!1228874 () Bool)

(assert (= bs!1228874 d!1703931))

(declare-fun m!6336108 () Bool)

(assert (=> bs!1228874 m!6336108))

(assert (=> b!5298408 d!1703931))

(declare-fun d!1703933 () Bool)

(assert (=> d!1703933 (= (Exists!2119 lambda!268875) (choose!39593 lambda!268875))))

(declare-fun bs!1228875 () Bool)

(assert (= bs!1228875 d!1703933))

(declare-fun m!6336110 () Bool)

(assert (=> bs!1228875 m!6336110))

(assert (=> b!5298408 d!1703933))

(declare-fun bs!1228876 () Bool)

(declare-fun d!1703935 () Bool)

(assert (= bs!1228876 (and d!1703935 b!5298427)))

(declare-fun lambda!268917 () Int)

(assert (=> bs!1228876 (not (= lambda!268917 lambda!268878))))

(assert (=> bs!1228876 (not (= lambda!268917 lambda!268880))))

(assert (=> bs!1228876 (= (and (= (regOne!30388 r!7292) (regTwo!30388 (regOne!30388 r!7292))) (= (regTwo!30388 r!7292) lt!2164843)) (= lambda!268917 lambda!268879))))

(assert (=> bs!1228876 (= (and (= (regOne!30388 r!7292) (regOne!30388 (regOne!30388 r!7292))) (= (regTwo!30388 r!7292) lt!2164865)) (= lambda!268917 lambda!268877))))

(declare-fun bs!1228877 () Bool)

(assert (= bs!1228877 (and d!1703935 b!5298408)))

(assert (=> bs!1228877 (= lambda!268917 lambda!268874)))

(assert (=> bs!1228877 (not (= lambda!268917 lambda!268875))))

(assert (=> d!1703935 true))

(assert (=> d!1703935 true))

(assert (=> d!1703935 true))

(assert (=> d!1703935 (= (isDefined!11752 (findConcatSeparation!1463 (regOne!30388 r!7292) (regTwo!30388 r!7292) Nil!60991 s!2326 s!2326)) (Exists!2119 lambda!268917))))

(declare-fun lt!2165036 () Unit!153270)

(declare-fun choose!39594 (Regex!14938 Regex!14938 List!61115) Unit!153270)

(assert (=> d!1703935 (= lt!2165036 (choose!39594 (regOne!30388 r!7292) (regTwo!30388 r!7292) s!2326))))

(assert (=> d!1703935 (validRegex!6674 (regOne!30388 r!7292))))

(assert (=> d!1703935 (= (lemmaFindConcatSeparationEquivalentToExists!1227 (regOne!30388 r!7292) (regTwo!30388 r!7292) s!2326) lt!2165036)))

(declare-fun bs!1228878 () Bool)

(assert (= bs!1228878 d!1703935))

(declare-fun m!6336112 () Bool)

(assert (=> bs!1228878 m!6336112))

(declare-fun m!6336114 () Bool)

(assert (=> bs!1228878 m!6336114))

(assert (=> bs!1228878 m!6335766))

(assert (=> bs!1228878 m!6335830))

(assert (=> bs!1228878 m!6335830))

(assert (=> bs!1228878 m!6335832))

(assert (=> b!5298408 d!1703935))

(declare-fun bs!1228879 () Bool)

(declare-fun d!1703937 () Bool)

(assert (= bs!1228879 (and d!1703937 b!5298427)))

(declare-fun lambda!268922 () Int)

(assert (=> bs!1228879 (not (= lambda!268922 lambda!268878))))

(assert (=> bs!1228879 (not (= lambda!268922 lambda!268880))))

(assert (=> bs!1228879 (= (and (= (regOne!30388 r!7292) (regTwo!30388 (regOne!30388 r!7292))) (= (regTwo!30388 r!7292) lt!2164843)) (= lambda!268922 lambda!268879))))

(declare-fun bs!1228880 () Bool)

(assert (= bs!1228880 (and d!1703937 d!1703935)))

(assert (=> bs!1228880 (= lambda!268922 lambda!268917)))

(assert (=> bs!1228879 (= (and (= (regOne!30388 r!7292) (regOne!30388 (regOne!30388 r!7292))) (= (regTwo!30388 r!7292) lt!2164865)) (= lambda!268922 lambda!268877))))

(declare-fun bs!1228881 () Bool)

(assert (= bs!1228881 (and d!1703937 b!5298408)))

(assert (=> bs!1228881 (= lambda!268922 lambda!268874)))

(assert (=> bs!1228881 (not (= lambda!268922 lambda!268875))))

(assert (=> d!1703937 true))

(assert (=> d!1703937 true))

(assert (=> d!1703937 true))

(declare-fun bs!1228882 () Bool)

(assert (= bs!1228882 d!1703937))

(declare-fun lambda!268923 () Int)

(assert (=> bs!1228882 (not (= lambda!268923 lambda!268922))))

(assert (=> bs!1228879 (= (and (= (regOne!30388 r!7292) (regOne!30388 (regOne!30388 r!7292))) (= (regTwo!30388 r!7292) lt!2164865)) (= lambda!268923 lambda!268878))))

(assert (=> bs!1228879 (= (and (= (regOne!30388 r!7292) (regTwo!30388 (regOne!30388 r!7292))) (= (regTwo!30388 r!7292) lt!2164843)) (= lambda!268923 lambda!268880))))

(assert (=> bs!1228879 (not (= lambda!268923 lambda!268879))))

(assert (=> bs!1228880 (not (= lambda!268923 lambda!268917))))

(assert (=> bs!1228879 (not (= lambda!268923 lambda!268877))))

(assert (=> bs!1228881 (not (= lambda!268923 lambda!268874))))

(assert (=> bs!1228881 (= lambda!268923 lambda!268875)))

(assert (=> d!1703937 true))

(assert (=> d!1703937 true))

(assert (=> d!1703937 true))

(assert (=> d!1703937 (= (Exists!2119 lambda!268922) (Exists!2119 lambda!268923))))

(declare-fun lt!2165039 () Unit!153270)

(declare-fun choose!39595 (Regex!14938 Regex!14938 List!61115) Unit!153270)

(assert (=> d!1703937 (= lt!2165039 (choose!39595 (regOne!30388 r!7292) (regTwo!30388 r!7292) s!2326))))

(assert (=> d!1703937 (validRegex!6674 (regOne!30388 r!7292))))

(assert (=> d!1703937 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!773 (regOne!30388 r!7292) (regTwo!30388 r!7292) s!2326) lt!2165039)))

(declare-fun m!6336116 () Bool)

(assert (=> bs!1228882 m!6336116))

(declare-fun m!6336118 () Bool)

(assert (=> bs!1228882 m!6336118))

(declare-fun m!6336120 () Bool)

(assert (=> bs!1228882 m!6336120))

(assert (=> bs!1228882 m!6335766))

(assert (=> b!5298408 d!1703937))

(declare-fun d!1703939 () Bool)

(declare-fun isEmpty!32954 (Option!15049) Bool)

(assert (=> d!1703939 (= (isDefined!11752 (findConcatSeparation!1463 (regOne!30388 r!7292) (regTwo!30388 r!7292) Nil!60991 s!2326 s!2326)) (not (isEmpty!32954 (findConcatSeparation!1463 (regOne!30388 r!7292) (regTwo!30388 r!7292) Nil!60991 s!2326 s!2326))))))

(declare-fun bs!1228883 () Bool)

(assert (= bs!1228883 d!1703939))

(assert (=> bs!1228883 m!6335830))

(declare-fun m!6336122 () Bool)

(assert (=> bs!1228883 m!6336122))

(assert (=> b!5298408 d!1703939))

(declare-fun d!1703941 () Bool)

(declare-fun c!919652 () Bool)

(assert (=> d!1703941 (= c!919652 (isEmpty!32953 s!2326))))

(declare-fun e!3293485 () Bool)

(assert (=> d!1703941 (= (matchZipper!1182 lt!2164844 s!2326) e!3293485)))

(declare-fun b!5298682 () Bool)

(assert (=> b!5298682 (= e!3293485 (nullableZipper!1319 lt!2164844))))

(declare-fun b!5298683 () Bool)

(assert (=> b!5298683 (= e!3293485 (matchZipper!1182 (derivationStepZipper!1181 lt!2164844 (head!11356 s!2326)) (tail!10453 s!2326)))))

(assert (= (and d!1703941 c!919652) b!5298682))

(assert (= (and d!1703941 (not c!919652)) b!5298683))

(declare-fun m!6336124 () Bool)

(assert (=> d!1703941 m!6336124))

(declare-fun m!6336126 () Bool)

(assert (=> b!5298682 m!6336126))

(declare-fun m!6336128 () Bool)

(assert (=> b!5298683 m!6336128))

(assert (=> b!5298683 m!6336128))

(declare-fun m!6336130 () Bool)

(assert (=> b!5298683 m!6336130))

(declare-fun m!6336132 () Bool)

(assert (=> b!5298683 m!6336132))

(assert (=> b!5298683 m!6336130))

(assert (=> b!5298683 m!6336132))

(declare-fun m!6336134 () Bool)

(assert (=> b!5298683 m!6336134))

(assert (=> b!5298427 d!1703941))

(declare-fun d!1703943 () Bool)

(declare-fun c!919653 () Bool)

(assert (=> d!1703943 (= c!919653 (isEmpty!32953 s!2326))))

(declare-fun e!3293486 () Bool)

(assert (=> d!1703943 (= (matchZipper!1182 z!1189 s!2326) e!3293486)))

(declare-fun b!5298684 () Bool)

(assert (=> b!5298684 (= e!3293486 (nullableZipper!1319 z!1189))))

(declare-fun b!5298685 () Bool)

(assert (=> b!5298685 (= e!3293486 (matchZipper!1182 (derivationStepZipper!1181 z!1189 (head!11356 s!2326)) (tail!10453 s!2326)))))

(assert (= (and d!1703943 c!919653) b!5298684))

(assert (= (and d!1703943 (not c!919653)) b!5298685))

(assert (=> d!1703943 m!6336124))

(declare-fun m!6336136 () Bool)

(assert (=> b!5298684 m!6336136))

(assert (=> b!5298685 m!6336128))

(assert (=> b!5298685 m!6336128))

(declare-fun m!6336138 () Bool)

(assert (=> b!5298685 m!6336138))

(assert (=> b!5298685 m!6336132))

(assert (=> b!5298685 m!6336138))

(assert (=> b!5298685 m!6336132))

(declare-fun m!6336140 () Bool)

(assert (=> b!5298685 m!6336140))

(assert (=> b!5298427 d!1703943))

(declare-fun d!1703945 () Bool)

(assert (=> d!1703945 (= (Exists!2119 lambda!268878) (choose!39593 lambda!268878))))

(declare-fun bs!1228884 () Bool)

(assert (= bs!1228884 d!1703945))

(declare-fun m!6336142 () Bool)

(assert (=> bs!1228884 m!6336142))

(assert (=> b!5298427 d!1703945))

(declare-fun b!5298686 () Bool)

(declare-fun lt!2165040 () Unit!153270)

(declare-fun lt!2165041 () Unit!153270)

(assert (=> b!5298686 (= lt!2165040 lt!2165041)))

(assert (=> b!5298686 (= (++!13299 (++!13299 Nil!60991 (Cons!60991 (h!67439 s!2326) Nil!60991)) (t!374320 s!2326)) s!2326)))

(assert (=> b!5298686 (= lt!2165041 (lemmaMoveElementToOtherListKeepsConcatEq!1714 Nil!60991 (h!67439 s!2326) (t!374320 s!2326) s!2326))))

(declare-fun e!3293487 () Option!15049)

(assert (=> b!5298686 (= e!3293487 (findConcatSeparation!1463 (regOne!30388 (regOne!30388 r!7292)) lt!2164865 (++!13299 Nil!60991 (Cons!60991 (h!67439 s!2326) Nil!60991)) (t!374320 s!2326) s!2326))))

(declare-fun b!5298687 () Bool)

(declare-fun e!3293490 () Bool)

(declare-fun lt!2165042 () Option!15049)

(assert (=> b!5298687 (= e!3293490 (= (++!13299 (_1!35440 (get!20974 lt!2165042)) (_2!35440 (get!20974 lt!2165042))) s!2326))))

(declare-fun b!5298688 () Bool)

(declare-fun res!2247406 () Bool)

(assert (=> b!5298688 (=> (not res!2247406) (not e!3293490))))

(assert (=> b!5298688 (= res!2247406 (matchR!7123 (regOne!30388 (regOne!30388 r!7292)) (_1!35440 (get!20974 lt!2165042))))))

(declare-fun b!5298689 () Bool)

(declare-fun e!3293491 () Bool)

(assert (=> b!5298689 (= e!3293491 (not (isDefined!11752 lt!2165042)))))

(declare-fun b!5298691 () Bool)

(declare-fun e!3293489 () Option!15049)

(assert (=> b!5298691 (= e!3293489 e!3293487)))

(declare-fun c!919654 () Bool)

(assert (=> b!5298691 (= c!919654 (is-Nil!60991 s!2326))))

(declare-fun b!5298692 () Bool)

(assert (=> b!5298692 (= e!3293489 (Some!15048 (tuple2!64275 Nil!60991 s!2326)))))

(declare-fun b!5298690 () Bool)

(declare-fun res!2247407 () Bool)

(assert (=> b!5298690 (=> (not res!2247407) (not e!3293490))))

(assert (=> b!5298690 (= res!2247407 (matchR!7123 lt!2164865 (_2!35440 (get!20974 lt!2165042))))))

(declare-fun d!1703947 () Bool)

(assert (=> d!1703947 e!3293491))

(declare-fun res!2247408 () Bool)

(assert (=> d!1703947 (=> res!2247408 e!3293491)))

(assert (=> d!1703947 (= res!2247408 e!3293490)))

(declare-fun res!2247410 () Bool)

(assert (=> d!1703947 (=> (not res!2247410) (not e!3293490))))

(assert (=> d!1703947 (= res!2247410 (isDefined!11752 lt!2165042))))

(assert (=> d!1703947 (= lt!2165042 e!3293489)))

(declare-fun c!919655 () Bool)

(declare-fun e!3293488 () Bool)

(assert (=> d!1703947 (= c!919655 e!3293488)))

(declare-fun res!2247409 () Bool)

(assert (=> d!1703947 (=> (not res!2247409) (not e!3293488))))

(assert (=> d!1703947 (= res!2247409 (matchR!7123 (regOne!30388 (regOne!30388 r!7292)) Nil!60991))))

(assert (=> d!1703947 (validRegex!6674 (regOne!30388 (regOne!30388 r!7292)))))

(assert (=> d!1703947 (= (findConcatSeparation!1463 (regOne!30388 (regOne!30388 r!7292)) lt!2164865 Nil!60991 s!2326 s!2326) lt!2165042)))

(declare-fun b!5298693 () Bool)

(assert (=> b!5298693 (= e!3293488 (matchR!7123 lt!2164865 s!2326))))

(declare-fun b!5298694 () Bool)

(assert (=> b!5298694 (= e!3293487 None!15048)))

(assert (= (and d!1703947 res!2247409) b!5298693))

(assert (= (and d!1703947 c!919655) b!5298692))

(assert (= (and d!1703947 (not c!919655)) b!5298691))

(assert (= (and b!5298691 c!919654) b!5298694))

(assert (= (and b!5298691 (not c!919654)) b!5298686))

(assert (= (and d!1703947 res!2247410) b!5298688))

(assert (= (and b!5298688 res!2247406) b!5298690))

(assert (= (and b!5298690 res!2247407) b!5298687))

(assert (= (and d!1703947 (not res!2247408)) b!5298689))

(assert (=> b!5298693 m!6335826))

(assert (=> b!5298686 m!6336088))

(assert (=> b!5298686 m!6336088))

(assert (=> b!5298686 m!6336090))

(assert (=> b!5298686 m!6336092))

(assert (=> b!5298686 m!6336088))

(declare-fun m!6336144 () Bool)

(assert (=> b!5298686 m!6336144))

(declare-fun m!6336146 () Bool)

(assert (=> b!5298687 m!6336146))

(declare-fun m!6336148 () Bool)

(assert (=> b!5298687 m!6336148))

(assert (=> b!5298690 m!6336146))

(declare-fun m!6336150 () Bool)

(assert (=> b!5298690 m!6336150))

(declare-fun m!6336152 () Bool)

(assert (=> b!5298689 m!6336152))

(assert (=> d!1703947 m!6336152))

(declare-fun m!6336154 () Bool)

(assert (=> d!1703947 m!6336154))

(declare-fun m!6336156 () Bool)

(assert (=> d!1703947 m!6336156))

(assert (=> b!5298688 m!6336146))

(declare-fun m!6336158 () Bool)

(assert (=> b!5298688 m!6336158))

(assert (=> b!5298427 d!1703947))

(declare-fun bs!1228885 () Bool)

(declare-fun d!1703949 () Bool)

(assert (= bs!1228885 (and d!1703949 d!1703937)))

(declare-fun lambda!268924 () Int)

(assert (=> bs!1228885 (= (and (= (regOne!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164865 (regTwo!30388 r!7292))) (= lambda!268924 lambda!268922))))

(declare-fun bs!1228886 () Bool)

(assert (= bs!1228886 (and d!1703949 b!5298427)))

(assert (=> bs!1228886 (not (= lambda!268924 lambda!268880))))

(assert (=> bs!1228886 (= (and (= (regOne!30388 (regOne!30388 r!7292)) (regTwo!30388 (regOne!30388 r!7292))) (= lt!2164865 lt!2164843)) (= lambda!268924 lambda!268879))))

(declare-fun bs!1228887 () Bool)

(assert (= bs!1228887 (and d!1703949 d!1703935)))

(assert (=> bs!1228887 (= (and (= (regOne!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164865 (regTwo!30388 r!7292))) (= lambda!268924 lambda!268917))))

(assert (=> bs!1228886 (= lambda!268924 lambda!268877)))

(declare-fun bs!1228888 () Bool)

(assert (= bs!1228888 (and d!1703949 b!5298408)))

(assert (=> bs!1228888 (= (and (= (regOne!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164865 (regTwo!30388 r!7292))) (= lambda!268924 lambda!268874))))

(assert (=> bs!1228888 (not (= lambda!268924 lambda!268875))))

(assert (=> bs!1228886 (not (= lambda!268924 lambda!268878))))

(assert (=> bs!1228885 (not (= lambda!268924 lambda!268923))))

(assert (=> d!1703949 true))

(assert (=> d!1703949 true))

(assert (=> d!1703949 true))

(declare-fun lambda!268925 () Int)

(assert (=> bs!1228885 (not (= lambda!268925 lambda!268922))))

(declare-fun bs!1228889 () Bool)

(assert (= bs!1228889 d!1703949))

(assert (=> bs!1228889 (not (= lambda!268925 lambda!268924))))

(assert (=> bs!1228886 (= (and (= (regOne!30388 (regOne!30388 r!7292)) (regTwo!30388 (regOne!30388 r!7292))) (= lt!2164865 lt!2164843)) (= lambda!268925 lambda!268880))))

(assert (=> bs!1228886 (not (= lambda!268925 lambda!268879))))

(assert (=> bs!1228887 (not (= lambda!268925 lambda!268917))))

(assert (=> bs!1228886 (not (= lambda!268925 lambda!268877))))

(assert (=> bs!1228888 (not (= lambda!268925 lambda!268874))))

(assert (=> bs!1228888 (= (and (= (regOne!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164865 (regTwo!30388 r!7292))) (= lambda!268925 lambda!268875))))

(assert (=> bs!1228886 (= lambda!268925 lambda!268878)))

(assert (=> bs!1228885 (= (and (= (regOne!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164865 (regTwo!30388 r!7292))) (= lambda!268925 lambda!268923))))

(assert (=> d!1703949 true))

(assert (=> d!1703949 true))

(assert (=> d!1703949 true))

(assert (=> d!1703949 (= (Exists!2119 lambda!268924) (Exists!2119 lambda!268925))))

(declare-fun lt!2165043 () Unit!153270)

(assert (=> d!1703949 (= lt!2165043 (choose!39595 (regOne!30388 (regOne!30388 r!7292)) lt!2164865 s!2326))))

(assert (=> d!1703949 (validRegex!6674 (regOne!30388 (regOne!30388 r!7292)))))

(assert (=> d!1703949 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!773 (regOne!30388 (regOne!30388 r!7292)) lt!2164865 s!2326) lt!2165043)))

(declare-fun m!6336160 () Bool)

(assert (=> bs!1228889 m!6336160))

(declare-fun m!6336162 () Bool)

(assert (=> bs!1228889 m!6336162))

(declare-fun m!6336164 () Bool)

(assert (=> bs!1228889 m!6336164))

(assert (=> bs!1228889 m!6336156))

(assert (=> b!5298427 d!1703949))

(declare-fun d!1703951 () Bool)

(assert (=> d!1703951 (= (Exists!2119 lambda!268879) (choose!39593 lambda!268879))))

(declare-fun bs!1228890 () Bool)

(assert (= bs!1228890 d!1703951))

(declare-fun m!6336166 () Bool)

(assert (=> bs!1228890 m!6336166))

(assert (=> b!5298427 d!1703951))

(declare-fun bs!1228891 () Bool)

(declare-fun d!1703953 () Bool)

(assert (= bs!1228891 (and d!1703953 d!1703919)))

(declare-fun lambda!268928 () Int)

(assert (=> bs!1228891 (= lambda!268928 lambda!268914)))

(declare-fun b!5298715 () Bool)

(declare-fun e!3293505 () Bool)

(declare-fun e!3293508 () Bool)

(assert (=> b!5298715 (= e!3293505 e!3293508)))

(declare-fun c!919665 () Bool)

(assert (=> b!5298715 (= c!919665 (isEmpty!32950 lt!2164850))))

(declare-fun b!5298716 () Bool)

(declare-fun e!3293507 () Regex!14938)

(assert (=> b!5298716 (= e!3293507 EmptyExpr!14938)))

(assert (=> d!1703953 e!3293505))

(declare-fun res!2247415 () Bool)

(assert (=> d!1703953 (=> (not res!2247415) (not e!3293505))))

(declare-fun lt!2165046 () Regex!14938)

(assert (=> d!1703953 (= res!2247415 (validRegex!6674 lt!2165046))))

(declare-fun e!3293504 () Regex!14938)

(assert (=> d!1703953 (= lt!2165046 e!3293504)))

(declare-fun c!919664 () Bool)

(declare-fun e!3293509 () Bool)

(assert (=> d!1703953 (= c!919664 e!3293509)))

(declare-fun res!2247416 () Bool)

(assert (=> d!1703953 (=> (not res!2247416) (not e!3293509))))

(assert (=> d!1703953 (= res!2247416 (is-Cons!60989 lt!2164850))))

(assert (=> d!1703953 (forall!14352 lt!2164850 lambda!268928)))

(assert (=> d!1703953 (= (generalisedConcat!607 lt!2164850) lt!2165046)))

(declare-fun b!5298717 () Bool)

(assert (=> b!5298717 (= e!3293504 (h!67437 lt!2164850))))

(declare-fun b!5298718 () Bool)

(declare-fun e!3293506 () Bool)

(assert (=> b!5298718 (= e!3293508 e!3293506)))

(declare-fun c!919667 () Bool)

(declare-fun tail!10454 (List!61113) List!61113)

(assert (=> b!5298718 (= c!919667 (isEmpty!32950 (tail!10454 lt!2164850)))))

(declare-fun b!5298719 () Bool)

(declare-fun head!11357 (List!61113) Regex!14938)

(assert (=> b!5298719 (= e!3293506 (= lt!2165046 (head!11357 lt!2164850)))))

(declare-fun b!5298720 () Bool)

(assert (=> b!5298720 (= e!3293504 e!3293507)))

(declare-fun c!919666 () Bool)

(assert (=> b!5298720 (= c!919666 (is-Cons!60989 lt!2164850))))

(declare-fun b!5298721 () Bool)

(assert (=> b!5298721 (= e!3293509 (isEmpty!32950 (t!374318 lt!2164850)))))

(declare-fun b!5298722 () Bool)

(declare-fun isEmptyExpr!854 (Regex!14938) Bool)

(assert (=> b!5298722 (= e!3293508 (isEmptyExpr!854 lt!2165046))))

(declare-fun b!5298723 () Bool)

(assert (=> b!5298723 (= e!3293507 (Concat!23783 (h!67437 lt!2164850) (generalisedConcat!607 (t!374318 lt!2164850))))))

(declare-fun b!5298724 () Bool)

(declare-fun isConcat!377 (Regex!14938) Bool)

(assert (=> b!5298724 (= e!3293506 (isConcat!377 lt!2165046))))

(assert (= (and d!1703953 res!2247416) b!5298721))

(assert (= (and d!1703953 c!919664) b!5298717))

(assert (= (and d!1703953 (not c!919664)) b!5298720))

(assert (= (and b!5298720 c!919666) b!5298723))

(assert (= (and b!5298720 (not c!919666)) b!5298716))

(assert (= (and d!1703953 res!2247415) b!5298715))

(assert (= (and b!5298715 c!919665) b!5298722))

(assert (= (and b!5298715 (not c!919665)) b!5298718))

(assert (= (and b!5298718 c!919667) b!5298719))

(assert (= (and b!5298718 (not c!919667)) b!5298724))

(declare-fun m!6336168 () Bool)

(assert (=> b!5298722 m!6336168))

(declare-fun m!6336170 () Bool)

(assert (=> b!5298724 m!6336170))

(declare-fun m!6336172 () Bool)

(assert (=> b!5298719 m!6336172))

(declare-fun m!6336174 () Bool)

(assert (=> b!5298715 m!6336174))

(declare-fun m!6336176 () Bool)

(assert (=> b!5298721 m!6336176))

(declare-fun m!6336178 () Bool)

(assert (=> b!5298718 m!6336178))

(assert (=> b!5298718 m!6336178))

(declare-fun m!6336180 () Bool)

(assert (=> b!5298718 m!6336180))

(declare-fun m!6336182 () Bool)

(assert (=> b!5298723 m!6336182))

(declare-fun m!6336184 () Bool)

(assert (=> d!1703953 m!6336184))

(declare-fun m!6336186 () Bool)

(assert (=> d!1703953 m!6336186))

(assert (=> b!5298427 d!1703953))

(declare-fun d!1703955 () Bool)

(assert (=> d!1703955 (= (matchR!7123 lt!2164870 s!2326) (matchZipper!1182 lt!2164829 s!2326))))

(declare-fun lt!2165049 () Unit!153270)

(declare-fun choose!39596 ((Set Context!8644) List!61114 Regex!14938 List!61115) Unit!153270)

(assert (=> d!1703955 (= lt!2165049 (choose!39596 lt!2164829 lt!2164855 lt!2164870 s!2326))))

(assert (=> d!1703955 (validRegex!6674 lt!2164870)))

(assert (=> d!1703955 (= (theoremZipperRegexEquiv!348 lt!2164829 lt!2164855 lt!2164870 s!2326) lt!2165049)))

(declare-fun bs!1228892 () Bool)

(assert (= bs!1228892 d!1703955))

(assert (=> bs!1228892 m!6335820))

(assert (=> bs!1228892 m!6335800))

(declare-fun m!6336188 () Bool)

(assert (=> bs!1228892 m!6336188))

(declare-fun m!6336190 () Bool)

(assert (=> bs!1228892 m!6336190))

(assert (=> b!5298427 d!1703955))

(declare-fun d!1703957 () Bool)

(assert (=> d!1703957 (= (matchR!7123 lt!2164865 s!2326) (matchZipper!1182 lt!2164844 s!2326))))

(declare-fun lt!2165050 () Unit!153270)

(assert (=> d!1703957 (= lt!2165050 (choose!39596 lt!2164844 (Cons!60990 lt!2164828 Nil!60990) lt!2164865 s!2326))))

(assert (=> d!1703957 (validRegex!6674 lt!2164865)))

(assert (=> d!1703957 (= (theoremZipperRegexEquiv!348 lt!2164844 (Cons!60990 lt!2164828 Nil!60990) lt!2164865 s!2326) lt!2165050)))

(declare-fun bs!1228893 () Bool)

(assert (= bs!1228893 d!1703957))

(assert (=> bs!1228893 m!6335826))

(assert (=> bs!1228893 m!6335788))

(declare-fun m!6336192 () Bool)

(assert (=> bs!1228893 m!6336192))

(declare-fun m!6336194 () Bool)

(assert (=> bs!1228893 m!6336194))

(assert (=> b!5298427 d!1703957))

(declare-fun bm!377691 () Bool)

(declare-fun call!377696 () Bool)

(assert (=> bm!377691 (= call!377696 (isEmpty!32953 s!2326))))

(declare-fun b!5298753 () Bool)

(declare-fun e!3293524 () Bool)

(declare-fun lt!2165053 () Bool)

(assert (=> b!5298753 (= e!3293524 (not lt!2165053))))

(declare-fun b!5298754 () Bool)

(declare-fun res!2247434 () Bool)

(declare-fun e!3293529 () Bool)

(assert (=> b!5298754 (=> res!2247434 e!3293529)))

(declare-fun e!3293528 () Bool)

(assert (=> b!5298754 (= res!2247434 e!3293528)))

(declare-fun res!2247440 () Bool)

(assert (=> b!5298754 (=> (not res!2247440) (not e!3293528))))

(assert (=> b!5298754 (= res!2247440 lt!2165053)))

(declare-fun b!5298755 () Bool)

(declare-fun e!3293526 () Bool)

(declare-fun e!3293525 () Bool)

(assert (=> b!5298755 (= e!3293526 e!3293525)))

(declare-fun res!2247437 () Bool)

(assert (=> b!5298755 (=> res!2247437 e!3293525)))

(assert (=> b!5298755 (= res!2247437 call!377696)))

(declare-fun b!5298756 () Bool)

(assert (=> b!5298756 (= e!3293528 (= (head!11356 s!2326) (c!919624 lt!2164865)))))

(declare-fun b!5298757 () Bool)

(assert (=> b!5298757 (= e!3293529 e!3293526)))

(declare-fun res!2247438 () Bool)

(assert (=> b!5298757 (=> (not res!2247438) (not e!3293526))))

(assert (=> b!5298757 (= res!2247438 (not lt!2165053))))

(declare-fun d!1703959 () Bool)

(declare-fun e!3293527 () Bool)

(assert (=> d!1703959 e!3293527))

(declare-fun c!919676 () Bool)

(assert (=> d!1703959 (= c!919676 (is-EmptyExpr!14938 lt!2164865))))

(declare-fun e!3293530 () Bool)

(assert (=> d!1703959 (= lt!2165053 e!3293530)))

(declare-fun c!919675 () Bool)

(assert (=> d!1703959 (= c!919675 (isEmpty!32953 s!2326))))

(assert (=> d!1703959 (validRegex!6674 lt!2164865)))

(assert (=> d!1703959 (= (matchR!7123 lt!2164865 s!2326) lt!2165053)))

(declare-fun b!5298758 () Bool)

(assert (=> b!5298758 (= e!3293527 e!3293524)))

(declare-fun c!919674 () Bool)

(assert (=> b!5298758 (= c!919674 (is-EmptyLang!14938 lt!2164865))))

(declare-fun b!5298759 () Bool)

(declare-fun res!2247436 () Bool)

(assert (=> b!5298759 (=> res!2247436 e!3293529)))

(assert (=> b!5298759 (= res!2247436 (not (is-ElementMatch!14938 lt!2164865)))))

(assert (=> b!5298759 (= e!3293524 e!3293529)))

(declare-fun b!5298760 () Bool)

(assert (=> b!5298760 (= e!3293527 (= lt!2165053 call!377696))))

(declare-fun b!5298761 () Bool)

(assert (=> b!5298761 (= e!3293530 (nullable!5107 lt!2164865))))

(declare-fun b!5298762 () Bool)

(declare-fun derivativeStep!4140 (Regex!14938 C!30146) Regex!14938)

(assert (=> b!5298762 (= e!3293530 (matchR!7123 (derivativeStep!4140 lt!2164865 (head!11356 s!2326)) (tail!10453 s!2326)))))

(declare-fun b!5298763 () Bool)

(declare-fun res!2247439 () Bool)

(assert (=> b!5298763 (=> (not res!2247439) (not e!3293528))))

(assert (=> b!5298763 (= res!2247439 (isEmpty!32953 (tail!10453 s!2326)))))

(declare-fun b!5298764 () Bool)

(assert (=> b!5298764 (= e!3293525 (not (= (head!11356 s!2326) (c!919624 lt!2164865))))))

(declare-fun b!5298765 () Bool)

(declare-fun res!2247435 () Bool)

(assert (=> b!5298765 (=> (not res!2247435) (not e!3293528))))

(assert (=> b!5298765 (= res!2247435 (not call!377696))))

(declare-fun b!5298766 () Bool)

(declare-fun res!2247433 () Bool)

(assert (=> b!5298766 (=> res!2247433 e!3293525)))

(assert (=> b!5298766 (= res!2247433 (not (isEmpty!32953 (tail!10453 s!2326))))))

(assert (= (and d!1703959 c!919675) b!5298761))

(assert (= (and d!1703959 (not c!919675)) b!5298762))

(assert (= (and d!1703959 c!919676) b!5298760))

(assert (= (and d!1703959 (not c!919676)) b!5298758))

(assert (= (and b!5298758 c!919674) b!5298753))

(assert (= (and b!5298758 (not c!919674)) b!5298759))

(assert (= (and b!5298759 (not res!2247436)) b!5298754))

(assert (= (and b!5298754 res!2247440) b!5298765))

(assert (= (and b!5298765 res!2247435) b!5298763))

(assert (= (and b!5298763 res!2247439) b!5298756))

(assert (= (and b!5298754 (not res!2247434)) b!5298757))

(assert (= (and b!5298757 res!2247438) b!5298755))

(assert (= (and b!5298755 (not res!2247437)) b!5298766))

(assert (= (and b!5298766 (not res!2247433)) b!5298764))

(assert (= (or b!5298760 b!5298755 b!5298765) bm!377691))

(assert (=> b!5298766 m!6336132))

(assert (=> b!5298766 m!6336132))

(declare-fun m!6336196 () Bool)

(assert (=> b!5298766 m!6336196))

(assert (=> b!5298764 m!6336128))

(declare-fun m!6336198 () Bool)

(assert (=> b!5298761 m!6336198))

(assert (=> b!5298763 m!6336132))

(assert (=> b!5298763 m!6336132))

(assert (=> b!5298763 m!6336196))

(assert (=> d!1703959 m!6336124))

(assert (=> d!1703959 m!6336194))

(assert (=> b!5298756 m!6336128))

(assert (=> bm!377691 m!6336124))

(assert (=> b!5298762 m!6336128))

(assert (=> b!5298762 m!6336128))

(declare-fun m!6336200 () Bool)

(assert (=> b!5298762 m!6336200))

(assert (=> b!5298762 m!6336132))

(assert (=> b!5298762 m!6336200))

(assert (=> b!5298762 m!6336132))

(declare-fun m!6336202 () Bool)

(assert (=> b!5298762 m!6336202))

(assert (=> b!5298427 d!1703959))

(declare-fun d!1703961 () Bool)

(assert (=> d!1703961 (= (Exists!2119 lambda!268877) (choose!39593 lambda!268877))))

(declare-fun bs!1228894 () Bool)

(assert (= bs!1228894 d!1703961))

(declare-fun m!6336204 () Bool)

(assert (=> bs!1228894 m!6336204))

(assert (=> b!5298427 d!1703961))

(declare-fun bs!1228895 () Bool)

(declare-fun d!1703963 () Bool)

(assert (= bs!1228895 (and d!1703963 d!1703937)))

(declare-fun lambda!268929 () Int)

(assert (=> bs!1228895 (= (and (= (regOne!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164865 (regTwo!30388 r!7292))) (= lambda!268929 lambda!268922))))

(declare-fun bs!1228896 () Bool)

(assert (= bs!1228896 (and d!1703963 d!1703949)))

(assert (=> bs!1228896 (= lambda!268929 lambda!268924)))

(declare-fun bs!1228897 () Bool)

(assert (= bs!1228897 (and d!1703963 b!5298427)))

(assert (=> bs!1228897 (not (= lambda!268929 lambda!268880))))

(assert (=> bs!1228897 (= (and (= (regOne!30388 (regOne!30388 r!7292)) (regTwo!30388 (regOne!30388 r!7292))) (= lt!2164865 lt!2164843)) (= lambda!268929 lambda!268879))))

(declare-fun bs!1228898 () Bool)

(assert (= bs!1228898 (and d!1703963 d!1703935)))

(assert (=> bs!1228898 (= (and (= (regOne!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164865 (regTwo!30388 r!7292))) (= lambda!268929 lambda!268917))))

(assert (=> bs!1228897 (= lambda!268929 lambda!268877)))

(declare-fun bs!1228899 () Bool)

(assert (= bs!1228899 (and d!1703963 b!5298408)))

(assert (=> bs!1228899 (= (and (= (regOne!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164865 (regTwo!30388 r!7292))) (= lambda!268929 lambda!268874))))

(assert (=> bs!1228899 (not (= lambda!268929 lambda!268875))))

(assert (=> bs!1228896 (not (= lambda!268929 lambda!268925))))

(assert (=> bs!1228897 (not (= lambda!268929 lambda!268878))))

(assert (=> bs!1228895 (not (= lambda!268929 lambda!268923))))

(assert (=> d!1703963 true))

(assert (=> d!1703963 true))

(assert (=> d!1703963 true))

(assert (=> d!1703963 (= (isDefined!11752 (findConcatSeparation!1463 (regOne!30388 (regOne!30388 r!7292)) lt!2164865 Nil!60991 s!2326 s!2326)) (Exists!2119 lambda!268929))))

(declare-fun lt!2165054 () Unit!153270)

(assert (=> d!1703963 (= lt!2165054 (choose!39594 (regOne!30388 (regOne!30388 r!7292)) lt!2164865 s!2326))))

(assert (=> d!1703963 (validRegex!6674 (regOne!30388 (regOne!30388 r!7292)))))

(assert (=> d!1703963 (= (lemmaFindConcatSeparationEquivalentToExists!1227 (regOne!30388 (regOne!30388 r!7292)) lt!2164865 s!2326) lt!2165054)))

(declare-fun bs!1228900 () Bool)

(assert (= bs!1228900 d!1703963))

(declare-fun m!6336206 () Bool)

(assert (=> bs!1228900 m!6336206))

(declare-fun m!6336208 () Bool)

(assert (=> bs!1228900 m!6336208))

(assert (=> bs!1228900 m!6336156))

(assert (=> bs!1228900 m!6335792))

(assert (=> bs!1228900 m!6335792))

(assert (=> bs!1228900 m!6335806))

(assert (=> b!5298427 d!1703963))

(declare-fun d!1703965 () Bool)

(declare-fun c!919677 () Bool)

(assert (=> d!1703965 (= c!919677 (isEmpty!32953 s!2326))))

(declare-fun e!3293531 () Bool)

(assert (=> d!1703965 (= (matchZipper!1182 lt!2164829 s!2326) e!3293531)))

(declare-fun b!5298767 () Bool)

(assert (=> b!5298767 (= e!3293531 (nullableZipper!1319 lt!2164829))))

(declare-fun b!5298768 () Bool)

(assert (=> b!5298768 (= e!3293531 (matchZipper!1182 (derivationStepZipper!1181 lt!2164829 (head!11356 s!2326)) (tail!10453 s!2326)))))

(assert (= (and d!1703965 c!919677) b!5298767))

(assert (= (and d!1703965 (not c!919677)) b!5298768))

(assert (=> d!1703965 m!6336124))

(declare-fun m!6336210 () Bool)

(assert (=> b!5298767 m!6336210))

(assert (=> b!5298768 m!6336128))

(assert (=> b!5298768 m!6336128))

(declare-fun m!6336212 () Bool)

(assert (=> b!5298768 m!6336212))

(assert (=> b!5298768 m!6336132))

(assert (=> b!5298768 m!6336212))

(assert (=> b!5298768 m!6336132))

(declare-fun m!6336214 () Bool)

(assert (=> b!5298768 m!6336214))

(assert (=> b!5298427 d!1703965))

(declare-fun bs!1228901 () Bool)

(declare-fun d!1703967 () Bool)

(assert (= bs!1228901 (and d!1703967 d!1703919)))

(declare-fun lambda!268930 () Int)

(assert (=> bs!1228901 (= lambda!268930 lambda!268914)))

(declare-fun bs!1228902 () Bool)

(assert (= bs!1228902 (and d!1703967 d!1703953)))

(assert (=> bs!1228902 (= lambda!268930 lambda!268928)))

(declare-fun b!5298769 () Bool)

(declare-fun e!3293533 () Bool)

(declare-fun e!3293536 () Bool)

(assert (=> b!5298769 (= e!3293533 e!3293536)))

(declare-fun c!919679 () Bool)

(assert (=> b!5298769 (= c!919679 (isEmpty!32950 (t!374318 (exprs!4822 (h!67438 zl!343)))))))

(declare-fun b!5298770 () Bool)

(declare-fun e!3293535 () Regex!14938)

(assert (=> b!5298770 (= e!3293535 EmptyExpr!14938)))

(assert (=> d!1703967 e!3293533))

(declare-fun res!2247441 () Bool)

(assert (=> d!1703967 (=> (not res!2247441) (not e!3293533))))

(declare-fun lt!2165055 () Regex!14938)

(assert (=> d!1703967 (= res!2247441 (validRegex!6674 lt!2165055))))

(declare-fun e!3293532 () Regex!14938)

(assert (=> d!1703967 (= lt!2165055 e!3293532)))

(declare-fun c!919678 () Bool)

(declare-fun e!3293537 () Bool)

(assert (=> d!1703967 (= c!919678 e!3293537)))

(declare-fun res!2247442 () Bool)

(assert (=> d!1703967 (=> (not res!2247442) (not e!3293537))))

(assert (=> d!1703967 (= res!2247442 (is-Cons!60989 (t!374318 (exprs!4822 (h!67438 zl!343)))))))

(assert (=> d!1703967 (forall!14352 (t!374318 (exprs!4822 (h!67438 zl!343))) lambda!268930)))

(assert (=> d!1703967 (= (generalisedConcat!607 (t!374318 (exprs!4822 (h!67438 zl!343)))) lt!2165055)))

(declare-fun b!5298771 () Bool)

(assert (=> b!5298771 (= e!3293532 (h!67437 (t!374318 (exprs!4822 (h!67438 zl!343)))))))

(declare-fun b!5298772 () Bool)

(declare-fun e!3293534 () Bool)

(assert (=> b!5298772 (= e!3293536 e!3293534)))

(declare-fun c!919681 () Bool)

(assert (=> b!5298772 (= c!919681 (isEmpty!32950 (tail!10454 (t!374318 (exprs!4822 (h!67438 zl!343))))))))

(declare-fun b!5298773 () Bool)

(assert (=> b!5298773 (= e!3293534 (= lt!2165055 (head!11357 (t!374318 (exprs!4822 (h!67438 zl!343))))))))

(declare-fun b!5298774 () Bool)

(assert (=> b!5298774 (= e!3293532 e!3293535)))

(declare-fun c!919680 () Bool)

(assert (=> b!5298774 (= c!919680 (is-Cons!60989 (t!374318 (exprs!4822 (h!67438 zl!343)))))))

(declare-fun b!5298775 () Bool)

(assert (=> b!5298775 (= e!3293537 (isEmpty!32950 (t!374318 (t!374318 (exprs!4822 (h!67438 zl!343))))))))

(declare-fun b!5298776 () Bool)

(assert (=> b!5298776 (= e!3293536 (isEmptyExpr!854 lt!2165055))))

(declare-fun b!5298777 () Bool)

(assert (=> b!5298777 (= e!3293535 (Concat!23783 (h!67437 (t!374318 (exprs!4822 (h!67438 zl!343)))) (generalisedConcat!607 (t!374318 (t!374318 (exprs!4822 (h!67438 zl!343)))))))))

(declare-fun b!5298778 () Bool)

(assert (=> b!5298778 (= e!3293534 (isConcat!377 lt!2165055))))

(assert (= (and d!1703967 res!2247442) b!5298775))

(assert (= (and d!1703967 c!919678) b!5298771))

(assert (= (and d!1703967 (not c!919678)) b!5298774))

(assert (= (and b!5298774 c!919680) b!5298777))

(assert (= (and b!5298774 (not c!919680)) b!5298770))

(assert (= (and d!1703967 res!2247441) b!5298769))

(assert (= (and b!5298769 c!919679) b!5298776))

(assert (= (and b!5298769 (not c!919679)) b!5298772))

(assert (= (and b!5298772 c!919681) b!5298773))

(assert (= (and b!5298772 (not c!919681)) b!5298778))

(declare-fun m!6336216 () Bool)

(assert (=> b!5298776 m!6336216))

(declare-fun m!6336218 () Bool)

(assert (=> b!5298778 m!6336218))

(declare-fun m!6336220 () Bool)

(assert (=> b!5298773 m!6336220))

(assert (=> b!5298769 m!6335844))

(declare-fun m!6336222 () Bool)

(assert (=> b!5298775 m!6336222))

(declare-fun m!6336224 () Bool)

(assert (=> b!5298772 m!6336224))

(assert (=> b!5298772 m!6336224))

(declare-fun m!6336226 () Bool)

(assert (=> b!5298772 m!6336226))

(declare-fun m!6336228 () Bool)

(assert (=> b!5298777 m!6336228))

(declare-fun m!6336230 () Bool)

(assert (=> d!1703967 m!6336230))

(declare-fun m!6336232 () Bool)

(assert (=> d!1703967 m!6336232))

(assert (=> b!5298427 d!1703967))

(declare-fun bs!1228903 () Bool)

(declare-fun d!1703969 () Bool)

(assert (= bs!1228903 (and d!1703969 d!1703919)))

(declare-fun lambda!268931 () Int)

(assert (=> bs!1228903 (= lambda!268931 lambda!268914)))

(declare-fun bs!1228904 () Bool)

(assert (= bs!1228904 (and d!1703969 d!1703953)))

(assert (=> bs!1228904 (= lambda!268931 lambda!268928)))

(declare-fun bs!1228905 () Bool)

(assert (= bs!1228905 (and d!1703969 d!1703967)))

(assert (=> bs!1228905 (= lambda!268931 lambda!268930)))

(declare-fun b!5298779 () Bool)

(declare-fun e!3293539 () Bool)

(declare-fun e!3293542 () Bool)

(assert (=> b!5298779 (= e!3293539 e!3293542)))

(declare-fun c!919683 () Bool)

(assert (=> b!5298779 (= c!919683 (isEmpty!32950 lt!2164839))))

(declare-fun b!5298780 () Bool)

(declare-fun e!3293541 () Regex!14938)

(assert (=> b!5298780 (= e!3293541 EmptyExpr!14938)))

(assert (=> d!1703969 e!3293539))

(declare-fun res!2247443 () Bool)

(assert (=> d!1703969 (=> (not res!2247443) (not e!3293539))))

(declare-fun lt!2165056 () Regex!14938)

(assert (=> d!1703969 (= res!2247443 (validRegex!6674 lt!2165056))))

(declare-fun e!3293538 () Regex!14938)

(assert (=> d!1703969 (= lt!2165056 e!3293538)))

(declare-fun c!919682 () Bool)

(declare-fun e!3293543 () Bool)

(assert (=> d!1703969 (= c!919682 e!3293543)))

(declare-fun res!2247444 () Bool)

(assert (=> d!1703969 (=> (not res!2247444) (not e!3293543))))

(assert (=> d!1703969 (= res!2247444 (is-Cons!60989 lt!2164839))))

(assert (=> d!1703969 (forall!14352 lt!2164839 lambda!268931)))

(assert (=> d!1703969 (= (generalisedConcat!607 lt!2164839) lt!2165056)))

(declare-fun b!5298781 () Bool)

(assert (=> b!5298781 (= e!3293538 (h!67437 lt!2164839))))

(declare-fun b!5298782 () Bool)

(declare-fun e!3293540 () Bool)

(assert (=> b!5298782 (= e!3293542 e!3293540)))

(declare-fun c!919685 () Bool)

(assert (=> b!5298782 (= c!919685 (isEmpty!32950 (tail!10454 lt!2164839)))))

(declare-fun b!5298783 () Bool)

(assert (=> b!5298783 (= e!3293540 (= lt!2165056 (head!11357 lt!2164839)))))

(declare-fun b!5298784 () Bool)

(assert (=> b!5298784 (= e!3293538 e!3293541)))

(declare-fun c!919684 () Bool)

(assert (=> b!5298784 (= c!919684 (is-Cons!60989 lt!2164839))))

(declare-fun b!5298785 () Bool)

(assert (=> b!5298785 (= e!3293543 (isEmpty!32950 (t!374318 lt!2164839)))))

(declare-fun b!5298786 () Bool)

(assert (=> b!5298786 (= e!3293542 (isEmptyExpr!854 lt!2165056))))

(declare-fun b!5298787 () Bool)

(assert (=> b!5298787 (= e!3293541 (Concat!23783 (h!67437 lt!2164839) (generalisedConcat!607 (t!374318 lt!2164839))))))

(declare-fun b!5298788 () Bool)

(assert (=> b!5298788 (= e!3293540 (isConcat!377 lt!2165056))))

(assert (= (and d!1703969 res!2247444) b!5298785))

(assert (= (and d!1703969 c!919682) b!5298781))

(assert (= (and d!1703969 (not c!919682)) b!5298784))

(assert (= (and b!5298784 c!919684) b!5298787))

(assert (= (and b!5298784 (not c!919684)) b!5298780))

(assert (= (and d!1703969 res!2247443) b!5298779))

(assert (= (and b!5298779 c!919683) b!5298786))

(assert (= (and b!5298779 (not c!919683)) b!5298782))

(assert (= (and b!5298782 c!919685) b!5298783))

(assert (= (and b!5298782 (not c!919685)) b!5298788))

(declare-fun m!6336234 () Bool)

(assert (=> b!5298786 m!6336234))

(declare-fun m!6336236 () Bool)

(assert (=> b!5298788 m!6336236))

(declare-fun m!6336238 () Bool)

(assert (=> b!5298783 m!6336238))

(declare-fun m!6336240 () Bool)

(assert (=> b!5298779 m!6336240))

(declare-fun m!6336242 () Bool)

(assert (=> b!5298785 m!6336242))

(declare-fun m!6336244 () Bool)

(assert (=> b!5298782 m!6336244))

(assert (=> b!5298782 m!6336244))

(declare-fun m!6336246 () Bool)

(assert (=> b!5298782 m!6336246))

(declare-fun m!6336248 () Bool)

(assert (=> b!5298787 m!6336248))

(declare-fun m!6336250 () Bool)

(assert (=> d!1703969 m!6336250))

(declare-fun m!6336252 () Bool)

(assert (=> d!1703969 m!6336252))

(assert (=> b!5298427 d!1703969))

(declare-fun d!1703971 () Bool)

(assert (=> d!1703971 (= (isDefined!11752 (findConcatSeparation!1463 (regTwo!30388 (regOne!30388 r!7292)) lt!2164843 Nil!60991 s!2326 s!2326)) (not (isEmpty!32954 (findConcatSeparation!1463 (regTwo!30388 (regOne!30388 r!7292)) lt!2164843 Nil!60991 s!2326 s!2326))))))

(declare-fun bs!1228906 () Bool)

(assert (= bs!1228906 d!1703971))

(assert (=> bs!1228906 m!6335814))

(declare-fun m!6336254 () Bool)

(assert (=> bs!1228906 m!6336254))

(assert (=> b!5298427 d!1703971))

(declare-fun bs!1228907 () Bool)

(declare-fun b!5298831 () Bool)

(assert (= bs!1228907 (and b!5298831 d!1703937)))

(declare-fun lambda!268936 () Int)

(assert (=> bs!1228907 (not (= lambda!268936 lambda!268922))))

(declare-fun bs!1228908 () Bool)

(assert (= bs!1228908 (and b!5298831 d!1703949)))

(assert (=> bs!1228908 (not (= lambda!268936 lambda!268924))))

(declare-fun bs!1228909 () Bool)

(assert (= bs!1228909 (and b!5298831 b!5298427)))

(assert (=> bs!1228909 (not (= lambda!268936 lambda!268880))))

(assert (=> bs!1228909 (not (= lambda!268936 lambda!268879))))

(declare-fun bs!1228910 () Bool)

(assert (= bs!1228910 (and b!5298831 d!1703935)))

(assert (=> bs!1228910 (not (= lambda!268936 lambda!268917))))

(assert (=> bs!1228909 (not (= lambda!268936 lambda!268877))))

(declare-fun bs!1228911 () Bool)

(assert (= bs!1228911 (and b!5298831 d!1703963)))

(assert (=> bs!1228911 (not (= lambda!268936 lambda!268929))))

(declare-fun bs!1228912 () Bool)

(assert (= bs!1228912 (and b!5298831 b!5298408)))

(assert (=> bs!1228912 (not (= lambda!268936 lambda!268874))))

(assert (=> bs!1228912 (not (= lambda!268936 lambda!268875))))

(assert (=> bs!1228908 (not (= lambda!268936 lambda!268925))))

(assert (=> bs!1228909 (not (= lambda!268936 lambda!268878))))

(assert (=> bs!1228907 (not (= lambda!268936 lambda!268923))))

(assert (=> b!5298831 true))

(assert (=> b!5298831 true))

(declare-fun bs!1228913 () Bool)

(declare-fun b!5298824 () Bool)

(assert (= bs!1228913 (and b!5298824 d!1703937)))

(declare-fun lambda!268937 () Int)

(assert (=> bs!1228913 (not (= lambda!268937 lambda!268922))))

(declare-fun bs!1228914 () Bool)

(assert (= bs!1228914 (and b!5298824 d!1703949)))

(assert (=> bs!1228914 (not (= lambda!268937 lambda!268924))))

(declare-fun bs!1228915 () Bool)

(assert (= bs!1228915 (and b!5298824 b!5298427)))

(assert (=> bs!1228915 (= (and (= (regOne!30388 lt!2164870) (regTwo!30388 (regOne!30388 r!7292))) (= (regTwo!30388 lt!2164870) lt!2164843)) (= lambda!268937 lambda!268880))))

(assert (=> bs!1228915 (not (= lambda!268937 lambda!268879))))

(declare-fun bs!1228916 () Bool)

(assert (= bs!1228916 (and b!5298824 d!1703935)))

(assert (=> bs!1228916 (not (= lambda!268937 lambda!268917))))

(assert (=> bs!1228915 (not (= lambda!268937 lambda!268877))))

(declare-fun bs!1228917 () Bool)

(assert (= bs!1228917 (and b!5298824 d!1703963)))

(assert (=> bs!1228917 (not (= lambda!268937 lambda!268929))))

(declare-fun bs!1228918 () Bool)

(assert (= bs!1228918 (and b!5298824 b!5298831)))

(assert (=> bs!1228918 (not (= lambda!268937 lambda!268936))))

(declare-fun bs!1228919 () Bool)

(assert (= bs!1228919 (and b!5298824 b!5298408)))

(assert (=> bs!1228919 (not (= lambda!268937 lambda!268874))))

(assert (=> bs!1228919 (= (and (= (regOne!30388 lt!2164870) (regOne!30388 r!7292)) (= (regTwo!30388 lt!2164870) (regTwo!30388 r!7292))) (= lambda!268937 lambda!268875))))

(assert (=> bs!1228914 (= (and (= (regOne!30388 lt!2164870) (regOne!30388 (regOne!30388 r!7292))) (= (regTwo!30388 lt!2164870) lt!2164865)) (= lambda!268937 lambda!268925))))

(assert (=> bs!1228915 (= (and (= (regOne!30388 lt!2164870) (regOne!30388 (regOne!30388 r!7292))) (= (regTwo!30388 lt!2164870) lt!2164865)) (= lambda!268937 lambda!268878))))

(assert (=> bs!1228913 (= (and (= (regOne!30388 lt!2164870) (regOne!30388 r!7292)) (= (regTwo!30388 lt!2164870) (regTwo!30388 r!7292))) (= lambda!268937 lambda!268923))))

(assert (=> b!5298824 true))

(assert (=> b!5298824 true))

(declare-fun b!5298821 () Bool)

(declare-fun e!3293567 () Bool)

(declare-fun e!3293568 () Bool)

(assert (=> b!5298821 (= e!3293567 e!3293568)))

(declare-fun res!2247461 () Bool)

(assert (=> b!5298821 (= res!2247461 (matchRSpec!2041 (regOne!30389 lt!2164870) s!2326))))

(assert (=> b!5298821 (=> res!2247461 e!3293568)))

(declare-fun b!5298822 () Bool)

(declare-fun e!3293566 () Bool)

(declare-fun e!3293562 () Bool)

(assert (=> b!5298822 (= e!3293566 e!3293562)))

(declare-fun res!2247463 () Bool)

(assert (=> b!5298822 (= res!2247463 (not (is-EmptyLang!14938 lt!2164870)))))

(assert (=> b!5298822 (=> (not res!2247463) (not e!3293562))))

(declare-fun b!5298823 () Bool)

(declare-fun call!377702 () Bool)

(assert (=> b!5298823 (= e!3293566 call!377702)))

(declare-fun e!3293564 () Bool)

(declare-fun call!377701 () Bool)

(assert (=> b!5298824 (= e!3293564 call!377701)))

(declare-fun b!5298825 () Bool)

(declare-fun c!919695 () Bool)

(assert (=> b!5298825 (= c!919695 (is-ElementMatch!14938 lt!2164870))))

(declare-fun e!3293565 () Bool)

(assert (=> b!5298825 (= e!3293562 e!3293565)))

(declare-fun bm!377696 () Bool)

(declare-fun c!919697 () Bool)

(assert (=> bm!377696 (= call!377701 (Exists!2119 (ite c!919697 lambda!268936 lambda!268937)))))

(declare-fun b!5298827 () Bool)

(declare-fun c!919694 () Bool)

(assert (=> b!5298827 (= c!919694 (is-Union!14938 lt!2164870))))

(assert (=> b!5298827 (= e!3293565 e!3293567)))

(declare-fun b!5298828 () Bool)

(assert (=> b!5298828 (= e!3293565 (= s!2326 (Cons!60991 (c!919624 lt!2164870) Nil!60991)))))

(declare-fun bm!377697 () Bool)

(assert (=> bm!377697 (= call!377702 (isEmpty!32953 s!2326))))

(declare-fun b!5298829 () Bool)

(assert (=> b!5298829 (= e!3293567 e!3293564)))

(assert (=> b!5298829 (= c!919697 (is-Star!14938 lt!2164870))))

(declare-fun b!5298826 () Bool)

(assert (=> b!5298826 (= e!3293568 (matchRSpec!2041 (regTwo!30389 lt!2164870) s!2326))))

(declare-fun d!1703973 () Bool)

(declare-fun c!919696 () Bool)

(assert (=> d!1703973 (= c!919696 (is-EmptyExpr!14938 lt!2164870))))

(assert (=> d!1703973 (= (matchRSpec!2041 lt!2164870 s!2326) e!3293566)))

(declare-fun b!5298830 () Bool)

(declare-fun res!2247462 () Bool)

(declare-fun e!3293563 () Bool)

(assert (=> b!5298830 (=> res!2247462 e!3293563)))

(assert (=> b!5298830 (= res!2247462 call!377702)))

(assert (=> b!5298830 (= e!3293564 e!3293563)))

(assert (=> b!5298831 (= e!3293563 call!377701)))

(assert (= (and d!1703973 c!919696) b!5298823))

(assert (= (and d!1703973 (not c!919696)) b!5298822))

(assert (= (and b!5298822 res!2247463) b!5298825))

(assert (= (and b!5298825 c!919695) b!5298828))

(assert (= (and b!5298825 (not c!919695)) b!5298827))

(assert (= (and b!5298827 c!919694) b!5298821))

(assert (= (and b!5298827 (not c!919694)) b!5298829))

(assert (= (and b!5298821 (not res!2247461)) b!5298826))

(assert (= (and b!5298829 c!919697) b!5298830))

(assert (= (and b!5298829 (not c!919697)) b!5298824))

(assert (= (and b!5298830 (not res!2247462)) b!5298831))

(assert (= (or b!5298831 b!5298824) bm!377696))

(assert (= (or b!5298823 b!5298830) bm!377697))

(declare-fun m!6336256 () Bool)

(assert (=> b!5298821 m!6336256))

(declare-fun m!6336258 () Bool)

(assert (=> bm!377696 m!6336258))

(assert (=> bm!377697 m!6336124))

(declare-fun m!6336260 () Bool)

(assert (=> b!5298826 m!6336260))

(assert (=> b!5298427 d!1703973))

(declare-fun bs!1228920 () Bool)

(declare-fun d!1703975 () Bool)

(assert (= bs!1228920 (and d!1703975 d!1703937)))

(declare-fun lambda!268938 () Int)

(assert (=> bs!1228920 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164843 (regTwo!30388 r!7292))) (= lambda!268938 lambda!268922))))

(declare-fun bs!1228921 () Bool)

(assert (= bs!1228921 (and d!1703975 d!1703949)))

(assert (=> bs!1228921 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 (regOne!30388 r!7292))) (= lt!2164843 lt!2164865)) (= lambda!268938 lambda!268924))))

(declare-fun bs!1228922 () Bool)

(assert (= bs!1228922 (and d!1703975 b!5298427)))

(assert (=> bs!1228922 (not (= lambda!268938 lambda!268880))))

(assert (=> bs!1228922 (= lambda!268938 lambda!268879)))

(declare-fun bs!1228923 () Bool)

(assert (= bs!1228923 (and d!1703975 d!1703935)))

(assert (=> bs!1228923 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164843 (regTwo!30388 r!7292))) (= lambda!268938 lambda!268917))))

(assert (=> bs!1228922 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 (regOne!30388 r!7292))) (= lt!2164843 lt!2164865)) (= lambda!268938 lambda!268877))))

(declare-fun bs!1228924 () Bool)

(assert (= bs!1228924 (and d!1703975 d!1703963)))

(assert (=> bs!1228924 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 (regOne!30388 r!7292))) (= lt!2164843 lt!2164865)) (= lambda!268938 lambda!268929))))

(declare-fun bs!1228925 () Bool)

(assert (= bs!1228925 (and d!1703975 b!5298824)))

(assert (=> bs!1228925 (not (= lambda!268938 lambda!268937))))

(declare-fun bs!1228926 () Bool)

(assert (= bs!1228926 (and d!1703975 b!5298831)))

(assert (=> bs!1228926 (not (= lambda!268938 lambda!268936))))

(declare-fun bs!1228927 () Bool)

(assert (= bs!1228927 (and d!1703975 b!5298408)))

(assert (=> bs!1228927 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164843 (regTwo!30388 r!7292))) (= lambda!268938 lambda!268874))))

(assert (=> bs!1228927 (not (= lambda!268938 lambda!268875))))

(assert (=> bs!1228921 (not (= lambda!268938 lambda!268925))))

(assert (=> bs!1228922 (not (= lambda!268938 lambda!268878))))

(assert (=> bs!1228920 (not (= lambda!268938 lambda!268923))))

(assert (=> d!1703975 true))

(assert (=> d!1703975 true))

(assert (=> d!1703975 true))

(assert (=> d!1703975 (= (isDefined!11752 (findConcatSeparation!1463 (regTwo!30388 (regOne!30388 r!7292)) lt!2164843 Nil!60991 s!2326 s!2326)) (Exists!2119 lambda!268938))))

(declare-fun lt!2165057 () Unit!153270)

(assert (=> d!1703975 (= lt!2165057 (choose!39594 (regTwo!30388 (regOne!30388 r!7292)) lt!2164843 s!2326))))

(assert (=> d!1703975 (validRegex!6674 (regTwo!30388 (regOne!30388 r!7292)))))

(assert (=> d!1703975 (= (lemmaFindConcatSeparationEquivalentToExists!1227 (regTwo!30388 (regOne!30388 r!7292)) lt!2164843 s!2326) lt!2165057)))

(declare-fun bs!1228928 () Bool)

(assert (= bs!1228928 d!1703975))

(declare-fun m!6336262 () Bool)

(assert (=> bs!1228928 m!6336262))

(declare-fun m!6336264 () Bool)

(assert (=> bs!1228928 m!6336264))

(declare-fun m!6336266 () Bool)

(assert (=> bs!1228928 m!6336266))

(assert (=> bs!1228928 m!6335814))

(assert (=> bs!1228928 m!6335814))

(assert (=> bs!1228928 m!6335822))

(assert (=> b!5298427 d!1703975))

(declare-fun bs!1228929 () Bool)

(declare-fun d!1703977 () Bool)

(assert (= bs!1228929 (and d!1703977 d!1703949)))

(declare-fun lambda!268939 () Int)

(assert (=> bs!1228929 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 (regOne!30388 r!7292))) (= lt!2164843 lt!2164865)) (= lambda!268939 lambda!268924))))

(declare-fun bs!1228930 () Bool)

(assert (= bs!1228930 (and d!1703977 b!5298427)))

(assert (=> bs!1228930 (not (= lambda!268939 lambda!268880))))

(assert (=> bs!1228930 (= lambda!268939 lambda!268879)))

(declare-fun bs!1228931 () Bool)

(assert (= bs!1228931 (and d!1703977 d!1703935)))

(assert (=> bs!1228931 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164843 (regTwo!30388 r!7292))) (= lambda!268939 lambda!268917))))

(assert (=> bs!1228930 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 (regOne!30388 r!7292))) (= lt!2164843 lt!2164865)) (= lambda!268939 lambda!268877))))

(declare-fun bs!1228932 () Bool)

(assert (= bs!1228932 (and d!1703977 d!1703963)))

(assert (=> bs!1228932 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 (regOne!30388 r!7292))) (= lt!2164843 lt!2164865)) (= lambda!268939 lambda!268929))))

(declare-fun bs!1228933 () Bool)

(assert (= bs!1228933 (and d!1703977 b!5298824)))

(assert (=> bs!1228933 (not (= lambda!268939 lambda!268937))))

(declare-fun bs!1228934 () Bool)

(assert (= bs!1228934 (and d!1703977 b!5298831)))

(assert (=> bs!1228934 (not (= lambda!268939 lambda!268936))))

(declare-fun bs!1228935 () Bool)

(assert (= bs!1228935 (and d!1703977 b!5298408)))

(assert (=> bs!1228935 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164843 (regTwo!30388 r!7292))) (= lambda!268939 lambda!268874))))

(assert (=> bs!1228935 (not (= lambda!268939 lambda!268875))))

(assert (=> bs!1228929 (not (= lambda!268939 lambda!268925))))

(declare-fun bs!1228936 () Bool)

(assert (= bs!1228936 (and d!1703977 d!1703937)))

(assert (=> bs!1228936 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164843 (regTwo!30388 r!7292))) (= lambda!268939 lambda!268922))))

(declare-fun bs!1228937 () Bool)

(assert (= bs!1228937 (and d!1703977 d!1703975)))

(assert (=> bs!1228937 (= lambda!268939 lambda!268938)))

(assert (=> bs!1228930 (not (= lambda!268939 lambda!268878))))

(assert (=> bs!1228936 (not (= lambda!268939 lambda!268923))))

(assert (=> d!1703977 true))

(assert (=> d!1703977 true))

(assert (=> d!1703977 true))

(declare-fun lambda!268940 () Int)

(assert (=> bs!1228929 (not (= lambda!268940 lambda!268924))))

(assert (=> bs!1228930 (= lambda!268940 lambda!268880)))

(assert (=> bs!1228930 (not (= lambda!268940 lambda!268879))))

(declare-fun bs!1228938 () Bool)

(assert (= bs!1228938 d!1703977))

(assert (=> bs!1228938 (not (= lambda!268940 lambda!268939))))

(assert (=> bs!1228931 (not (= lambda!268940 lambda!268917))))

(assert (=> bs!1228930 (not (= lambda!268940 lambda!268877))))

(assert (=> bs!1228932 (not (= lambda!268940 lambda!268929))))

(assert (=> bs!1228933 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 lt!2164870)) (= lt!2164843 (regTwo!30388 lt!2164870))) (= lambda!268940 lambda!268937))))

(assert (=> bs!1228934 (not (= lambda!268940 lambda!268936))))

(assert (=> bs!1228935 (not (= lambda!268940 lambda!268874))))

(assert (=> bs!1228935 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164843 (regTwo!30388 r!7292))) (= lambda!268940 lambda!268875))))

(assert (=> bs!1228929 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 (regOne!30388 r!7292))) (= lt!2164843 lt!2164865)) (= lambda!268940 lambda!268925))))

(assert (=> bs!1228936 (not (= lambda!268940 lambda!268922))))

(assert (=> bs!1228937 (not (= lambda!268940 lambda!268938))))

(assert (=> bs!1228930 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 (regOne!30388 r!7292))) (= lt!2164843 lt!2164865)) (= lambda!268940 lambda!268878))))

(assert (=> bs!1228936 (= (and (= (regTwo!30388 (regOne!30388 r!7292)) (regOne!30388 r!7292)) (= lt!2164843 (regTwo!30388 r!7292))) (= lambda!268940 lambda!268923))))

(assert (=> d!1703977 true))

(assert (=> d!1703977 true))

(assert (=> d!1703977 true))

(assert (=> d!1703977 (= (Exists!2119 lambda!268939) (Exists!2119 lambda!268940))))

(declare-fun lt!2165058 () Unit!153270)

(assert (=> d!1703977 (= lt!2165058 (choose!39595 (regTwo!30388 (regOne!30388 r!7292)) lt!2164843 s!2326))))

(assert (=> d!1703977 (validRegex!6674 (regTwo!30388 (regOne!30388 r!7292)))))

(assert (=> d!1703977 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!773 (regTwo!30388 (regOne!30388 r!7292)) lt!2164843 s!2326) lt!2165058)))

(declare-fun m!6336268 () Bool)

(assert (=> bs!1228938 m!6336268))

(declare-fun m!6336270 () Bool)

(assert (=> bs!1228938 m!6336270))

(declare-fun m!6336272 () Bool)

(assert (=> bs!1228938 m!6336272))

(assert (=> bs!1228938 m!6336266))

(assert (=> b!5298427 d!1703977))

(declare-fun d!1703979 () Bool)

(assert (=> d!1703979 (= (Exists!2119 lambda!268880) (choose!39593 lambda!268880))))

(declare-fun bs!1228939 () Bool)

(assert (= bs!1228939 d!1703979))

(declare-fun m!6336274 () Bool)

(assert (=> bs!1228939 m!6336274))

(assert (=> b!5298427 d!1703979))

(declare-fun d!1703981 () Bool)

(assert (=> d!1703981 (= (matchR!7123 lt!2164870 s!2326) (matchRSpec!2041 lt!2164870 s!2326))))

(declare-fun lt!2165061 () Unit!153270)

(declare-fun choose!39597 (Regex!14938 List!61115) Unit!153270)

(assert (=> d!1703981 (= lt!2165061 (choose!39597 lt!2164870 s!2326))))

(assert (=> d!1703981 (validRegex!6674 lt!2164870)))

(assert (=> d!1703981 (= (mainMatchTheorem!2041 lt!2164870 s!2326) lt!2165061)))

(declare-fun bs!1228940 () Bool)

(assert (= bs!1228940 d!1703981))

(assert (=> bs!1228940 m!6335820))

(assert (=> bs!1228940 m!6335786))

(declare-fun m!6336276 () Bool)

(assert (=> bs!1228940 m!6336276))

(assert (=> bs!1228940 m!6336190))

(assert (=> b!5298427 d!1703981))

(declare-fun bs!1228941 () Bool)

(declare-fun b!5298842 () Bool)

(assert (= bs!1228941 (and b!5298842 d!1703949)))

(declare-fun lambda!268941 () Int)

(assert (=> bs!1228941 (not (= lambda!268941 lambda!268924))))

(declare-fun bs!1228942 () Bool)

(assert (= bs!1228942 (and b!5298842 b!5298427)))

(assert (=> bs!1228942 (not (= lambda!268941 lambda!268880))))

(assert (=> bs!1228942 (not (= lambda!268941 lambda!268879))))

(declare-fun bs!1228943 () Bool)

(assert (= bs!1228943 (and b!5298842 d!1703977)))

(assert (=> bs!1228943 (not (= lambda!268941 lambda!268939))))

(declare-fun bs!1228944 () Bool)

(assert (= bs!1228944 (and b!5298842 d!1703935)))

(assert (=> bs!1228944 (not (= lambda!268941 lambda!268917))))

(assert (=> bs!1228942 (not (= lambda!268941 lambda!268877))))

(declare-fun bs!1228945 () Bool)

(assert (= bs!1228945 (and b!5298842 d!1703963)))

(assert (=> bs!1228945 (not (= lambda!268941 lambda!268929))))

(declare-fun bs!1228946 () Bool)

(assert (= bs!1228946 (and b!5298842 b!5298824)))

(assert (=> bs!1228946 (not (= lambda!268941 lambda!268937))))

(declare-fun bs!1228947 () Bool)

(assert (= bs!1228947 (and b!5298842 b!5298831)))

(assert (=> bs!1228947 (= (and (= (reg!15267 lt!2164865) (reg!15267 lt!2164870)) (= lt!2164865 lt!2164870)) (= lambda!268941 lambda!268936))))

(declare-fun bs!1228948 () Bool)

(assert (= bs!1228948 (and b!5298842 b!5298408)))

(assert (=> bs!1228948 (not (= lambda!268941 lambda!268874))))

(assert (=> bs!1228948 (not (= lambda!268941 lambda!268875))))

(declare-fun bs!1228949 () Bool)

(assert (= bs!1228949 (and b!5298842 d!1703937)))

(assert (=> bs!1228949 (not (= lambda!268941 lambda!268922))))

(declare-fun bs!1228950 () Bool)

(assert (= bs!1228950 (and b!5298842 d!1703975)))

(assert (=> bs!1228950 (not (= lambda!268941 lambda!268938))))

(assert (=> bs!1228942 (not (= lambda!268941 lambda!268878))))

(assert (=> bs!1228949 (not (= lambda!268941 lambda!268923))))

(assert (=> bs!1228943 (not (= lambda!268941 lambda!268940))))

(assert (=> bs!1228941 (not (= lambda!268941 lambda!268925))))

(assert (=> b!5298842 true))

(assert (=> b!5298842 true))

(declare-fun bs!1228951 () Bool)

(declare-fun b!5298835 () Bool)

(assert (= bs!1228951 (and b!5298835 d!1703949)))

(declare-fun lambda!268942 () Int)

(assert (=> bs!1228951 (not (= lambda!268942 lambda!268924))))

(declare-fun bs!1228952 () Bool)

(assert (= bs!1228952 (and b!5298835 b!5298427)))

(assert (=> bs!1228952 (= (and (= (regOne!30388 lt!2164865) (regTwo!30388 (regOne!30388 r!7292))) (= (regTwo!30388 lt!2164865) lt!2164843)) (= lambda!268942 lambda!268880))))

(assert (=> bs!1228952 (not (= lambda!268942 lambda!268879))))

(declare-fun bs!1228953 () Bool)

(assert (= bs!1228953 (and b!5298835 d!1703977)))

(assert (=> bs!1228953 (not (= lambda!268942 lambda!268939))))

(declare-fun bs!1228954 () Bool)

(assert (= bs!1228954 (and b!5298835 d!1703935)))

(assert (=> bs!1228954 (not (= lambda!268942 lambda!268917))))

(assert (=> bs!1228952 (not (= lambda!268942 lambda!268877))))

(declare-fun bs!1228955 () Bool)

(assert (= bs!1228955 (and b!5298835 d!1703963)))

(assert (=> bs!1228955 (not (= lambda!268942 lambda!268929))))

(declare-fun bs!1228956 () Bool)

(assert (= bs!1228956 (and b!5298835 b!5298824)))

(assert (=> bs!1228956 (= (and (= (regOne!30388 lt!2164865) (regOne!30388 lt!2164870)) (= (regTwo!30388 lt!2164865) (regTwo!30388 lt!2164870))) (= lambda!268942 lambda!268937))))

(declare-fun bs!1228957 () Bool)

(assert (= bs!1228957 (and b!5298835 b!5298831)))

(assert (=> bs!1228957 (not (= lambda!268942 lambda!268936))))

(declare-fun bs!1228958 () Bool)

(assert (= bs!1228958 (and b!5298835 b!5298408)))

(assert (=> bs!1228958 (not (= lambda!268942 lambda!268874))))

(declare-fun bs!1228959 () Bool)

(assert (= bs!1228959 (and b!5298835 d!1703937)))

(assert (=> bs!1228959 (not (= lambda!268942 lambda!268922))))

(declare-fun bs!1228960 () Bool)

(assert (= bs!1228960 (and b!5298835 d!1703975)))

(assert (=> bs!1228960 (not (= lambda!268942 lambda!268938))))

(assert (=> bs!1228952 (= (and (= (regOne!30388 lt!2164865) (regOne!30388 (regOne!30388 r!7292))) (= (regTwo!30388 lt!2164865) lt!2164865)) (= lambda!268942 lambda!268878))))

(assert (=> bs!1228959 (= (and (= (regOne!30388 lt!2164865) (regOne!30388 r!7292)) (= (regTwo!30388 lt!2164865) (regTwo!30388 r!7292))) (= lambda!268942 lambda!268923))))

(declare-fun bs!1228961 () Bool)

(assert (= bs!1228961 (and b!5298835 b!5298842)))

(assert (=> bs!1228961 (not (= lambda!268942 lambda!268941))))

(assert (=> bs!1228958 (= (and (= (regOne!30388 lt!2164865) (regOne!30388 r!7292)) (= (regTwo!30388 lt!2164865) (regTwo!30388 r!7292))) (= lambda!268942 lambda!268875))))

(assert (=> bs!1228953 (= (and (= (regOne!30388 lt!2164865) (regTwo!30388 (regOne!30388 r!7292))) (= (regTwo!30388 lt!2164865) lt!2164843)) (= lambda!268942 lambda!268940))))

(assert (=> bs!1228951 (= (and (= (regOne!30388 lt!2164865) (regOne!30388 (regOne!30388 r!7292))) (= (regTwo!30388 lt!2164865) lt!2164865)) (= lambda!268942 lambda!268925))))

(assert (=> b!5298835 true))

(assert (=> b!5298835 true))

(declare-fun b!5298832 () Bool)

(declare-fun e!3293574 () Bool)

(declare-fun e!3293575 () Bool)

(assert (=> b!5298832 (= e!3293574 e!3293575)))

(declare-fun res!2247464 () Bool)

(assert (=> b!5298832 (= res!2247464 (matchRSpec!2041 (regOne!30389 lt!2164865) s!2326))))

(assert (=> b!5298832 (=> res!2247464 e!3293575)))

(declare-fun b!5298833 () Bool)

(declare-fun e!3293573 () Bool)

(declare-fun e!3293569 () Bool)

(assert (=> b!5298833 (= e!3293573 e!3293569)))

(declare-fun res!2247466 () Bool)

(assert (=> b!5298833 (= res!2247466 (not (is-EmptyLang!14938 lt!2164865)))))

(assert (=> b!5298833 (=> (not res!2247466) (not e!3293569))))

(declare-fun b!5298834 () Bool)

(declare-fun call!377704 () Bool)

(assert (=> b!5298834 (= e!3293573 call!377704)))

(declare-fun e!3293571 () Bool)

(declare-fun call!377703 () Bool)

(assert (=> b!5298835 (= e!3293571 call!377703)))

(declare-fun b!5298836 () Bool)

(declare-fun c!919699 () Bool)

(assert (=> b!5298836 (= c!919699 (is-ElementMatch!14938 lt!2164865))))

(declare-fun e!3293572 () Bool)

(assert (=> b!5298836 (= e!3293569 e!3293572)))

(declare-fun bm!377698 () Bool)

(declare-fun c!919701 () Bool)

(assert (=> bm!377698 (= call!377703 (Exists!2119 (ite c!919701 lambda!268941 lambda!268942)))))

(declare-fun b!5298838 () Bool)

(declare-fun c!919698 () Bool)

(assert (=> b!5298838 (= c!919698 (is-Union!14938 lt!2164865))))

(assert (=> b!5298838 (= e!3293572 e!3293574)))

(declare-fun b!5298839 () Bool)

(assert (=> b!5298839 (= e!3293572 (= s!2326 (Cons!60991 (c!919624 lt!2164865) Nil!60991)))))

(declare-fun bm!377699 () Bool)

(assert (=> bm!377699 (= call!377704 (isEmpty!32953 s!2326))))

(declare-fun b!5298840 () Bool)

(assert (=> b!5298840 (= e!3293574 e!3293571)))

(assert (=> b!5298840 (= c!919701 (is-Star!14938 lt!2164865))))

(declare-fun b!5298837 () Bool)

(assert (=> b!5298837 (= e!3293575 (matchRSpec!2041 (regTwo!30389 lt!2164865) s!2326))))

(declare-fun d!1703983 () Bool)

(declare-fun c!919700 () Bool)

(assert (=> d!1703983 (= c!919700 (is-EmptyExpr!14938 lt!2164865))))

(assert (=> d!1703983 (= (matchRSpec!2041 lt!2164865 s!2326) e!3293573)))

(declare-fun b!5298841 () Bool)

(declare-fun res!2247465 () Bool)

(declare-fun e!3293570 () Bool)

(assert (=> b!5298841 (=> res!2247465 e!3293570)))

(assert (=> b!5298841 (= res!2247465 call!377704)))

(assert (=> b!5298841 (= e!3293571 e!3293570)))

(assert (=> b!5298842 (= e!3293570 call!377703)))

(assert (= (and d!1703983 c!919700) b!5298834))

(assert (= (and d!1703983 (not c!919700)) b!5298833))

(assert (= (and b!5298833 res!2247466) b!5298836))

(assert (= (and b!5298836 c!919699) b!5298839))

(assert (= (and b!5298836 (not c!919699)) b!5298838))

(assert (= (and b!5298838 c!919698) b!5298832))

(assert (= (and b!5298838 (not c!919698)) b!5298840))

(assert (= (and b!5298832 (not res!2247464)) b!5298837))

(assert (= (and b!5298840 c!919701) b!5298841))

(assert (= (and b!5298840 (not c!919701)) b!5298835))

(assert (= (and b!5298841 (not res!2247465)) b!5298842))

(assert (= (or b!5298842 b!5298835) bm!377698))

(assert (= (or b!5298834 b!5298841) bm!377699))

(declare-fun m!6336278 () Bool)

(assert (=> b!5298832 m!6336278))

(declare-fun m!6336280 () Bool)

(assert (=> bm!377698 m!6336280))

(assert (=> bm!377699 m!6336124))

(declare-fun m!6336282 () Bool)

(assert (=> b!5298837 m!6336282))

(assert (=> b!5298427 d!1703983))

(declare-fun d!1703985 () Bool)

(assert (=> d!1703985 (= (matchR!7123 lt!2164865 s!2326) (matchRSpec!2041 lt!2164865 s!2326))))

(declare-fun lt!2165062 () Unit!153270)

(assert (=> d!1703985 (= lt!2165062 (choose!39597 lt!2164865 s!2326))))

(assert (=> d!1703985 (validRegex!6674 lt!2164865)))

(assert (=> d!1703985 (= (mainMatchTheorem!2041 lt!2164865 s!2326) lt!2165062)))

(declare-fun bs!1228962 () Bool)

(assert (= bs!1228962 d!1703985))

(assert (=> bs!1228962 m!6335826))

(assert (=> bs!1228962 m!6335816))

(declare-fun m!6336284 () Bool)

(assert (=> bs!1228962 m!6336284))

(assert (=> bs!1228962 m!6336194))

(assert (=> b!5298427 d!1703985))

(declare-fun d!1703987 () Bool)

(assert (=> d!1703987 (= (isDefined!11752 (findConcatSeparation!1463 (regOne!30388 (regOne!30388 r!7292)) lt!2164865 Nil!60991 s!2326 s!2326)) (not (isEmpty!32954 (findConcatSeparation!1463 (regOne!30388 (regOne!30388 r!7292)) lt!2164865 Nil!60991 s!2326 s!2326))))))

(declare-fun bs!1228963 () Bool)

(assert (= bs!1228963 d!1703987))

(assert (=> bs!1228963 m!6335792))

(declare-fun m!6336286 () Bool)

(assert (=> bs!1228963 m!6336286))

(assert (=> b!5298427 d!1703987))

(declare-fun bm!377700 () Bool)

(declare-fun call!377705 () Bool)

(assert (=> bm!377700 (= call!377705 (isEmpty!32953 s!2326))))

(declare-fun b!5298843 () Bool)

(declare-fun e!3293576 () Bool)

(declare-fun lt!2165063 () Bool)

(assert (=> b!5298843 (= e!3293576 (not lt!2165063))))

(declare-fun b!5298844 () Bool)

(declare-fun res!2247468 () Bool)

(declare-fun e!3293581 () Bool)

(assert (=> b!5298844 (=> res!2247468 e!3293581)))

(declare-fun e!3293580 () Bool)

(assert (=> b!5298844 (= res!2247468 e!3293580)))

(declare-fun res!2247474 () Bool)

(assert (=> b!5298844 (=> (not res!2247474) (not e!3293580))))

(assert (=> b!5298844 (= res!2247474 lt!2165063)))

(declare-fun b!5298845 () Bool)

(declare-fun e!3293578 () Bool)

(declare-fun e!3293577 () Bool)

(assert (=> b!5298845 (= e!3293578 e!3293577)))

(declare-fun res!2247471 () Bool)

(assert (=> b!5298845 (=> res!2247471 e!3293577)))

(assert (=> b!5298845 (= res!2247471 call!377705)))

(declare-fun b!5298846 () Bool)

(assert (=> b!5298846 (= e!3293580 (= (head!11356 s!2326) (c!919624 lt!2164870)))))

(declare-fun b!5298847 () Bool)

(assert (=> b!5298847 (= e!3293581 e!3293578)))

(declare-fun res!2247472 () Bool)

(assert (=> b!5298847 (=> (not res!2247472) (not e!3293578))))

(assert (=> b!5298847 (= res!2247472 (not lt!2165063))))

(declare-fun d!1703989 () Bool)

(declare-fun e!3293579 () Bool)

(assert (=> d!1703989 e!3293579))

(declare-fun c!919704 () Bool)

(assert (=> d!1703989 (= c!919704 (is-EmptyExpr!14938 lt!2164870))))

(declare-fun e!3293582 () Bool)

(assert (=> d!1703989 (= lt!2165063 e!3293582)))

(declare-fun c!919703 () Bool)

(assert (=> d!1703989 (= c!919703 (isEmpty!32953 s!2326))))

(assert (=> d!1703989 (validRegex!6674 lt!2164870)))

(assert (=> d!1703989 (= (matchR!7123 lt!2164870 s!2326) lt!2165063)))

(declare-fun b!5298848 () Bool)

(assert (=> b!5298848 (= e!3293579 e!3293576)))

(declare-fun c!919702 () Bool)

(assert (=> b!5298848 (= c!919702 (is-EmptyLang!14938 lt!2164870))))

(declare-fun b!5298849 () Bool)

(declare-fun res!2247470 () Bool)

(assert (=> b!5298849 (=> res!2247470 e!3293581)))

(assert (=> b!5298849 (= res!2247470 (not (is-ElementMatch!14938 lt!2164870)))))

(assert (=> b!5298849 (= e!3293576 e!3293581)))

(declare-fun b!5298850 () Bool)

(assert (=> b!5298850 (= e!3293579 (= lt!2165063 call!377705))))

(declare-fun b!5298851 () Bool)

(assert (=> b!5298851 (= e!3293582 (nullable!5107 lt!2164870))))

(declare-fun b!5298852 () Bool)

(assert (=> b!5298852 (= e!3293582 (matchR!7123 (derivativeStep!4140 lt!2164870 (head!11356 s!2326)) (tail!10453 s!2326)))))

(declare-fun b!5298853 () Bool)

(declare-fun res!2247473 () Bool)

(assert (=> b!5298853 (=> (not res!2247473) (not e!3293580))))

(assert (=> b!5298853 (= res!2247473 (isEmpty!32953 (tail!10453 s!2326)))))

(declare-fun b!5298854 () Bool)

(assert (=> b!5298854 (= e!3293577 (not (= (head!11356 s!2326) (c!919624 lt!2164870))))))

(declare-fun b!5298855 () Bool)

(declare-fun res!2247469 () Bool)

(assert (=> b!5298855 (=> (not res!2247469) (not e!3293580))))

(assert (=> b!5298855 (= res!2247469 (not call!377705))))

(declare-fun b!5298856 () Bool)

(declare-fun res!2247467 () Bool)

(assert (=> b!5298856 (=> res!2247467 e!3293577)))

(assert (=> b!5298856 (= res!2247467 (not (isEmpty!32953 (tail!10453 s!2326))))))

(assert (= (and d!1703989 c!919703) b!5298851))

(assert (= (and d!1703989 (not c!919703)) b!5298852))

(assert (= (and d!1703989 c!919704) b!5298850))

(assert (= (and d!1703989 (not c!919704)) b!5298848))

(assert (= (and b!5298848 c!919702) b!5298843))

(assert (= (and b!5298848 (not c!919702)) b!5298849))

(assert (= (and b!5298849 (not res!2247470)) b!5298844))

(assert (= (and b!5298844 res!2247474) b!5298855))

(assert (= (and b!5298855 res!2247469) b!5298853))

(assert (= (and b!5298853 res!2247473) b!5298846))

(assert (= (and b!5298844 (not res!2247468)) b!5298847))

(assert (= (and b!5298847 res!2247472) b!5298845))

(assert (= (and b!5298845 (not res!2247471)) b!5298856))

(assert (= (and b!5298856 (not res!2247467)) b!5298854))

(assert (= (or b!5298850 b!5298845 b!5298855) bm!377700))

(assert (=> b!5298856 m!6336132))

(assert (=> b!5298856 m!6336132))

(assert (=> b!5298856 m!6336196))

(assert (=> b!5298854 m!6336128))

(declare-fun m!6336288 () Bool)

(assert (=> b!5298851 m!6336288))

(assert (=> b!5298853 m!6336132))

(assert (=> b!5298853 m!6336132))

(assert (=> b!5298853 m!6336196))

(assert (=> d!1703989 m!6336124))

(assert (=> d!1703989 m!6336190))

(assert (=> b!5298846 m!6336128))

(assert (=> bm!377700 m!6336124))

(assert (=> b!5298852 m!6336128))

(assert (=> b!5298852 m!6336128))

(declare-fun m!6336290 () Bool)

(assert (=> b!5298852 m!6336290))

(assert (=> b!5298852 m!6336132))

(assert (=> b!5298852 m!6336290))

(assert (=> b!5298852 m!6336132))

(declare-fun m!6336292 () Bool)

(assert (=> b!5298852 m!6336292))

(assert (=> b!5298427 d!1703989))

(declare-fun b!5298857 () Bool)

(declare-fun lt!2165064 () Unit!153270)

(declare-fun lt!2165065 () Unit!153270)

(assert (=> b!5298857 (= lt!2165064 lt!2165065)))

(assert (=> b!5298857 (= (++!13299 (++!13299 Nil!60991 (Cons!60991 (h!67439 s!2326) Nil!60991)) (t!374320 s!2326)) s!2326)))

(assert (=> b!5298857 (= lt!2165065 (lemmaMoveElementToOtherListKeepsConcatEq!1714 Nil!60991 (h!67439 s!2326) (t!374320 s!2326) s!2326))))

(declare-fun e!3293583 () Option!15049)

(assert (=> b!5298857 (= e!3293583 (findConcatSeparation!1463 (regTwo!30388 (regOne!30388 r!7292)) lt!2164843 (++!13299 Nil!60991 (Cons!60991 (h!67439 s!2326) Nil!60991)) (t!374320 s!2326) s!2326))))

(declare-fun b!5298858 () Bool)

(declare-fun e!3293586 () Bool)

(declare-fun lt!2165066 () Option!15049)

(assert (=> b!5298858 (= e!3293586 (= (++!13299 (_1!35440 (get!20974 lt!2165066)) (_2!35440 (get!20974 lt!2165066))) s!2326))))

(declare-fun b!5298859 () Bool)

(declare-fun res!2247475 () Bool)

(assert (=> b!5298859 (=> (not res!2247475) (not e!3293586))))

(assert (=> b!5298859 (= res!2247475 (matchR!7123 (regTwo!30388 (regOne!30388 r!7292)) (_1!35440 (get!20974 lt!2165066))))))

(declare-fun b!5298860 () Bool)

(declare-fun e!3293587 () Bool)

(assert (=> b!5298860 (= e!3293587 (not (isDefined!11752 lt!2165066)))))

(declare-fun b!5298862 () Bool)

(declare-fun e!3293585 () Option!15049)

(assert (=> b!5298862 (= e!3293585 e!3293583)))

(declare-fun c!919705 () Bool)

(assert (=> b!5298862 (= c!919705 (is-Nil!60991 s!2326))))

(declare-fun b!5298863 () Bool)

(assert (=> b!5298863 (= e!3293585 (Some!15048 (tuple2!64275 Nil!60991 s!2326)))))

(declare-fun b!5298861 () Bool)

(declare-fun res!2247476 () Bool)

(assert (=> b!5298861 (=> (not res!2247476) (not e!3293586))))

(assert (=> b!5298861 (= res!2247476 (matchR!7123 lt!2164843 (_2!35440 (get!20974 lt!2165066))))))

(declare-fun d!1703991 () Bool)

(assert (=> d!1703991 e!3293587))

(declare-fun res!2247477 () Bool)

(assert (=> d!1703991 (=> res!2247477 e!3293587)))

(assert (=> d!1703991 (= res!2247477 e!3293586)))

(declare-fun res!2247479 () Bool)

(assert (=> d!1703991 (=> (not res!2247479) (not e!3293586))))

(assert (=> d!1703991 (= res!2247479 (isDefined!11752 lt!2165066))))

(assert (=> d!1703991 (= lt!2165066 e!3293585)))

(declare-fun c!919706 () Bool)

(declare-fun e!3293584 () Bool)

(assert (=> d!1703991 (= c!919706 e!3293584)))

(declare-fun res!2247478 () Bool)

(assert (=> d!1703991 (=> (not res!2247478) (not e!3293584))))

(assert (=> d!1703991 (= res!2247478 (matchR!7123 (regTwo!30388 (regOne!30388 r!7292)) Nil!60991))))

(assert (=> d!1703991 (validRegex!6674 (regTwo!30388 (regOne!30388 r!7292)))))

(assert (=> d!1703991 (= (findConcatSeparation!1463 (regTwo!30388 (regOne!30388 r!7292)) lt!2164843 Nil!60991 s!2326 s!2326) lt!2165066)))

(declare-fun b!5298864 () Bool)

(assert (=> b!5298864 (= e!3293584 (matchR!7123 lt!2164843 s!2326))))

(declare-fun b!5298865 () Bool)

(assert (=> b!5298865 (= e!3293583 None!15048)))

(assert (= (and d!1703991 res!2247478) b!5298864))

(assert (= (and d!1703991 c!919706) b!5298863))

(assert (= (and d!1703991 (not c!919706)) b!5298862))

(assert (= (and b!5298862 c!919705) b!5298865))

(assert (= (and b!5298862 (not c!919705)) b!5298857))

(assert (= (and d!1703991 res!2247479) b!5298859))

(assert (= (and b!5298859 res!2247475) b!5298861))

(assert (= (and b!5298861 res!2247476) b!5298858))

(assert (= (and d!1703991 (not res!2247477)) b!5298860))

(declare-fun m!6336294 () Bool)

(assert (=> b!5298864 m!6336294))

(assert (=> b!5298857 m!6336088))

(assert (=> b!5298857 m!6336088))

(assert (=> b!5298857 m!6336090))

(assert (=> b!5298857 m!6336092))

(assert (=> b!5298857 m!6336088))

(declare-fun m!6336296 () Bool)

(assert (=> b!5298857 m!6336296))

(declare-fun m!6336298 () Bool)

(assert (=> b!5298858 m!6336298))

(declare-fun m!6336300 () Bool)

(assert (=> b!5298858 m!6336300))

(assert (=> b!5298861 m!6336298))

(declare-fun m!6336302 () Bool)

(assert (=> b!5298861 m!6336302))

(declare-fun m!6336304 () Bool)

(assert (=> b!5298860 m!6336304))

(assert (=> d!1703991 m!6336304))

(declare-fun m!6336306 () Bool)

(assert (=> d!1703991 m!6336306))

(assert (=> d!1703991 m!6336266))

(assert (=> b!5298859 m!6336298))

(declare-fun m!6336308 () Bool)

(assert (=> b!5298859 m!6336308))

(assert (=> b!5298427 d!1703991))

(declare-fun d!1703993 () Bool)

(declare-fun lt!2165069 () Int)

(assert (=> d!1703993 (>= lt!2165069 0)))

(declare-fun e!3293590 () Int)

(assert (=> d!1703993 (= lt!2165069 e!3293590)))

(declare-fun c!919709 () Bool)

(assert (=> d!1703993 (= c!919709 (is-Cons!60990 lt!2164855))))

(assert (=> d!1703993 (= (zipperDepthTotal!99 lt!2164855) lt!2165069)))

(declare-fun b!5298870 () Bool)

(assert (=> b!5298870 (= e!3293590 (+ (contextDepthTotal!79 (h!67438 lt!2164855)) (zipperDepthTotal!99 (t!374319 lt!2164855))))))

(declare-fun b!5298871 () Bool)

(assert (=> b!5298871 (= e!3293590 0)))

(assert (= (and d!1703993 c!919709) b!5298870))

(assert (= (and d!1703993 (not c!919709)) b!5298871))

(declare-fun m!6336310 () Bool)

(assert (=> b!5298870 m!6336310))

(declare-fun m!6336312 () Bool)

(assert (=> b!5298870 m!6336312))

(assert (=> b!5298412 d!1703993))

(declare-fun d!1703995 () Bool)

(declare-fun lt!2165070 () Int)

(assert (=> d!1703995 (>= lt!2165070 0)))

(declare-fun e!3293591 () Int)

(assert (=> d!1703995 (= lt!2165070 e!3293591)))

(declare-fun c!919710 () Bool)

(assert (=> d!1703995 (= c!919710 (is-Cons!60990 zl!343))))

(assert (=> d!1703995 (= (zipperDepthTotal!99 zl!343) lt!2165070)))

(declare-fun b!5298872 () Bool)

(assert (=> b!5298872 (= e!3293591 (+ (contextDepthTotal!79 (h!67438 zl!343)) (zipperDepthTotal!99 (t!374319 zl!343))))))

(declare-fun b!5298873 () Bool)

(assert (=> b!5298873 (= e!3293591 0)))

(assert (= (and d!1703995 c!919710) b!5298872))

(assert (= (and d!1703995 (not c!919710)) b!5298873))

(assert (=> b!5298872 m!6335850))

(declare-fun m!6336314 () Bool)

(assert (=> b!5298872 m!6336314))

(assert (=> b!5298412 d!1703995))

(declare-fun d!1703997 () Bool)

(declare-fun nullableFct!1471 (Regex!14938) Bool)

(assert (=> d!1703997 (= (nullable!5107 (regOne!30388 (regOne!30388 r!7292))) (nullableFct!1471 (regOne!30388 (regOne!30388 r!7292))))))

(declare-fun bs!1228964 () Bool)

(assert (= bs!1228964 d!1703997))

(declare-fun m!6336316 () Bool)

(assert (=> bs!1228964 m!6336316))

(assert (=> b!5298431 d!1703997))

(declare-fun bs!1228965 () Bool)

(declare-fun b!5298884 () Bool)

(assert (= bs!1228965 (and b!5298884 d!1703949)))

(declare-fun lambda!268943 () Int)

(assert (=> bs!1228965 (not (= lambda!268943 lambda!268924))))

(declare-fun bs!1228966 () Bool)

(assert (= bs!1228966 (and b!5298884 b!5298835)))

(assert (=> bs!1228966 (not (= lambda!268943 lambda!268942))))

(declare-fun bs!1228967 () Bool)

(assert (= bs!1228967 (and b!5298884 b!5298427)))

(assert (=> bs!1228967 (not (= lambda!268943 lambda!268880))))

(assert (=> bs!1228967 (not (= lambda!268943 lambda!268879))))

(declare-fun bs!1228968 () Bool)

(assert (= bs!1228968 (and b!5298884 d!1703977)))

(assert (=> bs!1228968 (not (= lambda!268943 lambda!268939))))

(declare-fun bs!1228969 () Bool)

(assert (= bs!1228969 (and b!5298884 d!1703935)))

(assert (=> bs!1228969 (not (= lambda!268943 lambda!268917))))

(assert (=> bs!1228967 (not (= lambda!268943 lambda!268877))))

(declare-fun bs!1228970 () Bool)

(assert (= bs!1228970 (and b!5298884 d!1703963)))

(assert (=> bs!1228970 (not (= lambda!268943 lambda!268929))))

(declare-fun bs!1228971 () Bool)

(assert (= bs!1228971 (and b!5298884 b!5298824)))

(assert (=> bs!1228971 (not (= lambda!268943 lambda!268937))))

(declare-fun bs!1228972 () Bool)

(assert (= bs!1228972 (and b!5298884 b!5298831)))

(assert (=> bs!1228972 (= (and (= (reg!15267 r!7292) (reg!15267 lt!2164870)) (= r!7292 lt!2164870)) (= lambda!268943 lambda!268936))))

(declare-fun bs!1228973 () Bool)

(assert (= bs!1228973 (and b!5298884 b!5298408)))

(assert (=> bs!1228973 (not (= lambda!268943 lambda!268874))))

(declare-fun bs!1228974 () Bool)

(assert (= bs!1228974 (and b!5298884 d!1703937)))

(assert (=> bs!1228974 (not (= lambda!268943 lambda!268922))))

(declare-fun bs!1228975 () Bool)

(assert (= bs!1228975 (and b!5298884 d!1703975)))

(assert (=> bs!1228975 (not (= lambda!268943 lambda!268938))))

(assert (=> bs!1228967 (not (= lambda!268943 lambda!268878))))

(assert (=> bs!1228974 (not (= lambda!268943 lambda!268923))))

(declare-fun bs!1228976 () Bool)

(assert (= bs!1228976 (and b!5298884 b!5298842)))

(assert (=> bs!1228976 (= (and (= (reg!15267 r!7292) (reg!15267 lt!2164865)) (= r!7292 lt!2164865)) (= lambda!268943 lambda!268941))))

(assert (=> bs!1228973 (not (= lambda!268943 lambda!268875))))

(assert (=> bs!1228968 (not (= lambda!268943 lambda!268940))))

(assert (=> bs!1228965 (not (= lambda!268943 lambda!268925))))

(assert (=> b!5298884 true))

(assert (=> b!5298884 true))

(declare-fun bs!1228977 () Bool)

(declare-fun b!5298877 () Bool)

(assert (= bs!1228977 (and b!5298877 d!1703949)))

(declare-fun lambda!268944 () Int)

(assert (=> bs!1228977 (not (= lambda!268944 lambda!268924))))

(declare-fun bs!1228978 () Bool)

(assert (= bs!1228978 (and b!5298877 b!5298427)))

(assert (=> bs!1228978 (= (and (= (regOne!30388 r!7292) (regTwo!30388 (regOne!30388 r!7292))) (= (regTwo!30388 r!7292) lt!2164843)) (= lambda!268944 lambda!268880))))

(assert (=> bs!1228978 (not (= lambda!268944 lambda!268879))))

(declare-fun bs!1228979 () Bool)

(assert (= bs!1228979 (and b!5298877 d!1703977)))

(assert (=> bs!1228979 (not (= lambda!268944 lambda!268939))))

(declare-fun bs!1228980 () Bool)

(assert (= bs!1228980 (and b!5298877 d!1703935)))

(assert (=> bs!1228980 (not (= lambda!268944 lambda!268917))))

(assert (=> bs!1228978 (not (= lambda!268944 lambda!268877))))

(declare-fun bs!1228981 () Bool)

(assert (= bs!1228981 (and b!5298877 d!1703963)))

(assert (=> bs!1228981 (not (= lambda!268944 lambda!268929))))

(declare-fun bs!1228982 () Bool)

(assert (= bs!1228982 (and b!5298877 b!5298824)))

(assert (=> bs!1228982 (= (and (= (regOne!30388 r!7292) (regOne!30388 lt!2164870)) (= (regTwo!30388 r!7292) (regTwo!30388 lt!2164870))) (= lambda!268944 lambda!268937))))

(declare-fun bs!1228983 () Bool)

(assert (= bs!1228983 (and b!5298877 b!5298831)))

(assert (=> bs!1228983 (not (= lambda!268944 lambda!268936))))

(declare-fun bs!1228984 () Bool)

(assert (= bs!1228984 (and b!5298877 b!5298408)))

(assert (=> bs!1228984 (not (= lambda!268944 lambda!268874))))

(declare-fun bs!1228985 () Bool)

(assert (= bs!1228985 (and b!5298877 d!1703937)))

(assert (=> bs!1228985 (not (= lambda!268944 lambda!268922))))

(declare-fun bs!1228986 () Bool)

(assert (= bs!1228986 (and b!5298877 d!1703975)))

(assert (=> bs!1228986 (not (= lambda!268944 lambda!268938))))

(assert (=> bs!1228978 (= (and (= (regOne!30388 r!7292) (regOne!30388 (regOne!30388 r!7292))) (= (regTwo!30388 r!7292) lt!2164865)) (= lambda!268944 lambda!268878))))

(assert (=> bs!1228985 (= lambda!268944 lambda!268923)))

(declare-fun bs!1228987 () Bool)

(assert (= bs!1228987 (and b!5298877 b!5298835)))

(assert (=> bs!1228987 (= (and (= (regOne!30388 r!7292) (regOne!30388 lt!2164865)) (= (regTwo!30388 r!7292) (regTwo!30388 lt!2164865))) (= lambda!268944 lambda!268942))))

(declare-fun bs!1228988 () Bool)

(assert (= bs!1228988 (and b!5298877 b!5298884)))

(assert (=> bs!1228988 (not (= lambda!268944 lambda!268943))))

(declare-fun bs!1228989 () Bool)

(assert (= bs!1228989 (and b!5298877 b!5298842)))

(assert (=> bs!1228989 (not (= lambda!268944 lambda!268941))))

(assert (=> bs!1228984 (= lambda!268944 lambda!268875)))

(assert (=> bs!1228979 (= (and (= (regOne!30388 r!7292) (regTwo!30388 (regOne!30388 r!7292))) (= (regTwo!30388 r!7292) lt!2164843)) (= lambda!268944 lambda!268940))))

(assert (=> bs!1228977 (= (and (= (regOne!30388 r!7292) (regOne!30388 (regOne!30388 r!7292))) (= (regTwo!30388 r!7292) lt!2164865)) (= lambda!268944 lambda!268925))))

(assert (=> b!5298877 true))

(assert (=> b!5298877 true))

(declare-fun b!5298874 () Bool)

(declare-fun e!3293597 () Bool)

(declare-fun e!3293598 () Bool)

(assert (=> b!5298874 (= e!3293597 e!3293598)))

(declare-fun res!2247480 () Bool)

(assert (=> b!5298874 (= res!2247480 (matchRSpec!2041 (regOne!30389 r!7292) s!2326))))

(assert (=> b!5298874 (=> res!2247480 e!3293598)))

(declare-fun b!5298875 () Bool)

(declare-fun e!3293596 () Bool)

(declare-fun e!3293592 () Bool)

(assert (=> b!5298875 (= e!3293596 e!3293592)))

(declare-fun res!2247482 () Bool)

(assert (=> b!5298875 (= res!2247482 (not (is-EmptyLang!14938 r!7292)))))

(assert (=> b!5298875 (=> (not res!2247482) (not e!3293592))))

(declare-fun b!5298876 () Bool)

(declare-fun call!377707 () Bool)

(assert (=> b!5298876 (= e!3293596 call!377707)))

(declare-fun e!3293594 () Bool)

(declare-fun call!377706 () Bool)

(assert (=> b!5298877 (= e!3293594 call!377706)))

(declare-fun b!5298878 () Bool)

(declare-fun c!919712 () Bool)

(assert (=> b!5298878 (= c!919712 (is-ElementMatch!14938 r!7292))))

(declare-fun e!3293595 () Bool)

(assert (=> b!5298878 (= e!3293592 e!3293595)))

(declare-fun c!919714 () Bool)

(declare-fun bm!377701 () Bool)

(assert (=> bm!377701 (= call!377706 (Exists!2119 (ite c!919714 lambda!268943 lambda!268944)))))

(declare-fun b!5298880 () Bool)

(declare-fun c!919711 () Bool)

(assert (=> b!5298880 (= c!919711 (is-Union!14938 r!7292))))

(assert (=> b!5298880 (= e!3293595 e!3293597)))

(declare-fun b!5298881 () Bool)

(assert (=> b!5298881 (= e!3293595 (= s!2326 (Cons!60991 (c!919624 r!7292) Nil!60991)))))

(declare-fun bm!377702 () Bool)

(assert (=> bm!377702 (= call!377707 (isEmpty!32953 s!2326))))

(declare-fun b!5298882 () Bool)

(assert (=> b!5298882 (= e!3293597 e!3293594)))

(assert (=> b!5298882 (= c!919714 (is-Star!14938 r!7292))))

(declare-fun b!5298879 () Bool)

(assert (=> b!5298879 (= e!3293598 (matchRSpec!2041 (regTwo!30389 r!7292) s!2326))))

(declare-fun d!1703999 () Bool)

(declare-fun c!919713 () Bool)

(assert (=> d!1703999 (= c!919713 (is-EmptyExpr!14938 r!7292))))

(assert (=> d!1703999 (= (matchRSpec!2041 r!7292 s!2326) e!3293596)))

(declare-fun b!5298883 () Bool)

(declare-fun res!2247481 () Bool)

(declare-fun e!3293593 () Bool)

(assert (=> b!5298883 (=> res!2247481 e!3293593)))

(assert (=> b!5298883 (= res!2247481 call!377707)))

(assert (=> b!5298883 (= e!3293594 e!3293593)))

(assert (=> b!5298884 (= e!3293593 call!377706)))

(assert (= (and d!1703999 c!919713) b!5298876))

(assert (= (and d!1703999 (not c!919713)) b!5298875))

(assert (= (and b!5298875 res!2247482) b!5298878))

(assert (= (and b!5298878 c!919712) b!5298881))

(assert (= (and b!5298878 (not c!919712)) b!5298880))

(assert (= (and b!5298880 c!919711) b!5298874))

(assert (= (and b!5298880 (not c!919711)) b!5298882))

(assert (= (and b!5298874 (not res!2247480)) b!5298879))

(assert (= (and b!5298882 c!919714) b!5298883))

(assert (= (and b!5298882 (not c!919714)) b!5298877))

(assert (= (and b!5298883 (not res!2247481)) b!5298884))

(assert (= (or b!5298884 b!5298877) bm!377701))

(assert (= (or b!5298876 b!5298883) bm!377702))

(declare-fun m!6336318 () Bool)

(assert (=> b!5298874 m!6336318))

(declare-fun m!6336320 () Bool)

(assert (=> bm!377701 m!6336320))

(assert (=> bm!377702 m!6336124))

(declare-fun m!6336322 () Bool)

(assert (=> b!5298879 m!6336322))

(assert (=> b!5298415 d!1703999))

(declare-fun bm!377703 () Bool)

(declare-fun call!377708 () Bool)

(assert (=> bm!377703 (= call!377708 (isEmpty!32953 s!2326))))

(declare-fun b!5298885 () Bool)

(declare-fun e!3293599 () Bool)

(declare-fun lt!2165071 () Bool)

(assert (=> b!5298885 (= e!3293599 (not lt!2165071))))

(declare-fun b!5298886 () Bool)

(declare-fun res!2247484 () Bool)

(declare-fun e!3293604 () Bool)

(assert (=> b!5298886 (=> res!2247484 e!3293604)))

(declare-fun e!3293603 () Bool)

(assert (=> b!5298886 (= res!2247484 e!3293603)))

(declare-fun res!2247490 () Bool)

(assert (=> b!5298886 (=> (not res!2247490) (not e!3293603))))

(assert (=> b!5298886 (= res!2247490 lt!2165071)))

(declare-fun b!5298887 () Bool)

(declare-fun e!3293601 () Bool)

(declare-fun e!3293600 () Bool)

(assert (=> b!5298887 (= e!3293601 e!3293600)))

(declare-fun res!2247487 () Bool)

(assert (=> b!5298887 (=> res!2247487 e!3293600)))

(assert (=> b!5298887 (= res!2247487 call!377708)))

(declare-fun b!5298888 () Bool)

(assert (=> b!5298888 (= e!3293603 (= (head!11356 s!2326) (c!919624 r!7292)))))

(declare-fun b!5298889 () Bool)

(assert (=> b!5298889 (= e!3293604 e!3293601)))

(declare-fun res!2247488 () Bool)

(assert (=> b!5298889 (=> (not res!2247488) (not e!3293601))))

(assert (=> b!5298889 (= res!2247488 (not lt!2165071))))

(declare-fun d!1704001 () Bool)

(declare-fun e!3293602 () Bool)

(assert (=> d!1704001 e!3293602))

(declare-fun c!919717 () Bool)

(assert (=> d!1704001 (= c!919717 (is-EmptyExpr!14938 r!7292))))

(declare-fun e!3293605 () Bool)

(assert (=> d!1704001 (= lt!2165071 e!3293605)))

(declare-fun c!919716 () Bool)

(assert (=> d!1704001 (= c!919716 (isEmpty!32953 s!2326))))

(assert (=> d!1704001 (validRegex!6674 r!7292)))

(assert (=> d!1704001 (= (matchR!7123 r!7292 s!2326) lt!2165071)))

(declare-fun b!5298890 () Bool)

(assert (=> b!5298890 (= e!3293602 e!3293599)))

(declare-fun c!919715 () Bool)

(assert (=> b!5298890 (= c!919715 (is-EmptyLang!14938 r!7292))))

(declare-fun b!5298891 () Bool)

(declare-fun res!2247486 () Bool)

(assert (=> b!5298891 (=> res!2247486 e!3293604)))

(assert (=> b!5298891 (= res!2247486 (not (is-ElementMatch!14938 r!7292)))))

(assert (=> b!5298891 (= e!3293599 e!3293604)))

(declare-fun b!5298892 () Bool)

(assert (=> b!5298892 (= e!3293602 (= lt!2165071 call!377708))))

(declare-fun b!5298893 () Bool)

(assert (=> b!5298893 (= e!3293605 (nullable!5107 r!7292))))

(declare-fun b!5298894 () Bool)

(assert (=> b!5298894 (= e!3293605 (matchR!7123 (derivativeStep!4140 r!7292 (head!11356 s!2326)) (tail!10453 s!2326)))))

(declare-fun b!5298895 () Bool)

(declare-fun res!2247489 () Bool)

(assert (=> b!5298895 (=> (not res!2247489) (not e!3293603))))

(assert (=> b!5298895 (= res!2247489 (isEmpty!32953 (tail!10453 s!2326)))))

(declare-fun b!5298896 () Bool)

(assert (=> b!5298896 (= e!3293600 (not (= (head!11356 s!2326) (c!919624 r!7292))))))

(declare-fun b!5298897 () Bool)

(declare-fun res!2247485 () Bool)

(assert (=> b!5298897 (=> (not res!2247485) (not e!3293603))))

(assert (=> b!5298897 (= res!2247485 (not call!377708))))

(declare-fun b!5298898 () Bool)

(declare-fun res!2247483 () Bool)

(assert (=> b!5298898 (=> res!2247483 e!3293600)))

(assert (=> b!5298898 (= res!2247483 (not (isEmpty!32953 (tail!10453 s!2326))))))

(assert (= (and d!1704001 c!919716) b!5298893))

(assert (= (and d!1704001 (not c!919716)) b!5298894))

(assert (= (and d!1704001 c!919717) b!5298892))

(assert (= (and d!1704001 (not c!919717)) b!5298890))

(assert (= (and b!5298890 c!919715) b!5298885))

(assert (= (and b!5298890 (not c!919715)) b!5298891))

(assert (= (and b!5298891 (not res!2247486)) b!5298886))

(assert (= (and b!5298886 res!2247490) b!5298897))

(assert (= (and b!5298897 res!2247485) b!5298895))

(assert (= (and b!5298895 res!2247489) b!5298888))

(assert (= (and b!5298886 (not res!2247484)) b!5298889))

(assert (= (and b!5298889 res!2247488) b!5298887))

(assert (= (and b!5298887 (not res!2247487)) b!5298898))

(assert (= (and b!5298898 (not res!2247483)) b!5298896))

(assert (= (or b!5298892 b!5298887 b!5298897) bm!377703))

(assert (=> b!5298898 m!6336132))

(assert (=> b!5298898 m!6336132))

(assert (=> b!5298898 m!6336196))

(assert (=> b!5298896 m!6336128))

(declare-fun m!6336324 () Bool)

(assert (=> b!5298893 m!6336324))

(assert (=> b!5298895 m!6336132))

(assert (=> b!5298895 m!6336132))

(assert (=> b!5298895 m!6336196))

(assert (=> d!1704001 m!6336124))

(assert (=> d!1704001 m!6335736))

(assert (=> b!5298888 m!6336128))

(assert (=> bm!377703 m!6336124))

(assert (=> b!5298894 m!6336128))

(assert (=> b!5298894 m!6336128))

(declare-fun m!6336326 () Bool)

(assert (=> b!5298894 m!6336326))

(assert (=> b!5298894 m!6336132))

(assert (=> b!5298894 m!6336326))

(assert (=> b!5298894 m!6336132))

(declare-fun m!6336328 () Bool)

(assert (=> b!5298894 m!6336328))

(assert (=> b!5298415 d!1704001))

(declare-fun d!1704003 () Bool)

(assert (=> d!1704003 (= (matchR!7123 r!7292 s!2326) (matchRSpec!2041 r!7292 s!2326))))

(declare-fun lt!2165072 () Unit!153270)

(assert (=> d!1704003 (= lt!2165072 (choose!39597 r!7292 s!2326))))

(assert (=> d!1704003 (validRegex!6674 r!7292)))

(assert (=> d!1704003 (= (mainMatchTheorem!2041 r!7292 s!2326) lt!2165072)))

(declare-fun bs!1228990 () Bool)

(assert (= bs!1228990 d!1704003))

(assert (=> bs!1228990 m!6335748))

(assert (=> bs!1228990 m!6335746))

(declare-fun m!6336330 () Bool)

(assert (=> bs!1228990 m!6336330))

(assert (=> bs!1228990 m!6335736))

(assert (=> b!5298415 d!1704003))

(assert (=> b!5298434 d!1703923))

(declare-fun d!1704005 () Bool)

(declare-fun c!919718 () Bool)

(assert (=> d!1704005 (= c!919718 (isEmpty!32953 (t!374320 s!2326)))))

(declare-fun e!3293606 () Bool)

(assert (=> d!1704005 (= (matchZipper!1182 lt!2164857 (t!374320 s!2326)) e!3293606)))

(declare-fun b!5298899 () Bool)

(assert (=> b!5298899 (= e!3293606 (nullableZipper!1319 lt!2164857))))

(declare-fun b!5298900 () Bool)

(assert (=> b!5298900 (= e!3293606 (matchZipper!1182 (derivationStepZipper!1181 lt!2164857 (head!11356 (t!374320 s!2326))) (tail!10453 (t!374320 s!2326))))))

(assert (= (and d!1704005 c!919718) b!5298899))

(assert (= (and d!1704005 (not c!919718)) b!5298900))

(assert (=> d!1704005 m!6336062))

(declare-fun m!6336332 () Bool)

(assert (=> b!5298899 m!6336332))

(assert (=> b!5298900 m!6336066))

(assert (=> b!5298900 m!6336066))

(declare-fun m!6336334 () Bool)

(assert (=> b!5298900 m!6336334))

(assert (=> b!5298900 m!6336070))

(assert (=> b!5298900 m!6336334))

(assert (=> b!5298900 m!6336070))

(declare-fun m!6336336 () Bool)

(assert (=> b!5298900 m!6336336))

(assert (=> b!5298434 d!1704005))

(declare-fun d!1704007 () Bool)

(declare-fun c!919719 () Bool)

(assert (=> d!1704007 (= c!919719 (isEmpty!32953 (t!374320 s!2326)))))

(declare-fun e!3293607 () Bool)

(assert (=> d!1704007 (= (matchZipper!1182 lt!2164860 (t!374320 s!2326)) e!3293607)))

(declare-fun b!5298901 () Bool)

(assert (=> b!5298901 (= e!3293607 (nullableZipper!1319 lt!2164860))))

(declare-fun b!5298902 () Bool)

(assert (=> b!5298902 (= e!3293607 (matchZipper!1182 (derivationStepZipper!1181 lt!2164860 (head!11356 (t!374320 s!2326))) (tail!10453 (t!374320 s!2326))))))

(assert (= (and d!1704007 c!919719) b!5298901))

(assert (= (and d!1704007 (not c!919719)) b!5298902))

(assert (=> d!1704007 m!6336062))

(declare-fun m!6336338 () Bool)

(assert (=> b!5298901 m!6336338))

(assert (=> b!5298902 m!6336066))

(assert (=> b!5298902 m!6336066))

(declare-fun m!6336340 () Bool)

(assert (=> b!5298902 m!6336340))

(assert (=> b!5298902 m!6336070))

(assert (=> b!5298902 m!6336340))

(assert (=> b!5298902 m!6336070))

(declare-fun m!6336342 () Bool)

(assert (=> b!5298902 m!6336342))

(assert (=> b!5298434 d!1704007))

(declare-fun d!1704009 () Bool)

(declare-fun e!3293608 () Bool)

(assert (=> d!1704009 (= (matchZipper!1182 (set.union lt!2164860 lt!2164851) (t!374320 s!2326)) e!3293608)))

(declare-fun res!2247491 () Bool)

(assert (=> d!1704009 (=> res!2247491 e!3293608)))

(assert (=> d!1704009 (= res!2247491 (matchZipper!1182 lt!2164860 (t!374320 s!2326)))))

(declare-fun lt!2165073 () Unit!153270)

(assert (=> d!1704009 (= lt!2165073 (choose!39592 lt!2164860 lt!2164851 (t!374320 s!2326)))))

(assert (=> d!1704009 (= (lemmaZipperConcatMatchesSameAsBothZippers!175 lt!2164860 lt!2164851 (t!374320 s!2326)) lt!2165073)))

(declare-fun b!5298903 () Bool)

(assert (=> b!5298903 (= e!3293608 (matchZipper!1182 lt!2164851 (t!374320 s!2326)))))

(assert (= (and d!1704009 (not res!2247491)) b!5298903))

(declare-fun m!6336344 () Bool)

(assert (=> d!1704009 m!6336344))

(assert (=> d!1704009 m!6335718))

(declare-fun m!6336346 () Bool)

(assert (=> d!1704009 m!6336346))

(assert (=> b!5298903 m!6335846))

(assert (=> b!5298434 d!1704009))

(declare-fun b!5298910 () Bool)

(assert (=> b!5298910 true))

(declare-fun bs!1228991 () Bool)

(declare-fun b!5298912 () Bool)

(assert (= bs!1228991 (and b!5298912 b!5298910)))

(declare-fun lt!2165085 () Int)

(declare-fun lambda!268952 () Int)

(declare-fun lambda!268953 () Int)

(declare-fun lt!2165083 () Int)

(assert (=> bs!1228991 (= (= lt!2165083 lt!2165085) (= lambda!268953 lambda!268952))))

(assert (=> b!5298912 true))

(declare-fun d!1704011 () Bool)

(declare-fun e!3293614 () Bool)

(assert (=> d!1704011 e!3293614))

(declare-fun res!2247494 () Bool)

(assert (=> d!1704011 (=> (not res!2247494) (not e!3293614))))

(assert (=> d!1704011 (= res!2247494 (>= lt!2165083 0))))

(declare-fun e!3293613 () Int)

(assert (=> d!1704011 (= lt!2165083 e!3293613)))

(declare-fun c!919728 () Bool)

(assert (=> d!1704011 (= c!919728 (is-Cons!60990 lt!2164855))))

(assert (=> d!1704011 (= (zipperDepth!55 lt!2164855) lt!2165083)))

(assert (=> b!5298910 (= e!3293613 lt!2165085)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!31 (Context!8644) Int)

(assert (=> b!5298910 (= lt!2165085 (maxBigInt!0 (contextDepth!31 (h!67438 lt!2164855)) (zipperDepth!55 (t!374319 lt!2164855))))))

(declare-fun lambda!268951 () Int)

(declare-fun lt!2165082 () Unit!153270)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!25 (List!61114 Int Int Int) Unit!153270)

(assert (=> b!5298910 (= lt!2165082 (lemmaForallContextDepthBiggerThanTransitive!25 (t!374319 lt!2164855) lt!2165085 (zipperDepth!55 (t!374319 lt!2164855)) lambda!268951))))

(declare-fun forall!14353 (List!61114 Int) Bool)

(assert (=> b!5298910 (forall!14353 (t!374319 lt!2164855) lambda!268952)))

(declare-fun lt!2165084 () Unit!153270)

(assert (=> b!5298910 (= lt!2165084 lt!2165082)))

(declare-fun b!5298911 () Bool)

(assert (=> b!5298911 (= e!3293613 0)))

(assert (=> b!5298912 (= e!3293614 (forall!14353 lt!2164855 lambda!268953))))

(assert (= (and d!1704011 c!919728) b!5298910))

(assert (= (and d!1704011 (not c!919728)) b!5298911))

(assert (= (and d!1704011 res!2247494) b!5298912))

(declare-fun m!6336348 () Bool)

(assert (=> b!5298910 m!6336348))

(declare-fun m!6336350 () Bool)

(assert (=> b!5298910 m!6336350))

(declare-fun m!6336352 () Bool)

(assert (=> b!5298910 m!6336352))

(declare-fun m!6336354 () Bool)

(assert (=> b!5298910 m!6336354))

(assert (=> b!5298910 m!6336354))

(assert (=> b!5298910 m!6336348))

(declare-fun m!6336356 () Bool)

(assert (=> b!5298910 m!6336356))

(assert (=> b!5298910 m!6336348))

(declare-fun m!6336358 () Bool)

(assert (=> b!5298912 m!6336358))

(assert (=> b!5298414 d!1704011))

(declare-fun bs!1228992 () Bool)

(declare-fun b!5298915 () Bool)

(assert (= bs!1228992 (and b!5298915 b!5298910)))

(declare-fun lambda!268954 () Int)

(assert (=> bs!1228992 (= lambda!268954 lambda!268951)))

(declare-fun lambda!268955 () Int)

(declare-fun lt!2165089 () Int)

(assert (=> bs!1228992 (= (= lt!2165089 lt!2165085) (= lambda!268955 lambda!268952))))

(declare-fun bs!1228993 () Bool)

(assert (= bs!1228993 (and b!5298915 b!5298912)))

(assert (=> bs!1228993 (= (= lt!2165089 lt!2165083) (= lambda!268955 lambda!268953))))

(assert (=> b!5298915 true))

(declare-fun bs!1228994 () Bool)

(declare-fun b!5298917 () Bool)

(assert (= bs!1228994 (and b!5298917 b!5298910)))

(declare-fun lt!2165087 () Int)

(declare-fun lambda!268956 () Int)

(assert (=> bs!1228994 (= (= lt!2165087 lt!2165085) (= lambda!268956 lambda!268952))))

(declare-fun bs!1228995 () Bool)

(assert (= bs!1228995 (and b!5298917 b!5298912)))

(assert (=> bs!1228995 (= (= lt!2165087 lt!2165083) (= lambda!268956 lambda!268953))))

(declare-fun bs!1228996 () Bool)

(assert (= bs!1228996 (and b!5298917 b!5298915)))

(assert (=> bs!1228996 (= (= lt!2165087 lt!2165089) (= lambda!268956 lambda!268955))))

(assert (=> b!5298917 true))

(declare-fun d!1704013 () Bool)

(declare-fun e!3293616 () Bool)

(assert (=> d!1704013 e!3293616))

(declare-fun res!2247495 () Bool)

(assert (=> d!1704013 (=> (not res!2247495) (not e!3293616))))

(assert (=> d!1704013 (= res!2247495 (>= lt!2165087 0))))

(declare-fun e!3293615 () Int)

(assert (=> d!1704013 (= lt!2165087 e!3293615)))

(declare-fun c!919729 () Bool)

(assert (=> d!1704013 (= c!919729 (is-Cons!60990 zl!343))))

(assert (=> d!1704013 (= (zipperDepth!55 zl!343) lt!2165087)))

(assert (=> b!5298915 (= e!3293615 lt!2165089)))

(assert (=> b!5298915 (= lt!2165089 (maxBigInt!0 (contextDepth!31 (h!67438 zl!343)) (zipperDepth!55 (t!374319 zl!343))))))

(declare-fun lt!2165086 () Unit!153270)

(assert (=> b!5298915 (= lt!2165086 (lemmaForallContextDepthBiggerThanTransitive!25 (t!374319 zl!343) lt!2165089 (zipperDepth!55 (t!374319 zl!343)) lambda!268954))))

(assert (=> b!5298915 (forall!14353 (t!374319 zl!343) lambda!268955)))

(declare-fun lt!2165088 () Unit!153270)

(assert (=> b!5298915 (= lt!2165088 lt!2165086)))

(declare-fun b!5298916 () Bool)

(assert (=> b!5298916 (= e!3293615 0)))

(assert (=> b!5298917 (= e!3293616 (forall!14353 zl!343 lambda!268956))))

(assert (= (and d!1704013 c!919729) b!5298915))

(assert (= (and d!1704013 (not c!919729)) b!5298916))

(assert (= (and d!1704013 res!2247495) b!5298917))

(declare-fun m!6336360 () Bool)

(assert (=> b!5298915 m!6336360))

(declare-fun m!6336362 () Bool)

(assert (=> b!5298915 m!6336362))

(declare-fun m!6336364 () Bool)

(assert (=> b!5298915 m!6336364))

(declare-fun m!6336366 () Bool)

(assert (=> b!5298915 m!6336366))

(assert (=> b!5298915 m!6336366))

(assert (=> b!5298915 m!6336360))

(declare-fun m!6336368 () Bool)

(assert (=> b!5298915 m!6336368))

(assert (=> b!5298915 m!6336360))

(declare-fun m!6336370 () Bool)

(assert (=> b!5298917 m!6336370))

(assert (=> b!5298414 d!1704013))

(declare-fun d!1704015 () Bool)

(declare-fun c!919730 () Bool)

(assert (=> d!1704015 (= c!919730 (isEmpty!32953 (t!374320 s!2326)))))

(declare-fun e!3293617 () Bool)

(assert (=> d!1704015 (= (matchZipper!1182 lt!2164851 (t!374320 s!2326)) e!3293617)))

(declare-fun b!5298918 () Bool)

(assert (=> b!5298918 (= e!3293617 (nullableZipper!1319 lt!2164851))))

(declare-fun b!5298919 () Bool)

(assert (=> b!5298919 (= e!3293617 (matchZipper!1182 (derivationStepZipper!1181 lt!2164851 (head!11356 (t!374320 s!2326))) (tail!10453 (t!374320 s!2326))))))

(assert (= (and d!1704015 c!919730) b!5298918))

(assert (= (and d!1704015 (not c!919730)) b!5298919))

(assert (=> d!1704015 m!6336062))

(declare-fun m!6336372 () Bool)

(assert (=> b!5298918 m!6336372))

(assert (=> b!5298919 m!6336066))

(assert (=> b!5298919 m!6336066))

(declare-fun m!6336374 () Bool)

(assert (=> b!5298919 m!6336374))

(assert (=> b!5298919 m!6336070))

(assert (=> b!5298919 m!6336374))

(assert (=> b!5298919 m!6336070))

(declare-fun m!6336376 () Bool)

(assert (=> b!5298919 m!6336376))

(assert (=> b!5298413 d!1704015))

(declare-fun bs!1228997 () Bool)

(declare-fun d!1704017 () Bool)

(assert (= bs!1228997 (and d!1704017 d!1703919)))

(declare-fun lambda!268957 () Int)

(assert (=> bs!1228997 (= lambda!268957 lambda!268914)))

(declare-fun bs!1228998 () Bool)

(assert (= bs!1228998 (and d!1704017 d!1703953)))

(assert (=> bs!1228998 (= lambda!268957 lambda!268928)))

(declare-fun bs!1228999 () Bool)

(assert (= bs!1228999 (and d!1704017 d!1703967)))

(assert (=> bs!1228999 (= lambda!268957 lambda!268930)))

(declare-fun bs!1229000 () Bool)

(assert (= bs!1229000 (and d!1704017 d!1703969)))

(assert (=> bs!1229000 (= lambda!268957 lambda!268931)))

(assert (=> d!1704017 (= (inv!80593 setElem!34028) (forall!14352 (exprs!4822 setElem!34028) lambda!268957))))

(declare-fun bs!1229001 () Bool)

(assert (= bs!1229001 d!1704017))

(declare-fun m!6336378 () Bool)

(assert (=> bs!1229001 m!6336378))

(assert (=> setNonEmpty!34028 d!1704017))

(declare-fun b!5298942 () Bool)

(declare-fun e!3293630 () (Set Context!8644))

(assert (=> b!5298942 (= e!3293630 (as set.empty (Set Context!8644)))))

(declare-fun b!5298943 () Bool)

(declare-fun e!3293631 () (Set Context!8644))

(declare-fun call!377722 () (Set Context!8644))

(assert (=> b!5298943 (= e!3293631 call!377722)))

(declare-fun d!1704019 () Bool)

(declare-fun c!919741 () Bool)

(assert (=> d!1704019 (= c!919741 (and (is-ElementMatch!14938 (regTwo!30388 (regOne!30388 r!7292))) (= (c!919624 (regTwo!30388 (regOne!30388 r!7292))) (h!67439 s!2326))))))

(declare-fun e!3293634 () (Set Context!8644))

(assert (=> d!1704019 (= (derivationStepZipperDown!386 (regTwo!30388 (regOne!30388 r!7292)) lt!2164868 (h!67439 s!2326)) e!3293634)))

(declare-fun bm!377716 () Bool)

(declare-fun call!377725 () List!61113)

(declare-fun call!377726 () List!61113)

(assert (=> bm!377716 (= call!377725 call!377726)))

(declare-fun b!5298944 () Bool)

(declare-fun c!919744 () Bool)

(assert (=> b!5298944 (= c!919744 (is-Star!14938 (regTwo!30388 (regOne!30388 r!7292))))))

(assert (=> b!5298944 (= e!3293631 e!3293630)))

(declare-fun b!5298945 () Bool)

(declare-fun e!3293632 () (Set Context!8644))

(assert (=> b!5298945 (= e!3293634 e!3293632)))

(declare-fun c!919742 () Bool)

(assert (=> b!5298945 (= c!919742 (is-Union!14938 (regTwo!30388 (regOne!30388 r!7292))))))

(declare-fun b!5298946 () Bool)

(assert (=> b!5298946 (= e!3293634 (set.insert lt!2164868 (as set.empty (Set Context!8644))))))

(declare-fun bm!377717 () Bool)

(declare-fun call!377724 () (Set Context!8644))

(declare-fun c!919743 () Bool)

(declare-fun c!919745 () Bool)

(assert (=> bm!377717 (= call!377724 (derivationStepZipperDown!386 (ite c!919742 (regOne!30389 (regTwo!30388 (regOne!30388 r!7292))) (ite c!919745 (regTwo!30388 (regTwo!30388 (regOne!30388 r!7292))) (ite c!919743 (regOne!30388 (regTwo!30388 (regOne!30388 r!7292))) (reg!15267 (regTwo!30388 (regOne!30388 r!7292)))))) (ite (or c!919742 c!919745) lt!2164868 (Context!8645 call!377725)) (h!67439 s!2326)))))

(declare-fun b!5298947 () Bool)

(declare-fun e!3293635 () (Set Context!8644))

(assert (=> b!5298947 (= e!3293635 e!3293631)))

(assert (=> b!5298947 (= c!919743 (is-Concat!23783 (regTwo!30388 (regOne!30388 r!7292))))))

(declare-fun bm!377718 () Bool)

(declare-fun $colon$colon!1369 (List!61113 Regex!14938) List!61113)

(assert (=> bm!377718 (= call!377726 ($colon$colon!1369 (exprs!4822 lt!2164868) (ite (or c!919745 c!919743) (regTwo!30388 (regTwo!30388 (regOne!30388 r!7292))) (regTwo!30388 (regOne!30388 r!7292)))))))

(declare-fun b!5298948 () Bool)

(declare-fun e!3293633 () Bool)

(assert (=> b!5298948 (= c!919745 e!3293633)))

(declare-fun res!2247498 () Bool)

(assert (=> b!5298948 (=> (not res!2247498) (not e!3293633))))

(assert (=> b!5298948 (= res!2247498 (is-Concat!23783 (regTwo!30388 (regOne!30388 r!7292))))))

(assert (=> b!5298948 (= e!3293632 e!3293635)))

(declare-fun bm!377719 () Bool)

(declare-fun call!377723 () (Set Context!8644))

(assert (=> bm!377719 (= call!377723 (derivationStepZipperDown!386 (ite c!919742 (regTwo!30389 (regTwo!30388 (regOne!30388 r!7292))) (regOne!30388 (regTwo!30388 (regOne!30388 r!7292)))) (ite c!919742 lt!2164868 (Context!8645 call!377726)) (h!67439 s!2326)))))

(declare-fun bm!377720 () Bool)

(declare-fun call!377721 () (Set Context!8644))

(assert (=> bm!377720 (= call!377722 call!377721)))

(declare-fun b!5298949 () Bool)

(assert (=> b!5298949 (= e!3293632 (set.union call!377724 call!377723))))

(declare-fun b!5298950 () Bool)

(assert (=> b!5298950 (= e!3293635 (set.union call!377723 call!377721))))

(declare-fun b!5298951 () Bool)

(assert (=> b!5298951 (= e!3293630 call!377722)))

(declare-fun bm!377721 () Bool)

(assert (=> bm!377721 (= call!377721 call!377724)))

(declare-fun b!5298952 () Bool)

(assert (=> b!5298952 (= e!3293633 (nullable!5107 (regOne!30388 (regTwo!30388 (regOne!30388 r!7292)))))))

(assert (= (and d!1704019 c!919741) b!5298946))

(assert (= (and d!1704019 (not c!919741)) b!5298945))

(assert (= (and b!5298945 c!919742) b!5298949))

(assert (= (and b!5298945 (not c!919742)) b!5298948))

(assert (= (and b!5298948 res!2247498) b!5298952))

(assert (= (and b!5298948 c!919745) b!5298950))

(assert (= (and b!5298948 (not c!919745)) b!5298947))

(assert (= (and b!5298947 c!919743) b!5298943))

(assert (= (and b!5298947 (not c!919743)) b!5298944))

(assert (= (and b!5298944 c!919744) b!5298951))

(assert (= (and b!5298944 (not c!919744)) b!5298942))

(assert (= (or b!5298943 b!5298951) bm!377716))

(assert (= (or b!5298943 b!5298951) bm!377720))

(assert (= (or b!5298950 bm!377716) bm!377718))

(assert (= (or b!5298950 bm!377720) bm!377721))

(assert (= (or b!5298949 b!5298950) bm!377719))

(assert (= (or b!5298949 bm!377721) bm!377717))

(declare-fun m!6336380 () Bool)

(assert (=> bm!377719 m!6336380))

(declare-fun m!6336382 () Bool)

(assert (=> b!5298952 m!6336382))

(declare-fun m!6336384 () Bool)

(assert (=> bm!377717 m!6336384))

(declare-fun m!6336386 () Bool)

(assert (=> b!5298946 m!6336386))

(declare-fun m!6336388 () Bool)

(assert (=> bm!377718 m!6336388))

(assert (=> b!5298437 d!1704019))

(declare-fun b!5298953 () Bool)

(declare-fun e!3293636 () (Set Context!8644))

(assert (=> b!5298953 (= e!3293636 (as set.empty (Set Context!8644)))))

(declare-fun b!5298954 () Bool)

(declare-fun e!3293637 () (Set Context!8644))

(declare-fun call!377728 () (Set Context!8644))

(assert (=> b!5298954 (= e!3293637 call!377728)))

(declare-fun d!1704021 () Bool)

(declare-fun c!919746 () Bool)

(assert (=> d!1704021 (= c!919746 (and (is-ElementMatch!14938 (regOne!30388 (regOne!30388 r!7292))) (= (c!919624 (regOne!30388 (regOne!30388 r!7292))) (h!67439 s!2326))))))

(declare-fun e!3293640 () (Set Context!8644))

(assert (=> d!1704021 (= (derivationStepZipperDown!386 (regOne!30388 (regOne!30388 r!7292)) lt!2164828 (h!67439 s!2326)) e!3293640)))

(declare-fun bm!377722 () Bool)

(declare-fun call!377731 () List!61113)

(declare-fun call!377732 () List!61113)

(assert (=> bm!377722 (= call!377731 call!377732)))

(declare-fun b!5298955 () Bool)

(declare-fun c!919749 () Bool)

(assert (=> b!5298955 (= c!919749 (is-Star!14938 (regOne!30388 (regOne!30388 r!7292))))))

(assert (=> b!5298955 (= e!3293637 e!3293636)))

(declare-fun b!5298956 () Bool)

(declare-fun e!3293638 () (Set Context!8644))

(assert (=> b!5298956 (= e!3293640 e!3293638)))

(declare-fun c!919747 () Bool)

(assert (=> b!5298956 (= c!919747 (is-Union!14938 (regOne!30388 (regOne!30388 r!7292))))))

(declare-fun b!5298957 () Bool)

(assert (=> b!5298957 (= e!3293640 (set.insert lt!2164828 (as set.empty (Set Context!8644))))))

(declare-fun bm!377723 () Bool)

(declare-fun c!919750 () Bool)

(declare-fun c!919748 () Bool)

(declare-fun call!377730 () (Set Context!8644))

(assert (=> bm!377723 (= call!377730 (derivationStepZipperDown!386 (ite c!919747 (regOne!30389 (regOne!30388 (regOne!30388 r!7292))) (ite c!919750 (regTwo!30388 (regOne!30388 (regOne!30388 r!7292))) (ite c!919748 (regOne!30388 (regOne!30388 (regOne!30388 r!7292))) (reg!15267 (regOne!30388 (regOne!30388 r!7292)))))) (ite (or c!919747 c!919750) lt!2164828 (Context!8645 call!377731)) (h!67439 s!2326)))))

(declare-fun b!5298958 () Bool)

(declare-fun e!3293641 () (Set Context!8644))

(assert (=> b!5298958 (= e!3293641 e!3293637)))

(assert (=> b!5298958 (= c!919748 (is-Concat!23783 (regOne!30388 (regOne!30388 r!7292))))))

(declare-fun bm!377724 () Bool)

(assert (=> bm!377724 (= call!377732 ($colon$colon!1369 (exprs!4822 lt!2164828) (ite (or c!919750 c!919748) (regTwo!30388 (regOne!30388 (regOne!30388 r!7292))) (regOne!30388 (regOne!30388 r!7292)))))))

(declare-fun b!5298959 () Bool)

(declare-fun e!3293639 () Bool)

(assert (=> b!5298959 (= c!919750 e!3293639)))

(declare-fun res!2247499 () Bool)

(assert (=> b!5298959 (=> (not res!2247499) (not e!3293639))))

(assert (=> b!5298959 (= res!2247499 (is-Concat!23783 (regOne!30388 (regOne!30388 r!7292))))))

(assert (=> b!5298959 (= e!3293638 e!3293641)))

(declare-fun call!377729 () (Set Context!8644))

(declare-fun bm!377725 () Bool)

(assert (=> bm!377725 (= call!377729 (derivationStepZipperDown!386 (ite c!919747 (regTwo!30389 (regOne!30388 (regOne!30388 r!7292))) (regOne!30388 (regOne!30388 (regOne!30388 r!7292)))) (ite c!919747 lt!2164828 (Context!8645 call!377732)) (h!67439 s!2326)))))

(declare-fun bm!377726 () Bool)

(declare-fun call!377727 () (Set Context!8644))

(assert (=> bm!377726 (= call!377728 call!377727)))

(declare-fun b!5298960 () Bool)

(assert (=> b!5298960 (= e!3293638 (set.union call!377730 call!377729))))

(declare-fun b!5298961 () Bool)

(assert (=> b!5298961 (= e!3293641 (set.union call!377729 call!377727))))

(declare-fun b!5298962 () Bool)

(assert (=> b!5298962 (= e!3293636 call!377728)))

(declare-fun bm!377727 () Bool)

(assert (=> bm!377727 (= call!377727 call!377730)))

(declare-fun b!5298963 () Bool)

(assert (=> b!5298963 (= e!3293639 (nullable!5107 (regOne!30388 (regOne!30388 (regOne!30388 r!7292)))))))

(assert (= (and d!1704021 c!919746) b!5298957))

(assert (= (and d!1704021 (not c!919746)) b!5298956))

(assert (= (and b!5298956 c!919747) b!5298960))

(assert (= (and b!5298956 (not c!919747)) b!5298959))

(assert (= (and b!5298959 res!2247499) b!5298963))

(assert (= (and b!5298959 c!919750) b!5298961))

(assert (= (and b!5298959 (not c!919750)) b!5298958))

(assert (= (and b!5298958 c!919748) b!5298954))

(assert (= (and b!5298958 (not c!919748)) b!5298955))

(assert (= (and b!5298955 c!919749) b!5298962))

(assert (= (and b!5298955 (not c!919749)) b!5298953))

(assert (= (or b!5298954 b!5298962) bm!377722))

(assert (= (or b!5298954 b!5298962) bm!377726))

(assert (= (or b!5298961 bm!377722) bm!377724))

(assert (= (or b!5298961 bm!377726) bm!377727))

(assert (= (or b!5298960 b!5298961) bm!377725))

(assert (= (or b!5298960 bm!377727) bm!377723))

(declare-fun m!6336390 () Bool)

(assert (=> bm!377725 m!6336390))

(declare-fun m!6336392 () Bool)

(assert (=> b!5298963 m!6336392))

(declare-fun m!6336394 () Bool)

(assert (=> bm!377723 m!6336394))

(assert (=> b!5298957 m!6335764))

(declare-fun m!6336396 () Bool)

(assert (=> bm!377724 m!6336396))

(assert (=> b!5298437 d!1704021))

(declare-fun d!1704023 () Bool)

(assert (=> d!1704023 (= (isEmpty!32949 (t!374319 zl!343)) (is-Nil!60990 (t!374319 zl!343)))))

(assert (=> b!5298417 d!1704023))

(assert (=> b!5298436 d!1704015))

(declare-fun d!1704025 () Bool)

(declare-fun lt!2165092 () Regex!14938)

(assert (=> d!1704025 (validRegex!6674 lt!2165092)))

(assert (=> d!1704025 (= lt!2165092 (generalisedUnion!867 (unfocusZipperList!380 zl!343)))))

(assert (=> d!1704025 (= (unfocusZipper!680 zl!343) lt!2165092)))

(declare-fun bs!1229002 () Bool)

(assert (= bs!1229002 d!1704025))

(declare-fun m!6336398 () Bool)

(assert (=> bs!1229002 m!6336398))

(assert (=> bs!1229002 m!6335732))

(assert (=> bs!1229002 m!6335732))

(assert (=> bs!1229002 m!6335734))

(assert (=> b!5298416 d!1704025))

(declare-fun bm!377728 () Bool)

(declare-fun call!377735 () Bool)

(declare-fun c!919751 () Bool)

(assert (=> bm!377728 (= call!377735 (validRegex!6674 (ite c!919751 (regTwo!30389 (regOne!30388 r!7292)) (regTwo!30388 (regOne!30388 r!7292)))))))

(declare-fun b!5298964 () Bool)

(declare-fun e!3293646 () Bool)

(declare-fun call!377733 () Bool)

(assert (=> b!5298964 (= e!3293646 call!377733)))

(declare-fun b!5298965 () Bool)

(declare-fun res!2247503 () Bool)

(declare-fun e!3293647 () Bool)

(assert (=> b!5298965 (=> (not res!2247503) (not e!3293647))))

(declare-fun call!377734 () Bool)

(assert (=> b!5298965 (= res!2247503 call!377734)))

(declare-fun e!3293643 () Bool)

(assert (=> b!5298965 (= e!3293643 e!3293647)))

(declare-fun b!5298966 () Bool)

(declare-fun e!3293644 () Bool)

(assert (=> b!5298966 (= e!3293644 e!3293643)))

(assert (=> b!5298966 (= c!919751 (is-Union!14938 (regOne!30388 r!7292)))))

(declare-fun bm!377729 () Bool)

(declare-fun c!919752 () Bool)

(assert (=> bm!377729 (= call!377733 (validRegex!6674 (ite c!919752 (reg!15267 (regOne!30388 r!7292)) (ite c!919751 (regOne!30389 (regOne!30388 r!7292)) (regOne!30388 (regOne!30388 r!7292))))))))

(declare-fun b!5298967 () Bool)

(declare-fun e!3293645 () Bool)

(assert (=> b!5298967 (= e!3293645 call!377735)))

(declare-fun bm!377730 () Bool)

(assert (=> bm!377730 (= call!377734 call!377733)))

(declare-fun b!5298968 () Bool)

(assert (=> b!5298968 (= e!3293647 call!377735)))

(declare-fun b!5298969 () Bool)

(assert (=> b!5298969 (= e!3293644 e!3293646)))

(declare-fun res!2247502 () Bool)

(assert (=> b!5298969 (= res!2247502 (not (nullable!5107 (reg!15267 (regOne!30388 r!7292)))))))

(assert (=> b!5298969 (=> (not res!2247502) (not e!3293646))))

(declare-fun d!1704027 () Bool)

(declare-fun res!2247504 () Bool)

(declare-fun e!3293648 () Bool)

(assert (=> d!1704027 (=> res!2247504 e!3293648)))

(assert (=> d!1704027 (= res!2247504 (is-ElementMatch!14938 (regOne!30388 r!7292)))))

(assert (=> d!1704027 (= (validRegex!6674 (regOne!30388 r!7292)) e!3293648)))

(declare-fun b!5298970 () Bool)

(assert (=> b!5298970 (= e!3293648 e!3293644)))

(assert (=> b!5298970 (= c!919752 (is-Star!14938 (regOne!30388 r!7292)))))

(declare-fun b!5298971 () Bool)

(declare-fun e!3293642 () Bool)

(assert (=> b!5298971 (= e!3293642 e!3293645)))

(declare-fun res!2247501 () Bool)

(assert (=> b!5298971 (=> (not res!2247501) (not e!3293645))))

(assert (=> b!5298971 (= res!2247501 call!377734)))

(declare-fun b!5298972 () Bool)

(declare-fun res!2247500 () Bool)

(assert (=> b!5298972 (=> res!2247500 e!3293642)))

(assert (=> b!5298972 (= res!2247500 (not (is-Concat!23783 (regOne!30388 r!7292))))))

(assert (=> b!5298972 (= e!3293643 e!3293642)))

(assert (= (and d!1704027 (not res!2247504)) b!5298970))

(assert (= (and b!5298970 c!919752) b!5298969))

(assert (= (and b!5298970 (not c!919752)) b!5298966))

(assert (= (and b!5298969 res!2247502) b!5298964))

(assert (= (and b!5298966 c!919751) b!5298965))

(assert (= (and b!5298966 (not c!919751)) b!5298972))

(assert (= (and b!5298965 res!2247503) b!5298968))

(assert (= (and b!5298972 (not res!2247500)) b!5298971))

(assert (= (and b!5298971 res!2247501) b!5298967))

(assert (= (or b!5298968 b!5298967) bm!377728))

(assert (= (or b!5298965 b!5298971) bm!377730))

(assert (= (or b!5298964 bm!377730) bm!377729))

(declare-fun m!6336400 () Bool)

(assert (=> bm!377728 m!6336400))

(declare-fun m!6336402 () Bool)

(assert (=> bm!377729 m!6336402))

(declare-fun m!6336404 () Bool)

(assert (=> b!5298969 m!6336404))

(assert (=> b!5298435 d!1704027))

(declare-fun d!1704029 () Bool)

(declare-fun c!919753 () Bool)

(assert (=> d!1704029 (= c!919753 (isEmpty!32953 (t!374320 s!2326)))))

(declare-fun e!3293649 () Bool)

(assert (=> d!1704029 (= (matchZipper!1182 (derivationStepZipper!1181 lt!2164844 (h!67439 s!2326)) (t!374320 s!2326)) e!3293649)))

(declare-fun b!5298973 () Bool)

(assert (=> b!5298973 (= e!3293649 (nullableZipper!1319 (derivationStepZipper!1181 lt!2164844 (h!67439 s!2326))))))

(declare-fun b!5298974 () Bool)

(assert (=> b!5298974 (= e!3293649 (matchZipper!1182 (derivationStepZipper!1181 (derivationStepZipper!1181 lt!2164844 (h!67439 s!2326)) (head!11356 (t!374320 s!2326))) (tail!10453 (t!374320 s!2326))))))

(assert (= (and d!1704029 c!919753) b!5298973))

(assert (= (and d!1704029 (not c!919753)) b!5298974))

(assert (=> d!1704029 m!6336062))

(assert (=> b!5298973 m!6335768))

(declare-fun m!6336406 () Bool)

(assert (=> b!5298973 m!6336406))

(assert (=> b!5298974 m!6336066))

(assert (=> b!5298974 m!6335768))

(assert (=> b!5298974 m!6336066))

(declare-fun m!6336408 () Bool)

(assert (=> b!5298974 m!6336408))

(assert (=> b!5298974 m!6336070))

(assert (=> b!5298974 m!6336408))

(assert (=> b!5298974 m!6336070))

(declare-fun m!6336410 () Bool)

(assert (=> b!5298974 m!6336410))

(assert (=> b!5298440 d!1704029))

(declare-fun bs!1229003 () Bool)

(declare-fun d!1704031 () Bool)

(assert (= bs!1229003 (and d!1704031 b!5298424)))

(declare-fun lambda!268960 () Int)

(assert (=> bs!1229003 (= lambda!268960 lambda!268876)))

(assert (=> d!1704031 true))

(assert (=> d!1704031 (= (derivationStepZipper!1181 lt!2164844 (h!67439 s!2326)) (flatMap!665 lt!2164844 lambda!268960))))

(declare-fun bs!1229004 () Bool)

(assert (= bs!1229004 d!1704031))

(declare-fun m!6336412 () Bool)

(assert (=> bs!1229004 m!6336412))

(assert (=> b!5298440 d!1704031))

(declare-fun bs!1229005 () Bool)

(declare-fun d!1704033 () Bool)

(assert (= bs!1229005 (and d!1704033 d!1703969)))

(declare-fun lambda!268961 () Int)

(assert (=> bs!1229005 (= lambda!268961 lambda!268931)))

(declare-fun bs!1229006 () Bool)

(assert (= bs!1229006 (and d!1704033 d!1703967)))

(assert (=> bs!1229006 (= lambda!268961 lambda!268930)))

(declare-fun bs!1229007 () Bool)

(assert (= bs!1229007 (and d!1704033 d!1703953)))

(assert (=> bs!1229007 (= lambda!268961 lambda!268928)))

(declare-fun bs!1229008 () Bool)

(assert (= bs!1229008 (and d!1704033 d!1704017)))

(assert (=> bs!1229008 (= lambda!268961 lambda!268957)))

(declare-fun bs!1229009 () Bool)

(assert (= bs!1229009 (and d!1704033 d!1703919)))

(assert (=> bs!1229009 (= lambda!268961 lambda!268914)))

(declare-fun b!5298977 () Bool)

(declare-fun e!3293651 () Bool)

(declare-fun e!3293654 () Bool)

(assert (=> b!5298977 (= e!3293651 e!3293654)))

(declare-fun c!919757 () Bool)

(assert (=> b!5298977 (= c!919757 (isEmpty!32950 (exprs!4822 (h!67438 zl!343))))))

(declare-fun b!5298978 () Bool)

(declare-fun e!3293653 () Regex!14938)

(assert (=> b!5298978 (= e!3293653 EmptyExpr!14938)))

(assert (=> d!1704033 e!3293651))

(declare-fun res!2247505 () Bool)

(assert (=> d!1704033 (=> (not res!2247505) (not e!3293651))))

(declare-fun lt!2165093 () Regex!14938)

(assert (=> d!1704033 (= res!2247505 (validRegex!6674 lt!2165093))))

(declare-fun e!3293650 () Regex!14938)

(assert (=> d!1704033 (= lt!2165093 e!3293650)))

(declare-fun c!919756 () Bool)

(declare-fun e!3293655 () Bool)

(assert (=> d!1704033 (= c!919756 e!3293655)))

(declare-fun res!2247506 () Bool)

(assert (=> d!1704033 (=> (not res!2247506) (not e!3293655))))

(assert (=> d!1704033 (= res!2247506 (is-Cons!60989 (exprs!4822 (h!67438 zl!343))))))

(assert (=> d!1704033 (forall!14352 (exprs!4822 (h!67438 zl!343)) lambda!268961)))

(assert (=> d!1704033 (= (generalisedConcat!607 (exprs!4822 (h!67438 zl!343))) lt!2165093)))

(declare-fun b!5298979 () Bool)

(assert (=> b!5298979 (= e!3293650 (h!67437 (exprs!4822 (h!67438 zl!343))))))

(declare-fun b!5298980 () Bool)

(declare-fun e!3293652 () Bool)

(assert (=> b!5298980 (= e!3293654 e!3293652)))

(declare-fun c!919759 () Bool)

(assert (=> b!5298980 (= c!919759 (isEmpty!32950 (tail!10454 (exprs!4822 (h!67438 zl!343)))))))

(declare-fun b!5298981 () Bool)

(assert (=> b!5298981 (= e!3293652 (= lt!2165093 (head!11357 (exprs!4822 (h!67438 zl!343)))))))

(declare-fun b!5298982 () Bool)

(assert (=> b!5298982 (= e!3293650 e!3293653)))

(declare-fun c!919758 () Bool)

(assert (=> b!5298982 (= c!919758 (is-Cons!60989 (exprs!4822 (h!67438 zl!343))))))

(declare-fun b!5298983 () Bool)

(assert (=> b!5298983 (= e!3293655 (isEmpty!32950 (t!374318 (exprs!4822 (h!67438 zl!343)))))))

(declare-fun b!5298984 () Bool)

(assert (=> b!5298984 (= e!3293654 (isEmptyExpr!854 lt!2165093))))

(declare-fun b!5298985 () Bool)

(assert (=> b!5298985 (= e!3293653 (Concat!23783 (h!67437 (exprs!4822 (h!67438 zl!343))) (generalisedConcat!607 (t!374318 (exprs!4822 (h!67438 zl!343))))))))

(declare-fun b!5298986 () Bool)

(assert (=> b!5298986 (= e!3293652 (isConcat!377 lt!2165093))))

(assert (= (and d!1704033 res!2247506) b!5298983))

(assert (= (and d!1704033 c!919756) b!5298979))

(assert (= (and d!1704033 (not c!919756)) b!5298982))

(assert (= (and b!5298982 c!919758) b!5298985))

(assert (= (and b!5298982 (not c!919758)) b!5298978))

(assert (= (and d!1704033 res!2247505) b!5298977))

(assert (= (and b!5298977 c!919757) b!5298984))

(assert (= (and b!5298977 (not c!919757)) b!5298980))

(assert (= (and b!5298980 c!919759) b!5298981))

(assert (= (and b!5298980 (not c!919759)) b!5298986))

(declare-fun m!6336414 () Bool)

(assert (=> b!5298984 m!6336414))

(declare-fun m!6336416 () Bool)

(assert (=> b!5298986 m!6336416))

(declare-fun m!6336418 () Bool)

(assert (=> b!5298981 m!6336418))

(declare-fun m!6336420 () Bool)

(assert (=> b!5298977 m!6336420))

(assert (=> b!5298983 m!6335844))

(declare-fun m!6336422 () Bool)

(assert (=> b!5298980 m!6336422))

(assert (=> b!5298980 m!6336422))

(declare-fun m!6336424 () Bool)

(assert (=> b!5298980 m!6336424))

(assert (=> b!5298985 m!6335802))

(declare-fun m!6336426 () Bool)

(assert (=> d!1704033 m!6336426))

(declare-fun m!6336428 () Bool)

(assert (=> d!1704033 m!6336428))

(assert (=> b!5298419 d!1704033))

(declare-fun d!1704035 () Bool)

(declare-fun c!919760 () Bool)

(assert (=> d!1704035 (= c!919760 (isEmpty!32953 (t!374320 s!2326)))))

(declare-fun e!3293656 () Bool)

(assert (=> d!1704035 (= (matchZipper!1182 lt!2164866 (t!374320 s!2326)) e!3293656)))

(declare-fun b!5298987 () Bool)

(assert (=> b!5298987 (= e!3293656 (nullableZipper!1319 lt!2164866))))

(declare-fun b!5298988 () Bool)

(assert (=> b!5298988 (= e!3293656 (matchZipper!1182 (derivationStepZipper!1181 lt!2164866 (head!11356 (t!374320 s!2326))) (tail!10453 (t!374320 s!2326))))))

(assert (= (and d!1704035 c!919760) b!5298987))

(assert (= (and d!1704035 (not c!919760)) b!5298988))

(assert (=> d!1704035 m!6336062))

(declare-fun m!6336430 () Bool)

(assert (=> b!5298987 m!6336430))

(assert (=> b!5298988 m!6336066))

(assert (=> b!5298988 m!6336066))

(declare-fun m!6336432 () Bool)

(assert (=> b!5298988 m!6336432))

(assert (=> b!5298988 m!6336070))

(assert (=> b!5298988 m!6336432))

(assert (=> b!5298988 m!6336070))

(declare-fun m!6336434 () Bool)

(assert (=> b!5298988 m!6336434))

(assert (=> b!5298439 d!1704035))

(declare-fun d!1704037 () Bool)

(declare-fun dynLambda!24116 (Int Context!8644) (Set Context!8644))

(assert (=> d!1704037 (= (flatMap!665 lt!2164844 lambda!268876) (dynLambda!24116 lambda!268876 lt!2164828))))

(declare-fun lt!2165096 () Unit!153270)

(declare-fun choose!39598 ((Set Context!8644) Context!8644 Int) Unit!153270)

(assert (=> d!1704037 (= lt!2165096 (choose!39598 lt!2164844 lt!2164828 lambda!268876))))

(assert (=> d!1704037 (= lt!2164844 (set.insert lt!2164828 (as set.empty (Set Context!8644))))))

(assert (=> d!1704037 (= (lemmaFlatMapOnSingletonSet!197 lt!2164844 lt!2164828 lambda!268876) lt!2165096)))

(declare-fun b_lambda!204213 () Bool)

(assert (=> (not b_lambda!204213) (not d!1704037)))

(declare-fun bs!1229010 () Bool)

(assert (= bs!1229010 d!1704037))

(assert (=> bs!1229010 m!6335854))

(declare-fun m!6336436 () Bool)

(assert (=> bs!1229010 m!6336436))

(declare-fun m!6336438 () Bool)

(assert (=> bs!1229010 m!6336438))

(assert (=> bs!1229010 m!6335764))

(assert (=> b!5298439 d!1704037))

(declare-fun d!1704039 () Bool)

(declare-fun choose!39599 ((Set Context!8644) Int) (Set Context!8644))

(assert (=> d!1704039 (= (flatMap!665 lt!2164844 lambda!268876) (choose!39599 lt!2164844 lambda!268876))))

(declare-fun bs!1229011 () Bool)

(assert (= bs!1229011 d!1704039))

(declare-fun m!6336440 () Bool)

(assert (=> bs!1229011 m!6336440))

(assert (=> b!5298439 d!1704039))

(declare-fun d!1704041 () Bool)

(declare-fun c!919761 () Bool)

(assert (=> d!1704041 (= c!919761 (isEmpty!32953 (t!374320 s!2326)))))

(declare-fun e!3293657 () Bool)

(assert (=> d!1704041 (= (matchZipper!1182 lt!2164830 (t!374320 s!2326)) e!3293657)))

(declare-fun b!5298989 () Bool)

(assert (=> b!5298989 (= e!3293657 (nullableZipper!1319 lt!2164830))))

(declare-fun b!5298990 () Bool)

(assert (=> b!5298990 (= e!3293657 (matchZipper!1182 (derivationStepZipper!1181 lt!2164830 (head!11356 (t!374320 s!2326))) (tail!10453 (t!374320 s!2326))))))

(assert (= (and d!1704041 c!919761) b!5298989))

(assert (= (and d!1704041 (not c!919761)) b!5298990))

(assert (=> d!1704041 m!6336062))

(declare-fun m!6336442 () Bool)

(assert (=> b!5298989 m!6336442))

(assert (=> b!5298990 m!6336066))

(assert (=> b!5298990 m!6336066))

(declare-fun m!6336444 () Bool)

(assert (=> b!5298990 m!6336444))

(assert (=> b!5298990 m!6336070))

(assert (=> b!5298990 m!6336444))

(assert (=> b!5298990 m!6336070))

(declare-fun m!6336446 () Bool)

(assert (=> b!5298990 m!6336446))

(assert (=> b!5298439 d!1704041))

(declare-fun b!5299001 () Bool)

(declare-fun e!3293664 () (Set Context!8644))

(declare-fun e!3293666 () (Set Context!8644))

(assert (=> b!5299001 (= e!3293664 e!3293666)))

(declare-fun c!919767 () Bool)

(assert (=> b!5299001 (= c!919767 (is-Cons!60989 (exprs!4822 lt!2164828)))))

(declare-fun b!5299002 () Bool)

(declare-fun call!377738 () (Set Context!8644))

(assert (=> b!5299002 (= e!3293666 call!377738)))

(declare-fun bm!377733 () Bool)

(assert (=> bm!377733 (= call!377738 (derivationStepZipperDown!386 (h!67437 (exprs!4822 lt!2164828)) (Context!8645 (t!374318 (exprs!4822 lt!2164828))) (h!67439 s!2326)))))

(declare-fun b!5299003 () Bool)

(assert (=> b!5299003 (= e!3293664 (set.union call!377738 (derivationStepZipperUp!310 (Context!8645 (t!374318 (exprs!4822 lt!2164828))) (h!67439 s!2326))))))

(declare-fun d!1704043 () Bool)

(declare-fun c!919766 () Bool)

(declare-fun e!3293665 () Bool)

(assert (=> d!1704043 (= c!919766 e!3293665)))

(declare-fun res!2247509 () Bool)

(assert (=> d!1704043 (=> (not res!2247509) (not e!3293665))))

(assert (=> d!1704043 (= res!2247509 (is-Cons!60989 (exprs!4822 lt!2164828)))))

(assert (=> d!1704043 (= (derivationStepZipperUp!310 lt!2164828 (h!67439 s!2326)) e!3293664)))

(declare-fun b!5299004 () Bool)

(assert (=> b!5299004 (= e!3293666 (as set.empty (Set Context!8644)))))

(declare-fun b!5299005 () Bool)

(assert (=> b!5299005 (= e!3293665 (nullable!5107 (h!67437 (exprs!4822 lt!2164828))))))

(assert (= (and d!1704043 res!2247509) b!5299005))

(assert (= (and d!1704043 c!919766) b!5299003))

(assert (= (and d!1704043 (not c!919766)) b!5299001))

(assert (= (and b!5299001 c!919767) b!5299002))

(assert (= (and b!5299001 (not c!919767)) b!5299004))

(assert (= (or b!5299003 b!5299002) bm!377733))

(declare-fun m!6336448 () Bool)

(assert (=> bm!377733 m!6336448))

(declare-fun m!6336450 () Bool)

(assert (=> b!5299003 m!6336450))

(declare-fun m!6336452 () Bool)

(assert (=> b!5299005 m!6336452))

(assert (=> b!5298439 d!1704043))

(declare-fun d!1704045 () Bool)

(declare-fun e!3293667 () Bool)

(assert (=> d!1704045 (= (matchZipper!1182 (set.union lt!2164860 lt!2164858) (t!374320 s!2326)) e!3293667)))

(declare-fun res!2247510 () Bool)

(assert (=> d!1704045 (=> res!2247510 e!3293667)))

(assert (=> d!1704045 (= res!2247510 (matchZipper!1182 lt!2164860 (t!374320 s!2326)))))

(declare-fun lt!2165097 () Unit!153270)

(assert (=> d!1704045 (= lt!2165097 (choose!39592 lt!2164860 lt!2164858 (t!374320 s!2326)))))

(assert (=> d!1704045 (= (lemmaZipperConcatMatchesSameAsBothZippers!175 lt!2164860 lt!2164858 (t!374320 s!2326)) lt!2165097)))

(declare-fun b!5299006 () Bool)

(assert (=> b!5299006 (= e!3293667 (matchZipper!1182 lt!2164858 (t!374320 s!2326)))))

(assert (= (and d!1704045 (not res!2247510)) b!5299006))

(declare-fun m!6336454 () Bool)

(assert (=> d!1704045 m!6336454))

(assert (=> d!1704045 m!6335718))

(declare-fun m!6336456 () Bool)

(assert (=> d!1704045 m!6336456))

(assert (=> b!5299006 m!6335876))

(assert (=> b!5298439 d!1704045))

(assert (=> b!5298418 d!1704043))

(declare-fun d!1704047 () Bool)

(assert (=> d!1704047 (= (flatMap!665 lt!2164829 lambda!268876) (choose!39599 lt!2164829 lambda!268876))))

(declare-fun bs!1229012 () Bool)

(assert (= bs!1229012 d!1704047))

(declare-fun m!6336458 () Bool)

(assert (=> bs!1229012 m!6336458))

(assert (=> b!5298418 d!1704047))

(declare-fun d!1704049 () Bool)

(assert (=> d!1704049 (= (flatMap!665 lt!2164829 lambda!268876) (dynLambda!24116 lambda!268876 lt!2164873))))

(declare-fun lt!2165098 () Unit!153270)

(assert (=> d!1704049 (= lt!2165098 (choose!39598 lt!2164829 lt!2164873 lambda!268876))))

(assert (=> d!1704049 (= lt!2164829 (set.insert lt!2164873 (as set.empty (Set Context!8644))))))

(assert (=> d!1704049 (= (lemmaFlatMapOnSingletonSet!197 lt!2164829 lt!2164873 lambda!268876) lt!2165098)))

(declare-fun b_lambda!204215 () Bool)

(assert (=> (not b_lambda!204215) (not d!1704049)))

(declare-fun bs!1229013 () Bool)

(assert (= bs!1229013 d!1704049))

(assert (=> bs!1229013 m!6335760))

(declare-fun m!6336460 () Bool)

(assert (=> bs!1229013 m!6336460))

(declare-fun m!6336462 () Bool)

(assert (=> bs!1229013 m!6336462))

(assert (=> bs!1229013 m!6335762))

(assert (=> b!5298418 d!1704049))

(declare-fun bs!1229014 () Bool)

(declare-fun d!1704051 () Bool)

(assert (= bs!1229014 (and d!1704051 b!5298424)))

(declare-fun lambda!268962 () Int)

(assert (=> bs!1229014 (= lambda!268962 lambda!268876)))

(declare-fun bs!1229015 () Bool)

(assert (= bs!1229015 (and d!1704051 d!1704031)))

(assert (=> bs!1229015 (= lambda!268962 lambda!268960)))

(assert (=> d!1704051 true))

(assert (=> d!1704051 (= (derivationStepZipper!1181 lt!2164829 (h!67439 s!2326)) (flatMap!665 lt!2164829 lambda!268962))))

(declare-fun bs!1229016 () Bool)

(assert (= bs!1229016 d!1704051))

(declare-fun m!6336464 () Bool)

(assert (=> bs!1229016 m!6336464))

(assert (=> b!5298418 d!1704051))

(declare-fun b!5299007 () Bool)

(declare-fun e!3293668 () (Set Context!8644))

(declare-fun e!3293670 () (Set Context!8644))

(assert (=> b!5299007 (= e!3293668 e!3293670)))

(declare-fun c!919769 () Bool)

(assert (=> b!5299007 (= c!919769 (is-Cons!60989 (exprs!4822 lt!2164873)))))

(declare-fun b!5299008 () Bool)

(declare-fun call!377739 () (Set Context!8644))

(assert (=> b!5299008 (= e!3293670 call!377739)))

(declare-fun bm!377734 () Bool)

(assert (=> bm!377734 (= call!377739 (derivationStepZipperDown!386 (h!67437 (exprs!4822 lt!2164873)) (Context!8645 (t!374318 (exprs!4822 lt!2164873))) (h!67439 s!2326)))))

(declare-fun b!5299009 () Bool)

(assert (=> b!5299009 (= e!3293668 (set.union call!377739 (derivationStepZipperUp!310 (Context!8645 (t!374318 (exprs!4822 lt!2164873))) (h!67439 s!2326))))))

(declare-fun d!1704053 () Bool)

(declare-fun c!919768 () Bool)

(declare-fun e!3293669 () Bool)

(assert (=> d!1704053 (= c!919768 e!3293669)))

(declare-fun res!2247511 () Bool)

(assert (=> d!1704053 (=> (not res!2247511) (not e!3293669))))

(assert (=> d!1704053 (= res!2247511 (is-Cons!60989 (exprs!4822 lt!2164873)))))

(assert (=> d!1704053 (= (derivationStepZipperUp!310 lt!2164873 (h!67439 s!2326)) e!3293668)))

(declare-fun b!5299010 () Bool)

(assert (=> b!5299010 (= e!3293670 (as set.empty (Set Context!8644)))))

(declare-fun b!5299011 () Bool)

(assert (=> b!5299011 (= e!3293669 (nullable!5107 (h!67437 (exprs!4822 lt!2164873))))))

(assert (= (and d!1704053 res!2247511) b!5299011))

(assert (= (and d!1704053 c!919768) b!5299009))

(assert (= (and d!1704053 (not c!919768)) b!5299007))

(assert (= (and b!5299007 c!919769) b!5299008))

(assert (= (and b!5299007 (not c!919769)) b!5299010))

(assert (= (or b!5299009 b!5299008) bm!377734))

(declare-fun m!6336466 () Bool)

(assert (=> bm!377734 m!6336466))

(declare-fun m!6336468 () Bool)

(assert (=> b!5299009 m!6336468))

(declare-fun m!6336470 () Bool)

(assert (=> b!5299011 m!6336470))

(assert (=> b!5298418 d!1704053))

(declare-fun d!1704055 () Bool)

(assert (=> d!1704055 (= (isEmpty!32950 (t!374318 (exprs!4822 (h!67438 zl!343)))) (is-Nil!60989 (t!374318 (exprs!4822 (h!67438 zl!343)))))))

(assert (=> b!5298438 d!1704055))

(declare-fun d!1704057 () Bool)

(declare-fun c!919770 () Bool)

(assert (=> d!1704057 (= c!919770 (isEmpty!32953 (t!374320 s!2326)))))

(declare-fun e!3293671 () Bool)

(assert (=> d!1704057 (= (matchZipper!1182 lt!2164858 (t!374320 s!2326)) e!3293671)))

(declare-fun b!5299012 () Bool)

(assert (=> b!5299012 (= e!3293671 (nullableZipper!1319 lt!2164858))))

(declare-fun b!5299013 () Bool)

(assert (=> b!5299013 (= e!3293671 (matchZipper!1182 (derivationStepZipper!1181 lt!2164858 (head!11356 (t!374320 s!2326))) (tail!10453 (t!374320 s!2326))))))

(assert (= (and d!1704057 c!919770) b!5299012))

(assert (= (and d!1704057 (not c!919770)) b!5299013))

(assert (=> d!1704057 m!6336062))

(declare-fun m!6336472 () Bool)

(assert (=> b!5299012 m!6336472))

(assert (=> b!5299013 m!6336066))

(assert (=> b!5299013 m!6336066))

(declare-fun m!6336474 () Bool)

(assert (=> b!5299013 m!6336474))

(assert (=> b!5299013 m!6336070))

(assert (=> b!5299013 m!6336474))

(assert (=> b!5299013 m!6336070))

(declare-fun m!6336476 () Bool)

(assert (=> b!5299013 m!6336476))

(assert (=> b!5298422 d!1704057))

(declare-fun d!1704059 () Bool)

(declare-fun c!919771 () Bool)

(assert (=> d!1704059 (= c!919771 (isEmpty!32953 (t!374320 s!2326)))))

(declare-fun e!3293672 () Bool)

(assert (=> d!1704059 (= (matchZipper!1182 lt!2164872 (t!374320 s!2326)) e!3293672)))

(declare-fun b!5299014 () Bool)

(assert (=> b!5299014 (= e!3293672 (nullableZipper!1319 lt!2164872))))

(declare-fun b!5299015 () Bool)

(assert (=> b!5299015 (= e!3293672 (matchZipper!1182 (derivationStepZipper!1181 lt!2164872 (head!11356 (t!374320 s!2326))) (tail!10453 (t!374320 s!2326))))))

(assert (= (and d!1704059 c!919771) b!5299014))

(assert (= (and d!1704059 (not c!919771)) b!5299015))

(assert (=> d!1704059 m!6336062))

(declare-fun m!6336478 () Bool)

(assert (=> b!5299014 m!6336478))

(assert (=> b!5299015 m!6336066))

(assert (=> b!5299015 m!6336066))

(declare-fun m!6336480 () Bool)

(assert (=> b!5299015 m!6336480))

(assert (=> b!5299015 m!6336070))

(assert (=> b!5299015 m!6336480))

(assert (=> b!5299015 m!6336070))

(declare-fun m!6336482 () Bool)

(assert (=> b!5299015 m!6336482))

(assert (=> b!5298442 d!1704059))

(declare-fun bs!1229017 () Bool)

(declare-fun d!1704061 () Bool)

(assert (= bs!1229017 (and d!1704061 d!1704033)))

(declare-fun lambda!268965 () Int)

(assert (=> bs!1229017 (= lambda!268965 lambda!268961)))

(declare-fun bs!1229018 () Bool)

(assert (= bs!1229018 (and d!1704061 d!1703969)))

(assert (=> bs!1229018 (= lambda!268965 lambda!268931)))

(declare-fun bs!1229019 () Bool)

(assert (= bs!1229019 (and d!1704061 d!1703967)))

(assert (=> bs!1229019 (= lambda!268965 lambda!268930)))

(declare-fun bs!1229020 () Bool)

(assert (= bs!1229020 (and d!1704061 d!1703953)))

(assert (=> bs!1229020 (= lambda!268965 lambda!268928)))

(declare-fun bs!1229021 () Bool)

(assert (= bs!1229021 (and d!1704061 d!1704017)))

(assert (=> bs!1229021 (= lambda!268965 lambda!268957)))

(declare-fun bs!1229022 () Bool)

(assert (= bs!1229022 (and d!1704061 d!1703919)))

(assert (=> bs!1229022 (= lambda!268965 lambda!268914)))

(declare-fun b!5299036 () Bool)

(declare-fun e!3293689 () Bool)

(declare-fun lt!2165101 () Regex!14938)

(declare-fun isEmptyLang!862 (Regex!14938) Bool)

(assert (=> b!5299036 (= e!3293689 (isEmptyLang!862 lt!2165101))))

(declare-fun b!5299037 () Bool)

(declare-fun e!3293685 () Regex!14938)

(declare-fun e!3293686 () Regex!14938)

(assert (=> b!5299037 (= e!3293685 e!3293686)))

(declare-fun c!919781 () Bool)

(assert (=> b!5299037 (= c!919781 (is-Cons!60989 (unfocusZipperList!380 zl!343)))))

(declare-fun b!5299038 () Bool)

(declare-fun e!3293688 () Bool)

(declare-fun isUnion!294 (Regex!14938) Bool)

(assert (=> b!5299038 (= e!3293688 (isUnion!294 lt!2165101))))

(declare-fun e!3293690 () Bool)

(assert (=> d!1704061 e!3293690))

(declare-fun res!2247517 () Bool)

(assert (=> d!1704061 (=> (not res!2247517) (not e!3293690))))

(assert (=> d!1704061 (= res!2247517 (validRegex!6674 lt!2165101))))

(assert (=> d!1704061 (= lt!2165101 e!3293685)))

(declare-fun c!919782 () Bool)

(declare-fun e!3293687 () Bool)

(assert (=> d!1704061 (= c!919782 e!3293687)))

(declare-fun res!2247516 () Bool)

(assert (=> d!1704061 (=> (not res!2247516) (not e!3293687))))

(assert (=> d!1704061 (= res!2247516 (is-Cons!60989 (unfocusZipperList!380 zl!343)))))

(assert (=> d!1704061 (forall!14352 (unfocusZipperList!380 zl!343) lambda!268965)))

(assert (=> d!1704061 (= (generalisedUnion!867 (unfocusZipperList!380 zl!343)) lt!2165101)))

(declare-fun b!5299039 () Bool)

(assert (=> b!5299039 (= e!3293685 (h!67437 (unfocusZipperList!380 zl!343)))))

(declare-fun b!5299040 () Bool)

(assert (=> b!5299040 (= e!3293689 e!3293688)))

(declare-fun c!919780 () Bool)

(assert (=> b!5299040 (= c!919780 (isEmpty!32950 (tail!10454 (unfocusZipperList!380 zl!343))))))

(declare-fun b!5299041 () Bool)

(assert (=> b!5299041 (= e!3293687 (isEmpty!32950 (t!374318 (unfocusZipperList!380 zl!343))))))

(declare-fun b!5299042 () Bool)

(assert (=> b!5299042 (= e!3293690 e!3293689)))

(declare-fun c!919783 () Bool)

(assert (=> b!5299042 (= c!919783 (isEmpty!32950 (unfocusZipperList!380 zl!343)))))

(declare-fun b!5299043 () Bool)

(assert (=> b!5299043 (= e!3293686 (Union!14938 (h!67437 (unfocusZipperList!380 zl!343)) (generalisedUnion!867 (t!374318 (unfocusZipperList!380 zl!343)))))))

(declare-fun b!5299044 () Bool)

(assert (=> b!5299044 (= e!3293688 (= lt!2165101 (head!11357 (unfocusZipperList!380 zl!343))))))

(declare-fun b!5299045 () Bool)

(assert (=> b!5299045 (= e!3293686 EmptyLang!14938)))

(assert (= (and d!1704061 res!2247516) b!5299041))

(assert (= (and d!1704061 c!919782) b!5299039))

(assert (= (and d!1704061 (not c!919782)) b!5299037))

(assert (= (and b!5299037 c!919781) b!5299043))

(assert (= (and b!5299037 (not c!919781)) b!5299045))

(assert (= (and d!1704061 res!2247517) b!5299042))

(assert (= (and b!5299042 c!919783) b!5299036))

(assert (= (and b!5299042 (not c!919783)) b!5299040))

(assert (= (and b!5299040 c!919780) b!5299044))

(assert (= (and b!5299040 (not c!919780)) b!5299038))

(assert (=> b!5299040 m!6335732))

(declare-fun m!6336484 () Bool)

(assert (=> b!5299040 m!6336484))

(assert (=> b!5299040 m!6336484))

(declare-fun m!6336486 () Bool)

(assert (=> b!5299040 m!6336486))

(declare-fun m!6336488 () Bool)

(assert (=> b!5299038 m!6336488))

(assert (=> b!5299044 m!6335732))

(declare-fun m!6336490 () Bool)

(assert (=> b!5299044 m!6336490))

(declare-fun m!6336492 () Bool)

(assert (=> b!5299041 m!6336492))

(declare-fun m!6336494 () Bool)

(assert (=> d!1704061 m!6336494))

(assert (=> d!1704061 m!6335732))

(declare-fun m!6336496 () Bool)

(assert (=> d!1704061 m!6336496))

(declare-fun m!6336498 () Bool)

(assert (=> b!5299036 m!6336498))

(declare-fun m!6336500 () Bool)

(assert (=> b!5299043 m!6336500))

(assert (=> b!5299042 m!6335732))

(declare-fun m!6336502 () Bool)

(assert (=> b!5299042 m!6336502))

(assert (=> b!5298421 d!1704061))

(declare-fun bs!1229023 () Bool)

(declare-fun d!1704063 () Bool)

(assert (= bs!1229023 (and d!1704063 d!1704033)))

(declare-fun lambda!268968 () Int)

(assert (=> bs!1229023 (= lambda!268968 lambda!268961)))

(declare-fun bs!1229024 () Bool)

(assert (= bs!1229024 (and d!1704063 d!1703969)))

(assert (=> bs!1229024 (= lambda!268968 lambda!268931)))

(declare-fun bs!1229025 () Bool)

(assert (= bs!1229025 (and d!1704063 d!1704061)))

(assert (=> bs!1229025 (= lambda!268968 lambda!268965)))

(declare-fun bs!1229026 () Bool)

(assert (= bs!1229026 (and d!1704063 d!1703967)))

(assert (=> bs!1229026 (= lambda!268968 lambda!268930)))

(declare-fun bs!1229027 () Bool)

(assert (= bs!1229027 (and d!1704063 d!1703953)))

(assert (=> bs!1229027 (= lambda!268968 lambda!268928)))

(declare-fun bs!1229028 () Bool)

(assert (= bs!1229028 (and d!1704063 d!1704017)))

(assert (=> bs!1229028 (= lambda!268968 lambda!268957)))

(declare-fun bs!1229029 () Bool)

(assert (= bs!1229029 (and d!1704063 d!1703919)))

(assert (=> bs!1229029 (= lambda!268968 lambda!268914)))

(declare-fun lt!2165104 () List!61113)

(assert (=> d!1704063 (forall!14352 lt!2165104 lambda!268968)))

(declare-fun e!3293693 () List!61113)

(assert (=> d!1704063 (= lt!2165104 e!3293693)))

(declare-fun c!919786 () Bool)

(assert (=> d!1704063 (= c!919786 (is-Cons!60990 zl!343))))

(assert (=> d!1704063 (= (unfocusZipperList!380 zl!343) lt!2165104)))

(declare-fun b!5299050 () Bool)

(assert (=> b!5299050 (= e!3293693 (Cons!60989 (generalisedConcat!607 (exprs!4822 (h!67438 zl!343))) (unfocusZipperList!380 (t!374319 zl!343))))))

(declare-fun b!5299051 () Bool)

(assert (=> b!5299051 (= e!3293693 Nil!60989)))

(assert (= (and d!1704063 c!919786) b!5299050))

(assert (= (and d!1704063 (not c!919786)) b!5299051))

(declare-fun m!6336504 () Bool)

(assert (=> d!1704063 m!6336504))

(assert (=> b!5299050 m!6335842))

(declare-fun m!6336506 () Bool)

(assert (=> b!5299050 m!6336506))

(assert (=> b!5298421 d!1704063))

(declare-fun b!5299052 () Bool)

(declare-fun e!3293694 () (Set Context!8644))

(assert (=> b!5299052 (= e!3293694 (as set.empty (Set Context!8644)))))

(declare-fun b!5299053 () Bool)

(declare-fun e!3293695 () (Set Context!8644))

(declare-fun call!377741 () (Set Context!8644))

(assert (=> b!5299053 (= e!3293695 call!377741)))

(declare-fun d!1704065 () Bool)

(declare-fun c!919787 () Bool)

(assert (=> d!1704065 (= c!919787 (and (is-ElementMatch!14938 (h!67437 (exprs!4822 (h!67438 zl!343)))) (= (c!919624 (h!67437 (exprs!4822 (h!67438 zl!343)))) (h!67439 s!2326))))))

(declare-fun e!3293698 () (Set Context!8644))

(assert (=> d!1704065 (= (derivationStepZipperDown!386 (h!67437 (exprs!4822 (h!67438 zl!343))) lt!2164868 (h!67439 s!2326)) e!3293698)))

(declare-fun bm!377735 () Bool)

(declare-fun call!377744 () List!61113)

(declare-fun call!377745 () List!61113)

(assert (=> bm!377735 (= call!377744 call!377745)))

(declare-fun b!5299054 () Bool)

(declare-fun c!919790 () Bool)

(assert (=> b!5299054 (= c!919790 (is-Star!14938 (h!67437 (exprs!4822 (h!67438 zl!343)))))))

(assert (=> b!5299054 (= e!3293695 e!3293694)))

(declare-fun b!5299055 () Bool)

(declare-fun e!3293696 () (Set Context!8644))

(assert (=> b!5299055 (= e!3293698 e!3293696)))

(declare-fun c!919788 () Bool)

(assert (=> b!5299055 (= c!919788 (is-Union!14938 (h!67437 (exprs!4822 (h!67438 zl!343)))))))

(declare-fun b!5299056 () Bool)

(assert (=> b!5299056 (= e!3293698 (set.insert lt!2164868 (as set.empty (Set Context!8644))))))

(declare-fun c!919791 () Bool)

(declare-fun c!919789 () Bool)

(declare-fun bm!377736 () Bool)

(declare-fun call!377743 () (Set Context!8644))

(assert (=> bm!377736 (= call!377743 (derivationStepZipperDown!386 (ite c!919788 (regOne!30389 (h!67437 (exprs!4822 (h!67438 zl!343)))) (ite c!919791 (regTwo!30388 (h!67437 (exprs!4822 (h!67438 zl!343)))) (ite c!919789 (regOne!30388 (h!67437 (exprs!4822 (h!67438 zl!343)))) (reg!15267 (h!67437 (exprs!4822 (h!67438 zl!343))))))) (ite (or c!919788 c!919791) lt!2164868 (Context!8645 call!377744)) (h!67439 s!2326)))))

(declare-fun b!5299057 () Bool)

(declare-fun e!3293699 () (Set Context!8644))

(assert (=> b!5299057 (= e!3293699 e!3293695)))

(assert (=> b!5299057 (= c!919789 (is-Concat!23783 (h!67437 (exprs!4822 (h!67438 zl!343)))))))

(declare-fun bm!377737 () Bool)

(assert (=> bm!377737 (= call!377745 ($colon$colon!1369 (exprs!4822 lt!2164868) (ite (or c!919791 c!919789) (regTwo!30388 (h!67437 (exprs!4822 (h!67438 zl!343)))) (h!67437 (exprs!4822 (h!67438 zl!343))))))))

(declare-fun b!5299058 () Bool)

(declare-fun e!3293697 () Bool)

(assert (=> b!5299058 (= c!919791 e!3293697)))

(declare-fun res!2247518 () Bool)

(assert (=> b!5299058 (=> (not res!2247518) (not e!3293697))))

(assert (=> b!5299058 (= res!2247518 (is-Concat!23783 (h!67437 (exprs!4822 (h!67438 zl!343)))))))

(assert (=> b!5299058 (= e!3293696 e!3293699)))

(declare-fun bm!377738 () Bool)

(declare-fun call!377742 () (Set Context!8644))

(assert (=> bm!377738 (= call!377742 (derivationStepZipperDown!386 (ite c!919788 (regTwo!30389 (h!67437 (exprs!4822 (h!67438 zl!343)))) (regOne!30388 (h!67437 (exprs!4822 (h!67438 zl!343))))) (ite c!919788 lt!2164868 (Context!8645 call!377745)) (h!67439 s!2326)))))

(declare-fun bm!377739 () Bool)

(declare-fun call!377740 () (Set Context!8644))

(assert (=> bm!377739 (= call!377741 call!377740)))

(declare-fun b!5299059 () Bool)

(assert (=> b!5299059 (= e!3293696 (set.union call!377743 call!377742))))

(declare-fun b!5299060 () Bool)

(assert (=> b!5299060 (= e!3293699 (set.union call!377742 call!377740))))

(declare-fun b!5299061 () Bool)

(assert (=> b!5299061 (= e!3293694 call!377741)))

(declare-fun bm!377740 () Bool)

(assert (=> bm!377740 (= call!377740 call!377743)))

(declare-fun b!5299062 () Bool)

(assert (=> b!5299062 (= e!3293697 (nullable!5107 (regOne!30388 (h!67437 (exprs!4822 (h!67438 zl!343))))))))

(assert (= (and d!1704065 c!919787) b!5299056))

(assert (= (and d!1704065 (not c!919787)) b!5299055))

(assert (= (and b!5299055 c!919788) b!5299059))

(assert (= (and b!5299055 (not c!919788)) b!5299058))

(assert (= (and b!5299058 res!2247518) b!5299062))

(assert (= (and b!5299058 c!919791) b!5299060))

(assert (= (and b!5299058 (not c!919791)) b!5299057))

(assert (= (and b!5299057 c!919789) b!5299053))

(assert (= (and b!5299057 (not c!919789)) b!5299054))

(assert (= (and b!5299054 c!919790) b!5299061))

(assert (= (and b!5299054 (not c!919790)) b!5299052))

(assert (= (or b!5299053 b!5299061) bm!377735))

(assert (= (or b!5299053 b!5299061) bm!377739))

(assert (= (or b!5299060 bm!377735) bm!377737))

(assert (= (or b!5299060 bm!377739) bm!377740))

(assert (= (or b!5299059 b!5299060) bm!377738))

(assert (= (or b!5299059 bm!377740) bm!377736))

(declare-fun m!6336508 () Bool)

(assert (=> bm!377738 m!6336508))

(declare-fun m!6336510 () Bool)

(assert (=> b!5299062 m!6336510))

(declare-fun m!6336512 () Bool)

(assert (=> bm!377736 m!6336512))

(assert (=> b!5299056 m!6336386))

(declare-fun m!6336514 () Bool)

(assert (=> bm!377737 m!6336514))

(assert (=> b!5298424 d!1704065))

(declare-fun d!1704067 () Bool)

(assert (=> d!1704067 (= (nullable!5107 (h!67437 (exprs!4822 (h!67438 zl!343)))) (nullableFct!1471 (h!67437 (exprs!4822 (h!67438 zl!343)))))))

(declare-fun bs!1229030 () Bool)

(assert (= bs!1229030 d!1704067))

(declare-fun m!6336516 () Bool)

(assert (=> bs!1229030 m!6336516))

(assert (=> b!5298424 d!1704067))

(declare-fun d!1704069 () Bool)

(assert (=> d!1704069 (= (flatMap!665 z!1189 lambda!268876) (choose!39599 z!1189 lambda!268876))))

(declare-fun bs!1229031 () Bool)

(assert (= bs!1229031 d!1704069))

(declare-fun m!6336518 () Bool)

(assert (=> bs!1229031 m!6336518))

(assert (=> b!5298424 d!1704069))

(declare-fun b!5299063 () Bool)

(declare-fun e!3293700 () (Set Context!8644))

(declare-fun e!3293702 () (Set Context!8644))

(assert (=> b!5299063 (= e!3293700 e!3293702)))

(declare-fun c!919793 () Bool)

(assert (=> b!5299063 (= c!919793 (is-Cons!60989 (exprs!4822 (h!67438 zl!343))))))

(declare-fun b!5299064 () Bool)

(declare-fun call!377746 () (Set Context!8644))

(assert (=> b!5299064 (= e!3293702 call!377746)))

(declare-fun bm!377741 () Bool)

(assert (=> bm!377741 (= call!377746 (derivationStepZipperDown!386 (h!67437 (exprs!4822 (h!67438 zl!343))) (Context!8645 (t!374318 (exprs!4822 (h!67438 zl!343)))) (h!67439 s!2326)))))

(declare-fun b!5299065 () Bool)

(assert (=> b!5299065 (= e!3293700 (set.union call!377746 (derivationStepZipperUp!310 (Context!8645 (t!374318 (exprs!4822 (h!67438 zl!343)))) (h!67439 s!2326))))))

(declare-fun d!1704071 () Bool)

(declare-fun c!919792 () Bool)

(declare-fun e!3293701 () Bool)

(assert (=> d!1704071 (= c!919792 e!3293701)))

(declare-fun res!2247519 () Bool)

(assert (=> d!1704071 (=> (not res!2247519) (not e!3293701))))

(assert (=> d!1704071 (= res!2247519 (is-Cons!60989 (exprs!4822 (h!67438 zl!343))))))

(assert (=> d!1704071 (= (derivationStepZipperUp!310 (h!67438 zl!343) (h!67439 s!2326)) e!3293700)))

(declare-fun b!5299066 () Bool)

(assert (=> b!5299066 (= e!3293702 (as set.empty (Set Context!8644)))))

(declare-fun b!5299067 () Bool)

(assert (=> b!5299067 (= e!3293701 (nullable!5107 (h!67437 (exprs!4822 (h!67438 zl!343)))))))

(assert (= (and d!1704071 res!2247519) b!5299067))

(assert (= (and d!1704071 c!919792) b!5299065))

(assert (= (and d!1704071 (not c!919792)) b!5299063))

(assert (= (and b!5299063 c!919793) b!5299064))

(assert (= (and b!5299063 (not c!919793)) b!5299066))

(assert (= (or b!5299065 b!5299064) bm!377741))

(declare-fun m!6336520 () Bool)

(assert (=> bm!377741 m!6336520))

(declare-fun m!6336522 () Bool)

(assert (=> b!5299065 m!6336522))

(assert (=> b!5299067 m!6335872))

(assert (=> b!5298424 d!1704071))

(declare-fun d!1704073 () Bool)

(assert (=> d!1704073 (= (flatMap!665 z!1189 lambda!268876) (dynLambda!24116 lambda!268876 (h!67438 zl!343)))))

(declare-fun lt!2165105 () Unit!153270)

(assert (=> d!1704073 (= lt!2165105 (choose!39598 z!1189 (h!67438 zl!343) lambda!268876))))

(assert (=> d!1704073 (= z!1189 (set.insert (h!67438 zl!343) (as set.empty (Set Context!8644))))))

(assert (=> d!1704073 (= (lemmaFlatMapOnSingletonSet!197 z!1189 (h!67438 zl!343) lambda!268876) lt!2165105)))

(declare-fun b_lambda!204217 () Bool)

(assert (=> (not b_lambda!204217) (not d!1704073)))

(declare-fun bs!1229032 () Bool)

(assert (= bs!1229032 d!1704073))

(assert (=> bs!1229032 m!6335870))

(declare-fun m!6336524 () Bool)

(assert (=> bs!1229032 m!6336524))

(declare-fun m!6336526 () Bool)

(assert (=> bs!1229032 m!6336526))

(declare-fun m!6336528 () Bool)

(assert (=> bs!1229032 m!6336528))

(assert (=> b!5298424 d!1704073))

(declare-fun b!5299068 () Bool)

(declare-fun e!3293703 () (Set Context!8644))

(declare-fun e!3293705 () (Set Context!8644))

(assert (=> b!5299068 (= e!3293703 e!3293705)))

(declare-fun c!919795 () Bool)

(assert (=> b!5299068 (= c!919795 (is-Cons!60989 (exprs!4822 lt!2164868)))))

(declare-fun b!5299069 () Bool)

(declare-fun call!377747 () (Set Context!8644))

(assert (=> b!5299069 (= e!3293705 call!377747)))

(declare-fun bm!377742 () Bool)

(assert (=> bm!377742 (= call!377747 (derivationStepZipperDown!386 (h!67437 (exprs!4822 lt!2164868)) (Context!8645 (t!374318 (exprs!4822 lt!2164868))) (h!67439 s!2326)))))

(declare-fun b!5299070 () Bool)

(assert (=> b!5299070 (= e!3293703 (set.union call!377747 (derivationStepZipperUp!310 (Context!8645 (t!374318 (exprs!4822 lt!2164868))) (h!67439 s!2326))))))

(declare-fun d!1704075 () Bool)

(declare-fun c!919794 () Bool)

(declare-fun e!3293704 () Bool)

(assert (=> d!1704075 (= c!919794 e!3293704)))

(declare-fun res!2247520 () Bool)

(assert (=> d!1704075 (=> (not res!2247520) (not e!3293704))))

(assert (=> d!1704075 (= res!2247520 (is-Cons!60989 (exprs!4822 lt!2164868)))))

(assert (=> d!1704075 (= (derivationStepZipperUp!310 lt!2164868 (h!67439 s!2326)) e!3293703)))

(declare-fun b!5299071 () Bool)

(assert (=> b!5299071 (= e!3293705 (as set.empty (Set Context!8644)))))

(declare-fun b!5299072 () Bool)

(assert (=> b!5299072 (= e!3293704 (nullable!5107 (h!67437 (exprs!4822 lt!2164868))))))

(assert (= (and d!1704075 res!2247520) b!5299072))

(assert (= (and d!1704075 c!919794) b!5299070))

(assert (= (and d!1704075 (not c!919794)) b!5299068))

(assert (= (and b!5299068 c!919795) b!5299069))

(assert (= (and b!5299068 (not c!919795)) b!5299071))

(assert (= (or b!5299070 b!5299069) bm!377742))

(declare-fun m!6336530 () Bool)

(assert (=> bm!377742 m!6336530))

(declare-fun m!6336532 () Bool)

(assert (=> b!5299070 m!6336532))

(declare-fun m!6336534 () Bool)

(assert (=> b!5299072 m!6336534))

(assert (=> b!5298424 d!1704075))

(declare-fun b!5299073 () Bool)

(declare-fun e!3293706 () (Set Context!8644))

(declare-fun e!3293708 () (Set Context!8644))

(assert (=> b!5299073 (= e!3293706 e!3293708)))

(declare-fun c!919797 () Bool)

(assert (=> b!5299073 (= c!919797 (is-Cons!60989 (exprs!4822 (Context!8645 (Cons!60989 (h!67437 (exprs!4822 (h!67438 zl!343))) (t!374318 (exprs!4822 (h!67438 zl!343))))))))))

(declare-fun b!5299074 () Bool)

(declare-fun call!377748 () (Set Context!8644))

(assert (=> b!5299074 (= e!3293708 call!377748)))

(declare-fun bm!377743 () Bool)

(assert (=> bm!377743 (= call!377748 (derivationStepZipperDown!386 (h!67437 (exprs!4822 (Context!8645 (Cons!60989 (h!67437 (exprs!4822 (h!67438 zl!343))) (t!374318 (exprs!4822 (h!67438 zl!343))))))) (Context!8645 (t!374318 (exprs!4822 (Context!8645 (Cons!60989 (h!67437 (exprs!4822 (h!67438 zl!343))) (t!374318 (exprs!4822 (h!67438 zl!343)))))))) (h!67439 s!2326)))))

(declare-fun b!5299075 () Bool)

(assert (=> b!5299075 (= e!3293706 (set.union call!377748 (derivationStepZipperUp!310 (Context!8645 (t!374318 (exprs!4822 (Context!8645 (Cons!60989 (h!67437 (exprs!4822 (h!67438 zl!343))) (t!374318 (exprs!4822 (h!67438 zl!343)))))))) (h!67439 s!2326))))))

(declare-fun d!1704077 () Bool)

(declare-fun c!919796 () Bool)

(declare-fun e!3293707 () Bool)

(assert (=> d!1704077 (= c!919796 e!3293707)))

(declare-fun res!2247521 () Bool)

(assert (=> d!1704077 (=> (not res!2247521) (not e!3293707))))

(assert (=> d!1704077 (= res!2247521 (is-Cons!60989 (exprs!4822 (Context!8645 (Cons!60989 (h!67437 (exprs!4822 (h!67438 zl!343))) (t!374318 (exprs!4822 (h!67438 zl!343))))))))))

(assert (=> d!1704077 (= (derivationStepZipperUp!310 (Context!8645 (Cons!60989 (h!67437 (exprs!4822 (h!67438 zl!343))) (t!374318 (exprs!4822 (h!67438 zl!343))))) (h!67439 s!2326)) e!3293706)))

(declare-fun b!5299076 () Bool)

(assert (=> b!5299076 (= e!3293708 (as set.empty (Set Context!8644)))))

(declare-fun b!5299077 () Bool)

(assert (=> b!5299077 (= e!3293707 (nullable!5107 (h!67437 (exprs!4822 (Context!8645 (Cons!60989 (h!67437 (exprs!4822 (h!67438 zl!343))) (t!374318 (exprs!4822 (h!67438 zl!343)))))))))))

(assert (= (and d!1704077 res!2247521) b!5299077))

(assert (= (and d!1704077 c!919796) b!5299075))

(assert (= (and d!1704077 (not c!919796)) b!5299073))

(assert (= (and b!5299073 c!919797) b!5299074))

(assert (= (and b!5299073 (not c!919797)) b!5299076))

(assert (= (or b!5299075 b!5299074) bm!377743))

(declare-fun m!6336536 () Bool)

(assert (=> bm!377743 m!6336536))

(declare-fun m!6336538 () Bool)

(assert (=> b!5299075 m!6336538))

(declare-fun m!6336540 () Bool)

(assert (=> b!5299077 m!6336540))

(assert (=> b!5298424 d!1704077))

(declare-fun d!1704079 () Bool)

(declare-fun lt!2165108 () Int)

(assert (=> d!1704079 (>= lt!2165108 0)))

(declare-fun e!3293711 () Int)

(assert (=> d!1704079 (= lt!2165108 e!3293711)))

(declare-fun c!919801 () Bool)

(assert (=> d!1704079 (= c!919801 (is-Cons!60989 (exprs!4822 lt!2164873)))))

(assert (=> d!1704079 (= (contextDepthTotal!79 lt!2164873) lt!2165108)))

(declare-fun b!5299082 () Bool)

(declare-fun regexDepthTotal!31 (Regex!14938) Int)

(assert (=> b!5299082 (= e!3293711 (+ (regexDepthTotal!31 (h!67437 (exprs!4822 lt!2164873))) (contextDepthTotal!79 (Context!8645 (t!374318 (exprs!4822 lt!2164873))))))))

(declare-fun b!5299083 () Bool)

(assert (=> b!5299083 (= e!3293711 1)))

(assert (= (and d!1704079 c!919801) b!5299082))

(assert (= (and d!1704079 (not c!919801)) b!5299083))

(declare-fun m!6336542 () Bool)

(assert (=> b!5299082 m!6336542))

(declare-fun m!6336544 () Bool)

(assert (=> b!5299082 m!6336544))

(assert (=> b!5298423 d!1704079))

(declare-fun d!1704081 () Bool)

(declare-fun lt!2165109 () Int)

(assert (=> d!1704081 (>= lt!2165109 0)))

(declare-fun e!3293712 () Int)

(assert (=> d!1704081 (= lt!2165109 e!3293712)))

(declare-fun c!919802 () Bool)

(assert (=> d!1704081 (= c!919802 (is-Cons!60989 (exprs!4822 (h!67438 zl!343))))))

(assert (=> d!1704081 (= (contextDepthTotal!79 (h!67438 zl!343)) lt!2165109)))

(declare-fun b!5299084 () Bool)

(assert (=> b!5299084 (= e!3293712 (+ (regexDepthTotal!31 (h!67437 (exprs!4822 (h!67438 zl!343)))) (contextDepthTotal!79 (Context!8645 (t!374318 (exprs!4822 (h!67438 zl!343)))))))))

(declare-fun b!5299085 () Bool)

(assert (=> b!5299085 (= e!3293712 1)))

(assert (= (and d!1704081 c!919802) b!5299084))

(assert (= (and d!1704081 (not c!919802)) b!5299085))

(declare-fun m!6336546 () Bool)

(assert (=> b!5299084 m!6336546))

(declare-fun m!6336548 () Bool)

(assert (=> b!5299084 m!6336548))

(assert (=> b!5298423 d!1704081))

(declare-fun e!3293715 () Bool)

(assert (=> b!5298410 (= tp!1477948 e!3293715)))

(declare-fun b!5299098 () Bool)

(declare-fun tp!1477997 () Bool)

(assert (=> b!5299098 (= e!3293715 tp!1477997)))

(declare-fun b!5299097 () Bool)

(declare-fun tp!1477998 () Bool)

(declare-fun tp!1477996 () Bool)

(assert (=> b!5299097 (= e!3293715 (and tp!1477998 tp!1477996))))

(declare-fun b!5299099 () Bool)

(declare-fun tp!1478000 () Bool)

(declare-fun tp!1477999 () Bool)

(assert (=> b!5299099 (= e!3293715 (and tp!1478000 tp!1477999))))

(declare-fun b!5299096 () Bool)

(assert (=> b!5299096 (= e!3293715 tp_is_empty!39129)))

(assert (= (and b!5298410 (is-ElementMatch!14938 (regOne!30388 r!7292))) b!5299096))

(assert (= (and b!5298410 (is-Concat!23783 (regOne!30388 r!7292))) b!5299097))

(assert (= (and b!5298410 (is-Star!14938 (regOne!30388 r!7292))) b!5299098))

(assert (= (and b!5298410 (is-Union!14938 (regOne!30388 r!7292))) b!5299099))

(declare-fun e!3293716 () Bool)

(assert (=> b!5298410 (= tp!1477947 e!3293716)))

(declare-fun b!5299102 () Bool)

(declare-fun tp!1478002 () Bool)

(assert (=> b!5299102 (= e!3293716 tp!1478002)))

(declare-fun b!5299101 () Bool)

(declare-fun tp!1478003 () Bool)

(declare-fun tp!1478001 () Bool)

(assert (=> b!5299101 (= e!3293716 (and tp!1478003 tp!1478001))))

(declare-fun b!5299103 () Bool)

(declare-fun tp!1478005 () Bool)

(declare-fun tp!1478004 () Bool)

(assert (=> b!5299103 (= e!3293716 (and tp!1478005 tp!1478004))))

(declare-fun b!5299100 () Bool)

(assert (=> b!5299100 (= e!3293716 tp_is_empty!39129)))

(assert (= (and b!5298410 (is-ElementMatch!14938 (regTwo!30388 r!7292))) b!5299100))

(assert (= (and b!5298410 (is-Concat!23783 (regTwo!30388 r!7292))) b!5299101))

(assert (= (and b!5298410 (is-Star!14938 (regTwo!30388 r!7292))) b!5299102))

(assert (= (and b!5298410 (is-Union!14938 (regTwo!30388 r!7292))) b!5299103))

(declare-fun b!5299111 () Bool)

(declare-fun e!3293722 () Bool)

(declare-fun tp!1478010 () Bool)

(assert (=> b!5299111 (= e!3293722 tp!1478010)))

(declare-fun e!3293721 () Bool)

(declare-fun tp!1478011 () Bool)

(declare-fun b!5299110 () Bool)

(assert (=> b!5299110 (= e!3293721 (and (inv!80593 (h!67438 (t!374319 zl!343))) e!3293722 tp!1478011))))

(assert (=> b!5298409 (= tp!1477954 e!3293721)))

(assert (= b!5299110 b!5299111))

(assert (= (and b!5298409 (is-Cons!60990 (t!374319 zl!343))) b!5299110))

(declare-fun m!6336550 () Bool)

(assert (=> b!5299110 m!6336550))

(declare-fun condSetEmpty!34034 () Bool)

(assert (=> setNonEmpty!34028 (= condSetEmpty!34034 (= setRest!34028 (as set.empty (Set Context!8644))))))

(declare-fun setRes!34034 () Bool)

(assert (=> setNonEmpty!34028 (= tp!1477946 setRes!34034)))

(declare-fun setIsEmpty!34034 () Bool)

(assert (=> setIsEmpty!34034 setRes!34034))

(declare-fun tp!1478017 () Bool)

(declare-fun setElem!34034 () Context!8644)

(declare-fun e!3293725 () Bool)

(declare-fun setNonEmpty!34034 () Bool)

(assert (=> setNonEmpty!34034 (= setRes!34034 (and tp!1478017 (inv!80593 setElem!34034) e!3293725))))

(declare-fun setRest!34034 () (Set Context!8644))

(assert (=> setNonEmpty!34034 (= setRest!34028 (set.union (set.insert setElem!34034 (as set.empty (Set Context!8644))) setRest!34034))))

(declare-fun b!5299116 () Bool)

(declare-fun tp!1478016 () Bool)

(assert (=> b!5299116 (= e!3293725 tp!1478016)))

(assert (= (and setNonEmpty!34028 condSetEmpty!34034) setIsEmpty!34034))

(assert (= (and setNonEmpty!34028 (not condSetEmpty!34034)) setNonEmpty!34034))

(assert (= setNonEmpty!34034 b!5299116))

(declare-fun m!6336552 () Bool)

(assert (=> setNonEmpty!34034 m!6336552))

(declare-fun e!3293726 () Bool)

(assert (=> b!5298407 (= tp!1477952 e!3293726)))

(declare-fun b!5299119 () Bool)

(declare-fun tp!1478019 () Bool)

(assert (=> b!5299119 (= e!3293726 tp!1478019)))

(declare-fun b!5299118 () Bool)

(declare-fun tp!1478020 () Bool)

(declare-fun tp!1478018 () Bool)

(assert (=> b!5299118 (= e!3293726 (and tp!1478020 tp!1478018))))

(declare-fun b!5299120 () Bool)

(declare-fun tp!1478022 () Bool)

(declare-fun tp!1478021 () Bool)

(assert (=> b!5299120 (= e!3293726 (and tp!1478022 tp!1478021))))

(declare-fun b!5299117 () Bool)

(assert (=> b!5299117 (= e!3293726 tp_is_empty!39129)))

(assert (= (and b!5298407 (is-ElementMatch!14938 (reg!15267 r!7292))) b!5299117))

(assert (= (and b!5298407 (is-Concat!23783 (reg!15267 r!7292))) b!5299118))

(assert (= (and b!5298407 (is-Star!14938 (reg!15267 r!7292))) b!5299119))

(assert (= (and b!5298407 (is-Union!14938 (reg!15267 r!7292))) b!5299120))

(declare-fun e!3293727 () Bool)

(assert (=> b!5298426 (= tp!1477950 e!3293727)))

(declare-fun b!5299123 () Bool)

(declare-fun tp!1478024 () Bool)

(assert (=> b!5299123 (= e!3293727 tp!1478024)))

(declare-fun b!5299122 () Bool)

(declare-fun tp!1478025 () Bool)

(declare-fun tp!1478023 () Bool)

(assert (=> b!5299122 (= e!3293727 (and tp!1478025 tp!1478023))))

(declare-fun b!5299124 () Bool)

(declare-fun tp!1478027 () Bool)

(declare-fun tp!1478026 () Bool)

(assert (=> b!5299124 (= e!3293727 (and tp!1478027 tp!1478026))))

(declare-fun b!5299121 () Bool)

(assert (=> b!5299121 (= e!3293727 tp_is_empty!39129)))

(assert (= (and b!5298426 (is-ElementMatch!14938 (regOne!30389 r!7292))) b!5299121))

(assert (= (and b!5298426 (is-Concat!23783 (regOne!30389 r!7292))) b!5299122))

(assert (= (and b!5298426 (is-Star!14938 (regOne!30389 r!7292))) b!5299123))

(assert (= (and b!5298426 (is-Union!14938 (regOne!30389 r!7292))) b!5299124))

(declare-fun e!3293728 () Bool)

(assert (=> b!5298426 (= tp!1477955 e!3293728)))

(declare-fun b!5299127 () Bool)

(declare-fun tp!1478029 () Bool)

(assert (=> b!5299127 (= e!3293728 tp!1478029)))

(declare-fun b!5299126 () Bool)

(declare-fun tp!1478030 () Bool)

(declare-fun tp!1478028 () Bool)

(assert (=> b!5299126 (= e!3293728 (and tp!1478030 tp!1478028))))

(declare-fun b!5299128 () Bool)

(declare-fun tp!1478032 () Bool)

(declare-fun tp!1478031 () Bool)

(assert (=> b!5299128 (= e!3293728 (and tp!1478032 tp!1478031))))

(declare-fun b!5299125 () Bool)

(assert (=> b!5299125 (= e!3293728 tp_is_empty!39129)))

(assert (= (and b!5298426 (is-ElementMatch!14938 (regTwo!30389 r!7292))) b!5299125))

(assert (= (and b!5298426 (is-Concat!23783 (regTwo!30389 r!7292))) b!5299126))

(assert (= (and b!5298426 (is-Star!14938 (regTwo!30389 r!7292))) b!5299127))

(assert (= (and b!5298426 (is-Union!14938 (regTwo!30389 r!7292))) b!5299128))

(declare-fun b!5299133 () Bool)

(declare-fun e!3293731 () Bool)

(declare-fun tp!1478035 () Bool)

(assert (=> b!5299133 (= e!3293731 (and tp_is_empty!39129 tp!1478035))))

(assert (=> b!5298425 (= tp!1477951 e!3293731)))

(assert (= (and b!5298425 (is-Cons!60991 (t!374320 s!2326))) b!5299133))

(declare-fun b!5299138 () Bool)

(declare-fun e!3293734 () Bool)

(declare-fun tp!1478040 () Bool)

(declare-fun tp!1478041 () Bool)

(assert (=> b!5299138 (= e!3293734 (and tp!1478040 tp!1478041))))

(assert (=> b!5298430 (= tp!1477949 e!3293734)))

(assert (= (and b!5298430 (is-Cons!60989 (exprs!4822 (h!67438 zl!343)))) b!5299138))

(declare-fun b!5299139 () Bool)

(declare-fun e!3293735 () Bool)

(declare-fun tp!1478042 () Bool)

(declare-fun tp!1478043 () Bool)

(assert (=> b!5299139 (= e!3293735 (and tp!1478042 tp!1478043))))

(assert (=> b!5298420 (= tp!1477953 e!3293735)))

(assert (= (and b!5298420 (is-Cons!60989 (exprs!4822 setElem!34028))) b!5299139))

(declare-fun b_lambda!204219 () Bool)

(assert (= b_lambda!204215 (or b!5298424 b_lambda!204219)))

(declare-fun bs!1229033 () Bool)

(declare-fun d!1704083 () Bool)

(assert (= bs!1229033 (and d!1704083 b!5298424)))

(assert (=> bs!1229033 (= (dynLambda!24116 lambda!268876 lt!2164873) (derivationStepZipperUp!310 lt!2164873 (h!67439 s!2326)))))

(assert (=> bs!1229033 m!6335758))

(assert (=> d!1704049 d!1704083))

(declare-fun b_lambda!204221 () Bool)

(assert (= b_lambda!204213 (or b!5298424 b_lambda!204221)))

(declare-fun bs!1229034 () Bool)

(declare-fun d!1704085 () Bool)

(assert (= bs!1229034 (and d!1704085 b!5298424)))

(assert (=> bs!1229034 (= (dynLambda!24116 lambda!268876 lt!2164828) (derivationStepZipperUp!310 lt!2164828 (h!67439 s!2326)))))

(assert (=> bs!1229034 m!6335752))

(assert (=> d!1704037 d!1704085))

(declare-fun b_lambda!204223 () Bool)

(assert (= b_lambda!204217 (or b!5298424 b_lambda!204223)))

(declare-fun bs!1229035 () Bool)

(declare-fun d!1704087 () Bool)

(assert (= bs!1229035 (and d!1704087 b!5298424)))

(assert (=> bs!1229035 (= (dynLambda!24116 lambda!268876 (h!67438 zl!343)) (derivationStepZipperUp!310 (h!67438 zl!343) (h!67439 s!2326)))))

(assert (=> bs!1229035 m!6335868))

(assert (=> d!1704073 d!1704087))

(push 1)

(assert (not d!1704035))

(assert (not d!1704059))

(assert (not b!5298786))

(assert (not bm!377736))

(assert (not b!5299014))

(assert (not b!5298969))

(assert (not b!5298879))

(assert (not b!5298859))

(assert (not d!1704037))

(assert (not bm!377741))

(assert (not b!5299126))

(assert (not bm!377697))

(assert (not b!5298668))

(assert (not bm!377718))

(assert (not b!5299084))

(assert (not b!5298952))

(assert (not bm!377737))

(assert (not b!5298856))

(assert (not b!5298756))

(assert (not d!1703933))

(assert (not b!5298773))

(assert (not bm!377743))

(assert (not bm!377686))

(assert (not b!5299065))

(assert (not bm!377719))

(assert (not b!5298983))

(assert (not d!1703987))

(assert (not b!5299111))

(assert (not bm!377742))

(assert (not d!1703963))

(assert (not b!5299098))

(assert (not b!5299070))

(assert (not b!5299042))

(assert (not b!5299006))

(assert (not bm!377728))

(assert (not b!5298888))

(assert (not b!5298912))

(assert (not b!5298903))

(assert (not b!5298615))

(assert (not d!1704051))

(assert (not b!5298613))

(assert (not b!5298851))

(assert (not b!5298764))

(assert (not b!5299122))

(assert (not b!5299036))

(assert (not d!1704001))

(assert (not d!1703991))

(assert (not b!5299101))

(assert (not d!1703935))

(assert (not b!5298778))

(assert (not d!1703931))

(assert (not d!1703959))

(assert (not d!1703967))

(assert (not b!5299062))

(assert (not b!5299038))

(assert (not b!5298682))

(assert (not d!1703937))

(assert (not b!5299124))

(assert (not d!1703971))

(assert (not b!5298857))

(assert (not d!1703965))

(assert (not b!5299011))

(assert (not d!1704025))

(assert (not b!5298917))

(assert (not d!1704017))

(assert (not b!5298685))

(assert (not d!1703919))

(assert (not b!5299127))

(assert (not b!5299012))

(assert (not d!1703943))

(assert (not b!5298686))

(assert (not b!5298826))

(assert (not d!1704009))

(assert (not b!5299015))

(assert (not b!5298864))

(assert (not d!1703951))

(assert (not b!5298852))

(assert (not bm!377723))

(assert (not b!5298719))

(assert (not b!5298688))

(assert (not bm!377701))

(assert (not b!5298776))

(assert (not b!5299041))

(assert (not b!5298973))

(assert (not d!1704031))

(assert (not b!5298837))

(assert (not b!5298763))

(assert (not d!1704069))

(assert (not d!1703945))

(assert (not d!1703975))

(assert (not b!5298690))

(assert (not b!5298687))

(assert (not d!1703929))

(assert (not b!5299013))

(assert (not b!5298783))

(assert (not b_lambda!204219))

(assert (not d!1704067))

(assert (not b!5298715))

(assert (not d!1703941))

(assert (not b!5298604))

(assert (not bm!377734))

(assert (not b!5299040))

(assert (not b!5299072))

(assert (not b!5299116))

(assert (not b!5298919))

(assert (not b!5299075))

(assert (not b!5298785))

(assert (not b!5298872))

(assert (not b!5298893))

(assert (not b!5298918))

(assert (not bm!377725))

(assert (not d!1704003))

(assert (not b!5298854))

(assert (not b!5298614))

(assert (not bm!377687))

(assert (not b!5298902))

(assert (not b!5298901))

(assert (not b!5298853))

(assert (not b!5298772))

(assert (not d!1704057))

(assert (not b!5298639))

(assert (not b!5298663))

(assert (not b!5298874))

(assert (not b!5299119))

(assert (not b!5298662))

(assert (not d!1704049))

(assert (not bm!377691))

(assert (not b!5298870))

(assert (not d!1703939))

(assert (not b!5299077))

(assert (not d!1703955))

(assert (not d!1703925))

(assert (not b!5299009))

(assert (not d!1704039))

(assert (not b!5298987))

(assert (not b!5298775))

(assert (not d!1704047))

(assert (not d!1704005))

(assert (not b!5298762))

(assert (not d!1704029))

(assert (not b!5298910))

(assert (not bm!377738))

(assert (not bs!1229033))

(assert (not b!5298612))

(assert (not b!5298664))

(assert (not b!5298607))

(assert (not b!5299044))

(assert (not b!5298977))

(assert (not b!5298832))

(assert (not b!5299067))

(assert (not b!5299103))

(assert (not b_lambda!204223))

(assert (not b!5299128))

(assert (not b!5298721))

(assert (not b!5298769))

(assert (not b!5298894))

(assert (not b!5298986))

(assert (not b!5299120))

(assert (not b!5299138))

(assert (not b!5298683))

(assert (not bs!1229034))

(assert (not b!5298860))

(assert (not b!5298723))

(assert (not b!5298915))

(assert (not bm!377733))

(assert (not b!5298665))

(assert (not b!5298661))

(assert (not d!1703997))

(assert (not d!1704061))

(assert (not b!5298981))

(assert (not bm!377703))

(assert (not b!5299099))

(assert (not d!1703947))

(assert (not b!5298767))

(assert (not b!5299097))

(assert (not d!1704063))

(assert (not bm!377717))

(assert (not b!5298766))

(assert (not d!1703949))

(assert (not d!1703953))

(assert (not d!1703961))

(assert (not b!5298861))

(assert (not b!5298984))

(assert (not b!5298858))

(assert (not b!5299110))

(assert (not b!5298989))

(assert (not d!1703979))

(assert (not b!5298689))

(assert (not b!5299118))

(assert (not b!5299102))

(assert (not b!5298988))

(assert (not d!1703917))

(assert (not b!5298899))

(assert (not bm!377724))

(assert (not bm!377700))

(assert (not b!5298990))

(assert (not b!5299082))

(assert (not b!5298898))

(assert (not b!5299050))

(assert (not d!1704041))

(assert (not d!1704033))

(assert (not b!5298724))

(assert (not b!5298895))

(assert (not bm!377699))

(assert (not b!5298761))

(assert (not b!5298782))

(assert (not d!1703985))

(assert (not d!1704073))

(assert (not b!5298980))

(assert (not d!1703921))

(assert (not b!5298718))

(assert (not b!5298985))

(assert (not b!5299133))

(assert (not b!5298787))

(assert (not bm!377729))

(assert (not b!5299005))

(assert (not b!5298777))

(assert (not b!5298974))

(assert (not d!1703969))

(assert (not b_lambda!204221))

(assert (not bm!377698))

(assert (not b!5298722))

(assert (not d!1703923))

(assert (not b!5298963))

(assert (not b!5298821))

(assert (not b!5298684))

(assert tp_is_empty!39129)

(assert (not b!5298900))

(assert (not d!1704007))

(assert (not d!1704045))

(assert (not b!5298768))

(assert (not b!5298779))

(assert (not d!1703957))

(assert (not b!5299043))

(assert (not b!5299139))

(assert (not b!5299003))

(assert (not d!1703977))

(assert (not b!5298896))

(assert (not bm!377696))

(assert (not b!5298846))

(assert (not d!1703989))

(assert (not b!5298788))

(assert (not bs!1229035))

(assert (not b!5298693))

(assert (not bm!377702))

(assert (not d!1704015))

(assert (not b!5299123))

(assert (not d!1703981))

(assert (not setNonEmpty!34034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

