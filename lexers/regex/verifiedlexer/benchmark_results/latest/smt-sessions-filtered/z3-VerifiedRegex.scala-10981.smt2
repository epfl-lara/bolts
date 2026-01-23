; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!569434 () Bool)

(assert start!569434)

(declare-fun b!5424211 () Bool)

(assert (=> b!5424211 true))

(assert (=> b!5424211 true))

(declare-fun lambda!284299 () Int)

(declare-fun lambda!284298 () Int)

(assert (=> b!5424211 (not (= lambda!284299 lambda!284298))))

(assert (=> b!5424211 true))

(assert (=> b!5424211 true))

(declare-fun b!5424173 () Bool)

(assert (=> b!5424173 true))

(declare-fun b!5424201 () Bool)

(assert (=> b!5424201 true))

(declare-fun bs!1253240 () Bool)

(declare-fun b!5424185 () Bool)

(assert (= bs!1253240 (and b!5424185 b!5424211)))

(declare-datatypes ((C!30688 0))(
  ( (C!30689 (val!25046 Int)) )
))
(declare-datatypes ((Regex!15209 0))(
  ( (ElementMatch!15209 (c!946089 C!30688)) (Concat!24054 (regOne!30930 Regex!15209) (regTwo!30930 Regex!15209)) (EmptyExpr!15209) (Star!15209 (reg!15538 Regex!15209)) (EmptyLang!15209) (Union!15209 (regOne!30931 Regex!15209) (regTwo!30931 Regex!15209)) )
))
(declare-fun r!7292 () Regex!15209)

(declare-fun lambda!284303 () Int)

(declare-fun lt!2212145 () Regex!15209)

(assert (=> bs!1253240 (= (= lt!2212145 (regOne!30930 r!7292)) (= lambda!284303 lambda!284298))))

(assert (=> bs!1253240 (not (= lambda!284303 lambda!284299))))

(assert (=> b!5424185 true))

(assert (=> b!5424185 true))

(assert (=> b!5424185 true))

(declare-fun lambda!284304 () Int)

(assert (=> bs!1253240 (not (= lambda!284304 lambda!284298))))

(assert (=> bs!1253240 (= (= lt!2212145 (regOne!30930 r!7292)) (= lambda!284304 lambda!284299))))

(assert (=> b!5424185 (not (= lambda!284304 lambda!284303))))

(assert (=> b!5424185 true))

(assert (=> b!5424185 true))

(assert (=> b!5424185 true))

(declare-fun bs!1253241 () Bool)

(declare-fun b!5424203 () Bool)

(assert (= bs!1253241 (and b!5424203 b!5424211)))

(declare-datatypes ((List!61926 0))(
  ( (Nil!61802) (Cons!61802 (h!68250 C!30688) (t!375149 List!61926)) )
))
(declare-fun s!2326 () List!61926)

(declare-fun lambda!284305 () Int)

(declare-datatypes ((tuple2!64816 0))(
  ( (tuple2!64817 (_1!35711 List!61926) (_2!35711 List!61926)) )
))
(declare-fun lt!2212175 () tuple2!64816)

(declare-fun lt!2212121 () Regex!15209)

(assert (=> bs!1253241 (= (and (= (_1!35711 lt!2212175) s!2326) (= (reg!15538 (regOne!30930 r!7292)) (regOne!30930 r!7292)) (= lt!2212121 (regTwo!30930 r!7292))) (= lambda!284305 lambda!284298))))

(assert (=> bs!1253241 (not (= lambda!284305 lambda!284299))))

(declare-fun bs!1253242 () Bool)

(assert (= bs!1253242 (and b!5424203 b!5424185)))

(assert (=> bs!1253242 (= (and (= (_1!35711 lt!2212175) s!2326) (= (reg!15538 (regOne!30930 r!7292)) lt!2212145) (= lt!2212121 (regTwo!30930 r!7292))) (= lambda!284305 lambda!284303))))

(assert (=> bs!1253242 (not (= lambda!284305 lambda!284304))))

(assert (=> b!5424203 true))

(assert (=> b!5424203 true))

(assert (=> b!5424203 true))

(declare-fun lambda!284306 () Int)

(assert (=> bs!1253241 (= (and (= (_1!35711 lt!2212175) s!2326) (= (reg!15538 (regOne!30930 r!7292)) (regOne!30930 r!7292)) (= lt!2212121 (regTwo!30930 r!7292))) (= lambda!284306 lambda!284299))))

(assert (=> bs!1253242 (= (and (= (_1!35711 lt!2212175) s!2326) (= (reg!15538 (regOne!30930 r!7292)) lt!2212145) (= lt!2212121 (regTwo!30930 r!7292))) (= lambda!284306 lambda!284304))))

(assert (=> bs!1253241 (not (= lambda!284306 lambda!284298))))

(assert (=> b!5424203 (not (= lambda!284306 lambda!284305))))

(assert (=> bs!1253242 (not (= lambda!284306 lambda!284303))))

(assert (=> b!5424203 true))

(assert (=> b!5424203 true))

(assert (=> b!5424203 true))

(declare-fun lambda!284307 () Int)

(assert (=> bs!1253241 (not (= lambda!284307 lambda!284299))))

(assert (=> bs!1253242 (not (= lambda!284307 lambda!284304))))

(assert (=> bs!1253241 (not (= lambda!284307 lambda!284298))))

(assert (=> b!5424203 (not (= lambda!284307 lambda!284305))))

(assert (=> b!5424203 (not (= lambda!284307 lambda!284306))))

(assert (=> bs!1253242 (not (= lambda!284307 lambda!284303))))

(assert (=> b!5424203 true))

(assert (=> b!5424203 true))

(assert (=> b!5424203 true))

(declare-fun b!5424169 () Bool)

(declare-fun e!3361464 () Bool)

(declare-fun tp!1497139 () Bool)

(declare-fun tp!1497134 () Bool)

(assert (=> b!5424169 (= e!3361464 (and tp!1497139 tp!1497134))))

(declare-fun b!5424170 () Bool)

(declare-fun res!2308074 () Bool)

(declare-fun e!3361468 () Bool)

(assert (=> b!5424170 (=> res!2308074 e!3361468)))

(declare-datatypes ((List!61927 0))(
  ( (Nil!61803) (Cons!61803 (h!68251 Regex!15209) (t!375150 List!61927)) )
))
(declare-datatypes ((Context!9186 0))(
  ( (Context!9187 (exprs!5093 List!61927)) )
))
(declare-datatypes ((List!61928 0))(
  ( (Nil!61804) (Cons!61804 (h!68252 Context!9186) (t!375151 List!61928)) )
))
(declare-fun zl!343 () List!61928)

(get-info :version)

(assert (=> b!5424170 (= res!2308074 (not ((_ is Cons!61803) (exprs!5093 (h!68252 zl!343)))))))

(declare-fun tp!1497132 () Bool)

(declare-fun setRes!35351 () Bool)

(declare-fun setNonEmpty!35351 () Bool)

(declare-fun e!3361453 () Bool)

(declare-fun setElem!35351 () Context!9186)

(declare-fun inv!81269 (Context!9186) Bool)

(assert (=> setNonEmpty!35351 (= setRes!35351 (and tp!1497132 (inv!81269 setElem!35351) e!3361453))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9186))

(declare-fun setRest!35351 () (InoxSet Context!9186))

(assert (=> setNonEmpty!35351 (= z!1189 ((_ map or) (store ((as const (Array Context!9186 Bool)) false) setElem!35351 true) setRest!35351))))

(declare-fun b!5424171 () Bool)

(declare-fun e!3361470 () Bool)

(declare-fun lt!2212154 () (InoxSet Context!9186))

(declare-fun matchZipper!1453 ((InoxSet Context!9186) List!61926) Bool)

(assert (=> b!5424171 (= e!3361470 (not (matchZipper!1453 lt!2212154 (t!375149 s!2326))))))

(declare-fun res!2308089 () Bool)

(declare-fun e!3361462 () Bool)

(assert (=> start!569434 (=> (not res!2308089) (not e!3361462))))

(declare-fun validRegex!6945 (Regex!15209) Bool)

(assert (=> start!569434 (= res!2308089 (validRegex!6945 r!7292))))

(assert (=> start!569434 e!3361462))

(assert (=> start!569434 e!3361464))

(declare-fun condSetEmpty!35351 () Bool)

(assert (=> start!569434 (= condSetEmpty!35351 (= z!1189 ((as const (Array Context!9186 Bool)) false)))))

(assert (=> start!569434 setRes!35351))

(declare-fun e!3361461 () Bool)

(assert (=> start!569434 e!3361461))

(declare-fun e!3361479 () Bool)

(assert (=> start!569434 e!3361479))

(declare-fun b!5424172 () Bool)

(declare-fun e!3361460 () Bool)

(declare-fun e!3361452 () Bool)

(assert (=> b!5424172 (= e!3361460 e!3361452)))

(declare-fun res!2308058 () Bool)

(assert (=> b!5424172 (=> res!2308058 e!3361452)))

(declare-fun lt!2212142 () List!61926)

(assert (=> b!5424172 (= res!2308058 (not (= s!2326 lt!2212142)))))

(declare-fun lt!2212178 () tuple2!64816)

(declare-fun ++!13591 (List!61926 List!61926) List!61926)

(assert (=> b!5424172 (= lt!2212142 (++!13591 (_1!35711 lt!2212178) (_2!35711 lt!2212178)))))

(declare-datatypes ((Option!15320 0))(
  ( (None!15319) (Some!15319 (v!51348 tuple2!64816)) )
))
(declare-fun lt!2212153 () Option!15320)

(declare-fun get!21316 (Option!15320) tuple2!64816)

(assert (=> b!5424172 (= lt!2212178 (get!21316 lt!2212153))))

(declare-fun isDefined!12023 (Option!15320) Bool)

(assert (=> b!5424172 (isDefined!12023 lt!2212153)))

(declare-fun lt!2212155 () (InoxSet Context!9186))

(declare-fun lt!2212159 () (InoxSet Context!9186))

(declare-fun findConcatSeparationZippers!66 ((InoxSet Context!9186) (InoxSet Context!9186) List!61926 List!61926 List!61926) Option!15320)

(assert (=> b!5424172 (= lt!2212153 (findConcatSeparationZippers!66 lt!2212159 lt!2212155 Nil!61802 s!2326 s!2326))))

(declare-fun lt!2212125 () Context!9186)

(declare-datatypes ((Unit!154358 0))(
  ( (Unit!154359) )
))
(declare-fun lt!2212152 () Unit!154358)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!66 ((InoxSet Context!9186) Context!9186 List!61926) Unit!154358)

(assert (=> b!5424172 (= lt!2212152 (lemmaConcatZipperMatchesStringThenFindConcatDefined!66 lt!2212159 lt!2212125 s!2326))))

(declare-fun e!3361469 () Bool)

(declare-fun e!3361458 () Bool)

(assert (=> b!5424173 (= e!3361469 e!3361458)))

(declare-fun res!2308078 () Bool)

(assert (=> b!5424173 (=> res!2308078 e!3361458)))

(assert (=> b!5424173 (= res!2308078 (or (and ((_ is ElementMatch!15209) (regOne!30930 r!7292)) (= (c!946089 (regOne!30930 r!7292)) (h!68250 s!2326))) ((_ is Union!15209) (regOne!30930 r!7292))))))

(declare-fun lt!2212184 () Unit!154358)

(declare-fun e!3361467 () Unit!154358)

(assert (=> b!5424173 (= lt!2212184 e!3361467)))

(declare-fun c!946088 () Bool)

(declare-fun lt!2212172 () Bool)

(assert (=> b!5424173 (= c!946088 lt!2212172)))

(declare-fun nullable!5378 (Regex!15209) Bool)

(assert (=> b!5424173 (= lt!2212172 (nullable!5378 (h!68251 (exprs!5093 (h!68252 zl!343)))))))

(declare-fun lambda!284300 () Int)

(declare-fun flatMap!936 ((InoxSet Context!9186) Int) (InoxSet Context!9186))

(declare-fun derivationStepZipperUp!581 (Context!9186 C!30688) (InoxSet Context!9186))

(assert (=> b!5424173 (= (flatMap!936 z!1189 lambda!284300) (derivationStepZipperUp!581 (h!68252 zl!343) (h!68250 s!2326)))))

(declare-fun lt!2212126 () Unit!154358)

(declare-fun lemmaFlatMapOnSingletonSet!468 ((InoxSet Context!9186) Context!9186 Int) Unit!154358)

(assert (=> b!5424173 (= lt!2212126 (lemmaFlatMapOnSingletonSet!468 z!1189 (h!68252 zl!343) lambda!284300))))

(declare-fun lt!2212149 () Context!9186)

(assert (=> b!5424173 (= lt!2212154 (derivationStepZipperUp!581 lt!2212149 (h!68250 s!2326)))))

(declare-fun lt!2212174 () (InoxSet Context!9186))

(declare-fun derivationStepZipperDown!657 (Regex!15209 Context!9186 C!30688) (InoxSet Context!9186))

(assert (=> b!5424173 (= lt!2212174 (derivationStepZipperDown!657 (h!68251 (exprs!5093 (h!68252 zl!343))) lt!2212149 (h!68250 s!2326)))))

(assert (=> b!5424173 (= lt!2212149 (Context!9187 (t!375150 (exprs!5093 (h!68252 zl!343)))))))

(declare-fun lt!2212173 () (InoxSet Context!9186))

(assert (=> b!5424173 (= lt!2212173 (derivationStepZipperUp!581 (Context!9187 (Cons!61803 (h!68251 (exprs!5093 (h!68252 zl!343))) (t!375150 (exprs!5093 (h!68252 zl!343))))) (h!68250 s!2326)))))

(declare-fun b!5424174 () Bool)

(declare-fun res!2308057 () Bool)

(assert (=> b!5424174 (=> res!2308057 e!3361458)))

(assert (=> b!5424174 (= res!2308057 (or ((_ is Concat!24054) (regOne!30930 r!7292)) (not ((_ is Star!15209) (regOne!30930 r!7292)))))))

(declare-fun b!5424175 () Bool)

(declare-fun tp_is_empty!39671 () Bool)

(assert (=> b!5424175 (= e!3361464 tp_is_empty!39671)))

(declare-fun setIsEmpty!35351 () Bool)

(assert (=> setIsEmpty!35351 setRes!35351))

(declare-fun b!5424176 () Bool)

(declare-fun e!3361478 () Bool)

(declare-fun e!3361465 () Bool)

(assert (=> b!5424176 (= e!3361478 e!3361465)))

(declare-fun res!2308061 () Bool)

(assert (=> b!5424176 (=> res!2308061 e!3361465)))

(declare-fun lt!2212133 () List!61928)

(declare-fun lt!2212148 () Regex!15209)

(declare-fun unfocusZipper!951 (List!61928) Regex!15209)

(assert (=> b!5424176 (= res!2308061 (not (= (unfocusZipper!951 lt!2212133) lt!2212148)))))

(assert (=> b!5424176 (= lt!2212133 (Cons!61804 lt!2212125 Nil!61804))))

(declare-fun b!5424177 () Bool)

(declare-fun res!2308065 () Bool)

(declare-fun e!3361456 () Bool)

(assert (=> b!5424177 (=> res!2308065 e!3361456)))

(declare-fun lt!2212167 () Regex!15209)

(assert (=> b!5424177 (= res!2308065 (not (= lt!2212167 r!7292)))))

(declare-fun b!5424178 () Bool)

(declare-fun res!2308086 () Bool)

(assert (=> b!5424178 (=> res!2308086 e!3361469)))

(declare-fun isEmpty!33804 (List!61927) Bool)

(assert (=> b!5424178 (= res!2308086 (isEmpty!33804 (t!375150 (exprs!5093 (h!68252 zl!343)))))))

(declare-fun b!5424179 () Bool)

(declare-fun tp!1497137 () Bool)

(assert (=> b!5424179 (= e!3361479 (and tp_is_empty!39671 tp!1497137))))

(declare-fun b!5424180 () Bool)

(declare-fun tp!1497140 () Bool)

(declare-fun tp!1497135 () Bool)

(assert (=> b!5424180 (= e!3361464 (and tp!1497140 tp!1497135))))

(declare-fun b!5424181 () Bool)

(declare-fun Unit!154360 () Unit!154358)

(assert (=> b!5424181 (= e!3361467 Unit!154360)))

(declare-fun b!5424182 () Bool)

(declare-fun e!3361475 () Bool)

(declare-fun e!3361454 () Bool)

(assert (=> b!5424182 (= e!3361475 e!3361454)))

(declare-fun res!2308081 () Bool)

(assert (=> b!5424182 (=> res!2308081 e!3361454)))

(declare-fun lt!2212168 () (InoxSet Context!9186))

(declare-fun lt!2212177 () (InoxSet Context!9186))

(assert (=> b!5424182 (= res!2308081 (not (= lt!2212168 lt!2212177)))))

(declare-fun lt!2212119 () Context!9186)

(declare-fun lt!2212161 () (InoxSet Context!9186))

(assert (=> b!5424182 (= (flatMap!936 lt!2212161 lambda!284300) (derivationStepZipperUp!581 lt!2212119 (h!68250 s!2326)))))

(declare-fun lt!2212144 () Unit!154358)

(assert (=> b!5424182 (= lt!2212144 (lemmaFlatMapOnSingletonSet!468 lt!2212161 lt!2212119 lambda!284300))))

(declare-fun lt!2212165 () (InoxSet Context!9186))

(assert (=> b!5424182 (= lt!2212165 (derivationStepZipperUp!581 lt!2212119 (h!68250 s!2326)))))

(declare-fun derivationStepZipper!1448 ((InoxSet Context!9186) C!30688) (InoxSet Context!9186))

(assert (=> b!5424182 (= lt!2212168 (derivationStepZipper!1448 lt!2212161 (h!68250 s!2326)))))

(assert (=> b!5424182 (= lt!2212161 (store ((as const (Array Context!9186 Bool)) false) lt!2212119 true))))

(declare-fun lt!2212128 () List!61927)

(assert (=> b!5424182 (= lt!2212119 (Context!9187 (Cons!61803 (reg!15538 (regOne!30930 r!7292)) lt!2212128)))))

(declare-fun b!5424183 () Bool)

(declare-fun res!2308067 () Bool)

(assert (=> b!5424183 (=> (not res!2308067) (not e!3361462))))

(declare-fun toList!8993 ((InoxSet Context!9186)) List!61928)

(assert (=> b!5424183 (= res!2308067 (= (toList!8993 z!1189) zl!343))))

(declare-fun b!5424184 () Bool)

(declare-fun e!3361476 () Bool)

(declare-fun e!3361472 () Bool)

(assert (=> b!5424184 (= e!3361476 e!3361472)))

(declare-fun res!2308090 () Bool)

(assert (=> b!5424184 (=> res!2308090 e!3361472)))

(assert (=> b!5424184 (= res!2308090 e!3361470)))

(declare-fun res!2308059 () Bool)

(assert (=> b!5424184 (=> (not res!2308059) (not e!3361470))))

(declare-fun lt!2212141 () Bool)

(assert (=> b!5424184 (= res!2308059 (not lt!2212141))))

(assert (=> b!5424184 (= lt!2212141 (matchZipper!1453 lt!2212174 (t!375149 s!2326)))))

(declare-fun e!3361473 () Bool)

(assert (=> b!5424185 (= e!3361452 e!3361473)))

(declare-fun res!2308056 () Bool)

(assert (=> b!5424185 (=> res!2308056 e!3361473)))

(declare-fun matchR!7394 (Regex!15209 List!61926) Bool)

(assert (=> b!5424185 (= res!2308056 (not (matchR!7394 lt!2212145 (_1!35711 lt!2212175))))))

(declare-fun lt!2212127 () Option!15320)

(assert (=> b!5424185 (= lt!2212175 (get!21316 lt!2212127))))

(declare-fun Exists!2390 (Int) Bool)

(assert (=> b!5424185 (= (Exists!2390 lambda!284303) (Exists!2390 lambda!284304))))

(declare-fun lt!2212179 () Unit!154358)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1044 (Regex!15209 Regex!15209 List!61926) Unit!154358)

(assert (=> b!5424185 (= lt!2212179 (lemmaExistCutMatchRandMatchRSpecEquivalent!1044 lt!2212145 (regTwo!30930 r!7292) s!2326))))

(assert (=> b!5424185 (= (isDefined!12023 lt!2212127) (Exists!2390 lambda!284303))))

(declare-fun findConcatSeparation!1734 (Regex!15209 Regex!15209 List!61926 List!61926 List!61926) Option!15320)

(assert (=> b!5424185 (= lt!2212127 (findConcatSeparation!1734 lt!2212145 (regTwo!30930 r!7292) Nil!61802 s!2326 s!2326))))

(declare-fun lt!2212151 () Unit!154358)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1498 (Regex!15209 Regex!15209 List!61926) Unit!154358)

(assert (=> b!5424185 (= lt!2212151 (lemmaFindConcatSeparationEquivalentToExists!1498 lt!2212145 (regTwo!30930 r!7292) s!2326))))

(declare-fun lt!2212164 () Regex!15209)

(declare-fun matchRSpec!2312 (Regex!15209 List!61926) Bool)

(assert (=> b!5424185 (matchRSpec!2312 lt!2212164 s!2326)))

(declare-fun lt!2212160 () Unit!154358)

(declare-fun mainMatchTheorem!2312 (Regex!15209 List!61926) Unit!154358)

(assert (=> b!5424185 (= lt!2212160 (mainMatchTheorem!2312 lt!2212164 s!2326))))

(assert (=> b!5424185 (matchR!7394 lt!2212164 s!2326)))

(assert (=> b!5424185 (= lt!2212164 (Concat!24054 lt!2212145 (regTwo!30930 r!7292)))))

(assert (=> b!5424185 (= lt!2212145 (Concat!24054 (reg!15538 (regOne!30930 r!7292)) lt!2212121))))

(declare-fun lt!2212138 () Unit!154358)

(declare-fun lemmaConcatAssociative!62 (Regex!15209 Regex!15209 Regex!15209 List!61926) Unit!154358)

(assert (=> b!5424185 (= lt!2212138 (lemmaConcatAssociative!62 (reg!15538 (regOne!30930 r!7292)) lt!2212121 (regTwo!30930 r!7292) s!2326))))

(declare-fun e!3361455 () Bool)

(assert (=> b!5424185 e!3361455))

(declare-fun res!2308066 () Bool)

(assert (=> b!5424185 (=> (not res!2308066) (not e!3361455))))

(declare-fun lt!2212139 () Regex!15209)

(assert (=> b!5424185 (= res!2308066 (matchR!7394 lt!2212139 lt!2212142))))

(declare-fun lt!2212132 () Unit!154358)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!232 (Regex!15209 Regex!15209 List!61926 List!61926) Unit!154358)

(assert (=> b!5424185 (= lt!2212132 (lemmaTwoRegexMatchThenConcatMatchesConcatString!232 (reg!15538 (regOne!30930 r!7292)) lt!2212148 (_1!35711 lt!2212178) (_2!35711 lt!2212178)))))

(assert (=> b!5424185 (matchR!7394 lt!2212148 (_2!35711 lt!2212178))))

(declare-fun lt!2212166 () Unit!154358)

(declare-fun theoremZipperRegexEquiv!523 ((InoxSet Context!9186) List!61928 Regex!15209 List!61926) Unit!154358)

(assert (=> b!5424185 (= lt!2212166 (theoremZipperRegexEquiv!523 lt!2212155 lt!2212133 lt!2212148 (_2!35711 lt!2212178)))))

(assert (=> b!5424185 (matchR!7394 (reg!15538 (regOne!30930 r!7292)) (_1!35711 lt!2212178))))

(declare-fun lt!2212170 () List!61928)

(declare-fun lt!2212176 () Unit!154358)

(assert (=> b!5424185 (= lt!2212176 (theoremZipperRegexEquiv!523 lt!2212159 lt!2212170 (reg!15538 (regOne!30930 r!7292)) (_1!35711 lt!2212178)))))

(declare-fun lt!2212140 () List!61927)

(declare-fun ++!13592 (List!61927 List!61927) List!61927)

(assert (=> b!5424185 (matchZipper!1453 (store ((as const (Array Context!9186 Bool)) false) (Context!9187 (++!13592 lt!2212140 lt!2212128)) true) lt!2212142)))

(declare-fun lambda!284302 () Int)

(declare-fun lt!2212157 () Unit!154358)

(declare-fun lemmaConcatPreservesForall!234 (List!61927 List!61927 Int) Unit!154358)

(assert (=> b!5424185 (= lt!2212157 (lemmaConcatPreservesForall!234 lt!2212140 lt!2212128 lambda!284302))))

(declare-fun lt!2212162 () Context!9186)

(declare-fun lt!2212158 () Unit!154358)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!82 (Context!9186 Context!9186 List!61926 List!61926) Unit!154358)

(assert (=> b!5424185 (= lt!2212158 (lemmaConcatenateContextMatchesConcatOfStrings!82 lt!2212162 lt!2212125 (_1!35711 lt!2212178) (_2!35711 lt!2212178)))))

(declare-fun b!5424186 () Bool)

(assert (=> b!5424186 (= e!3361458 e!3361475)))

(declare-fun res!2308083 () Bool)

(assert (=> b!5424186 (=> res!2308083 e!3361475)))

(assert (=> b!5424186 (= res!2308083 (not (= lt!2212174 lt!2212177)))))

(assert (=> b!5424186 (= lt!2212177 (derivationStepZipperDown!657 (reg!15538 (regOne!30930 r!7292)) lt!2212125 (h!68250 s!2326)))))

(assert (=> b!5424186 (= lt!2212125 (Context!9187 lt!2212128))))

(assert (=> b!5424186 (= lt!2212128 (Cons!61803 lt!2212121 (t!375150 (exprs!5093 (h!68252 zl!343)))))))

(assert (=> b!5424186 (= lt!2212121 (Star!15209 (reg!15538 (regOne!30930 r!7292))))))

(declare-fun b!5424187 () Bool)

(declare-fun e!3361474 () Bool)

(declare-fun e!3361463 () Bool)

(assert (=> b!5424187 (= e!3361474 e!3361463)))

(declare-fun res!2308053 () Bool)

(assert (=> b!5424187 (=> res!2308053 e!3361463)))

(assert (=> b!5424187 (= res!2308053 (not (matchR!7394 (regTwo!30930 r!7292) (_2!35711 lt!2212175))))))

(declare-fun lt!2212146 () List!61926)

(assert (=> b!5424187 (matchR!7394 lt!2212121 lt!2212146)))

(declare-fun lt!2212171 () Unit!154358)

(declare-fun lt!2212120 () tuple2!64816)

(declare-fun lemmaStarApp!62 (Regex!15209 List!61926 List!61926) Unit!154358)

(assert (=> b!5424187 (= lt!2212171 (lemmaStarApp!62 (reg!15538 (regOne!30930 r!7292)) (_1!35711 lt!2212120) (_2!35711 lt!2212120)))))

(declare-fun b!5424188 () Bool)

(declare-fun e!3361459 () Bool)

(assert (=> b!5424188 (= e!3361459 (matchZipper!1453 lt!2212154 (t!375149 s!2326)))))

(declare-fun b!5424189 () Bool)

(declare-fun e!3361471 () Bool)

(declare-fun e!3361457 () Bool)

(assert (=> b!5424189 (= e!3361471 e!3361457)))

(declare-fun res!2308087 () Bool)

(assert (=> b!5424189 (=> res!2308087 e!3361457)))

(assert (=> b!5424189 (= res!2308087 (not (= (unfocusZipper!951 (Cons!61804 lt!2212119 Nil!61804)) lt!2212139)))))

(assert (=> b!5424189 (= lt!2212139 (Concat!24054 (reg!15538 (regOne!30930 r!7292)) lt!2212148))))

(declare-fun b!5424190 () Bool)

(declare-fun tp!1497138 () Bool)

(assert (=> b!5424190 (= e!3361464 tp!1497138)))

(declare-fun b!5424191 () Bool)

(declare-fun e!3361466 () Bool)

(assert (=> b!5424191 (= e!3361466 (not e!3361468))))

(declare-fun res!2308070 () Bool)

(assert (=> b!5424191 (=> res!2308070 e!3361468)))

(assert (=> b!5424191 (= res!2308070 (not ((_ is Cons!61804) zl!343)))))

(declare-fun lt!2212181 () Bool)

(assert (=> b!5424191 (= lt!2212181 (matchRSpec!2312 r!7292 s!2326))))

(assert (=> b!5424191 (= lt!2212181 (matchR!7394 r!7292 s!2326))))

(declare-fun lt!2212124 () Unit!154358)

(assert (=> b!5424191 (= lt!2212124 (mainMatchTheorem!2312 r!7292 s!2326))))

(declare-fun b!5424192 () Bool)

(declare-fun res!2308063 () Bool)

(assert (=> b!5424192 (=> res!2308063 e!3361472)))

(declare-fun lt!2212129 () Bool)

(assert (=> b!5424192 (= res!2308063 (or (not lt!2212141) (not lt!2212129)))))

(declare-fun b!5424193 () Bool)

(declare-fun e!3361477 () Bool)

(declare-fun tp!1497133 () Bool)

(assert (=> b!5424193 (= e!3361461 (and (inv!81269 (h!68252 zl!343)) e!3361477 tp!1497133))))

(declare-fun b!5424194 () Bool)

(declare-fun res!2308055 () Bool)

(assert (=> b!5424194 (=> res!2308055 e!3361476)))

(assert (=> b!5424194 (= res!2308055 (not (matchZipper!1453 z!1189 s!2326)))))

(declare-fun b!5424195 () Bool)

(declare-fun Unit!154361 () Unit!154358)

(assert (=> b!5424195 (= e!3361467 Unit!154361)))

(declare-fun lt!2212123 () Unit!154358)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!446 ((InoxSet Context!9186) (InoxSet Context!9186) List!61926) Unit!154358)

(assert (=> b!5424195 (= lt!2212123 (lemmaZipperConcatMatchesSameAsBothZippers!446 lt!2212174 lt!2212154 (t!375149 s!2326)))))

(declare-fun res!2308069 () Bool)

(assert (=> b!5424195 (= res!2308069 (matchZipper!1453 lt!2212174 (t!375149 s!2326)))))

(assert (=> b!5424195 (=> res!2308069 e!3361459)))

(assert (=> b!5424195 (= (matchZipper!1453 ((_ map or) lt!2212174 lt!2212154) (t!375149 s!2326)) e!3361459)))

(declare-fun b!5424196 () Bool)

(assert (=> b!5424196 (= e!3361456 e!3361471)))

(declare-fun res!2308091 () Bool)

(assert (=> b!5424196 (=> res!2308091 e!3361471)))

(assert (=> b!5424196 (= res!2308091 (not (= r!7292 lt!2212148)))))

(assert (=> b!5424196 (= lt!2212148 (Concat!24054 lt!2212121 (regTwo!30930 r!7292)))))

(declare-fun b!5424197 () Bool)

(declare-fun res!2308060 () Bool)

(assert (=> b!5424197 (=> res!2308060 e!3361468)))

(declare-fun isEmpty!33805 (List!61928) Bool)

(assert (=> b!5424197 (= res!2308060 (not (isEmpty!33805 (t!375151 zl!343))))))

(declare-fun b!5424198 () Bool)

(declare-fun res!2308079 () Bool)

(assert (=> b!5424198 (=> res!2308079 e!3361476)))

(assert (=> b!5424198 (= res!2308079 (not lt!2212172))))

(declare-fun b!5424199 () Bool)

(declare-fun e!3361480 () Bool)

(assert (=> b!5424199 (= e!3361480 (nullable!5378 (regOne!30930 (regOne!30930 r!7292))))))

(declare-fun b!5424200 () Bool)

(declare-fun tp!1497141 () Bool)

(assert (=> b!5424200 (= e!3361453 tp!1497141)))

(assert (=> b!5424201 (= e!3361472 e!3361460)))

(declare-fun res!2308072 () Bool)

(assert (=> b!5424201 (=> res!2308072 e!3361460)))

(declare-fun appendTo!68 ((InoxSet Context!9186) Context!9186) (InoxSet Context!9186))

(assert (=> b!5424201 (= res!2308072 (not (= (appendTo!68 lt!2212159 lt!2212125) lt!2212161)))))

(declare-fun lambda!284301 () Int)

(declare-fun map!14198 ((InoxSet Context!9186) Int) (InoxSet Context!9186))

(assert (=> b!5424201 (= (map!14198 lt!2212159 lambda!284301) (store ((as const (Array Context!9186 Bool)) false) (Context!9187 (++!13592 lt!2212140 lt!2212128)) true))))

(declare-fun lt!2212147 () Unit!154358)

(assert (=> b!5424201 (= lt!2212147 (lemmaConcatPreservesForall!234 lt!2212140 lt!2212128 lambda!284302))))

(declare-fun lt!2212150 () Unit!154358)

(declare-fun lemmaMapOnSingletonSet!68 ((InoxSet Context!9186) Context!9186 Int) Unit!154358)

(assert (=> b!5424201 (= lt!2212150 (lemmaMapOnSingletonSet!68 lt!2212159 lt!2212162 lambda!284301))))

(declare-fun b!5424202 () Bool)

(assert (=> b!5424202 (= e!3361462 e!3361466)))

(declare-fun res!2308088 () Bool)

(assert (=> b!5424202 (=> (not res!2308088) (not e!3361466))))

(assert (=> b!5424202 (= res!2308088 (= r!7292 lt!2212167))))

(assert (=> b!5424202 (= lt!2212167 (unfocusZipper!951 zl!343))))

(assert (=> b!5424203 (= e!3361473 e!3361474)))

(declare-fun res!2308068 () Bool)

(assert (=> b!5424203 (=> res!2308068 e!3361474)))

(assert (=> b!5424203 (= res!2308068 (not (matchR!7394 (reg!15538 (regOne!30930 r!7292)) (_1!35711 lt!2212120))))))

(assert (=> b!5424203 (= (++!13591 lt!2212146 (_2!35711 lt!2212175)) (++!13591 (_1!35711 lt!2212120) (++!13591 (_2!35711 lt!2212120) (_2!35711 lt!2212175))))))

(assert (=> b!5424203 (= lt!2212146 (++!13591 (_1!35711 lt!2212120) (_2!35711 lt!2212120)))))

(declare-fun lt!2212131 () Unit!154358)

(declare-fun lemmaConcatAssociativity!2844 (List!61926 List!61926 List!61926) Unit!154358)

(assert (=> b!5424203 (= lt!2212131 (lemmaConcatAssociativity!2844 (_1!35711 lt!2212120) (_2!35711 lt!2212120) (_2!35711 lt!2212175)))))

(declare-fun lt!2212137 () Option!15320)

(assert (=> b!5424203 (= lt!2212120 (get!21316 lt!2212137))))

(assert (=> b!5424203 (= (Exists!2390 lambda!284305) (Exists!2390 lambda!284307))))

(declare-fun lt!2212163 () Unit!154358)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!420 (Regex!15209 List!61926) Unit!154358)

(assert (=> b!5424203 (= lt!2212163 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!420 (reg!15538 (regOne!30930 r!7292)) (_1!35711 lt!2212175)))))

(assert (=> b!5424203 (= (Exists!2390 lambda!284305) (Exists!2390 lambda!284306))))

(declare-fun lt!2212130 () Unit!154358)

(assert (=> b!5424203 (= lt!2212130 (lemmaExistCutMatchRandMatchRSpecEquivalent!1044 (reg!15538 (regOne!30930 r!7292)) lt!2212121 (_1!35711 lt!2212175)))))

(assert (=> b!5424203 (= (isDefined!12023 lt!2212137) (Exists!2390 lambda!284305))))

(assert (=> b!5424203 (= lt!2212137 (findConcatSeparation!1734 (reg!15538 (regOne!30930 r!7292)) lt!2212121 Nil!61802 (_1!35711 lt!2212175) (_1!35711 lt!2212175)))))

(declare-fun lt!2212143 () Unit!154358)

(assert (=> b!5424203 (= lt!2212143 (lemmaFindConcatSeparationEquivalentToExists!1498 (reg!15538 (regOne!30930 r!7292)) lt!2212121 (_1!35711 lt!2212175)))))

(assert (=> b!5424203 (matchRSpec!2312 lt!2212145 (_1!35711 lt!2212175))))

(declare-fun lt!2212180 () Unit!154358)

(assert (=> b!5424203 (= lt!2212180 (mainMatchTheorem!2312 lt!2212145 (_1!35711 lt!2212175)))))

(declare-fun b!5424204 () Bool)

(declare-fun res!2308062 () Bool)

(assert (=> b!5424204 (=> res!2308062 e!3361468)))

(declare-fun generalisedUnion!1138 (List!61927) Regex!15209)

(declare-fun unfocusZipperList!651 (List!61928) List!61927)

(assert (=> b!5424204 (= res!2308062 (not (= r!7292 (generalisedUnion!1138 (unfocusZipperList!651 zl!343)))))))

(declare-fun b!5424205 () Bool)

(assert (=> b!5424205 (= e!3361457 e!3361478)))

(declare-fun res!2308076 () Bool)

(assert (=> b!5424205 (=> res!2308076 e!3361478)))

(assert (=> b!5424205 (= res!2308076 (not (= (unfocusZipper!951 lt!2212170) (reg!15538 (regOne!30930 r!7292)))))))

(assert (=> b!5424205 (= lt!2212170 (Cons!61804 lt!2212162 Nil!61804))))

(assert (=> b!5424205 (= (flatMap!936 lt!2212155 lambda!284300) (derivationStepZipperUp!581 lt!2212125 (h!68250 s!2326)))))

(declare-fun lt!2212156 () Unit!154358)

(assert (=> b!5424205 (= lt!2212156 (lemmaFlatMapOnSingletonSet!468 lt!2212155 lt!2212125 lambda!284300))))

(assert (=> b!5424205 (= (flatMap!936 lt!2212159 lambda!284300) (derivationStepZipperUp!581 lt!2212162 (h!68250 s!2326)))))

(declare-fun lt!2212169 () Unit!154358)

(assert (=> b!5424205 (= lt!2212169 (lemmaFlatMapOnSingletonSet!468 lt!2212159 lt!2212162 lambda!284300))))

(declare-fun lt!2212122 () (InoxSet Context!9186))

(assert (=> b!5424205 (= lt!2212122 (derivationStepZipperUp!581 lt!2212125 (h!68250 s!2326)))))

(declare-fun lt!2212118 () (InoxSet Context!9186))

(assert (=> b!5424205 (= lt!2212118 (derivationStepZipperUp!581 lt!2212162 (h!68250 s!2326)))))

(assert (=> b!5424205 (= lt!2212155 (store ((as const (Array Context!9186 Bool)) false) lt!2212125 true))))

(assert (=> b!5424205 (= lt!2212159 (store ((as const (Array Context!9186 Bool)) false) lt!2212162 true))))

(assert (=> b!5424205 (= lt!2212162 (Context!9187 lt!2212140))))

(assert (=> b!5424205 (= lt!2212140 (Cons!61803 (reg!15538 (regOne!30930 r!7292)) Nil!61803))))

(declare-fun b!5424206 () Bool)

(declare-fun res!2308080 () Bool)

(assert (=> b!5424206 (=> res!2308080 e!3361468)))

(declare-fun generalisedConcat!878 (List!61927) Regex!15209)

(assert (=> b!5424206 (= res!2308080 (not (= r!7292 (generalisedConcat!878 (exprs!5093 (h!68252 zl!343))))))))

(declare-fun b!5424207 () Bool)

(declare-fun lt!2212135 () Bool)

(assert (=> b!5424207 (= e!3361455 lt!2212135)))

(declare-fun b!5424208 () Bool)

(declare-fun res!2308082 () Bool)

(assert (=> b!5424208 (=> res!2308082 e!3361452)))

(assert (=> b!5424208 (= res!2308082 (not (matchZipper!1453 lt!2212159 (_1!35711 lt!2212178))))))

(declare-fun b!5424209 () Bool)

(declare-fun res!2308084 () Bool)

(assert (=> b!5424209 (=> res!2308084 e!3361468)))

(assert (=> b!5424209 (= res!2308084 (or ((_ is EmptyExpr!15209) r!7292) ((_ is EmptyLang!15209) r!7292) ((_ is ElementMatch!15209) r!7292) ((_ is Union!15209) r!7292) (not ((_ is Concat!24054) r!7292))))))

(declare-fun b!5424210 () Bool)

(declare-fun res!2308071 () Bool)

(assert (=> b!5424210 (=> res!2308071 e!3361474)))

(assert (=> b!5424210 (= res!2308071 (not (matchR!7394 lt!2212121 (_2!35711 lt!2212120))))))

(assert (=> b!5424211 (= e!3361468 e!3361469)))

(declare-fun res!2308085 () Bool)

(assert (=> b!5424211 (=> res!2308085 e!3361469)))

(declare-fun lt!2212182 () Bool)

(assert (=> b!5424211 (= res!2308085 (or (not (= lt!2212181 lt!2212182)) ((_ is Nil!61802) s!2326)))))

(assert (=> b!5424211 (= (Exists!2390 lambda!284298) (Exists!2390 lambda!284299))))

(declare-fun lt!2212183 () Unit!154358)

(assert (=> b!5424211 (= lt!2212183 (lemmaExistCutMatchRandMatchRSpecEquivalent!1044 (regOne!30930 r!7292) (regTwo!30930 r!7292) s!2326))))

(assert (=> b!5424211 (= lt!2212182 (Exists!2390 lambda!284298))))

(assert (=> b!5424211 (= lt!2212182 (isDefined!12023 (findConcatSeparation!1734 (regOne!30930 r!7292) (regTwo!30930 r!7292) Nil!61802 s!2326 s!2326)))))

(declare-fun lt!2212134 () Unit!154358)

(assert (=> b!5424211 (= lt!2212134 (lemmaFindConcatSeparationEquivalentToExists!1498 (regOne!30930 r!7292) (regTwo!30930 r!7292) s!2326))))

(declare-fun b!5424212 () Bool)

(assert (=> b!5424212 (= e!3361454 e!3361456)))

(declare-fun res!2308054 () Bool)

(assert (=> b!5424212 (=> res!2308054 e!3361456)))

(assert (=> b!5424212 (= res!2308054 (not (= lt!2212129 (matchZipper!1453 lt!2212168 (t!375149 s!2326)))))))

(assert (=> b!5424212 (= lt!2212129 (matchZipper!1453 lt!2212161 s!2326))))

(declare-fun b!5424213 () Bool)

(assert (=> b!5424213 (= e!3361463 true)))

(declare-fun b!5424214 () Bool)

(declare-fun res!2308073 () Bool)

(assert (=> b!5424214 (=> res!2308073 e!3361452)))

(assert (=> b!5424214 (= res!2308073 (not (matchZipper!1453 lt!2212155 (_2!35711 lt!2212178))))))

(declare-fun b!5424215 () Bool)

(declare-fun res!2308075 () Bool)

(assert (=> b!5424215 (=> res!2308075 e!3361458)))

(assert (=> b!5424215 (= res!2308075 e!3361480)))

(declare-fun res!2308077 () Bool)

(assert (=> b!5424215 (=> (not res!2308077) (not e!3361480))))

(assert (=> b!5424215 (= res!2308077 ((_ is Concat!24054) (regOne!30930 r!7292)))))

(declare-fun b!5424216 () Bool)

(declare-fun tp!1497136 () Bool)

(assert (=> b!5424216 (= e!3361477 tp!1497136)))

(declare-fun b!5424217 () Bool)

(assert (=> b!5424217 (= e!3361465 e!3361476)))

(declare-fun res!2308064 () Bool)

(assert (=> b!5424217 (=> res!2308064 e!3361476)))

(assert (=> b!5424217 (= res!2308064 lt!2212181)))

(assert (=> b!5424217 (= lt!2212135 (matchRSpec!2312 lt!2212139 s!2326))))

(assert (=> b!5424217 (= lt!2212135 (matchR!7394 lt!2212139 s!2326))))

(declare-fun lt!2212136 () Unit!154358)

(assert (=> b!5424217 (= lt!2212136 (mainMatchTheorem!2312 lt!2212139 s!2326))))

(assert (= (and start!569434 res!2308089) b!5424183))

(assert (= (and b!5424183 res!2308067) b!5424202))

(assert (= (and b!5424202 res!2308088) b!5424191))

(assert (= (and b!5424191 (not res!2308070)) b!5424197))

(assert (= (and b!5424197 (not res!2308060)) b!5424206))

(assert (= (and b!5424206 (not res!2308080)) b!5424170))

(assert (= (and b!5424170 (not res!2308074)) b!5424204))

(assert (= (and b!5424204 (not res!2308062)) b!5424209))

(assert (= (and b!5424209 (not res!2308084)) b!5424211))

(assert (= (and b!5424211 (not res!2308085)) b!5424178))

(assert (= (and b!5424178 (not res!2308086)) b!5424173))

(assert (= (and b!5424173 c!946088) b!5424195))

(assert (= (and b!5424173 (not c!946088)) b!5424181))

(assert (= (and b!5424195 (not res!2308069)) b!5424188))

(assert (= (and b!5424173 (not res!2308078)) b!5424215))

(assert (= (and b!5424215 res!2308077) b!5424199))

(assert (= (and b!5424215 (not res!2308075)) b!5424174))

(assert (= (and b!5424174 (not res!2308057)) b!5424186))

(assert (= (and b!5424186 (not res!2308083)) b!5424182))

(assert (= (and b!5424182 (not res!2308081)) b!5424212))

(assert (= (and b!5424212 (not res!2308054)) b!5424177))

(assert (= (and b!5424177 (not res!2308065)) b!5424196))

(assert (= (and b!5424196 (not res!2308091)) b!5424189))

(assert (= (and b!5424189 (not res!2308087)) b!5424205))

(assert (= (and b!5424205 (not res!2308076)) b!5424176))

(assert (= (and b!5424176 (not res!2308061)) b!5424217))

(assert (= (and b!5424217 (not res!2308064)) b!5424194))

(assert (= (and b!5424194 (not res!2308055)) b!5424198))

(assert (= (and b!5424198 (not res!2308079)) b!5424184))

(assert (= (and b!5424184 res!2308059) b!5424171))

(assert (= (and b!5424184 (not res!2308090)) b!5424192))

(assert (= (and b!5424192 (not res!2308063)) b!5424201))

(assert (= (and b!5424201 (not res!2308072)) b!5424172))

(assert (= (and b!5424172 (not res!2308058)) b!5424208))

(assert (= (and b!5424208 (not res!2308082)) b!5424214))

(assert (= (and b!5424214 (not res!2308073)) b!5424185))

(assert (= (and b!5424185 res!2308066) b!5424207))

(assert (= (and b!5424185 (not res!2308056)) b!5424203))

(assert (= (and b!5424203 (not res!2308068)) b!5424210))

(assert (= (and b!5424210 (not res!2308071)) b!5424187))

(assert (= (and b!5424187 (not res!2308053)) b!5424213))

(assert (= (and start!569434 ((_ is ElementMatch!15209) r!7292)) b!5424175))

(assert (= (and start!569434 ((_ is Concat!24054) r!7292)) b!5424169))

(assert (= (and start!569434 ((_ is Star!15209) r!7292)) b!5424190))

(assert (= (and start!569434 ((_ is Union!15209) r!7292)) b!5424180))

(assert (= (and start!569434 condSetEmpty!35351) setIsEmpty!35351))

(assert (= (and start!569434 (not condSetEmpty!35351)) setNonEmpty!35351))

(assert (= setNonEmpty!35351 b!5424200))

(assert (= b!5424193 b!5424216))

(assert (= (and start!569434 ((_ is Cons!61804) zl!343)) b!5424193))

(assert (= (and start!569434 ((_ is Cons!61802) s!2326)) b!5424179))

(declare-fun m!6448256 () Bool)

(assert (=> b!5424201 m!6448256))

(declare-fun m!6448258 () Bool)

(assert (=> b!5424201 m!6448258))

(declare-fun m!6448260 () Bool)

(assert (=> b!5424201 m!6448260))

(declare-fun m!6448262 () Bool)

(assert (=> b!5424201 m!6448262))

(declare-fun m!6448264 () Bool)

(assert (=> b!5424201 m!6448264))

(declare-fun m!6448266 () Bool)

(assert (=> b!5424201 m!6448266))

(declare-fun m!6448268 () Bool)

(assert (=> b!5424186 m!6448268))

(declare-fun m!6448270 () Bool)

(assert (=> b!5424187 m!6448270))

(declare-fun m!6448272 () Bool)

(assert (=> b!5424187 m!6448272))

(declare-fun m!6448274 () Bool)

(assert (=> b!5424187 m!6448274))

(declare-fun m!6448276 () Bool)

(assert (=> b!5424211 m!6448276))

(declare-fun m!6448278 () Bool)

(assert (=> b!5424211 m!6448278))

(declare-fun m!6448280 () Bool)

(assert (=> b!5424211 m!6448280))

(declare-fun m!6448282 () Bool)

(assert (=> b!5424211 m!6448282))

(declare-fun m!6448284 () Bool)

(assert (=> b!5424211 m!6448284))

(assert (=> b!5424211 m!6448276))

(declare-fun m!6448286 () Bool)

(assert (=> b!5424211 m!6448286))

(assert (=> b!5424211 m!6448280))

(declare-fun m!6448288 () Bool)

(assert (=> b!5424199 m!6448288))

(declare-fun m!6448290 () Bool)

(assert (=> b!5424208 m!6448290))

(declare-fun m!6448292 () Bool)

(assert (=> b!5424172 m!6448292))

(declare-fun m!6448294 () Bool)

(assert (=> b!5424172 m!6448294))

(declare-fun m!6448296 () Bool)

(assert (=> b!5424172 m!6448296))

(declare-fun m!6448298 () Bool)

(assert (=> b!5424172 m!6448298))

(declare-fun m!6448300 () Bool)

(assert (=> b!5424172 m!6448300))

(declare-fun m!6448302 () Bool)

(assert (=> b!5424214 m!6448302))

(declare-fun m!6448304 () Bool)

(assert (=> b!5424183 m!6448304))

(declare-fun m!6448306 () Bool)

(assert (=> b!5424212 m!6448306))

(declare-fun m!6448308 () Bool)

(assert (=> b!5424212 m!6448308))

(declare-fun m!6448310 () Bool)

(assert (=> b!5424184 m!6448310))

(declare-fun m!6448312 () Bool)

(assert (=> b!5424191 m!6448312))

(declare-fun m!6448314 () Bool)

(assert (=> b!5424191 m!6448314))

(declare-fun m!6448316 () Bool)

(assert (=> b!5424191 m!6448316))

(declare-fun m!6448318 () Bool)

(assert (=> b!5424188 m!6448318))

(declare-fun m!6448320 () Bool)

(assert (=> b!5424217 m!6448320))

(declare-fun m!6448322 () Bool)

(assert (=> b!5424217 m!6448322))

(declare-fun m!6448324 () Bool)

(assert (=> b!5424217 m!6448324))

(declare-fun m!6448326 () Bool)

(assert (=> b!5424195 m!6448326))

(assert (=> b!5424195 m!6448310))

(declare-fun m!6448328 () Bool)

(assert (=> b!5424195 m!6448328))

(declare-fun m!6448330 () Bool)

(assert (=> b!5424210 m!6448330))

(assert (=> b!5424171 m!6448318))

(declare-fun m!6448332 () Bool)

(assert (=> b!5424189 m!6448332))

(declare-fun m!6448334 () Bool)

(assert (=> start!569434 m!6448334))

(declare-fun m!6448336 () Bool)

(assert (=> b!5424173 m!6448336))

(declare-fun m!6448338 () Bool)

(assert (=> b!5424173 m!6448338))

(declare-fun m!6448340 () Bool)

(assert (=> b!5424173 m!6448340))

(declare-fun m!6448342 () Bool)

(assert (=> b!5424173 m!6448342))

(declare-fun m!6448344 () Bool)

(assert (=> b!5424173 m!6448344))

(declare-fun m!6448346 () Bool)

(assert (=> b!5424173 m!6448346))

(declare-fun m!6448348 () Bool)

(assert (=> b!5424173 m!6448348))

(declare-fun m!6448350 () Bool)

(assert (=> b!5424194 m!6448350))

(declare-fun m!6448352 () Bool)

(assert (=> b!5424197 m!6448352))

(declare-fun m!6448354 () Bool)

(assert (=> b!5424206 m!6448354))

(declare-fun m!6448356 () Bool)

(assert (=> b!5424176 m!6448356))

(declare-fun m!6448358 () Bool)

(assert (=> b!5424178 m!6448358))

(declare-fun m!6448360 () Bool)

(assert (=> b!5424182 m!6448360))

(declare-fun m!6448362 () Bool)

(assert (=> b!5424182 m!6448362))

(declare-fun m!6448364 () Bool)

(assert (=> b!5424182 m!6448364))

(declare-fun m!6448366 () Bool)

(assert (=> b!5424182 m!6448366))

(declare-fun m!6448368 () Bool)

(assert (=> b!5424182 m!6448368))

(declare-fun m!6448370 () Bool)

(assert (=> b!5424204 m!6448370))

(assert (=> b!5424204 m!6448370))

(declare-fun m!6448372 () Bool)

(assert (=> b!5424204 m!6448372))

(declare-fun m!6448374 () Bool)

(assert (=> b!5424185 m!6448374))

(declare-fun m!6448376 () Bool)

(assert (=> b!5424185 m!6448376))

(declare-fun m!6448378 () Bool)

(assert (=> b!5424185 m!6448378))

(declare-fun m!6448380 () Bool)

(assert (=> b!5424185 m!6448380))

(declare-fun m!6448382 () Bool)

(assert (=> b!5424185 m!6448382))

(declare-fun m!6448384 () Bool)

(assert (=> b!5424185 m!6448384))

(declare-fun m!6448386 () Bool)

(assert (=> b!5424185 m!6448386))

(declare-fun m!6448388 () Bool)

(assert (=> b!5424185 m!6448388))

(declare-fun m!6448390 () Bool)

(assert (=> b!5424185 m!6448390))

(declare-fun m!6448392 () Bool)

(assert (=> b!5424185 m!6448392))

(declare-fun m!6448394 () Bool)

(assert (=> b!5424185 m!6448394))

(declare-fun m!6448396 () Bool)

(assert (=> b!5424185 m!6448396))

(declare-fun m!6448398 () Bool)

(assert (=> b!5424185 m!6448398))

(declare-fun m!6448400 () Bool)

(assert (=> b!5424185 m!6448400))

(declare-fun m!6448402 () Bool)

(assert (=> b!5424185 m!6448402))

(assert (=> b!5424185 m!6448262))

(declare-fun m!6448404 () Bool)

(assert (=> b!5424185 m!6448404))

(assert (=> b!5424185 m!6448264))

(declare-fun m!6448406 () Bool)

(assert (=> b!5424185 m!6448406))

(assert (=> b!5424185 m!6448264))

(declare-fun m!6448408 () Bool)

(assert (=> b!5424185 m!6448408))

(assert (=> b!5424185 m!6448266))

(declare-fun m!6448410 () Bool)

(assert (=> b!5424185 m!6448410))

(assert (=> b!5424185 m!6448398))

(declare-fun m!6448412 () Bool)

(assert (=> b!5424185 m!6448412))

(declare-fun m!6448414 () Bool)

(assert (=> b!5424193 m!6448414))

(declare-fun m!6448416 () Bool)

(assert (=> b!5424205 m!6448416))

(declare-fun m!6448418 () Bool)

(assert (=> b!5424205 m!6448418))

(declare-fun m!6448420 () Bool)

(assert (=> b!5424205 m!6448420))

(declare-fun m!6448422 () Bool)

(assert (=> b!5424205 m!6448422))

(declare-fun m!6448424 () Bool)

(assert (=> b!5424205 m!6448424))

(declare-fun m!6448426 () Bool)

(assert (=> b!5424205 m!6448426))

(declare-fun m!6448428 () Bool)

(assert (=> b!5424205 m!6448428))

(declare-fun m!6448430 () Bool)

(assert (=> b!5424205 m!6448430))

(declare-fun m!6448432 () Bool)

(assert (=> b!5424205 m!6448432))

(declare-fun m!6448434 () Bool)

(assert (=> b!5424203 m!6448434))

(declare-fun m!6448436 () Bool)

(assert (=> b!5424203 m!6448436))

(declare-fun m!6448438 () Bool)

(assert (=> b!5424203 m!6448438))

(declare-fun m!6448440 () Bool)

(assert (=> b!5424203 m!6448440))

(declare-fun m!6448442 () Bool)

(assert (=> b!5424203 m!6448442))

(declare-fun m!6448444 () Bool)

(assert (=> b!5424203 m!6448444))

(assert (=> b!5424203 m!6448442))

(assert (=> b!5424203 m!6448442))

(declare-fun m!6448446 () Bool)

(assert (=> b!5424203 m!6448446))

(declare-fun m!6448448 () Bool)

(assert (=> b!5424203 m!6448448))

(declare-fun m!6448450 () Bool)

(assert (=> b!5424203 m!6448450))

(declare-fun m!6448452 () Bool)

(assert (=> b!5424203 m!6448452))

(declare-fun m!6448454 () Bool)

(assert (=> b!5424203 m!6448454))

(declare-fun m!6448456 () Bool)

(assert (=> b!5424203 m!6448456))

(assert (=> b!5424203 m!6448434))

(declare-fun m!6448458 () Bool)

(assert (=> b!5424203 m!6448458))

(declare-fun m!6448460 () Bool)

(assert (=> b!5424203 m!6448460))

(declare-fun m!6448462 () Bool)

(assert (=> b!5424203 m!6448462))

(declare-fun m!6448464 () Bool)

(assert (=> b!5424203 m!6448464))

(declare-fun m!6448466 () Bool)

(assert (=> b!5424203 m!6448466))

(declare-fun m!6448468 () Bool)

(assert (=> b!5424202 m!6448468))

(declare-fun m!6448470 () Bool)

(assert (=> setNonEmpty!35351 m!6448470))

(check-sat (not b!5424176) (not b!5424193) (not b!5424178) (not b!5424189) (not b!5424187) (not b!5424217) (not b!5424201) (not b!5424202) (not b!5424191) (not b!5424186) (not b!5424194) (not b!5424210) (not b!5424197) (not b!5424182) tp_is_empty!39671 (not b!5424200) (not b!5424188) (not b!5424184) (not b!5424172) (not b!5424199) (not b!5424171) (not start!569434) (not b!5424203) (not b!5424206) (not b!5424211) (not b!5424214) (not b!5424190) (not b!5424216) (not b!5424179) (not b!5424212) (not b!5424169) (not b!5424173) (not b!5424195) (not b!5424208) (not b!5424205) (not setNonEmpty!35351) (not b!5424180) (not b!5424204) (not b!5424185) (not b!5424183))
(check-sat)
