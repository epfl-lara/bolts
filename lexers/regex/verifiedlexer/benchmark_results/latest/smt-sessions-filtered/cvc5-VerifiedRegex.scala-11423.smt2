; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!614256 () Bool)

(assert start!614256)

(declare-fun b!6149232 () Bool)

(assert (=> b!6149232 true))

(assert (=> b!6149232 true))

(declare-fun lambda!335321 () Int)

(declare-fun lambda!335320 () Int)

(assert (=> b!6149232 (not (= lambda!335321 lambda!335320))))

(assert (=> b!6149232 true))

(assert (=> b!6149232 true))

(declare-fun b!6149238 () Bool)

(assert (=> b!6149238 true))

(declare-fun b!6149216 () Bool)

(declare-fun e!3747060 () Bool)

(declare-fun e!3747076 () Bool)

(assert (=> b!6149216 (= e!3747060 e!3747076)))

(declare-fun res!2547260 () Bool)

(assert (=> b!6149216 (=> res!2547260 e!3747076)))

(declare-datatypes ((C!32454 0))(
  ( (C!32455 (val!25929 Int)) )
))
(declare-datatypes ((Regex!16092 0))(
  ( (ElementMatch!16092 (c!1106631 C!32454)) (Concat!24937 (regOne!32696 Regex!16092) (regTwo!32696 Regex!16092)) (EmptyExpr!16092) (Star!16092 (reg!16421 Regex!16092)) (EmptyLang!16092) (Union!16092 (regOne!32697 Regex!16092) (regTwo!32697 Regex!16092)) )
))
(declare-datatypes ((List!64575 0))(
  ( (Nil!64451) (Cons!64451 (h!70899 Regex!16092) (t!378062 List!64575)) )
))
(declare-datatypes ((Context!10952 0))(
  ( (Context!10953 (exprs!5976 List!64575)) )
))
(declare-fun lt!2334151 () (Set Context!10952))

(declare-fun lt!2334167 () (Set Context!10952))

(assert (=> b!6149216 (= res!2547260 (not (= lt!2334151 lt!2334167)))))

(declare-fun lt!2334160 () (Set Context!10952))

(declare-fun lt!2334169 () (Set Context!10952))

(assert (=> b!6149216 (= lt!2334167 (set.union lt!2334160 lt!2334169))))

(declare-fun r!7292 () Regex!16092)

(declare-datatypes ((List!64576 0))(
  ( (Nil!64452) (Cons!64452 (h!70900 C!32454) (t!378063 List!64576)) )
))
(declare-fun s!2326 () List!64576)

(declare-fun lt!2334170 () Context!10952)

(declare-fun derivationStepZipperDown!1340 (Regex!16092 Context!10952 C!32454) (Set Context!10952))

(assert (=> b!6149216 (= lt!2334169 (derivationStepZipperDown!1340 (regTwo!32697 (regOne!32696 r!7292)) lt!2334170 (h!70900 s!2326)))))

(assert (=> b!6149216 (= lt!2334160 (derivationStepZipperDown!1340 (regOne!32697 (regOne!32696 r!7292)) lt!2334170 (h!70900 s!2326)))))

(declare-fun b!6149217 () Bool)

(declare-fun e!3747069 () Bool)

(declare-fun tp!1717708 () Bool)

(declare-fun tp!1717702 () Bool)

(assert (=> b!6149217 (= e!3747069 (and tp!1717708 tp!1717702))))

(declare-fun b!6149218 () Bool)

(declare-fun e!3747074 () Bool)

(assert (=> b!6149218 (= e!3747076 e!3747074)))

(declare-fun res!2547242 () Bool)

(assert (=> b!6149218 (=> res!2547242 e!3747074)))

(declare-fun e!3747075 () Bool)

(assert (=> b!6149218 (= res!2547242 e!3747075)))

(declare-fun res!2547253 () Bool)

(assert (=> b!6149218 (=> (not res!2547253) (not e!3747075))))

(declare-fun lt!2334156 () Bool)

(declare-fun matchZipper!2104 ((Set Context!10952) List!64576) Bool)

(assert (=> b!6149218 (= res!2547253 (not (= (matchZipper!2104 lt!2334151 (t!378063 s!2326)) lt!2334156)))))

(declare-fun e!3747070 () Bool)

(assert (=> b!6149218 (= (matchZipper!2104 lt!2334167 (t!378063 s!2326)) e!3747070)))

(declare-fun res!2547249 () Bool)

(assert (=> b!6149218 (=> res!2547249 e!3747070)))

(assert (=> b!6149218 (= res!2547249 lt!2334156)))

(assert (=> b!6149218 (= lt!2334156 (matchZipper!2104 lt!2334160 (t!378063 s!2326)))))

(declare-datatypes ((Unit!157531 0))(
  ( (Unit!157532) )
))
(declare-fun lt!2334161 () Unit!157531)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!923 ((Set Context!10952) (Set Context!10952) List!64576) Unit!157531)

(assert (=> b!6149218 (= lt!2334161 (lemmaZipperConcatMatchesSameAsBothZippers!923 lt!2334160 lt!2334169 (t!378063 s!2326)))))

(declare-fun b!6149219 () Bool)

(declare-fun tp!1717706 () Bool)

(declare-fun tp!1717703 () Bool)

(assert (=> b!6149219 (= e!3747069 (and tp!1717706 tp!1717703))))

(declare-fun b!6149220 () Bool)

(declare-fun e!3747065 () Unit!157531)

(declare-fun Unit!157533 () Unit!157531)

(assert (=> b!6149220 (= e!3747065 Unit!157533)))

(declare-fun b!6149221 () Bool)

(declare-fun e!3747062 () Bool)

(declare-fun tp_is_empty!41437 () Bool)

(declare-fun tp!1717700 () Bool)

(assert (=> b!6149221 (= e!3747062 (and tp_is_empty!41437 tp!1717700))))

(declare-fun tp!1717707 () Bool)

(declare-fun e!3747066 () Bool)

(declare-fun b!6149222 () Bool)

(declare-datatypes ((List!64577 0))(
  ( (Nil!64453) (Cons!64453 (h!70901 Context!10952) (t!378064 List!64577)) )
))
(declare-fun zl!343 () List!64577)

(declare-fun e!3747077 () Bool)

(declare-fun inv!83478 (Context!10952) Bool)

(assert (=> b!6149222 (= e!3747066 (and (inv!83478 (h!70901 zl!343)) e!3747077 tp!1717707))))

(declare-fun b!6149223 () Bool)

(declare-fun res!2547244 () Bool)

(declare-fun e!3747068 () Bool)

(assert (=> b!6149223 (=> (not res!2547244) (not e!3747068))))

(declare-fun z!1189 () (Set Context!10952))

(declare-fun toList!9876 ((Set Context!10952)) List!64577)

(assert (=> b!6149223 (= res!2547244 (= (toList!9876 z!1189) zl!343))))

(declare-fun b!6149224 () Bool)

(declare-fun e!3747061 () Bool)

(declare-fun tp!1717701 () Bool)

(assert (=> b!6149224 (= e!3747061 tp!1717701)))

(declare-fun b!6149225 () Bool)

(declare-fun e!3747063 () Bool)

(declare-fun lt!2334149 () (Set Context!10952))

(assert (=> b!6149225 (= e!3747063 (matchZipper!2104 lt!2334149 (t!378063 s!2326)))))

(declare-fun b!6149226 () Bool)

(assert (=> b!6149226 (= e!3747075 (not (matchZipper!2104 lt!2334169 (t!378063 s!2326))))))

(declare-fun b!6149227 () Bool)

(declare-fun res!2547259 () Bool)

(declare-fun e!3747064 () Bool)

(assert (=> b!6149227 (=> res!2547259 e!3747064)))

(assert (=> b!6149227 (= res!2547259 (not (is-Cons!64451 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun tp!1717704 () Bool)

(declare-fun setRes!41625 () Bool)

(declare-fun setElem!41625 () Context!10952)

(declare-fun setNonEmpty!41625 () Bool)

(assert (=> setNonEmpty!41625 (= setRes!41625 (and tp!1717704 (inv!83478 setElem!41625) e!3747061))))

(declare-fun setRest!41625 () (Set Context!10952))

(assert (=> setNonEmpty!41625 (= z!1189 (set.union (set.insert setElem!41625 (as set.empty (Set Context!10952))) setRest!41625))))

(declare-fun b!6149228 () Bool)

(declare-fun res!2547255 () Bool)

(assert (=> b!6149228 (=> res!2547255 e!3747064)))

(declare-fun isEmpty!36410 (List!64577) Bool)

(assert (=> b!6149228 (= res!2547255 (not (isEmpty!36410 (t!378064 zl!343))))))

(declare-fun b!6149229 () Bool)

(declare-fun e!3747067 () Unit!157531)

(declare-fun Unit!157534 () Unit!157531)

(assert (=> b!6149229 (= e!3747067 Unit!157534)))

(declare-fun lt!2334145 () Unit!157531)

(assert (=> b!6149229 (= lt!2334145 (lemmaZipperConcatMatchesSameAsBothZippers!923 lt!2334160 lt!2334149 (t!378063 s!2326)))))

(declare-fun res!2547256 () Bool)

(assert (=> b!6149229 (= res!2547256 lt!2334156)))

(declare-fun e!3747073 () Bool)

(assert (=> b!6149229 (=> res!2547256 e!3747073)))

(assert (=> b!6149229 (= (matchZipper!2104 (set.union lt!2334160 lt!2334149) (t!378063 s!2326)) e!3747073)))

(declare-fun b!6149230 () Bool)

(assert (=> b!6149230 (= e!3747069 tp_is_empty!41437)))

(declare-fun res!2547250 () Bool)

(assert (=> start!614256 (=> (not res!2547250) (not e!3747068))))

(declare-fun validRegex!7828 (Regex!16092) Bool)

(assert (=> start!614256 (= res!2547250 (validRegex!7828 r!7292))))

(assert (=> start!614256 e!3747068))

(assert (=> start!614256 e!3747069))

(declare-fun condSetEmpty!41625 () Bool)

(assert (=> start!614256 (= condSetEmpty!41625 (= z!1189 (as set.empty (Set Context!10952))))))

(assert (=> start!614256 setRes!41625))

(assert (=> start!614256 e!3747066))

(assert (=> start!614256 e!3747062))

(declare-fun b!6149231 () Bool)

(declare-fun res!2547257 () Bool)

(assert (=> b!6149231 (=> res!2547257 e!3747064)))

(assert (=> b!6149231 (= res!2547257 (or (is-EmptyExpr!16092 r!7292) (is-EmptyLang!16092 r!7292) (is-ElementMatch!16092 r!7292) (is-Union!16092 r!7292) (not (is-Concat!24937 r!7292))))))

(declare-fun e!3747072 () Bool)

(assert (=> b!6149232 (= e!3747064 e!3747072)))

(declare-fun res!2547258 () Bool)

(assert (=> b!6149232 (=> res!2547258 e!3747072)))

(declare-fun lt!2334152 () Bool)

(declare-fun lt!2334164 () Bool)

(assert (=> b!6149232 (= res!2547258 (or (not (= lt!2334152 lt!2334164)) (is-Nil!64452 s!2326)))))

(declare-fun Exists!3162 (Int) Bool)

(assert (=> b!6149232 (= (Exists!3162 lambda!335320) (Exists!3162 lambda!335321))))

(declare-fun lt!2334165 () Unit!157531)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1699 (Regex!16092 Regex!16092 List!64576) Unit!157531)

(assert (=> b!6149232 (= lt!2334165 (lemmaExistCutMatchRandMatchRSpecEquivalent!1699 (regOne!32696 r!7292) (regTwo!32696 r!7292) s!2326))))

(assert (=> b!6149232 (= lt!2334164 (Exists!3162 lambda!335320))))

(declare-datatypes ((tuple2!66142 0))(
  ( (tuple2!66143 (_1!36374 List!64576) (_2!36374 List!64576)) )
))
(declare-datatypes ((Option!15983 0))(
  ( (None!15982) (Some!15982 (v!52121 tuple2!66142)) )
))
(declare-fun isDefined!12686 (Option!15983) Bool)

(declare-fun findConcatSeparation!2397 (Regex!16092 Regex!16092 List!64576 List!64576 List!64576) Option!15983)

(assert (=> b!6149232 (= lt!2334164 (isDefined!12686 (findConcatSeparation!2397 (regOne!32696 r!7292) (regTwo!32696 r!7292) Nil!64452 s!2326 s!2326)))))

(declare-fun lt!2334155 () Unit!157531)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2161 (Regex!16092 Regex!16092 List!64576) Unit!157531)

(assert (=> b!6149232 (= lt!2334155 (lemmaFindConcatSeparationEquivalentToExists!2161 (regOne!32696 r!7292) (regTwo!32696 r!7292) s!2326))))

(declare-fun b!6149233 () Bool)

(declare-fun tp!1717705 () Bool)

(assert (=> b!6149233 (= e!3747077 tp!1717705)))

(declare-fun b!6149234 () Bool)

(declare-fun e!3747071 () Bool)

(assert (=> b!6149234 (= e!3747071 (inv!83478 lt!2334170))))

(declare-fun b!6149235 () Bool)

(declare-fun res!2547243 () Bool)

(assert (=> b!6149235 (=> (not res!2547243) (not e!3747068))))

(declare-fun unfocusZipper!1834 (List!64577) Regex!16092)

(assert (=> b!6149235 (= res!2547243 (= r!7292 (unfocusZipper!1834 zl!343)))))

(declare-fun b!6149236 () Bool)

(assert (=> b!6149236 (= e!3747070 (matchZipper!2104 lt!2334169 (t!378063 s!2326)))))

(declare-fun b!6149237 () Bool)

(declare-fun res!2547245 () Bool)

(assert (=> b!6149237 (=> res!2547245 e!3747064)))

(declare-fun generalisedConcat!1689 (List!64575) Regex!16092)

(assert (=> b!6149237 (= res!2547245 (not (= r!7292 (generalisedConcat!1689 (exprs!5976 (h!70901 zl!343))))))))

(assert (=> b!6149238 (= e!3747072 e!3747060)))

(declare-fun res!2547251 () Bool)

(assert (=> b!6149238 (=> res!2547251 e!3747060)))

(assert (=> b!6149238 (= res!2547251 (or (and (is-ElementMatch!16092 (regOne!32696 r!7292)) (= (c!1106631 (regOne!32696 r!7292)) (h!70900 s!2326))) (not (is-Union!16092 (regOne!32696 r!7292)))))))

(declare-fun lt!2334150 () Unit!157531)

(assert (=> b!6149238 (= lt!2334150 e!3747065)))

(declare-fun c!1106629 () Bool)

(declare-fun nullable!6085 (Regex!16092) Bool)

(assert (=> b!6149238 (= c!1106629 (nullable!6085 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun lambda!335322 () Int)

(declare-fun flatMap!1597 ((Set Context!10952) Int) (Set Context!10952))

(declare-fun derivationStepZipperUp!1266 (Context!10952 C!32454) (Set Context!10952))

(assert (=> b!6149238 (= (flatMap!1597 z!1189 lambda!335322) (derivationStepZipperUp!1266 (h!70901 zl!343) (h!70900 s!2326)))))

(declare-fun lt!2334166 () Unit!157531)

(declare-fun lemmaFlatMapOnSingletonSet!1123 ((Set Context!10952) Context!10952 Int) Unit!157531)

(assert (=> b!6149238 (= lt!2334166 (lemmaFlatMapOnSingletonSet!1123 z!1189 (h!70901 zl!343) lambda!335322))))

(assert (=> b!6149238 (= lt!2334149 (derivationStepZipperUp!1266 lt!2334170 (h!70900 s!2326)))))

(assert (=> b!6149238 (= lt!2334151 (derivationStepZipperDown!1340 (h!70899 (exprs!5976 (h!70901 zl!343))) lt!2334170 (h!70900 s!2326)))))

(assert (=> b!6149238 (= lt!2334170 (Context!10953 (t!378062 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun lt!2334162 () (Set Context!10952))

(assert (=> b!6149238 (= lt!2334162 (derivationStepZipperUp!1266 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343))))) (h!70900 s!2326)))))

(declare-fun b!6149239 () Bool)

(assert (=> b!6149239 (= e!3747068 (not e!3747064))))

(declare-fun res!2547252 () Bool)

(assert (=> b!6149239 (=> res!2547252 e!3747064)))

(assert (=> b!6149239 (= res!2547252 (not (is-Cons!64453 zl!343)))))

(declare-fun matchRSpec!3193 (Regex!16092 List!64576) Bool)

(assert (=> b!6149239 (= lt!2334152 (matchRSpec!3193 r!7292 s!2326))))

(declare-fun matchR!8275 (Regex!16092 List!64576) Bool)

(assert (=> b!6149239 (= lt!2334152 (matchR!8275 r!7292 s!2326))))

(declare-fun lt!2334171 () Unit!157531)

(declare-fun mainMatchTheorem!3193 (Regex!16092 List!64576) Unit!157531)

(assert (=> b!6149239 (= lt!2334171 (mainMatchTheorem!3193 r!7292 s!2326))))

(declare-fun b!6149240 () Bool)

(declare-fun res!2547254 () Bool)

(assert (=> b!6149240 (=> res!2547254 e!3747064)))

(declare-fun generalisedUnion!1936 (List!64575) Regex!16092)

(declare-fun unfocusZipperList!1513 (List!64577) List!64575)

(assert (=> b!6149240 (= res!2547254 (not (= r!7292 (generalisedUnion!1936 (unfocusZipperList!1513 zl!343)))))))

(declare-fun b!6149241 () Bool)

(declare-fun Unit!157535 () Unit!157531)

(assert (=> b!6149241 (= e!3747065 Unit!157535)))

(declare-fun lt!2334157 () Unit!157531)

(assert (=> b!6149241 (= lt!2334157 (lemmaZipperConcatMatchesSameAsBothZippers!923 lt!2334151 lt!2334149 (t!378063 s!2326)))))

(declare-fun res!2547246 () Bool)

(assert (=> b!6149241 (= res!2547246 (matchZipper!2104 lt!2334151 (t!378063 s!2326)))))

(assert (=> b!6149241 (=> res!2547246 e!3747063)))

(assert (=> b!6149241 (= (matchZipper!2104 (set.union lt!2334151 lt!2334149) (t!378063 s!2326)) e!3747063)))

(declare-fun setIsEmpty!41625 () Bool)

(assert (=> setIsEmpty!41625 setRes!41625))

(declare-fun b!6149242 () Bool)

(declare-fun tp!1717699 () Bool)

(assert (=> b!6149242 (= e!3747069 tp!1717699)))

(declare-fun b!6149243 () Bool)

(assert (=> b!6149243 (= e!3747074 e!3747071)))

(declare-fun res!2547247 () Bool)

(assert (=> b!6149243 (=> res!2547247 e!3747071)))

(assert (=> b!6149243 (= res!2547247 (not (nullable!6085 (regTwo!32697 (regOne!32696 r!7292)))))))

(declare-fun lt!2334153 () Context!10952)

(declare-fun lt!2334146 () (Set Context!10952))

(assert (=> b!6149243 (= (flatMap!1597 lt!2334146 lambda!335322) (derivationStepZipperUp!1266 lt!2334153 (h!70900 s!2326)))))

(declare-fun lt!2334158 () Unit!157531)

(assert (=> b!6149243 (= lt!2334158 (lemmaFlatMapOnSingletonSet!1123 lt!2334146 lt!2334153 lambda!335322))))

(declare-fun lt!2334163 () (Set Context!10952))

(assert (=> b!6149243 (= lt!2334163 (derivationStepZipperUp!1266 lt!2334153 (h!70900 s!2326)))))

(declare-fun lt!2334154 () Unit!157531)

(assert (=> b!6149243 (= lt!2334154 e!3747067)))

(declare-fun c!1106630 () Bool)

(assert (=> b!6149243 (= c!1106630 (nullable!6085 (regOne!32697 (regOne!32696 r!7292))))))

(declare-fun lt!2334159 () Context!10952)

(declare-fun lt!2334147 () (Set Context!10952))

(assert (=> b!6149243 (= (flatMap!1597 lt!2334147 lambda!335322) (derivationStepZipperUp!1266 lt!2334159 (h!70900 s!2326)))))

(declare-fun lt!2334148 () Unit!157531)

(assert (=> b!6149243 (= lt!2334148 (lemmaFlatMapOnSingletonSet!1123 lt!2334147 lt!2334159 lambda!335322))))

(declare-fun lt!2334168 () (Set Context!10952))

(assert (=> b!6149243 (= lt!2334168 (derivationStepZipperUp!1266 lt!2334159 (h!70900 s!2326)))))

(assert (=> b!6149243 (= lt!2334146 (set.insert lt!2334153 (as set.empty (Set Context!10952))))))

(assert (=> b!6149243 (= lt!2334153 (Context!10953 (Cons!64451 (regTwo!32697 (regOne!32696 r!7292)) (t!378062 (exprs!5976 (h!70901 zl!343))))))))

(assert (=> b!6149243 (= lt!2334147 (set.insert lt!2334159 (as set.empty (Set Context!10952))))))

(assert (=> b!6149243 (= lt!2334159 (Context!10953 (Cons!64451 (regOne!32697 (regOne!32696 r!7292)) (t!378062 (exprs!5976 (h!70901 zl!343))))))))

(declare-fun b!6149244 () Bool)

(declare-fun Unit!157536 () Unit!157531)

(assert (=> b!6149244 (= e!3747067 Unit!157536)))

(declare-fun b!6149245 () Bool)

(declare-fun res!2547248 () Bool)

(assert (=> b!6149245 (=> res!2547248 e!3747072)))

(declare-fun isEmpty!36411 (List!64575) Bool)

(assert (=> b!6149245 (= res!2547248 (isEmpty!36411 (t!378062 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun b!6149246 () Bool)

(assert (=> b!6149246 (= e!3747073 (matchZipper!2104 lt!2334149 (t!378063 s!2326)))))

(assert (= (and start!614256 res!2547250) b!6149223))

(assert (= (and b!6149223 res!2547244) b!6149235))

(assert (= (and b!6149235 res!2547243) b!6149239))

(assert (= (and b!6149239 (not res!2547252)) b!6149228))

(assert (= (and b!6149228 (not res!2547255)) b!6149237))

(assert (= (and b!6149237 (not res!2547245)) b!6149227))

(assert (= (and b!6149227 (not res!2547259)) b!6149240))

(assert (= (and b!6149240 (not res!2547254)) b!6149231))

(assert (= (and b!6149231 (not res!2547257)) b!6149232))

(assert (= (and b!6149232 (not res!2547258)) b!6149245))

(assert (= (and b!6149245 (not res!2547248)) b!6149238))

(assert (= (and b!6149238 c!1106629) b!6149241))

(assert (= (and b!6149238 (not c!1106629)) b!6149220))

(assert (= (and b!6149241 (not res!2547246)) b!6149225))

(assert (= (and b!6149238 (not res!2547251)) b!6149216))

(assert (= (and b!6149216 (not res!2547260)) b!6149218))

(assert (= (and b!6149218 (not res!2547249)) b!6149236))

(assert (= (and b!6149218 res!2547253) b!6149226))

(assert (= (and b!6149218 (not res!2547242)) b!6149243))

(assert (= (and b!6149243 c!1106630) b!6149229))

(assert (= (and b!6149243 (not c!1106630)) b!6149244))

(assert (= (and b!6149229 (not res!2547256)) b!6149246))

(assert (= (and b!6149243 (not res!2547247)) b!6149234))

(assert (= (and start!614256 (is-ElementMatch!16092 r!7292)) b!6149230))

(assert (= (and start!614256 (is-Concat!24937 r!7292)) b!6149219))

(assert (= (and start!614256 (is-Star!16092 r!7292)) b!6149242))

(assert (= (and start!614256 (is-Union!16092 r!7292)) b!6149217))

(assert (= (and start!614256 condSetEmpty!41625) setIsEmpty!41625))

(assert (= (and start!614256 (not condSetEmpty!41625)) setNonEmpty!41625))

(assert (= setNonEmpty!41625 b!6149224))

(assert (= b!6149222 b!6149233))

(assert (= (and start!614256 (is-Cons!64453 zl!343)) b!6149222))

(assert (= (and start!614256 (is-Cons!64452 s!2326)) b!6149221))

(declare-fun m!6989088 () Bool)

(assert (=> b!6149238 m!6989088))

(declare-fun m!6989090 () Bool)

(assert (=> b!6149238 m!6989090))

(declare-fun m!6989092 () Bool)

(assert (=> b!6149238 m!6989092))

(declare-fun m!6989094 () Bool)

(assert (=> b!6149238 m!6989094))

(declare-fun m!6989096 () Bool)

(assert (=> b!6149238 m!6989096))

(declare-fun m!6989098 () Bool)

(assert (=> b!6149238 m!6989098))

(declare-fun m!6989100 () Bool)

(assert (=> b!6149238 m!6989100))

(declare-fun m!6989102 () Bool)

(assert (=> b!6149225 m!6989102))

(declare-fun m!6989104 () Bool)

(assert (=> b!6149222 m!6989104))

(declare-fun m!6989106 () Bool)

(assert (=> b!6149235 m!6989106))

(declare-fun m!6989108 () Bool)

(assert (=> b!6149223 m!6989108))

(declare-fun m!6989110 () Bool)

(assert (=> b!6149241 m!6989110))

(declare-fun m!6989112 () Bool)

(assert (=> b!6149241 m!6989112))

(declare-fun m!6989114 () Bool)

(assert (=> b!6149241 m!6989114))

(declare-fun m!6989116 () Bool)

(assert (=> start!614256 m!6989116))

(declare-fun m!6989118 () Bool)

(assert (=> b!6149240 m!6989118))

(assert (=> b!6149240 m!6989118))

(declare-fun m!6989120 () Bool)

(assert (=> b!6149240 m!6989120))

(declare-fun m!6989122 () Bool)

(assert (=> b!6149226 m!6989122))

(assert (=> b!6149246 m!6989102))

(declare-fun m!6989124 () Bool)

(assert (=> b!6149232 m!6989124))

(declare-fun m!6989126 () Bool)

(assert (=> b!6149232 m!6989126))

(declare-fun m!6989128 () Bool)

(assert (=> b!6149232 m!6989128))

(declare-fun m!6989130 () Bool)

(assert (=> b!6149232 m!6989130))

(assert (=> b!6149232 m!6989124))

(declare-fun m!6989132 () Bool)

(assert (=> b!6149232 m!6989132))

(assert (=> b!6149232 m!6989128))

(declare-fun m!6989134 () Bool)

(assert (=> b!6149232 m!6989134))

(assert (=> b!6149218 m!6989112))

(declare-fun m!6989136 () Bool)

(assert (=> b!6149218 m!6989136))

(declare-fun m!6989138 () Bool)

(assert (=> b!6149218 m!6989138))

(declare-fun m!6989140 () Bool)

(assert (=> b!6149218 m!6989140))

(declare-fun m!6989142 () Bool)

(assert (=> b!6149216 m!6989142))

(declare-fun m!6989144 () Bool)

(assert (=> b!6149216 m!6989144))

(declare-fun m!6989146 () Bool)

(assert (=> setNonEmpty!41625 m!6989146))

(declare-fun m!6989148 () Bool)

(assert (=> b!6149234 m!6989148))

(declare-fun m!6989150 () Bool)

(assert (=> b!6149229 m!6989150))

(declare-fun m!6989152 () Bool)

(assert (=> b!6149229 m!6989152))

(declare-fun m!6989154 () Bool)

(assert (=> b!6149243 m!6989154))

(declare-fun m!6989156 () Bool)

(assert (=> b!6149243 m!6989156))

(declare-fun m!6989158 () Bool)

(assert (=> b!6149243 m!6989158))

(declare-fun m!6989160 () Bool)

(assert (=> b!6149243 m!6989160))

(declare-fun m!6989162 () Bool)

(assert (=> b!6149243 m!6989162))

(declare-fun m!6989164 () Bool)

(assert (=> b!6149243 m!6989164))

(declare-fun m!6989166 () Bool)

(assert (=> b!6149243 m!6989166))

(declare-fun m!6989168 () Bool)

(assert (=> b!6149243 m!6989168))

(declare-fun m!6989170 () Bool)

(assert (=> b!6149243 m!6989170))

(declare-fun m!6989172 () Bool)

(assert (=> b!6149243 m!6989172))

(declare-fun m!6989174 () Bool)

(assert (=> b!6149239 m!6989174))

(declare-fun m!6989176 () Bool)

(assert (=> b!6149239 m!6989176))

(declare-fun m!6989178 () Bool)

(assert (=> b!6149239 m!6989178))

(declare-fun m!6989180 () Bool)

(assert (=> b!6149228 m!6989180))

(declare-fun m!6989182 () Bool)

(assert (=> b!6149237 m!6989182))

(declare-fun m!6989184 () Bool)

(assert (=> b!6149245 m!6989184))

(assert (=> b!6149236 m!6989122))

(push 1)

(assert (not b!6149242))

(assert (not b!6149235))

(assert (not b!6149217))

(assert (not b!6149218))

(assert (not b!6149236))

(assert (not b!6149246))

(assert (not b!6149238))

(assert (not b!6149222))

(assert (not b!6149223))

(assert (not b!6149229))

(assert (not start!614256))

(assert (not b!6149224))

(assert (not b!6149237))

(assert (not b!6149243))

(assert (not b!6149241))

(assert (not b!6149245))

(assert (not b!6149228))

(assert (not b!6149225))

(assert tp_is_empty!41437)

(assert (not b!6149240))

(assert (not b!6149232))

(assert (not b!6149216))

(assert (not b!6149226))

(assert (not b!6149233))

(assert (not b!6149239))

(assert (not b!6149234))

(assert (not setNonEmpty!41625))

(assert (not b!6149221))

(assert (not b!6149219))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1926694 () Bool)

(declare-fun dynLambda!25405 (Int Context!10952) (Set Context!10952))

(assert (=> d!1926694 (= (flatMap!1597 z!1189 lambda!335322) (dynLambda!25405 lambda!335322 (h!70901 zl!343)))))

(declare-fun lt!2334255 () Unit!157531)

(declare-fun choose!45704 ((Set Context!10952) Context!10952 Int) Unit!157531)

(assert (=> d!1926694 (= lt!2334255 (choose!45704 z!1189 (h!70901 zl!343) lambda!335322))))

(assert (=> d!1926694 (= z!1189 (set.insert (h!70901 zl!343) (as set.empty (Set Context!10952))))))

(assert (=> d!1926694 (= (lemmaFlatMapOnSingletonSet!1123 z!1189 (h!70901 zl!343) lambda!335322) lt!2334255)))

(declare-fun b_lambda!234049 () Bool)

(assert (=> (not b_lambda!234049) (not d!1926694)))

(declare-fun bs!1524481 () Bool)

(assert (= bs!1524481 d!1926694))

(assert (=> bs!1524481 m!6989098))

(declare-fun m!6989284 () Bool)

(assert (=> bs!1524481 m!6989284))

(declare-fun m!6989286 () Bool)

(assert (=> bs!1524481 m!6989286))

(declare-fun m!6989288 () Bool)

(assert (=> bs!1524481 m!6989288))

(assert (=> b!6149238 d!1926694))

(declare-fun d!1926696 () Bool)

(declare-fun nullableFct!2049 (Regex!16092) Bool)

(assert (=> d!1926696 (= (nullable!6085 (h!70899 (exprs!5976 (h!70901 zl!343)))) (nullableFct!2049 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun bs!1524482 () Bool)

(assert (= bs!1524482 d!1926696))

(declare-fun m!6989290 () Bool)

(assert (=> bs!1524482 m!6989290))

(assert (=> b!6149238 d!1926696))

(declare-fun b!6149374 () Bool)

(declare-fun call!511301 () (Set Context!10952))

(declare-fun e!3747146 () (Set Context!10952))

(assert (=> b!6149374 (= e!3747146 (set.union call!511301 (derivationStepZipperUp!1266 (Context!10953 (t!378062 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))) (h!70900 s!2326))))))

(declare-fun b!6149375 () Bool)

(declare-fun e!3747144 () (Set Context!10952))

(assert (=> b!6149375 (= e!3747144 call!511301)))

(declare-fun d!1926698 () Bool)

(declare-fun c!1106650 () Bool)

(declare-fun e!3747145 () Bool)

(assert (=> d!1926698 (= c!1106650 e!3747145)))

(declare-fun res!2547332 () Bool)

(assert (=> d!1926698 (=> (not res!2547332) (not e!3747145))))

(assert (=> d!1926698 (= res!2547332 (is-Cons!64451 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343))))))))))

(assert (=> d!1926698 (= (derivationStepZipperUp!1266 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343))))) (h!70900 s!2326)) e!3747146)))

(declare-fun b!6149376 () Bool)

(assert (=> b!6149376 (= e!3747144 (as set.empty (Set Context!10952)))))

(declare-fun b!6149377 () Bool)

(assert (=> b!6149377 (= e!3747145 (nullable!6085 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))))))

(declare-fun bm!511296 () Bool)

(assert (=> bm!511296 (= call!511301 (derivationStepZipperDown!1340 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343))))))) (Context!10953 (t!378062 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))) (h!70900 s!2326)))))

(declare-fun b!6149378 () Bool)

(assert (=> b!6149378 (= e!3747146 e!3747144)))

(declare-fun c!1106651 () Bool)

(assert (=> b!6149378 (= c!1106651 (is-Cons!64451 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343))))))))))

(assert (= (and d!1926698 res!2547332) b!6149377))

(assert (= (and d!1926698 c!1106650) b!6149374))

(assert (= (and d!1926698 (not c!1106650)) b!6149378))

(assert (= (and b!6149378 c!1106651) b!6149375))

(assert (= (and b!6149378 (not c!1106651)) b!6149376))

(assert (= (or b!6149374 b!6149375) bm!511296))

(declare-fun m!6989292 () Bool)

(assert (=> b!6149374 m!6989292))

(declare-fun m!6989294 () Bool)

(assert (=> b!6149377 m!6989294))

(declare-fun m!6989296 () Bool)

(assert (=> bm!511296 m!6989296))

(assert (=> b!6149238 d!1926698))

(declare-fun d!1926700 () Bool)

(declare-fun choose!45705 ((Set Context!10952) Int) (Set Context!10952))

(assert (=> d!1926700 (= (flatMap!1597 z!1189 lambda!335322) (choose!45705 z!1189 lambda!335322))))

(declare-fun bs!1524483 () Bool)

(assert (= bs!1524483 d!1926700))

(declare-fun m!6989298 () Bool)

(assert (=> bs!1524483 m!6989298))

(assert (=> b!6149238 d!1926700))

(declare-fun b!6149379 () Bool)

(declare-fun call!511302 () (Set Context!10952))

(declare-fun e!3747149 () (Set Context!10952))

(assert (=> b!6149379 (= e!3747149 (set.union call!511302 (derivationStepZipperUp!1266 (Context!10953 (t!378062 (exprs!5976 lt!2334170))) (h!70900 s!2326))))))

(declare-fun b!6149380 () Bool)

(declare-fun e!3747147 () (Set Context!10952))

(assert (=> b!6149380 (= e!3747147 call!511302)))

(declare-fun d!1926702 () Bool)

(declare-fun c!1106652 () Bool)

(declare-fun e!3747148 () Bool)

(assert (=> d!1926702 (= c!1106652 e!3747148)))

(declare-fun res!2547333 () Bool)

(assert (=> d!1926702 (=> (not res!2547333) (not e!3747148))))

(assert (=> d!1926702 (= res!2547333 (is-Cons!64451 (exprs!5976 lt!2334170)))))

(assert (=> d!1926702 (= (derivationStepZipperUp!1266 lt!2334170 (h!70900 s!2326)) e!3747149)))

(declare-fun b!6149381 () Bool)

(assert (=> b!6149381 (= e!3747147 (as set.empty (Set Context!10952)))))

(declare-fun b!6149382 () Bool)

(assert (=> b!6149382 (= e!3747148 (nullable!6085 (h!70899 (exprs!5976 lt!2334170))))))

(declare-fun bm!511297 () Bool)

(assert (=> bm!511297 (= call!511302 (derivationStepZipperDown!1340 (h!70899 (exprs!5976 lt!2334170)) (Context!10953 (t!378062 (exprs!5976 lt!2334170))) (h!70900 s!2326)))))

(declare-fun b!6149383 () Bool)

(assert (=> b!6149383 (= e!3747149 e!3747147)))

(declare-fun c!1106653 () Bool)

(assert (=> b!6149383 (= c!1106653 (is-Cons!64451 (exprs!5976 lt!2334170)))))

(assert (= (and d!1926702 res!2547333) b!6149382))

(assert (= (and d!1926702 c!1106652) b!6149379))

(assert (= (and d!1926702 (not c!1106652)) b!6149383))

(assert (= (and b!6149383 c!1106653) b!6149380))

(assert (= (and b!6149383 (not c!1106653)) b!6149381))

(assert (= (or b!6149379 b!6149380) bm!511297))

(declare-fun m!6989300 () Bool)

(assert (=> b!6149379 m!6989300))

(declare-fun m!6989302 () Bool)

(assert (=> b!6149382 m!6989302))

(declare-fun m!6989304 () Bool)

(assert (=> bm!511297 m!6989304))

(assert (=> b!6149238 d!1926702))

(declare-fun b!6149406 () Bool)

(declare-fun e!3747167 () Bool)

(assert (=> b!6149406 (= e!3747167 (nullable!6085 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343))))))))

(declare-fun c!1106666 () Bool)

(declare-fun c!1106667 () Bool)

(declare-fun bm!511310 () Bool)

(declare-fun c!1106665 () Bool)

(declare-fun call!511318 () List!64575)

(declare-fun call!511320 () (Set Context!10952))

(assert (=> bm!511310 (= call!511320 (derivationStepZipperDown!1340 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343))))))) (ite (or c!1106665 c!1106666) lt!2334170 (Context!10953 call!511318)) (h!70900 s!2326)))))

(declare-fun b!6149407 () Bool)

(declare-fun e!3747163 () (Set Context!10952))

(declare-fun call!511319 () (Set Context!10952))

(assert (=> b!6149407 (= e!3747163 (set.union call!511319 call!511320))))

(declare-fun bm!511311 () Bool)

(declare-fun call!511317 () (Set Context!10952))

(declare-fun call!511316 () (Set Context!10952))

(assert (=> bm!511311 (= call!511317 call!511316)))

(declare-fun b!6149408 () Bool)

(declare-fun e!3747165 () (Set Context!10952))

(assert (=> b!6149408 (= e!3747165 call!511317)))

(declare-fun call!511315 () List!64575)

(declare-fun bm!511312 () Bool)

(assert (=> bm!511312 (= call!511319 (derivationStepZipperDown!1340 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343))))) (ite c!1106665 lt!2334170 (Context!10953 call!511315)) (h!70900 s!2326)))))

(declare-fun b!6149409 () Bool)

(assert (=> b!6149409 (= e!3747165 (as set.empty (Set Context!10952)))))

(declare-fun bm!511313 () Bool)

(declare-fun $colon$colon!1969 (List!64575 Regex!16092) List!64575)

(assert (=> bm!511313 (= call!511315 ($colon$colon!1969 (exprs!5976 lt!2334170) (ite (or c!1106666 c!1106667) (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (h!70899 (exprs!5976 (h!70901 zl!343))))))))

(declare-fun bm!511314 () Bool)

(assert (=> bm!511314 (= call!511318 call!511315)))

(declare-fun d!1926704 () Bool)

(declare-fun c!1106664 () Bool)

(assert (=> d!1926704 (= c!1106664 (and (is-ElementMatch!16092 (h!70899 (exprs!5976 (h!70901 zl!343)))) (= (c!1106631 (h!70899 (exprs!5976 (h!70901 zl!343)))) (h!70900 s!2326))))))

(declare-fun e!3747162 () (Set Context!10952))

(assert (=> d!1926704 (= (derivationStepZipperDown!1340 (h!70899 (exprs!5976 (h!70901 zl!343))) lt!2334170 (h!70900 s!2326)) e!3747162)))

(declare-fun b!6149410 () Bool)

(assert (=> b!6149410 (= e!3747162 e!3747163)))

(assert (=> b!6149410 (= c!1106665 (is-Union!16092 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun b!6149411 () Bool)

(declare-fun c!1106668 () Bool)

(assert (=> b!6149411 (= c!1106668 (is-Star!16092 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun e!3747166 () (Set Context!10952))

(assert (=> b!6149411 (= e!3747166 e!3747165)))

(declare-fun b!6149412 () Bool)

(declare-fun e!3747164 () (Set Context!10952))

(assert (=> b!6149412 (= e!3747164 e!3747166)))

(assert (=> b!6149412 (= c!1106667 (is-Concat!24937 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun b!6149413 () Bool)

(assert (=> b!6149413 (= e!3747166 call!511317)))

(declare-fun bm!511315 () Bool)

(assert (=> bm!511315 (= call!511316 call!511320)))

(declare-fun b!6149414 () Bool)

(assert (=> b!6149414 (= e!3747162 (set.insert lt!2334170 (as set.empty (Set Context!10952))))))

(declare-fun b!6149415 () Bool)

(assert (=> b!6149415 (= e!3747164 (set.union call!511319 call!511316))))

(declare-fun b!6149416 () Bool)

(assert (=> b!6149416 (= c!1106666 e!3747167)))

(declare-fun res!2547336 () Bool)

(assert (=> b!6149416 (=> (not res!2547336) (not e!3747167))))

(assert (=> b!6149416 (= res!2547336 (is-Concat!24937 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(assert (=> b!6149416 (= e!3747163 e!3747164)))

(assert (= (and d!1926704 c!1106664) b!6149414))

(assert (= (and d!1926704 (not c!1106664)) b!6149410))

(assert (= (and b!6149410 c!1106665) b!6149407))

(assert (= (and b!6149410 (not c!1106665)) b!6149416))

(assert (= (and b!6149416 res!2547336) b!6149406))

(assert (= (and b!6149416 c!1106666) b!6149415))

(assert (= (and b!6149416 (not c!1106666)) b!6149412))

(assert (= (and b!6149412 c!1106667) b!6149413))

(assert (= (and b!6149412 (not c!1106667)) b!6149411))

(assert (= (and b!6149411 c!1106668) b!6149408))

(assert (= (and b!6149411 (not c!1106668)) b!6149409))

(assert (= (or b!6149413 b!6149408) bm!511314))

(assert (= (or b!6149413 b!6149408) bm!511311))

(assert (= (or b!6149415 bm!511314) bm!511313))

(assert (= (or b!6149415 bm!511311) bm!511315))

(assert (= (or b!6149407 bm!511315) bm!511310))

(assert (= (or b!6149407 b!6149415) bm!511312))

(declare-fun m!6989306 () Bool)

(assert (=> b!6149414 m!6989306))

(declare-fun m!6989308 () Bool)

(assert (=> bm!511312 m!6989308))

(declare-fun m!6989310 () Bool)

(assert (=> b!6149406 m!6989310))

(declare-fun m!6989312 () Bool)

(assert (=> bm!511310 m!6989312))

(declare-fun m!6989314 () Bool)

(assert (=> bm!511313 m!6989314))

(assert (=> b!6149238 d!1926704))

(declare-fun b!6149417 () Bool)

(declare-fun e!3747170 () (Set Context!10952))

(declare-fun call!511321 () (Set Context!10952))

(assert (=> b!6149417 (= e!3747170 (set.union call!511321 (derivationStepZipperUp!1266 (Context!10953 (t!378062 (exprs!5976 (h!70901 zl!343)))) (h!70900 s!2326))))))

(declare-fun b!6149418 () Bool)

(declare-fun e!3747168 () (Set Context!10952))

(assert (=> b!6149418 (= e!3747168 call!511321)))

(declare-fun d!1926706 () Bool)

(declare-fun c!1106669 () Bool)

(declare-fun e!3747169 () Bool)

(assert (=> d!1926706 (= c!1106669 e!3747169)))

(declare-fun res!2547337 () Bool)

(assert (=> d!1926706 (=> (not res!2547337) (not e!3747169))))

(assert (=> d!1926706 (= res!2547337 (is-Cons!64451 (exprs!5976 (h!70901 zl!343))))))

(assert (=> d!1926706 (= (derivationStepZipperUp!1266 (h!70901 zl!343) (h!70900 s!2326)) e!3747170)))

(declare-fun b!6149419 () Bool)

(assert (=> b!6149419 (= e!3747168 (as set.empty (Set Context!10952)))))

(declare-fun b!6149420 () Bool)

(assert (=> b!6149420 (= e!3747169 (nullable!6085 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun bm!511316 () Bool)

(assert (=> bm!511316 (= call!511321 (derivationStepZipperDown!1340 (h!70899 (exprs!5976 (h!70901 zl!343))) (Context!10953 (t!378062 (exprs!5976 (h!70901 zl!343)))) (h!70900 s!2326)))))

(declare-fun b!6149421 () Bool)

(assert (=> b!6149421 (= e!3747170 e!3747168)))

(declare-fun c!1106670 () Bool)

(assert (=> b!6149421 (= c!1106670 (is-Cons!64451 (exprs!5976 (h!70901 zl!343))))))

(assert (= (and d!1926706 res!2547337) b!6149420))

(assert (= (and d!1926706 c!1106669) b!6149417))

(assert (= (and d!1926706 (not c!1106669)) b!6149421))

(assert (= (and b!6149421 c!1106670) b!6149418))

(assert (= (and b!6149421 (not c!1106670)) b!6149419))

(assert (= (or b!6149417 b!6149418) bm!511316))

(declare-fun m!6989316 () Bool)

(assert (=> b!6149417 m!6989316))

(assert (=> b!6149420 m!6989096))

(declare-fun m!6989318 () Bool)

(assert (=> bm!511316 m!6989318))

(assert (=> b!6149238 d!1926706))

(declare-fun d!1926708 () Bool)

(declare-fun lambda!335340 () Int)

(declare-fun forall!15213 (List!64575 Int) Bool)

(assert (=> d!1926708 (= (inv!83478 setElem!41625) (forall!15213 (exprs!5976 setElem!41625) lambda!335340))))

(declare-fun bs!1524484 () Bool)

(assert (= bs!1524484 d!1926708))

(declare-fun m!6989320 () Bool)

(assert (=> bs!1524484 m!6989320))

(assert (=> setNonEmpty!41625 d!1926708))

(declare-fun d!1926710 () Bool)

(assert (=> d!1926710 (= (isEmpty!36410 (t!378064 zl!343)) (is-Nil!64453 (t!378064 zl!343)))))

(assert (=> b!6149228 d!1926710))

(declare-fun d!1926712 () Bool)

(declare-fun c!1106673 () Bool)

(declare-fun isEmpty!36414 (List!64576) Bool)

(assert (=> d!1926712 (= c!1106673 (isEmpty!36414 (t!378063 s!2326)))))

(declare-fun e!3747173 () Bool)

(assert (=> d!1926712 (= (matchZipper!2104 lt!2334151 (t!378063 s!2326)) e!3747173)))

(declare-fun b!6149426 () Bool)

(declare-fun nullableZipper!1873 ((Set Context!10952)) Bool)

(assert (=> b!6149426 (= e!3747173 (nullableZipper!1873 lt!2334151))))

(declare-fun b!6149427 () Bool)

(declare-fun derivationStepZipper!2065 ((Set Context!10952) C!32454) (Set Context!10952))

(declare-fun head!12705 (List!64576) C!32454)

(declare-fun tail!11790 (List!64576) List!64576)

(assert (=> b!6149427 (= e!3747173 (matchZipper!2104 (derivationStepZipper!2065 lt!2334151 (head!12705 (t!378063 s!2326))) (tail!11790 (t!378063 s!2326))))))

(assert (= (and d!1926712 c!1106673) b!6149426))

(assert (= (and d!1926712 (not c!1106673)) b!6149427))

(declare-fun m!6989322 () Bool)

(assert (=> d!1926712 m!6989322))

(declare-fun m!6989324 () Bool)

(assert (=> b!6149426 m!6989324))

(declare-fun m!6989326 () Bool)

(assert (=> b!6149427 m!6989326))

(assert (=> b!6149427 m!6989326))

(declare-fun m!6989328 () Bool)

(assert (=> b!6149427 m!6989328))

(declare-fun m!6989330 () Bool)

(assert (=> b!6149427 m!6989330))

(assert (=> b!6149427 m!6989328))

(assert (=> b!6149427 m!6989330))

(declare-fun m!6989332 () Bool)

(assert (=> b!6149427 m!6989332))

(assert (=> b!6149218 d!1926712))

(declare-fun d!1926714 () Bool)

(declare-fun c!1106674 () Bool)

(assert (=> d!1926714 (= c!1106674 (isEmpty!36414 (t!378063 s!2326)))))

(declare-fun e!3747174 () Bool)

(assert (=> d!1926714 (= (matchZipper!2104 lt!2334167 (t!378063 s!2326)) e!3747174)))

(declare-fun b!6149428 () Bool)

(assert (=> b!6149428 (= e!3747174 (nullableZipper!1873 lt!2334167))))

(declare-fun b!6149429 () Bool)

(assert (=> b!6149429 (= e!3747174 (matchZipper!2104 (derivationStepZipper!2065 lt!2334167 (head!12705 (t!378063 s!2326))) (tail!11790 (t!378063 s!2326))))))

(assert (= (and d!1926714 c!1106674) b!6149428))

(assert (= (and d!1926714 (not c!1106674)) b!6149429))

(assert (=> d!1926714 m!6989322))

(declare-fun m!6989334 () Bool)

(assert (=> b!6149428 m!6989334))

(assert (=> b!6149429 m!6989326))

(assert (=> b!6149429 m!6989326))

(declare-fun m!6989336 () Bool)

(assert (=> b!6149429 m!6989336))

(assert (=> b!6149429 m!6989330))

(assert (=> b!6149429 m!6989336))

(assert (=> b!6149429 m!6989330))

(declare-fun m!6989338 () Bool)

(assert (=> b!6149429 m!6989338))

(assert (=> b!6149218 d!1926714))

(declare-fun d!1926716 () Bool)

(declare-fun c!1106675 () Bool)

(assert (=> d!1926716 (= c!1106675 (isEmpty!36414 (t!378063 s!2326)))))

(declare-fun e!3747175 () Bool)

(assert (=> d!1926716 (= (matchZipper!2104 lt!2334160 (t!378063 s!2326)) e!3747175)))

(declare-fun b!6149430 () Bool)

(assert (=> b!6149430 (= e!3747175 (nullableZipper!1873 lt!2334160))))

(declare-fun b!6149431 () Bool)

(assert (=> b!6149431 (= e!3747175 (matchZipper!2104 (derivationStepZipper!2065 lt!2334160 (head!12705 (t!378063 s!2326))) (tail!11790 (t!378063 s!2326))))))

(assert (= (and d!1926716 c!1106675) b!6149430))

(assert (= (and d!1926716 (not c!1106675)) b!6149431))

(assert (=> d!1926716 m!6989322))

(declare-fun m!6989340 () Bool)

(assert (=> b!6149430 m!6989340))

(assert (=> b!6149431 m!6989326))

(assert (=> b!6149431 m!6989326))

(declare-fun m!6989342 () Bool)

(assert (=> b!6149431 m!6989342))

(assert (=> b!6149431 m!6989330))

(assert (=> b!6149431 m!6989342))

(assert (=> b!6149431 m!6989330))

(declare-fun m!6989344 () Bool)

(assert (=> b!6149431 m!6989344))

(assert (=> b!6149218 d!1926716))

(declare-fun d!1926718 () Bool)

(declare-fun e!3747178 () Bool)

(assert (=> d!1926718 (= (matchZipper!2104 (set.union lt!2334160 lt!2334169) (t!378063 s!2326)) e!3747178)))

(declare-fun res!2547340 () Bool)

(assert (=> d!1926718 (=> res!2547340 e!3747178)))

(assert (=> d!1926718 (= res!2547340 (matchZipper!2104 lt!2334160 (t!378063 s!2326)))))

(declare-fun lt!2334258 () Unit!157531)

(declare-fun choose!45706 ((Set Context!10952) (Set Context!10952) List!64576) Unit!157531)

(assert (=> d!1926718 (= lt!2334258 (choose!45706 lt!2334160 lt!2334169 (t!378063 s!2326)))))

(assert (=> d!1926718 (= (lemmaZipperConcatMatchesSameAsBothZippers!923 lt!2334160 lt!2334169 (t!378063 s!2326)) lt!2334258)))

(declare-fun b!6149434 () Bool)

(assert (=> b!6149434 (= e!3747178 (matchZipper!2104 lt!2334169 (t!378063 s!2326)))))

(assert (= (and d!1926718 (not res!2547340)) b!6149434))

(declare-fun m!6989346 () Bool)

(assert (=> d!1926718 m!6989346))

(assert (=> d!1926718 m!6989138))

(declare-fun m!6989348 () Bool)

(assert (=> d!1926718 m!6989348))

(assert (=> b!6149434 m!6989122))

(assert (=> b!6149218 d!1926718))

(declare-fun bm!511323 () Bool)

(declare-fun call!511330 () Bool)

(declare-fun call!511328 () Bool)

(assert (=> bm!511323 (= call!511330 call!511328)))

(declare-fun b!6149453 () Bool)

(declare-fun res!2547352 () Bool)

(declare-fun e!3747193 () Bool)

(assert (=> b!6149453 (=> (not res!2547352) (not e!3747193))))

(declare-fun call!511329 () Bool)

(assert (=> b!6149453 (= res!2547352 call!511329)))

(declare-fun e!3747199 () Bool)

(assert (=> b!6149453 (= e!3747199 e!3747193)))

(declare-fun b!6149454 () Bool)

(declare-fun e!3747196 () Bool)

(assert (=> b!6149454 (= e!3747196 call!511328)))

(declare-fun b!6149455 () Bool)

(declare-fun e!3747195 () Bool)

(declare-fun e!3747198 () Bool)

(assert (=> b!6149455 (= e!3747195 e!3747198)))

(declare-fun c!1106680 () Bool)

(assert (=> b!6149455 (= c!1106680 (is-Star!16092 r!7292))))

(declare-fun b!6149456 () Bool)

(assert (=> b!6149456 (= e!3747198 e!3747199)))

(declare-fun c!1106681 () Bool)

(assert (=> b!6149456 (= c!1106681 (is-Union!16092 r!7292))))

(declare-fun bm!511324 () Bool)

(assert (=> bm!511324 (= call!511328 (validRegex!7828 (ite c!1106680 (reg!16421 r!7292) (ite c!1106681 (regTwo!32697 r!7292) (regTwo!32696 r!7292)))))))

(declare-fun b!6149457 () Bool)

(declare-fun res!2547354 () Bool)

(declare-fun e!3747194 () Bool)

(assert (=> b!6149457 (=> res!2547354 e!3747194)))

(assert (=> b!6149457 (= res!2547354 (not (is-Concat!24937 r!7292)))))

(assert (=> b!6149457 (= e!3747199 e!3747194)))

(declare-fun b!6149458 () Bool)

(assert (=> b!6149458 (= e!3747198 e!3747196)))

(declare-fun res!2547351 () Bool)

(assert (=> b!6149458 (= res!2547351 (not (nullable!6085 (reg!16421 r!7292))))))

(assert (=> b!6149458 (=> (not res!2547351) (not e!3747196))))

(declare-fun d!1926720 () Bool)

(declare-fun res!2547355 () Bool)

(assert (=> d!1926720 (=> res!2547355 e!3747195)))

(assert (=> d!1926720 (= res!2547355 (is-ElementMatch!16092 r!7292))))

(assert (=> d!1926720 (= (validRegex!7828 r!7292) e!3747195)))

(declare-fun b!6149459 () Bool)

(declare-fun e!3747197 () Bool)

(assert (=> b!6149459 (= e!3747194 e!3747197)))

(declare-fun res!2547353 () Bool)

(assert (=> b!6149459 (=> (not res!2547353) (not e!3747197))))

(assert (=> b!6149459 (= res!2547353 call!511329)))

(declare-fun bm!511325 () Bool)

(assert (=> bm!511325 (= call!511329 (validRegex!7828 (ite c!1106681 (regOne!32697 r!7292) (regOne!32696 r!7292))))))

(declare-fun b!6149460 () Bool)

(assert (=> b!6149460 (= e!3747193 call!511330)))

(declare-fun b!6149461 () Bool)

(assert (=> b!6149461 (= e!3747197 call!511330)))

(assert (= (and d!1926720 (not res!2547355)) b!6149455))

(assert (= (and b!6149455 c!1106680) b!6149458))

(assert (= (and b!6149455 (not c!1106680)) b!6149456))

(assert (= (and b!6149458 res!2547351) b!6149454))

(assert (= (and b!6149456 c!1106681) b!6149453))

(assert (= (and b!6149456 (not c!1106681)) b!6149457))

(assert (= (and b!6149453 res!2547352) b!6149460))

(assert (= (and b!6149457 (not res!2547354)) b!6149459))

(assert (= (and b!6149459 res!2547353) b!6149461))

(assert (= (or b!6149460 b!6149461) bm!511323))

(assert (= (or b!6149453 b!6149459) bm!511325))

(assert (= (or b!6149454 bm!511323) bm!511324))

(declare-fun m!6989350 () Bool)

(assert (=> bm!511324 m!6989350))

(declare-fun m!6989352 () Bool)

(assert (=> b!6149458 m!6989352))

(declare-fun m!6989354 () Bool)

(assert (=> bm!511325 m!6989354))

(assert (=> start!614256 d!1926720))

(declare-fun d!1926722 () Bool)

(declare-fun c!1106682 () Bool)

(assert (=> d!1926722 (= c!1106682 (isEmpty!36414 (t!378063 s!2326)))))

(declare-fun e!3747200 () Bool)

(assert (=> d!1926722 (= (matchZipper!2104 lt!2334149 (t!378063 s!2326)) e!3747200)))

(declare-fun b!6149462 () Bool)

(assert (=> b!6149462 (= e!3747200 (nullableZipper!1873 lt!2334149))))

(declare-fun b!6149463 () Bool)

(assert (=> b!6149463 (= e!3747200 (matchZipper!2104 (derivationStepZipper!2065 lt!2334149 (head!12705 (t!378063 s!2326))) (tail!11790 (t!378063 s!2326))))))

(assert (= (and d!1926722 c!1106682) b!6149462))

(assert (= (and d!1926722 (not c!1106682)) b!6149463))

(assert (=> d!1926722 m!6989322))

(declare-fun m!6989356 () Bool)

(assert (=> b!6149462 m!6989356))

(assert (=> b!6149463 m!6989326))

(assert (=> b!6149463 m!6989326))

(declare-fun m!6989358 () Bool)

(assert (=> b!6149463 m!6989358))

(assert (=> b!6149463 m!6989330))

(assert (=> b!6149463 m!6989358))

(assert (=> b!6149463 m!6989330))

(declare-fun m!6989360 () Bool)

(assert (=> b!6149463 m!6989360))

(assert (=> b!6149246 d!1926722))

(declare-fun b!6149464 () Bool)

(declare-fun e!3747206 () Bool)

(assert (=> b!6149464 (= e!3747206 (nullable!6085 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292)))))))

(declare-fun c!1106686 () Bool)

(declare-fun call!511336 () (Set Context!10952))

(declare-fun c!1106684 () Bool)

(declare-fun call!511334 () List!64575)

(declare-fun c!1106685 () Bool)

(declare-fun bm!511326 () Bool)

(assert (=> bm!511326 (= call!511336 (derivationStepZipperDown!1340 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292)))))) (ite (or c!1106684 c!1106685) lt!2334170 (Context!10953 call!511334)) (h!70900 s!2326)))))

(declare-fun b!6149465 () Bool)

(declare-fun e!3747202 () (Set Context!10952))

(declare-fun call!511335 () (Set Context!10952))

(assert (=> b!6149465 (= e!3747202 (set.union call!511335 call!511336))))

(declare-fun bm!511327 () Bool)

(declare-fun call!511333 () (Set Context!10952))

(declare-fun call!511332 () (Set Context!10952))

(assert (=> bm!511327 (= call!511333 call!511332)))

(declare-fun b!6149466 () Bool)

(declare-fun e!3747204 () (Set Context!10952))

(assert (=> b!6149466 (= e!3747204 call!511333)))

(declare-fun call!511331 () List!64575)

(declare-fun bm!511328 () Bool)

(assert (=> bm!511328 (= call!511335 (derivationStepZipperDown!1340 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292)))) (ite c!1106684 lt!2334170 (Context!10953 call!511331)) (h!70900 s!2326)))))

(declare-fun b!6149467 () Bool)

(assert (=> b!6149467 (= e!3747204 (as set.empty (Set Context!10952)))))

(declare-fun bm!511329 () Bool)

(assert (=> bm!511329 (= call!511331 ($colon$colon!1969 (exprs!5976 lt!2334170) (ite (or c!1106685 c!1106686) (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (regTwo!32697 (regOne!32696 r!7292)))))))

(declare-fun bm!511330 () Bool)

(assert (=> bm!511330 (= call!511334 call!511331)))

(declare-fun d!1926724 () Bool)

(declare-fun c!1106683 () Bool)

(assert (=> d!1926724 (= c!1106683 (and (is-ElementMatch!16092 (regTwo!32697 (regOne!32696 r!7292))) (= (c!1106631 (regTwo!32697 (regOne!32696 r!7292))) (h!70900 s!2326))))))

(declare-fun e!3747201 () (Set Context!10952))

(assert (=> d!1926724 (= (derivationStepZipperDown!1340 (regTwo!32697 (regOne!32696 r!7292)) lt!2334170 (h!70900 s!2326)) e!3747201)))

(declare-fun b!6149468 () Bool)

(assert (=> b!6149468 (= e!3747201 e!3747202)))

(assert (=> b!6149468 (= c!1106684 (is-Union!16092 (regTwo!32697 (regOne!32696 r!7292))))))

(declare-fun b!6149469 () Bool)

(declare-fun c!1106687 () Bool)

(assert (=> b!6149469 (= c!1106687 (is-Star!16092 (regTwo!32697 (regOne!32696 r!7292))))))

(declare-fun e!3747205 () (Set Context!10952))

(assert (=> b!6149469 (= e!3747205 e!3747204)))

(declare-fun b!6149470 () Bool)

(declare-fun e!3747203 () (Set Context!10952))

(assert (=> b!6149470 (= e!3747203 e!3747205)))

(assert (=> b!6149470 (= c!1106686 (is-Concat!24937 (regTwo!32697 (regOne!32696 r!7292))))))

(declare-fun b!6149471 () Bool)

(assert (=> b!6149471 (= e!3747205 call!511333)))

(declare-fun bm!511331 () Bool)

(assert (=> bm!511331 (= call!511332 call!511336)))

(declare-fun b!6149472 () Bool)

(assert (=> b!6149472 (= e!3747201 (set.insert lt!2334170 (as set.empty (Set Context!10952))))))

(declare-fun b!6149473 () Bool)

(assert (=> b!6149473 (= e!3747203 (set.union call!511335 call!511332))))

(declare-fun b!6149474 () Bool)

(assert (=> b!6149474 (= c!1106685 e!3747206)))

(declare-fun res!2547356 () Bool)

(assert (=> b!6149474 (=> (not res!2547356) (not e!3747206))))

(assert (=> b!6149474 (= res!2547356 (is-Concat!24937 (regTwo!32697 (regOne!32696 r!7292))))))

(assert (=> b!6149474 (= e!3747202 e!3747203)))

(assert (= (and d!1926724 c!1106683) b!6149472))

(assert (= (and d!1926724 (not c!1106683)) b!6149468))

(assert (= (and b!6149468 c!1106684) b!6149465))

(assert (= (and b!6149468 (not c!1106684)) b!6149474))

(assert (= (and b!6149474 res!2547356) b!6149464))

(assert (= (and b!6149474 c!1106685) b!6149473))

(assert (= (and b!6149474 (not c!1106685)) b!6149470))

(assert (= (and b!6149470 c!1106686) b!6149471))

(assert (= (and b!6149470 (not c!1106686)) b!6149469))

(assert (= (and b!6149469 c!1106687) b!6149466))

(assert (= (and b!6149469 (not c!1106687)) b!6149467))

(assert (= (or b!6149471 b!6149466) bm!511330))

(assert (= (or b!6149471 b!6149466) bm!511327))

(assert (= (or b!6149473 bm!511330) bm!511329))

(assert (= (or b!6149473 bm!511327) bm!511331))

(assert (= (or b!6149465 bm!511331) bm!511326))

(assert (= (or b!6149465 b!6149473) bm!511328))

(assert (=> b!6149472 m!6989306))

(declare-fun m!6989362 () Bool)

(assert (=> bm!511328 m!6989362))

(declare-fun m!6989364 () Bool)

(assert (=> b!6149464 m!6989364))

(declare-fun m!6989366 () Bool)

(assert (=> bm!511326 m!6989366))

(declare-fun m!6989368 () Bool)

(assert (=> bm!511329 m!6989368))

(assert (=> b!6149216 d!1926724))

(declare-fun b!6149475 () Bool)

(declare-fun e!3747212 () Bool)

(assert (=> b!6149475 (= e!3747212 (nullable!6085 (regOne!32696 (regOne!32697 (regOne!32696 r!7292)))))))

(declare-fun c!1106689 () Bool)

(declare-fun call!511342 () (Set Context!10952))

(declare-fun c!1106691 () Bool)

(declare-fun call!511340 () List!64575)

(declare-fun c!1106690 () Bool)

(declare-fun bm!511332 () Bool)

(assert (=> bm!511332 (= call!511342 (derivationStepZipperDown!1340 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292)))))) (ite (or c!1106689 c!1106690) lt!2334170 (Context!10953 call!511340)) (h!70900 s!2326)))))

(declare-fun b!6149476 () Bool)

(declare-fun e!3747208 () (Set Context!10952))

(declare-fun call!511341 () (Set Context!10952))

(assert (=> b!6149476 (= e!3747208 (set.union call!511341 call!511342))))

(declare-fun bm!511333 () Bool)

(declare-fun call!511339 () (Set Context!10952))

(declare-fun call!511338 () (Set Context!10952))

(assert (=> bm!511333 (= call!511339 call!511338)))

(declare-fun b!6149477 () Bool)

(declare-fun e!3747210 () (Set Context!10952))

(assert (=> b!6149477 (= e!3747210 call!511339)))

(declare-fun call!511337 () List!64575)

(declare-fun bm!511334 () Bool)

(assert (=> bm!511334 (= call!511341 (derivationStepZipperDown!1340 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292)))) (ite c!1106689 lt!2334170 (Context!10953 call!511337)) (h!70900 s!2326)))))

(declare-fun b!6149478 () Bool)

(assert (=> b!6149478 (= e!3747210 (as set.empty (Set Context!10952)))))

(declare-fun bm!511335 () Bool)

(assert (=> bm!511335 (= call!511337 ($colon$colon!1969 (exprs!5976 lt!2334170) (ite (or c!1106690 c!1106691) (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (regOne!32697 (regOne!32696 r!7292)))))))

(declare-fun bm!511336 () Bool)

(assert (=> bm!511336 (= call!511340 call!511337)))

(declare-fun d!1926726 () Bool)

(declare-fun c!1106688 () Bool)

(assert (=> d!1926726 (= c!1106688 (and (is-ElementMatch!16092 (regOne!32697 (regOne!32696 r!7292))) (= (c!1106631 (regOne!32697 (regOne!32696 r!7292))) (h!70900 s!2326))))))

(declare-fun e!3747207 () (Set Context!10952))

(assert (=> d!1926726 (= (derivationStepZipperDown!1340 (regOne!32697 (regOne!32696 r!7292)) lt!2334170 (h!70900 s!2326)) e!3747207)))

(declare-fun b!6149479 () Bool)

(assert (=> b!6149479 (= e!3747207 e!3747208)))

(assert (=> b!6149479 (= c!1106689 (is-Union!16092 (regOne!32697 (regOne!32696 r!7292))))))

(declare-fun b!6149480 () Bool)

(declare-fun c!1106692 () Bool)

(assert (=> b!6149480 (= c!1106692 (is-Star!16092 (regOne!32697 (regOne!32696 r!7292))))))

(declare-fun e!3747211 () (Set Context!10952))

(assert (=> b!6149480 (= e!3747211 e!3747210)))

(declare-fun b!6149481 () Bool)

(declare-fun e!3747209 () (Set Context!10952))

(assert (=> b!6149481 (= e!3747209 e!3747211)))

(assert (=> b!6149481 (= c!1106691 (is-Concat!24937 (regOne!32697 (regOne!32696 r!7292))))))

(declare-fun b!6149482 () Bool)

(assert (=> b!6149482 (= e!3747211 call!511339)))

(declare-fun bm!511337 () Bool)

(assert (=> bm!511337 (= call!511338 call!511342)))

(declare-fun b!6149483 () Bool)

(assert (=> b!6149483 (= e!3747207 (set.insert lt!2334170 (as set.empty (Set Context!10952))))))

(declare-fun b!6149484 () Bool)

(assert (=> b!6149484 (= e!3747209 (set.union call!511341 call!511338))))

(declare-fun b!6149485 () Bool)

(assert (=> b!6149485 (= c!1106690 e!3747212)))

(declare-fun res!2547357 () Bool)

(assert (=> b!6149485 (=> (not res!2547357) (not e!3747212))))

(assert (=> b!6149485 (= res!2547357 (is-Concat!24937 (regOne!32697 (regOne!32696 r!7292))))))

(assert (=> b!6149485 (= e!3747208 e!3747209)))

(assert (= (and d!1926726 c!1106688) b!6149483))

(assert (= (and d!1926726 (not c!1106688)) b!6149479))

(assert (= (and b!6149479 c!1106689) b!6149476))

(assert (= (and b!6149479 (not c!1106689)) b!6149485))

(assert (= (and b!6149485 res!2547357) b!6149475))

(assert (= (and b!6149485 c!1106690) b!6149484))

(assert (= (and b!6149485 (not c!1106690)) b!6149481))

(assert (= (and b!6149481 c!1106691) b!6149482))

(assert (= (and b!6149481 (not c!1106691)) b!6149480))

(assert (= (and b!6149480 c!1106692) b!6149477))

(assert (= (and b!6149480 (not c!1106692)) b!6149478))

(assert (= (or b!6149482 b!6149477) bm!511336))

(assert (= (or b!6149482 b!6149477) bm!511333))

(assert (= (or b!6149484 bm!511336) bm!511335))

(assert (= (or b!6149484 bm!511333) bm!511337))

(assert (= (or b!6149476 bm!511337) bm!511332))

(assert (= (or b!6149476 b!6149484) bm!511334))

(assert (=> b!6149483 m!6989306))

(declare-fun m!6989370 () Bool)

(assert (=> bm!511334 m!6989370))

(declare-fun m!6989372 () Bool)

(assert (=> b!6149475 m!6989372))

(declare-fun m!6989374 () Bool)

(assert (=> bm!511332 m!6989374))

(declare-fun m!6989376 () Bool)

(assert (=> bm!511335 m!6989376))

(assert (=> b!6149216 d!1926726))

(declare-fun bs!1524485 () Bool)

(declare-fun d!1926728 () Bool)

(assert (= bs!1524485 (and d!1926728 d!1926708)))

(declare-fun lambda!335343 () Int)

(assert (=> bs!1524485 (= lambda!335343 lambda!335340)))

(declare-fun b!6149506 () Bool)

(declare-fun e!3747227 () Regex!16092)

(assert (=> b!6149506 (= e!3747227 (h!70899 (exprs!5976 (h!70901 zl!343))))))

(declare-fun b!6149507 () Bool)

(declare-fun e!3747229 () Bool)

(declare-fun lt!2334261 () Regex!16092)

(declare-fun isConcat!1032 (Regex!16092) Bool)

(assert (=> b!6149507 (= e!3747229 (isConcat!1032 lt!2334261))))

(declare-fun b!6149508 () Bool)

(declare-fun e!3747230 () Regex!16092)

(assert (=> b!6149508 (= e!3747227 e!3747230)))

(declare-fun c!1106702 () Bool)

(assert (=> b!6149508 (= c!1106702 (is-Cons!64451 (exprs!5976 (h!70901 zl!343))))))

(declare-fun b!6149509 () Bool)

(declare-fun e!3747228 () Bool)

(declare-fun isEmptyExpr!1509 (Regex!16092) Bool)

(assert (=> b!6149509 (= e!3747228 (isEmptyExpr!1509 lt!2334261))))

(declare-fun b!6149510 () Bool)

(declare-fun head!12706 (List!64575) Regex!16092)

(assert (=> b!6149510 (= e!3747229 (= lt!2334261 (head!12706 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun b!6149511 () Bool)

(assert (=> b!6149511 (= e!3747230 EmptyExpr!16092)))

(declare-fun e!3747225 () Bool)

(assert (=> d!1926728 e!3747225))

(declare-fun res!2547362 () Bool)

(assert (=> d!1926728 (=> (not res!2547362) (not e!3747225))))

(assert (=> d!1926728 (= res!2547362 (validRegex!7828 lt!2334261))))

(assert (=> d!1926728 (= lt!2334261 e!3747227)))

(declare-fun c!1106704 () Bool)

(declare-fun e!3747226 () Bool)

(assert (=> d!1926728 (= c!1106704 e!3747226)))

(declare-fun res!2547363 () Bool)

(assert (=> d!1926728 (=> (not res!2547363) (not e!3747226))))

(assert (=> d!1926728 (= res!2547363 (is-Cons!64451 (exprs!5976 (h!70901 zl!343))))))

(assert (=> d!1926728 (forall!15213 (exprs!5976 (h!70901 zl!343)) lambda!335343)))

(assert (=> d!1926728 (= (generalisedConcat!1689 (exprs!5976 (h!70901 zl!343))) lt!2334261)))

(declare-fun b!6149512 () Bool)

(assert (=> b!6149512 (= e!3747225 e!3747228)))

(declare-fun c!1106703 () Bool)

(assert (=> b!6149512 (= c!1106703 (isEmpty!36411 (exprs!5976 (h!70901 zl!343))))))

(declare-fun b!6149513 () Bool)

(assert (=> b!6149513 (= e!3747226 (isEmpty!36411 (t!378062 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun b!6149514 () Bool)

(assert (=> b!6149514 (= e!3747230 (Concat!24937 (h!70899 (exprs!5976 (h!70901 zl!343))) (generalisedConcat!1689 (t!378062 (exprs!5976 (h!70901 zl!343))))))))

(declare-fun b!6149515 () Bool)

(assert (=> b!6149515 (= e!3747228 e!3747229)))

(declare-fun c!1106701 () Bool)

(declare-fun tail!11791 (List!64575) List!64575)

(assert (=> b!6149515 (= c!1106701 (isEmpty!36411 (tail!11791 (exprs!5976 (h!70901 zl!343)))))))

(assert (= (and d!1926728 res!2547363) b!6149513))

(assert (= (and d!1926728 c!1106704) b!6149506))

(assert (= (and d!1926728 (not c!1106704)) b!6149508))

(assert (= (and b!6149508 c!1106702) b!6149514))

(assert (= (and b!6149508 (not c!1106702)) b!6149511))

(assert (= (and d!1926728 res!2547362) b!6149512))

(assert (= (and b!6149512 c!1106703) b!6149509))

(assert (= (and b!6149512 (not c!1106703)) b!6149515))

(assert (= (and b!6149515 c!1106701) b!6149510))

(assert (= (and b!6149515 (not c!1106701)) b!6149507))

(declare-fun m!6989378 () Bool)

(assert (=> b!6149512 m!6989378))

(declare-fun m!6989380 () Bool)

(assert (=> b!6149509 m!6989380))

(declare-fun m!6989382 () Bool)

(assert (=> b!6149507 m!6989382))

(declare-fun m!6989384 () Bool)

(assert (=> b!6149510 m!6989384))

(declare-fun m!6989386 () Bool)

(assert (=> b!6149514 m!6989386))

(declare-fun m!6989388 () Bool)

(assert (=> d!1926728 m!6989388))

(declare-fun m!6989390 () Bool)

(assert (=> d!1926728 m!6989390))

(declare-fun m!6989392 () Bool)

(assert (=> b!6149515 m!6989392))

(assert (=> b!6149515 m!6989392))

(declare-fun m!6989394 () Bool)

(assert (=> b!6149515 m!6989394))

(assert (=> b!6149513 m!6989184))

(assert (=> b!6149237 d!1926728))

(declare-fun d!1926730 () Bool)

(assert (=> d!1926730 (= (isEmpty!36411 (t!378062 (exprs!5976 (h!70901 zl!343)))) (is-Nil!64451 (t!378062 (exprs!5976 (h!70901 zl!343)))))))

(assert (=> b!6149245 d!1926730))

(declare-fun d!1926732 () Bool)

(declare-fun lt!2334264 () Regex!16092)

(assert (=> d!1926732 (validRegex!7828 lt!2334264)))

(assert (=> d!1926732 (= lt!2334264 (generalisedUnion!1936 (unfocusZipperList!1513 zl!343)))))

(assert (=> d!1926732 (= (unfocusZipper!1834 zl!343) lt!2334264)))

(declare-fun bs!1524486 () Bool)

(assert (= bs!1524486 d!1926732))

(declare-fun m!6989396 () Bool)

(assert (=> bs!1524486 m!6989396))

(assert (=> bs!1524486 m!6989118))

(assert (=> bs!1524486 m!6989118))

(assert (=> bs!1524486 m!6989120))

(assert (=> b!6149235 d!1926732))

(declare-fun d!1926734 () Bool)

(declare-fun c!1106705 () Bool)

(assert (=> d!1926734 (= c!1106705 (isEmpty!36414 (t!378063 s!2326)))))

(declare-fun e!3747231 () Bool)

(assert (=> d!1926734 (= (matchZipper!2104 lt!2334169 (t!378063 s!2326)) e!3747231)))

(declare-fun b!6149516 () Bool)

(assert (=> b!6149516 (= e!3747231 (nullableZipper!1873 lt!2334169))))

(declare-fun b!6149517 () Bool)

(assert (=> b!6149517 (= e!3747231 (matchZipper!2104 (derivationStepZipper!2065 lt!2334169 (head!12705 (t!378063 s!2326))) (tail!11790 (t!378063 s!2326))))))

(assert (= (and d!1926734 c!1106705) b!6149516))

(assert (= (and d!1926734 (not c!1106705)) b!6149517))

(assert (=> d!1926734 m!6989322))

(declare-fun m!6989398 () Bool)

(assert (=> b!6149516 m!6989398))

(assert (=> b!6149517 m!6989326))

(assert (=> b!6149517 m!6989326))

(declare-fun m!6989400 () Bool)

(assert (=> b!6149517 m!6989400))

(assert (=> b!6149517 m!6989330))

(assert (=> b!6149517 m!6989400))

(assert (=> b!6149517 m!6989330))

(declare-fun m!6989402 () Bool)

(assert (=> b!6149517 m!6989402))

(assert (=> b!6149236 d!1926734))

(assert (=> b!6149226 d!1926734))

(declare-fun bs!1524487 () Bool)

(declare-fun d!1926736 () Bool)

(assert (= bs!1524487 (and d!1926736 d!1926708)))

(declare-fun lambda!335344 () Int)

(assert (=> bs!1524487 (= lambda!335344 lambda!335340)))

(declare-fun bs!1524488 () Bool)

(assert (= bs!1524488 (and d!1926736 d!1926728)))

(assert (=> bs!1524488 (= lambda!335344 lambda!335343)))

(assert (=> d!1926736 (= (inv!83478 lt!2334170) (forall!15213 (exprs!5976 lt!2334170) lambda!335344))))

(declare-fun bs!1524489 () Bool)

(assert (= bs!1524489 d!1926736))

(declare-fun m!6989404 () Bool)

(assert (=> bs!1524489 m!6989404))

(assert (=> b!6149234 d!1926736))

(assert (=> b!6149225 d!1926722))

(declare-fun d!1926738 () Bool)

(declare-fun e!3747234 () Bool)

(assert (=> d!1926738 e!3747234))

(declare-fun res!2547366 () Bool)

(assert (=> d!1926738 (=> (not res!2547366) (not e!3747234))))

(declare-fun lt!2334267 () List!64577)

(declare-fun noDuplicate!1939 (List!64577) Bool)

(assert (=> d!1926738 (= res!2547366 (noDuplicate!1939 lt!2334267))))

(declare-fun choose!45707 ((Set Context!10952)) List!64577)

(assert (=> d!1926738 (= lt!2334267 (choose!45707 z!1189))))

(assert (=> d!1926738 (= (toList!9876 z!1189) lt!2334267)))

(declare-fun b!6149520 () Bool)

(declare-fun content!12007 (List!64577) (Set Context!10952))

(assert (=> b!6149520 (= e!3747234 (= (content!12007 lt!2334267) z!1189))))

(assert (= (and d!1926738 res!2547366) b!6149520))

(declare-fun m!6989406 () Bool)

(assert (=> d!1926738 m!6989406))

(declare-fun m!6989408 () Bool)

(assert (=> d!1926738 m!6989408))

(declare-fun m!6989410 () Bool)

(assert (=> b!6149520 m!6989410))

(assert (=> b!6149223 d!1926738))

(declare-fun d!1926740 () Bool)

(assert (=> d!1926740 (= (flatMap!1597 lt!2334146 lambda!335322) (dynLambda!25405 lambda!335322 lt!2334153))))

(declare-fun lt!2334268 () Unit!157531)

(assert (=> d!1926740 (= lt!2334268 (choose!45704 lt!2334146 lt!2334153 lambda!335322))))

(assert (=> d!1926740 (= lt!2334146 (set.insert lt!2334153 (as set.empty (Set Context!10952))))))

(assert (=> d!1926740 (= (lemmaFlatMapOnSingletonSet!1123 lt!2334146 lt!2334153 lambda!335322) lt!2334268)))

(declare-fun b_lambda!234051 () Bool)

(assert (=> (not b_lambda!234051) (not d!1926740)))

(declare-fun bs!1524490 () Bool)

(assert (= bs!1524490 d!1926740))

(assert (=> bs!1524490 m!6989154))

(declare-fun m!6989412 () Bool)

(assert (=> bs!1524490 m!6989412))

(declare-fun m!6989414 () Bool)

(assert (=> bs!1524490 m!6989414))

(assert (=> bs!1524490 m!6989164))

(assert (=> b!6149243 d!1926740))

(declare-fun d!1926742 () Bool)

(assert (=> d!1926742 (= (nullable!6085 (regTwo!32697 (regOne!32696 r!7292))) (nullableFct!2049 (regTwo!32697 (regOne!32696 r!7292))))))

(declare-fun bs!1524491 () Bool)

(assert (= bs!1524491 d!1926742))

(declare-fun m!6989416 () Bool)

(assert (=> bs!1524491 m!6989416))

(assert (=> b!6149243 d!1926742))

(declare-fun d!1926744 () Bool)

(assert (=> d!1926744 (= (flatMap!1597 lt!2334146 lambda!335322) (choose!45705 lt!2334146 lambda!335322))))

(declare-fun bs!1524492 () Bool)

(assert (= bs!1524492 d!1926744))

(declare-fun m!6989418 () Bool)

(assert (=> bs!1524492 m!6989418))

(assert (=> b!6149243 d!1926744))

(declare-fun d!1926746 () Bool)

(assert (=> d!1926746 (= (flatMap!1597 lt!2334147 lambda!335322) (choose!45705 lt!2334147 lambda!335322))))

(declare-fun bs!1524493 () Bool)

(assert (= bs!1524493 d!1926746))

(declare-fun m!6989420 () Bool)

(assert (=> bs!1524493 m!6989420))

(assert (=> b!6149243 d!1926746))

(declare-fun b!6149521 () Bool)

(declare-fun e!3747237 () (Set Context!10952))

(declare-fun call!511343 () (Set Context!10952))

(assert (=> b!6149521 (= e!3747237 (set.union call!511343 (derivationStepZipperUp!1266 (Context!10953 (t!378062 (exprs!5976 lt!2334153))) (h!70900 s!2326))))))

(declare-fun b!6149522 () Bool)

(declare-fun e!3747235 () (Set Context!10952))

(assert (=> b!6149522 (= e!3747235 call!511343)))

(declare-fun d!1926748 () Bool)

(declare-fun c!1106706 () Bool)

(declare-fun e!3747236 () Bool)

(assert (=> d!1926748 (= c!1106706 e!3747236)))

(declare-fun res!2547367 () Bool)

(assert (=> d!1926748 (=> (not res!2547367) (not e!3747236))))

(assert (=> d!1926748 (= res!2547367 (is-Cons!64451 (exprs!5976 lt!2334153)))))

(assert (=> d!1926748 (= (derivationStepZipperUp!1266 lt!2334153 (h!70900 s!2326)) e!3747237)))

(declare-fun b!6149523 () Bool)

(assert (=> b!6149523 (= e!3747235 (as set.empty (Set Context!10952)))))

(declare-fun b!6149524 () Bool)

(assert (=> b!6149524 (= e!3747236 (nullable!6085 (h!70899 (exprs!5976 lt!2334153))))))

(declare-fun bm!511338 () Bool)

(assert (=> bm!511338 (= call!511343 (derivationStepZipperDown!1340 (h!70899 (exprs!5976 lt!2334153)) (Context!10953 (t!378062 (exprs!5976 lt!2334153))) (h!70900 s!2326)))))

(declare-fun b!6149525 () Bool)

(assert (=> b!6149525 (= e!3747237 e!3747235)))

(declare-fun c!1106707 () Bool)

(assert (=> b!6149525 (= c!1106707 (is-Cons!64451 (exprs!5976 lt!2334153)))))

(assert (= (and d!1926748 res!2547367) b!6149524))

(assert (= (and d!1926748 c!1106706) b!6149521))

(assert (= (and d!1926748 (not c!1106706)) b!6149525))

(assert (= (and b!6149525 c!1106707) b!6149522))

(assert (= (and b!6149525 (not c!1106707)) b!6149523))

(assert (= (or b!6149521 b!6149522) bm!511338))

(declare-fun m!6989422 () Bool)

(assert (=> b!6149521 m!6989422))

(declare-fun m!6989424 () Bool)

(assert (=> b!6149524 m!6989424))

(declare-fun m!6989426 () Bool)

(assert (=> bm!511338 m!6989426))

(assert (=> b!6149243 d!1926748))

(declare-fun call!511344 () (Set Context!10952))

(declare-fun b!6149526 () Bool)

(declare-fun e!3747240 () (Set Context!10952))

(assert (=> b!6149526 (= e!3747240 (set.union call!511344 (derivationStepZipperUp!1266 (Context!10953 (t!378062 (exprs!5976 lt!2334159))) (h!70900 s!2326))))))

(declare-fun b!6149527 () Bool)

(declare-fun e!3747238 () (Set Context!10952))

(assert (=> b!6149527 (= e!3747238 call!511344)))

(declare-fun d!1926750 () Bool)

(declare-fun c!1106708 () Bool)

(declare-fun e!3747239 () Bool)

(assert (=> d!1926750 (= c!1106708 e!3747239)))

(declare-fun res!2547368 () Bool)

(assert (=> d!1926750 (=> (not res!2547368) (not e!3747239))))

(assert (=> d!1926750 (= res!2547368 (is-Cons!64451 (exprs!5976 lt!2334159)))))

(assert (=> d!1926750 (= (derivationStepZipperUp!1266 lt!2334159 (h!70900 s!2326)) e!3747240)))

(declare-fun b!6149528 () Bool)

(assert (=> b!6149528 (= e!3747238 (as set.empty (Set Context!10952)))))

(declare-fun b!6149529 () Bool)

(assert (=> b!6149529 (= e!3747239 (nullable!6085 (h!70899 (exprs!5976 lt!2334159))))))

(declare-fun bm!511339 () Bool)

(assert (=> bm!511339 (= call!511344 (derivationStepZipperDown!1340 (h!70899 (exprs!5976 lt!2334159)) (Context!10953 (t!378062 (exprs!5976 lt!2334159))) (h!70900 s!2326)))))

(declare-fun b!6149530 () Bool)

(assert (=> b!6149530 (= e!3747240 e!3747238)))

(declare-fun c!1106709 () Bool)

(assert (=> b!6149530 (= c!1106709 (is-Cons!64451 (exprs!5976 lt!2334159)))))

(assert (= (and d!1926750 res!2547368) b!6149529))

(assert (= (and d!1926750 c!1106708) b!6149526))

(assert (= (and d!1926750 (not c!1106708)) b!6149530))

(assert (= (and b!6149530 c!1106709) b!6149527))

(assert (= (and b!6149530 (not c!1106709)) b!6149528))

(assert (= (or b!6149526 b!6149527) bm!511339))

(declare-fun m!6989428 () Bool)

(assert (=> b!6149526 m!6989428))

(declare-fun m!6989430 () Bool)

(assert (=> b!6149529 m!6989430))

(declare-fun m!6989432 () Bool)

(assert (=> bm!511339 m!6989432))

(assert (=> b!6149243 d!1926750))

(declare-fun d!1926752 () Bool)

(assert (=> d!1926752 (= (nullable!6085 (regOne!32697 (regOne!32696 r!7292))) (nullableFct!2049 (regOne!32697 (regOne!32696 r!7292))))))

(declare-fun bs!1524494 () Bool)

(assert (= bs!1524494 d!1926752))

(declare-fun m!6989434 () Bool)

(assert (=> bs!1524494 m!6989434))

(assert (=> b!6149243 d!1926752))

(declare-fun d!1926754 () Bool)

(assert (=> d!1926754 (= (flatMap!1597 lt!2334147 lambda!335322) (dynLambda!25405 lambda!335322 lt!2334159))))

(declare-fun lt!2334269 () Unit!157531)

(assert (=> d!1926754 (= lt!2334269 (choose!45704 lt!2334147 lt!2334159 lambda!335322))))

(assert (=> d!1926754 (= lt!2334147 (set.insert lt!2334159 (as set.empty (Set Context!10952))))))

(assert (=> d!1926754 (= (lemmaFlatMapOnSingletonSet!1123 lt!2334147 lt!2334159 lambda!335322) lt!2334269)))

(declare-fun b_lambda!234053 () Bool)

(assert (=> (not b_lambda!234053) (not d!1926754)))

(declare-fun bs!1524495 () Bool)

(assert (= bs!1524495 d!1926754))

(assert (=> bs!1524495 m!6989158))

(declare-fun m!6989436 () Bool)

(assert (=> bs!1524495 m!6989436))

(declare-fun m!6989438 () Bool)

(assert (=> bs!1524495 m!6989438))

(assert (=> bs!1524495 m!6989166))

(assert (=> b!6149243 d!1926754))

(declare-fun b!6149549 () Bool)

(declare-fun res!2547382 () Bool)

(declare-fun e!3747252 () Bool)

(assert (=> b!6149549 (=> (not res!2547382) (not e!3747252))))

(declare-fun lt!2334277 () Option!15983)

(declare-fun get!22240 (Option!15983) tuple2!66142)

(assert (=> b!6149549 (= res!2547382 (matchR!8275 (regTwo!32696 r!7292) (_2!36374 (get!22240 lt!2334277))))))

(declare-fun b!6149550 () Bool)

(declare-fun e!3747251 () Bool)

(assert (=> b!6149550 (= e!3747251 (matchR!8275 (regTwo!32696 r!7292) s!2326))))

(declare-fun d!1926756 () Bool)

(declare-fun e!3747253 () Bool)

(assert (=> d!1926756 e!3747253))

(declare-fun res!2547380 () Bool)

(assert (=> d!1926756 (=> res!2547380 e!3747253)))

(assert (=> d!1926756 (= res!2547380 e!3747252)))

(declare-fun res!2547381 () Bool)

(assert (=> d!1926756 (=> (not res!2547381) (not e!3747252))))

(assert (=> d!1926756 (= res!2547381 (isDefined!12686 lt!2334277))))

(declare-fun e!3747254 () Option!15983)

(assert (=> d!1926756 (= lt!2334277 e!3747254)))

(declare-fun c!1106715 () Bool)

(assert (=> d!1926756 (= c!1106715 e!3747251)))

(declare-fun res!2547383 () Bool)

(assert (=> d!1926756 (=> (not res!2547383) (not e!3747251))))

(assert (=> d!1926756 (= res!2547383 (matchR!8275 (regOne!32696 r!7292) Nil!64452))))

(assert (=> d!1926756 (validRegex!7828 (regOne!32696 r!7292))))

(assert (=> d!1926756 (= (findConcatSeparation!2397 (regOne!32696 r!7292) (regTwo!32696 r!7292) Nil!64452 s!2326 s!2326) lt!2334277)))

(declare-fun b!6149551 () Bool)

(assert (=> b!6149551 (= e!3747254 (Some!15982 (tuple2!66143 Nil!64452 s!2326)))))

(declare-fun b!6149552 () Bool)

(declare-fun ++!14178 (List!64576 List!64576) List!64576)

(assert (=> b!6149552 (= e!3747252 (= (++!14178 (_1!36374 (get!22240 lt!2334277)) (_2!36374 (get!22240 lt!2334277))) s!2326))))

(declare-fun b!6149553 () Bool)

(declare-fun res!2547379 () Bool)

(assert (=> b!6149553 (=> (not res!2547379) (not e!3747252))))

(assert (=> b!6149553 (= res!2547379 (matchR!8275 (regOne!32696 r!7292) (_1!36374 (get!22240 lt!2334277))))))

(declare-fun b!6149554 () Bool)

(declare-fun lt!2334276 () Unit!157531)

(declare-fun lt!2334278 () Unit!157531)

(assert (=> b!6149554 (= lt!2334276 lt!2334278)))

(assert (=> b!6149554 (= (++!14178 (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452)) (t!378063 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2273 (List!64576 C!32454 List!64576 List!64576) Unit!157531)

(assert (=> b!6149554 (= lt!2334278 (lemmaMoveElementToOtherListKeepsConcatEq!2273 Nil!64452 (h!70900 s!2326) (t!378063 s!2326) s!2326))))

(declare-fun e!3747255 () Option!15983)

(assert (=> b!6149554 (= e!3747255 (findConcatSeparation!2397 (regOne!32696 r!7292) (regTwo!32696 r!7292) (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452)) (t!378063 s!2326) s!2326))))

(declare-fun b!6149555 () Bool)

(assert (=> b!6149555 (= e!3747255 None!15982)))

(declare-fun b!6149556 () Bool)

(assert (=> b!6149556 (= e!3747253 (not (isDefined!12686 lt!2334277)))))

(declare-fun b!6149557 () Bool)

(assert (=> b!6149557 (= e!3747254 e!3747255)))

(declare-fun c!1106714 () Bool)

(assert (=> b!6149557 (= c!1106714 (is-Nil!64452 s!2326))))

(assert (= (and d!1926756 res!2547383) b!6149550))

(assert (= (and d!1926756 c!1106715) b!6149551))

(assert (= (and d!1926756 (not c!1106715)) b!6149557))

(assert (= (and b!6149557 c!1106714) b!6149555))

(assert (= (and b!6149557 (not c!1106714)) b!6149554))

(assert (= (and d!1926756 res!2547381) b!6149553))

(assert (= (and b!6149553 res!2547379) b!6149549))

(assert (= (and b!6149549 res!2547382) b!6149552))

(assert (= (and d!1926756 (not res!2547380)) b!6149556))

(declare-fun m!6989440 () Bool)

(assert (=> b!6149556 m!6989440))

(assert (=> d!1926756 m!6989440))

(declare-fun m!6989442 () Bool)

(assert (=> d!1926756 m!6989442))

(declare-fun m!6989444 () Bool)

(assert (=> d!1926756 m!6989444))

(declare-fun m!6989446 () Bool)

(assert (=> b!6149552 m!6989446))

(declare-fun m!6989448 () Bool)

(assert (=> b!6149552 m!6989448))

(assert (=> b!6149549 m!6989446))

(declare-fun m!6989450 () Bool)

(assert (=> b!6149549 m!6989450))

(declare-fun m!6989452 () Bool)

(assert (=> b!6149550 m!6989452))

(declare-fun m!6989454 () Bool)

(assert (=> b!6149554 m!6989454))

(assert (=> b!6149554 m!6989454))

(declare-fun m!6989456 () Bool)

(assert (=> b!6149554 m!6989456))

(declare-fun m!6989458 () Bool)

(assert (=> b!6149554 m!6989458))

(assert (=> b!6149554 m!6989454))

(declare-fun m!6989460 () Bool)

(assert (=> b!6149554 m!6989460))

(assert (=> b!6149553 m!6989446))

(declare-fun m!6989462 () Bool)

(assert (=> b!6149553 m!6989462))

(assert (=> b!6149232 d!1926756))

(declare-fun d!1926758 () Bool)

(declare-fun choose!45708 (Int) Bool)

(assert (=> d!1926758 (= (Exists!3162 lambda!335320) (choose!45708 lambda!335320))))

(declare-fun bs!1524496 () Bool)

(assert (= bs!1524496 d!1926758))

(declare-fun m!6989464 () Bool)

(assert (=> bs!1524496 m!6989464))

(assert (=> b!6149232 d!1926758))

(declare-fun d!1926760 () Bool)

(assert (=> d!1926760 (= (Exists!3162 lambda!335321) (choose!45708 lambda!335321))))

(declare-fun bs!1524497 () Bool)

(assert (= bs!1524497 d!1926760))

(declare-fun m!6989466 () Bool)

(assert (=> bs!1524497 m!6989466))

(assert (=> b!6149232 d!1926760))

(declare-fun bs!1524498 () Bool)

(declare-fun d!1926762 () Bool)

(assert (= bs!1524498 (and d!1926762 b!6149232)))

(declare-fun lambda!335347 () Int)

(assert (=> bs!1524498 (= lambda!335347 lambda!335320)))

(assert (=> bs!1524498 (not (= lambda!335347 lambda!335321))))

(assert (=> d!1926762 true))

(assert (=> d!1926762 true))

(assert (=> d!1926762 true))

(assert (=> d!1926762 (= (isDefined!12686 (findConcatSeparation!2397 (regOne!32696 r!7292) (regTwo!32696 r!7292) Nil!64452 s!2326 s!2326)) (Exists!3162 lambda!335347))))

(declare-fun lt!2334281 () Unit!157531)

(declare-fun choose!45709 (Regex!16092 Regex!16092 List!64576) Unit!157531)

(assert (=> d!1926762 (= lt!2334281 (choose!45709 (regOne!32696 r!7292) (regTwo!32696 r!7292) s!2326))))

(assert (=> d!1926762 (validRegex!7828 (regOne!32696 r!7292))))

(assert (=> d!1926762 (= (lemmaFindConcatSeparationEquivalentToExists!2161 (regOne!32696 r!7292) (regTwo!32696 r!7292) s!2326) lt!2334281)))

(declare-fun bs!1524499 () Bool)

(assert (= bs!1524499 d!1926762))

(assert (=> bs!1524499 m!6989128))

(assert (=> bs!1524499 m!6989128))

(assert (=> bs!1524499 m!6989130))

(declare-fun m!6989468 () Bool)

(assert (=> bs!1524499 m!6989468))

(declare-fun m!6989470 () Bool)

(assert (=> bs!1524499 m!6989470))

(assert (=> bs!1524499 m!6989444))

(assert (=> b!6149232 d!1926762))

(declare-fun bs!1524500 () Bool)

(declare-fun d!1926764 () Bool)

(assert (= bs!1524500 (and d!1926764 b!6149232)))

(declare-fun lambda!335352 () Int)

(assert (=> bs!1524500 (= lambda!335352 lambda!335320)))

(assert (=> bs!1524500 (not (= lambda!335352 lambda!335321))))

(declare-fun bs!1524501 () Bool)

(assert (= bs!1524501 (and d!1926764 d!1926762)))

(assert (=> bs!1524501 (= lambda!335352 lambda!335347)))

(assert (=> d!1926764 true))

(assert (=> d!1926764 true))

(assert (=> d!1926764 true))

(declare-fun lambda!335353 () Int)

(assert (=> bs!1524500 (not (= lambda!335353 lambda!335320))))

(assert (=> bs!1524500 (= lambda!335353 lambda!335321)))

(assert (=> bs!1524501 (not (= lambda!335353 lambda!335347))))

(declare-fun bs!1524502 () Bool)

(assert (= bs!1524502 d!1926764))

(assert (=> bs!1524502 (not (= lambda!335353 lambda!335352))))

(assert (=> d!1926764 true))

(assert (=> d!1926764 true))

(assert (=> d!1926764 true))

(assert (=> d!1926764 (= (Exists!3162 lambda!335352) (Exists!3162 lambda!335353))))

(declare-fun lt!2334284 () Unit!157531)

(declare-fun choose!45710 (Regex!16092 Regex!16092 List!64576) Unit!157531)

(assert (=> d!1926764 (= lt!2334284 (choose!45710 (regOne!32696 r!7292) (regTwo!32696 r!7292) s!2326))))

(assert (=> d!1926764 (validRegex!7828 (regOne!32696 r!7292))))

(assert (=> d!1926764 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1699 (regOne!32696 r!7292) (regTwo!32696 r!7292) s!2326) lt!2334284)))

(declare-fun m!6989472 () Bool)

(assert (=> bs!1524502 m!6989472))

(declare-fun m!6989474 () Bool)

(assert (=> bs!1524502 m!6989474))

(declare-fun m!6989476 () Bool)

(assert (=> bs!1524502 m!6989476))

(assert (=> bs!1524502 m!6989444))

(assert (=> b!6149232 d!1926764))

(declare-fun d!1926766 () Bool)

(declare-fun isEmpty!36415 (Option!15983) Bool)

(assert (=> d!1926766 (= (isDefined!12686 (findConcatSeparation!2397 (regOne!32696 r!7292) (regTwo!32696 r!7292) Nil!64452 s!2326 s!2326)) (not (isEmpty!36415 (findConcatSeparation!2397 (regOne!32696 r!7292) (regTwo!32696 r!7292) Nil!64452 s!2326 s!2326))))))

(declare-fun bs!1524503 () Bool)

(assert (= bs!1524503 d!1926766))

(assert (=> bs!1524503 m!6989128))

(declare-fun m!6989478 () Bool)

(assert (=> bs!1524503 m!6989478))

(assert (=> b!6149232 d!1926766))

(declare-fun bs!1524504 () Bool)

(declare-fun d!1926768 () Bool)

(assert (= bs!1524504 (and d!1926768 d!1926708)))

(declare-fun lambda!335354 () Int)

(assert (=> bs!1524504 (= lambda!335354 lambda!335340)))

(declare-fun bs!1524505 () Bool)

(assert (= bs!1524505 (and d!1926768 d!1926728)))

(assert (=> bs!1524505 (= lambda!335354 lambda!335343)))

(declare-fun bs!1524506 () Bool)

(assert (= bs!1524506 (and d!1926768 d!1926736)))

(assert (=> bs!1524506 (= lambda!335354 lambda!335344)))

(assert (=> d!1926768 (= (inv!83478 (h!70901 zl!343)) (forall!15213 (exprs!5976 (h!70901 zl!343)) lambda!335354))))

(declare-fun bs!1524507 () Bool)

(assert (= bs!1524507 d!1926768))

(declare-fun m!6989480 () Bool)

(assert (=> bs!1524507 m!6989480))

(assert (=> b!6149222 d!1926768))

(declare-fun e!3747262 () Bool)

(declare-fun d!1926770 () Bool)

(assert (=> d!1926770 (= (matchZipper!2104 (set.union lt!2334151 lt!2334149) (t!378063 s!2326)) e!3747262)))

(declare-fun res!2547396 () Bool)

(assert (=> d!1926770 (=> res!2547396 e!3747262)))

(assert (=> d!1926770 (= res!2547396 (matchZipper!2104 lt!2334151 (t!378063 s!2326)))))

(declare-fun lt!2334285 () Unit!157531)

(assert (=> d!1926770 (= lt!2334285 (choose!45706 lt!2334151 lt!2334149 (t!378063 s!2326)))))

(assert (=> d!1926770 (= (lemmaZipperConcatMatchesSameAsBothZippers!923 lt!2334151 lt!2334149 (t!378063 s!2326)) lt!2334285)))

(declare-fun b!6149570 () Bool)

(assert (=> b!6149570 (= e!3747262 (matchZipper!2104 lt!2334149 (t!378063 s!2326)))))

(assert (= (and d!1926770 (not res!2547396)) b!6149570))

(assert (=> d!1926770 m!6989114))

(assert (=> d!1926770 m!6989112))

(declare-fun m!6989482 () Bool)

(assert (=> d!1926770 m!6989482))

(assert (=> b!6149570 m!6989102))

(assert (=> b!6149241 d!1926770))

(assert (=> b!6149241 d!1926712))

(declare-fun d!1926772 () Bool)

(declare-fun c!1106716 () Bool)

(assert (=> d!1926772 (= c!1106716 (isEmpty!36414 (t!378063 s!2326)))))

(declare-fun e!3747263 () Bool)

(assert (=> d!1926772 (= (matchZipper!2104 (set.union lt!2334151 lt!2334149) (t!378063 s!2326)) e!3747263)))

(declare-fun b!6149571 () Bool)

(assert (=> b!6149571 (= e!3747263 (nullableZipper!1873 (set.union lt!2334151 lt!2334149)))))

(declare-fun b!6149572 () Bool)

(assert (=> b!6149572 (= e!3747263 (matchZipper!2104 (derivationStepZipper!2065 (set.union lt!2334151 lt!2334149) (head!12705 (t!378063 s!2326))) (tail!11790 (t!378063 s!2326))))))

(assert (= (and d!1926772 c!1106716) b!6149571))

(assert (= (and d!1926772 (not c!1106716)) b!6149572))

(assert (=> d!1926772 m!6989322))

(declare-fun m!6989484 () Bool)

(assert (=> b!6149571 m!6989484))

(assert (=> b!6149572 m!6989326))

(assert (=> b!6149572 m!6989326))

(declare-fun m!6989486 () Bool)

(assert (=> b!6149572 m!6989486))

(assert (=> b!6149572 m!6989330))

(assert (=> b!6149572 m!6989486))

(assert (=> b!6149572 m!6989330))

(declare-fun m!6989488 () Bool)

(assert (=> b!6149572 m!6989488))

(assert (=> b!6149241 d!1926772))

(declare-fun bs!1524508 () Bool)

(declare-fun b!6149610 () Bool)

(assert (= bs!1524508 (and b!6149610 b!6149232)))

(declare-fun lambda!335359 () Int)

(assert (=> bs!1524508 (not (= lambda!335359 lambda!335321))))

(declare-fun bs!1524509 () Bool)

(assert (= bs!1524509 (and b!6149610 d!1926762)))

(assert (=> bs!1524509 (not (= lambda!335359 lambda!335347))))

(declare-fun bs!1524510 () Bool)

(assert (= bs!1524510 (and b!6149610 d!1926764)))

(assert (=> bs!1524510 (not (= lambda!335359 lambda!335352))))

(assert (=> bs!1524510 (not (= lambda!335359 lambda!335353))))

(assert (=> bs!1524508 (not (= lambda!335359 lambda!335320))))

(assert (=> b!6149610 true))

(assert (=> b!6149610 true))

(declare-fun bs!1524511 () Bool)

(declare-fun b!6149607 () Bool)

(assert (= bs!1524511 (and b!6149607 b!6149232)))

(declare-fun lambda!335360 () Int)

(assert (=> bs!1524511 (= lambda!335360 lambda!335321)))

(declare-fun bs!1524512 () Bool)

(assert (= bs!1524512 (and b!6149607 d!1926762)))

(assert (=> bs!1524512 (not (= lambda!335360 lambda!335347))))

(declare-fun bs!1524513 () Bool)

(assert (= bs!1524513 (and b!6149607 d!1926764)))

(assert (=> bs!1524513 (not (= lambda!335360 lambda!335352))))

(assert (=> bs!1524513 (= lambda!335360 lambda!335353)))

(assert (=> bs!1524511 (not (= lambda!335360 lambda!335320))))

(declare-fun bs!1524514 () Bool)

(assert (= bs!1524514 (and b!6149607 b!6149610)))

(assert (=> bs!1524514 (not (= lambda!335360 lambda!335359))))

(assert (=> b!6149607 true))

(assert (=> b!6149607 true))

(declare-fun b!6149605 () Bool)

(declare-fun e!3747288 () Bool)

(declare-fun e!3747286 () Bool)

(assert (=> b!6149605 (= e!3747288 e!3747286)))

(declare-fun res!2547415 () Bool)

(assert (=> b!6149605 (= res!2547415 (not (is-EmptyLang!16092 r!7292)))))

(assert (=> b!6149605 (=> (not res!2547415) (not e!3747286))))

(declare-fun b!6149606 () Bool)

(declare-fun c!1106725 () Bool)

(assert (=> b!6149606 (= c!1106725 (is-ElementMatch!16092 r!7292))))

(declare-fun e!3747287 () Bool)

(assert (=> b!6149606 (= e!3747286 e!3747287)))

(declare-fun e!3747282 () Bool)

(declare-fun call!511350 () Bool)

(assert (=> b!6149607 (= e!3747282 call!511350)))

(declare-fun b!6149608 () Bool)

(assert (=> b!6149608 (= e!3747287 (= s!2326 (Cons!64452 (c!1106631 r!7292) Nil!64452)))))

(declare-fun d!1926774 () Bool)

(declare-fun c!1106727 () Bool)

(assert (=> d!1926774 (= c!1106727 (is-EmptyExpr!16092 r!7292))))

(assert (=> d!1926774 (= (matchRSpec!3193 r!7292 s!2326) e!3747288)))

(declare-fun b!6149609 () Bool)

(declare-fun e!3747284 () Bool)

(declare-fun e!3747283 () Bool)

(assert (=> b!6149609 (= e!3747284 e!3747283)))

(declare-fun res!2547413 () Bool)

(assert (=> b!6149609 (= res!2547413 (matchRSpec!3193 (regOne!32697 r!7292) s!2326))))

(assert (=> b!6149609 (=> res!2547413 e!3747283)))

(declare-fun e!3747285 () Bool)

(assert (=> b!6149610 (= e!3747285 call!511350)))

(declare-fun b!6149611 () Bool)

(assert (=> b!6149611 (= e!3747283 (matchRSpec!3193 (regTwo!32697 r!7292) s!2326))))

(declare-fun b!6149612 () Bool)

(declare-fun res!2547414 () Bool)

(assert (=> b!6149612 (=> res!2547414 e!3747285)))

(declare-fun call!511349 () Bool)

(assert (=> b!6149612 (= res!2547414 call!511349)))

(assert (=> b!6149612 (= e!3747282 e!3747285)))

(declare-fun b!6149613 () Bool)

(assert (=> b!6149613 (= e!3747288 call!511349)))

(declare-fun b!6149614 () Bool)

(assert (=> b!6149614 (= e!3747284 e!3747282)))

(declare-fun c!1106728 () Bool)

(assert (=> b!6149614 (= c!1106728 (is-Star!16092 r!7292))))

(declare-fun bm!511344 () Bool)

(assert (=> bm!511344 (= call!511350 (Exists!3162 (ite c!1106728 lambda!335359 lambda!335360)))))

(declare-fun bm!511345 () Bool)

(assert (=> bm!511345 (= call!511349 (isEmpty!36414 s!2326))))

(declare-fun b!6149615 () Bool)

(declare-fun c!1106726 () Bool)

(assert (=> b!6149615 (= c!1106726 (is-Union!16092 r!7292))))

(assert (=> b!6149615 (= e!3747287 e!3747284)))

(assert (= (and d!1926774 c!1106727) b!6149613))

(assert (= (and d!1926774 (not c!1106727)) b!6149605))

(assert (= (and b!6149605 res!2547415) b!6149606))

(assert (= (and b!6149606 c!1106725) b!6149608))

(assert (= (and b!6149606 (not c!1106725)) b!6149615))

(assert (= (and b!6149615 c!1106726) b!6149609))

(assert (= (and b!6149615 (not c!1106726)) b!6149614))

(assert (= (and b!6149609 (not res!2547413)) b!6149611))

(assert (= (and b!6149614 c!1106728) b!6149612))

(assert (= (and b!6149614 (not c!1106728)) b!6149607))

(assert (= (and b!6149612 (not res!2547414)) b!6149610))

(assert (= (or b!6149610 b!6149607) bm!511344))

(assert (= (or b!6149613 b!6149612) bm!511345))

(declare-fun m!6989490 () Bool)

(assert (=> b!6149609 m!6989490))

(declare-fun m!6989492 () Bool)

(assert (=> b!6149611 m!6989492))

(declare-fun m!6989494 () Bool)

(assert (=> bm!511344 m!6989494))

(declare-fun m!6989496 () Bool)

(assert (=> bm!511345 m!6989496))

(assert (=> b!6149239 d!1926774))

(declare-fun b!6149644 () Bool)

(declare-fun e!3747305 () Bool)

(declare-fun e!3747304 () Bool)

(assert (=> b!6149644 (= e!3747305 e!3747304)))

(declare-fun res!2547439 () Bool)

(assert (=> b!6149644 (=> (not res!2547439) (not e!3747304))))

(declare-fun lt!2334288 () Bool)

(assert (=> b!6149644 (= res!2547439 (not lt!2334288))))

(declare-fun b!6149645 () Bool)

(declare-fun e!3747303 () Bool)

(declare-fun derivativeStep!4812 (Regex!16092 C!32454) Regex!16092)

(assert (=> b!6149645 (= e!3747303 (matchR!8275 (derivativeStep!4812 r!7292 (head!12705 s!2326)) (tail!11790 s!2326)))))

(declare-fun b!6149646 () Bool)

(declare-fun res!2547435 () Bool)

(declare-fun e!3747308 () Bool)

(assert (=> b!6149646 (=> (not res!2547435) (not e!3747308))))

(assert (=> b!6149646 (= res!2547435 (isEmpty!36414 (tail!11790 s!2326)))))

(declare-fun b!6149647 () Bool)

(declare-fun e!3747309 () Bool)

(assert (=> b!6149647 (= e!3747309 (not lt!2334288))))

(declare-fun b!6149648 () Bool)

(declare-fun res!2547436 () Bool)

(declare-fun e!3747307 () Bool)

(assert (=> b!6149648 (=> res!2547436 e!3747307)))

(assert (=> b!6149648 (= res!2547436 (not (isEmpty!36414 (tail!11790 s!2326))))))

(declare-fun b!6149649 () Bool)

(declare-fun res!2547438 () Bool)

(assert (=> b!6149649 (=> res!2547438 e!3747305)))

(assert (=> b!6149649 (= res!2547438 e!3747308)))

(declare-fun res!2547432 () Bool)

(assert (=> b!6149649 (=> (not res!2547432) (not e!3747308))))

(assert (=> b!6149649 (= res!2547432 lt!2334288)))

(declare-fun bm!511348 () Bool)

(declare-fun call!511353 () Bool)

(assert (=> bm!511348 (= call!511353 (isEmpty!36414 s!2326))))

(declare-fun b!6149650 () Bool)

(declare-fun e!3747306 () Bool)

(assert (=> b!6149650 (= e!3747306 e!3747309)))

(declare-fun c!1106737 () Bool)

(assert (=> b!6149650 (= c!1106737 (is-EmptyLang!16092 r!7292))))

(declare-fun b!6149651 () Bool)

(assert (=> b!6149651 (= e!3747308 (= (head!12705 s!2326) (c!1106631 r!7292)))))

(declare-fun b!6149652 () Bool)

(assert (=> b!6149652 (= e!3747307 (not (= (head!12705 s!2326) (c!1106631 r!7292))))))

(declare-fun b!6149653 () Bool)

(declare-fun res!2547437 () Bool)

(assert (=> b!6149653 (=> res!2547437 e!3747305)))

(assert (=> b!6149653 (= res!2547437 (not (is-ElementMatch!16092 r!7292)))))

(assert (=> b!6149653 (= e!3747309 e!3747305)))

(declare-fun b!6149654 () Bool)

(assert (=> b!6149654 (= e!3747306 (= lt!2334288 call!511353))))

(declare-fun b!6149655 () Bool)

(assert (=> b!6149655 (= e!3747303 (nullable!6085 r!7292))))

(declare-fun b!6149656 () Bool)

(assert (=> b!6149656 (= e!3747304 e!3747307)))

(declare-fun res!2547433 () Bool)

(assert (=> b!6149656 (=> res!2547433 e!3747307)))

(assert (=> b!6149656 (= res!2547433 call!511353)))

(declare-fun b!6149657 () Bool)

(declare-fun res!2547434 () Bool)

(assert (=> b!6149657 (=> (not res!2547434) (not e!3747308))))

(assert (=> b!6149657 (= res!2547434 (not call!511353))))

(declare-fun d!1926776 () Bool)

(assert (=> d!1926776 e!3747306))

(declare-fun c!1106736 () Bool)

(assert (=> d!1926776 (= c!1106736 (is-EmptyExpr!16092 r!7292))))

(assert (=> d!1926776 (= lt!2334288 e!3747303)))

(declare-fun c!1106735 () Bool)

(assert (=> d!1926776 (= c!1106735 (isEmpty!36414 s!2326))))

(assert (=> d!1926776 (validRegex!7828 r!7292)))

(assert (=> d!1926776 (= (matchR!8275 r!7292 s!2326) lt!2334288)))

(assert (= (and d!1926776 c!1106735) b!6149655))

(assert (= (and d!1926776 (not c!1106735)) b!6149645))

(assert (= (and d!1926776 c!1106736) b!6149654))

(assert (= (and d!1926776 (not c!1106736)) b!6149650))

(assert (= (and b!6149650 c!1106737) b!6149647))

(assert (= (and b!6149650 (not c!1106737)) b!6149653))

(assert (= (and b!6149653 (not res!2547437)) b!6149649))

(assert (= (and b!6149649 res!2547432) b!6149657))

(assert (= (and b!6149657 res!2547434) b!6149646))

(assert (= (and b!6149646 res!2547435) b!6149651))

(assert (= (and b!6149649 (not res!2547438)) b!6149644))

(assert (= (and b!6149644 res!2547439) b!6149656))

(assert (= (and b!6149656 (not res!2547433)) b!6149648))

(assert (= (and b!6149648 (not res!2547436)) b!6149652))

(assert (= (or b!6149654 b!6149656 b!6149657) bm!511348))

(declare-fun m!6989498 () Bool)

(assert (=> b!6149655 m!6989498))

(declare-fun m!6989500 () Bool)

(assert (=> b!6149646 m!6989500))

(assert (=> b!6149646 m!6989500))

(declare-fun m!6989502 () Bool)

(assert (=> b!6149646 m!6989502))

(declare-fun m!6989504 () Bool)

(assert (=> b!6149652 m!6989504))

(assert (=> b!6149651 m!6989504))

(assert (=> b!6149648 m!6989500))

(assert (=> b!6149648 m!6989500))

(assert (=> b!6149648 m!6989502))

(assert (=> d!1926776 m!6989496))

(assert (=> d!1926776 m!6989116))

(assert (=> b!6149645 m!6989504))

(assert (=> b!6149645 m!6989504))

(declare-fun m!6989506 () Bool)

(assert (=> b!6149645 m!6989506))

(assert (=> b!6149645 m!6989500))

(assert (=> b!6149645 m!6989506))

(assert (=> b!6149645 m!6989500))

(declare-fun m!6989508 () Bool)

(assert (=> b!6149645 m!6989508))

(assert (=> bm!511348 m!6989496))

(assert (=> b!6149239 d!1926776))

(declare-fun d!1926778 () Bool)

(assert (=> d!1926778 (= (matchR!8275 r!7292 s!2326) (matchRSpec!3193 r!7292 s!2326))))

(declare-fun lt!2334291 () Unit!157531)

(declare-fun choose!45711 (Regex!16092 List!64576) Unit!157531)

(assert (=> d!1926778 (= lt!2334291 (choose!45711 r!7292 s!2326))))

(assert (=> d!1926778 (validRegex!7828 r!7292)))

(assert (=> d!1926778 (= (mainMatchTheorem!3193 r!7292 s!2326) lt!2334291)))

(declare-fun bs!1524515 () Bool)

(assert (= bs!1524515 d!1926778))

(assert (=> bs!1524515 m!6989176))

(assert (=> bs!1524515 m!6989174))

(declare-fun m!6989510 () Bool)

(assert (=> bs!1524515 m!6989510))

(assert (=> bs!1524515 m!6989116))

(assert (=> b!6149239 d!1926778))

(declare-fun bs!1524516 () Bool)

(declare-fun d!1926780 () Bool)

(assert (= bs!1524516 (and d!1926780 d!1926708)))

(declare-fun lambda!335363 () Int)

(assert (=> bs!1524516 (= lambda!335363 lambda!335340)))

(declare-fun bs!1524517 () Bool)

(assert (= bs!1524517 (and d!1926780 d!1926728)))

(assert (=> bs!1524517 (= lambda!335363 lambda!335343)))

(declare-fun bs!1524518 () Bool)

(assert (= bs!1524518 (and d!1926780 d!1926736)))

(assert (=> bs!1524518 (= lambda!335363 lambda!335344)))

(declare-fun bs!1524519 () Bool)

(assert (= bs!1524519 (and d!1926780 d!1926768)))

(assert (=> bs!1524519 (= lambda!335363 lambda!335354)))

(declare-fun e!3747324 () Bool)

(assert (=> d!1926780 e!3747324))

(declare-fun res!2547444 () Bool)

(assert (=> d!1926780 (=> (not res!2547444) (not e!3747324))))

(declare-fun lt!2334294 () Regex!16092)

(assert (=> d!1926780 (= res!2547444 (validRegex!7828 lt!2334294))))

(declare-fun e!3747327 () Regex!16092)

(assert (=> d!1926780 (= lt!2334294 e!3747327)))

(declare-fun c!1106748 () Bool)

(declare-fun e!3747326 () Bool)

(assert (=> d!1926780 (= c!1106748 e!3747326)))

(declare-fun res!2547445 () Bool)

(assert (=> d!1926780 (=> (not res!2547445) (not e!3747326))))

(assert (=> d!1926780 (= res!2547445 (is-Cons!64451 (unfocusZipperList!1513 zl!343)))))

(assert (=> d!1926780 (forall!15213 (unfocusZipperList!1513 zl!343) lambda!335363)))

(assert (=> d!1926780 (= (generalisedUnion!1936 (unfocusZipperList!1513 zl!343)) lt!2334294)))

(declare-fun b!6149678 () Bool)

(declare-fun e!3747322 () Regex!16092)

(assert (=> b!6149678 (= e!3747327 e!3747322)))

(declare-fun c!1106747 () Bool)

(assert (=> b!6149678 (= c!1106747 (is-Cons!64451 (unfocusZipperList!1513 zl!343)))))

(declare-fun b!6149679 () Bool)

(declare-fun e!3747325 () Bool)

(declare-fun isEmptyLang!1519 (Regex!16092) Bool)

(assert (=> b!6149679 (= e!3747325 (isEmptyLang!1519 lt!2334294))))

(declare-fun b!6149680 () Bool)

(declare-fun e!3747323 () Bool)

(assert (=> b!6149680 (= e!3747325 e!3747323)))

(declare-fun c!1106746 () Bool)

(assert (=> b!6149680 (= c!1106746 (isEmpty!36411 (tail!11791 (unfocusZipperList!1513 zl!343))))))

(declare-fun b!6149681 () Bool)

(assert (=> b!6149681 (= e!3747326 (isEmpty!36411 (t!378062 (unfocusZipperList!1513 zl!343))))))

(declare-fun b!6149682 () Bool)

(assert (=> b!6149682 (= e!3747323 (= lt!2334294 (head!12706 (unfocusZipperList!1513 zl!343))))))

(declare-fun b!6149683 () Bool)

(assert (=> b!6149683 (= e!3747324 e!3747325)))

(declare-fun c!1106749 () Bool)

(assert (=> b!6149683 (= c!1106749 (isEmpty!36411 (unfocusZipperList!1513 zl!343)))))

(declare-fun b!6149684 () Bool)

(declare-fun isUnion!949 (Regex!16092) Bool)

(assert (=> b!6149684 (= e!3747323 (isUnion!949 lt!2334294))))

(declare-fun b!6149685 () Bool)

(assert (=> b!6149685 (= e!3747327 (h!70899 (unfocusZipperList!1513 zl!343)))))

(declare-fun b!6149686 () Bool)

(assert (=> b!6149686 (= e!3747322 (Union!16092 (h!70899 (unfocusZipperList!1513 zl!343)) (generalisedUnion!1936 (t!378062 (unfocusZipperList!1513 zl!343)))))))

(declare-fun b!6149687 () Bool)

(assert (=> b!6149687 (= e!3747322 EmptyLang!16092)))

(assert (= (and d!1926780 res!2547445) b!6149681))

(assert (= (and d!1926780 c!1106748) b!6149685))

(assert (= (and d!1926780 (not c!1106748)) b!6149678))

(assert (= (and b!6149678 c!1106747) b!6149686))

(assert (= (and b!6149678 (not c!1106747)) b!6149687))

(assert (= (and d!1926780 res!2547444) b!6149683))

(assert (= (and b!6149683 c!1106749) b!6149679))

(assert (= (and b!6149683 (not c!1106749)) b!6149680))

(assert (= (and b!6149680 c!1106746) b!6149682))

(assert (= (and b!6149680 (not c!1106746)) b!6149684))

(assert (=> b!6149683 m!6989118))

(declare-fun m!6989512 () Bool)

(assert (=> b!6149683 m!6989512))

(assert (=> b!6149680 m!6989118))

(declare-fun m!6989514 () Bool)

(assert (=> b!6149680 m!6989514))

(assert (=> b!6149680 m!6989514))

(declare-fun m!6989516 () Bool)

(assert (=> b!6149680 m!6989516))

(assert (=> b!6149682 m!6989118))

(declare-fun m!6989518 () Bool)

(assert (=> b!6149682 m!6989518))

(declare-fun m!6989520 () Bool)

(assert (=> b!6149679 m!6989520))

(declare-fun m!6989522 () Bool)

(assert (=> b!6149681 m!6989522))

(declare-fun m!6989524 () Bool)

(assert (=> b!6149686 m!6989524))

(declare-fun m!6989526 () Bool)

(assert (=> d!1926780 m!6989526))

(assert (=> d!1926780 m!6989118))

(declare-fun m!6989528 () Bool)

(assert (=> d!1926780 m!6989528))

(declare-fun m!6989530 () Bool)

(assert (=> b!6149684 m!6989530))

(assert (=> b!6149240 d!1926780))

(declare-fun bs!1524520 () Bool)

(declare-fun d!1926782 () Bool)

(assert (= bs!1524520 (and d!1926782 d!1926780)))

(declare-fun lambda!335366 () Int)

(assert (=> bs!1524520 (= lambda!335366 lambda!335363)))

(declare-fun bs!1524521 () Bool)

(assert (= bs!1524521 (and d!1926782 d!1926768)))

(assert (=> bs!1524521 (= lambda!335366 lambda!335354)))

(declare-fun bs!1524522 () Bool)

(assert (= bs!1524522 (and d!1926782 d!1926736)))

(assert (=> bs!1524522 (= lambda!335366 lambda!335344)))

(declare-fun bs!1524523 () Bool)

(assert (= bs!1524523 (and d!1926782 d!1926728)))

(assert (=> bs!1524523 (= lambda!335366 lambda!335343)))

(declare-fun bs!1524524 () Bool)

(assert (= bs!1524524 (and d!1926782 d!1926708)))

(assert (=> bs!1524524 (= lambda!335366 lambda!335340)))

(declare-fun lt!2334297 () List!64575)

(assert (=> d!1926782 (forall!15213 lt!2334297 lambda!335366)))

(declare-fun e!3747330 () List!64575)

(assert (=> d!1926782 (= lt!2334297 e!3747330)))

(declare-fun c!1106752 () Bool)

(assert (=> d!1926782 (= c!1106752 (is-Cons!64453 zl!343))))

(assert (=> d!1926782 (= (unfocusZipperList!1513 zl!343) lt!2334297)))

(declare-fun b!6149692 () Bool)

(assert (=> b!6149692 (= e!3747330 (Cons!64451 (generalisedConcat!1689 (exprs!5976 (h!70901 zl!343))) (unfocusZipperList!1513 (t!378064 zl!343))))))

(declare-fun b!6149693 () Bool)

(assert (=> b!6149693 (= e!3747330 Nil!64451)))

(assert (= (and d!1926782 c!1106752) b!6149692))

(assert (= (and d!1926782 (not c!1106752)) b!6149693))

(declare-fun m!6989532 () Bool)

(assert (=> d!1926782 m!6989532))

(assert (=> b!6149692 m!6989182))

(declare-fun m!6989534 () Bool)

(assert (=> b!6149692 m!6989534))

(assert (=> b!6149240 d!1926782))

(declare-fun d!1926784 () Bool)

(declare-fun e!3747331 () Bool)

(assert (=> d!1926784 (= (matchZipper!2104 (set.union lt!2334160 lt!2334149) (t!378063 s!2326)) e!3747331)))

(declare-fun res!2547446 () Bool)

(assert (=> d!1926784 (=> res!2547446 e!3747331)))

(assert (=> d!1926784 (= res!2547446 (matchZipper!2104 lt!2334160 (t!378063 s!2326)))))

(declare-fun lt!2334298 () Unit!157531)

(assert (=> d!1926784 (= lt!2334298 (choose!45706 lt!2334160 lt!2334149 (t!378063 s!2326)))))

(assert (=> d!1926784 (= (lemmaZipperConcatMatchesSameAsBothZippers!923 lt!2334160 lt!2334149 (t!378063 s!2326)) lt!2334298)))

(declare-fun b!6149694 () Bool)

(assert (=> b!6149694 (= e!3747331 (matchZipper!2104 lt!2334149 (t!378063 s!2326)))))

(assert (= (and d!1926784 (not res!2547446)) b!6149694))

(assert (=> d!1926784 m!6989152))

(assert (=> d!1926784 m!6989138))

(declare-fun m!6989536 () Bool)

(assert (=> d!1926784 m!6989536))

(assert (=> b!6149694 m!6989102))

(assert (=> b!6149229 d!1926784))

(declare-fun d!1926786 () Bool)

(declare-fun c!1106753 () Bool)

(assert (=> d!1926786 (= c!1106753 (isEmpty!36414 (t!378063 s!2326)))))

(declare-fun e!3747332 () Bool)

(assert (=> d!1926786 (= (matchZipper!2104 (set.union lt!2334160 lt!2334149) (t!378063 s!2326)) e!3747332)))

(declare-fun b!6149695 () Bool)

(assert (=> b!6149695 (= e!3747332 (nullableZipper!1873 (set.union lt!2334160 lt!2334149)))))

(declare-fun b!6149696 () Bool)

(assert (=> b!6149696 (= e!3747332 (matchZipper!2104 (derivationStepZipper!2065 (set.union lt!2334160 lt!2334149) (head!12705 (t!378063 s!2326))) (tail!11790 (t!378063 s!2326))))))

(assert (= (and d!1926786 c!1106753) b!6149695))

(assert (= (and d!1926786 (not c!1106753)) b!6149696))

(assert (=> d!1926786 m!6989322))

(declare-fun m!6989538 () Bool)

(assert (=> b!6149695 m!6989538))

(assert (=> b!6149696 m!6989326))

(assert (=> b!6149696 m!6989326))

(declare-fun m!6989540 () Bool)

(assert (=> b!6149696 m!6989540))

(assert (=> b!6149696 m!6989330))

(assert (=> b!6149696 m!6989540))

(assert (=> b!6149696 m!6989330))

(declare-fun m!6989542 () Bool)

(assert (=> b!6149696 m!6989542))

(assert (=> b!6149229 d!1926786))

(declare-fun condSetEmpty!41631 () Bool)

(assert (=> setNonEmpty!41625 (= condSetEmpty!41631 (= setRest!41625 (as set.empty (Set Context!10952))))))

(declare-fun setRes!41631 () Bool)

(assert (=> setNonEmpty!41625 (= tp!1717704 setRes!41631)))

(declare-fun setIsEmpty!41631 () Bool)

(assert (=> setIsEmpty!41631 setRes!41631))

(declare-fun tp!1717743 () Bool)

(declare-fun setElem!41631 () Context!10952)

(declare-fun setNonEmpty!41631 () Bool)

(declare-fun e!3747335 () Bool)

(assert (=> setNonEmpty!41631 (= setRes!41631 (and tp!1717743 (inv!83478 setElem!41631) e!3747335))))

(declare-fun setRest!41631 () (Set Context!10952))

(assert (=> setNonEmpty!41631 (= setRest!41625 (set.union (set.insert setElem!41631 (as set.empty (Set Context!10952))) setRest!41631))))

(declare-fun b!6149701 () Bool)

(declare-fun tp!1717744 () Bool)

(assert (=> b!6149701 (= e!3747335 tp!1717744)))

(assert (= (and setNonEmpty!41625 condSetEmpty!41631) setIsEmpty!41631))

(assert (= (and setNonEmpty!41625 (not condSetEmpty!41631)) setNonEmpty!41631))

(assert (= setNonEmpty!41631 b!6149701))

(declare-fun m!6989544 () Bool)

(assert (=> setNonEmpty!41631 m!6989544))

(declare-fun b!6149713 () Bool)

(declare-fun e!3747338 () Bool)

(declare-fun tp!1717756 () Bool)

(declare-fun tp!1717758 () Bool)

(assert (=> b!6149713 (= e!3747338 (and tp!1717756 tp!1717758))))

(declare-fun b!6149714 () Bool)

(declare-fun tp!1717759 () Bool)

(assert (=> b!6149714 (= e!3747338 tp!1717759)))

(declare-fun b!6149712 () Bool)

(assert (=> b!6149712 (= e!3747338 tp_is_empty!41437)))

(declare-fun b!6149715 () Bool)

(declare-fun tp!1717757 () Bool)

(declare-fun tp!1717755 () Bool)

(assert (=> b!6149715 (= e!3747338 (and tp!1717757 tp!1717755))))

(assert (=> b!6149242 (= tp!1717699 e!3747338)))

(assert (= (and b!6149242 (is-ElementMatch!16092 (reg!16421 r!7292))) b!6149712))

(assert (= (and b!6149242 (is-Concat!24937 (reg!16421 r!7292))) b!6149713))

(assert (= (and b!6149242 (is-Star!16092 (reg!16421 r!7292))) b!6149714))

(assert (= (and b!6149242 (is-Union!16092 (reg!16421 r!7292))) b!6149715))

(declare-fun b!6149720 () Bool)

(declare-fun e!3747341 () Bool)

(declare-fun tp!1717764 () Bool)

(declare-fun tp!1717765 () Bool)

(assert (=> b!6149720 (= e!3747341 (and tp!1717764 tp!1717765))))

(assert (=> b!6149233 (= tp!1717705 e!3747341)))

(assert (= (and b!6149233 (is-Cons!64451 (exprs!5976 (h!70901 zl!343)))) b!6149720))

(declare-fun b!6149722 () Bool)

(declare-fun e!3747342 () Bool)

(declare-fun tp!1717767 () Bool)

(declare-fun tp!1717769 () Bool)

(assert (=> b!6149722 (= e!3747342 (and tp!1717767 tp!1717769))))

(declare-fun b!6149723 () Bool)

(declare-fun tp!1717770 () Bool)

(assert (=> b!6149723 (= e!3747342 tp!1717770)))

(declare-fun b!6149721 () Bool)

(assert (=> b!6149721 (= e!3747342 tp_is_empty!41437)))

(declare-fun b!6149724 () Bool)

(declare-fun tp!1717768 () Bool)

(declare-fun tp!1717766 () Bool)

(assert (=> b!6149724 (= e!3747342 (and tp!1717768 tp!1717766))))

(assert (=> b!6149217 (= tp!1717708 e!3747342)))

(assert (= (and b!6149217 (is-ElementMatch!16092 (regOne!32697 r!7292))) b!6149721))

(assert (= (and b!6149217 (is-Concat!24937 (regOne!32697 r!7292))) b!6149722))

(assert (= (and b!6149217 (is-Star!16092 (regOne!32697 r!7292))) b!6149723))

(assert (= (and b!6149217 (is-Union!16092 (regOne!32697 r!7292))) b!6149724))

(declare-fun b!6149726 () Bool)

(declare-fun e!3747343 () Bool)

(declare-fun tp!1717772 () Bool)

(declare-fun tp!1717774 () Bool)

(assert (=> b!6149726 (= e!3747343 (and tp!1717772 tp!1717774))))

(declare-fun b!6149727 () Bool)

(declare-fun tp!1717775 () Bool)

(assert (=> b!6149727 (= e!3747343 tp!1717775)))

(declare-fun b!6149725 () Bool)

(assert (=> b!6149725 (= e!3747343 tp_is_empty!41437)))

(declare-fun b!6149728 () Bool)

(declare-fun tp!1717773 () Bool)

(declare-fun tp!1717771 () Bool)

(assert (=> b!6149728 (= e!3747343 (and tp!1717773 tp!1717771))))

(assert (=> b!6149217 (= tp!1717702 e!3747343)))

(assert (= (and b!6149217 (is-ElementMatch!16092 (regTwo!32697 r!7292))) b!6149725))

(assert (= (and b!6149217 (is-Concat!24937 (regTwo!32697 r!7292))) b!6149726))

(assert (= (and b!6149217 (is-Star!16092 (regTwo!32697 r!7292))) b!6149727))

(assert (= (and b!6149217 (is-Union!16092 (regTwo!32697 r!7292))) b!6149728))

(declare-fun b!6149736 () Bool)

(declare-fun e!3747349 () Bool)

(declare-fun tp!1717780 () Bool)

(assert (=> b!6149736 (= e!3747349 tp!1717780)))

(declare-fun e!3747348 () Bool)

(declare-fun b!6149735 () Bool)

(declare-fun tp!1717781 () Bool)

(assert (=> b!6149735 (= e!3747348 (and (inv!83478 (h!70901 (t!378064 zl!343))) e!3747349 tp!1717781))))

(assert (=> b!6149222 (= tp!1717707 e!3747348)))

(assert (= b!6149735 b!6149736))

(assert (= (and b!6149222 (is-Cons!64453 (t!378064 zl!343))) b!6149735))

(declare-fun m!6989546 () Bool)

(assert (=> b!6149735 m!6989546))

(declare-fun b!6149741 () Bool)

(declare-fun e!3747352 () Bool)

(declare-fun tp!1717784 () Bool)

(assert (=> b!6149741 (= e!3747352 (and tp_is_empty!41437 tp!1717784))))

(assert (=> b!6149221 (= tp!1717700 e!3747352)))

(assert (= (and b!6149221 (is-Cons!64452 (t!378063 s!2326))) b!6149741))

(declare-fun b!6149743 () Bool)

(declare-fun e!3747353 () Bool)

(declare-fun tp!1717786 () Bool)

(declare-fun tp!1717788 () Bool)

(assert (=> b!6149743 (= e!3747353 (and tp!1717786 tp!1717788))))

(declare-fun b!6149744 () Bool)

(declare-fun tp!1717789 () Bool)

(assert (=> b!6149744 (= e!3747353 tp!1717789)))

(declare-fun b!6149742 () Bool)

(assert (=> b!6149742 (= e!3747353 tp_is_empty!41437)))

(declare-fun b!6149745 () Bool)

(declare-fun tp!1717787 () Bool)

(declare-fun tp!1717785 () Bool)

(assert (=> b!6149745 (= e!3747353 (and tp!1717787 tp!1717785))))

(assert (=> b!6149219 (= tp!1717706 e!3747353)))

(assert (= (and b!6149219 (is-ElementMatch!16092 (regOne!32696 r!7292))) b!6149742))

(assert (= (and b!6149219 (is-Concat!24937 (regOne!32696 r!7292))) b!6149743))

(assert (= (and b!6149219 (is-Star!16092 (regOne!32696 r!7292))) b!6149744))

(assert (= (and b!6149219 (is-Union!16092 (regOne!32696 r!7292))) b!6149745))

(declare-fun b!6149747 () Bool)

(declare-fun e!3747354 () Bool)

(declare-fun tp!1717791 () Bool)

(declare-fun tp!1717793 () Bool)

(assert (=> b!6149747 (= e!3747354 (and tp!1717791 tp!1717793))))

(declare-fun b!6149748 () Bool)

(declare-fun tp!1717794 () Bool)

(assert (=> b!6149748 (= e!3747354 tp!1717794)))

(declare-fun b!6149746 () Bool)

(assert (=> b!6149746 (= e!3747354 tp_is_empty!41437)))

(declare-fun b!6149749 () Bool)

(declare-fun tp!1717792 () Bool)

(declare-fun tp!1717790 () Bool)

(assert (=> b!6149749 (= e!3747354 (and tp!1717792 tp!1717790))))

(assert (=> b!6149219 (= tp!1717703 e!3747354)))

(assert (= (and b!6149219 (is-ElementMatch!16092 (regTwo!32696 r!7292))) b!6149746))

(assert (= (and b!6149219 (is-Concat!24937 (regTwo!32696 r!7292))) b!6149747))

(assert (= (and b!6149219 (is-Star!16092 (regTwo!32696 r!7292))) b!6149748))

(assert (= (and b!6149219 (is-Union!16092 (regTwo!32696 r!7292))) b!6149749))

(declare-fun b!6149750 () Bool)

(declare-fun e!3747355 () Bool)

(declare-fun tp!1717795 () Bool)

(declare-fun tp!1717796 () Bool)

(assert (=> b!6149750 (= e!3747355 (and tp!1717795 tp!1717796))))

(assert (=> b!6149224 (= tp!1717701 e!3747355)))

(assert (= (and b!6149224 (is-Cons!64451 (exprs!5976 setElem!41625))) b!6149750))

(declare-fun b_lambda!234055 () Bool)

(assert (= b_lambda!234053 (or b!6149238 b_lambda!234055)))

(declare-fun bs!1524525 () Bool)

(declare-fun d!1926788 () Bool)

(assert (= bs!1524525 (and d!1926788 b!6149238)))

(assert (=> bs!1524525 (= (dynLambda!25405 lambda!335322 lt!2334159) (derivationStepZipperUp!1266 lt!2334159 (h!70900 s!2326)))))

(assert (=> bs!1524525 m!6989156))

(assert (=> d!1926754 d!1926788))

(declare-fun b_lambda!234057 () Bool)

(assert (= b_lambda!234051 (or b!6149238 b_lambda!234057)))

(declare-fun bs!1524526 () Bool)

(declare-fun d!1926790 () Bool)

(assert (= bs!1524526 (and d!1926790 b!6149238)))

(assert (=> bs!1524526 (= (dynLambda!25405 lambda!335322 lt!2334153) (derivationStepZipperUp!1266 lt!2334153 (h!70900 s!2326)))))

(assert (=> bs!1524526 m!6989162))

(assert (=> d!1926740 d!1926790))

(declare-fun b_lambda!234059 () Bool)

(assert (= b_lambda!234049 (or b!6149238 b_lambda!234059)))

(declare-fun bs!1524527 () Bool)

(declare-fun d!1926792 () Bool)

(assert (= bs!1524527 (and d!1926792 b!6149238)))

(assert (=> bs!1524527 (= (dynLambda!25405 lambda!335322 (h!70901 zl!343)) (derivationStepZipperUp!1266 (h!70901 zl!343) (h!70900 s!2326)))))

(assert (=> bs!1524527 m!6989092))

(assert (=> d!1926694 d!1926792))

(push 1)

(assert (not b!6149524))

(assert (not b!6149420))

(assert (not d!1926754))

(assert (not b!6149714))

(assert (not b!6149715))

(assert (not b!6149681))

(assert (not d!1926696))

(assert (not b!6149727))

(assert (not d!1926782))

(assert (not b!6149609))

(assert (not b!6149744))

(assert (not bm!511335))

(assert (not bs!1524527))

(assert (not d!1926766))

(assert (not b!6149747))

(assert (not d!1926768))

(assert (not b!6149426))

(assert (not b!6149728))

(assert (not b!6149512))

(assert (not b_lambda!234059))

(assert (not b!6149427))

(assert (not bm!511326))

(assert (not bm!511324))

(assert (not b!6149713))

(assert (not b!6149736))

(assert (not d!1926756))

(assert (not b!6149680))

(assert (not b!6149724))

(assert (not b!6149430))

(assert (not b!6149556))

(assert (not bm!511316))

(assert (not b!6149750))

(assert (not d!1926772))

(assert (not d!1926700))

(assert (not bm!511310))

(assert (not b!6149434))

(assert (not b_lambda!234057))

(assert (not d!1926734))

(assert (not d!1926746))

(assert (not b!6149686))

(assert (not bm!511328))

(assert (not b!6149428))

(assert (not bm!511332))

(assert (not b!6149463))

(assert (not b!6149510))

(assert (not b!6149431))

(assert (not bm!511338))

(assert (not d!1926718))

(assert (not d!1926764))

(assert (not d!1926736))

(assert (not b!6149549))

(assert (not b!6149743))

(assert (not bm!511339))

(assert (not b!6149570))

(assert (not bs!1524525))

(assert (not b_lambda!234055))

(assert (not bm!511348))

(assert (not b!6149572))

(assert (not b!6149571))

(assert (not b!6149429))

(assert (not bm!511344))

(assert (not b!6149417))

(assert (not b!6149507))

(assert (not d!1926712))

(assert tp_is_empty!41437)

(assert (not b!6149513))

(assert (not b!6149516))

(assert (not d!1926778))

(assert (not d!1926740))

(assert (not b!6149720))

(assert (not d!1926722))

(assert (not b!6149694))

(assert (not b!6149679))

(assert (not d!1926714))

(assert (not b!6149652))

(assert (not b!6149745))

(assert (not d!1926708))

(assert (not b!6149475))

(assert (not b!6149741))

(assert (not b!6149648))

(assert (not b!6149692))

(assert (not b!6149554))

(assert (not setNonEmpty!41631))

(assert (not b!6149374))

(assert (not b!6149645))

(assert (not b!6149684))

(assert (not d!1926738))

(assert (not bm!511329))

(assert (not b!6149406))

(assert (not b!6149517))

(assert (not b!6149379))

(assert (not d!1926732))

(assert (not b!6149611))

(assert (not d!1926786))

(assert (not b!6149696))

(assert (not bs!1524526))

(assert (not b!6149748))

(assert (not b!6149377))

(assert (not d!1926784))

(assert (not b!6149726))

(assert (not d!1926758))

(assert (not b!6149683))

(assert (not b!6149526))

(assert (not b!6149515))

(assert (not d!1926770))

(assert (not d!1926752))

(assert (not b!6149529))

(assert (not d!1926760))

(assert (not b!6149382))

(assert (not d!1926744))

(assert (not b!6149682))

(assert (not b!6149509))

(assert (not d!1926776))

(assert (not b!6149749))

(assert (not b!6149651))

(assert (not d!1926762))

(assert (not b!6149655))

(assert (not d!1926742))

(assert (not bm!511313))

(assert (not b!6149552))

(assert (not d!1926716))

(assert (not b!6149722))

(assert (not b!6149521))

(assert (not bm!511297))

(assert (not b!6149458))

(assert (not bm!511345))

(assert (not b!6149695))

(assert (not b!6149462))

(assert (not bm!511312))

(assert (not bm!511334))

(assert (not b!6149701))

(assert (not b!6149646))

(assert (not b!6149735))

(assert (not b!6149520))

(assert (not b!6149464))

(assert (not b!6149723))

(assert (not b!6149550))

(assert (not bm!511325))

(assert (not b!6149514))

(assert (not d!1926728))

(assert (not b!6149553))

(assert (not d!1926694))

(assert (not bm!511296))

(assert (not d!1926780))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1926894 () Bool)

(assert (=> d!1926894 (= (isEmptyExpr!1509 lt!2334261) (is-EmptyExpr!16092 lt!2334261))))

(assert (=> b!6149509 d!1926894))

(declare-fun bs!1524575 () Bool)

(declare-fun d!1926896 () Bool)

(assert (= bs!1524575 (and d!1926896 d!1926780)))

(declare-fun lambda!335396 () Int)

(assert (=> bs!1524575 (= lambda!335396 lambda!335363)))

(declare-fun bs!1524576 () Bool)

(assert (= bs!1524576 (and d!1926896 d!1926782)))

(assert (=> bs!1524576 (= lambda!335396 lambda!335366)))

(declare-fun bs!1524577 () Bool)

(assert (= bs!1524577 (and d!1926896 d!1926768)))

(assert (=> bs!1524577 (= lambda!335396 lambda!335354)))

(declare-fun bs!1524578 () Bool)

(assert (= bs!1524578 (and d!1926896 d!1926736)))

(assert (=> bs!1524578 (= lambda!335396 lambda!335344)))

(declare-fun bs!1524579 () Bool)

(assert (= bs!1524579 (and d!1926896 d!1926728)))

(assert (=> bs!1524579 (= lambda!335396 lambda!335343)))

(declare-fun bs!1524580 () Bool)

(assert (= bs!1524580 (and d!1926896 d!1926708)))

(assert (=> bs!1524580 (= lambda!335396 lambda!335340)))

(assert (=> d!1926896 (= (inv!83478 (h!70901 (t!378064 zl!343))) (forall!15213 (exprs!5976 (h!70901 (t!378064 zl!343))) lambda!335396))))

(declare-fun bs!1524581 () Bool)

(assert (= bs!1524581 d!1926896))

(declare-fun m!6989812 () Bool)

(assert (=> bs!1524581 m!6989812))

(assert (=> b!6149735 d!1926896))

(declare-fun d!1926898 () Bool)

(assert (=> d!1926898 (= (isEmpty!36414 (t!378063 s!2326)) (is-Nil!64452 (t!378063 s!2326)))))

(assert (=> d!1926722 d!1926898))

(declare-fun d!1926900 () Bool)

(assert (=> d!1926900 (= (isEmpty!36414 s!2326) (is-Nil!64452 s!2326))))

(assert (=> bm!511345 d!1926900))

(declare-fun d!1926902 () Bool)

(assert (=> d!1926902 (= (nullable!6085 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))) (nullableFct!2049 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))))))

(declare-fun bs!1524582 () Bool)

(assert (= bs!1524582 d!1926902))

(declare-fun m!6989814 () Bool)

(assert (=> bs!1524582 m!6989814))

(assert (=> b!6149377 d!1926902))

(declare-fun d!1926904 () Bool)

(declare-fun c!1106862 () Bool)

(assert (=> d!1926904 (= c!1106862 (isEmpty!36414 (tail!11790 (t!378063 s!2326))))))

(declare-fun e!3747574 () Bool)

(assert (=> d!1926904 (= (matchZipper!2104 (derivationStepZipper!2065 lt!2334149 (head!12705 (t!378063 s!2326))) (tail!11790 (t!378063 s!2326))) e!3747574)))

(declare-fun b!6150138 () Bool)

(assert (=> b!6150138 (= e!3747574 (nullableZipper!1873 (derivationStepZipper!2065 lt!2334149 (head!12705 (t!378063 s!2326)))))))

(declare-fun b!6150139 () Bool)

(assert (=> b!6150139 (= e!3747574 (matchZipper!2104 (derivationStepZipper!2065 (derivationStepZipper!2065 lt!2334149 (head!12705 (t!378063 s!2326))) (head!12705 (tail!11790 (t!378063 s!2326)))) (tail!11790 (tail!11790 (t!378063 s!2326)))))))

(assert (= (and d!1926904 c!1106862) b!6150138))

(assert (= (and d!1926904 (not c!1106862)) b!6150139))

(assert (=> d!1926904 m!6989330))

(declare-fun m!6989816 () Bool)

(assert (=> d!1926904 m!6989816))

(assert (=> b!6150138 m!6989358))

(declare-fun m!6989818 () Bool)

(assert (=> b!6150138 m!6989818))

(assert (=> b!6150139 m!6989330))

(declare-fun m!6989820 () Bool)

(assert (=> b!6150139 m!6989820))

(assert (=> b!6150139 m!6989358))

(assert (=> b!6150139 m!6989820))

(declare-fun m!6989822 () Bool)

(assert (=> b!6150139 m!6989822))

(assert (=> b!6150139 m!6989330))

(declare-fun m!6989824 () Bool)

(assert (=> b!6150139 m!6989824))

(assert (=> b!6150139 m!6989822))

(assert (=> b!6150139 m!6989824))

(declare-fun m!6989826 () Bool)

(assert (=> b!6150139 m!6989826))

(assert (=> b!6149463 d!1926904))

(declare-fun bs!1524583 () Bool)

(declare-fun d!1926906 () Bool)

(assert (= bs!1524583 (and d!1926906 b!6149238)))

(declare-fun lambda!335399 () Int)

(assert (=> bs!1524583 (= (= (head!12705 (t!378063 s!2326)) (h!70900 s!2326)) (= lambda!335399 lambda!335322))))

(assert (=> d!1926906 true))

(assert (=> d!1926906 (= (derivationStepZipper!2065 lt!2334149 (head!12705 (t!378063 s!2326))) (flatMap!1597 lt!2334149 lambda!335399))))

(declare-fun bs!1524584 () Bool)

(assert (= bs!1524584 d!1926906))

(declare-fun m!6989828 () Bool)

(assert (=> bs!1524584 m!6989828))

(assert (=> b!6149463 d!1926906))

(declare-fun d!1926908 () Bool)

(assert (=> d!1926908 (= (head!12705 (t!378063 s!2326)) (h!70900 (t!378063 s!2326)))))

(assert (=> b!6149463 d!1926908))

(declare-fun d!1926910 () Bool)

(assert (=> d!1926910 (= (tail!11790 (t!378063 s!2326)) (t!378063 (t!378063 s!2326)))))

(assert (=> b!6149463 d!1926910))

(declare-fun bm!511404 () Bool)

(declare-fun call!511411 () Bool)

(declare-fun call!511409 () Bool)

(assert (=> bm!511404 (= call!511411 call!511409)))

(declare-fun b!6150142 () Bool)

(declare-fun res!2547565 () Bool)

(declare-fun e!3747575 () Bool)

(assert (=> b!6150142 (=> (not res!2547565) (not e!3747575))))

(declare-fun call!511410 () Bool)

(assert (=> b!6150142 (= res!2547565 call!511410)))

(declare-fun e!3747581 () Bool)

(assert (=> b!6150142 (= e!3747581 e!3747575)))

(declare-fun b!6150143 () Bool)

(declare-fun e!3747578 () Bool)

(assert (=> b!6150143 (= e!3747578 call!511409)))

(declare-fun b!6150144 () Bool)

(declare-fun e!3747577 () Bool)

(declare-fun e!3747580 () Bool)

(assert (=> b!6150144 (= e!3747577 e!3747580)))

(declare-fun c!1106865 () Bool)

(assert (=> b!6150144 (= c!1106865 (is-Star!16092 lt!2334294))))

(declare-fun b!6150145 () Bool)

(assert (=> b!6150145 (= e!3747580 e!3747581)))

(declare-fun c!1106866 () Bool)

(assert (=> b!6150145 (= c!1106866 (is-Union!16092 lt!2334294))))

(declare-fun bm!511405 () Bool)

(assert (=> bm!511405 (= call!511409 (validRegex!7828 (ite c!1106865 (reg!16421 lt!2334294) (ite c!1106866 (regTwo!32697 lt!2334294) (regTwo!32696 lt!2334294)))))))

(declare-fun b!6150146 () Bool)

(declare-fun res!2547567 () Bool)

(declare-fun e!3747576 () Bool)

(assert (=> b!6150146 (=> res!2547567 e!3747576)))

(assert (=> b!6150146 (= res!2547567 (not (is-Concat!24937 lt!2334294)))))

(assert (=> b!6150146 (= e!3747581 e!3747576)))

(declare-fun b!6150147 () Bool)

(assert (=> b!6150147 (= e!3747580 e!3747578)))

(declare-fun res!2547564 () Bool)

(assert (=> b!6150147 (= res!2547564 (not (nullable!6085 (reg!16421 lt!2334294))))))

(assert (=> b!6150147 (=> (not res!2547564) (not e!3747578))))

(declare-fun d!1926912 () Bool)

(declare-fun res!2547568 () Bool)

(assert (=> d!1926912 (=> res!2547568 e!3747577)))

(assert (=> d!1926912 (= res!2547568 (is-ElementMatch!16092 lt!2334294))))

(assert (=> d!1926912 (= (validRegex!7828 lt!2334294) e!3747577)))

(declare-fun b!6150148 () Bool)

(declare-fun e!3747579 () Bool)

(assert (=> b!6150148 (= e!3747576 e!3747579)))

(declare-fun res!2547566 () Bool)

(assert (=> b!6150148 (=> (not res!2547566) (not e!3747579))))

(assert (=> b!6150148 (= res!2547566 call!511410)))

(declare-fun bm!511406 () Bool)

(assert (=> bm!511406 (= call!511410 (validRegex!7828 (ite c!1106866 (regOne!32697 lt!2334294) (regOne!32696 lt!2334294))))))

(declare-fun b!6150149 () Bool)

(assert (=> b!6150149 (= e!3747575 call!511411)))

(declare-fun b!6150150 () Bool)

(assert (=> b!6150150 (= e!3747579 call!511411)))

(assert (= (and d!1926912 (not res!2547568)) b!6150144))

(assert (= (and b!6150144 c!1106865) b!6150147))

(assert (= (and b!6150144 (not c!1106865)) b!6150145))

(assert (= (and b!6150147 res!2547564) b!6150143))

(assert (= (and b!6150145 c!1106866) b!6150142))

(assert (= (and b!6150145 (not c!1106866)) b!6150146))

(assert (= (and b!6150142 res!2547565) b!6150149))

(assert (= (and b!6150146 (not res!2547567)) b!6150148))

(assert (= (and b!6150148 res!2547566) b!6150150))

(assert (= (or b!6150149 b!6150150) bm!511404))

(assert (= (or b!6150142 b!6150148) bm!511406))

(assert (= (or b!6150143 bm!511404) bm!511405))

(declare-fun m!6989830 () Bool)

(assert (=> bm!511405 m!6989830))

(declare-fun m!6989832 () Bool)

(assert (=> b!6150147 m!6989832))

(declare-fun m!6989834 () Bool)

(assert (=> bm!511406 m!6989834))

(assert (=> d!1926780 d!1926912))

(declare-fun d!1926914 () Bool)

(declare-fun res!2547573 () Bool)

(declare-fun e!3747586 () Bool)

(assert (=> d!1926914 (=> res!2547573 e!3747586)))

(assert (=> d!1926914 (= res!2547573 (is-Nil!64451 (unfocusZipperList!1513 zl!343)))))

(assert (=> d!1926914 (= (forall!15213 (unfocusZipperList!1513 zl!343) lambda!335363) e!3747586)))

(declare-fun b!6150155 () Bool)

(declare-fun e!3747587 () Bool)

(assert (=> b!6150155 (= e!3747586 e!3747587)))

(declare-fun res!2547574 () Bool)

(assert (=> b!6150155 (=> (not res!2547574) (not e!3747587))))

(declare-fun dynLambda!25407 (Int Regex!16092) Bool)

(assert (=> b!6150155 (= res!2547574 (dynLambda!25407 lambda!335363 (h!70899 (unfocusZipperList!1513 zl!343))))))

(declare-fun b!6150156 () Bool)

(assert (=> b!6150156 (= e!3747587 (forall!15213 (t!378062 (unfocusZipperList!1513 zl!343)) lambda!335363))))

(assert (= (and d!1926914 (not res!2547573)) b!6150155))

(assert (= (and b!6150155 res!2547574) b!6150156))

(declare-fun b_lambda!234073 () Bool)

(assert (=> (not b_lambda!234073) (not b!6150155)))

(declare-fun m!6989836 () Bool)

(assert (=> b!6150155 m!6989836))

(declare-fun m!6989838 () Bool)

(assert (=> b!6150156 m!6989838))

(assert (=> d!1926780 d!1926914))

(assert (=> b!6149513 d!1926730))

(declare-fun bm!511411 () Bool)

(declare-fun call!511417 () Bool)

(declare-fun c!1106869 () Bool)

(assert (=> bm!511411 (= call!511417 (nullable!6085 (ite c!1106869 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))))))))

(declare-fun b!6150171 () Bool)

(declare-fun e!3747600 () Bool)

(declare-fun e!3747604 () Bool)

(assert (=> b!6150171 (= e!3747600 e!3747604)))

(declare-fun res!2547588 () Bool)

(assert (=> b!6150171 (=> res!2547588 e!3747604)))

(assert (=> b!6150171 (= res!2547588 (is-Star!16092 (regTwo!32697 (regOne!32696 r!7292))))))

(declare-fun b!6150172 () Bool)

(declare-fun e!3747605 () Bool)

(declare-fun e!3747603 () Bool)

(assert (=> b!6150172 (= e!3747605 e!3747603)))

(declare-fun res!2547587 () Bool)

(assert (=> b!6150172 (= res!2547587 call!511417)))

(assert (=> b!6150172 (=> (not res!2547587) (not e!3747603))))

(declare-fun b!6150173 () Bool)

(declare-fun call!511416 () Bool)

(assert (=> b!6150173 (= e!3747603 call!511416)))

(declare-fun b!6150174 () Bool)

(declare-fun e!3747601 () Bool)

(assert (=> b!6150174 (= e!3747601 call!511416)))

(declare-fun b!6150175 () Bool)

(declare-fun e!3747602 () Bool)

(assert (=> b!6150175 (= e!3747602 e!3747600)))

(declare-fun res!2547585 () Bool)

(assert (=> b!6150175 (=> (not res!2547585) (not e!3747600))))

(assert (=> b!6150175 (= res!2547585 (and (not (is-EmptyLang!16092 (regTwo!32697 (regOne!32696 r!7292)))) (not (is-ElementMatch!16092 (regTwo!32697 (regOne!32696 r!7292))))))))

(declare-fun b!6150176 () Bool)

(assert (=> b!6150176 (= e!3747604 e!3747605)))

(assert (=> b!6150176 (= c!1106869 (is-Union!16092 (regTwo!32697 (regOne!32696 r!7292))))))

(declare-fun d!1926916 () Bool)

(declare-fun res!2547586 () Bool)

(assert (=> d!1926916 (=> res!2547586 e!3747602)))

(assert (=> d!1926916 (= res!2547586 (is-EmptyExpr!16092 (regTwo!32697 (regOne!32696 r!7292))))))

(assert (=> d!1926916 (= (nullableFct!2049 (regTwo!32697 (regOne!32696 r!7292))) e!3747602)))

(declare-fun bm!511412 () Bool)

(assert (=> bm!511412 (= call!511416 (nullable!6085 (ite c!1106869 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))))))))

(declare-fun b!6150177 () Bool)

(assert (=> b!6150177 (= e!3747605 e!3747601)))

(declare-fun res!2547589 () Bool)

(assert (=> b!6150177 (= res!2547589 call!511417)))

(assert (=> b!6150177 (=> res!2547589 e!3747601)))

(assert (= (and d!1926916 (not res!2547586)) b!6150175))

(assert (= (and b!6150175 res!2547585) b!6150171))

(assert (= (and b!6150171 (not res!2547588)) b!6150176))

(assert (= (and b!6150176 c!1106869) b!6150177))

(assert (= (and b!6150176 (not c!1106869)) b!6150172))

(assert (= (and b!6150177 (not res!2547589)) b!6150174))

(assert (= (and b!6150172 res!2547587) b!6150173))

(assert (= (or b!6150174 b!6150173) bm!511412))

(assert (= (or b!6150177 b!6150172) bm!511411))

(declare-fun m!6989840 () Bool)

(assert (=> bm!511411 m!6989840))

(declare-fun m!6989842 () Bool)

(assert (=> bm!511412 m!6989842))

(assert (=> d!1926742 d!1926916))

(declare-fun d!1926918 () Bool)

(assert (=> d!1926918 (= (nullable!6085 (regOne!32696 (regOne!32697 (regOne!32696 r!7292)))) (nullableFct!2049 (regOne!32696 (regOne!32697 (regOne!32696 r!7292)))))))

(declare-fun bs!1524585 () Bool)

(assert (= bs!1524585 d!1926918))

(declare-fun m!6989844 () Bool)

(assert (=> bs!1524585 m!6989844))

(assert (=> b!6149475 d!1926918))

(declare-fun d!1926920 () Bool)

(assert (=> d!1926920 (= (isEmptyLang!1519 lt!2334294) (is-EmptyLang!16092 lt!2334294))))

(assert (=> b!6149679 d!1926920))

(declare-fun b!6150178 () Bool)

(declare-fun e!3747611 () Bool)

(assert (=> b!6150178 (= e!3747611 (nullable!6085 (regOne!32696 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343))))))))))))

(declare-fun call!511421 () List!64575)

(declare-fun c!1106871 () Bool)

(declare-fun c!1106872 () Bool)

(declare-fun call!511423 () (Set Context!10952))

(declare-fun c!1106873 () Bool)

(declare-fun bm!511413 () Bool)

(assert (=> bm!511413 (= call!511423 (derivationStepZipperDown!1340 (ite c!1106871 (regTwo!32697 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343)))))))) (ite c!1106872 (regTwo!32696 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343)))))))) (ite c!1106873 (regOne!32696 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343)))))))) (reg!16421 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343))))))))))) (ite (or c!1106871 c!1106872) (ite (or c!1106665 c!1106666) lt!2334170 (Context!10953 call!511318)) (Context!10953 call!511421)) (h!70900 s!2326)))))

(declare-fun b!6150179 () Bool)

(declare-fun e!3747607 () (Set Context!10952))

(declare-fun call!511422 () (Set Context!10952))

(assert (=> b!6150179 (= e!3747607 (set.union call!511422 call!511423))))

(declare-fun bm!511414 () Bool)

(declare-fun call!511420 () (Set Context!10952))

(declare-fun call!511419 () (Set Context!10952))

(assert (=> bm!511414 (= call!511420 call!511419)))

(declare-fun b!6150180 () Bool)

(declare-fun e!3747609 () (Set Context!10952))

(assert (=> b!6150180 (= e!3747609 call!511420)))

(declare-fun bm!511415 () Bool)

(declare-fun call!511418 () List!64575)

(assert (=> bm!511415 (= call!511422 (derivationStepZipperDown!1340 (ite c!1106871 (regOne!32697 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343)))))))) (regOne!32696 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343))))))))) (ite c!1106871 (ite (or c!1106665 c!1106666) lt!2334170 (Context!10953 call!511318)) (Context!10953 call!511418)) (h!70900 s!2326)))))

(declare-fun b!6150181 () Bool)

(assert (=> b!6150181 (= e!3747609 (as set.empty (Set Context!10952)))))

(declare-fun bm!511416 () Bool)

(assert (=> bm!511416 (= call!511418 ($colon$colon!1969 (exprs!5976 (ite (or c!1106665 c!1106666) lt!2334170 (Context!10953 call!511318))) (ite (or c!1106872 c!1106873) (regTwo!32696 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343)))))))) (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343))))))))))))

(declare-fun bm!511417 () Bool)

(assert (=> bm!511417 (= call!511421 call!511418)))

(declare-fun d!1926922 () Bool)

(declare-fun c!1106870 () Bool)

(assert (=> d!1926922 (= c!1106870 (and (is-ElementMatch!16092 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343)))))))) (= (c!1106631 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343)))))))) (h!70900 s!2326))))))

(declare-fun e!3747606 () (Set Context!10952))

(assert (=> d!1926922 (= (derivationStepZipperDown!1340 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343))))))) (ite (or c!1106665 c!1106666) lt!2334170 (Context!10953 call!511318)) (h!70900 s!2326)) e!3747606)))

(declare-fun b!6150182 () Bool)

(assert (=> b!6150182 (= e!3747606 e!3747607)))

(assert (=> b!6150182 (= c!1106871 (is-Union!16092 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343)))))))))))

(declare-fun c!1106874 () Bool)

(declare-fun b!6150183 () Bool)

(assert (=> b!6150183 (= c!1106874 (is-Star!16092 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343)))))))))))

(declare-fun e!3747610 () (Set Context!10952))

(assert (=> b!6150183 (= e!3747610 e!3747609)))

(declare-fun b!6150184 () Bool)

(declare-fun e!3747608 () (Set Context!10952))

(assert (=> b!6150184 (= e!3747608 e!3747610)))

(assert (=> b!6150184 (= c!1106873 (is-Concat!24937 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343)))))))))))

(declare-fun b!6150185 () Bool)

(assert (=> b!6150185 (= e!3747610 call!511420)))

(declare-fun bm!511418 () Bool)

(assert (=> bm!511418 (= call!511419 call!511423)))

(declare-fun b!6150186 () Bool)

(assert (=> b!6150186 (= e!3747606 (set.insert (ite (or c!1106665 c!1106666) lt!2334170 (Context!10953 call!511318)) (as set.empty (Set Context!10952))))))

(declare-fun b!6150187 () Bool)

(assert (=> b!6150187 (= e!3747608 (set.union call!511422 call!511419))))

(declare-fun b!6150188 () Bool)

(assert (=> b!6150188 (= c!1106872 e!3747611)))

(declare-fun res!2547590 () Bool)

(assert (=> b!6150188 (=> (not res!2547590) (not e!3747611))))

(assert (=> b!6150188 (= res!2547590 (is-Concat!24937 (ite c!1106665 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106666 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106667 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343)))))))))))

(assert (=> b!6150188 (= e!3747607 e!3747608)))

(assert (= (and d!1926922 c!1106870) b!6150186))

(assert (= (and d!1926922 (not c!1106870)) b!6150182))

(assert (= (and b!6150182 c!1106871) b!6150179))

(assert (= (and b!6150182 (not c!1106871)) b!6150188))

(assert (= (and b!6150188 res!2547590) b!6150178))

(assert (= (and b!6150188 c!1106872) b!6150187))

(assert (= (and b!6150188 (not c!1106872)) b!6150184))

(assert (= (and b!6150184 c!1106873) b!6150185))

(assert (= (and b!6150184 (not c!1106873)) b!6150183))

(assert (= (and b!6150183 c!1106874) b!6150180))

(assert (= (and b!6150183 (not c!1106874)) b!6150181))

(assert (= (or b!6150185 b!6150180) bm!511417))

(assert (= (or b!6150185 b!6150180) bm!511414))

(assert (= (or b!6150187 bm!511417) bm!511416))

(assert (= (or b!6150187 bm!511414) bm!511418))

(assert (= (or b!6150179 bm!511418) bm!511413))

(assert (= (or b!6150179 b!6150187) bm!511415))

(declare-fun m!6989846 () Bool)

(assert (=> b!6150186 m!6989846))

(declare-fun m!6989848 () Bool)

(assert (=> bm!511415 m!6989848))

(declare-fun m!6989850 () Bool)

(assert (=> b!6150178 m!6989850))

(declare-fun m!6989852 () Bool)

(assert (=> bm!511413 m!6989852))

(declare-fun m!6989854 () Bool)

(assert (=> bm!511416 m!6989854))

(assert (=> bm!511310 d!1926922))

(assert (=> bs!1524525 d!1926750))

(declare-fun d!1926924 () Bool)

(declare-fun c!1106875 () Bool)

(assert (=> d!1926924 (= c!1106875 (isEmpty!36414 (tail!11790 (t!378063 s!2326))))))

(declare-fun e!3747612 () Bool)

(assert (=> d!1926924 (= (matchZipper!2104 (derivationStepZipper!2065 lt!2334151 (head!12705 (t!378063 s!2326))) (tail!11790 (t!378063 s!2326))) e!3747612)))

(declare-fun b!6150189 () Bool)

(assert (=> b!6150189 (= e!3747612 (nullableZipper!1873 (derivationStepZipper!2065 lt!2334151 (head!12705 (t!378063 s!2326)))))))

(declare-fun b!6150190 () Bool)

(assert (=> b!6150190 (= e!3747612 (matchZipper!2104 (derivationStepZipper!2065 (derivationStepZipper!2065 lt!2334151 (head!12705 (t!378063 s!2326))) (head!12705 (tail!11790 (t!378063 s!2326)))) (tail!11790 (tail!11790 (t!378063 s!2326)))))))

(assert (= (and d!1926924 c!1106875) b!6150189))

(assert (= (and d!1926924 (not c!1106875)) b!6150190))

(assert (=> d!1926924 m!6989330))

(assert (=> d!1926924 m!6989816))

(assert (=> b!6150189 m!6989328))

(declare-fun m!6989856 () Bool)

(assert (=> b!6150189 m!6989856))

(assert (=> b!6150190 m!6989330))

(assert (=> b!6150190 m!6989820))

(assert (=> b!6150190 m!6989328))

(assert (=> b!6150190 m!6989820))

(declare-fun m!6989858 () Bool)

(assert (=> b!6150190 m!6989858))

(assert (=> b!6150190 m!6989330))

(assert (=> b!6150190 m!6989824))

(assert (=> b!6150190 m!6989858))

(assert (=> b!6150190 m!6989824))

(declare-fun m!6989860 () Bool)

(assert (=> b!6150190 m!6989860))

(assert (=> b!6149427 d!1926924))

(declare-fun bs!1524586 () Bool)

(declare-fun d!1926926 () Bool)

(assert (= bs!1524586 (and d!1926926 b!6149238)))

(declare-fun lambda!335400 () Int)

(assert (=> bs!1524586 (= (= (head!12705 (t!378063 s!2326)) (h!70900 s!2326)) (= lambda!335400 lambda!335322))))

(declare-fun bs!1524587 () Bool)

(assert (= bs!1524587 (and d!1926926 d!1926906)))

(assert (=> bs!1524587 (= lambda!335400 lambda!335399)))

(assert (=> d!1926926 true))

(assert (=> d!1926926 (= (derivationStepZipper!2065 lt!2334151 (head!12705 (t!378063 s!2326))) (flatMap!1597 lt!2334151 lambda!335400))))

(declare-fun bs!1524588 () Bool)

(assert (= bs!1524588 d!1926926))

(declare-fun m!6989862 () Bool)

(assert (=> bs!1524588 m!6989862))

(assert (=> b!6149427 d!1926926))

(assert (=> b!6149427 d!1926908))

(assert (=> b!6149427 d!1926910))

(declare-fun d!1926928 () Bool)

(assert (=> d!1926928 (= (nullable!6085 (reg!16421 r!7292)) (nullableFct!2049 (reg!16421 r!7292)))))

(declare-fun bs!1524589 () Bool)

(assert (= bs!1524589 d!1926928))

(declare-fun m!6989864 () Bool)

(assert (=> bs!1524589 m!6989864))

(assert (=> b!6149458 d!1926928))

(declare-fun b!6150191 () Bool)

(declare-fun e!3747615 () Bool)

(declare-fun e!3747614 () Bool)

(assert (=> b!6150191 (= e!3747615 e!3747614)))

(declare-fun res!2547598 () Bool)

(assert (=> b!6150191 (=> (not res!2547598) (not e!3747614))))

(declare-fun lt!2334345 () Bool)

(assert (=> b!6150191 (= res!2547598 (not lt!2334345))))

(declare-fun b!6150192 () Bool)

(declare-fun e!3747613 () Bool)

(assert (=> b!6150192 (= e!3747613 (matchR!8275 (derivativeStep!4812 (regOne!32696 r!7292) (head!12705 (_1!36374 (get!22240 lt!2334277)))) (tail!11790 (_1!36374 (get!22240 lt!2334277)))))))

(declare-fun b!6150193 () Bool)

(declare-fun res!2547594 () Bool)

(declare-fun e!3747618 () Bool)

(assert (=> b!6150193 (=> (not res!2547594) (not e!3747618))))

(assert (=> b!6150193 (= res!2547594 (isEmpty!36414 (tail!11790 (_1!36374 (get!22240 lt!2334277)))))))

(declare-fun b!6150194 () Bool)

(declare-fun e!3747619 () Bool)

(assert (=> b!6150194 (= e!3747619 (not lt!2334345))))

(declare-fun b!6150195 () Bool)

(declare-fun res!2547595 () Bool)

(declare-fun e!3747617 () Bool)

(assert (=> b!6150195 (=> res!2547595 e!3747617)))

(assert (=> b!6150195 (= res!2547595 (not (isEmpty!36414 (tail!11790 (_1!36374 (get!22240 lt!2334277))))))))

(declare-fun b!6150196 () Bool)

(declare-fun res!2547597 () Bool)

(assert (=> b!6150196 (=> res!2547597 e!3747615)))

(assert (=> b!6150196 (= res!2547597 e!3747618)))

(declare-fun res!2547591 () Bool)

(assert (=> b!6150196 (=> (not res!2547591) (not e!3747618))))

(assert (=> b!6150196 (= res!2547591 lt!2334345)))

(declare-fun bm!511419 () Bool)

(declare-fun call!511424 () Bool)

(assert (=> bm!511419 (= call!511424 (isEmpty!36414 (_1!36374 (get!22240 lt!2334277))))))

(declare-fun b!6150197 () Bool)

(declare-fun e!3747616 () Bool)

(assert (=> b!6150197 (= e!3747616 e!3747619)))

(declare-fun c!1106878 () Bool)

(assert (=> b!6150197 (= c!1106878 (is-EmptyLang!16092 (regOne!32696 r!7292)))))

(declare-fun b!6150198 () Bool)

(assert (=> b!6150198 (= e!3747618 (= (head!12705 (_1!36374 (get!22240 lt!2334277))) (c!1106631 (regOne!32696 r!7292))))))

(declare-fun b!6150199 () Bool)

(assert (=> b!6150199 (= e!3747617 (not (= (head!12705 (_1!36374 (get!22240 lt!2334277))) (c!1106631 (regOne!32696 r!7292)))))))

(declare-fun b!6150200 () Bool)

(declare-fun res!2547596 () Bool)

(assert (=> b!6150200 (=> res!2547596 e!3747615)))

(assert (=> b!6150200 (= res!2547596 (not (is-ElementMatch!16092 (regOne!32696 r!7292))))))

(assert (=> b!6150200 (= e!3747619 e!3747615)))

(declare-fun b!6150201 () Bool)

(assert (=> b!6150201 (= e!3747616 (= lt!2334345 call!511424))))

(declare-fun b!6150202 () Bool)

(assert (=> b!6150202 (= e!3747613 (nullable!6085 (regOne!32696 r!7292)))))

(declare-fun b!6150203 () Bool)

(assert (=> b!6150203 (= e!3747614 e!3747617)))

(declare-fun res!2547592 () Bool)

(assert (=> b!6150203 (=> res!2547592 e!3747617)))

(assert (=> b!6150203 (= res!2547592 call!511424)))

(declare-fun b!6150204 () Bool)

(declare-fun res!2547593 () Bool)

(assert (=> b!6150204 (=> (not res!2547593) (not e!3747618))))

(assert (=> b!6150204 (= res!2547593 (not call!511424))))

(declare-fun d!1926930 () Bool)

(assert (=> d!1926930 e!3747616))

(declare-fun c!1106877 () Bool)

(assert (=> d!1926930 (= c!1106877 (is-EmptyExpr!16092 (regOne!32696 r!7292)))))

(assert (=> d!1926930 (= lt!2334345 e!3747613)))

(declare-fun c!1106876 () Bool)

(assert (=> d!1926930 (= c!1106876 (isEmpty!36414 (_1!36374 (get!22240 lt!2334277))))))

(assert (=> d!1926930 (validRegex!7828 (regOne!32696 r!7292))))

(assert (=> d!1926930 (= (matchR!8275 (regOne!32696 r!7292) (_1!36374 (get!22240 lt!2334277))) lt!2334345)))

(assert (= (and d!1926930 c!1106876) b!6150202))

(assert (= (and d!1926930 (not c!1106876)) b!6150192))

(assert (= (and d!1926930 c!1106877) b!6150201))

(assert (= (and d!1926930 (not c!1106877)) b!6150197))

(assert (= (and b!6150197 c!1106878) b!6150194))

(assert (= (and b!6150197 (not c!1106878)) b!6150200))

(assert (= (and b!6150200 (not res!2547596)) b!6150196))

(assert (= (and b!6150196 res!2547591) b!6150204))

(assert (= (and b!6150204 res!2547593) b!6150193))

(assert (= (and b!6150193 res!2547594) b!6150198))

(assert (= (and b!6150196 (not res!2547597)) b!6150191))

(assert (= (and b!6150191 res!2547598) b!6150203))

(assert (= (and b!6150203 (not res!2547592)) b!6150195))

(assert (= (and b!6150195 (not res!2547595)) b!6150199))

(assert (= (or b!6150201 b!6150203 b!6150204) bm!511419))

(declare-fun m!6989866 () Bool)

(assert (=> b!6150202 m!6989866))

(declare-fun m!6989868 () Bool)

(assert (=> b!6150193 m!6989868))

(assert (=> b!6150193 m!6989868))

(declare-fun m!6989870 () Bool)

(assert (=> b!6150193 m!6989870))

(declare-fun m!6989872 () Bool)

(assert (=> b!6150199 m!6989872))

(assert (=> b!6150198 m!6989872))

(assert (=> b!6150195 m!6989868))

(assert (=> b!6150195 m!6989868))

(assert (=> b!6150195 m!6989870))

(declare-fun m!6989874 () Bool)

(assert (=> d!1926930 m!6989874))

(assert (=> d!1926930 m!6989444))

(assert (=> b!6150192 m!6989872))

(assert (=> b!6150192 m!6989872))

(declare-fun m!6989876 () Bool)

(assert (=> b!6150192 m!6989876))

(assert (=> b!6150192 m!6989868))

(assert (=> b!6150192 m!6989876))

(assert (=> b!6150192 m!6989868))

(declare-fun m!6989878 () Bool)

(assert (=> b!6150192 m!6989878))

(assert (=> bm!511419 m!6989874))

(assert (=> b!6149553 d!1926930))

(declare-fun d!1926932 () Bool)

(assert (=> d!1926932 (= (get!22240 lt!2334277) (v!52121 lt!2334277))))

(assert (=> b!6149553 d!1926932))

(declare-fun d!1926934 () Bool)

(assert (=> d!1926934 (= (isEmpty!36411 (unfocusZipperList!1513 zl!343)) (is-Nil!64451 (unfocusZipperList!1513 zl!343)))))

(assert (=> b!6149683 d!1926934))

(declare-fun d!1926936 () Bool)

(declare-fun lambda!335403 () Int)

(declare-fun exists!2438 ((Set Context!10952) Int) Bool)

(assert (=> d!1926936 (= (nullableZipper!1873 lt!2334160) (exists!2438 lt!2334160 lambda!335403))))

(declare-fun bs!1524590 () Bool)

(assert (= bs!1524590 d!1926936))

(declare-fun m!6989880 () Bool)

(assert (=> bs!1524590 m!6989880))

(assert (=> b!6149430 d!1926936))

(assert (=> d!1926778 d!1926776))

(assert (=> d!1926778 d!1926774))

(declare-fun d!1926938 () Bool)

(assert (=> d!1926938 (= (matchR!8275 r!7292 s!2326) (matchRSpec!3193 r!7292 s!2326))))

(assert (=> d!1926938 true))

(declare-fun _$88!4695 () Unit!157531)

(assert (=> d!1926938 (= (choose!45711 r!7292 s!2326) _$88!4695)))

(declare-fun bs!1524591 () Bool)

(assert (= bs!1524591 d!1926938))

(assert (=> bs!1524591 m!6989176))

(assert (=> bs!1524591 m!6989174))

(assert (=> d!1926778 d!1926938))

(assert (=> d!1926778 d!1926720))

(declare-fun d!1926940 () Bool)

(declare-fun res!2547599 () Bool)

(declare-fun e!3747620 () Bool)

(assert (=> d!1926940 (=> res!2547599 e!3747620)))

(assert (=> d!1926940 (= res!2547599 (is-Nil!64451 (exprs!5976 setElem!41625)))))

(assert (=> d!1926940 (= (forall!15213 (exprs!5976 setElem!41625) lambda!335340) e!3747620)))

(declare-fun b!6150205 () Bool)

(declare-fun e!3747621 () Bool)

(assert (=> b!6150205 (= e!3747620 e!3747621)))

(declare-fun res!2547600 () Bool)

(assert (=> b!6150205 (=> (not res!2547600) (not e!3747621))))

(assert (=> b!6150205 (= res!2547600 (dynLambda!25407 lambda!335340 (h!70899 (exprs!5976 setElem!41625))))))

(declare-fun b!6150206 () Bool)

(assert (=> b!6150206 (= e!3747621 (forall!15213 (t!378062 (exprs!5976 setElem!41625)) lambda!335340))))

(assert (= (and d!1926940 (not res!2547599)) b!6150205))

(assert (= (and b!6150205 res!2547600) b!6150206))

(declare-fun b_lambda!234075 () Bool)

(assert (=> (not b_lambda!234075) (not b!6150205)))

(declare-fun m!6989882 () Bool)

(assert (=> b!6150205 m!6989882))

(declare-fun m!6989884 () Bool)

(assert (=> b!6150206 m!6989884))

(assert (=> d!1926708 d!1926940))

(declare-fun d!1926942 () Bool)

(assert (=> d!1926942 (= ($colon$colon!1969 (exprs!5976 lt!2334170) (ite (or c!1106685 c!1106686) (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (regTwo!32697 (regOne!32696 r!7292)))) (Cons!64451 (ite (or c!1106685 c!1106686) (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (regTwo!32697 (regOne!32696 r!7292))) (exprs!5976 lt!2334170)))))

(assert (=> bm!511329 d!1926942))

(declare-fun b!6150207 () Bool)

(declare-fun e!3747627 () Bool)

(assert (=> b!6150207 (= e!3747627 (nullable!6085 (regOne!32696 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343))))))))))

(declare-fun c!1106883 () Bool)

(declare-fun c!1106882 () Bool)

(declare-fun call!511430 () (Set Context!10952))

(declare-fun call!511428 () List!64575)

(declare-fun c!1106884 () Bool)

(declare-fun bm!511420 () Bool)

(assert (=> bm!511420 (= call!511430 (derivationStepZipperDown!1340 (ite c!1106882 (regTwo!32697 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))))) (ite c!1106883 (regTwo!32696 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))))) (ite c!1106884 (regOne!32696 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))))) (reg!16421 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343))))))))) (ite (or c!1106882 c!1106883) (ite c!1106665 lt!2334170 (Context!10953 call!511315)) (Context!10953 call!511428)) (h!70900 s!2326)))))

(declare-fun b!6150208 () Bool)

(declare-fun e!3747623 () (Set Context!10952))

(declare-fun call!511429 () (Set Context!10952))

(assert (=> b!6150208 (= e!3747623 (set.union call!511429 call!511430))))

(declare-fun bm!511421 () Bool)

(declare-fun call!511427 () (Set Context!10952))

(declare-fun call!511426 () (Set Context!10952))

(assert (=> bm!511421 (= call!511427 call!511426)))

(declare-fun b!6150209 () Bool)

(declare-fun e!3747625 () (Set Context!10952))

(assert (=> b!6150209 (= e!3747625 call!511427)))

(declare-fun bm!511422 () Bool)

(declare-fun call!511425 () List!64575)

(assert (=> bm!511422 (= call!511429 (derivationStepZipperDown!1340 (ite c!1106882 (regOne!32697 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))))) (regOne!32696 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343))))))) (ite c!1106882 (ite c!1106665 lt!2334170 (Context!10953 call!511315)) (Context!10953 call!511425)) (h!70900 s!2326)))))

(declare-fun b!6150210 () Bool)

(assert (=> b!6150210 (= e!3747625 (as set.empty (Set Context!10952)))))

(declare-fun bm!511423 () Bool)

(assert (=> bm!511423 (= call!511425 ($colon$colon!1969 (exprs!5976 (ite c!1106665 lt!2334170 (Context!10953 call!511315))) (ite (or c!1106883 c!1106884) (regTwo!32696 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))))) (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343))))))))))

(declare-fun bm!511424 () Bool)

(assert (=> bm!511424 (= call!511428 call!511425)))

(declare-fun d!1926944 () Bool)

(declare-fun c!1106881 () Bool)

(assert (=> d!1926944 (= c!1106881 (and (is-ElementMatch!16092 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))))) (= (c!1106631 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))))) (h!70900 s!2326))))))

(declare-fun e!3747622 () (Set Context!10952))

(assert (=> d!1926944 (= (derivationStepZipperDown!1340 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343))))) (ite c!1106665 lt!2334170 (Context!10953 call!511315)) (h!70900 s!2326)) e!3747622)))

(declare-fun b!6150211 () Bool)

(assert (=> b!6150211 (= e!3747622 e!3747623)))

(assert (=> b!6150211 (= c!1106882 (is-Union!16092 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))))))))

(declare-fun b!6150212 () Bool)

(declare-fun c!1106885 () Bool)

(assert (=> b!6150212 (= c!1106885 (is-Star!16092 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))))))))

(declare-fun e!3747626 () (Set Context!10952))

(assert (=> b!6150212 (= e!3747626 e!3747625)))

(declare-fun b!6150213 () Bool)

(declare-fun e!3747624 () (Set Context!10952))

(assert (=> b!6150213 (= e!3747624 e!3747626)))

(assert (=> b!6150213 (= c!1106884 (is-Concat!24937 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))))))))

(declare-fun b!6150214 () Bool)

(assert (=> b!6150214 (= e!3747626 call!511427)))

(declare-fun bm!511425 () Bool)

(assert (=> bm!511425 (= call!511426 call!511430)))

(declare-fun b!6150215 () Bool)

(assert (=> b!6150215 (= e!3747622 (set.insert (ite c!1106665 lt!2334170 (Context!10953 call!511315)) (as set.empty (Set Context!10952))))))

(declare-fun b!6150216 () Bool)

(assert (=> b!6150216 (= e!3747624 (set.union call!511429 call!511426))))

(declare-fun b!6150217 () Bool)

(assert (=> b!6150217 (= c!1106883 e!3747627)))

(declare-fun res!2547601 () Bool)

(assert (=> b!6150217 (=> (not res!2547601) (not e!3747627))))

(assert (=> b!6150217 (= res!2547601 (is-Concat!24937 (ite c!1106665 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))))))))

(assert (=> b!6150217 (= e!3747623 e!3747624)))

(assert (= (and d!1926944 c!1106881) b!6150215))

(assert (= (and d!1926944 (not c!1106881)) b!6150211))

(assert (= (and b!6150211 c!1106882) b!6150208))

(assert (= (and b!6150211 (not c!1106882)) b!6150217))

(assert (= (and b!6150217 res!2547601) b!6150207))

(assert (= (and b!6150217 c!1106883) b!6150216))

(assert (= (and b!6150217 (not c!1106883)) b!6150213))

(assert (= (and b!6150213 c!1106884) b!6150214))

(assert (= (and b!6150213 (not c!1106884)) b!6150212))

(assert (= (and b!6150212 c!1106885) b!6150209))

(assert (= (and b!6150212 (not c!1106885)) b!6150210))

(assert (= (or b!6150214 b!6150209) bm!511424))

(assert (= (or b!6150214 b!6150209) bm!511421))

(assert (= (or b!6150216 bm!511424) bm!511423))

(assert (= (or b!6150216 bm!511421) bm!511425))

(assert (= (or b!6150208 bm!511425) bm!511420))

(assert (= (or b!6150208 b!6150216) bm!511422))

(declare-fun m!6989886 () Bool)

(assert (=> b!6150215 m!6989886))

(declare-fun m!6989888 () Bool)

(assert (=> bm!511422 m!6989888))

(declare-fun m!6989890 () Bool)

(assert (=> b!6150207 m!6989890))

(declare-fun m!6989892 () Bool)

(assert (=> bm!511420 m!6989892))

(declare-fun m!6989894 () Bool)

(assert (=> bm!511423 m!6989894))

(assert (=> bm!511312 d!1926944))

(declare-fun d!1926946 () Bool)

(assert (=> d!1926946 (= (nullable!6085 (h!70899 (exprs!5976 lt!2334170))) (nullableFct!2049 (h!70899 (exprs!5976 lt!2334170))))))

(declare-fun bs!1524592 () Bool)

(assert (= bs!1524592 d!1926946))

(declare-fun m!6989896 () Bool)

(assert (=> bs!1524592 m!6989896))

(assert (=> b!6149382 d!1926946))

(assert (=> b!6149434 d!1926734))

(declare-fun d!1926948 () Bool)

(assert (=> d!1926948 (= (head!12706 (exprs!5976 (h!70901 zl!343))) (h!70899 (exprs!5976 (h!70901 zl!343))))))

(assert (=> b!6149510 d!1926948))

(declare-fun b!6150218 () Bool)

(declare-fun e!3747630 () (Set Context!10952))

(declare-fun call!511431 () (Set Context!10952))

(assert (=> b!6150218 (= e!3747630 (set.union call!511431 (derivationStepZipperUp!1266 (Context!10953 (t!378062 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343))))))))))) (h!70900 s!2326))))))

(declare-fun b!6150219 () Bool)

(declare-fun e!3747628 () (Set Context!10952))

(assert (=> b!6150219 (= e!3747628 call!511431)))

(declare-fun d!1926950 () Bool)

(declare-fun c!1106886 () Bool)

(declare-fun e!3747629 () Bool)

(assert (=> d!1926950 (= c!1106886 e!3747629)))

(declare-fun res!2547602 () Bool)

(assert (=> d!1926950 (=> (not res!2547602) (not e!3747629))))

(assert (=> d!1926950 (= res!2547602 (is-Cons!64451 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))))))))

(assert (=> d!1926950 (= (derivationStepZipperUp!1266 (Context!10953 (t!378062 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))) (h!70900 s!2326)) e!3747630)))

(declare-fun b!6150220 () Bool)

(assert (=> b!6150220 (= e!3747628 (as set.empty (Set Context!10952)))))

(declare-fun b!6150221 () Bool)

(assert (=> b!6150221 (= e!3747629 (nullable!6085 (h!70899 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343))))))))))))))

(declare-fun bm!511426 () Bool)

(assert (=> bm!511426 (= call!511431 (derivationStepZipperDown!1340 (h!70899 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))))) (Context!10953 (t!378062 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343))))))))))) (h!70900 s!2326)))))

(declare-fun b!6150222 () Bool)

(assert (=> b!6150222 (= e!3747630 e!3747628)))

(declare-fun c!1106887 () Bool)

(assert (=> b!6150222 (= c!1106887 (is-Cons!64451 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))))))))

(assert (= (and d!1926950 res!2547602) b!6150221))

(assert (= (and d!1926950 c!1106886) b!6150218))

(assert (= (and d!1926950 (not c!1106886)) b!6150222))

(assert (= (and b!6150222 c!1106887) b!6150219))

(assert (= (and b!6150222 (not c!1106887)) b!6150220))

(assert (= (or b!6150218 b!6150219) bm!511426))

(declare-fun m!6989898 () Bool)

(assert (=> b!6150218 m!6989898))

(declare-fun m!6989900 () Bool)

(assert (=> b!6150221 m!6989900))

(declare-fun m!6989902 () Bool)

(assert (=> bm!511426 m!6989902))

(assert (=> b!6149374 d!1926950))

(declare-fun d!1926952 () Bool)

(declare-fun res!2547607 () Bool)

(declare-fun e!3747635 () Bool)

(assert (=> d!1926952 (=> res!2547607 e!3747635)))

(assert (=> d!1926952 (= res!2547607 (is-Nil!64453 lt!2334267))))

(assert (=> d!1926952 (= (noDuplicate!1939 lt!2334267) e!3747635)))

(declare-fun b!6150227 () Bool)

(declare-fun e!3747636 () Bool)

(assert (=> b!6150227 (= e!3747635 e!3747636)))

(declare-fun res!2547608 () Bool)

(assert (=> b!6150227 (=> (not res!2547608) (not e!3747636))))

(declare-fun contains!20052 (List!64577 Context!10952) Bool)

(assert (=> b!6150227 (= res!2547608 (not (contains!20052 (t!378064 lt!2334267) (h!70901 lt!2334267))))))

(declare-fun b!6150228 () Bool)

(assert (=> b!6150228 (= e!3747636 (noDuplicate!1939 (t!378064 lt!2334267)))))

(assert (= (and d!1926952 (not res!2547607)) b!6150227))

(assert (= (and b!6150227 res!2547608) b!6150228))

(declare-fun m!6989904 () Bool)

(assert (=> b!6150227 m!6989904))

(declare-fun m!6989906 () Bool)

(assert (=> b!6150228 m!6989906))

(assert (=> d!1926738 d!1926952))

(declare-fun d!1926954 () Bool)

(declare-fun e!3747644 () Bool)

(assert (=> d!1926954 e!3747644))

(declare-fun res!2547613 () Bool)

(assert (=> d!1926954 (=> (not res!2547613) (not e!3747644))))

(declare-fun res!2547614 () List!64577)

(assert (=> d!1926954 (= res!2547613 (noDuplicate!1939 res!2547614))))

(declare-fun e!3747643 () Bool)

(assert (=> d!1926954 e!3747643))

(assert (=> d!1926954 (= (choose!45707 z!1189) res!2547614)))

(declare-fun b!6150236 () Bool)

(declare-fun e!3747645 () Bool)

(declare-fun tp!1717860 () Bool)

(assert (=> b!6150236 (= e!3747645 tp!1717860)))

(declare-fun tp!1717859 () Bool)

(declare-fun b!6150235 () Bool)

(assert (=> b!6150235 (= e!3747643 (and (inv!83478 (h!70901 res!2547614)) e!3747645 tp!1717859))))

(declare-fun b!6150237 () Bool)

(assert (=> b!6150237 (= e!3747644 (= (content!12007 res!2547614) z!1189))))

(assert (= b!6150235 b!6150236))

(assert (= (and d!1926954 (is-Cons!64453 res!2547614)) b!6150235))

(assert (= (and d!1926954 res!2547613) b!6150237))

(declare-fun m!6989908 () Bool)

(assert (=> d!1926954 m!6989908))

(declare-fun m!6989910 () Bool)

(assert (=> b!6150235 m!6989910))

(declare-fun m!6989912 () Bool)

(assert (=> b!6150237 m!6989912))

(assert (=> d!1926738 d!1926954))

(declare-fun d!1926956 () Bool)

(assert (=> d!1926956 (= (isDefined!12686 lt!2334277) (not (isEmpty!36415 lt!2334277)))))

(declare-fun bs!1524593 () Bool)

(assert (= bs!1524593 d!1926956))

(declare-fun m!6989914 () Bool)

(assert (=> bs!1524593 m!6989914))

(assert (=> d!1926756 d!1926956))

(declare-fun b!6150238 () Bool)

(declare-fun e!3747648 () Bool)

(declare-fun e!3747647 () Bool)

(assert (=> b!6150238 (= e!3747648 e!3747647)))

(declare-fun res!2547622 () Bool)

(assert (=> b!6150238 (=> (not res!2547622) (not e!3747647))))

(declare-fun lt!2334346 () Bool)

(assert (=> b!6150238 (= res!2547622 (not lt!2334346))))

(declare-fun b!6150239 () Bool)

(declare-fun e!3747646 () Bool)

(assert (=> b!6150239 (= e!3747646 (matchR!8275 (derivativeStep!4812 (regOne!32696 r!7292) (head!12705 Nil!64452)) (tail!11790 Nil!64452)))))

(declare-fun b!6150240 () Bool)

(declare-fun res!2547618 () Bool)

(declare-fun e!3747651 () Bool)

(assert (=> b!6150240 (=> (not res!2547618) (not e!3747651))))

(assert (=> b!6150240 (= res!2547618 (isEmpty!36414 (tail!11790 Nil!64452)))))

(declare-fun b!6150241 () Bool)

(declare-fun e!3747652 () Bool)

(assert (=> b!6150241 (= e!3747652 (not lt!2334346))))

(declare-fun b!6150242 () Bool)

(declare-fun res!2547619 () Bool)

(declare-fun e!3747650 () Bool)

(assert (=> b!6150242 (=> res!2547619 e!3747650)))

(assert (=> b!6150242 (= res!2547619 (not (isEmpty!36414 (tail!11790 Nil!64452))))))

(declare-fun b!6150243 () Bool)

(declare-fun res!2547621 () Bool)

(assert (=> b!6150243 (=> res!2547621 e!3747648)))

(assert (=> b!6150243 (= res!2547621 e!3747651)))

(declare-fun res!2547615 () Bool)

(assert (=> b!6150243 (=> (not res!2547615) (not e!3747651))))

(assert (=> b!6150243 (= res!2547615 lt!2334346)))

(declare-fun bm!511427 () Bool)

(declare-fun call!511432 () Bool)

(assert (=> bm!511427 (= call!511432 (isEmpty!36414 Nil!64452))))

(declare-fun b!6150244 () Bool)

(declare-fun e!3747649 () Bool)

(assert (=> b!6150244 (= e!3747649 e!3747652)))

(declare-fun c!1106890 () Bool)

(assert (=> b!6150244 (= c!1106890 (is-EmptyLang!16092 (regOne!32696 r!7292)))))

(declare-fun b!6150245 () Bool)

(assert (=> b!6150245 (= e!3747651 (= (head!12705 Nil!64452) (c!1106631 (regOne!32696 r!7292))))))

(declare-fun b!6150246 () Bool)

(assert (=> b!6150246 (= e!3747650 (not (= (head!12705 Nil!64452) (c!1106631 (regOne!32696 r!7292)))))))

(declare-fun b!6150247 () Bool)

(declare-fun res!2547620 () Bool)

(assert (=> b!6150247 (=> res!2547620 e!3747648)))

(assert (=> b!6150247 (= res!2547620 (not (is-ElementMatch!16092 (regOne!32696 r!7292))))))

(assert (=> b!6150247 (= e!3747652 e!3747648)))

(declare-fun b!6150248 () Bool)

(assert (=> b!6150248 (= e!3747649 (= lt!2334346 call!511432))))

(declare-fun b!6150249 () Bool)

(assert (=> b!6150249 (= e!3747646 (nullable!6085 (regOne!32696 r!7292)))))

(declare-fun b!6150250 () Bool)

(assert (=> b!6150250 (= e!3747647 e!3747650)))

(declare-fun res!2547616 () Bool)

(assert (=> b!6150250 (=> res!2547616 e!3747650)))

(assert (=> b!6150250 (= res!2547616 call!511432)))

(declare-fun b!6150251 () Bool)

(declare-fun res!2547617 () Bool)

(assert (=> b!6150251 (=> (not res!2547617) (not e!3747651))))

(assert (=> b!6150251 (= res!2547617 (not call!511432))))

(declare-fun d!1926958 () Bool)

(assert (=> d!1926958 e!3747649))

(declare-fun c!1106889 () Bool)

(assert (=> d!1926958 (= c!1106889 (is-EmptyExpr!16092 (regOne!32696 r!7292)))))

(assert (=> d!1926958 (= lt!2334346 e!3747646)))

(declare-fun c!1106888 () Bool)

(assert (=> d!1926958 (= c!1106888 (isEmpty!36414 Nil!64452))))

(assert (=> d!1926958 (validRegex!7828 (regOne!32696 r!7292))))

(assert (=> d!1926958 (= (matchR!8275 (regOne!32696 r!7292) Nil!64452) lt!2334346)))

(assert (= (and d!1926958 c!1106888) b!6150249))

(assert (= (and d!1926958 (not c!1106888)) b!6150239))

(assert (= (and d!1926958 c!1106889) b!6150248))

(assert (= (and d!1926958 (not c!1106889)) b!6150244))

(assert (= (and b!6150244 c!1106890) b!6150241))

(assert (= (and b!6150244 (not c!1106890)) b!6150247))

(assert (= (and b!6150247 (not res!2547620)) b!6150243))

(assert (= (and b!6150243 res!2547615) b!6150251))

(assert (= (and b!6150251 res!2547617) b!6150240))

(assert (= (and b!6150240 res!2547618) b!6150245))

(assert (= (and b!6150243 (not res!2547621)) b!6150238))

(assert (= (and b!6150238 res!2547622) b!6150250))

(assert (= (and b!6150250 (not res!2547616)) b!6150242))

(assert (= (and b!6150242 (not res!2547619)) b!6150246))

(assert (= (or b!6150248 b!6150250 b!6150251) bm!511427))

(assert (=> b!6150249 m!6989866))

(declare-fun m!6989916 () Bool)

(assert (=> b!6150240 m!6989916))

(assert (=> b!6150240 m!6989916))

(declare-fun m!6989918 () Bool)

(assert (=> b!6150240 m!6989918))

(declare-fun m!6989920 () Bool)

(assert (=> b!6150246 m!6989920))

(assert (=> b!6150245 m!6989920))

(assert (=> b!6150242 m!6989916))

(assert (=> b!6150242 m!6989916))

(assert (=> b!6150242 m!6989918))

(declare-fun m!6989922 () Bool)

(assert (=> d!1926958 m!6989922))

(assert (=> d!1926958 m!6989444))

(assert (=> b!6150239 m!6989920))

(assert (=> b!6150239 m!6989920))

(declare-fun m!6989924 () Bool)

(assert (=> b!6150239 m!6989924))

(assert (=> b!6150239 m!6989916))

(assert (=> b!6150239 m!6989924))

(assert (=> b!6150239 m!6989916))

(declare-fun m!6989926 () Bool)

(assert (=> b!6150239 m!6989926))

(assert (=> bm!511427 m!6989922))

(assert (=> d!1926756 d!1926958))

(declare-fun bm!511428 () Bool)

(declare-fun call!511435 () Bool)

(declare-fun call!511433 () Bool)

(assert (=> bm!511428 (= call!511435 call!511433)))

(declare-fun b!6150252 () Bool)

(declare-fun res!2547624 () Bool)

(declare-fun e!3747653 () Bool)

(assert (=> b!6150252 (=> (not res!2547624) (not e!3747653))))

(declare-fun call!511434 () Bool)

(assert (=> b!6150252 (= res!2547624 call!511434)))

(declare-fun e!3747659 () Bool)

(assert (=> b!6150252 (= e!3747659 e!3747653)))

(declare-fun b!6150253 () Bool)

(declare-fun e!3747656 () Bool)

(assert (=> b!6150253 (= e!3747656 call!511433)))

(declare-fun b!6150254 () Bool)

(declare-fun e!3747655 () Bool)

(declare-fun e!3747658 () Bool)

(assert (=> b!6150254 (= e!3747655 e!3747658)))

(declare-fun c!1106891 () Bool)

(assert (=> b!6150254 (= c!1106891 (is-Star!16092 (regOne!32696 r!7292)))))

(declare-fun b!6150255 () Bool)

(assert (=> b!6150255 (= e!3747658 e!3747659)))

(declare-fun c!1106892 () Bool)

(assert (=> b!6150255 (= c!1106892 (is-Union!16092 (regOne!32696 r!7292)))))

(declare-fun bm!511429 () Bool)

(assert (=> bm!511429 (= call!511433 (validRegex!7828 (ite c!1106891 (reg!16421 (regOne!32696 r!7292)) (ite c!1106892 (regTwo!32697 (regOne!32696 r!7292)) (regTwo!32696 (regOne!32696 r!7292))))))))

(declare-fun b!6150256 () Bool)

(declare-fun res!2547626 () Bool)

(declare-fun e!3747654 () Bool)

(assert (=> b!6150256 (=> res!2547626 e!3747654)))

(assert (=> b!6150256 (= res!2547626 (not (is-Concat!24937 (regOne!32696 r!7292))))))

(assert (=> b!6150256 (= e!3747659 e!3747654)))

(declare-fun b!6150257 () Bool)

(assert (=> b!6150257 (= e!3747658 e!3747656)))

(declare-fun res!2547623 () Bool)

(assert (=> b!6150257 (= res!2547623 (not (nullable!6085 (reg!16421 (regOne!32696 r!7292)))))))

(assert (=> b!6150257 (=> (not res!2547623) (not e!3747656))))

(declare-fun d!1926960 () Bool)

(declare-fun res!2547627 () Bool)

(assert (=> d!1926960 (=> res!2547627 e!3747655)))

(assert (=> d!1926960 (= res!2547627 (is-ElementMatch!16092 (regOne!32696 r!7292)))))

(assert (=> d!1926960 (= (validRegex!7828 (regOne!32696 r!7292)) e!3747655)))

(declare-fun b!6150258 () Bool)

(declare-fun e!3747657 () Bool)

(assert (=> b!6150258 (= e!3747654 e!3747657)))

(declare-fun res!2547625 () Bool)

(assert (=> b!6150258 (=> (not res!2547625) (not e!3747657))))

(assert (=> b!6150258 (= res!2547625 call!511434)))

(declare-fun bm!511430 () Bool)

(assert (=> bm!511430 (= call!511434 (validRegex!7828 (ite c!1106892 (regOne!32697 (regOne!32696 r!7292)) (regOne!32696 (regOne!32696 r!7292)))))))

(declare-fun b!6150259 () Bool)

(assert (=> b!6150259 (= e!3747653 call!511435)))

(declare-fun b!6150260 () Bool)

(assert (=> b!6150260 (= e!3747657 call!511435)))

(assert (= (and d!1926960 (not res!2547627)) b!6150254))

(assert (= (and b!6150254 c!1106891) b!6150257))

(assert (= (and b!6150254 (not c!1106891)) b!6150255))

(assert (= (and b!6150257 res!2547623) b!6150253))

(assert (= (and b!6150255 c!1106892) b!6150252))

(assert (= (and b!6150255 (not c!1106892)) b!6150256))

(assert (= (and b!6150252 res!2547624) b!6150259))

(assert (= (and b!6150256 (not res!2547626)) b!6150258))

(assert (= (and b!6150258 res!2547625) b!6150260))

(assert (= (or b!6150259 b!6150260) bm!511428))

(assert (= (or b!6150252 b!6150258) bm!511430))

(assert (= (or b!6150253 bm!511428) bm!511429))

(declare-fun m!6989928 () Bool)

(assert (=> bm!511429 m!6989928))

(declare-fun m!6989930 () Bool)

(assert (=> b!6150257 m!6989930))

(declare-fun m!6989932 () Bool)

(assert (=> bm!511430 m!6989932))

(assert (=> d!1926756 d!1926960))

(declare-fun d!1926962 () Bool)

(assert (=> d!1926962 (= (nullable!6085 r!7292) (nullableFct!2049 r!7292))))

(declare-fun bs!1524594 () Bool)

(assert (= bs!1524594 d!1926962))

(declare-fun m!6989934 () Bool)

(assert (=> bs!1524594 m!6989934))

(assert (=> b!6149655 d!1926962))

(declare-fun d!1926964 () Bool)

(declare-fun c!1106893 () Bool)

(assert (=> d!1926964 (= c!1106893 (isEmpty!36414 (tail!11790 (t!378063 s!2326))))))

(declare-fun e!3747660 () Bool)

(assert (=> d!1926964 (= (matchZipper!2104 (derivationStepZipper!2065 lt!2334160 (head!12705 (t!378063 s!2326))) (tail!11790 (t!378063 s!2326))) e!3747660)))

(declare-fun b!6150261 () Bool)

(assert (=> b!6150261 (= e!3747660 (nullableZipper!1873 (derivationStepZipper!2065 lt!2334160 (head!12705 (t!378063 s!2326)))))))

(declare-fun b!6150262 () Bool)

(assert (=> b!6150262 (= e!3747660 (matchZipper!2104 (derivationStepZipper!2065 (derivationStepZipper!2065 lt!2334160 (head!12705 (t!378063 s!2326))) (head!12705 (tail!11790 (t!378063 s!2326)))) (tail!11790 (tail!11790 (t!378063 s!2326)))))))

(assert (= (and d!1926964 c!1106893) b!6150261))

(assert (= (and d!1926964 (not c!1106893)) b!6150262))

(assert (=> d!1926964 m!6989330))

(assert (=> d!1926964 m!6989816))

(assert (=> b!6150261 m!6989342))

(declare-fun m!6989936 () Bool)

(assert (=> b!6150261 m!6989936))

(assert (=> b!6150262 m!6989330))

(assert (=> b!6150262 m!6989820))

(assert (=> b!6150262 m!6989342))

(assert (=> b!6150262 m!6989820))

(declare-fun m!6989938 () Bool)

(assert (=> b!6150262 m!6989938))

(assert (=> b!6150262 m!6989330))

(assert (=> b!6150262 m!6989824))

(assert (=> b!6150262 m!6989938))

(assert (=> b!6150262 m!6989824))

(declare-fun m!6989940 () Bool)

(assert (=> b!6150262 m!6989940))

(assert (=> b!6149431 d!1926964))

(declare-fun bs!1524595 () Bool)

(declare-fun d!1926966 () Bool)

(assert (= bs!1524595 (and d!1926966 b!6149238)))

(declare-fun lambda!335404 () Int)

(assert (=> bs!1524595 (= (= (head!12705 (t!378063 s!2326)) (h!70900 s!2326)) (= lambda!335404 lambda!335322))))

(declare-fun bs!1524596 () Bool)

(assert (= bs!1524596 (and d!1926966 d!1926906)))

(assert (=> bs!1524596 (= lambda!335404 lambda!335399)))

(declare-fun bs!1524597 () Bool)

(assert (= bs!1524597 (and d!1926966 d!1926926)))

(assert (=> bs!1524597 (= lambda!335404 lambda!335400)))

(assert (=> d!1926966 true))

(assert (=> d!1926966 (= (derivationStepZipper!2065 lt!2334160 (head!12705 (t!378063 s!2326))) (flatMap!1597 lt!2334160 lambda!335404))))

(declare-fun bs!1524598 () Bool)

(assert (= bs!1524598 d!1926966))

(declare-fun m!6989942 () Bool)

(assert (=> bs!1524598 m!6989942))

(assert (=> b!6149431 d!1926966))

(assert (=> b!6149431 d!1926908))

(assert (=> b!6149431 d!1926910))

(declare-fun bm!511431 () Bool)

(declare-fun call!511437 () Bool)

(declare-fun c!1106894 () Bool)

(assert (=> bm!511431 (= call!511437 (nullable!6085 (ite c!1106894 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))))))))

(declare-fun b!6150263 () Bool)

(declare-fun e!3747661 () Bool)

(declare-fun e!3747665 () Bool)

(assert (=> b!6150263 (= e!3747661 e!3747665)))

(declare-fun res!2547631 () Bool)

(assert (=> b!6150263 (=> res!2547631 e!3747665)))

(assert (=> b!6150263 (= res!2547631 (is-Star!16092 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun b!6150264 () Bool)

(declare-fun e!3747666 () Bool)

(declare-fun e!3747664 () Bool)

(assert (=> b!6150264 (= e!3747666 e!3747664)))

(declare-fun res!2547630 () Bool)

(assert (=> b!6150264 (= res!2547630 call!511437)))

(assert (=> b!6150264 (=> (not res!2547630) (not e!3747664))))

(declare-fun b!6150265 () Bool)

(declare-fun call!511436 () Bool)

(assert (=> b!6150265 (= e!3747664 call!511436)))

(declare-fun b!6150266 () Bool)

(declare-fun e!3747662 () Bool)

(assert (=> b!6150266 (= e!3747662 call!511436)))

(declare-fun b!6150267 () Bool)

(declare-fun e!3747663 () Bool)

(assert (=> b!6150267 (= e!3747663 e!3747661)))

(declare-fun res!2547628 () Bool)

(assert (=> b!6150267 (=> (not res!2547628) (not e!3747661))))

(assert (=> b!6150267 (= res!2547628 (and (not (is-EmptyLang!16092 (h!70899 (exprs!5976 (h!70901 zl!343))))) (not (is-ElementMatch!16092 (h!70899 (exprs!5976 (h!70901 zl!343)))))))))

(declare-fun b!6150268 () Bool)

(assert (=> b!6150268 (= e!3747665 e!3747666)))

(assert (=> b!6150268 (= c!1106894 (is-Union!16092 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun d!1926968 () Bool)

(declare-fun res!2547629 () Bool)

(assert (=> d!1926968 (=> res!2547629 e!3747663)))

(assert (=> d!1926968 (= res!2547629 (is-EmptyExpr!16092 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(assert (=> d!1926968 (= (nullableFct!2049 (h!70899 (exprs!5976 (h!70901 zl!343)))) e!3747663)))

(declare-fun bm!511432 () Bool)

(assert (=> bm!511432 (= call!511436 (nullable!6085 (ite c!1106894 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))))))))

(declare-fun b!6150269 () Bool)

(assert (=> b!6150269 (= e!3747666 e!3747662)))

(declare-fun res!2547632 () Bool)

(assert (=> b!6150269 (= res!2547632 call!511437)))

(assert (=> b!6150269 (=> res!2547632 e!3747662)))

(assert (= (and d!1926968 (not res!2547629)) b!6150267))

(assert (= (and b!6150267 res!2547628) b!6150263))

(assert (= (and b!6150263 (not res!2547631)) b!6150268))

(assert (= (and b!6150268 c!1106894) b!6150269))

(assert (= (and b!6150268 (not c!1106894)) b!6150264))

(assert (= (and b!6150269 (not res!2547632)) b!6150266))

(assert (= (and b!6150264 res!2547630) b!6150265))

(assert (= (or b!6150266 b!6150265) bm!511432))

(assert (= (or b!6150269 b!6150264) bm!511431))

(declare-fun m!6989944 () Bool)

(assert (=> bm!511431 m!6989944))

(declare-fun m!6989946 () Bool)

(assert (=> bm!511432 m!6989946))

(assert (=> d!1926696 d!1926968))

(assert (=> b!6149420 d!1926696))

(declare-fun b!6150270 () Bool)

(declare-fun e!3747669 () Bool)

(declare-fun e!3747668 () Bool)

(assert (=> b!6150270 (= e!3747669 e!3747668)))

(declare-fun res!2547640 () Bool)

(assert (=> b!6150270 (=> (not res!2547640) (not e!3747668))))

(declare-fun lt!2334347 () Bool)

(assert (=> b!6150270 (= res!2547640 (not lt!2334347))))

(declare-fun b!6150271 () Bool)

(declare-fun e!3747667 () Bool)

(assert (=> b!6150271 (= e!3747667 (matchR!8275 (derivativeStep!4812 (regTwo!32696 r!7292) (head!12705 (_2!36374 (get!22240 lt!2334277)))) (tail!11790 (_2!36374 (get!22240 lt!2334277)))))))

(declare-fun b!6150272 () Bool)

(declare-fun res!2547636 () Bool)

(declare-fun e!3747672 () Bool)

(assert (=> b!6150272 (=> (not res!2547636) (not e!3747672))))

(assert (=> b!6150272 (= res!2547636 (isEmpty!36414 (tail!11790 (_2!36374 (get!22240 lt!2334277)))))))

(declare-fun b!6150273 () Bool)

(declare-fun e!3747673 () Bool)

(assert (=> b!6150273 (= e!3747673 (not lt!2334347))))

(declare-fun b!6150274 () Bool)

(declare-fun res!2547637 () Bool)

(declare-fun e!3747671 () Bool)

(assert (=> b!6150274 (=> res!2547637 e!3747671)))

(assert (=> b!6150274 (= res!2547637 (not (isEmpty!36414 (tail!11790 (_2!36374 (get!22240 lt!2334277))))))))

(declare-fun b!6150275 () Bool)

(declare-fun res!2547639 () Bool)

(assert (=> b!6150275 (=> res!2547639 e!3747669)))

(assert (=> b!6150275 (= res!2547639 e!3747672)))

(declare-fun res!2547633 () Bool)

(assert (=> b!6150275 (=> (not res!2547633) (not e!3747672))))

(assert (=> b!6150275 (= res!2547633 lt!2334347)))

(declare-fun bm!511433 () Bool)

(declare-fun call!511438 () Bool)

(assert (=> bm!511433 (= call!511438 (isEmpty!36414 (_2!36374 (get!22240 lt!2334277))))))

(declare-fun b!6150276 () Bool)

(declare-fun e!3747670 () Bool)

(assert (=> b!6150276 (= e!3747670 e!3747673)))

(declare-fun c!1106897 () Bool)

(assert (=> b!6150276 (= c!1106897 (is-EmptyLang!16092 (regTwo!32696 r!7292)))))

(declare-fun b!6150277 () Bool)

(assert (=> b!6150277 (= e!3747672 (= (head!12705 (_2!36374 (get!22240 lt!2334277))) (c!1106631 (regTwo!32696 r!7292))))))

(declare-fun b!6150278 () Bool)

(assert (=> b!6150278 (= e!3747671 (not (= (head!12705 (_2!36374 (get!22240 lt!2334277))) (c!1106631 (regTwo!32696 r!7292)))))))

(declare-fun b!6150279 () Bool)

(declare-fun res!2547638 () Bool)

(assert (=> b!6150279 (=> res!2547638 e!3747669)))

(assert (=> b!6150279 (= res!2547638 (not (is-ElementMatch!16092 (regTwo!32696 r!7292))))))

(assert (=> b!6150279 (= e!3747673 e!3747669)))

(declare-fun b!6150280 () Bool)

(assert (=> b!6150280 (= e!3747670 (= lt!2334347 call!511438))))

(declare-fun b!6150281 () Bool)

(assert (=> b!6150281 (= e!3747667 (nullable!6085 (regTwo!32696 r!7292)))))

(declare-fun b!6150282 () Bool)

(assert (=> b!6150282 (= e!3747668 e!3747671)))

(declare-fun res!2547634 () Bool)

(assert (=> b!6150282 (=> res!2547634 e!3747671)))

(assert (=> b!6150282 (= res!2547634 call!511438)))

(declare-fun b!6150283 () Bool)

(declare-fun res!2547635 () Bool)

(assert (=> b!6150283 (=> (not res!2547635) (not e!3747672))))

(assert (=> b!6150283 (= res!2547635 (not call!511438))))

(declare-fun d!1926970 () Bool)

(assert (=> d!1926970 e!3747670))

(declare-fun c!1106896 () Bool)

(assert (=> d!1926970 (= c!1106896 (is-EmptyExpr!16092 (regTwo!32696 r!7292)))))

(assert (=> d!1926970 (= lt!2334347 e!3747667)))

(declare-fun c!1106895 () Bool)

(assert (=> d!1926970 (= c!1106895 (isEmpty!36414 (_2!36374 (get!22240 lt!2334277))))))

(assert (=> d!1926970 (validRegex!7828 (regTwo!32696 r!7292))))

(assert (=> d!1926970 (= (matchR!8275 (regTwo!32696 r!7292) (_2!36374 (get!22240 lt!2334277))) lt!2334347)))

(assert (= (and d!1926970 c!1106895) b!6150281))

(assert (= (and d!1926970 (not c!1106895)) b!6150271))

(assert (= (and d!1926970 c!1106896) b!6150280))

(assert (= (and d!1926970 (not c!1106896)) b!6150276))

(assert (= (and b!6150276 c!1106897) b!6150273))

(assert (= (and b!6150276 (not c!1106897)) b!6150279))

(assert (= (and b!6150279 (not res!2547638)) b!6150275))

(assert (= (and b!6150275 res!2547633) b!6150283))

(assert (= (and b!6150283 res!2547635) b!6150272))

(assert (= (and b!6150272 res!2547636) b!6150277))

(assert (= (and b!6150275 (not res!2547639)) b!6150270))

(assert (= (and b!6150270 res!2547640) b!6150282))

(assert (= (and b!6150282 (not res!2547634)) b!6150274))

(assert (= (and b!6150274 (not res!2547637)) b!6150278))

(assert (= (or b!6150280 b!6150282 b!6150283) bm!511433))

(declare-fun m!6989948 () Bool)

(assert (=> b!6150281 m!6989948))

(declare-fun m!6989950 () Bool)

(assert (=> b!6150272 m!6989950))

(assert (=> b!6150272 m!6989950))

(declare-fun m!6989952 () Bool)

(assert (=> b!6150272 m!6989952))

(declare-fun m!6989954 () Bool)

(assert (=> b!6150278 m!6989954))

(assert (=> b!6150277 m!6989954))

(assert (=> b!6150274 m!6989950))

(assert (=> b!6150274 m!6989950))

(assert (=> b!6150274 m!6989952))

(declare-fun m!6989956 () Bool)

(assert (=> d!1926970 m!6989956))

(declare-fun m!6989958 () Bool)

(assert (=> d!1926970 m!6989958))

(assert (=> b!6150271 m!6989954))

(assert (=> b!6150271 m!6989954))

(declare-fun m!6989960 () Bool)

(assert (=> b!6150271 m!6989960))

(assert (=> b!6150271 m!6989950))

(assert (=> b!6150271 m!6989960))

(assert (=> b!6150271 m!6989950))

(declare-fun m!6989962 () Bool)

(assert (=> b!6150271 m!6989962))

(assert (=> bm!511433 m!6989956))

(assert (=> b!6149549 d!1926970))

(assert (=> b!6149549 d!1926932))

(declare-fun bs!1524599 () Bool)

(declare-fun d!1926972 () Bool)

(assert (= bs!1524599 (and d!1926972 d!1926936)))

(declare-fun lambda!335405 () Int)

(assert (=> bs!1524599 (= lambda!335405 lambda!335403)))

(assert (=> d!1926972 (= (nullableZipper!1873 (set.union lt!2334160 lt!2334149)) (exists!2438 (set.union lt!2334160 lt!2334149) lambda!335405))))

(declare-fun bs!1524600 () Bool)

(assert (= bs!1524600 d!1926972))

(declare-fun m!6989964 () Bool)

(assert (=> bs!1524600 m!6989964))

(assert (=> b!6149695 d!1926972))

(declare-fun d!1926974 () Bool)

(declare-fun c!1106898 () Bool)

(assert (=> d!1926974 (= c!1106898 (isEmpty!36414 (t!378063 s!2326)))))

(declare-fun e!3747674 () Bool)

(assert (=> d!1926974 (= (matchZipper!2104 (set.union lt!2334160 lt!2334169) (t!378063 s!2326)) e!3747674)))

(declare-fun b!6150284 () Bool)

(assert (=> b!6150284 (= e!3747674 (nullableZipper!1873 (set.union lt!2334160 lt!2334169)))))

(declare-fun b!6150285 () Bool)

(assert (=> b!6150285 (= e!3747674 (matchZipper!2104 (derivationStepZipper!2065 (set.union lt!2334160 lt!2334169) (head!12705 (t!378063 s!2326))) (tail!11790 (t!378063 s!2326))))))

(assert (= (and d!1926974 c!1106898) b!6150284))

(assert (= (and d!1926974 (not c!1106898)) b!6150285))

(assert (=> d!1926974 m!6989322))

(declare-fun m!6989966 () Bool)

(assert (=> b!6150284 m!6989966))

(assert (=> b!6150285 m!6989326))

(assert (=> b!6150285 m!6989326))

(declare-fun m!6989968 () Bool)

(assert (=> b!6150285 m!6989968))

(assert (=> b!6150285 m!6989330))

(assert (=> b!6150285 m!6989968))

(assert (=> b!6150285 m!6989330))

(declare-fun m!6989970 () Bool)

(assert (=> b!6150285 m!6989970))

(assert (=> d!1926718 d!1926974))

(assert (=> d!1926718 d!1926716))

(declare-fun e!3747677 () Bool)

(declare-fun d!1926976 () Bool)

(assert (=> d!1926976 (= (matchZipper!2104 (set.union lt!2334160 lt!2334169) (t!378063 s!2326)) e!3747677)))

(declare-fun res!2547643 () Bool)

(assert (=> d!1926976 (=> res!2547643 e!3747677)))

(assert (=> d!1926976 (= res!2547643 (matchZipper!2104 lt!2334160 (t!378063 s!2326)))))

(assert (=> d!1926976 true))

(declare-fun _$48!1684 () Unit!157531)

(assert (=> d!1926976 (= (choose!45706 lt!2334160 lt!2334169 (t!378063 s!2326)) _$48!1684)))

(declare-fun b!6150288 () Bool)

(assert (=> b!6150288 (= e!3747677 (matchZipper!2104 lt!2334169 (t!378063 s!2326)))))

(assert (= (and d!1926976 (not res!2547643)) b!6150288))

(assert (=> d!1926976 m!6989346))

(assert (=> d!1926976 m!6989138))

(assert (=> b!6150288 m!6989122))

(assert (=> d!1926718 d!1926976))

(declare-fun b!6150289 () Bool)

(declare-fun e!3747683 () Bool)

(assert (=> b!6150289 (= e!3747683 (nullable!6085 (regOne!32696 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343))))))))))))

(declare-fun c!1106900 () Bool)

(declare-fun c!1106902 () Bool)

(declare-fun call!511444 () (Set Context!10952))

(declare-fun call!511442 () List!64575)

(declare-fun bm!511434 () Bool)

(declare-fun c!1106901 () Bool)

(assert (=> bm!511434 (= call!511444 (derivationStepZipperDown!1340 (ite c!1106900 (regTwo!32697 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))) (ite c!1106901 (regTwo!32696 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))) (ite c!1106902 (regOne!32696 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))) (reg!16421 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343))))))))))) (ite (or c!1106900 c!1106901) (Context!10953 (t!378062 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))) (Context!10953 call!511442)) (h!70900 s!2326)))))

(declare-fun b!6150290 () Bool)

(declare-fun e!3747679 () (Set Context!10952))

(declare-fun call!511443 () (Set Context!10952))

(assert (=> b!6150290 (= e!3747679 (set.union call!511443 call!511444))))

(declare-fun bm!511435 () Bool)

(declare-fun call!511441 () (Set Context!10952))

(declare-fun call!511440 () (Set Context!10952))

(assert (=> bm!511435 (= call!511441 call!511440)))

(declare-fun b!6150291 () Bool)

(declare-fun e!3747681 () (Set Context!10952))

(assert (=> b!6150291 (= e!3747681 call!511441)))

(declare-fun call!511439 () List!64575)

(declare-fun bm!511436 () Bool)

(assert (=> bm!511436 (= call!511443 (derivationStepZipperDown!1340 (ite c!1106900 (regOne!32697 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))) (regOne!32696 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343))))))))) (ite c!1106900 (Context!10953 (t!378062 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))) (Context!10953 call!511439)) (h!70900 s!2326)))))

(declare-fun b!6150292 () Bool)

(assert (=> b!6150292 (= e!3747681 (as set.empty (Set Context!10952)))))

(declare-fun bm!511437 () Bool)

(assert (=> bm!511437 (= call!511439 ($colon$colon!1969 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343))))))))) (ite (or c!1106901 c!1106902) (regTwo!32696 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))) (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343))))))))))))

(declare-fun bm!511438 () Bool)

(assert (=> bm!511438 (= call!511442 call!511439)))

(declare-fun d!1926978 () Bool)

(declare-fun c!1106899 () Bool)

(assert (=> d!1926978 (= c!1106899 (and (is-ElementMatch!16092 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))) (= (c!1106631 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))) (h!70900 s!2326))))))

(declare-fun e!3747678 () (Set Context!10952))

(assert (=> d!1926978 (= (derivationStepZipperDown!1340 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343))))))) (Context!10953 (t!378062 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))) (h!70900 s!2326)) e!3747678)))

(declare-fun b!6150293 () Bool)

(assert (=> b!6150293 (= e!3747678 e!3747679)))

(assert (=> b!6150293 (= c!1106900 (is-Union!16092 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))))))

(declare-fun b!6150294 () Bool)

(declare-fun c!1106903 () Bool)

(assert (=> b!6150294 (= c!1106903 (is-Star!16092 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))))))

(declare-fun e!3747682 () (Set Context!10952))

(assert (=> b!6150294 (= e!3747682 e!3747681)))

(declare-fun b!6150295 () Bool)

(declare-fun e!3747680 () (Set Context!10952))

(assert (=> b!6150295 (= e!3747680 e!3747682)))

(assert (=> b!6150295 (= c!1106902 (is-Concat!24937 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))))))

(declare-fun b!6150296 () Bool)

(assert (=> b!6150296 (= e!3747682 call!511441)))

(declare-fun bm!511439 () Bool)

(assert (=> bm!511439 (= call!511440 call!511444)))

(declare-fun b!6150297 () Bool)

(assert (=> b!6150297 (= e!3747678 (set.insert (Context!10953 (t!378062 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))) (as set.empty (Set Context!10952))))))

(declare-fun b!6150298 () Bool)

(assert (=> b!6150298 (= e!3747680 (set.union call!511443 call!511440))))

(declare-fun b!6150299 () Bool)

(assert (=> b!6150299 (= c!1106901 e!3747683)))

(declare-fun res!2547644 () Bool)

(assert (=> b!6150299 (=> (not res!2547644) (not e!3747683))))

(assert (=> b!6150299 (= res!2547644 (is-Concat!24937 (h!70899 (exprs!5976 (Context!10953 (Cons!64451 (h!70899 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343)))))))))))

(assert (=> b!6150299 (= e!3747679 e!3747680)))

(assert (= (and d!1926978 c!1106899) b!6150297))

(assert (= (and d!1926978 (not c!1106899)) b!6150293))

(assert (= (and b!6150293 c!1106900) b!6150290))

(assert (= (and b!6150293 (not c!1106900)) b!6150299))

(assert (= (and b!6150299 res!2547644) b!6150289))

(assert (= (and b!6150299 c!1106901) b!6150298))

(assert (= (and b!6150299 (not c!1106901)) b!6150295))

(assert (= (and b!6150295 c!1106902) b!6150296))

(assert (= (and b!6150295 (not c!1106902)) b!6150294))

(assert (= (and b!6150294 c!1106903) b!6150291))

(assert (= (and b!6150294 (not c!1106903)) b!6150292))

(assert (= (or b!6150296 b!6150291) bm!511438))

(assert (= (or b!6150296 b!6150291) bm!511435))

(assert (= (or b!6150298 bm!511438) bm!511437))

(assert (= (or b!6150298 bm!511435) bm!511439))

(assert (= (or b!6150290 bm!511439) bm!511434))

(assert (= (or b!6150290 b!6150298) bm!511436))

(declare-fun m!6989972 () Bool)

(assert (=> b!6150297 m!6989972))

(declare-fun m!6989974 () Bool)

(assert (=> bm!511436 m!6989974))

(declare-fun m!6989976 () Bool)

(assert (=> b!6150289 m!6989976))

(declare-fun m!6989978 () Bool)

(assert (=> bm!511434 m!6989978))

(declare-fun m!6989980 () Bool)

(assert (=> bm!511437 m!6989980))

(assert (=> bm!511296 d!1926978))

(declare-fun bs!1524601 () Bool)

(declare-fun d!1926980 () Bool)

(assert (= bs!1524601 (and d!1926980 d!1926936)))

(declare-fun lambda!335406 () Int)

(assert (=> bs!1524601 (= lambda!335406 lambda!335403)))

(declare-fun bs!1524602 () Bool)

(assert (= bs!1524602 (and d!1926980 d!1926972)))

(assert (=> bs!1524602 (= lambda!335406 lambda!335405)))

(assert (=> d!1926980 (= (nullableZipper!1873 lt!2334167) (exists!2438 lt!2334167 lambda!335406))))

(declare-fun bs!1524603 () Bool)

(assert (= bs!1524603 d!1926980))

(declare-fun m!6989982 () Bool)

(assert (=> bs!1524603 m!6989982))

(assert (=> b!6149428 d!1926980))

(declare-fun bs!1524604 () Bool)

(declare-fun d!1926982 () Bool)

(assert (= bs!1524604 (and d!1926982 d!1926896)))

(declare-fun lambda!335407 () Int)

(assert (=> bs!1524604 (= lambda!335407 lambda!335396)))

(declare-fun bs!1524605 () Bool)

(assert (= bs!1524605 (and d!1926982 d!1926780)))

(assert (=> bs!1524605 (= lambda!335407 lambda!335363)))

(declare-fun bs!1524606 () Bool)

(assert (= bs!1524606 (and d!1926982 d!1926782)))

(assert (=> bs!1524606 (= lambda!335407 lambda!335366)))

(declare-fun bs!1524607 () Bool)

(assert (= bs!1524607 (and d!1926982 d!1926768)))

(assert (=> bs!1524607 (= lambda!335407 lambda!335354)))

(declare-fun bs!1524608 () Bool)

(assert (= bs!1524608 (and d!1926982 d!1926736)))

(assert (=> bs!1524608 (= lambda!335407 lambda!335344)))

(declare-fun bs!1524609 () Bool)

(assert (= bs!1524609 (and d!1926982 d!1926728)))

(assert (=> bs!1524609 (= lambda!335407 lambda!335343)))

(declare-fun bs!1524610 () Bool)

(assert (= bs!1524610 (and d!1926982 d!1926708)))

(assert (=> bs!1524610 (= lambda!335407 lambda!335340)))

(assert (=> d!1926982 (= (inv!83478 setElem!41631) (forall!15213 (exprs!5976 setElem!41631) lambda!335407))))

(declare-fun bs!1524611 () Bool)

(assert (= bs!1524611 d!1926982))

(declare-fun m!6989984 () Bool)

(assert (=> bs!1524611 m!6989984))

(assert (=> setNonEmpty!41631 d!1926982))

(declare-fun bs!1524612 () Bool)

(declare-fun d!1926984 () Bool)

(assert (= bs!1524612 (and d!1926984 d!1926896)))

(declare-fun lambda!335408 () Int)

(assert (=> bs!1524612 (= lambda!335408 lambda!335396)))

(declare-fun bs!1524613 () Bool)

(assert (= bs!1524613 (and d!1926984 d!1926780)))

(assert (=> bs!1524613 (= lambda!335408 lambda!335363)))

(declare-fun bs!1524614 () Bool)

(assert (= bs!1524614 (and d!1926984 d!1926782)))

(assert (=> bs!1524614 (= lambda!335408 lambda!335366)))

(declare-fun bs!1524615 () Bool)

(assert (= bs!1524615 (and d!1926984 d!1926768)))

(assert (=> bs!1524615 (= lambda!335408 lambda!335354)))

(declare-fun bs!1524616 () Bool)

(assert (= bs!1524616 (and d!1926984 d!1926736)))

(assert (=> bs!1524616 (= lambda!335408 lambda!335344)))

(declare-fun bs!1524617 () Bool)

(assert (= bs!1524617 (and d!1926984 d!1926982)))

(assert (=> bs!1524617 (= lambda!335408 lambda!335407)))

(declare-fun bs!1524618 () Bool)

(assert (= bs!1524618 (and d!1926984 d!1926728)))

(assert (=> bs!1524618 (= lambda!335408 lambda!335343)))

(declare-fun bs!1524619 () Bool)

(assert (= bs!1524619 (and d!1926984 d!1926708)))

(assert (=> bs!1524619 (= lambda!335408 lambda!335340)))

(declare-fun b!6150300 () Bool)

(declare-fun e!3747686 () Regex!16092)

(assert (=> b!6150300 (= e!3747686 (h!70899 (t!378062 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun b!6150301 () Bool)

(declare-fun e!3747688 () Bool)

(declare-fun lt!2334348 () Regex!16092)

(assert (=> b!6150301 (= e!3747688 (isConcat!1032 lt!2334348))))

(declare-fun b!6150302 () Bool)

(declare-fun e!3747689 () Regex!16092)

(assert (=> b!6150302 (= e!3747686 e!3747689)))

(declare-fun c!1106905 () Bool)

(assert (=> b!6150302 (= c!1106905 (is-Cons!64451 (t!378062 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun b!6150303 () Bool)

(declare-fun e!3747687 () Bool)

(assert (=> b!6150303 (= e!3747687 (isEmptyExpr!1509 lt!2334348))))

(declare-fun b!6150304 () Bool)

(assert (=> b!6150304 (= e!3747688 (= lt!2334348 (head!12706 (t!378062 (exprs!5976 (h!70901 zl!343))))))))

(declare-fun b!6150305 () Bool)

(assert (=> b!6150305 (= e!3747689 EmptyExpr!16092)))

(declare-fun e!3747684 () Bool)

(assert (=> d!1926984 e!3747684))

(declare-fun res!2547645 () Bool)

(assert (=> d!1926984 (=> (not res!2547645) (not e!3747684))))

(assert (=> d!1926984 (= res!2547645 (validRegex!7828 lt!2334348))))

(assert (=> d!1926984 (= lt!2334348 e!3747686)))

(declare-fun c!1106907 () Bool)

(declare-fun e!3747685 () Bool)

(assert (=> d!1926984 (= c!1106907 e!3747685)))

(declare-fun res!2547646 () Bool)

(assert (=> d!1926984 (=> (not res!2547646) (not e!3747685))))

(assert (=> d!1926984 (= res!2547646 (is-Cons!64451 (t!378062 (exprs!5976 (h!70901 zl!343)))))))

(assert (=> d!1926984 (forall!15213 (t!378062 (exprs!5976 (h!70901 zl!343))) lambda!335408)))

(assert (=> d!1926984 (= (generalisedConcat!1689 (t!378062 (exprs!5976 (h!70901 zl!343)))) lt!2334348)))

(declare-fun b!6150306 () Bool)

(assert (=> b!6150306 (= e!3747684 e!3747687)))

(declare-fun c!1106906 () Bool)

(assert (=> b!6150306 (= c!1106906 (isEmpty!36411 (t!378062 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun b!6150307 () Bool)

(assert (=> b!6150307 (= e!3747685 (isEmpty!36411 (t!378062 (t!378062 (exprs!5976 (h!70901 zl!343))))))))

(declare-fun b!6150308 () Bool)

(assert (=> b!6150308 (= e!3747689 (Concat!24937 (h!70899 (t!378062 (exprs!5976 (h!70901 zl!343)))) (generalisedConcat!1689 (t!378062 (t!378062 (exprs!5976 (h!70901 zl!343)))))))))

(declare-fun b!6150309 () Bool)

(assert (=> b!6150309 (= e!3747687 e!3747688)))

(declare-fun c!1106904 () Bool)

(assert (=> b!6150309 (= c!1106904 (isEmpty!36411 (tail!11791 (t!378062 (exprs!5976 (h!70901 zl!343))))))))

(assert (= (and d!1926984 res!2547646) b!6150307))

(assert (= (and d!1926984 c!1106907) b!6150300))

(assert (= (and d!1926984 (not c!1106907)) b!6150302))

(assert (= (and b!6150302 c!1106905) b!6150308))

(assert (= (and b!6150302 (not c!1106905)) b!6150305))

(assert (= (and d!1926984 res!2547645) b!6150306))

(assert (= (and b!6150306 c!1106906) b!6150303))

(assert (= (and b!6150306 (not c!1106906)) b!6150309))

(assert (= (and b!6150309 c!1106904) b!6150304))

(assert (= (and b!6150309 (not c!1106904)) b!6150301))

(assert (=> b!6150306 m!6989184))

(declare-fun m!6989986 () Bool)

(assert (=> b!6150303 m!6989986))

(declare-fun m!6989988 () Bool)

(assert (=> b!6150301 m!6989988))

(declare-fun m!6989990 () Bool)

(assert (=> b!6150304 m!6989990))

(declare-fun m!6989992 () Bool)

(assert (=> b!6150308 m!6989992))

(declare-fun m!6989994 () Bool)

(assert (=> d!1926984 m!6989994))

(declare-fun m!6989996 () Bool)

(assert (=> d!1926984 m!6989996))

(declare-fun m!6989998 () Bool)

(assert (=> b!6150309 m!6989998))

(assert (=> b!6150309 m!6989998))

(declare-fun m!6990000 () Bool)

(assert (=> b!6150309 m!6990000))

(declare-fun m!6990002 () Bool)

(assert (=> b!6150307 m!6990002))

(assert (=> b!6149514 d!1926984))

(declare-fun d!1926986 () Bool)

(assert (=> d!1926986 true))

(assert (=> d!1926986 true))

(declare-fun res!2547649 () Bool)

(assert (=> d!1926986 (= (choose!45708 lambda!335321) res!2547649)))

(assert (=> d!1926760 d!1926986))

(declare-fun bs!1524620 () Bool)

(declare-fun d!1926988 () Bool)

(assert (= bs!1524620 (and d!1926988 d!1926936)))

(declare-fun lambda!335409 () Int)

(assert (=> bs!1524620 (= lambda!335409 lambda!335403)))

(declare-fun bs!1524621 () Bool)

(assert (= bs!1524621 (and d!1926988 d!1926972)))

(assert (=> bs!1524621 (= lambda!335409 lambda!335405)))

(declare-fun bs!1524622 () Bool)

(assert (= bs!1524622 (and d!1926988 d!1926980)))

(assert (=> bs!1524622 (= lambda!335409 lambda!335406)))

(assert (=> d!1926988 (= (nullableZipper!1873 lt!2334169) (exists!2438 lt!2334169 lambda!335409))))

(declare-fun bs!1524623 () Bool)

(assert (= bs!1524623 d!1926988))

(declare-fun m!6990004 () Bool)

(assert (=> bs!1524623 m!6990004))

(assert (=> b!6149516 d!1926988))

(declare-fun b!6150310 () Bool)

(declare-fun e!3747695 () Bool)

(assert (=> b!6150310 (= e!3747695 (nullable!6085 (regOne!32696 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292)))))))))))

(declare-fun c!1106911 () Bool)

(declare-fun c!1106910 () Bool)

(declare-fun call!511450 () (Set Context!10952))

(declare-fun c!1106909 () Bool)

(declare-fun bm!511440 () Bool)

(declare-fun call!511448 () List!64575)

(assert (=> bm!511440 (= call!511450 (derivationStepZipperDown!1340 (ite c!1106909 (regTwo!32697 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292))))))) (ite c!1106910 (regTwo!32696 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292))))))) (ite c!1106911 (regOne!32696 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292))))))) (reg!16421 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292)))))))))) (ite (or c!1106909 c!1106910) (ite (or c!1106689 c!1106690) lt!2334170 (Context!10953 call!511340)) (Context!10953 call!511448)) (h!70900 s!2326)))))

(declare-fun b!6150311 () Bool)

(declare-fun e!3747691 () (Set Context!10952))

(declare-fun call!511449 () (Set Context!10952))

(assert (=> b!6150311 (= e!3747691 (set.union call!511449 call!511450))))

(declare-fun bm!511441 () Bool)

(declare-fun call!511447 () (Set Context!10952))

(declare-fun call!511446 () (Set Context!10952))

(assert (=> bm!511441 (= call!511447 call!511446)))

(declare-fun b!6150312 () Bool)

(declare-fun e!3747693 () (Set Context!10952))

(assert (=> b!6150312 (= e!3747693 call!511447)))

(declare-fun call!511445 () List!64575)

(declare-fun bm!511442 () Bool)

(assert (=> bm!511442 (= call!511449 (derivationStepZipperDown!1340 (ite c!1106909 (regOne!32697 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292))))))) (regOne!32696 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292)))))))) (ite c!1106909 (ite (or c!1106689 c!1106690) lt!2334170 (Context!10953 call!511340)) (Context!10953 call!511445)) (h!70900 s!2326)))))

(declare-fun b!6150313 () Bool)

(assert (=> b!6150313 (= e!3747693 (as set.empty (Set Context!10952)))))

(declare-fun bm!511443 () Bool)

(assert (=> bm!511443 (= call!511445 ($colon$colon!1969 (exprs!5976 (ite (or c!1106689 c!1106690) lt!2334170 (Context!10953 call!511340))) (ite (or c!1106910 c!1106911) (regTwo!32696 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292))))))) (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292)))))))))))

(declare-fun bm!511444 () Bool)

(assert (=> bm!511444 (= call!511448 call!511445)))

(declare-fun d!1926990 () Bool)

(declare-fun c!1106908 () Bool)

(assert (=> d!1926990 (= c!1106908 (and (is-ElementMatch!16092 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292))))))) (= (c!1106631 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292))))))) (h!70900 s!2326))))))

(declare-fun e!3747690 () (Set Context!10952))

(assert (=> d!1926990 (= (derivationStepZipperDown!1340 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292)))))) (ite (or c!1106689 c!1106690) lt!2334170 (Context!10953 call!511340)) (h!70900 s!2326)) e!3747690)))

(declare-fun b!6150314 () Bool)

(assert (=> b!6150314 (= e!3747690 e!3747691)))

(assert (=> b!6150314 (= c!1106909 (is-Union!16092 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292))))))))))

(declare-fun c!1106912 () Bool)

(declare-fun b!6150315 () Bool)

(assert (=> b!6150315 (= c!1106912 (is-Star!16092 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292))))))))))

(declare-fun e!3747694 () (Set Context!10952))

(assert (=> b!6150315 (= e!3747694 e!3747693)))

(declare-fun b!6150316 () Bool)

(declare-fun e!3747692 () (Set Context!10952))

(assert (=> b!6150316 (= e!3747692 e!3747694)))

(assert (=> b!6150316 (= c!1106911 (is-Concat!24937 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292))))))))))

(declare-fun b!6150317 () Bool)

(assert (=> b!6150317 (= e!3747694 call!511447)))

(declare-fun bm!511445 () Bool)

(assert (=> bm!511445 (= call!511446 call!511450)))

(declare-fun b!6150318 () Bool)

(assert (=> b!6150318 (= e!3747690 (set.insert (ite (or c!1106689 c!1106690) lt!2334170 (Context!10953 call!511340)) (as set.empty (Set Context!10952))))))

(declare-fun b!6150319 () Bool)

(assert (=> b!6150319 (= e!3747692 (set.union call!511449 call!511446))))

(declare-fun b!6150320 () Bool)

(assert (=> b!6150320 (= c!1106910 e!3747695)))

(declare-fun res!2547650 () Bool)

(assert (=> b!6150320 (=> (not res!2547650) (not e!3747695))))

(assert (=> b!6150320 (= res!2547650 (is-Concat!24937 (ite c!1106689 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106690 (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (ite c!1106691 (regOne!32696 (regOne!32697 (regOne!32696 r!7292))) (reg!16421 (regOne!32697 (regOne!32696 r!7292))))))))))

(assert (=> b!6150320 (= e!3747691 e!3747692)))

(assert (= (and d!1926990 c!1106908) b!6150318))

(assert (= (and d!1926990 (not c!1106908)) b!6150314))

(assert (= (and b!6150314 c!1106909) b!6150311))

(assert (= (and b!6150314 (not c!1106909)) b!6150320))

(assert (= (and b!6150320 res!2547650) b!6150310))

(assert (= (and b!6150320 c!1106910) b!6150319))

(assert (= (and b!6150320 (not c!1106910)) b!6150316))

(assert (= (and b!6150316 c!1106911) b!6150317))

(assert (= (and b!6150316 (not c!1106911)) b!6150315))

(assert (= (and b!6150315 c!1106912) b!6150312))

(assert (= (and b!6150315 (not c!1106912)) b!6150313))

(assert (= (or b!6150317 b!6150312) bm!511444))

(assert (= (or b!6150317 b!6150312) bm!511441))

(assert (= (or b!6150319 bm!511444) bm!511443))

(assert (= (or b!6150319 bm!511441) bm!511445))

(assert (= (or b!6150311 bm!511445) bm!511440))

(assert (= (or b!6150311 b!6150319) bm!511442))

(declare-fun m!6990006 () Bool)

(assert (=> b!6150318 m!6990006))

(declare-fun m!6990008 () Bool)

(assert (=> bm!511442 m!6990008))

(declare-fun m!6990010 () Bool)

(assert (=> b!6150310 m!6990010))

(declare-fun m!6990012 () Bool)

(assert (=> bm!511440 m!6990012))

(declare-fun m!6990014 () Bool)

(assert (=> bm!511443 m!6990014))

(assert (=> bm!511332 d!1926990))

(declare-fun d!1926992 () Bool)

(assert (=> d!1926992 (= (isEmpty!36414 (tail!11790 s!2326)) (is-Nil!64452 (tail!11790 s!2326)))))

(assert (=> b!6149648 d!1926992))

(declare-fun d!1926994 () Bool)

(assert (=> d!1926994 (= (tail!11790 s!2326) (t!378063 s!2326))))

(assert (=> b!6149648 d!1926994))

(declare-fun d!1926996 () Bool)

(declare-fun c!1106913 () Bool)

(assert (=> d!1926996 (= c!1106913 (isEmpty!36414 (tail!11790 (t!378063 s!2326))))))

(declare-fun e!3747696 () Bool)

(assert (=> d!1926996 (= (matchZipper!2104 (derivationStepZipper!2065 (set.union lt!2334160 lt!2334149) (head!12705 (t!378063 s!2326))) (tail!11790 (t!378063 s!2326))) e!3747696)))

(declare-fun b!6150321 () Bool)

(assert (=> b!6150321 (= e!3747696 (nullableZipper!1873 (derivationStepZipper!2065 (set.union lt!2334160 lt!2334149) (head!12705 (t!378063 s!2326)))))))

(declare-fun b!6150322 () Bool)

(assert (=> b!6150322 (= e!3747696 (matchZipper!2104 (derivationStepZipper!2065 (derivationStepZipper!2065 (set.union lt!2334160 lt!2334149) (head!12705 (t!378063 s!2326))) (head!12705 (tail!11790 (t!378063 s!2326)))) (tail!11790 (tail!11790 (t!378063 s!2326)))))))

(assert (= (and d!1926996 c!1106913) b!6150321))

(assert (= (and d!1926996 (not c!1106913)) b!6150322))

(assert (=> d!1926996 m!6989330))

(assert (=> d!1926996 m!6989816))

(assert (=> b!6150321 m!6989540))

(declare-fun m!6990016 () Bool)

(assert (=> b!6150321 m!6990016))

(assert (=> b!6150322 m!6989330))

(assert (=> b!6150322 m!6989820))

(assert (=> b!6150322 m!6989540))

(assert (=> b!6150322 m!6989820))

(declare-fun m!6990018 () Bool)

(assert (=> b!6150322 m!6990018))

(assert (=> b!6150322 m!6989330))

(assert (=> b!6150322 m!6989824))

(assert (=> b!6150322 m!6990018))

(assert (=> b!6150322 m!6989824))

(declare-fun m!6990020 () Bool)

(assert (=> b!6150322 m!6990020))

(assert (=> b!6149696 d!1926996))

(declare-fun bs!1524624 () Bool)

(declare-fun d!1926998 () Bool)

(assert (= bs!1524624 (and d!1926998 b!6149238)))

(declare-fun lambda!335410 () Int)

(assert (=> bs!1524624 (= (= (head!12705 (t!378063 s!2326)) (h!70900 s!2326)) (= lambda!335410 lambda!335322))))

(declare-fun bs!1524625 () Bool)

(assert (= bs!1524625 (and d!1926998 d!1926906)))

(assert (=> bs!1524625 (= lambda!335410 lambda!335399)))

(declare-fun bs!1524626 () Bool)

(assert (= bs!1524626 (and d!1926998 d!1926926)))

(assert (=> bs!1524626 (= lambda!335410 lambda!335400)))

(declare-fun bs!1524627 () Bool)

(assert (= bs!1524627 (and d!1926998 d!1926966)))

(assert (=> bs!1524627 (= lambda!335410 lambda!335404)))

(assert (=> d!1926998 true))

(assert (=> d!1926998 (= (derivationStepZipper!2065 (set.union lt!2334160 lt!2334149) (head!12705 (t!378063 s!2326))) (flatMap!1597 (set.union lt!2334160 lt!2334149) lambda!335410))))

(declare-fun bs!1524628 () Bool)

(assert (= bs!1524628 d!1926998))

(declare-fun m!6990022 () Bool)

(assert (=> bs!1524628 m!6990022))

(assert (=> b!6149696 d!1926998))

(assert (=> b!6149696 d!1926908))

(assert (=> b!6149696 d!1926910))

(declare-fun call!511451 () (Set Context!10952))

(declare-fun b!6150323 () Bool)

(declare-fun e!3747699 () (Set Context!10952))

(assert (=> b!6150323 (= e!3747699 (set.union call!511451 (derivationStepZipperUp!1266 (Context!10953 (t!378062 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334170)))))) (h!70900 s!2326))))))

(declare-fun b!6150324 () Bool)

(declare-fun e!3747697 () (Set Context!10952))

(assert (=> b!6150324 (= e!3747697 call!511451)))

(declare-fun d!1927000 () Bool)

(declare-fun c!1106914 () Bool)

(declare-fun e!3747698 () Bool)

(assert (=> d!1927000 (= c!1106914 e!3747698)))

(declare-fun res!2547651 () Bool)

(assert (=> d!1927000 (=> (not res!2547651) (not e!3747698))))

(assert (=> d!1927000 (= res!2547651 (is-Cons!64451 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334170))))))))

(assert (=> d!1927000 (= (derivationStepZipperUp!1266 (Context!10953 (t!378062 (exprs!5976 lt!2334170))) (h!70900 s!2326)) e!3747699)))

(declare-fun b!6150325 () Bool)

(assert (=> b!6150325 (= e!3747697 (as set.empty (Set Context!10952)))))

(declare-fun b!6150326 () Bool)

(assert (=> b!6150326 (= e!3747698 (nullable!6085 (h!70899 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334170)))))))))

(declare-fun bm!511446 () Bool)

(assert (=> bm!511446 (= call!511451 (derivationStepZipperDown!1340 (h!70899 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334170))))) (Context!10953 (t!378062 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334170)))))) (h!70900 s!2326)))))

(declare-fun b!6150327 () Bool)

(assert (=> b!6150327 (= e!3747699 e!3747697)))

(declare-fun c!1106915 () Bool)

(assert (=> b!6150327 (= c!1106915 (is-Cons!64451 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334170))))))))

(assert (= (and d!1927000 res!2547651) b!6150326))

(assert (= (and d!1927000 c!1106914) b!6150323))

(assert (= (and d!1927000 (not c!1106914)) b!6150327))

(assert (= (and b!6150327 c!1106915) b!6150324))

(assert (= (and b!6150327 (not c!1106915)) b!6150325))

(assert (= (or b!6150323 b!6150324) bm!511446))

(declare-fun m!6990024 () Bool)

(assert (=> b!6150323 m!6990024))

(declare-fun m!6990026 () Bool)

(assert (=> b!6150326 m!6990026))

(declare-fun m!6990028 () Bool)

(assert (=> bm!511446 m!6990028))

(assert (=> b!6149379 d!1927000))

(declare-fun b!6150328 () Bool)

(declare-fun e!3747705 () Bool)

(assert (=> b!6150328 (= e!3747705 (nullable!6085 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343))))))))

(declare-fun c!1106919 () Bool)

(declare-fun c!1106917 () Bool)

(declare-fun bm!511447 () Bool)

(declare-fun call!511455 () List!64575)

(declare-fun c!1106918 () Bool)

(declare-fun call!511457 () (Set Context!10952))

(assert (=> bm!511447 (= call!511457 (derivationStepZipperDown!1340 (ite c!1106917 (regTwo!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106918 (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (ite c!1106919 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (reg!16421 (h!70899 (exprs!5976 (h!70901 zl!343))))))) (ite (or c!1106917 c!1106918) (Context!10953 (t!378062 (exprs!5976 (h!70901 zl!343)))) (Context!10953 call!511455)) (h!70900 s!2326)))))

(declare-fun b!6150329 () Bool)

(declare-fun e!3747701 () (Set Context!10952))

(declare-fun call!511456 () (Set Context!10952))

(assert (=> b!6150329 (= e!3747701 (set.union call!511456 call!511457))))

(declare-fun bm!511448 () Bool)

(declare-fun call!511454 () (Set Context!10952))

(declare-fun call!511453 () (Set Context!10952))

(assert (=> bm!511448 (= call!511454 call!511453)))

(declare-fun b!6150330 () Bool)

(declare-fun e!3747703 () (Set Context!10952))

(assert (=> b!6150330 (= e!3747703 call!511454)))

(declare-fun bm!511449 () Bool)

(declare-fun call!511452 () List!64575)

(assert (=> bm!511449 (= call!511456 (derivationStepZipperDown!1340 (ite c!1106917 (regOne!32697 (h!70899 (exprs!5976 (h!70901 zl!343)))) (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343))))) (ite c!1106917 (Context!10953 (t!378062 (exprs!5976 (h!70901 zl!343)))) (Context!10953 call!511452)) (h!70900 s!2326)))))

(declare-fun b!6150331 () Bool)

(assert (=> b!6150331 (= e!3747703 (as set.empty (Set Context!10952)))))

(declare-fun bm!511450 () Bool)

(assert (=> bm!511450 (= call!511452 ($colon$colon!1969 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 (h!70901 zl!343))))) (ite (or c!1106918 c!1106919) (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (h!70899 (exprs!5976 (h!70901 zl!343))))))))

(declare-fun bm!511451 () Bool)

(assert (=> bm!511451 (= call!511455 call!511452)))

(declare-fun d!1927002 () Bool)

(declare-fun c!1106916 () Bool)

(assert (=> d!1927002 (= c!1106916 (and (is-ElementMatch!16092 (h!70899 (exprs!5976 (h!70901 zl!343)))) (= (c!1106631 (h!70899 (exprs!5976 (h!70901 zl!343)))) (h!70900 s!2326))))))

(declare-fun e!3747700 () (Set Context!10952))

(assert (=> d!1927002 (= (derivationStepZipperDown!1340 (h!70899 (exprs!5976 (h!70901 zl!343))) (Context!10953 (t!378062 (exprs!5976 (h!70901 zl!343)))) (h!70900 s!2326)) e!3747700)))

(declare-fun b!6150332 () Bool)

(assert (=> b!6150332 (= e!3747700 e!3747701)))

(assert (=> b!6150332 (= c!1106917 (is-Union!16092 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun b!6150333 () Bool)

(declare-fun c!1106920 () Bool)

(assert (=> b!6150333 (= c!1106920 (is-Star!16092 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun e!3747704 () (Set Context!10952))

(assert (=> b!6150333 (= e!3747704 e!3747703)))

(declare-fun b!6150334 () Bool)

(declare-fun e!3747702 () (Set Context!10952))

(assert (=> b!6150334 (= e!3747702 e!3747704)))

(assert (=> b!6150334 (= c!1106919 (is-Concat!24937 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun b!6150335 () Bool)

(assert (=> b!6150335 (= e!3747704 call!511454)))

(declare-fun bm!511452 () Bool)

(assert (=> bm!511452 (= call!511453 call!511457)))

(declare-fun b!6150336 () Bool)

(assert (=> b!6150336 (= e!3747700 (set.insert (Context!10953 (t!378062 (exprs!5976 (h!70901 zl!343)))) (as set.empty (Set Context!10952))))))

(declare-fun b!6150337 () Bool)

(assert (=> b!6150337 (= e!3747702 (set.union call!511456 call!511453))))

(declare-fun b!6150338 () Bool)

(assert (=> b!6150338 (= c!1106918 e!3747705)))

(declare-fun res!2547652 () Bool)

(assert (=> b!6150338 (=> (not res!2547652) (not e!3747705))))

(assert (=> b!6150338 (= res!2547652 (is-Concat!24937 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(assert (=> b!6150338 (= e!3747701 e!3747702)))

(assert (= (and d!1927002 c!1106916) b!6150336))

(assert (= (and d!1927002 (not c!1106916)) b!6150332))

(assert (= (and b!6150332 c!1106917) b!6150329))

(assert (= (and b!6150332 (not c!1106917)) b!6150338))

(assert (= (and b!6150338 res!2547652) b!6150328))

(assert (= (and b!6150338 c!1106918) b!6150337))

(assert (= (and b!6150338 (not c!1106918)) b!6150334))

(assert (= (and b!6150334 c!1106919) b!6150335))

(assert (= (and b!6150334 (not c!1106919)) b!6150333))

(assert (= (and b!6150333 c!1106920) b!6150330))

(assert (= (and b!6150333 (not c!1106920)) b!6150331))

(assert (= (or b!6150335 b!6150330) bm!511451))

(assert (= (or b!6150335 b!6150330) bm!511448))

(assert (= (or b!6150337 bm!511451) bm!511450))

(assert (= (or b!6150337 bm!511448) bm!511452))

(assert (= (or b!6150329 bm!511452) bm!511447))

(assert (= (or b!6150329 b!6150337) bm!511449))

(declare-fun m!6990030 () Bool)

(assert (=> b!6150336 m!6990030))

(declare-fun m!6990032 () Bool)

(assert (=> bm!511449 m!6990032))

(assert (=> b!6150328 m!6989310))

(declare-fun m!6990034 () Bool)

(assert (=> bm!511447 m!6990034))

(declare-fun m!6990036 () Bool)

(assert (=> bm!511450 m!6990036))

(assert (=> bm!511316 d!1927002))

(declare-fun d!1927004 () Bool)

(declare-fun e!3747710 () Bool)

(assert (=> d!1927004 e!3747710))

(declare-fun res!2547657 () Bool)

(assert (=> d!1927004 (=> (not res!2547657) (not e!3747710))))

(declare-fun lt!2334351 () List!64576)

(declare-fun content!12009 (List!64576) (Set C!32454))

(assert (=> d!1927004 (= res!2547657 (= (content!12009 lt!2334351) (set.union (content!12009 (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452))) (content!12009 (t!378063 s!2326)))))))

(declare-fun e!3747711 () List!64576)

(assert (=> d!1927004 (= lt!2334351 e!3747711)))

(declare-fun c!1106923 () Bool)

(assert (=> d!1927004 (= c!1106923 (is-Nil!64452 (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452))))))

(assert (=> d!1927004 (= (++!14178 (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452)) (t!378063 s!2326)) lt!2334351)))

(declare-fun b!6150348 () Bool)

(assert (=> b!6150348 (= e!3747711 (Cons!64452 (h!70900 (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452))) (++!14178 (t!378063 (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452))) (t!378063 s!2326))))))

(declare-fun b!6150347 () Bool)

(assert (=> b!6150347 (= e!3747711 (t!378063 s!2326))))

(declare-fun b!6150350 () Bool)

(assert (=> b!6150350 (= e!3747710 (or (not (= (t!378063 s!2326) Nil!64452)) (= lt!2334351 (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452)))))))

(declare-fun b!6150349 () Bool)

(declare-fun res!2547658 () Bool)

(assert (=> b!6150349 (=> (not res!2547658) (not e!3747710))))

(declare-fun size!40234 (List!64576) Int)

(assert (=> b!6150349 (= res!2547658 (= (size!40234 lt!2334351) (+ (size!40234 (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452))) (size!40234 (t!378063 s!2326)))))))

(assert (= (and d!1927004 c!1106923) b!6150347))

(assert (= (and d!1927004 (not c!1106923)) b!6150348))

(assert (= (and d!1927004 res!2547657) b!6150349))

(assert (= (and b!6150349 res!2547658) b!6150350))

(declare-fun m!6990038 () Bool)

(assert (=> d!1927004 m!6990038))

(assert (=> d!1927004 m!6989454))

(declare-fun m!6990040 () Bool)

(assert (=> d!1927004 m!6990040))

(declare-fun m!6990042 () Bool)

(assert (=> d!1927004 m!6990042))

(declare-fun m!6990044 () Bool)

(assert (=> b!6150348 m!6990044))

(declare-fun m!6990046 () Bool)

(assert (=> b!6150349 m!6990046))

(assert (=> b!6150349 m!6989454))

(declare-fun m!6990048 () Bool)

(assert (=> b!6150349 m!6990048))

(declare-fun m!6990050 () Bool)

(assert (=> b!6150349 m!6990050))

(assert (=> b!6149554 d!1927004))

(declare-fun d!1927006 () Bool)

(declare-fun e!3747712 () Bool)

(assert (=> d!1927006 e!3747712))

(declare-fun res!2547659 () Bool)

(assert (=> d!1927006 (=> (not res!2547659) (not e!3747712))))

(declare-fun lt!2334352 () List!64576)

(assert (=> d!1927006 (= res!2547659 (= (content!12009 lt!2334352) (set.union (content!12009 Nil!64452) (content!12009 (Cons!64452 (h!70900 s!2326) Nil!64452)))))))

(declare-fun e!3747713 () List!64576)

(assert (=> d!1927006 (= lt!2334352 e!3747713)))

(declare-fun c!1106924 () Bool)

(assert (=> d!1927006 (= c!1106924 (is-Nil!64452 Nil!64452))))

(assert (=> d!1927006 (= (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452)) lt!2334352)))

(declare-fun b!6150352 () Bool)

(assert (=> b!6150352 (= e!3747713 (Cons!64452 (h!70900 Nil!64452) (++!14178 (t!378063 Nil!64452) (Cons!64452 (h!70900 s!2326) Nil!64452))))))

(declare-fun b!6150351 () Bool)

(assert (=> b!6150351 (= e!3747713 (Cons!64452 (h!70900 s!2326) Nil!64452))))

(declare-fun b!6150354 () Bool)

(assert (=> b!6150354 (= e!3747712 (or (not (= (Cons!64452 (h!70900 s!2326) Nil!64452) Nil!64452)) (= lt!2334352 Nil!64452)))))

(declare-fun b!6150353 () Bool)

(declare-fun res!2547660 () Bool)

(assert (=> b!6150353 (=> (not res!2547660) (not e!3747712))))

(assert (=> b!6150353 (= res!2547660 (= (size!40234 lt!2334352) (+ (size!40234 Nil!64452) (size!40234 (Cons!64452 (h!70900 s!2326) Nil!64452)))))))

(assert (= (and d!1927006 c!1106924) b!6150351))

(assert (= (and d!1927006 (not c!1106924)) b!6150352))

(assert (= (and d!1927006 res!2547659) b!6150353))

(assert (= (and b!6150353 res!2547660) b!6150354))

(declare-fun m!6990052 () Bool)

(assert (=> d!1927006 m!6990052))

(declare-fun m!6990054 () Bool)

(assert (=> d!1927006 m!6990054))

(declare-fun m!6990056 () Bool)

(assert (=> d!1927006 m!6990056))

(declare-fun m!6990058 () Bool)

(assert (=> b!6150352 m!6990058))

(declare-fun m!6990060 () Bool)

(assert (=> b!6150353 m!6990060))

(declare-fun m!6990062 () Bool)

(assert (=> b!6150353 m!6990062))

(declare-fun m!6990064 () Bool)

(assert (=> b!6150353 m!6990064))

(assert (=> b!6149554 d!1927006))

(declare-fun d!1927008 () Bool)

(assert (=> d!1927008 (= (++!14178 (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452)) (t!378063 s!2326)) s!2326)))

(declare-fun lt!2334355 () Unit!157531)

(declare-fun choose!45720 (List!64576 C!32454 List!64576 List!64576) Unit!157531)

(assert (=> d!1927008 (= lt!2334355 (choose!45720 Nil!64452 (h!70900 s!2326) (t!378063 s!2326) s!2326))))

(assert (=> d!1927008 (= (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) (t!378063 s!2326))) s!2326)))

(assert (=> d!1927008 (= (lemmaMoveElementToOtherListKeepsConcatEq!2273 Nil!64452 (h!70900 s!2326) (t!378063 s!2326) s!2326) lt!2334355)))

(declare-fun bs!1524629 () Bool)

(assert (= bs!1524629 d!1927008))

(assert (=> bs!1524629 m!6989454))

(assert (=> bs!1524629 m!6989454))

(assert (=> bs!1524629 m!6989456))

(declare-fun m!6990066 () Bool)

(assert (=> bs!1524629 m!6990066))

(declare-fun m!6990068 () Bool)

(assert (=> bs!1524629 m!6990068))

(assert (=> b!6149554 d!1927008))

(declare-fun b!6150355 () Bool)

(declare-fun res!2547664 () Bool)

(declare-fun e!3747715 () Bool)

(assert (=> b!6150355 (=> (not res!2547664) (not e!3747715))))

(declare-fun lt!2334357 () Option!15983)

(assert (=> b!6150355 (= res!2547664 (matchR!8275 (regTwo!32696 r!7292) (_2!36374 (get!22240 lt!2334357))))))

(declare-fun b!6150356 () Bool)

(declare-fun e!3747714 () Bool)

(assert (=> b!6150356 (= e!3747714 (matchR!8275 (regTwo!32696 r!7292) (t!378063 s!2326)))))

(declare-fun d!1927010 () Bool)

(declare-fun e!3747716 () Bool)

(assert (=> d!1927010 e!3747716))

(declare-fun res!2547662 () Bool)

(assert (=> d!1927010 (=> res!2547662 e!3747716)))

(assert (=> d!1927010 (= res!2547662 e!3747715)))

(declare-fun res!2547663 () Bool)

(assert (=> d!1927010 (=> (not res!2547663) (not e!3747715))))

(assert (=> d!1927010 (= res!2547663 (isDefined!12686 lt!2334357))))

(declare-fun e!3747717 () Option!15983)

(assert (=> d!1927010 (= lt!2334357 e!3747717)))

(declare-fun c!1106926 () Bool)

(assert (=> d!1927010 (= c!1106926 e!3747714)))

(declare-fun res!2547665 () Bool)

(assert (=> d!1927010 (=> (not res!2547665) (not e!3747714))))

(assert (=> d!1927010 (= res!2547665 (matchR!8275 (regOne!32696 r!7292) (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452))))))

(assert (=> d!1927010 (validRegex!7828 (regOne!32696 r!7292))))

(assert (=> d!1927010 (= (findConcatSeparation!2397 (regOne!32696 r!7292) (regTwo!32696 r!7292) (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452)) (t!378063 s!2326) s!2326) lt!2334357)))

(declare-fun b!6150357 () Bool)

(assert (=> b!6150357 (= e!3747717 (Some!15982 (tuple2!66143 (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452)) (t!378063 s!2326))))))

(declare-fun b!6150358 () Bool)

(assert (=> b!6150358 (= e!3747715 (= (++!14178 (_1!36374 (get!22240 lt!2334357)) (_2!36374 (get!22240 lt!2334357))) s!2326))))

(declare-fun b!6150359 () Bool)

(declare-fun res!2547661 () Bool)

(assert (=> b!6150359 (=> (not res!2547661) (not e!3747715))))

(assert (=> b!6150359 (= res!2547661 (matchR!8275 (regOne!32696 r!7292) (_1!36374 (get!22240 lt!2334357))))))

(declare-fun b!6150360 () Bool)

(declare-fun lt!2334356 () Unit!157531)

(declare-fun lt!2334358 () Unit!157531)

(assert (=> b!6150360 (= lt!2334356 lt!2334358)))

(assert (=> b!6150360 (= (++!14178 (++!14178 (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452)) (Cons!64452 (h!70900 (t!378063 s!2326)) Nil!64452)) (t!378063 (t!378063 s!2326))) s!2326)))

(assert (=> b!6150360 (= lt!2334358 (lemmaMoveElementToOtherListKeepsConcatEq!2273 (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452)) (h!70900 (t!378063 s!2326)) (t!378063 (t!378063 s!2326)) s!2326))))

(declare-fun e!3747718 () Option!15983)

(assert (=> b!6150360 (= e!3747718 (findConcatSeparation!2397 (regOne!32696 r!7292) (regTwo!32696 r!7292) (++!14178 (++!14178 Nil!64452 (Cons!64452 (h!70900 s!2326) Nil!64452)) (Cons!64452 (h!70900 (t!378063 s!2326)) Nil!64452)) (t!378063 (t!378063 s!2326)) s!2326))))

(declare-fun b!6150361 () Bool)

(assert (=> b!6150361 (= e!3747718 None!15982)))

(declare-fun b!6150362 () Bool)

(assert (=> b!6150362 (= e!3747716 (not (isDefined!12686 lt!2334357)))))

(declare-fun b!6150363 () Bool)

(assert (=> b!6150363 (= e!3747717 e!3747718)))

(declare-fun c!1106925 () Bool)

(assert (=> b!6150363 (= c!1106925 (is-Nil!64452 (t!378063 s!2326)))))

(assert (= (and d!1927010 res!2547665) b!6150356))

(assert (= (and d!1927010 c!1106926) b!6150357))

(assert (= (and d!1927010 (not c!1106926)) b!6150363))

(assert (= (and b!6150363 c!1106925) b!6150361))

(assert (= (and b!6150363 (not c!1106925)) b!6150360))

(assert (= (and d!1927010 res!2547663) b!6150359))

(assert (= (and b!6150359 res!2547661) b!6150355))

(assert (= (and b!6150355 res!2547664) b!6150358))

(assert (= (and d!1927010 (not res!2547662)) b!6150362))

(declare-fun m!6990070 () Bool)

(assert (=> b!6150362 m!6990070))

(assert (=> d!1927010 m!6990070))

(assert (=> d!1927010 m!6989454))

(declare-fun m!6990072 () Bool)

(assert (=> d!1927010 m!6990072))

(assert (=> d!1927010 m!6989444))

(declare-fun m!6990074 () Bool)

(assert (=> b!6150358 m!6990074))

(declare-fun m!6990076 () Bool)

(assert (=> b!6150358 m!6990076))

(assert (=> b!6150355 m!6990074))

(declare-fun m!6990078 () Bool)

(assert (=> b!6150355 m!6990078))

(declare-fun m!6990080 () Bool)

(assert (=> b!6150356 m!6990080))

(assert (=> b!6150360 m!6989454))

(declare-fun m!6990082 () Bool)

(assert (=> b!6150360 m!6990082))

(assert (=> b!6150360 m!6990082))

(declare-fun m!6990084 () Bool)

(assert (=> b!6150360 m!6990084))

(assert (=> b!6150360 m!6989454))

(declare-fun m!6990086 () Bool)

(assert (=> b!6150360 m!6990086))

(assert (=> b!6150360 m!6990082))

(declare-fun m!6990088 () Bool)

(assert (=> b!6150360 m!6990088))

(assert (=> b!6150359 m!6990074))

(declare-fun m!6990090 () Bool)

(assert (=> b!6150359 m!6990090))

(assert (=> b!6149554 d!1927010))

(declare-fun d!1927012 () Bool)

(assert (=> d!1927012 (= (nullable!6085 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292)))) (nullableFct!2049 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292)))))))

(declare-fun bs!1524630 () Bool)

(assert (= bs!1524630 d!1927012))

(declare-fun m!6990092 () Bool)

(assert (=> bs!1524630 m!6990092))

(assert (=> b!6149464 d!1927012))

(assert (=> d!1926762 d!1926756))

(assert (=> d!1926762 d!1926960))

(assert (=> d!1926762 d!1926766))

(declare-fun d!1927014 () Bool)

(assert (=> d!1927014 (= (Exists!3162 lambda!335347) (choose!45708 lambda!335347))))

(declare-fun bs!1524631 () Bool)

(assert (= bs!1524631 d!1927014))

(declare-fun m!6990094 () Bool)

(assert (=> bs!1524631 m!6990094))

(assert (=> d!1926762 d!1927014))

(declare-fun bs!1524632 () Bool)

(declare-fun d!1927016 () Bool)

(assert (= bs!1524632 (and d!1927016 b!6149232)))

(declare-fun lambda!335413 () Int)

(assert (=> bs!1524632 (not (= lambda!335413 lambda!335321))))

(declare-fun bs!1524633 () Bool)

(assert (= bs!1524633 (and d!1927016 d!1926762)))

(assert (=> bs!1524633 (= lambda!335413 lambda!335347)))

(declare-fun bs!1524634 () Bool)

(assert (= bs!1524634 (and d!1927016 d!1926764)))

(assert (=> bs!1524634 (= lambda!335413 lambda!335352)))

(declare-fun bs!1524635 () Bool)

(assert (= bs!1524635 (and d!1927016 b!6149607)))

(assert (=> bs!1524635 (not (= lambda!335413 lambda!335360))))

(assert (=> bs!1524634 (not (= lambda!335413 lambda!335353))))

(assert (=> bs!1524632 (= lambda!335413 lambda!335320)))

(declare-fun bs!1524636 () Bool)

(assert (= bs!1524636 (and d!1927016 b!6149610)))

(assert (=> bs!1524636 (not (= lambda!335413 lambda!335359))))

(assert (=> d!1927016 true))

(assert (=> d!1927016 true))

(assert (=> d!1927016 true))

(assert (=> d!1927016 (= (isDefined!12686 (findConcatSeparation!2397 (regOne!32696 r!7292) (regTwo!32696 r!7292) Nil!64452 s!2326 s!2326)) (Exists!3162 lambda!335413))))

(assert (=> d!1927016 true))

(declare-fun _$89!2257 () Unit!157531)

(assert (=> d!1927016 (= (choose!45709 (regOne!32696 r!7292) (regTwo!32696 r!7292) s!2326) _$89!2257)))

(declare-fun bs!1524637 () Bool)

(assert (= bs!1524637 d!1927016))

(assert (=> bs!1524637 m!6989128))

(assert (=> bs!1524637 m!6989128))

(assert (=> bs!1524637 m!6989130))

(declare-fun m!6990096 () Bool)

(assert (=> bs!1524637 m!6990096))

(assert (=> d!1926762 d!1927016))

(declare-fun d!1927018 () Bool)

(assert (=> d!1927018 true))

(declare-fun setRes!41637 () Bool)

(assert (=> d!1927018 setRes!41637))

(declare-fun condSetEmpty!41637 () Bool)

(declare-fun res!2547672 () (Set Context!10952))

(assert (=> d!1927018 (= condSetEmpty!41637 (= res!2547672 (as set.empty (Set Context!10952))))))

(assert (=> d!1927018 (= (choose!45705 lt!2334146 lambda!335322) res!2547672)))

(declare-fun setIsEmpty!41637 () Bool)

(assert (=> setIsEmpty!41637 setRes!41637))

(declare-fun setElem!41637 () Context!10952)

(declare-fun tp!1717866 () Bool)

(declare-fun setNonEmpty!41637 () Bool)

(declare-fun e!3747723 () Bool)

(assert (=> setNonEmpty!41637 (= setRes!41637 (and tp!1717866 (inv!83478 setElem!41637) e!3747723))))

(declare-fun setRest!41637 () (Set Context!10952))

(assert (=> setNonEmpty!41637 (= res!2547672 (set.union (set.insert setElem!41637 (as set.empty (Set Context!10952))) setRest!41637))))

(declare-fun b!6150370 () Bool)

(declare-fun tp!1717865 () Bool)

(assert (=> b!6150370 (= e!3747723 tp!1717865)))

(assert (= (and d!1927018 condSetEmpty!41637) setIsEmpty!41637))

(assert (= (and d!1927018 (not condSetEmpty!41637)) setNonEmpty!41637))

(assert (= setNonEmpty!41637 b!6150370))

(declare-fun m!6990098 () Bool)

(assert (=> setNonEmpty!41637 m!6990098))

(assert (=> d!1926744 d!1927018))

(declare-fun d!1927020 () Bool)

(assert (=> d!1927020 (= (nullable!6085 (h!70899 (exprs!5976 lt!2334153))) (nullableFct!2049 (h!70899 (exprs!5976 lt!2334153))))))

(declare-fun bs!1524638 () Bool)

(assert (= bs!1524638 d!1927020))

(declare-fun m!6990100 () Bool)

(assert (=> bs!1524638 m!6990100))

(assert (=> b!6149524 d!1927020))

(declare-fun d!1927022 () Bool)

(assert (=> d!1927022 (= (nullable!6085 (h!70899 (exprs!5976 lt!2334159))) (nullableFct!2049 (h!70899 (exprs!5976 lt!2334159))))))

(declare-fun bs!1524639 () Bool)

(assert (= bs!1524639 d!1927022))

(declare-fun m!6990102 () Bool)

(assert (=> bs!1524639 m!6990102))

(assert (=> b!6149529 d!1927022))

(declare-fun d!1927024 () Bool)

(assert (=> d!1927024 true))

(assert (=> d!1927024 true))

(declare-fun res!2547673 () Bool)

(assert (=> d!1927024 (= (choose!45708 lambda!335320) res!2547673)))

(assert (=> d!1926758 d!1927024))

(declare-fun d!1927026 () Bool)

(assert (=> d!1927026 (= (isUnion!949 lt!2334294) (is-Union!16092 lt!2334294))))

(assert (=> b!6149684 d!1927026))

(declare-fun d!1927028 () Bool)

(assert (=> d!1927028 true))

(declare-fun setRes!41638 () Bool)

(assert (=> d!1927028 setRes!41638))

(declare-fun condSetEmpty!41638 () Bool)

(declare-fun res!2547674 () (Set Context!10952))

(assert (=> d!1927028 (= condSetEmpty!41638 (= res!2547674 (as set.empty (Set Context!10952))))))

(assert (=> d!1927028 (= (choose!45705 z!1189 lambda!335322) res!2547674)))

(declare-fun setIsEmpty!41638 () Bool)

(assert (=> setIsEmpty!41638 setRes!41638))

(declare-fun setElem!41638 () Context!10952)

(declare-fun e!3747724 () Bool)

(declare-fun setNonEmpty!41638 () Bool)

(declare-fun tp!1717868 () Bool)

(assert (=> setNonEmpty!41638 (= setRes!41638 (and tp!1717868 (inv!83478 setElem!41638) e!3747724))))

(declare-fun setRest!41638 () (Set Context!10952))

(assert (=> setNonEmpty!41638 (= res!2547674 (set.union (set.insert setElem!41638 (as set.empty (Set Context!10952))) setRest!41638))))

(declare-fun b!6150371 () Bool)

(declare-fun tp!1717867 () Bool)

(assert (=> b!6150371 (= e!3747724 tp!1717867)))

(assert (= (and d!1927028 condSetEmpty!41638) setIsEmpty!41638))

(assert (= (and d!1927028 (not condSetEmpty!41638)) setNonEmpty!41638))

(assert (= setNonEmpty!41638 b!6150371))

(declare-fun m!6990104 () Bool)

(assert (=> setNonEmpty!41638 m!6990104))

(assert (=> d!1926700 d!1927028))

(assert (=> d!1926716 d!1926898))

(declare-fun d!1927030 () Bool)

(assert (=> d!1927030 (= (isEmpty!36411 (tail!11791 (unfocusZipperList!1513 zl!343))) (is-Nil!64451 (tail!11791 (unfocusZipperList!1513 zl!343))))))

(assert (=> b!6149680 d!1927030))

(declare-fun d!1927032 () Bool)

(assert (=> d!1927032 (= (tail!11791 (unfocusZipperList!1513 zl!343)) (t!378062 (unfocusZipperList!1513 zl!343)))))

(assert (=> b!6149680 d!1927032))

(declare-fun bs!1524640 () Bool)

(declare-fun b!6150377 () Bool)

(assert (= bs!1524640 (and b!6150377 b!6149232)))

(declare-fun lambda!335414 () Int)

(assert (=> bs!1524640 (not (= lambda!335414 lambda!335321))))

(declare-fun bs!1524641 () Bool)

(assert (= bs!1524641 (and b!6150377 d!1926762)))

(assert (=> bs!1524641 (not (= lambda!335414 lambda!335347))))

(declare-fun bs!1524642 () Bool)

(assert (= bs!1524642 (and b!6150377 d!1926764)))

(assert (=> bs!1524642 (not (= lambda!335414 lambda!335352))))

(declare-fun bs!1524643 () Bool)

(assert (= bs!1524643 (and b!6150377 b!6149607)))

(assert (=> bs!1524643 (not (= lambda!335414 lambda!335360))))

(assert (=> bs!1524642 (not (= lambda!335414 lambda!335353))))

(assert (=> bs!1524640 (not (= lambda!335414 lambda!335320))))

(declare-fun bs!1524644 () Bool)

(assert (= bs!1524644 (and b!6150377 b!6149610)))

(assert (=> bs!1524644 (= (and (= (reg!16421 (regOne!32697 r!7292)) (reg!16421 r!7292)) (= (regOne!32697 r!7292) r!7292)) (= lambda!335414 lambda!335359))))

(declare-fun bs!1524645 () Bool)

(assert (= bs!1524645 (and b!6150377 d!1927016)))

(assert (=> bs!1524645 (not (= lambda!335414 lambda!335413))))

(assert (=> b!6150377 true))

(assert (=> b!6150377 true))

(declare-fun bs!1524646 () Bool)

(declare-fun b!6150374 () Bool)

(assert (= bs!1524646 (and b!6150374 b!6149232)))

(declare-fun lambda!335415 () Int)

(assert (=> bs!1524646 (= (and (= (regOne!32696 (regOne!32697 r!7292)) (regOne!32696 r!7292)) (= (regTwo!32696 (regOne!32697 r!7292)) (regTwo!32696 r!7292))) (= lambda!335415 lambda!335321))))

(declare-fun bs!1524647 () Bool)

(assert (= bs!1524647 (and b!6150374 d!1926762)))

(assert (=> bs!1524647 (not (= lambda!335415 lambda!335347))))

(declare-fun bs!1524648 () Bool)

(assert (= bs!1524648 (and b!6150374 d!1926764)))

(assert (=> bs!1524648 (not (= lambda!335415 lambda!335352))))

(declare-fun bs!1524649 () Bool)

(assert (= bs!1524649 (and b!6150374 b!6149607)))

(assert (=> bs!1524649 (= (and (= (regOne!32696 (regOne!32697 r!7292)) (regOne!32696 r!7292)) (= (regTwo!32696 (regOne!32697 r!7292)) (regTwo!32696 r!7292))) (= lambda!335415 lambda!335360))))

(assert (=> bs!1524646 (not (= lambda!335415 lambda!335320))))

(declare-fun bs!1524650 () Bool)

(assert (= bs!1524650 (and b!6150374 b!6149610)))

(assert (=> bs!1524650 (not (= lambda!335415 lambda!335359))))

(declare-fun bs!1524651 () Bool)

(assert (= bs!1524651 (and b!6150374 d!1927016)))

(assert (=> bs!1524651 (not (= lambda!335415 lambda!335413))))

(assert (=> bs!1524648 (= (and (= (regOne!32696 (regOne!32697 r!7292)) (regOne!32696 r!7292)) (= (regTwo!32696 (regOne!32697 r!7292)) (regTwo!32696 r!7292))) (= lambda!335415 lambda!335353))))

(declare-fun bs!1524652 () Bool)

(assert (= bs!1524652 (and b!6150374 b!6150377)))

(assert (=> bs!1524652 (not (= lambda!335415 lambda!335414))))

(assert (=> b!6150374 true))

(assert (=> b!6150374 true))

(declare-fun b!6150372 () Bool)

(declare-fun e!3747731 () Bool)

(declare-fun e!3747729 () Bool)

(assert (=> b!6150372 (= e!3747731 e!3747729)))

(declare-fun res!2547677 () Bool)

(assert (=> b!6150372 (= res!2547677 (not (is-EmptyLang!16092 (regOne!32697 r!7292))))))

(assert (=> b!6150372 (=> (not res!2547677) (not e!3747729))))

(declare-fun b!6150373 () Bool)

(declare-fun c!1106927 () Bool)

(assert (=> b!6150373 (= c!1106927 (is-ElementMatch!16092 (regOne!32697 r!7292)))))

(declare-fun e!3747730 () Bool)

(assert (=> b!6150373 (= e!3747729 e!3747730)))

(declare-fun e!3747725 () Bool)

(declare-fun call!511459 () Bool)

(assert (=> b!6150374 (= e!3747725 call!511459)))

(declare-fun b!6150375 () Bool)

(assert (=> b!6150375 (= e!3747730 (= s!2326 (Cons!64452 (c!1106631 (regOne!32697 r!7292)) Nil!64452)))))

(declare-fun d!1927034 () Bool)

(declare-fun c!1106929 () Bool)

(assert (=> d!1927034 (= c!1106929 (is-EmptyExpr!16092 (regOne!32697 r!7292)))))

(assert (=> d!1927034 (= (matchRSpec!3193 (regOne!32697 r!7292) s!2326) e!3747731)))

(declare-fun b!6150376 () Bool)

(declare-fun e!3747727 () Bool)

(declare-fun e!3747726 () Bool)

(assert (=> b!6150376 (= e!3747727 e!3747726)))

(declare-fun res!2547675 () Bool)

(assert (=> b!6150376 (= res!2547675 (matchRSpec!3193 (regOne!32697 (regOne!32697 r!7292)) s!2326))))

(assert (=> b!6150376 (=> res!2547675 e!3747726)))

(declare-fun e!3747728 () Bool)

(assert (=> b!6150377 (= e!3747728 call!511459)))

(declare-fun b!6150378 () Bool)

(assert (=> b!6150378 (= e!3747726 (matchRSpec!3193 (regTwo!32697 (regOne!32697 r!7292)) s!2326))))

(declare-fun b!6150379 () Bool)

(declare-fun res!2547676 () Bool)

(assert (=> b!6150379 (=> res!2547676 e!3747728)))

(declare-fun call!511458 () Bool)

(assert (=> b!6150379 (= res!2547676 call!511458)))

(assert (=> b!6150379 (= e!3747725 e!3747728)))

(declare-fun b!6150380 () Bool)

(assert (=> b!6150380 (= e!3747731 call!511458)))

(declare-fun b!6150381 () Bool)

(assert (=> b!6150381 (= e!3747727 e!3747725)))

(declare-fun c!1106930 () Bool)

(assert (=> b!6150381 (= c!1106930 (is-Star!16092 (regOne!32697 r!7292)))))

(declare-fun bm!511453 () Bool)

(assert (=> bm!511453 (= call!511459 (Exists!3162 (ite c!1106930 lambda!335414 lambda!335415)))))

(declare-fun bm!511454 () Bool)

(assert (=> bm!511454 (= call!511458 (isEmpty!36414 s!2326))))

(declare-fun b!6150382 () Bool)

(declare-fun c!1106928 () Bool)

(assert (=> b!6150382 (= c!1106928 (is-Union!16092 (regOne!32697 r!7292)))))

(assert (=> b!6150382 (= e!3747730 e!3747727)))

(assert (= (and d!1927034 c!1106929) b!6150380))

(assert (= (and d!1927034 (not c!1106929)) b!6150372))

(assert (= (and b!6150372 res!2547677) b!6150373))

(assert (= (and b!6150373 c!1106927) b!6150375))

(assert (= (and b!6150373 (not c!1106927)) b!6150382))

(assert (= (and b!6150382 c!1106928) b!6150376))

(assert (= (and b!6150382 (not c!1106928)) b!6150381))

(assert (= (and b!6150376 (not res!2547675)) b!6150378))

(assert (= (and b!6150381 c!1106930) b!6150379))

(assert (= (and b!6150381 (not c!1106930)) b!6150374))

(assert (= (and b!6150379 (not res!2547676)) b!6150377))

(assert (= (or b!6150377 b!6150374) bm!511453))

(assert (= (or b!6150380 b!6150379) bm!511454))

(declare-fun m!6990106 () Bool)

(assert (=> b!6150376 m!6990106))

(declare-fun m!6990108 () Bool)

(assert (=> b!6150378 m!6990108))

(declare-fun m!6990110 () Bool)

(assert (=> bm!511453 m!6990110))

(assert (=> bm!511454 m!6989496))

(assert (=> b!6149609 d!1927034))

(assert (=> d!1926712 d!1926898))

(declare-fun d!1927036 () Bool)

(declare-fun res!2547678 () Bool)

(declare-fun e!3747732 () Bool)

(assert (=> d!1927036 (=> res!2547678 e!3747732)))

(assert (=> d!1927036 (= res!2547678 (is-Nil!64451 (exprs!5976 lt!2334170)))))

(assert (=> d!1927036 (= (forall!15213 (exprs!5976 lt!2334170) lambda!335344) e!3747732)))

(declare-fun b!6150383 () Bool)

(declare-fun e!3747733 () Bool)

(assert (=> b!6150383 (= e!3747732 e!3747733)))

(declare-fun res!2547679 () Bool)

(assert (=> b!6150383 (=> (not res!2547679) (not e!3747733))))

(assert (=> b!6150383 (= res!2547679 (dynLambda!25407 lambda!335344 (h!70899 (exprs!5976 lt!2334170))))))

(declare-fun b!6150384 () Bool)

(assert (=> b!6150384 (= e!3747733 (forall!15213 (t!378062 (exprs!5976 lt!2334170)) lambda!335344))))

(assert (= (and d!1927036 (not res!2547678)) b!6150383))

(assert (= (and b!6150383 res!2547679) b!6150384))

(declare-fun b_lambda!234077 () Bool)

(assert (=> (not b_lambda!234077) (not b!6150383)))

(declare-fun m!6990112 () Bool)

(assert (=> b!6150383 m!6990112))

(declare-fun m!6990114 () Bool)

(assert (=> b!6150384 m!6990114))

(assert (=> d!1926736 d!1927036))

(declare-fun b!6150385 () Bool)

(declare-fun e!3747739 () Bool)

(assert (=> b!6150385 (= e!3747739 (nullable!6085 (regOne!32696 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292)))))))))

(declare-fun bm!511455 () Bool)

(declare-fun call!511463 () List!64575)

(declare-fun call!511465 () (Set Context!10952))

(declare-fun c!1106934 () Bool)

(declare-fun c!1106933 () Bool)

(declare-fun c!1106932 () Bool)

(assert (=> bm!511455 (= call!511465 (derivationStepZipperDown!1340 (ite c!1106932 (regTwo!32697 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292))))) (ite c!1106933 (regTwo!32696 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292))))) (ite c!1106934 (regOne!32696 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292))))) (reg!16421 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292)))))))) (ite (or c!1106932 c!1106933) (ite c!1106689 lt!2334170 (Context!10953 call!511337)) (Context!10953 call!511463)) (h!70900 s!2326)))))

(declare-fun b!6150386 () Bool)

(declare-fun e!3747735 () (Set Context!10952))

(declare-fun call!511464 () (Set Context!10952))

(assert (=> b!6150386 (= e!3747735 (set.union call!511464 call!511465))))

(declare-fun bm!511456 () Bool)

(declare-fun call!511462 () (Set Context!10952))

(declare-fun call!511461 () (Set Context!10952))

(assert (=> bm!511456 (= call!511462 call!511461)))

(declare-fun b!6150387 () Bool)

(declare-fun e!3747737 () (Set Context!10952))

(assert (=> b!6150387 (= e!3747737 call!511462)))

(declare-fun call!511460 () List!64575)

(declare-fun bm!511457 () Bool)

(assert (=> bm!511457 (= call!511464 (derivationStepZipperDown!1340 (ite c!1106932 (regOne!32697 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292))))) (regOne!32696 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292)))))) (ite c!1106932 (ite c!1106689 lt!2334170 (Context!10953 call!511337)) (Context!10953 call!511460)) (h!70900 s!2326)))))

(declare-fun b!6150388 () Bool)

(assert (=> b!6150388 (= e!3747737 (as set.empty (Set Context!10952)))))

(declare-fun bm!511458 () Bool)

(assert (=> bm!511458 (= call!511460 ($colon$colon!1969 (exprs!5976 (ite c!1106689 lt!2334170 (Context!10953 call!511337))) (ite (or c!1106933 c!1106934) (regTwo!32696 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292))))) (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292)))))))))

(declare-fun bm!511459 () Bool)

(assert (=> bm!511459 (= call!511463 call!511460)))

(declare-fun d!1927038 () Bool)

(declare-fun c!1106931 () Bool)

(assert (=> d!1927038 (= c!1106931 (and (is-ElementMatch!16092 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292))))) (= (c!1106631 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292))))) (h!70900 s!2326))))))

(declare-fun e!3747734 () (Set Context!10952))

(assert (=> d!1927038 (= (derivationStepZipperDown!1340 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292)))) (ite c!1106689 lt!2334170 (Context!10953 call!511337)) (h!70900 s!2326)) e!3747734)))

(declare-fun b!6150389 () Bool)

(assert (=> b!6150389 (= e!3747734 e!3747735)))

(assert (=> b!6150389 (= c!1106932 (is-Union!16092 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292))))))))

(declare-fun b!6150390 () Bool)

(declare-fun c!1106935 () Bool)

(assert (=> b!6150390 (= c!1106935 (is-Star!16092 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292))))))))

(declare-fun e!3747738 () (Set Context!10952))

(assert (=> b!6150390 (= e!3747738 e!3747737)))

(declare-fun b!6150391 () Bool)

(declare-fun e!3747736 () (Set Context!10952))

(assert (=> b!6150391 (= e!3747736 e!3747738)))

(assert (=> b!6150391 (= c!1106934 (is-Concat!24937 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292))))))))

(declare-fun b!6150392 () Bool)

(assert (=> b!6150392 (= e!3747738 call!511462)))

(declare-fun bm!511460 () Bool)

(assert (=> bm!511460 (= call!511461 call!511465)))

(declare-fun b!6150393 () Bool)

(assert (=> b!6150393 (= e!3747734 (set.insert (ite c!1106689 lt!2334170 (Context!10953 call!511337)) (as set.empty (Set Context!10952))))))

(declare-fun b!6150394 () Bool)

(assert (=> b!6150394 (= e!3747736 (set.union call!511464 call!511461))))

(declare-fun b!6150395 () Bool)

(assert (=> b!6150395 (= c!1106933 e!3747739)))

(declare-fun res!2547680 () Bool)

(assert (=> b!6150395 (=> (not res!2547680) (not e!3747739))))

(assert (=> b!6150395 (= res!2547680 (is-Concat!24937 (ite c!1106689 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292))))))))

(assert (=> b!6150395 (= e!3747735 e!3747736)))

(assert (= (and d!1927038 c!1106931) b!6150393))

(assert (= (and d!1927038 (not c!1106931)) b!6150389))

(assert (= (and b!6150389 c!1106932) b!6150386))

(assert (= (and b!6150389 (not c!1106932)) b!6150395))

(assert (= (and b!6150395 res!2547680) b!6150385))

(assert (= (and b!6150395 c!1106933) b!6150394))

(assert (= (and b!6150395 (not c!1106933)) b!6150391))

(assert (= (and b!6150391 c!1106934) b!6150392))

(assert (= (and b!6150391 (not c!1106934)) b!6150390))

(assert (= (and b!6150390 c!1106935) b!6150387))

(assert (= (and b!6150390 (not c!1106935)) b!6150388))

(assert (= (or b!6150392 b!6150387) bm!511459))

(assert (= (or b!6150392 b!6150387) bm!511456))

(assert (= (or b!6150394 bm!511459) bm!511458))

(assert (= (or b!6150394 bm!511456) bm!511460))

(assert (= (or b!6150386 bm!511460) bm!511455))

(assert (= (or b!6150386 b!6150394) bm!511457))

(declare-fun m!6990116 () Bool)

(assert (=> b!6150393 m!6990116))

(declare-fun m!6990118 () Bool)

(assert (=> bm!511457 m!6990118))

(declare-fun m!6990120 () Bool)

(assert (=> b!6150385 m!6990120))

(declare-fun m!6990122 () Bool)

(assert (=> bm!511455 m!6990122))

(declare-fun m!6990124 () Bool)

(assert (=> bm!511458 m!6990124))

(assert (=> bm!511334 d!1927038))

(declare-fun d!1927040 () Bool)

(assert (=> d!1927040 (= (head!12705 s!2326) (h!70900 s!2326))))

(assert (=> b!6149651 d!1927040))

(declare-fun bm!511461 () Bool)

(declare-fun call!511468 () Bool)

(declare-fun call!511466 () Bool)

(assert (=> bm!511461 (= call!511468 call!511466)))

(declare-fun b!6150396 () Bool)

(declare-fun res!2547682 () Bool)

(declare-fun e!3747740 () Bool)

(assert (=> b!6150396 (=> (not res!2547682) (not e!3747740))))

(declare-fun call!511467 () Bool)

(assert (=> b!6150396 (= res!2547682 call!511467)))

(declare-fun e!3747746 () Bool)

(assert (=> b!6150396 (= e!3747746 e!3747740)))

(declare-fun b!6150397 () Bool)

(declare-fun e!3747743 () Bool)

(assert (=> b!6150397 (= e!3747743 call!511466)))

(declare-fun b!6150398 () Bool)

(declare-fun e!3747742 () Bool)

(declare-fun e!3747745 () Bool)

(assert (=> b!6150398 (= e!3747742 e!3747745)))

(declare-fun c!1106936 () Bool)

(assert (=> b!6150398 (= c!1106936 (is-Star!16092 lt!2334261))))

(declare-fun b!6150399 () Bool)

(assert (=> b!6150399 (= e!3747745 e!3747746)))

(declare-fun c!1106937 () Bool)

(assert (=> b!6150399 (= c!1106937 (is-Union!16092 lt!2334261))))

(declare-fun bm!511462 () Bool)

(assert (=> bm!511462 (= call!511466 (validRegex!7828 (ite c!1106936 (reg!16421 lt!2334261) (ite c!1106937 (regTwo!32697 lt!2334261) (regTwo!32696 lt!2334261)))))))

(declare-fun b!6150400 () Bool)

(declare-fun res!2547684 () Bool)

(declare-fun e!3747741 () Bool)

(assert (=> b!6150400 (=> res!2547684 e!3747741)))

(assert (=> b!6150400 (= res!2547684 (not (is-Concat!24937 lt!2334261)))))

(assert (=> b!6150400 (= e!3747746 e!3747741)))

(declare-fun b!6150401 () Bool)

(assert (=> b!6150401 (= e!3747745 e!3747743)))

(declare-fun res!2547681 () Bool)

(assert (=> b!6150401 (= res!2547681 (not (nullable!6085 (reg!16421 lt!2334261))))))

(assert (=> b!6150401 (=> (not res!2547681) (not e!3747743))))

(declare-fun d!1927042 () Bool)

(declare-fun res!2547685 () Bool)

(assert (=> d!1927042 (=> res!2547685 e!3747742)))

(assert (=> d!1927042 (= res!2547685 (is-ElementMatch!16092 lt!2334261))))

(assert (=> d!1927042 (= (validRegex!7828 lt!2334261) e!3747742)))

(declare-fun b!6150402 () Bool)

(declare-fun e!3747744 () Bool)

(assert (=> b!6150402 (= e!3747741 e!3747744)))

(declare-fun res!2547683 () Bool)

(assert (=> b!6150402 (=> (not res!2547683) (not e!3747744))))

(assert (=> b!6150402 (= res!2547683 call!511467)))

(declare-fun bm!511463 () Bool)

(assert (=> bm!511463 (= call!511467 (validRegex!7828 (ite c!1106937 (regOne!32697 lt!2334261) (regOne!32696 lt!2334261))))))

(declare-fun b!6150403 () Bool)

(assert (=> b!6150403 (= e!3747740 call!511468)))

(declare-fun b!6150404 () Bool)

(assert (=> b!6150404 (= e!3747744 call!511468)))

(assert (= (and d!1927042 (not res!2547685)) b!6150398))

(assert (= (and b!6150398 c!1106936) b!6150401))

(assert (= (and b!6150398 (not c!1106936)) b!6150399))

(assert (= (and b!6150401 res!2547681) b!6150397))

(assert (= (and b!6150399 c!1106937) b!6150396))

(assert (= (and b!6150399 (not c!1106937)) b!6150400))

(assert (= (and b!6150396 res!2547682) b!6150403))

(assert (= (and b!6150400 (not res!2547684)) b!6150402))

(assert (= (and b!6150402 res!2547683) b!6150404))

(assert (= (or b!6150403 b!6150404) bm!511461))

(assert (= (or b!6150396 b!6150402) bm!511463))

(assert (= (or b!6150397 bm!511461) bm!511462))

(declare-fun m!6990126 () Bool)

(assert (=> bm!511462 m!6990126))

(declare-fun m!6990128 () Bool)

(assert (=> b!6150401 m!6990128))

(declare-fun m!6990130 () Bool)

(assert (=> bm!511463 m!6990130))

(assert (=> d!1926728 d!1927042))

(declare-fun d!1927044 () Bool)

(declare-fun res!2547686 () Bool)

(declare-fun e!3747747 () Bool)

(assert (=> d!1927044 (=> res!2547686 e!3747747)))

(assert (=> d!1927044 (= res!2547686 (is-Nil!64451 (exprs!5976 (h!70901 zl!343))))))

(assert (=> d!1927044 (= (forall!15213 (exprs!5976 (h!70901 zl!343)) lambda!335343) e!3747747)))

(declare-fun b!6150405 () Bool)

(declare-fun e!3747748 () Bool)

(assert (=> b!6150405 (= e!3747747 e!3747748)))

(declare-fun res!2547687 () Bool)

(assert (=> b!6150405 (=> (not res!2547687) (not e!3747748))))

(assert (=> b!6150405 (= res!2547687 (dynLambda!25407 lambda!335343 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun b!6150406 () Bool)

(assert (=> b!6150406 (= e!3747748 (forall!15213 (t!378062 (exprs!5976 (h!70901 zl!343))) lambda!335343))))

(assert (= (and d!1927044 (not res!2547686)) b!6150405))

(assert (= (and b!6150405 res!2547687) b!6150406))

(declare-fun b_lambda!234079 () Bool)

(assert (=> (not b_lambda!234079) (not b!6150405)))

(declare-fun m!6990132 () Bool)

(assert (=> b!6150405 m!6990132))

(declare-fun m!6990134 () Bool)

(assert (=> b!6150406 m!6990134))

(assert (=> d!1926728 d!1927044))

(declare-fun b!6150407 () Bool)

(declare-fun e!3747754 () Bool)

(assert (=> b!6150407 (= e!3747754 (nullable!6085 (regOne!32696 (h!70899 (exprs!5976 lt!2334170)))))))

(declare-fun c!1106940 () Bool)

(declare-fun c!1106941 () Bool)

(declare-fun call!511472 () List!64575)

(declare-fun call!511474 () (Set Context!10952))

(declare-fun c!1106939 () Bool)

(declare-fun bm!511464 () Bool)

(assert (=> bm!511464 (= call!511474 (derivationStepZipperDown!1340 (ite c!1106939 (regTwo!32697 (h!70899 (exprs!5976 lt!2334170))) (ite c!1106940 (regTwo!32696 (h!70899 (exprs!5976 lt!2334170))) (ite c!1106941 (regOne!32696 (h!70899 (exprs!5976 lt!2334170))) (reg!16421 (h!70899 (exprs!5976 lt!2334170)))))) (ite (or c!1106939 c!1106940) (Context!10953 (t!378062 (exprs!5976 lt!2334170))) (Context!10953 call!511472)) (h!70900 s!2326)))))

(declare-fun b!6150408 () Bool)

(declare-fun e!3747750 () (Set Context!10952))

(declare-fun call!511473 () (Set Context!10952))

(assert (=> b!6150408 (= e!3747750 (set.union call!511473 call!511474))))

(declare-fun bm!511465 () Bool)

(declare-fun call!511471 () (Set Context!10952))

(declare-fun call!511470 () (Set Context!10952))

(assert (=> bm!511465 (= call!511471 call!511470)))

(declare-fun b!6150409 () Bool)

(declare-fun e!3747752 () (Set Context!10952))

(assert (=> b!6150409 (= e!3747752 call!511471)))

(declare-fun call!511469 () List!64575)

(declare-fun bm!511466 () Bool)

(assert (=> bm!511466 (= call!511473 (derivationStepZipperDown!1340 (ite c!1106939 (regOne!32697 (h!70899 (exprs!5976 lt!2334170))) (regOne!32696 (h!70899 (exprs!5976 lt!2334170)))) (ite c!1106939 (Context!10953 (t!378062 (exprs!5976 lt!2334170))) (Context!10953 call!511469)) (h!70900 s!2326)))))

(declare-fun b!6150410 () Bool)

(assert (=> b!6150410 (= e!3747752 (as set.empty (Set Context!10952)))))

(declare-fun bm!511467 () Bool)

(assert (=> bm!511467 (= call!511469 ($colon$colon!1969 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334170)))) (ite (or c!1106940 c!1106941) (regTwo!32696 (h!70899 (exprs!5976 lt!2334170))) (h!70899 (exprs!5976 lt!2334170)))))))

(declare-fun bm!511468 () Bool)

(assert (=> bm!511468 (= call!511472 call!511469)))

(declare-fun d!1927046 () Bool)

(declare-fun c!1106938 () Bool)

(assert (=> d!1927046 (= c!1106938 (and (is-ElementMatch!16092 (h!70899 (exprs!5976 lt!2334170))) (= (c!1106631 (h!70899 (exprs!5976 lt!2334170))) (h!70900 s!2326))))))

(declare-fun e!3747749 () (Set Context!10952))

(assert (=> d!1927046 (= (derivationStepZipperDown!1340 (h!70899 (exprs!5976 lt!2334170)) (Context!10953 (t!378062 (exprs!5976 lt!2334170))) (h!70900 s!2326)) e!3747749)))

(declare-fun b!6150411 () Bool)

(assert (=> b!6150411 (= e!3747749 e!3747750)))

(assert (=> b!6150411 (= c!1106939 (is-Union!16092 (h!70899 (exprs!5976 lt!2334170))))))

(declare-fun b!6150412 () Bool)

(declare-fun c!1106942 () Bool)

(assert (=> b!6150412 (= c!1106942 (is-Star!16092 (h!70899 (exprs!5976 lt!2334170))))))

(declare-fun e!3747753 () (Set Context!10952))

(assert (=> b!6150412 (= e!3747753 e!3747752)))

(declare-fun b!6150413 () Bool)

(declare-fun e!3747751 () (Set Context!10952))

(assert (=> b!6150413 (= e!3747751 e!3747753)))

(assert (=> b!6150413 (= c!1106941 (is-Concat!24937 (h!70899 (exprs!5976 lt!2334170))))))

(declare-fun b!6150414 () Bool)

(assert (=> b!6150414 (= e!3747753 call!511471)))

(declare-fun bm!511469 () Bool)

(assert (=> bm!511469 (= call!511470 call!511474)))

(declare-fun b!6150415 () Bool)

(assert (=> b!6150415 (= e!3747749 (set.insert (Context!10953 (t!378062 (exprs!5976 lt!2334170))) (as set.empty (Set Context!10952))))))

(declare-fun b!6150416 () Bool)

(assert (=> b!6150416 (= e!3747751 (set.union call!511473 call!511470))))

(declare-fun b!6150417 () Bool)

(assert (=> b!6150417 (= c!1106940 e!3747754)))

(declare-fun res!2547688 () Bool)

(assert (=> b!6150417 (=> (not res!2547688) (not e!3747754))))

(assert (=> b!6150417 (= res!2547688 (is-Concat!24937 (h!70899 (exprs!5976 lt!2334170))))))

(assert (=> b!6150417 (= e!3747750 e!3747751)))

(assert (= (and d!1927046 c!1106938) b!6150415))

(assert (= (and d!1927046 (not c!1106938)) b!6150411))

(assert (= (and b!6150411 c!1106939) b!6150408))

(assert (= (and b!6150411 (not c!1106939)) b!6150417))

(assert (= (and b!6150417 res!2547688) b!6150407))

(assert (= (and b!6150417 c!1106940) b!6150416))

(assert (= (and b!6150417 (not c!1106940)) b!6150413))

(assert (= (and b!6150413 c!1106941) b!6150414))

(assert (= (and b!6150413 (not c!1106941)) b!6150412))

(assert (= (and b!6150412 c!1106942) b!6150409))

(assert (= (and b!6150412 (not c!1106942)) b!6150410))

(assert (= (or b!6150414 b!6150409) bm!511468))

(assert (= (or b!6150414 b!6150409) bm!511465))

(assert (= (or b!6150416 bm!511468) bm!511467))

(assert (= (or b!6150416 bm!511465) bm!511469))

(assert (= (or b!6150408 bm!511469) bm!511464))

(assert (= (or b!6150408 b!6150416) bm!511466))

(declare-fun m!6990136 () Bool)

(assert (=> b!6150415 m!6990136))

(declare-fun m!6990138 () Bool)

(assert (=> bm!511466 m!6990138))

(declare-fun m!6990140 () Bool)

(assert (=> b!6150407 m!6990140))

(declare-fun m!6990142 () Bool)

(assert (=> bm!511464 m!6990142))

(declare-fun m!6990144 () Bool)

(assert (=> bm!511467 m!6990144))

(assert (=> bm!511297 d!1927046))

(assert (=> b!6149694 d!1926722))

(declare-fun d!1927048 () Bool)

(assert (=> d!1927048 true))

(declare-fun setRes!41639 () Bool)

(assert (=> d!1927048 setRes!41639))

(declare-fun condSetEmpty!41639 () Bool)

(declare-fun res!2547689 () (Set Context!10952))

(assert (=> d!1927048 (= condSetEmpty!41639 (= res!2547689 (as set.empty (Set Context!10952))))))

(assert (=> d!1927048 (= (choose!45705 lt!2334147 lambda!335322) res!2547689)))

(declare-fun setIsEmpty!41639 () Bool)

(assert (=> setIsEmpty!41639 setRes!41639))

(declare-fun setElem!41639 () Context!10952)

(declare-fun e!3747755 () Bool)

(declare-fun tp!1717870 () Bool)

(declare-fun setNonEmpty!41639 () Bool)

(assert (=> setNonEmpty!41639 (= setRes!41639 (and tp!1717870 (inv!83478 setElem!41639) e!3747755))))

(declare-fun setRest!41639 () (Set Context!10952))

(assert (=> setNonEmpty!41639 (= res!2547689 (set.union (set.insert setElem!41639 (as set.empty (Set Context!10952))) setRest!41639))))

(declare-fun b!6150418 () Bool)

(declare-fun tp!1717869 () Bool)

(assert (=> b!6150418 (= e!3747755 tp!1717869)))

(assert (= (and d!1927048 condSetEmpty!41639) setIsEmpty!41639))

(assert (= (and d!1927048 (not condSetEmpty!41639)) setNonEmpty!41639))

(assert (= setNonEmpty!41639 b!6150418))

(declare-fun m!6990146 () Bool)

(assert (=> setNonEmpty!41639 m!6990146))

(assert (=> d!1926746 d!1927048))

(assert (=> d!1926734 d!1926898))

(declare-fun d!1927050 () Bool)

(assert (=> d!1927050 (= (isConcat!1032 lt!2334261) (is-Concat!24937 lt!2334261))))

(assert (=> b!6149507 d!1927050))

(declare-fun b!6150419 () Bool)

(declare-fun e!3747758 () Bool)

(declare-fun e!3747757 () Bool)

(assert (=> b!6150419 (= e!3747758 e!3747757)))

(declare-fun res!2547697 () Bool)

(assert (=> b!6150419 (=> (not res!2547697) (not e!3747757))))

(declare-fun lt!2334359 () Bool)

(assert (=> b!6150419 (= res!2547697 (not lt!2334359))))

(declare-fun b!6150420 () Bool)

(declare-fun e!3747756 () Bool)

(assert (=> b!6150420 (= e!3747756 (matchR!8275 (derivativeStep!4812 (regTwo!32696 r!7292) (head!12705 s!2326)) (tail!11790 s!2326)))))

(declare-fun b!6150421 () Bool)

(declare-fun res!2547693 () Bool)

(declare-fun e!3747761 () Bool)

(assert (=> b!6150421 (=> (not res!2547693) (not e!3747761))))

(assert (=> b!6150421 (= res!2547693 (isEmpty!36414 (tail!11790 s!2326)))))

(declare-fun b!6150422 () Bool)

(declare-fun e!3747762 () Bool)

(assert (=> b!6150422 (= e!3747762 (not lt!2334359))))

(declare-fun b!6150423 () Bool)

(declare-fun res!2547694 () Bool)

(declare-fun e!3747760 () Bool)

(assert (=> b!6150423 (=> res!2547694 e!3747760)))

(assert (=> b!6150423 (= res!2547694 (not (isEmpty!36414 (tail!11790 s!2326))))))

(declare-fun b!6150424 () Bool)

(declare-fun res!2547696 () Bool)

(assert (=> b!6150424 (=> res!2547696 e!3747758)))

(assert (=> b!6150424 (= res!2547696 e!3747761)))

(declare-fun res!2547690 () Bool)

(assert (=> b!6150424 (=> (not res!2547690) (not e!3747761))))

(assert (=> b!6150424 (= res!2547690 lt!2334359)))

(declare-fun bm!511470 () Bool)

(declare-fun call!511475 () Bool)

(assert (=> bm!511470 (= call!511475 (isEmpty!36414 s!2326))))

(declare-fun b!6150425 () Bool)

(declare-fun e!3747759 () Bool)

(assert (=> b!6150425 (= e!3747759 e!3747762)))

(declare-fun c!1106945 () Bool)

(assert (=> b!6150425 (= c!1106945 (is-EmptyLang!16092 (regTwo!32696 r!7292)))))

(declare-fun b!6150426 () Bool)

(assert (=> b!6150426 (= e!3747761 (= (head!12705 s!2326) (c!1106631 (regTwo!32696 r!7292))))))

(declare-fun b!6150427 () Bool)

(assert (=> b!6150427 (= e!3747760 (not (= (head!12705 s!2326) (c!1106631 (regTwo!32696 r!7292)))))))

(declare-fun b!6150428 () Bool)

(declare-fun res!2547695 () Bool)

(assert (=> b!6150428 (=> res!2547695 e!3747758)))

(assert (=> b!6150428 (= res!2547695 (not (is-ElementMatch!16092 (regTwo!32696 r!7292))))))

(assert (=> b!6150428 (= e!3747762 e!3747758)))

(declare-fun b!6150429 () Bool)

(assert (=> b!6150429 (= e!3747759 (= lt!2334359 call!511475))))

(declare-fun b!6150430 () Bool)

(assert (=> b!6150430 (= e!3747756 (nullable!6085 (regTwo!32696 r!7292)))))

(declare-fun b!6150431 () Bool)

(assert (=> b!6150431 (= e!3747757 e!3747760)))

(declare-fun res!2547691 () Bool)

(assert (=> b!6150431 (=> res!2547691 e!3747760)))

(assert (=> b!6150431 (= res!2547691 call!511475)))

(declare-fun b!6150432 () Bool)

(declare-fun res!2547692 () Bool)

(assert (=> b!6150432 (=> (not res!2547692) (not e!3747761))))

(assert (=> b!6150432 (= res!2547692 (not call!511475))))

(declare-fun d!1927052 () Bool)

(assert (=> d!1927052 e!3747759))

(declare-fun c!1106944 () Bool)

(assert (=> d!1927052 (= c!1106944 (is-EmptyExpr!16092 (regTwo!32696 r!7292)))))

(assert (=> d!1927052 (= lt!2334359 e!3747756)))

(declare-fun c!1106943 () Bool)

(assert (=> d!1927052 (= c!1106943 (isEmpty!36414 s!2326))))

(assert (=> d!1927052 (validRegex!7828 (regTwo!32696 r!7292))))

(assert (=> d!1927052 (= (matchR!8275 (regTwo!32696 r!7292) s!2326) lt!2334359)))

(assert (= (and d!1927052 c!1106943) b!6150430))

(assert (= (and d!1927052 (not c!1106943)) b!6150420))

(assert (= (and d!1927052 c!1106944) b!6150429))

(assert (= (and d!1927052 (not c!1106944)) b!6150425))

(assert (= (and b!6150425 c!1106945) b!6150422))

(assert (= (and b!6150425 (not c!1106945)) b!6150428))

(assert (= (and b!6150428 (not res!2547695)) b!6150424))

(assert (= (and b!6150424 res!2547690) b!6150432))

(assert (= (and b!6150432 res!2547692) b!6150421))

(assert (= (and b!6150421 res!2547693) b!6150426))

(assert (= (and b!6150424 (not res!2547696)) b!6150419))

(assert (= (and b!6150419 res!2547697) b!6150431))

(assert (= (and b!6150431 (not res!2547691)) b!6150423))

(assert (= (and b!6150423 (not res!2547694)) b!6150427))

(assert (= (or b!6150429 b!6150431 b!6150432) bm!511470))

(assert (=> b!6150430 m!6989948))

(assert (=> b!6150421 m!6989500))

(assert (=> b!6150421 m!6989500))

(assert (=> b!6150421 m!6989502))

(assert (=> b!6150427 m!6989504))

(assert (=> b!6150426 m!6989504))

(assert (=> b!6150423 m!6989500))

(assert (=> b!6150423 m!6989500))

(assert (=> b!6150423 m!6989502))

(assert (=> d!1927052 m!6989496))

(assert (=> d!1927052 m!6989958))

(assert (=> b!6150420 m!6989504))

(assert (=> b!6150420 m!6989504))

(declare-fun m!6990148 () Bool)

(assert (=> b!6150420 m!6990148))

(assert (=> b!6150420 m!6989500))

(assert (=> b!6150420 m!6990148))

(assert (=> b!6150420 m!6989500))

(declare-fun m!6990150 () Bool)

(assert (=> b!6150420 m!6990150))

(assert (=> bm!511470 m!6989496))

(assert (=> b!6149550 d!1927052))

(declare-fun d!1927054 () Bool)

(declare-fun c!1106946 () Bool)

(assert (=> d!1927054 (= c!1106946 (isEmpty!36414 (tail!11790 (t!378063 s!2326))))))

(declare-fun e!3747763 () Bool)

(assert (=> d!1927054 (= (matchZipper!2104 (derivationStepZipper!2065 lt!2334167 (head!12705 (t!378063 s!2326))) (tail!11790 (t!378063 s!2326))) e!3747763)))

(declare-fun b!6150433 () Bool)

(assert (=> b!6150433 (= e!3747763 (nullableZipper!1873 (derivationStepZipper!2065 lt!2334167 (head!12705 (t!378063 s!2326)))))))

(declare-fun b!6150434 () Bool)

(assert (=> b!6150434 (= e!3747763 (matchZipper!2104 (derivationStepZipper!2065 (derivationStepZipper!2065 lt!2334167 (head!12705 (t!378063 s!2326))) (head!12705 (tail!11790 (t!378063 s!2326)))) (tail!11790 (tail!11790 (t!378063 s!2326)))))))

(assert (= (and d!1927054 c!1106946) b!6150433))

(assert (= (and d!1927054 (not c!1106946)) b!6150434))

(assert (=> d!1927054 m!6989330))

(assert (=> d!1927054 m!6989816))

(assert (=> b!6150433 m!6989336))

(declare-fun m!6990152 () Bool)

(assert (=> b!6150433 m!6990152))

(assert (=> b!6150434 m!6989330))

(assert (=> b!6150434 m!6989820))

(assert (=> b!6150434 m!6989336))

(assert (=> b!6150434 m!6989820))

(declare-fun m!6990154 () Bool)

(assert (=> b!6150434 m!6990154))

(assert (=> b!6150434 m!6989330))

(assert (=> b!6150434 m!6989824))

(assert (=> b!6150434 m!6990154))

(assert (=> b!6150434 m!6989824))

(declare-fun m!6990156 () Bool)

(assert (=> b!6150434 m!6990156))

(assert (=> b!6149429 d!1927054))

(declare-fun bs!1524653 () Bool)

(declare-fun d!1927056 () Bool)

(assert (= bs!1524653 (and d!1927056 d!1926906)))

(declare-fun lambda!335416 () Int)

(assert (=> bs!1524653 (= lambda!335416 lambda!335399)))

(declare-fun bs!1524654 () Bool)

(assert (= bs!1524654 (and d!1927056 d!1926998)))

(assert (=> bs!1524654 (= lambda!335416 lambda!335410)))

(declare-fun bs!1524655 () Bool)

(assert (= bs!1524655 (and d!1927056 b!6149238)))

(assert (=> bs!1524655 (= (= (head!12705 (t!378063 s!2326)) (h!70900 s!2326)) (= lambda!335416 lambda!335322))))

(declare-fun bs!1524656 () Bool)

(assert (= bs!1524656 (and d!1927056 d!1926926)))

(assert (=> bs!1524656 (= lambda!335416 lambda!335400)))

(declare-fun bs!1524657 () Bool)

(assert (= bs!1524657 (and d!1927056 d!1926966)))

(assert (=> bs!1524657 (= lambda!335416 lambda!335404)))

(assert (=> d!1927056 true))

(assert (=> d!1927056 (= (derivationStepZipper!2065 lt!2334167 (head!12705 (t!378063 s!2326))) (flatMap!1597 lt!2334167 lambda!335416))))

(declare-fun bs!1524658 () Bool)

(assert (= bs!1524658 d!1927056))

(declare-fun m!6990158 () Bool)

(assert (=> bs!1524658 m!6990158))

(assert (=> b!6149429 d!1927056))

(assert (=> b!6149429 d!1926908))

(assert (=> b!6149429 d!1926910))

(declare-fun d!1927058 () Bool)

(assert (=> d!1927058 (= (isEmpty!36411 (tail!11791 (exprs!5976 (h!70901 zl!343)))) (is-Nil!64451 (tail!11791 (exprs!5976 (h!70901 zl!343)))))))

(assert (=> b!6149515 d!1927058))

(declare-fun d!1927060 () Bool)

(assert (=> d!1927060 (= (tail!11791 (exprs!5976 (h!70901 zl!343))) (t!378062 (exprs!5976 (h!70901 zl!343))))))

(assert (=> b!6149515 d!1927060))

(declare-fun d!1927062 () Bool)

(declare-fun c!1106947 () Bool)

(assert (=> d!1927062 (= c!1106947 (isEmpty!36414 (tail!11790 (t!378063 s!2326))))))

(declare-fun e!3747764 () Bool)

(assert (=> d!1927062 (= (matchZipper!2104 (derivationStepZipper!2065 lt!2334169 (head!12705 (t!378063 s!2326))) (tail!11790 (t!378063 s!2326))) e!3747764)))

(declare-fun b!6150435 () Bool)

(assert (=> b!6150435 (= e!3747764 (nullableZipper!1873 (derivationStepZipper!2065 lt!2334169 (head!12705 (t!378063 s!2326)))))))

(declare-fun b!6150436 () Bool)

(assert (=> b!6150436 (= e!3747764 (matchZipper!2104 (derivationStepZipper!2065 (derivationStepZipper!2065 lt!2334169 (head!12705 (t!378063 s!2326))) (head!12705 (tail!11790 (t!378063 s!2326)))) (tail!11790 (tail!11790 (t!378063 s!2326)))))))

(assert (= (and d!1927062 c!1106947) b!6150435))

(assert (= (and d!1927062 (not c!1106947)) b!6150436))

(assert (=> d!1927062 m!6989330))

(assert (=> d!1927062 m!6989816))

(assert (=> b!6150435 m!6989400))

(declare-fun m!6990160 () Bool)

(assert (=> b!6150435 m!6990160))

(assert (=> b!6150436 m!6989330))

(assert (=> b!6150436 m!6989820))

(assert (=> b!6150436 m!6989400))

(assert (=> b!6150436 m!6989820))

(declare-fun m!6990162 () Bool)

(assert (=> b!6150436 m!6990162))

(assert (=> b!6150436 m!6989330))

(assert (=> b!6150436 m!6989824))

(assert (=> b!6150436 m!6990162))

(assert (=> b!6150436 m!6989824))

(declare-fun m!6990164 () Bool)

(assert (=> b!6150436 m!6990164))

(assert (=> b!6149517 d!1927062))

(declare-fun bs!1524659 () Bool)

(declare-fun d!1927064 () Bool)

(assert (= bs!1524659 (and d!1927064 d!1926906)))

(declare-fun lambda!335417 () Int)

(assert (=> bs!1524659 (= lambda!335417 lambda!335399)))

(declare-fun bs!1524660 () Bool)

(assert (= bs!1524660 (and d!1927064 d!1926998)))

(assert (=> bs!1524660 (= lambda!335417 lambda!335410)))

(declare-fun bs!1524661 () Bool)

(assert (= bs!1524661 (and d!1927064 b!6149238)))

(assert (=> bs!1524661 (= (= (head!12705 (t!378063 s!2326)) (h!70900 s!2326)) (= lambda!335417 lambda!335322))))

(declare-fun bs!1524662 () Bool)

(assert (= bs!1524662 (and d!1927064 d!1927056)))

(assert (=> bs!1524662 (= lambda!335417 lambda!335416)))

(declare-fun bs!1524663 () Bool)

(assert (= bs!1524663 (and d!1927064 d!1926926)))

(assert (=> bs!1524663 (= lambda!335417 lambda!335400)))

(declare-fun bs!1524664 () Bool)

(assert (= bs!1524664 (and d!1927064 d!1926966)))

(assert (=> bs!1524664 (= lambda!335417 lambda!335404)))

(assert (=> d!1927064 true))

(assert (=> d!1927064 (= (derivationStepZipper!2065 lt!2334169 (head!12705 (t!378063 s!2326))) (flatMap!1597 lt!2334169 lambda!335417))))

(declare-fun bs!1524665 () Bool)

(assert (= bs!1524665 d!1927064))

(declare-fun m!6990166 () Bool)

(assert (=> bs!1524665 m!6990166))

(assert (=> b!6149517 d!1927064))

(assert (=> b!6149517 d!1926908))

(assert (=> b!6149517 d!1926910))

(declare-fun d!1927066 () Bool)

(declare-fun res!2547698 () Bool)

(declare-fun e!3747765 () Bool)

(assert (=> d!1927066 (=> res!2547698 e!3747765)))

(assert (=> d!1927066 (= res!2547698 (is-Nil!64451 lt!2334297))))

(assert (=> d!1927066 (= (forall!15213 lt!2334297 lambda!335366) e!3747765)))

(declare-fun b!6150437 () Bool)

(declare-fun e!3747766 () Bool)

(assert (=> b!6150437 (= e!3747765 e!3747766)))

(declare-fun res!2547699 () Bool)

(assert (=> b!6150437 (=> (not res!2547699) (not e!3747766))))

(assert (=> b!6150437 (= res!2547699 (dynLambda!25407 lambda!335366 (h!70899 lt!2334297)))))

(declare-fun b!6150438 () Bool)

(assert (=> b!6150438 (= e!3747766 (forall!15213 (t!378062 lt!2334297) lambda!335366))))

(assert (= (and d!1927066 (not res!2547698)) b!6150437))

(assert (= (and b!6150437 res!2547699) b!6150438))

(declare-fun b_lambda!234081 () Bool)

(assert (=> (not b_lambda!234081) (not b!6150437)))

(declare-fun m!6990168 () Bool)

(assert (=> b!6150437 m!6990168))

(declare-fun m!6990170 () Bool)

(assert (=> b!6150438 m!6990170))

(assert (=> d!1926782 d!1927066))

(declare-fun bs!1524666 () Bool)

(declare-fun d!1927068 () Bool)

(assert (= bs!1524666 (and d!1927068 d!1926936)))

(declare-fun lambda!335418 () Int)

(assert (=> bs!1524666 (= lambda!335418 lambda!335403)))

(declare-fun bs!1524667 () Bool)

(assert (= bs!1524667 (and d!1927068 d!1926972)))

(assert (=> bs!1524667 (= lambda!335418 lambda!335405)))

(declare-fun bs!1524668 () Bool)

(assert (= bs!1524668 (and d!1927068 d!1926980)))

(assert (=> bs!1524668 (= lambda!335418 lambda!335406)))

(declare-fun bs!1524669 () Bool)

(assert (= bs!1524669 (and d!1927068 d!1926988)))

(assert (=> bs!1524669 (= lambda!335418 lambda!335409)))

(assert (=> d!1927068 (= (nullableZipper!1873 (set.union lt!2334151 lt!2334149)) (exists!2438 (set.union lt!2334151 lt!2334149) lambda!335418))))

(declare-fun bs!1524670 () Bool)

(assert (= bs!1524670 d!1927068))

(declare-fun m!6990172 () Bool)

(assert (=> bs!1524670 m!6990172))

(assert (=> b!6149571 d!1927068))

(declare-fun e!3747769 () (Set Context!10952))

(declare-fun b!6150439 () Bool)

(declare-fun call!511476 () (Set Context!10952))

(assert (=> b!6150439 (= e!3747769 (set.union call!511476 (derivationStepZipperUp!1266 (Context!10953 (t!378062 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 (h!70901 zl!343))))))) (h!70900 s!2326))))))

(declare-fun b!6150440 () Bool)

(declare-fun e!3747767 () (Set Context!10952))

(assert (=> b!6150440 (= e!3747767 call!511476)))

(declare-fun d!1927070 () Bool)

(declare-fun c!1106948 () Bool)

(declare-fun e!3747768 () Bool)

(assert (=> d!1927070 (= c!1106948 e!3747768)))

(declare-fun res!2547700 () Bool)

(assert (=> d!1927070 (=> (not res!2547700) (not e!3747768))))

(assert (=> d!1927070 (= res!2547700 (is-Cons!64451 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 (h!70901 zl!343)))))))))

(assert (=> d!1927070 (= (derivationStepZipperUp!1266 (Context!10953 (t!378062 (exprs!5976 (h!70901 zl!343)))) (h!70900 s!2326)) e!3747769)))

(declare-fun b!6150441 () Bool)

(assert (=> b!6150441 (= e!3747767 (as set.empty (Set Context!10952)))))

(declare-fun b!6150442 () Bool)

(assert (=> b!6150442 (= e!3747768 (nullable!6085 (h!70899 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 (h!70901 zl!343))))))))))

(declare-fun bm!511471 () Bool)

(assert (=> bm!511471 (= call!511476 (derivationStepZipperDown!1340 (h!70899 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 (h!70901 zl!343)))))) (Context!10953 (t!378062 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 (h!70901 zl!343))))))) (h!70900 s!2326)))))

(declare-fun b!6150443 () Bool)

(assert (=> b!6150443 (= e!3747769 e!3747767)))

(declare-fun c!1106949 () Bool)

(assert (=> b!6150443 (= c!1106949 (is-Cons!64451 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 (h!70901 zl!343)))))))))

(assert (= (and d!1927070 res!2547700) b!6150442))

(assert (= (and d!1927070 c!1106948) b!6150439))

(assert (= (and d!1927070 (not c!1106948)) b!6150443))

(assert (= (and b!6150443 c!1106949) b!6150440))

(assert (= (and b!6150443 (not c!1106949)) b!6150441))

(assert (= (or b!6150439 b!6150440) bm!511471))

(declare-fun m!6990174 () Bool)

(assert (=> b!6150439 m!6990174))

(declare-fun m!6990176 () Bool)

(assert (=> b!6150442 m!6990176))

(declare-fun m!6990178 () Bool)

(assert (=> bm!511471 m!6990178))

(assert (=> b!6149417 d!1927070))

(assert (=> b!6149692 d!1926728))

(declare-fun bs!1524671 () Bool)

(declare-fun d!1927072 () Bool)

(assert (= bs!1524671 (and d!1927072 d!1926896)))

(declare-fun lambda!335419 () Int)

(assert (=> bs!1524671 (= lambda!335419 lambda!335396)))

(declare-fun bs!1524672 () Bool)

(assert (= bs!1524672 (and d!1927072 d!1926984)))

(assert (=> bs!1524672 (= lambda!335419 lambda!335408)))

(declare-fun bs!1524673 () Bool)

(assert (= bs!1524673 (and d!1927072 d!1926780)))

(assert (=> bs!1524673 (= lambda!335419 lambda!335363)))

(declare-fun bs!1524674 () Bool)

(assert (= bs!1524674 (and d!1927072 d!1926782)))

(assert (=> bs!1524674 (= lambda!335419 lambda!335366)))

(declare-fun bs!1524675 () Bool)

(assert (= bs!1524675 (and d!1927072 d!1926768)))

(assert (=> bs!1524675 (= lambda!335419 lambda!335354)))

(declare-fun bs!1524676 () Bool)

(assert (= bs!1524676 (and d!1927072 d!1926736)))

(assert (=> bs!1524676 (= lambda!335419 lambda!335344)))

(declare-fun bs!1524677 () Bool)

(assert (= bs!1524677 (and d!1927072 d!1926982)))

(assert (=> bs!1524677 (= lambda!335419 lambda!335407)))

(declare-fun bs!1524678 () Bool)

(assert (= bs!1524678 (and d!1927072 d!1926728)))

(assert (=> bs!1524678 (= lambda!335419 lambda!335343)))

(declare-fun bs!1524679 () Bool)

(assert (= bs!1524679 (and d!1927072 d!1926708)))

(assert (=> bs!1524679 (= lambda!335419 lambda!335340)))

(declare-fun lt!2334360 () List!64575)

(assert (=> d!1927072 (forall!15213 lt!2334360 lambda!335419)))

(declare-fun e!3747770 () List!64575)

(assert (=> d!1927072 (= lt!2334360 e!3747770)))

(declare-fun c!1106950 () Bool)

(assert (=> d!1927072 (= c!1106950 (is-Cons!64453 (t!378064 zl!343)))))

(assert (=> d!1927072 (= (unfocusZipperList!1513 (t!378064 zl!343)) lt!2334360)))

(declare-fun b!6150444 () Bool)

(assert (=> b!6150444 (= e!3747770 (Cons!64451 (generalisedConcat!1689 (exprs!5976 (h!70901 (t!378064 zl!343)))) (unfocusZipperList!1513 (t!378064 (t!378064 zl!343)))))))

(declare-fun b!6150445 () Bool)

(assert (=> b!6150445 (= e!3747770 Nil!64451)))

(assert (= (and d!1927072 c!1106950) b!6150444))

(assert (= (and d!1927072 (not c!1106950)) b!6150445))

(declare-fun m!6990180 () Bool)

(assert (=> d!1927072 m!6990180))

(declare-fun m!6990182 () Bool)

(assert (=> b!6150444 m!6990182))

(declare-fun m!6990184 () Bool)

(assert (=> b!6150444 m!6990184))

(assert (=> b!6149692 d!1927072))

(assert (=> d!1926714 d!1926898))

(assert (=> d!1926786 d!1926898))

(declare-fun e!3747773 () (Set Context!10952))

(declare-fun b!6150446 () Bool)

(declare-fun call!511477 () (Set Context!10952))

(assert (=> b!6150446 (= e!3747773 (set.union call!511477 (derivationStepZipperUp!1266 (Context!10953 (t!378062 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334159)))))) (h!70900 s!2326))))))

(declare-fun b!6150447 () Bool)

(declare-fun e!3747771 () (Set Context!10952))

(assert (=> b!6150447 (= e!3747771 call!511477)))

(declare-fun d!1927074 () Bool)

(declare-fun c!1106951 () Bool)

(declare-fun e!3747772 () Bool)

(assert (=> d!1927074 (= c!1106951 e!3747772)))

(declare-fun res!2547701 () Bool)

(assert (=> d!1927074 (=> (not res!2547701) (not e!3747772))))

(assert (=> d!1927074 (= res!2547701 (is-Cons!64451 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334159))))))))

(assert (=> d!1927074 (= (derivationStepZipperUp!1266 (Context!10953 (t!378062 (exprs!5976 lt!2334159))) (h!70900 s!2326)) e!3747773)))

(declare-fun b!6150448 () Bool)

(assert (=> b!6150448 (= e!3747771 (as set.empty (Set Context!10952)))))

(declare-fun b!6150449 () Bool)

(assert (=> b!6150449 (= e!3747772 (nullable!6085 (h!70899 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334159)))))))))

(declare-fun bm!511472 () Bool)

(assert (=> bm!511472 (= call!511477 (derivationStepZipperDown!1340 (h!70899 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334159))))) (Context!10953 (t!378062 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334159)))))) (h!70900 s!2326)))))

(declare-fun b!6150450 () Bool)

(assert (=> b!6150450 (= e!3747773 e!3747771)))

(declare-fun c!1106952 () Bool)

(assert (=> b!6150450 (= c!1106952 (is-Cons!64451 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334159))))))))

(assert (= (and d!1927074 res!2547701) b!6150449))

(assert (= (and d!1927074 c!1106951) b!6150446))

(assert (= (and d!1927074 (not c!1106951)) b!6150450))

(assert (= (and b!6150450 c!1106952) b!6150447))

(assert (= (and b!6150450 (not c!1106952)) b!6150448))

(assert (= (or b!6150446 b!6150447) bm!511472))

(declare-fun m!6990186 () Bool)

(assert (=> b!6150446 m!6990186))

(declare-fun m!6990188 () Bool)

(assert (=> b!6150449 m!6990188))

(declare-fun m!6990190 () Bool)

(assert (=> bm!511472 m!6990190))

(assert (=> b!6149526 d!1927074))

(declare-fun e!3747779 () Bool)

(declare-fun b!6150451 () Bool)

(assert (=> b!6150451 (= e!3747779 (nullable!6085 (regOne!32696 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292)))))))))))

(declare-fun c!1106954 () Bool)

(declare-fun call!511483 () (Set Context!10952))

(declare-fun c!1106956 () Bool)

(declare-fun c!1106955 () Bool)

(declare-fun bm!511473 () Bool)

(declare-fun call!511481 () List!64575)

(assert (=> bm!511473 (= call!511483 (derivationStepZipperDown!1340 (ite c!1106954 (regTwo!32697 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292))))))) (ite c!1106955 (regTwo!32696 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292))))))) (ite c!1106956 (regOne!32696 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292))))))) (reg!16421 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292)))))))))) (ite (or c!1106954 c!1106955) (ite (or c!1106684 c!1106685) lt!2334170 (Context!10953 call!511334)) (Context!10953 call!511481)) (h!70900 s!2326)))))

(declare-fun b!6150452 () Bool)

(declare-fun e!3747775 () (Set Context!10952))

(declare-fun call!511482 () (Set Context!10952))

(assert (=> b!6150452 (= e!3747775 (set.union call!511482 call!511483))))

(declare-fun bm!511474 () Bool)

(declare-fun call!511480 () (Set Context!10952))

(declare-fun call!511479 () (Set Context!10952))

(assert (=> bm!511474 (= call!511480 call!511479)))

(declare-fun b!6150453 () Bool)

(declare-fun e!3747777 () (Set Context!10952))

(assert (=> b!6150453 (= e!3747777 call!511480)))

(declare-fun bm!511475 () Bool)

(declare-fun call!511478 () List!64575)

(assert (=> bm!511475 (= call!511482 (derivationStepZipperDown!1340 (ite c!1106954 (regOne!32697 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292))))))) (regOne!32696 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292)))))))) (ite c!1106954 (ite (or c!1106684 c!1106685) lt!2334170 (Context!10953 call!511334)) (Context!10953 call!511478)) (h!70900 s!2326)))))

(declare-fun b!6150454 () Bool)

(assert (=> b!6150454 (= e!3747777 (as set.empty (Set Context!10952)))))

(declare-fun bm!511476 () Bool)

(assert (=> bm!511476 (= call!511478 ($colon$colon!1969 (exprs!5976 (ite (or c!1106684 c!1106685) lt!2334170 (Context!10953 call!511334))) (ite (or c!1106955 c!1106956) (regTwo!32696 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292))))))) (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292)))))))))))

(declare-fun bm!511477 () Bool)

(assert (=> bm!511477 (= call!511481 call!511478)))

(declare-fun d!1927076 () Bool)

(declare-fun c!1106953 () Bool)

(assert (=> d!1927076 (= c!1106953 (and (is-ElementMatch!16092 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292))))))) (= (c!1106631 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292))))))) (h!70900 s!2326))))))

(declare-fun e!3747774 () (Set Context!10952))

(assert (=> d!1927076 (= (derivationStepZipperDown!1340 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292)))))) (ite (or c!1106684 c!1106685) lt!2334170 (Context!10953 call!511334)) (h!70900 s!2326)) e!3747774)))

(declare-fun b!6150455 () Bool)

(assert (=> b!6150455 (= e!3747774 e!3747775)))

(assert (=> b!6150455 (= c!1106954 (is-Union!16092 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292))))))))))

(declare-fun c!1106957 () Bool)

(declare-fun b!6150456 () Bool)

(assert (=> b!6150456 (= c!1106957 (is-Star!16092 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292))))))))))

(declare-fun e!3747778 () (Set Context!10952))

(assert (=> b!6150456 (= e!3747778 e!3747777)))

(declare-fun b!6150457 () Bool)

(declare-fun e!3747776 () (Set Context!10952))

(assert (=> b!6150457 (= e!3747776 e!3747778)))

(assert (=> b!6150457 (= c!1106956 (is-Concat!24937 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292))))))))))

(declare-fun b!6150458 () Bool)

(assert (=> b!6150458 (= e!3747778 call!511480)))

(declare-fun bm!511478 () Bool)

(assert (=> bm!511478 (= call!511479 call!511483)))

(declare-fun b!6150459 () Bool)

(assert (=> b!6150459 (= e!3747774 (set.insert (ite (or c!1106684 c!1106685) lt!2334170 (Context!10953 call!511334)) (as set.empty (Set Context!10952))))))

(declare-fun b!6150460 () Bool)

(assert (=> b!6150460 (= e!3747776 (set.union call!511482 call!511479))))

(declare-fun b!6150461 () Bool)

(assert (=> b!6150461 (= c!1106955 e!3747779)))

(declare-fun res!2547702 () Bool)

(assert (=> b!6150461 (=> (not res!2547702) (not e!3747779))))

(assert (=> b!6150461 (= res!2547702 (is-Concat!24937 (ite c!1106684 (regTwo!32697 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106685 (regTwo!32696 (regTwo!32697 (regOne!32696 r!7292))) (ite c!1106686 (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))) (reg!16421 (regTwo!32697 (regOne!32696 r!7292))))))))))

(assert (=> b!6150461 (= e!3747775 e!3747776)))

(assert (= (and d!1927076 c!1106953) b!6150459))

(assert (= (and d!1927076 (not c!1106953)) b!6150455))

(assert (= (and b!6150455 c!1106954) b!6150452))

(assert (= (and b!6150455 (not c!1106954)) b!6150461))

(assert (= (and b!6150461 res!2547702) b!6150451))

(assert (= (and b!6150461 c!1106955) b!6150460))

(assert (= (and b!6150461 (not c!1106955)) b!6150457))

(assert (= (and b!6150457 c!1106956) b!6150458))

(assert (= (and b!6150457 (not c!1106956)) b!6150456))

(assert (= (and b!6150456 c!1106957) b!6150453))

(assert (= (and b!6150456 (not c!1106957)) b!6150454))

(assert (= (or b!6150458 b!6150453) bm!511477))

(assert (= (or b!6150458 b!6150453) bm!511474))

(assert (= (or b!6150460 bm!511477) bm!511476))

(assert (= (or b!6150460 bm!511474) bm!511478))

(assert (= (or b!6150452 bm!511478) bm!511473))

(assert (= (or b!6150452 b!6150460) bm!511475))

(declare-fun m!6990192 () Bool)

(assert (=> b!6150459 m!6990192))

(declare-fun m!6990194 () Bool)

(assert (=> bm!511475 m!6990194))

(declare-fun m!6990196 () Bool)

(assert (=> b!6150451 m!6990196))

(declare-fun m!6990198 () Bool)

(assert (=> bm!511473 m!6990198))

(declare-fun m!6990200 () Bool)

(assert (=> bm!511476 m!6990200))

(assert (=> bm!511326 d!1927076))

(declare-fun d!1927078 () Bool)

(declare-fun res!2547703 () Bool)

(declare-fun e!3747780 () Bool)

(assert (=> d!1927078 (=> res!2547703 e!3747780)))

(assert (=> d!1927078 (= res!2547703 (is-Nil!64451 (exprs!5976 (h!70901 zl!343))))))

(assert (=> d!1927078 (= (forall!15213 (exprs!5976 (h!70901 zl!343)) lambda!335354) e!3747780)))

(declare-fun b!6150462 () Bool)

(declare-fun e!3747781 () Bool)

(assert (=> b!6150462 (= e!3747780 e!3747781)))

(declare-fun res!2547704 () Bool)

(assert (=> b!6150462 (=> (not res!2547704) (not e!3747781))))

(assert (=> b!6150462 (= res!2547704 (dynLambda!25407 lambda!335354 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun b!6150463 () Bool)

(assert (=> b!6150463 (= e!3747781 (forall!15213 (t!378062 (exprs!5976 (h!70901 zl!343))) lambda!335354))))

(assert (= (and d!1927078 (not res!2547703)) b!6150462))

(assert (= (and b!6150462 res!2547704) b!6150463))

(declare-fun b_lambda!234083 () Bool)

(assert (=> (not b_lambda!234083) (not b!6150462)))

(declare-fun m!6990202 () Bool)

(assert (=> b!6150462 m!6990202))

(declare-fun m!6990204 () Bool)

(assert (=> b!6150463 m!6990204))

(assert (=> d!1926768 d!1927078))

(declare-fun b!6150464 () Bool)

(declare-fun e!3747784 () Bool)

(declare-fun e!3747783 () Bool)

(assert (=> b!6150464 (= e!3747784 e!3747783)))

(declare-fun res!2547712 () Bool)

(assert (=> b!6150464 (=> (not res!2547712) (not e!3747783))))

(declare-fun lt!2334361 () Bool)

(assert (=> b!6150464 (= res!2547712 (not lt!2334361))))

(declare-fun b!6150465 () Bool)

(declare-fun e!3747782 () Bool)

(assert (=> b!6150465 (= e!3747782 (matchR!8275 (derivativeStep!4812 (derivativeStep!4812 r!7292 (head!12705 s!2326)) (head!12705 (tail!11790 s!2326))) (tail!11790 (tail!11790 s!2326))))))

(declare-fun b!6150466 () Bool)

(declare-fun res!2547708 () Bool)

(declare-fun e!3747787 () Bool)

(assert (=> b!6150466 (=> (not res!2547708) (not e!3747787))))

(assert (=> b!6150466 (= res!2547708 (isEmpty!36414 (tail!11790 (tail!11790 s!2326))))))

(declare-fun b!6150467 () Bool)

(declare-fun e!3747788 () Bool)

(assert (=> b!6150467 (= e!3747788 (not lt!2334361))))

(declare-fun b!6150468 () Bool)

(declare-fun res!2547709 () Bool)

(declare-fun e!3747786 () Bool)

(assert (=> b!6150468 (=> res!2547709 e!3747786)))

(assert (=> b!6150468 (= res!2547709 (not (isEmpty!36414 (tail!11790 (tail!11790 s!2326)))))))

(declare-fun b!6150469 () Bool)

(declare-fun res!2547711 () Bool)

(assert (=> b!6150469 (=> res!2547711 e!3747784)))

(assert (=> b!6150469 (= res!2547711 e!3747787)))

(declare-fun res!2547705 () Bool)

(assert (=> b!6150469 (=> (not res!2547705) (not e!3747787))))

(assert (=> b!6150469 (= res!2547705 lt!2334361)))

(declare-fun bm!511479 () Bool)

(declare-fun call!511484 () Bool)

(assert (=> bm!511479 (= call!511484 (isEmpty!36414 (tail!11790 s!2326)))))

(declare-fun b!6150470 () Bool)

(declare-fun e!3747785 () Bool)

(assert (=> b!6150470 (= e!3747785 e!3747788)))

(declare-fun c!1106960 () Bool)

(assert (=> b!6150470 (= c!1106960 (is-EmptyLang!16092 (derivativeStep!4812 r!7292 (head!12705 s!2326))))))

(declare-fun b!6150471 () Bool)

(assert (=> b!6150471 (= e!3747787 (= (head!12705 (tail!11790 s!2326)) (c!1106631 (derivativeStep!4812 r!7292 (head!12705 s!2326)))))))

(declare-fun b!6150472 () Bool)

(assert (=> b!6150472 (= e!3747786 (not (= (head!12705 (tail!11790 s!2326)) (c!1106631 (derivativeStep!4812 r!7292 (head!12705 s!2326))))))))

(declare-fun b!6150473 () Bool)

(declare-fun res!2547710 () Bool)

(assert (=> b!6150473 (=> res!2547710 e!3747784)))

(assert (=> b!6150473 (= res!2547710 (not (is-ElementMatch!16092 (derivativeStep!4812 r!7292 (head!12705 s!2326)))))))

(assert (=> b!6150473 (= e!3747788 e!3747784)))

(declare-fun b!6150474 () Bool)

(assert (=> b!6150474 (= e!3747785 (= lt!2334361 call!511484))))

(declare-fun b!6150475 () Bool)

(assert (=> b!6150475 (= e!3747782 (nullable!6085 (derivativeStep!4812 r!7292 (head!12705 s!2326))))))

(declare-fun b!6150476 () Bool)

(assert (=> b!6150476 (= e!3747783 e!3747786)))

(declare-fun res!2547706 () Bool)

(assert (=> b!6150476 (=> res!2547706 e!3747786)))

(assert (=> b!6150476 (= res!2547706 call!511484)))

(declare-fun b!6150477 () Bool)

(declare-fun res!2547707 () Bool)

(assert (=> b!6150477 (=> (not res!2547707) (not e!3747787))))

(assert (=> b!6150477 (= res!2547707 (not call!511484))))

(declare-fun d!1927080 () Bool)

(assert (=> d!1927080 e!3747785))

(declare-fun c!1106959 () Bool)

(assert (=> d!1927080 (= c!1106959 (is-EmptyExpr!16092 (derivativeStep!4812 r!7292 (head!12705 s!2326))))))

(assert (=> d!1927080 (= lt!2334361 e!3747782)))

(declare-fun c!1106958 () Bool)

(assert (=> d!1927080 (= c!1106958 (isEmpty!36414 (tail!11790 s!2326)))))

(assert (=> d!1927080 (validRegex!7828 (derivativeStep!4812 r!7292 (head!12705 s!2326)))))

(assert (=> d!1927080 (= (matchR!8275 (derivativeStep!4812 r!7292 (head!12705 s!2326)) (tail!11790 s!2326)) lt!2334361)))

(assert (= (and d!1927080 c!1106958) b!6150475))

(assert (= (and d!1927080 (not c!1106958)) b!6150465))

(assert (= (and d!1927080 c!1106959) b!6150474))

(assert (= (and d!1927080 (not c!1106959)) b!6150470))

(assert (= (and b!6150470 c!1106960) b!6150467))

(assert (= (and b!6150470 (not c!1106960)) b!6150473))

(assert (= (and b!6150473 (not res!2547710)) b!6150469))

(assert (= (and b!6150469 res!2547705) b!6150477))

(assert (= (and b!6150477 res!2547707) b!6150466))

(assert (= (and b!6150466 res!2547708) b!6150471))

(assert (= (and b!6150469 (not res!2547711)) b!6150464))

(assert (= (and b!6150464 res!2547712) b!6150476))

(assert (= (and b!6150476 (not res!2547706)) b!6150468))

(assert (= (and b!6150468 (not res!2547709)) b!6150472))

(assert (= (or b!6150474 b!6150476 b!6150477) bm!511479))

(assert (=> b!6150475 m!6989506))

(declare-fun m!6990206 () Bool)

(assert (=> b!6150475 m!6990206))

(assert (=> b!6150466 m!6989500))

(declare-fun m!6990208 () Bool)

(assert (=> b!6150466 m!6990208))

(assert (=> b!6150466 m!6990208))

(declare-fun m!6990210 () Bool)

(assert (=> b!6150466 m!6990210))

(assert (=> b!6150472 m!6989500))

(declare-fun m!6990212 () Bool)

(assert (=> b!6150472 m!6990212))

(assert (=> b!6150471 m!6989500))

(assert (=> b!6150471 m!6990212))

(assert (=> b!6150468 m!6989500))

(assert (=> b!6150468 m!6990208))

(assert (=> b!6150468 m!6990208))

(assert (=> b!6150468 m!6990210))

(assert (=> d!1927080 m!6989500))

(assert (=> d!1927080 m!6989502))

(assert (=> d!1927080 m!6989506))

(declare-fun m!6990214 () Bool)

(assert (=> d!1927080 m!6990214))

(assert (=> b!6150465 m!6989500))

(assert (=> b!6150465 m!6990212))

(assert (=> b!6150465 m!6989506))

(assert (=> b!6150465 m!6990212))

(declare-fun m!6990216 () Bool)

(assert (=> b!6150465 m!6990216))

(assert (=> b!6150465 m!6989500))

(assert (=> b!6150465 m!6990208))

(assert (=> b!6150465 m!6990216))

(assert (=> b!6150465 m!6990208))

(declare-fun m!6990218 () Bool)

(assert (=> b!6150465 m!6990218))

(assert (=> bm!511479 m!6989500))

(assert (=> bm!511479 m!6989502))

(assert (=> b!6149645 d!1927080))

(declare-fun b!6150498 () Bool)

(declare-fun e!3747800 () Regex!16092)

(assert (=> b!6150498 (= e!3747800 EmptyLang!16092)))

(declare-fun b!6150499 () Bool)

(declare-fun e!3747803 () Regex!16092)

(assert (=> b!6150499 (= e!3747800 e!3747803)))

(declare-fun c!1106973 () Bool)

(assert (=> b!6150499 (= c!1106973 (is-ElementMatch!16092 r!7292))))

(declare-fun call!511494 () Regex!16092)

(declare-fun call!511495 () Regex!16092)

(declare-fun e!3747801 () Regex!16092)

(declare-fun b!6150500 () Bool)

(assert (=> b!6150500 (= e!3747801 (Union!16092 (Concat!24937 call!511494 (regTwo!32696 r!7292)) call!511495))))

(declare-fun b!6150501 () Bool)

(assert (=> b!6150501 (= e!3747801 (Union!16092 (Concat!24937 call!511495 (regTwo!32696 r!7292)) EmptyLang!16092))))

(declare-fun bm!511488 () Bool)

(declare-fun call!511496 () Regex!16092)

(declare-fun call!511493 () Regex!16092)

(assert (=> bm!511488 (= call!511496 call!511493)))

(declare-fun bm!511489 () Bool)

(assert (=> bm!511489 (= call!511495 call!511496)))

(declare-fun c!1106971 () Bool)

(declare-fun bm!511490 () Bool)

(assert (=> bm!511490 (= call!511494 (derivativeStep!4812 (ite c!1106971 (regTwo!32697 r!7292) (regOne!32696 r!7292)) (head!12705 s!2326)))))

(declare-fun b!6150502 () Bool)

(declare-fun e!3747799 () Regex!16092)

(assert (=> b!6150502 (= e!3747799 (Union!16092 call!511493 call!511494))))

(declare-fun b!6150504 () Bool)

(assert (=> b!6150504 (= e!3747803 (ite (= (head!12705 s!2326) (c!1106631 r!7292)) EmptyExpr!16092 EmptyLang!16092))))

(declare-fun b!6150505 () Bool)

(assert (=> b!6150505 (= c!1106971 (is-Union!16092 r!7292))))

(assert (=> b!6150505 (= e!3747803 e!3747799)))

(declare-fun b!6150506 () Bool)

(declare-fun e!3747802 () Regex!16092)

(assert (=> b!6150506 (= e!3747799 e!3747802)))

(declare-fun c!1106972 () Bool)

(assert (=> b!6150506 (= c!1106972 (is-Star!16092 r!7292))))

(declare-fun c!1106974 () Bool)

(declare-fun bm!511491 () Bool)

(assert (=> bm!511491 (= call!511493 (derivativeStep!4812 (ite c!1106971 (regOne!32697 r!7292) (ite c!1106972 (reg!16421 r!7292) (ite c!1106974 (regTwo!32696 r!7292) (regOne!32696 r!7292)))) (head!12705 s!2326)))))

(declare-fun b!6150507 () Bool)

(assert (=> b!6150507 (= e!3747802 (Concat!24937 call!511496 r!7292))))

(declare-fun d!1927082 () Bool)

(declare-fun lt!2334364 () Regex!16092)

(assert (=> d!1927082 (validRegex!7828 lt!2334364)))

(assert (=> d!1927082 (= lt!2334364 e!3747800)))

(declare-fun c!1106975 () Bool)

(assert (=> d!1927082 (= c!1106975 (or (is-EmptyExpr!16092 r!7292) (is-EmptyLang!16092 r!7292)))))

(assert (=> d!1927082 (validRegex!7828 r!7292)))

(assert (=> d!1927082 (= (derivativeStep!4812 r!7292 (head!12705 s!2326)) lt!2334364)))

(declare-fun b!6150503 () Bool)

(assert (=> b!6150503 (= c!1106974 (nullable!6085 (regOne!32696 r!7292)))))

(assert (=> b!6150503 (= e!3747802 e!3747801)))

(assert (= (and d!1927082 c!1106975) b!6150498))

(assert (= (and d!1927082 (not c!1106975)) b!6150499))

(assert (= (and b!6150499 c!1106973) b!6150504))

(assert (= (and b!6150499 (not c!1106973)) b!6150505))

(assert (= (and b!6150505 c!1106971) b!6150502))

(assert (= (and b!6150505 (not c!1106971)) b!6150506))

(assert (= (and b!6150506 c!1106972) b!6150507))

(assert (= (and b!6150506 (not c!1106972)) b!6150503))

(assert (= (and b!6150503 c!1106974) b!6150500))

(assert (= (and b!6150503 (not c!1106974)) b!6150501))

(assert (= (or b!6150500 b!6150501) bm!511489))

(assert (= (or b!6150507 bm!511489) bm!511488))

(assert (= (or b!6150502 b!6150500) bm!511490))

(assert (= (or b!6150502 bm!511488) bm!511491))

(assert (=> bm!511490 m!6989504))

(declare-fun m!6990220 () Bool)

(assert (=> bm!511490 m!6990220))

(assert (=> bm!511491 m!6989504))

(declare-fun m!6990222 () Bool)

(assert (=> bm!511491 m!6990222))

(declare-fun m!6990224 () Bool)

(assert (=> d!1927082 m!6990224))

(assert (=> d!1927082 m!6989116))

(assert (=> b!6150503 m!6989866))

(assert (=> b!6149645 d!1927082))

(assert (=> b!6149645 d!1927040))

(assert (=> b!6149645 d!1926994))

(declare-fun d!1927084 () Bool)

(declare-fun c!1106976 () Bool)

(assert (=> d!1927084 (= c!1106976 (isEmpty!36414 (tail!11790 (t!378063 s!2326))))))

(declare-fun e!3747804 () Bool)

(assert (=> d!1927084 (= (matchZipper!2104 (derivationStepZipper!2065 (set.union lt!2334151 lt!2334149) (head!12705 (t!378063 s!2326))) (tail!11790 (t!378063 s!2326))) e!3747804)))

(declare-fun b!6150508 () Bool)

(assert (=> b!6150508 (= e!3747804 (nullableZipper!1873 (derivationStepZipper!2065 (set.union lt!2334151 lt!2334149) (head!12705 (t!378063 s!2326)))))))

(declare-fun b!6150509 () Bool)

(assert (=> b!6150509 (= e!3747804 (matchZipper!2104 (derivationStepZipper!2065 (derivationStepZipper!2065 (set.union lt!2334151 lt!2334149) (head!12705 (t!378063 s!2326))) (head!12705 (tail!11790 (t!378063 s!2326)))) (tail!11790 (tail!11790 (t!378063 s!2326)))))))

(assert (= (and d!1927084 c!1106976) b!6150508))

(assert (= (and d!1927084 (not c!1106976)) b!6150509))

(assert (=> d!1927084 m!6989330))

(assert (=> d!1927084 m!6989816))

(assert (=> b!6150508 m!6989486))

(declare-fun m!6990226 () Bool)

(assert (=> b!6150508 m!6990226))

(assert (=> b!6150509 m!6989330))

(assert (=> b!6150509 m!6989820))

(assert (=> b!6150509 m!6989486))

(assert (=> b!6150509 m!6989820))

(declare-fun m!6990228 () Bool)

(assert (=> b!6150509 m!6990228))

(assert (=> b!6150509 m!6989330))

(assert (=> b!6150509 m!6989824))

(assert (=> b!6150509 m!6990228))

(assert (=> b!6150509 m!6989824))

(declare-fun m!6990230 () Bool)

(assert (=> b!6150509 m!6990230))

(assert (=> b!6149572 d!1927084))

(declare-fun bs!1524680 () Bool)

(declare-fun d!1927086 () Bool)

(assert (= bs!1524680 (and d!1927086 d!1926906)))

(declare-fun lambda!335420 () Int)

(assert (=> bs!1524680 (= lambda!335420 lambda!335399)))

(declare-fun bs!1524681 () Bool)

(assert (= bs!1524681 (and d!1927086 d!1926998)))

(assert (=> bs!1524681 (= lambda!335420 lambda!335410)))

(declare-fun bs!1524682 () Bool)

(assert (= bs!1524682 (and d!1927086 b!6149238)))

(assert (=> bs!1524682 (= (= (head!12705 (t!378063 s!2326)) (h!70900 s!2326)) (= lambda!335420 lambda!335322))))

(declare-fun bs!1524683 () Bool)

(assert (= bs!1524683 (and d!1927086 d!1927056)))

(assert (=> bs!1524683 (= lambda!335420 lambda!335416)))

(declare-fun bs!1524684 () Bool)

(assert (= bs!1524684 (and d!1927086 d!1926926)))

(assert (=> bs!1524684 (= lambda!335420 lambda!335400)))

(declare-fun bs!1524685 () Bool)

(assert (= bs!1524685 (and d!1927086 d!1927064)))

(assert (=> bs!1524685 (= lambda!335420 lambda!335417)))

(declare-fun bs!1524686 () Bool)

(assert (= bs!1524686 (and d!1927086 d!1926966)))

(assert (=> bs!1524686 (= lambda!335420 lambda!335404)))

(assert (=> d!1927086 true))

(assert (=> d!1927086 (= (derivationStepZipper!2065 (set.union lt!2334151 lt!2334149) (head!12705 (t!378063 s!2326))) (flatMap!1597 (set.union lt!2334151 lt!2334149) lambda!335420))))

(declare-fun bs!1524687 () Bool)

(assert (= bs!1524687 d!1927086))

(declare-fun m!6990232 () Bool)

(assert (=> bs!1524687 m!6990232))

(assert (=> b!6149572 d!1927086))

(assert (=> b!6149572 d!1926908))

(assert (=> b!6149572 d!1926910))

(declare-fun bm!511492 () Bool)

(declare-fun call!511499 () Bool)

(declare-fun call!511497 () Bool)

(assert (=> bm!511492 (= call!511499 call!511497)))

(declare-fun b!6150510 () Bool)

(declare-fun res!2547714 () Bool)

(declare-fun e!3747805 () Bool)

(assert (=> b!6150510 (=> (not res!2547714) (not e!3747805))))

(declare-fun call!511498 () Bool)

(assert (=> b!6150510 (= res!2547714 call!511498)))

(declare-fun e!3747811 () Bool)

(assert (=> b!6150510 (= e!3747811 e!3747805)))

(declare-fun b!6150511 () Bool)

(declare-fun e!3747808 () Bool)

(assert (=> b!6150511 (= e!3747808 call!511497)))

(declare-fun b!6150512 () Bool)

(declare-fun e!3747807 () Bool)

(declare-fun e!3747810 () Bool)

(assert (=> b!6150512 (= e!3747807 e!3747810)))

(declare-fun c!1106977 () Bool)

(assert (=> b!6150512 (= c!1106977 (is-Star!16092 (ite c!1106681 (regOne!32697 r!7292) (regOne!32696 r!7292))))))

(declare-fun b!6150513 () Bool)

(assert (=> b!6150513 (= e!3747810 e!3747811)))

(declare-fun c!1106978 () Bool)

(assert (=> b!6150513 (= c!1106978 (is-Union!16092 (ite c!1106681 (regOne!32697 r!7292) (regOne!32696 r!7292))))))

(declare-fun bm!511493 () Bool)

(assert (=> bm!511493 (= call!511497 (validRegex!7828 (ite c!1106977 (reg!16421 (ite c!1106681 (regOne!32697 r!7292) (regOne!32696 r!7292))) (ite c!1106978 (regTwo!32697 (ite c!1106681 (regOne!32697 r!7292) (regOne!32696 r!7292))) (regTwo!32696 (ite c!1106681 (regOne!32697 r!7292) (regOne!32696 r!7292)))))))))

(declare-fun b!6150514 () Bool)

(declare-fun res!2547716 () Bool)

(declare-fun e!3747806 () Bool)

(assert (=> b!6150514 (=> res!2547716 e!3747806)))

(assert (=> b!6150514 (= res!2547716 (not (is-Concat!24937 (ite c!1106681 (regOne!32697 r!7292) (regOne!32696 r!7292)))))))

(assert (=> b!6150514 (= e!3747811 e!3747806)))

(declare-fun b!6150515 () Bool)

(assert (=> b!6150515 (= e!3747810 e!3747808)))

(declare-fun res!2547713 () Bool)

(assert (=> b!6150515 (= res!2547713 (not (nullable!6085 (reg!16421 (ite c!1106681 (regOne!32697 r!7292) (regOne!32696 r!7292))))))))

(assert (=> b!6150515 (=> (not res!2547713) (not e!3747808))))

(declare-fun d!1927088 () Bool)

(declare-fun res!2547717 () Bool)

(assert (=> d!1927088 (=> res!2547717 e!3747807)))

(assert (=> d!1927088 (= res!2547717 (is-ElementMatch!16092 (ite c!1106681 (regOne!32697 r!7292) (regOne!32696 r!7292))))))

(assert (=> d!1927088 (= (validRegex!7828 (ite c!1106681 (regOne!32697 r!7292) (regOne!32696 r!7292))) e!3747807)))

(declare-fun b!6150516 () Bool)

(declare-fun e!3747809 () Bool)

(assert (=> b!6150516 (= e!3747806 e!3747809)))

(declare-fun res!2547715 () Bool)

(assert (=> b!6150516 (=> (not res!2547715) (not e!3747809))))

(assert (=> b!6150516 (= res!2547715 call!511498)))

(declare-fun bm!511494 () Bool)

(assert (=> bm!511494 (= call!511498 (validRegex!7828 (ite c!1106978 (regOne!32697 (ite c!1106681 (regOne!32697 r!7292) (regOne!32696 r!7292))) (regOne!32696 (ite c!1106681 (regOne!32697 r!7292) (regOne!32696 r!7292))))))))

(declare-fun b!6150517 () Bool)

(assert (=> b!6150517 (= e!3747805 call!511499)))

(declare-fun b!6150518 () Bool)

(assert (=> b!6150518 (= e!3747809 call!511499)))

(assert (= (and d!1927088 (not res!2547717)) b!6150512))

(assert (= (and b!6150512 c!1106977) b!6150515))

(assert (= (and b!6150512 (not c!1106977)) b!6150513))

(assert (= (and b!6150515 res!2547713) b!6150511))

(assert (= (and b!6150513 c!1106978) b!6150510))

(assert (= (and b!6150513 (not c!1106978)) b!6150514))

(assert (= (and b!6150510 res!2547714) b!6150517))

(assert (= (and b!6150514 (not res!2547716)) b!6150516))

(assert (= (and b!6150516 res!2547715) b!6150518))

(assert (= (or b!6150517 b!6150518) bm!511492))

(assert (= (or b!6150510 b!6150516) bm!511494))

(assert (= (or b!6150511 bm!511492) bm!511493))

(declare-fun m!6990234 () Bool)

(assert (=> bm!511493 m!6990234))

(declare-fun m!6990236 () Bool)

(assert (=> b!6150515 m!6990236))

(declare-fun m!6990238 () Bool)

(assert (=> bm!511494 m!6990238))

(assert (=> bm!511325 d!1927088))

(declare-fun b!6150519 () Bool)

(declare-fun e!3747817 () Bool)

(assert (=> b!6150519 (= e!3747817 (nullable!6085 (regOne!32696 (h!70899 (exprs!5976 lt!2334159)))))))

(declare-fun bm!511495 () Bool)

(declare-fun c!1106981 () Bool)

(declare-fun call!511503 () List!64575)

(declare-fun c!1106980 () Bool)

(declare-fun call!511505 () (Set Context!10952))

(declare-fun c!1106982 () Bool)

(assert (=> bm!511495 (= call!511505 (derivationStepZipperDown!1340 (ite c!1106980 (regTwo!32697 (h!70899 (exprs!5976 lt!2334159))) (ite c!1106981 (regTwo!32696 (h!70899 (exprs!5976 lt!2334159))) (ite c!1106982 (regOne!32696 (h!70899 (exprs!5976 lt!2334159))) (reg!16421 (h!70899 (exprs!5976 lt!2334159)))))) (ite (or c!1106980 c!1106981) (Context!10953 (t!378062 (exprs!5976 lt!2334159))) (Context!10953 call!511503)) (h!70900 s!2326)))))

(declare-fun b!6150520 () Bool)

(declare-fun e!3747813 () (Set Context!10952))

(declare-fun call!511504 () (Set Context!10952))

(assert (=> b!6150520 (= e!3747813 (set.union call!511504 call!511505))))

(declare-fun bm!511496 () Bool)

(declare-fun call!511502 () (Set Context!10952))

(declare-fun call!511501 () (Set Context!10952))

(assert (=> bm!511496 (= call!511502 call!511501)))

(declare-fun b!6150521 () Bool)

(declare-fun e!3747815 () (Set Context!10952))

(assert (=> b!6150521 (= e!3747815 call!511502)))

(declare-fun call!511500 () List!64575)

(declare-fun bm!511497 () Bool)

(assert (=> bm!511497 (= call!511504 (derivationStepZipperDown!1340 (ite c!1106980 (regOne!32697 (h!70899 (exprs!5976 lt!2334159))) (regOne!32696 (h!70899 (exprs!5976 lt!2334159)))) (ite c!1106980 (Context!10953 (t!378062 (exprs!5976 lt!2334159))) (Context!10953 call!511500)) (h!70900 s!2326)))))

(declare-fun b!6150522 () Bool)

(assert (=> b!6150522 (= e!3747815 (as set.empty (Set Context!10952)))))

(declare-fun bm!511498 () Bool)

(assert (=> bm!511498 (= call!511500 ($colon$colon!1969 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334159)))) (ite (or c!1106981 c!1106982) (regTwo!32696 (h!70899 (exprs!5976 lt!2334159))) (h!70899 (exprs!5976 lt!2334159)))))))

(declare-fun bm!511499 () Bool)

(assert (=> bm!511499 (= call!511503 call!511500)))

(declare-fun d!1927090 () Bool)

(declare-fun c!1106979 () Bool)

(assert (=> d!1927090 (= c!1106979 (and (is-ElementMatch!16092 (h!70899 (exprs!5976 lt!2334159))) (= (c!1106631 (h!70899 (exprs!5976 lt!2334159))) (h!70900 s!2326))))))

(declare-fun e!3747812 () (Set Context!10952))

(assert (=> d!1927090 (= (derivationStepZipperDown!1340 (h!70899 (exprs!5976 lt!2334159)) (Context!10953 (t!378062 (exprs!5976 lt!2334159))) (h!70900 s!2326)) e!3747812)))

(declare-fun b!6150523 () Bool)

(assert (=> b!6150523 (= e!3747812 e!3747813)))

(assert (=> b!6150523 (= c!1106980 (is-Union!16092 (h!70899 (exprs!5976 lt!2334159))))))

(declare-fun b!6150524 () Bool)

(declare-fun c!1106983 () Bool)

(assert (=> b!6150524 (= c!1106983 (is-Star!16092 (h!70899 (exprs!5976 lt!2334159))))))

(declare-fun e!3747816 () (Set Context!10952))

(assert (=> b!6150524 (= e!3747816 e!3747815)))

(declare-fun b!6150525 () Bool)

(declare-fun e!3747814 () (Set Context!10952))

(assert (=> b!6150525 (= e!3747814 e!3747816)))

(assert (=> b!6150525 (= c!1106982 (is-Concat!24937 (h!70899 (exprs!5976 lt!2334159))))))

(declare-fun b!6150526 () Bool)

(assert (=> b!6150526 (= e!3747816 call!511502)))

(declare-fun bm!511500 () Bool)

(assert (=> bm!511500 (= call!511501 call!511505)))

(declare-fun b!6150527 () Bool)

(assert (=> b!6150527 (= e!3747812 (set.insert (Context!10953 (t!378062 (exprs!5976 lt!2334159))) (as set.empty (Set Context!10952))))))

(declare-fun b!6150528 () Bool)

(assert (=> b!6150528 (= e!3747814 (set.union call!511504 call!511501))))

(declare-fun b!6150529 () Bool)

(assert (=> b!6150529 (= c!1106981 e!3747817)))

(declare-fun res!2547718 () Bool)

(assert (=> b!6150529 (=> (not res!2547718) (not e!3747817))))

(assert (=> b!6150529 (= res!2547718 (is-Concat!24937 (h!70899 (exprs!5976 lt!2334159))))))

(assert (=> b!6150529 (= e!3747813 e!3747814)))

(assert (= (and d!1927090 c!1106979) b!6150527))

(assert (= (and d!1927090 (not c!1106979)) b!6150523))

(assert (= (and b!6150523 c!1106980) b!6150520))

(assert (= (and b!6150523 (not c!1106980)) b!6150529))

(assert (= (and b!6150529 res!2547718) b!6150519))

(assert (= (and b!6150529 c!1106981) b!6150528))

(assert (= (and b!6150529 (not c!1106981)) b!6150525))

(assert (= (and b!6150525 c!1106982) b!6150526))

(assert (= (and b!6150525 (not c!1106982)) b!6150524))

(assert (= (and b!6150524 c!1106983) b!6150521))

(assert (= (and b!6150524 (not c!1106983)) b!6150522))

(assert (= (or b!6150526 b!6150521) bm!511499))

(assert (= (or b!6150526 b!6150521) bm!511496))

(assert (= (or b!6150528 bm!511499) bm!511498))

(assert (= (or b!6150528 bm!511496) bm!511500))

(assert (= (or b!6150520 bm!511500) bm!511495))

(assert (= (or b!6150520 b!6150528) bm!511497))

(declare-fun m!6990240 () Bool)

(assert (=> b!6150527 m!6990240))

(declare-fun m!6990242 () Bool)

(assert (=> bm!511497 m!6990242))

(declare-fun m!6990244 () Bool)

(assert (=> b!6150519 m!6990244))

(declare-fun m!6990246 () Bool)

(assert (=> bm!511495 m!6990246))

(declare-fun m!6990248 () Bool)

(assert (=> bm!511498 m!6990248))

(assert (=> bm!511339 d!1927090))

(declare-fun d!1927092 () Bool)

(assert (=> d!1927092 (= ($colon$colon!1969 (exprs!5976 lt!2334170) (ite (or c!1106666 c!1106667) (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (h!70899 (exprs!5976 (h!70901 zl!343))))) (Cons!64451 (ite (or c!1106666 c!1106667) (regTwo!32696 (h!70899 (exprs!5976 (h!70901 zl!343)))) (h!70899 (exprs!5976 (h!70901 zl!343)))) (exprs!5976 lt!2334170)))))

(assert (=> bm!511313 d!1927092))

(assert (=> b!6149652 d!1927040))

(assert (=> d!1926784 d!1926786))

(assert (=> d!1926784 d!1926716))

(declare-fun e!3747818 () Bool)

(declare-fun d!1927094 () Bool)

(assert (=> d!1927094 (= (matchZipper!2104 (set.union lt!2334160 lt!2334149) (t!378063 s!2326)) e!3747818)))

(declare-fun res!2547719 () Bool)

(assert (=> d!1927094 (=> res!2547719 e!3747818)))

(assert (=> d!1927094 (= res!2547719 (matchZipper!2104 lt!2334160 (t!378063 s!2326)))))

(assert (=> d!1927094 true))

(declare-fun _$48!1685 () Unit!157531)

(assert (=> d!1927094 (= (choose!45706 lt!2334160 lt!2334149 (t!378063 s!2326)) _$48!1685)))

(declare-fun b!6150530 () Bool)

(assert (=> b!6150530 (= e!3747818 (matchZipper!2104 lt!2334149 (t!378063 s!2326)))))

(assert (= (and d!1927094 (not res!2547719)) b!6150530))

(assert (=> d!1927094 m!6989152))

(assert (=> d!1927094 m!6989138))

(assert (=> b!6150530 m!6989102))

(assert (=> d!1926784 d!1927094))

(declare-fun b!6150531 () Bool)

(declare-fun e!3747824 () Bool)

(assert (=> b!6150531 (= e!3747824 (nullable!6085 (regOne!32696 (h!70899 (exprs!5976 lt!2334153)))))))

(declare-fun bm!511501 () Bool)

(declare-fun c!1106987 () Bool)

(declare-fun call!511509 () List!64575)

(declare-fun c!1106985 () Bool)

(declare-fun call!511511 () (Set Context!10952))

(declare-fun c!1106986 () Bool)

(assert (=> bm!511501 (= call!511511 (derivationStepZipperDown!1340 (ite c!1106985 (regTwo!32697 (h!70899 (exprs!5976 lt!2334153))) (ite c!1106986 (regTwo!32696 (h!70899 (exprs!5976 lt!2334153))) (ite c!1106987 (regOne!32696 (h!70899 (exprs!5976 lt!2334153))) (reg!16421 (h!70899 (exprs!5976 lt!2334153)))))) (ite (or c!1106985 c!1106986) (Context!10953 (t!378062 (exprs!5976 lt!2334153))) (Context!10953 call!511509)) (h!70900 s!2326)))))

(declare-fun b!6150532 () Bool)

(declare-fun e!3747820 () (Set Context!10952))

(declare-fun call!511510 () (Set Context!10952))

(assert (=> b!6150532 (= e!3747820 (set.union call!511510 call!511511))))

(declare-fun bm!511502 () Bool)

(declare-fun call!511508 () (Set Context!10952))

(declare-fun call!511507 () (Set Context!10952))

(assert (=> bm!511502 (= call!511508 call!511507)))

(declare-fun b!6150533 () Bool)

(declare-fun e!3747822 () (Set Context!10952))

(assert (=> b!6150533 (= e!3747822 call!511508)))

(declare-fun bm!511503 () Bool)

(declare-fun call!511506 () List!64575)

(assert (=> bm!511503 (= call!511510 (derivationStepZipperDown!1340 (ite c!1106985 (regOne!32697 (h!70899 (exprs!5976 lt!2334153))) (regOne!32696 (h!70899 (exprs!5976 lt!2334153)))) (ite c!1106985 (Context!10953 (t!378062 (exprs!5976 lt!2334153))) (Context!10953 call!511506)) (h!70900 s!2326)))))

(declare-fun b!6150534 () Bool)

(assert (=> b!6150534 (= e!3747822 (as set.empty (Set Context!10952)))))

(declare-fun bm!511504 () Bool)

(assert (=> bm!511504 (= call!511506 ($colon$colon!1969 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334153)))) (ite (or c!1106986 c!1106987) (regTwo!32696 (h!70899 (exprs!5976 lt!2334153))) (h!70899 (exprs!5976 lt!2334153)))))))

(declare-fun bm!511505 () Bool)

(assert (=> bm!511505 (= call!511509 call!511506)))

(declare-fun d!1927096 () Bool)

(declare-fun c!1106984 () Bool)

(assert (=> d!1927096 (= c!1106984 (and (is-ElementMatch!16092 (h!70899 (exprs!5976 lt!2334153))) (= (c!1106631 (h!70899 (exprs!5976 lt!2334153))) (h!70900 s!2326))))))

(declare-fun e!3747819 () (Set Context!10952))

(assert (=> d!1927096 (= (derivationStepZipperDown!1340 (h!70899 (exprs!5976 lt!2334153)) (Context!10953 (t!378062 (exprs!5976 lt!2334153))) (h!70900 s!2326)) e!3747819)))

(declare-fun b!6150535 () Bool)

(assert (=> b!6150535 (= e!3747819 e!3747820)))

(assert (=> b!6150535 (= c!1106985 (is-Union!16092 (h!70899 (exprs!5976 lt!2334153))))))

(declare-fun b!6150536 () Bool)

(declare-fun c!1106988 () Bool)

(assert (=> b!6150536 (= c!1106988 (is-Star!16092 (h!70899 (exprs!5976 lt!2334153))))))

(declare-fun e!3747823 () (Set Context!10952))

(assert (=> b!6150536 (= e!3747823 e!3747822)))

(declare-fun b!6150537 () Bool)

(declare-fun e!3747821 () (Set Context!10952))

(assert (=> b!6150537 (= e!3747821 e!3747823)))

(assert (=> b!6150537 (= c!1106987 (is-Concat!24937 (h!70899 (exprs!5976 lt!2334153))))))

(declare-fun b!6150538 () Bool)

(assert (=> b!6150538 (= e!3747823 call!511508)))

(declare-fun bm!511506 () Bool)

(assert (=> bm!511506 (= call!511507 call!511511)))

(declare-fun b!6150539 () Bool)

(assert (=> b!6150539 (= e!3747819 (set.insert (Context!10953 (t!378062 (exprs!5976 lt!2334153))) (as set.empty (Set Context!10952))))))

(declare-fun b!6150540 () Bool)

(assert (=> b!6150540 (= e!3747821 (set.union call!511510 call!511507))))

(declare-fun b!6150541 () Bool)

(assert (=> b!6150541 (= c!1106986 e!3747824)))

(declare-fun res!2547720 () Bool)

(assert (=> b!6150541 (=> (not res!2547720) (not e!3747824))))

(assert (=> b!6150541 (= res!2547720 (is-Concat!24937 (h!70899 (exprs!5976 lt!2334153))))))

(assert (=> b!6150541 (= e!3747820 e!3747821)))

(assert (= (and d!1927096 c!1106984) b!6150539))

(assert (= (and d!1927096 (not c!1106984)) b!6150535))

(assert (= (and b!6150535 c!1106985) b!6150532))

(assert (= (and b!6150535 (not c!1106985)) b!6150541))

(assert (= (and b!6150541 res!2547720) b!6150531))

(assert (= (and b!6150541 c!1106986) b!6150540))

(assert (= (and b!6150541 (not c!1106986)) b!6150537))

(assert (= (and b!6150537 c!1106987) b!6150538))

(assert (= (and b!6150537 (not c!1106987)) b!6150536))

(assert (= (and b!6150536 c!1106988) b!6150533))

(assert (= (and b!6150536 (not c!1106988)) b!6150534))

(assert (= (or b!6150538 b!6150533) bm!511505))

(assert (= (or b!6150538 b!6150533) bm!511502))

(assert (= (or b!6150540 bm!511505) bm!511504))

(assert (= (or b!6150540 bm!511502) bm!511506))

(assert (= (or b!6150532 bm!511506) bm!511501))

(assert (= (or b!6150532 b!6150540) bm!511503))

(declare-fun m!6990250 () Bool)

(assert (=> b!6150539 m!6990250))

(declare-fun m!6990252 () Bool)

(assert (=> bm!511503 m!6990252))

(declare-fun m!6990254 () Bool)

(assert (=> b!6150531 m!6990254))

(declare-fun m!6990256 () Bool)

(assert (=> bm!511501 m!6990256))

(declare-fun m!6990258 () Bool)

(assert (=> bm!511504 m!6990258))

(assert (=> bm!511338 d!1927096))

(declare-fun e!3747827 () (Set Context!10952))

(declare-fun call!511512 () (Set Context!10952))

(declare-fun b!6150542 () Bool)

(assert (=> b!6150542 (= e!3747827 (set.union call!511512 (derivationStepZipperUp!1266 (Context!10953 (t!378062 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334153)))))) (h!70900 s!2326))))))

(declare-fun b!6150543 () Bool)

(declare-fun e!3747825 () (Set Context!10952))

(assert (=> b!6150543 (= e!3747825 call!511512)))

(declare-fun d!1927098 () Bool)

(declare-fun c!1106989 () Bool)

(declare-fun e!3747826 () Bool)

(assert (=> d!1927098 (= c!1106989 e!3747826)))

(declare-fun res!2547721 () Bool)

(assert (=> d!1927098 (=> (not res!2547721) (not e!3747826))))

(assert (=> d!1927098 (= res!2547721 (is-Cons!64451 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334153))))))))

(assert (=> d!1927098 (= (derivationStepZipperUp!1266 (Context!10953 (t!378062 (exprs!5976 lt!2334153))) (h!70900 s!2326)) e!3747827)))

(declare-fun b!6150544 () Bool)

(assert (=> b!6150544 (= e!3747825 (as set.empty (Set Context!10952)))))

(declare-fun b!6150545 () Bool)

(assert (=> b!6150545 (= e!3747826 (nullable!6085 (h!70899 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334153)))))))))

(declare-fun bm!511507 () Bool)

(assert (=> bm!511507 (= call!511512 (derivationStepZipperDown!1340 (h!70899 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334153))))) (Context!10953 (t!378062 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334153)))))) (h!70900 s!2326)))))

(declare-fun b!6150546 () Bool)

(assert (=> b!6150546 (= e!3747827 e!3747825)))

(declare-fun c!1106990 () Bool)

(assert (=> b!6150546 (= c!1106990 (is-Cons!64451 (exprs!5976 (Context!10953 (t!378062 (exprs!5976 lt!2334153))))))))

(assert (= (and d!1927098 res!2547721) b!6150545))

(assert (= (and d!1927098 c!1106989) b!6150542))

(assert (= (and d!1927098 (not c!1106989)) b!6150546))

(assert (= (and b!6150546 c!1106990) b!6150543))

(assert (= (and b!6150546 (not c!1106990)) b!6150544))

(assert (= (or b!6150542 b!6150543) bm!511507))

(declare-fun m!6990260 () Bool)

(assert (=> b!6150542 m!6990260))

(declare-fun m!6990262 () Bool)

(assert (=> b!6150545 m!6990262))

(declare-fun m!6990264 () Bool)

(assert (=> bm!511507 m!6990264))

(assert (=> b!6149521 d!1927098))

(declare-fun b!6150547 () Bool)

(declare-fun e!3747833 () Bool)

(assert (=> b!6150547 (= e!3747833 (nullable!6085 (regOne!32696 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292)))))))))

(declare-fun call!511518 () (Set Context!10952))

(declare-fun c!1106992 () Bool)

(declare-fun call!511516 () List!64575)

(declare-fun c!1106994 () Bool)

(declare-fun c!1106993 () Bool)

(declare-fun bm!511508 () Bool)

(assert (=> bm!511508 (= call!511518 (derivationStepZipperDown!1340 (ite c!1106992 (regTwo!32697 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))))) (ite c!1106993 (regTwo!32696 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))))) (ite c!1106994 (regOne!32696 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))))) (reg!16421 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292)))))))) (ite (or c!1106992 c!1106993) (ite c!1106684 lt!2334170 (Context!10953 call!511331)) (Context!10953 call!511516)) (h!70900 s!2326)))))

(declare-fun b!6150548 () Bool)

(declare-fun e!3747829 () (Set Context!10952))

(declare-fun call!511517 () (Set Context!10952))

(assert (=> b!6150548 (= e!3747829 (set.union call!511517 call!511518))))

(declare-fun bm!511509 () Bool)

(declare-fun call!511515 () (Set Context!10952))

(declare-fun call!511514 () (Set Context!10952))

(assert (=> bm!511509 (= call!511515 call!511514)))

(declare-fun b!6150549 () Bool)

(declare-fun e!3747831 () (Set Context!10952))

(assert (=> b!6150549 (= e!3747831 call!511515)))

(declare-fun bm!511510 () Bool)

(declare-fun call!511513 () List!64575)

(assert (=> bm!511510 (= call!511517 (derivationStepZipperDown!1340 (ite c!1106992 (regOne!32697 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))))) (regOne!32696 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292)))))) (ite c!1106992 (ite c!1106684 lt!2334170 (Context!10953 call!511331)) (Context!10953 call!511513)) (h!70900 s!2326)))))

(declare-fun b!6150550 () Bool)

(assert (=> b!6150550 (= e!3747831 (as set.empty (Set Context!10952)))))

(declare-fun bm!511511 () Bool)

(assert (=> bm!511511 (= call!511513 ($colon$colon!1969 (exprs!5976 (ite c!1106684 lt!2334170 (Context!10953 call!511331))) (ite (or c!1106993 c!1106994) (regTwo!32696 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))))) (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292)))))))))

(declare-fun bm!511512 () Bool)

(assert (=> bm!511512 (= call!511516 call!511513)))

(declare-fun d!1927100 () Bool)

(declare-fun c!1106991 () Bool)

(assert (=> d!1927100 (= c!1106991 (and (is-ElementMatch!16092 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))))) (= (c!1106631 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))))) (h!70900 s!2326))))))

(declare-fun e!3747828 () (Set Context!10952))

(assert (=> d!1927100 (= (derivationStepZipperDown!1340 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292)))) (ite c!1106684 lt!2334170 (Context!10953 call!511331)) (h!70900 s!2326)) e!3747828)))

(declare-fun b!6150551 () Bool)

(assert (=> b!6150551 (= e!3747828 e!3747829)))

(assert (=> b!6150551 (= c!1106992 (is-Union!16092 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))))))))

(declare-fun b!6150552 () Bool)

(declare-fun c!1106995 () Bool)

(assert (=> b!6150552 (= c!1106995 (is-Star!16092 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))))))))

(declare-fun e!3747832 () (Set Context!10952))

(assert (=> b!6150552 (= e!3747832 e!3747831)))

(declare-fun b!6150553 () Bool)

(declare-fun e!3747830 () (Set Context!10952))

(assert (=> b!6150553 (= e!3747830 e!3747832)))

(assert (=> b!6150553 (= c!1106994 (is-Concat!24937 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))))))))

(declare-fun b!6150554 () Bool)

(assert (=> b!6150554 (= e!3747832 call!511515)))

(declare-fun bm!511513 () Bool)

(assert (=> bm!511513 (= call!511514 call!511518)))

(declare-fun b!6150555 () Bool)

(assert (=> b!6150555 (= e!3747828 (set.insert (ite c!1106684 lt!2334170 (Context!10953 call!511331)) (as set.empty (Set Context!10952))))))

(declare-fun b!6150556 () Bool)

(assert (=> b!6150556 (= e!3747830 (set.union call!511517 call!511514))))

(declare-fun b!6150557 () Bool)

(assert (=> b!6150557 (= c!1106993 e!3747833)))

(declare-fun res!2547722 () Bool)

(assert (=> b!6150557 (=> (not res!2547722) (not e!3747833))))

(assert (=> b!6150557 (= res!2547722 (is-Concat!24937 (ite c!1106684 (regOne!32697 (regTwo!32697 (regOne!32696 r!7292))) (regOne!32696 (regTwo!32697 (regOne!32696 r!7292))))))))

(assert (=> b!6150557 (= e!3747829 e!3747830)))

(assert (= (and d!1927100 c!1106991) b!6150555))

(assert (= (and d!1927100 (not c!1106991)) b!6150551))

(assert (= (and b!6150551 c!1106992) b!6150548))

(assert (= (and b!6150551 (not c!1106992)) b!6150557))

(assert (= (and b!6150557 res!2547722) b!6150547))

(assert (= (and b!6150557 c!1106993) b!6150556))

(assert (= (and b!6150557 (not c!1106993)) b!6150553))

(assert (= (and b!6150553 c!1106994) b!6150554))

(assert (= (and b!6150553 (not c!1106994)) b!6150552))

(assert (= (and b!6150552 c!1106995) b!6150549))

(assert (= (and b!6150552 (not c!1106995)) b!6150550))

(assert (= (or b!6150554 b!6150549) bm!511512))

(assert (= (or b!6150554 b!6150549) bm!511509))

(assert (= (or b!6150556 bm!511512) bm!511511))

(assert (= (or b!6150556 bm!511509) bm!511513))

(assert (= (or b!6150548 bm!511513) bm!511508))

(assert (= (or b!6150548 b!6150556) bm!511510))

(declare-fun m!6990266 () Bool)

(assert (=> b!6150555 m!6990266))

(declare-fun m!6990268 () Bool)

(assert (=> bm!511510 m!6990268))

(declare-fun m!6990270 () Bool)

(assert (=> b!6150547 m!6990270))

(declare-fun m!6990272 () Bool)

(assert (=> bm!511508 m!6990272))

(declare-fun m!6990274 () Bool)

(assert (=> bm!511511 m!6990274))

(assert (=> bm!511328 d!1927100))

(declare-fun d!1927102 () Bool)

(assert (=> d!1927102 (= (isEmpty!36411 (t!378062 (unfocusZipperList!1513 zl!343))) (is-Nil!64451 (t!378062 (unfocusZipperList!1513 zl!343))))))

(assert (=> b!6149681 d!1927102))

(assert (=> bs!1524527 d!1926706))

(declare-fun d!1927104 () Bool)

(assert (=> d!1927104 (= (isEmpty!36415 (findConcatSeparation!2397 (regOne!32696 r!7292) (regTwo!32696 r!7292) Nil!64452 s!2326 s!2326)) (not (is-Some!15982 (findConcatSeparation!2397 (regOne!32696 r!7292) (regTwo!32696 r!7292) Nil!64452 s!2326 s!2326))))))

(assert (=> d!1926766 d!1927104))

(declare-fun bs!1524688 () Bool)

(declare-fun d!1927106 () Bool)

(assert (= bs!1524688 (and d!1927106 d!1926980)))

(declare-fun lambda!335421 () Int)

(assert (=> bs!1524688 (= lambda!335421 lambda!335406)))

(declare-fun bs!1524689 () Bool)

(assert (= bs!1524689 (and d!1927106 d!1926972)))

(assert (=> bs!1524689 (= lambda!335421 lambda!335405)))

(declare-fun bs!1524690 () Bool)

(assert (= bs!1524690 (and d!1927106 d!1926936)))

(assert (=> bs!1524690 (= lambda!335421 lambda!335403)))

(declare-fun bs!1524691 () Bool)

(assert (= bs!1524691 (and d!1927106 d!1927068)))

(assert (=> bs!1524691 (= lambda!335421 lambda!335418)))

(declare-fun bs!1524692 () Bool)

(assert (= bs!1524692 (and d!1927106 d!1926988)))

(assert (=> bs!1524692 (= lambda!335421 lambda!335409)))

(assert (=> d!1927106 (= (nullableZipper!1873 lt!2334149) (exists!2438 lt!2334149 lambda!335421))))

(declare-fun bs!1524693 () Bool)

(assert (= bs!1524693 d!1927106))

(declare-fun m!6990276 () Bool)

(assert (=> bs!1524693 m!6990276))

(assert (=> b!6149462 d!1927106))

(assert (=> b!6149570 d!1926722))

(declare-fun d!1927108 () Bool)

(assert (=> d!1927108 (= (Exists!3162 lambda!335352) (choose!45708 lambda!335352))))

(declare-fun bs!1524694 () Bool)

(assert (= bs!1524694 d!1927108))

(declare-fun m!6990278 () Bool)

(assert (=> bs!1524694 m!6990278))

(assert (=> d!1926764 d!1927108))

(declare-fun d!1927110 () Bool)

(assert (=> d!1927110 (= (Exists!3162 lambda!335353) (choose!45708 lambda!335353))))

(declare-fun bs!1524695 () Bool)

(assert (= bs!1524695 d!1927110))

(declare-fun m!6990280 () Bool)

(assert (=> bs!1524695 m!6990280))

(assert (=> d!1926764 d!1927110))

(declare-fun bs!1524696 () Bool)

(declare-fun d!1927112 () Bool)

(assert (= bs!1524696 (and d!1927112 b!6149232)))

(declare-fun lambda!335426 () Int)

(assert (=> bs!1524696 (not (= lambda!335426 lambda!335321))))

(declare-fun bs!1524697 () Bool)

(assert (= bs!1524697 (and d!1927112 d!1926762)))

(assert (=> bs!1524697 (= lambda!335426 lambda!335347)))

(declare-fun bs!1524698 () Bool)

(assert (= bs!1524698 (and d!1927112 d!1926764)))

(assert (=> bs!1524698 (= lambda!335426 lambda!335352)))

(declare-fun bs!1524699 () Bool)

(assert (= bs!1524699 (and d!1927112 b!6149607)))

(assert (=> bs!1524699 (not (= lambda!335426 lambda!335360))))

(assert (=> bs!1524696 (= lambda!335426 lambda!335320)))

(declare-fun bs!1524700 () Bool)

(assert (= bs!1524700 (and d!1927112 b!6150374)))

(assert (=> bs!1524700 (not (= lambda!335426 lambda!335415))))

(declare-fun bs!1524701 () Bool)

(assert (= bs!1524701 (and d!1927112 b!6149610)))

(assert (=> bs!1524701 (not (= lambda!335426 lambda!335359))))

(declare-fun bs!1524702 () Bool)

(assert (= bs!1524702 (and d!1927112 d!1927016)))

(assert (=> bs!1524702 (= lambda!335426 lambda!335413)))

(assert (=> bs!1524698 (not (= lambda!335426 lambda!335353))))

(declare-fun bs!1524703 () Bool)

(assert (= bs!1524703 (and d!1927112 b!6150377)))

(assert (=> bs!1524703 (not (= lambda!335426 lambda!335414))))

(assert (=> d!1927112 true))

(assert (=> d!1927112 true))

(assert (=> d!1927112 true))

(declare-fun lambda!335427 () Int)

(assert (=> bs!1524696 (= lambda!335427 lambda!335321)))

(assert (=> bs!1524698 (not (= lambda!335427 lambda!335352))))

(assert (=> bs!1524699 (= lambda!335427 lambda!335360)))

(assert (=> bs!1524696 (not (= lambda!335427 lambda!335320))))

(assert (=> bs!1524700 (= (and (= (regOne!32696 r!7292) (regOne!32696 (regOne!32697 r!7292))) (= (regTwo!32696 r!7292) (regTwo!32696 (regOne!32697 r!7292)))) (= lambda!335427 lambda!335415))))

(assert (=> bs!1524701 (not (= lambda!335427 lambda!335359))))

(assert (=> bs!1524702 (not (= lambda!335427 lambda!335413))))

(assert (=> bs!1524697 (not (= lambda!335427 lambda!335347))))

(declare-fun bs!1524704 () Bool)

(assert (= bs!1524704 d!1927112))

(assert (=> bs!1524704 (not (= lambda!335427 lambda!335426))))

(assert (=> bs!1524698 (= lambda!335427 lambda!335353)))

(assert (=> bs!1524703 (not (= lambda!335427 lambda!335414))))

(assert (=> d!1927112 true))

(assert (=> d!1927112 true))

(assert (=> d!1927112 true))

(assert (=> d!1927112 (= (Exists!3162 lambda!335426) (Exists!3162 lambda!335427))))

(assert (=> d!1927112 true))

(declare-fun _$90!1881 () Unit!157531)

(assert (=> d!1927112 (= (choose!45710 (regOne!32696 r!7292) (regTwo!32696 r!7292) s!2326) _$90!1881)))

(declare-fun m!6990282 () Bool)

(assert (=> bs!1524704 m!6990282))

(declare-fun m!6990284 () Bool)

(assert (=> bs!1524704 m!6990284))

(assert (=> d!1926764 d!1927112))

(assert (=> d!1926764 d!1926960))

(assert (=> d!1926694 d!1926700))

(declare-fun d!1927114 () Bool)

(assert (=> d!1927114 (= (flatMap!1597 z!1189 lambda!335322) (dynLambda!25405 lambda!335322 (h!70901 zl!343)))))

(assert (=> d!1927114 true))

(declare-fun _$13!3062 () Unit!157531)

(assert (=> d!1927114 (= (choose!45704 z!1189 (h!70901 zl!343) lambda!335322) _$13!3062)))

(declare-fun b_lambda!234085 () Bool)

(assert (=> (not b_lambda!234085) (not d!1927114)))

(declare-fun bs!1524705 () Bool)

(assert (= bs!1524705 d!1927114))

(assert (=> bs!1524705 m!6989098))

(assert (=> bs!1524705 m!6989284))

(assert (=> d!1926694 d!1927114))

(assert (=> d!1926740 d!1926744))

(declare-fun d!1927116 () Bool)

(assert (=> d!1927116 (= (flatMap!1597 lt!2334146 lambda!335322) (dynLambda!25405 lambda!335322 lt!2334153))))

(assert (=> d!1927116 true))

(declare-fun _$13!3063 () Unit!157531)

(assert (=> d!1927116 (= (choose!45704 lt!2334146 lt!2334153 lambda!335322) _$13!3063)))

(declare-fun b_lambda!234087 () Bool)

(assert (=> (not b_lambda!234087) (not d!1927116)))

(declare-fun bs!1524706 () Bool)

(assert (= bs!1524706 d!1927116))

(assert (=> bs!1524706 m!6989154))

(assert (=> bs!1524706 m!6989412))

(assert (=> d!1926740 d!1927116))

(declare-fun d!1927118 () Bool)

(assert (=> d!1927118 (= (Exists!3162 (ite c!1106728 lambda!335359 lambda!335360)) (choose!45708 (ite c!1106728 lambda!335359 lambda!335360)))))

(declare-fun bs!1524707 () Bool)

(assert (= bs!1524707 d!1927118))

(declare-fun m!6990286 () Bool)

(assert (=> bs!1524707 m!6990286))

(assert (=> bm!511344 d!1927118))

(assert (=> d!1926776 d!1926900))

(assert (=> d!1926776 d!1926720))

(declare-fun bs!1524708 () Bool)

(declare-fun d!1927120 () Bool)

(assert (= bs!1524708 (and d!1927120 d!1926896)))

(declare-fun lambda!335428 () Int)

(assert (=> bs!1524708 (= lambda!335428 lambda!335396)))

(declare-fun bs!1524709 () Bool)

(assert (= bs!1524709 (and d!1927120 d!1926780)))

(assert (=> bs!1524709 (= lambda!335428 lambda!335363)))

(declare-fun bs!1524710 () Bool)

(assert (= bs!1524710 (and d!1927120 d!1926782)))

(assert (=> bs!1524710 (= lambda!335428 lambda!335366)))

(declare-fun bs!1524711 () Bool)

(assert (= bs!1524711 (and d!1927120 d!1926768)))

(assert (=> bs!1524711 (= lambda!335428 lambda!335354)))

(declare-fun bs!1524712 () Bool)

(assert (= bs!1524712 (and d!1927120 d!1926736)))

(assert (=> bs!1524712 (= lambda!335428 lambda!335344)))

(declare-fun bs!1524713 () Bool)

(assert (= bs!1524713 (and d!1927120 d!1926982)))

(assert (=> bs!1524713 (= lambda!335428 lambda!335407)))

(declare-fun bs!1524714 () Bool)

(assert (= bs!1524714 (and d!1927120 d!1926728)))

(assert (=> bs!1524714 (= lambda!335428 lambda!335343)))

(declare-fun bs!1524715 () Bool)

(assert (= bs!1524715 (and d!1927120 d!1926708)))

(assert (=> bs!1524715 (= lambda!335428 lambda!335340)))

(declare-fun bs!1524716 () Bool)

(assert (= bs!1524716 (and d!1927120 d!1927072)))

(assert (=> bs!1524716 (= lambda!335428 lambda!335419)))

(declare-fun bs!1524717 () Bool)

(assert (= bs!1524717 (and d!1927120 d!1926984)))

(assert (=> bs!1524717 (= lambda!335428 lambda!335408)))

(declare-fun e!3747840 () Bool)

(assert (=> d!1927120 e!3747840))

(declare-fun res!2547731 () Bool)

(assert (=> d!1927120 (=> (not res!2547731) (not e!3747840))))

(declare-fun lt!2334365 () Regex!16092)

(assert (=> d!1927120 (= res!2547731 (validRegex!7828 lt!2334365))))

(declare-fun e!3747843 () Regex!16092)

(assert (=> d!1927120 (= lt!2334365 e!3747843)))

(declare-fun c!1106998 () Bool)

(declare-fun e!3747842 () Bool)

(assert (=> d!1927120 (= c!1106998 e!3747842)))

(declare-fun res!2547732 () Bool)

(assert (=> d!1927120 (=> (not res!2547732) (not e!3747842))))

(assert (=> d!1927120 (= res!2547732 (is-Cons!64451 (t!378062 (unfocusZipperList!1513 zl!343))))))

(assert (=> d!1927120 (forall!15213 (t!378062 (unfocusZipperList!1513 zl!343)) lambda!335428)))

(assert (=> d!1927120 (= (generalisedUnion!1936 (t!378062 (unfocusZipperList!1513 zl!343))) lt!2334365)))

(declare-fun b!6150566 () Bool)

(declare-fun e!3747838 () Regex!16092)

(assert (=> b!6150566 (= e!3747843 e!3747838)))

(declare-fun c!1106997 () Bool)

(assert (=> b!6150566 (= c!1106997 (is-Cons!64451 (t!378062 (unfocusZipperList!1513 zl!343))))))

(declare-fun b!6150567 () Bool)

(declare-fun e!3747841 () Bool)

(assert (=> b!6150567 (= e!3747841 (isEmptyLang!1519 lt!2334365))))

(declare-fun b!6150568 () Bool)

(declare-fun e!3747839 () Bool)

(assert (=> b!6150568 (= e!3747841 e!3747839)))

(declare-fun c!1106996 () Bool)

(assert (=> b!6150568 (= c!1106996 (isEmpty!36411 (tail!11791 (t!378062 (unfocusZipperList!1513 zl!343)))))))

(declare-fun b!6150569 () Bool)

(assert (=> b!6150569 (= e!3747842 (isEmpty!36411 (t!378062 (t!378062 (unfocusZipperList!1513 zl!343)))))))

(declare-fun b!6150570 () Bool)

(assert (=> b!6150570 (= e!3747839 (= lt!2334365 (head!12706 (t!378062 (unfocusZipperList!1513 zl!343)))))))

(declare-fun b!6150571 () Bool)

(assert (=> b!6150571 (= e!3747840 e!3747841)))

(declare-fun c!1106999 () Bool)

(assert (=> b!6150571 (= c!1106999 (isEmpty!36411 (t!378062 (unfocusZipperList!1513 zl!343))))))

(declare-fun b!6150572 () Bool)

(assert (=> b!6150572 (= e!3747839 (isUnion!949 lt!2334365))))

(declare-fun b!6150573 () Bool)

(assert (=> b!6150573 (= e!3747843 (h!70899 (t!378062 (unfocusZipperList!1513 zl!343))))))

(declare-fun b!6150574 () Bool)

(assert (=> b!6150574 (= e!3747838 (Union!16092 (h!70899 (t!378062 (unfocusZipperList!1513 zl!343))) (generalisedUnion!1936 (t!378062 (t!378062 (unfocusZipperList!1513 zl!343))))))))

(declare-fun b!6150575 () Bool)

(assert (=> b!6150575 (= e!3747838 EmptyLang!16092)))

(assert (= (and d!1927120 res!2547732) b!6150569))

(assert (= (and d!1927120 c!1106998) b!6150573))

(assert (= (and d!1927120 (not c!1106998)) b!6150566))

(assert (= (and b!6150566 c!1106997) b!6150574))

(assert (= (and b!6150566 (not c!1106997)) b!6150575))

(assert (= (and d!1927120 res!2547731) b!6150571))

(assert (= (and b!6150571 c!1106999) b!6150567))

(assert (= (and b!6150571 (not c!1106999)) b!6150568))

(assert (= (and b!6150568 c!1106996) b!6150570))

(assert (= (and b!6150568 (not c!1106996)) b!6150572))

(assert (=> b!6150571 m!6989522))

(declare-fun m!6990288 () Bool)

(assert (=> b!6150568 m!6990288))

(assert (=> b!6150568 m!6990288))

(declare-fun m!6990290 () Bool)

(assert (=> b!6150568 m!6990290))

(declare-fun m!6990292 () Bool)

(assert (=> b!6150570 m!6990292))

(declare-fun m!6990294 () Bool)

(assert (=> b!6150567 m!6990294))

(declare-fun m!6990296 () Bool)

(assert (=> b!6150569 m!6990296))

(declare-fun m!6990298 () Bool)

(assert (=> b!6150574 m!6990298))

(declare-fun m!6990300 () Bool)

(assert (=> d!1927120 m!6990300))

(declare-fun m!6990302 () Bool)

(assert (=> d!1927120 m!6990302))

(declare-fun m!6990304 () Bool)

(assert (=> b!6150572 m!6990304))

(assert (=> b!6149686 d!1927120))

(declare-fun bm!511514 () Bool)

(declare-fun call!511521 () Bool)

(declare-fun call!511519 () Bool)

(assert (=> bm!511514 (= call!511521 call!511519)))

(declare-fun b!6150576 () Bool)

(declare-fun res!2547734 () Bool)

(declare-fun e!3747844 () Bool)

(assert (=> b!6150576 (=> (not res!2547734) (not e!3747844))))

(declare-fun call!511520 () Bool)

(assert (=> b!6150576 (= res!2547734 call!511520)))

(declare-fun e!3747850 () Bool)

(assert (=> b!6150576 (= e!3747850 e!3747844)))

(declare-fun b!6150577 () Bool)

(declare-fun e!3747847 () Bool)

(assert (=> b!6150577 (= e!3747847 call!511519)))

(declare-fun b!6150578 () Bool)

(declare-fun e!3747846 () Bool)

(declare-fun e!3747849 () Bool)

(assert (=> b!6150578 (= e!3747846 e!3747849)))

(declare-fun c!1107000 () Bool)

(assert (=> b!6150578 (= c!1107000 (is-Star!16092 (ite c!1106680 (reg!16421 r!7292) (ite c!1106681 (regTwo!32697 r!7292) (regTwo!32696 r!7292)))))))

(declare-fun b!6150579 () Bool)

(assert (=> b!6150579 (= e!3747849 e!3747850)))

(declare-fun c!1107001 () Bool)

(assert (=> b!6150579 (= c!1107001 (is-Union!16092 (ite c!1106680 (reg!16421 r!7292) (ite c!1106681 (regTwo!32697 r!7292) (regTwo!32696 r!7292)))))))

(declare-fun bm!511515 () Bool)

(assert (=> bm!511515 (= call!511519 (validRegex!7828 (ite c!1107000 (reg!16421 (ite c!1106680 (reg!16421 r!7292) (ite c!1106681 (regTwo!32697 r!7292) (regTwo!32696 r!7292)))) (ite c!1107001 (regTwo!32697 (ite c!1106680 (reg!16421 r!7292) (ite c!1106681 (regTwo!32697 r!7292) (regTwo!32696 r!7292)))) (regTwo!32696 (ite c!1106680 (reg!16421 r!7292) (ite c!1106681 (regTwo!32697 r!7292) (regTwo!32696 r!7292))))))))))

(declare-fun b!6150580 () Bool)

(declare-fun res!2547736 () Bool)

(declare-fun e!3747845 () Bool)

(assert (=> b!6150580 (=> res!2547736 e!3747845)))

(assert (=> b!6150580 (= res!2547736 (not (is-Concat!24937 (ite c!1106680 (reg!16421 r!7292) (ite c!1106681 (regTwo!32697 r!7292) (regTwo!32696 r!7292))))))))

(assert (=> b!6150580 (= e!3747850 e!3747845)))

(declare-fun b!6150581 () Bool)

(assert (=> b!6150581 (= e!3747849 e!3747847)))

(declare-fun res!2547733 () Bool)

(assert (=> b!6150581 (= res!2547733 (not (nullable!6085 (reg!16421 (ite c!1106680 (reg!16421 r!7292) (ite c!1106681 (regTwo!32697 r!7292) (regTwo!32696 r!7292)))))))))

(assert (=> b!6150581 (=> (not res!2547733) (not e!3747847))))

(declare-fun d!1927122 () Bool)

(declare-fun res!2547737 () Bool)

(assert (=> d!1927122 (=> res!2547737 e!3747846)))

(assert (=> d!1927122 (= res!2547737 (is-ElementMatch!16092 (ite c!1106680 (reg!16421 r!7292) (ite c!1106681 (regTwo!32697 r!7292) (regTwo!32696 r!7292)))))))

(assert (=> d!1927122 (= (validRegex!7828 (ite c!1106680 (reg!16421 r!7292) (ite c!1106681 (regTwo!32697 r!7292) (regTwo!32696 r!7292)))) e!3747846)))

(declare-fun b!6150582 () Bool)

(declare-fun e!3747848 () Bool)

(assert (=> b!6150582 (= e!3747845 e!3747848)))

(declare-fun res!2547735 () Bool)

(assert (=> b!6150582 (=> (not res!2547735) (not e!3747848))))

(assert (=> b!6150582 (= res!2547735 call!511520)))

(declare-fun bm!511516 () Bool)

(assert (=> bm!511516 (= call!511520 (validRegex!7828 (ite c!1107001 (regOne!32697 (ite c!1106680 (reg!16421 r!7292) (ite c!1106681 (regTwo!32697 r!7292) (regTwo!32696 r!7292)))) (regOne!32696 (ite c!1106680 (reg!16421 r!7292) (ite c!1106681 (regTwo!32697 r!7292) (regTwo!32696 r!7292)))))))))

(declare-fun b!6150583 () Bool)

(assert (=> b!6150583 (= e!3747844 call!511521)))

(declare-fun b!6150584 () Bool)

(assert (=> b!6150584 (= e!3747848 call!511521)))

(assert (= (and d!1927122 (not res!2547737)) b!6150578))

(assert (= (and b!6150578 c!1107000) b!6150581))

(assert (= (and b!6150578 (not c!1107000)) b!6150579))

(assert (= (and b!6150581 res!2547733) b!6150577))

(assert (= (and b!6150579 c!1107001) b!6150576))

(assert (= (and b!6150579 (not c!1107001)) b!6150580))

(assert (= (and b!6150576 res!2547734) b!6150583))

(assert (= (and b!6150580 (not res!2547736)) b!6150582))

(assert (= (and b!6150582 res!2547735) b!6150584))

(assert (= (or b!6150583 b!6150584) bm!511514))

(assert (= (or b!6150576 b!6150582) bm!511516))

(assert (= (or b!6150577 bm!511514) bm!511515))

(declare-fun m!6990306 () Bool)

(assert (=> bm!511515 m!6990306))

(declare-fun m!6990308 () Bool)

(assert (=> b!6150581 m!6990308))

(declare-fun m!6990310 () Bool)

(assert (=> bm!511516 m!6990310))

(assert (=> bm!511324 d!1927122))

(declare-fun d!1927124 () Bool)

(assert (=> d!1927124 (= (isEmpty!36411 (exprs!5976 (h!70901 zl!343))) (is-Nil!64451 (exprs!5976 (h!70901 zl!343))))))

(assert (=> b!6149512 d!1927124))

(assert (=> d!1926772 d!1926898))

(declare-fun bm!511517 () Bool)

(declare-fun call!511523 () Bool)

(declare-fun c!1107002 () Bool)

(assert (=> bm!511517 (= call!511523 (nullable!6085 (ite c!1107002 (regOne!32697 (regOne!32697 (regOne!32696 r!7292))) (regOne!32696 (regOne!32697 (regOne!32696 r!7292))))))))

(declare-fun b!6150585 () Bool)

(declare-fun e!3747851 () Bool)

(declare-fun e!3747855 () Bool)

(assert (=> b!6150585 (= e!3747851 e!3747855)))

(declare-fun res!2547741 () Bool)

(assert (=> b!6150585 (=> res!2547741 e!3747855)))

(assert (=> b!6150585 (= res!2547741 (is-Star!16092 (regOne!32697 (regOne!32696 r!7292))))))

(declare-fun b!6150586 () Bool)

(declare-fun e!3747856 () Bool)

(declare-fun e!3747854 () Bool)

(assert (=> b!6150586 (= e!3747856 e!3747854)))

(declare-fun res!2547740 () Bool)

(assert (=> b!6150586 (= res!2547740 call!511523)))

(assert (=> b!6150586 (=> (not res!2547740) (not e!3747854))))

(declare-fun b!6150587 () Bool)

(declare-fun call!511522 () Bool)

(assert (=> b!6150587 (= e!3747854 call!511522)))

(declare-fun b!6150588 () Bool)

(declare-fun e!3747852 () Bool)

(assert (=> b!6150588 (= e!3747852 call!511522)))

(declare-fun b!6150589 () Bool)

(declare-fun e!3747853 () Bool)

(assert (=> b!6150589 (= e!3747853 e!3747851)))

(declare-fun res!2547738 () Bool)

(assert (=> b!6150589 (=> (not res!2547738) (not e!3747851))))

(assert (=> b!6150589 (= res!2547738 (and (not (is-EmptyLang!16092 (regOne!32697 (regOne!32696 r!7292)))) (not (is-ElementMatch!16092 (regOne!32697 (regOne!32696 r!7292))))))))

(declare-fun b!6150590 () Bool)

(assert (=> b!6150590 (= e!3747855 e!3747856)))

(assert (=> b!6150590 (= c!1107002 (is-Union!16092 (regOne!32697 (regOne!32696 r!7292))))))

(declare-fun d!1927126 () Bool)

(declare-fun res!2547739 () Bool)

(assert (=> d!1927126 (=> res!2547739 e!3747853)))

(assert (=> d!1927126 (= res!2547739 (is-EmptyExpr!16092 (regOne!32697 (regOne!32696 r!7292))))))

(assert (=> d!1927126 (= (nullableFct!2049 (regOne!32697 (regOne!32696 r!7292))) e!3747853)))

(declare-fun bm!511518 () Bool)

(assert (=> bm!511518 (= call!511522 (nullable!6085 (ite c!1107002 (regTwo!32697 (regOne!32697 (regOne!32696 r!7292))) (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))))))))

(declare-fun b!6150591 () Bool)

(assert (=> b!6150591 (= e!3747856 e!3747852)))

(declare-fun res!2547742 () Bool)

(assert (=> b!6150591 (= res!2547742 call!511523)))

(assert (=> b!6150591 (=> res!2547742 e!3747852)))

(assert (= (and d!1927126 (not res!2547739)) b!6150589))

(assert (= (and b!6150589 res!2547738) b!6150585))

(assert (= (and b!6150585 (not res!2547741)) b!6150590))

(assert (= (and b!6150590 c!1107002) b!6150591))

(assert (= (and b!6150590 (not c!1107002)) b!6150586))

(assert (= (and b!6150591 (not res!2547742)) b!6150588))

(assert (= (and b!6150586 res!2547740) b!6150587))

(assert (= (or b!6150588 b!6150587) bm!511518))

(assert (= (or b!6150591 b!6150586) bm!511517))

(declare-fun m!6990312 () Bool)

(assert (=> bm!511517 m!6990312))

(declare-fun m!6990314 () Bool)

(assert (=> bm!511518 m!6990314))

(assert (=> d!1926752 d!1927126))

(declare-fun bm!511519 () Bool)

(declare-fun call!511526 () Bool)

(declare-fun call!511524 () Bool)

(assert (=> bm!511519 (= call!511526 call!511524)))

(declare-fun b!6150592 () Bool)

(declare-fun res!2547744 () Bool)

(declare-fun e!3747857 () Bool)

(assert (=> b!6150592 (=> (not res!2547744) (not e!3747857))))

(declare-fun call!511525 () Bool)

(assert (=> b!6150592 (= res!2547744 call!511525)))

(declare-fun e!3747863 () Bool)

(assert (=> b!6150592 (= e!3747863 e!3747857)))

(declare-fun b!6150593 () Bool)

(declare-fun e!3747860 () Bool)

(assert (=> b!6150593 (= e!3747860 call!511524)))

(declare-fun b!6150594 () Bool)

(declare-fun e!3747859 () Bool)

(declare-fun e!3747862 () Bool)

(assert (=> b!6150594 (= e!3747859 e!3747862)))

(declare-fun c!1107003 () Bool)

(assert (=> b!6150594 (= c!1107003 (is-Star!16092 lt!2334264))))

(declare-fun b!6150595 () Bool)

(assert (=> b!6150595 (= e!3747862 e!3747863)))

(declare-fun c!1107004 () Bool)

(assert (=> b!6150595 (= c!1107004 (is-Union!16092 lt!2334264))))

(declare-fun bm!511520 () Bool)

(assert (=> bm!511520 (= call!511524 (validRegex!7828 (ite c!1107003 (reg!16421 lt!2334264) (ite c!1107004 (regTwo!32697 lt!2334264) (regTwo!32696 lt!2334264)))))))

(declare-fun b!6150596 () Bool)

(declare-fun res!2547746 () Bool)

(declare-fun e!3747858 () Bool)

(assert (=> b!6150596 (=> res!2547746 e!3747858)))

(assert (=> b!6150596 (= res!2547746 (not (is-Concat!24937 lt!2334264)))))

(assert (=> b!6150596 (= e!3747863 e!3747858)))

(declare-fun b!6150597 () Bool)

(assert (=> b!6150597 (= e!3747862 e!3747860)))

(declare-fun res!2547743 () Bool)

(assert (=> b!6150597 (= res!2547743 (not (nullable!6085 (reg!16421 lt!2334264))))))

(assert (=> b!6150597 (=> (not res!2547743) (not e!3747860))))

(declare-fun d!1927128 () Bool)

(declare-fun res!2547747 () Bool)

(assert (=> d!1927128 (=> res!2547747 e!3747859)))

(assert (=> d!1927128 (= res!2547747 (is-ElementMatch!16092 lt!2334264))))

(assert (=> d!1927128 (= (validRegex!7828 lt!2334264) e!3747859)))

(declare-fun b!6150598 () Bool)

(declare-fun e!3747861 () Bool)

(assert (=> b!6150598 (= e!3747858 e!3747861)))

(declare-fun res!2547745 () Bool)

(assert (=> b!6150598 (=> (not res!2547745) (not e!3747861))))

(assert (=> b!6150598 (= res!2547745 call!511525)))

(declare-fun bm!511521 () Bool)

(assert (=> bm!511521 (= call!511525 (validRegex!7828 (ite c!1107004 (regOne!32697 lt!2334264) (regOne!32696 lt!2334264))))))

(declare-fun b!6150599 () Bool)

(assert (=> b!6150599 (= e!3747857 call!511526)))

(declare-fun b!6150600 () Bool)

(assert (=> b!6150600 (= e!3747861 call!511526)))

(assert (= (and d!1927128 (not res!2547747)) b!6150594))

(assert (= (and b!6150594 c!1107003) b!6150597))

(assert (= (and b!6150594 (not c!1107003)) b!6150595))

(assert (= (and b!6150597 res!2547743) b!6150593))

(assert (= (and b!6150595 c!1107004) b!6150592))

(assert (= (and b!6150595 (not c!1107004)) b!6150596))

(assert (= (and b!6150592 res!2547744) b!6150599))

(assert (= (and b!6150596 (not res!2547746)) b!6150598))

(assert (= (and b!6150598 res!2547745) b!6150600))

(assert (= (or b!6150599 b!6150600) bm!511519))

(assert (= (or b!6150592 b!6150598) bm!511521))

(assert (= (or b!6150593 bm!511519) bm!511520))

(declare-fun m!6990316 () Bool)

(assert (=> bm!511520 m!6990316))

(declare-fun m!6990318 () Bool)

(assert (=> b!6150597 m!6990318))

(declare-fun m!6990320 () Bool)

(assert (=> bm!511521 m!6990320))

(assert (=> d!1926732 d!1927128))

(assert (=> d!1926732 d!1926780))

(assert (=> d!1926732 d!1926782))

(assert (=> bs!1524526 d!1926748))

(declare-fun d!1927130 () Bool)

(assert (=> d!1927130 (= (nullable!6085 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343))))) (nullableFct!2049 (regOne!32696 (h!70899 (exprs!5976 (h!70901 zl!343))))))))

(declare-fun bs!1524718 () Bool)

(assert (= bs!1524718 d!1927130))

(declare-fun m!6990322 () Bool)

(assert (=> bs!1524718 m!6990322))

(assert (=> b!6149406 d!1927130))

(assert (=> b!6149556 d!1926956))

(declare-fun bs!1524719 () Bool)

(declare-fun d!1927132 () Bool)

(assert (= bs!1524719 (and d!1927132 d!1926980)))

(declare-fun lambda!335429 () Int)

(assert (=> bs!1524719 (= lambda!335429 lambda!335406)))

(declare-fun bs!1524720 () Bool)

(assert (= bs!1524720 (and d!1927132 d!1926972)))

(assert (=> bs!1524720 (= lambda!335429 lambda!335405)))

(declare-fun bs!1524721 () Bool)

(assert (= bs!1524721 (and d!1927132 d!1926936)))

(assert (=> bs!1524721 (= lambda!335429 lambda!335403)))

(declare-fun bs!1524722 () Bool)

(assert (= bs!1524722 (and d!1927132 d!1927106)))

(assert (=> bs!1524722 (= lambda!335429 lambda!335421)))

(declare-fun bs!1524723 () Bool)

(assert (= bs!1524723 (and d!1927132 d!1927068)))

(assert (=> bs!1524723 (= lambda!335429 lambda!335418)))

(declare-fun bs!1524724 () Bool)

(assert (= bs!1524724 (and d!1927132 d!1926988)))

(assert (=> bs!1524724 (= lambda!335429 lambda!335409)))

(assert (=> d!1927132 (= (nullableZipper!1873 lt!2334151) (exists!2438 lt!2334151 lambda!335429))))

(declare-fun bs!1524725 () Bool)

(assert (= bs!1524725 d!1927132))

(declare-fun m!6990324 () Bool)

(assert (=> bs!1524725 m!6990324))

(assert (=> b!6149426 d!1927132))

(declare-fun d!1927134 () Bool)

(declare-fun e!3747864 () Bool)

(assert (=> d!1927134 e!3747864))

(declare-fun res!2547748 () Bool)

(assert (=> d!1927134 (=> (not res!2547748) (not e!3747864))))

(declare-fun lt!2334366 () List!64576)

(assert (=> d!1927134 (= res!2547748 (= (content!12009 lt!2334366) (set.union (content!12009 (_1!36374 (get!22240 lt!2334277))) (content!12009 (_2!36374 (get!22240 lt!2334277))))))))

(declare-fun e!3747865 () List!64576)

(assert (=> d!1927134 (= lt!2334366 e!3747865)))

(declare-fun c!1107005 () Bool)

(assert (=> d!1927134 (= c!1107005 (is-Nil!64452 (_1!36374 (get!22240 lt!2334277))))))

(assert (=> d!1927134 (= (++!14178 (_1!36374 (get!22240 lt!2334277)) (_2!36374 (get!22240 lt!2334277))) lt!2334366)))

(declare-fun b!6150602 () Bool)

(assert (=> b!6150602 (= e!3747865 (Cons!64452 (h!70900 (_1!36374 (get!22240 lt!2334277))) (++!14178 (t!378063 (_1!36374 (get!22240 lt!2334277))) (_2!36374 (get!22240 lt!2334277)))))))

(declare-fun b!6150601 () Bool)

(assert (=> b!6150601 (= e!3747865 (_2!36374 (get!22240 lt!2334277)))))

(declare-fun b!6150604 () Bool)

(assert (=> b!6150604 (= e!3747864 (or (not (= (_2!36374 (get!22240 lt!2334277)) Nil!64452)) (= lt!2334366 (_1!36374 (get!22240 lt!2334277)))))))

(declare-fun b!6150603 () Bool)

(declare-fun res!2547749 () Bool)

(assert (=> b!6150603 (=> (not res!2547749) (not e!3747864))))

(assert (=> b!6150603 (= res!2547749 (= (size!40234 lt!2334366) (+ (size!40234 (_1!36374 (get!22240 lt!2334277))) (size!40234 (_2!36374 (get!22240 lt!2334277))))))))

(assert (= (and d!1927134 c!1107005) b!6150601))

(assert (= (and d!1927134 (not c!1107005)) b!6150602))

(assert (= (and d!1927134 res!2547748) b!6150603))

(assert (= (and b!6150603 res!2547749) b!6150604))

(declare-fun m!6990326 () Bool)

(assert (=> d!1927134 m!6990326))

(declare-fun m!6990328 () Bool)

(assert (=> d!1927134 m!6990328))

(declare-fun m!6990330 () Bool)

(assert (=> d!1927134 m!6990330))

(declare-fun m!6990332 () Bool)

(assert (=> b!6150602 m!6990332))

(declare-fun m!6990334 () Bool)

(assert (=> b!6150603 m!6990334))

(declare-fun m!6990336 () Bool)

(assert (=> b!6150603 m!6990336))

(declare-fun m!6990338 () Bool)

(assert (=> b!6150603 m!6990338))

(assert (=> b!6149552 d!1927134))

(assert (=> b!6149552 d!1926932))

(assert (=> d!1926754 d!1926746))

(declare-fun d!1927136 () Bool)

(assert (=> d!1927136 (= (flatMap!1597 lt!2334147 lambda!335322) (dynLambda!25405 lambda!335322 lt!2334159))))

(assert (=> d!1927136 true))

(declare-fun _$13!3064 () Unit!157531)

(assert (=> d!1927136 (= (choose!45704 lt!2334147 lt!2334159 lambda!335322) _$13!3064)))

(declare-fun b_lambda!234089 () Bool)

(assert (=> (not b_lambda!234089) (not d!1927136)))

(declare-fun bs!1524726 () Bool)

(assert (= bs!1524726 d!1927136))

(assert (=> bs!1524726 m!6989158))

(assert (=> bs!1524726 m!6989436))

(assert (=> d!1926754 d!1927136))

(assert (=> b!6149646 d!1926992))

(assert (=> b!6149646 d!1926994))

(declare-fun d!1927138 () Bool)

(assert (=> d!1927138 (= (head!12706 (unfocusZipperList!1513 zl!343)) (h!70899 (unfocusZipperList!1513 zl!343)))))

(assert (=> b!6149682 d!1927138))

(assert (=> d!1926770 d!1926772))

(assert (=> d!1926770 d!1926712))

(declare-fun d!1927140 () Bool)

(declare-fun e!3747866 () Bool)

(assert (=> d!1927140 (= (matchZipper!2104 (set.union lt!2334151 lt!2334149) (t!378063 s!2326)) e!3747866)))

(declare-fun res!2547750 () Bool)

(assert (=> d!1927140 (=> res!2547750 e!3747866)))

(assert (=> d!1927140 (= res!2547750 (matchZipper!2104 lt!2334151 (t!378063 s!2326)))))

(assert (=> d!1927140 true))

(declare-fun _$48!1686 () Unit!157531)

(assert (=> d!1927140 (= (choose!45706 lt!2334151 lt!2334149 (t!378063 s!2326)) _$48!1686)))

(declare-fun b!6150605 () Bool)

(assert (=> b!6150605 (= e!3747866 (matchZipper!2104 lt!2334149 (t!378063 s!2326)))))

(assert (= (and d!1927140 (not res!2547750)) b!6150605))

(assert (=> d!1927140 m!6989114))

(assert (=> d!1927140 m!6989112))

(assert (=> b!6150605 m!6989102))

(assert (=> d!1926770 d!1927140))

(declare-fun d!1927142 () Bool)

(assert (=> d!1927142 (= ($colon$colon!1969 (exprs!5976 lt!2334170) (ite (or c!1106690 c!1106691) (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (regOne!32697 (regOne!32696 r!7292)))) (Cons!64451 (ite (or c!1106690 c!1106691) (regTwo!32696 (regOne!32697 (regOne!32696 r!7292))) (regOne!32697 (regOne!32696 r!7292))) (exprs!5976 lt!2334170)))))

(assert (=> bm!511335 d!1927142))

(assert (=> bm!511348 d!1926900))

(declare-fun bs!1524727 () Bool)

(declare-fun b!6150611 () Bool)

(assert (= bs!1524727 (and b!6150611 b!6149232)))

(declare-fun lambda!335430 () Int)

(assert (=> bs!1524727 (not (= lambda!335430 lambda!335321))))

(declare-fun bs!1524728 () Bool)

(assert (= bs!1524728 (and b!6150611 d!1926764)))

(assert (=> bs!1524728 (not (= lambda!335430 lambda!335352))))

(declare-fun bs!1524729 () Bool)

(assert (= bs!1524729 (and b!6150611 b!6149607)))

(assert (=> bs!1524729 (not (= lambda!335430 lambda!335360))))

(declare-fun bs!1524730 () Bool)

(assert (= bs!1524730 (and b!6150611 d!1927112)))

(assert (=> bs!1524730 (not (= lambda!335430 lambda!335427))))

(assert (=> bs!1524727 (not (= lambda!335430 lambda!335320))))

(declare-fun bs!1524731 () Bool)

(assert (= bs!1524731 (and b!6150611 b!6150374)))

(assert (=> bs!1524731 (not (= lambda!335430 lambda!335415))))

(declare-fun bs!1524732 () Bool)

(assert (= bs!1524732 (and b!6150611 b!6149610)))

(assert (=> bs!1524732 (= (and (= (reg!16421 (regTwo!32697 r!7292)) (reg!16421 r!7292)) (= (regTwo!32697 r!7292) r!7292)) (= lambda!335430 lambda!335359))))

(declare-fun bs!1524733 () Bool)

(assert (= bs!1524733 (and b!6150611 d!1927016)))

(assert (=> bs!1524733 (not (= lambda!335430 lambda!335413))))

(declare-fun bs!1524734 () Bool)

(assert (= bs!1524734 (and b!6150611 d!1926762)))

(assert (=> bs!1524734 (not (= lambda!335430 lambda!335347))))

(assert (=> bs!1524730 (not (= lambda!335430 lambda!335426))))

(assert (=> bs!1524728 (not (= lambda!335430 lambda!335353))))

(declare-fun bs!1524735 () Bool)

(assert (= bs!1524735 (and b!6150611 b!6150377)))

(assert (=> bs!1524735 (= (and (= (reg!16421 (regTwo!32697 r!7292)) (reg!16421 (regOne!32697 r!7292))) (= (regTwo!32697 r!7292) (regOne!32697 r!7292))) (= lambda!335430 lambda!335414))))

(assert (=> b!6150611 true))

(assert (=> b!6150611 true))

(declare-fun bs!1524736 () Bool)

(declare-fun b!6150608 () Bool)

(assert (= bs!1524736 (and b!6150608 b!6149232)))

(declare-fun lambda!335431 () Int)

(assert (=> bs!1524736 (= (and (= (regOne!32696 (regTwo!32697 r!7292)) (regOne!32696 r!7292)) (= (regTwo!32696 (regTwo!32697 r!7292)) (regTwo!32696 r!7292))) (= lambda!335431 lambda!335321))))

(declare-fun bs!1524737 () Bool)

(assert (= bs!1524737 (and b!6150608 d!1926764)))

(assert (=> bs!1524737 (not (= lambda!335431 lambda!335352))))

(declare-fun bs!1524738 () Bool)

(assert (= bs!1524738 (and b!6150608 b!6149607)))

(assert (=> bs!1524738 (= (and (= (regOne!32696 (regTwo!32697 r!7292)) (regOne!32696 r!7292)) (= (regTwo!32696 (regTwo!32697 r!7292)) (regTwo!32696 r!7292))) (= lambda!335431 lambda!335360))))

(declare-fun bs!1524739 () Bool)

(assert (= bs!1524739 (and b!6150608 d!1927112)))

(assert (=> bs!1524739 (= (and (= (regOne!32696 (regTwo!32697 r!7292)) (regOne!32696 r!7292)) (= (regTwo!32696 (regTwo!32697 r!7292)) (regTwo!32696 r!7292))) (= lambda!335431 lambda!335427))))

(assert (=> bs!1524736 (not (= lambda!335431 lambda!335320))))

(declare-fun bs!1524740 () Bool)

(assert (= bs!1524740 (and b!6150608 b!6150374)))

(assert (=> bs!1524740 (= (and (= (regOne!32696 (regTwo!32697 r!7292)) (regOne!32696 (regOne!32697 r!7292))) (= (regTwo!32696 (regTwo!32697 r!7292)) (regTwo!32696 (regOne!32697 r!7292)))) (= lambda!335431 lambda!335415))))

(declare-fun bs!1524741 () Bool)

(assert (= bs!1524741 (and b!6150608 b!6149610)))

(assert (=> bs!1524741 (not (= lambda!335431 lambda!335359))))

(declare-fun bs!1524742 () Bool)

(assert (= bs!1524742 (and b!6150608 d!1927016)))

(assert (=> bs!1524742 (not (= lambda!335431 lambda!335413))))

(declare-fun bs!1524743 () Bool)

(assert (= bs!1524743 (and b!6150608 b!6150611)))

(assert (=> bs!1524743 (not (= lambda!335431 lambda!335430))))

(declare-fun bs!1524744 () Bool)

(assert (= bs!1524744 (and b!6150608 d!1926762)))

(assert (=> bs!1524744 (not (= lambda!335431 lambda!335347))))

(assert (=> bs!1524739 (not (= lambda!335431 lambda!335426))))

(assert (=> bs!1524737 (= (and (= (regOne!32696 (regTwo!32697 r!7292)) (regOne!32696 r!7292)) (= (regTwo!32696 (regTwo!32697 r!7292)) (regTwo!32696 r!7292))) (= lambda!335431 lambda!335353))))

(declare-fun bs!1524745 () Bool)

(assert (= bs!1524745 (and b!6150608 b!6150377)))

(assert (=> bs!1524745 (not (= lambda!335431 lambda!335414))))

(assert (=> b!6150608 true))

(assert (=> b!6150608 true))

(declare-fun b!6150606 () Bool)

(declare-fun e!3747873 () Bool)

(declare-fun e!3747871 () Bool)

(assert (=> b!6150606 (= e!3747873 e!3747871)))

(declare-fun res!2547753 () Bool)

(assert (=> b!6150606 (= res!2547753 (not (is-EmptyLang!16092 (regTwo!32697 r!7292))))))

(assert (=> b!6150606 (=> (not res!2547753) (not e!3747871))))

(declare-fun b!6150607 () Bool)

(declare-fun c!1107006 () Bool)

(assert (=> b!6150607 (= c!1107006 (is-ElementMatch!16092 (regTwo!32697 r!7292)))))

(declare-fun e!3747872 () Bool)

(assert (=> b!6150607 (= e!3747871 e!3747872)))

(declare-fun e!3747867 () Bool)

(declare-fun call!511528 () Bool)

(assert (=> b!6150608 (= e!3747867 call!511528)))

(declare-fun b!6150609 () Bool)

(assert (=> b!6150609 (= e!3747872 (= s!2326 (Cons!64452 (c!1106631 (regTwo!32697 r!7292)) Nil!64452)))))

(declare-fun d!1927144 () Bool)

(declare-fun c!1107008 () Bool)

(assert (=> d!1927144 (= c!1107008 (is-EmptyExpr!16092 (regTwo!32697 r!7292)))))

(assert (=> d!1927144 (= (matchRSpec!3193 (regTwo!32697 r!7292) s!2326) e!3747873)))

(declare-fun b!6150610 () Bool)

(declare-fun e!3747869 () Bool)

(declare-fun e!3747868 () Bool)

(assert (=> b!6150610 (= e!3747869 e!3747868)))

(declare-fun res!2547751 () Bool)

(assert (=> b!6150610 (= res!2547751 (matchRSpec!3193 (regOne!32697 (regTwo!32697 r!7292)) s!2326))))

(assert (=> b!6150610 (=> res!2547751 e!3747868)))

(declare-fun e!3747870 () Bool)

(assert (=> b!6150611 (= e!3747870 call!511528)))

(declare-fun b!6150612 () Bool)

(assert (=> b!6150612 (= e!3747868 (matchRSpec!3193 (regTwo!32697 (regTwo!32697 r!7292)) s!2326))))

(declare-fun b!6150613 () Bool)

(declare-fun res!2547752 () Bool)

(assert (=> b!6150613 (=> res!2547752 e!3747870)))

(declare-fun call!511527 () Bool)

(assert (=> b!6150613 (= res!2547752 call!511527)))

(assert (=> b!6150613 (= e!3747867 e!3747870)))

(declare-fun b!6150614 () Bool)

(assert (=> b!6150614 (= e!3747873 call!511527)))

(declare-fun b!6150615 () Bool)

(assert (=> b!6150615 (= e!3747869 e!3747867)))

(declare-fun c!1107009 () Bool)

(assert (=> b!6150615 (= c!1107009 (is-Star!16092 (regTwo!32697 r!7292)))))

(declare-fun bm!511522 () Bool)

(assert (=> bm!511522 (= call!511528 (Exists!3162 (ite c!1107009 lambda!335430 lambda!335431)))))

(declare-fun bm!511523 () Bool)

(assert (=> bm!511523 (= call!511527 (isEmpty!36414 s!2326))))

(declare-fun b!6150616 () Bool)

(declare-fun c!1107007 () Bool)

(assert (=> b!6150616 (= c!1107007 (is-Union!16092 (regTwo!32697 r!7292)))))

(assert (=> b!6150616 (= e!3747872 e!3747869)))

(assert (= (and d!1927144 c!1107008) b!6150614))

(assert (= (and d!1927144 (not c!1107008)) b!6150606))

(assert (= (and b!6150606 res!2547753) b!6150607))

(assert (= (and b!6150607 c!1107006) b!6150609))

(assert (= (and b!6150607 (not c!1107006)) b!6150616))

(assert (= (and b!6150616 c!1107007) b!6150610))

(assert (= (and b!6150616 (not c!1107007)) b!6150615))

(assert (= (and b!6150610 (not res!2547751)) b!6150612))

(assert (= (and b!6150615 c!1107009) b!6150613))

(assert (= (and b!6150615 (not c!1107009)) b!6150608))

(assert (= (and b!6150613 (not res!2547752)) b!6150611))

(assert (= (or b!6150611 b!6150608) bm!511522))

(assert (= (or b!6150614 b!6150613) bm!511523))

(declare-fun m!6990340 () Bool)

(assert (=> b!6150610 m!6990340))

(declare-fun m!6990342 () Bool)

(assert (=> b!6150612 m!6990342))

(declare-fun m!6990344 () Bool)

(assert (=> bm!511522 m!6990344))

(assert (=> bm!511523 m!6989496))

(assert (=> b!6149611 d!1927144))

(declare-fun d!1927146 () Bool)

(declare-fun c!1107012 () Bool)

(assert (=> d!1927146 (= c!1107012 (is-Nil!64453 lt!2334267))))

(declare-fun e!3747876 () (Set Context!10952))

(assert (=> d!1927146 (= (content!12007 lt!2334267) e!3747876)))

(declare-fun b!6150621 () Bool)

(assert (=> b!6150621 (= e!3747876 (as set.empty (Set Context!10952)))))

(declare-fun b!6150622 () Bool)

(assert (=> b!6150622 (= e!3747876 (set.union (set.insert (h!70901 lt!2334267) (as set.empty (Set Context!10952))) (content!12007 (t!378064 lt!2334267))))))

(assert (= (and d!1927146 c!1107012) b!6150621))

(assert (= (and d!1927146 (not c!1107012)) b!6150622))

(declare-fun m!6990346 () Bool)

(assert (=> b!6150622 m!6990346))

(declare-fun m!6990348 () Bool)

(assert (=> b!6150622 m!6990348))

(assert (=> b!6149520 d!1927146))

(declare-fun b!6150624 () Bool)

(declare-fun e!3747877 () Bool)

(declare-fun tp!1717872 () Bool)

(declare-fun tp!1717874 () Bool)

(assert (=> b!6150624 (= e!3747877 (and tp!1717872 tp!1717874))))

(declare-fun b!6150625 () Bool)

(declare-fun tp!1717875 () Bool)

(assert (=> b!6150625 (= e!3747877 tp!1717875)))

(declare-fun b!6150623 () Bool)

(assert (=> b!6150623 (= e!3747877 tp_is_empty!41437)))

(declare-fun b!6150626 () Bool)

(declare-fun tp!1717873 () Bool)

(declare-fun tp!1717871 () Bool)

(assert (=> b!6150626 (= e!3747877 (and tp!1717873 tp!1717871))))

(assert (=> b!6149720 (= tp!1717764 e!3747877)))

(assert (= (and b!6149720 (is-ElementMatch!16092 (h!70899 (exprs!5976 (h!70901 zl!343))))) b!6150623))

(assert (= (and b!6149720 (is-Concat!24937 (h!70899 (exprs!5976 (h!70901 zl!343))))) b!6150624))

(assert (= (and b!6149720 (is-Star!16092 (h!70899 (exprs!5976 (h!70901 zl!343))))) b!6150625))

(assert (= (and b!6149720 (is-Union!16092 (h!70899 (exprs!5976 (h!70901 zl!343))))) b!6150626))

(declare-fun b!6150627 () Bool)

(declare-fun e!3747878 () Bool)

(declare-fun tp!1717876 () Bool)

(declare-fun tp!1717877 () Bool)

(assert (=> b!6150627 (= e!3747878 (and tp!1717876 tp!1717877))))

(assert (=> b!6149720 (= tp!1717765 e!3747878)))

(assert (= (and b!6149720 (is-Cons!64451 (t!378062 (exprs!5976 (h!70901 zl!343))))) b!6150627))

(declare-fun b!6150629 () Bool)

(declare-fun e!3747880 () Bool)

(declare-fun tp!1717878 () Bool)

(assert (=> b!6150629 (= e!3747880 tp!1717878)))

(declare-fun tp!1717879 () Bool)

(declare-fun e!3747879 () Bool)

(declare-fun b!6150628 () Bool)

(assert (=> b!6150628 (= e!3747879 (and (inv!83478 (h!70901 (t!378064 (t!378064 zl!343)))) e!3747880 tp!1717879))))

(assert (=> b!6149735 (= tp!1717781 e!3747879)))

(assert (= b!6150628 b!6150629))

(assert (= (and b!6149735 (is-Cons!64453 (t!378064 (t!378064 zl!343)))) b!6150628))

(declare-fun m!6990350 () Bool)

(assert (=> b!6150628 m!6990350))

(declare-fun b!6150631 () Bool)

(declare-fun e!3747881 () Bool)

(declare-fun tp!1717881 () Bool)

(declare-fun tp!1717883 () Bool)

(assert (=> b!6150631 (= e!3747881 (and tp!1717881 tp!1717883))))

(declare-fun b!6150632 () Bool)

(declare-fun tp!1717884 () Bool)

(assert (=> b!6150632 (= e!3747881 tp!1717884)))

(declare-fun b!6150630 () Bool)

(assert (=> b!6150630 (= e!3747881 tp_is_empty!41437)))

(declare-fun b!6150633 () Bool)

(declare-fun tp!1717882 () Bool)

(declare-fun tp!1717880 () Bool)

(assert (=> b!6150633 (= e!3747881 (and tp!1717882 tp!1717880))))

(assert (=> b!6149714 (= tp!1717759 e!3747881)))

(assert (= (and b!6149714 (is-ElementMatch!16092 (reg!16421 (reg!16421 r!7292)))) b!6150630))

(assert (= (and b!6149714 (is-Concat!24937 (reg!16421 (reg!16421 r!7292)))) b!6150631))

(assert (= (and b!6149714 (is-Star!16092 (reg!16421 (reg!16421 r!7292)))) b!6150632))

(assert (= (and b!6149714 (is-Union!16092 (reg!16421 (reg!16421 r!7292)))) b!6150633))

(declare-fun b!6150634 () Bool)

(declare-fun e!3747882 () Bool)

(declare-fun tp!1717885 () Bool)

(declare-fun tp!1717886 () Bool)

(assert (=> b!6150634 (= e!3747882 (and tp!1717885 tp!1717886))))

(assert (=> b!6149736 (= tp!1717780 e!3747882)))

(assert (= (and b!6149736 (is-Cons!64451 (exprs!5976 (h!70901 (t!378064 zl!343))))) b!6150634))

(declare-fun b!6150636 () Bool)

(declare-fun e!3747883 () Bool)

(declare-fun tp!1717888 () Bool)

(declare-fun tp!1717890 () Bool)

(assert (=> b!6150636 (= e!3747883 (and tp!1717888 tp!1717890))))

(declare-fun b!6150637 () Bool)

(declare-fun tp!1717891 () Bool)

(assert (=> b!6150637 (= e!3747883 tp!1717891)))

(declare-fun b!6150635 () Bool)

(assert (=> b!6150635 (= e!3747883 tp_is_empty!41437)))

(declare-fun b!6150638 () Bool)

(declare-fun tp!1717889 () Bool)

(declare-fun tp!1717887 () Bool)

(assert (=> b!6150638 (= e!3747883 (and tp!1717889 tp!1717887))))

(assert (=> b!6149713 (= tp!1717756 e!3747883)))

(assert (= (and b!6149713 (is-ElementMatch!16092 (regOne!32696 (reg!16421 r!7292)))) b!6150635))

(assert (= (and b!6149713 (is-Concat!24937 (regOne!32696 (reg!16421 r!7292)))) b!6150636))

(assert (= (and b!6149713 (is-Star!16092 (regOne!32696 (reg!16421 r!7292)))) b!6150637))

(assert (= (and b!6149713 (is-Union!16092 (regOne!32696 (reg!16421 r!7292)))) b!6150638))

(declare-fun b!6150640 () Bool)

(declare-fun e!3747884 () Bool)

(declare-fun tp!1717893 () Bool)

(declare-fun tp!1717895 () Bool)

(assert (=> b!6150640 (= e!3747884 (and tp!1717893 tp!1717895))))

(declare-fun b!6150641 () Bool)

(declare-fun tp!1717896 () Bool)

(assert (=> b!6150641 (= e!3747884 tp!1717896)))

(declare-fun b!6150639 () Bool)

(assert (=> b!6150639 (= e!3747884 tp_is_empty!41437)))

(declare-fun b!6150642 () Bool)

(declare-fun tp!1717894 () Bool)

(declare-fun tp!1717892 () Bool)

(assert (=> b!6150642 (= e!3747884 (and tp!1717894 tp!1717892))))

(assert (=> b!6149713 (= tp!1717758 e!3747884)))

(assert (= (and b!6149713 (is-ElementMatch!16092 (regTwo!32696 (reg!16421 r!7292)))) b!6150639))

(assert (= (and b!6149713 (is-Concat!24937 (regTwo!32696 (reg!16421 r!7292)))) b!6150640))

(assert (= (and b!6149713 (is-Star!16092 (regTwo!32696 (reg!16421 r!7292)))) b!6150641))

(assert (= (and b!6149713 (is-Union!16092 (regTwo!32696 (reg!16421 r!7292)))) b!6150642))

(declare-fun b!6150644 () Bool)

(declare-fun e!3747885 () Bool)

(declare-fun tp!1717898 () Bool)

(declare-fun tp!1717900 () Bool)

(assert (=> b!6150644 (= e!3747885 (and tp!1717898 tp!1717900))))

(declare-fun b!6150645 () Bool)

(declare-fun tp!1717901 () Bool)

(assert (=> b!6150645 (= e!3747885 tp!1717901)))

(declare-fun b!6150643 () Bool)

(assert (=> b!6150643 (= e!3747885 tp_is_empty!41437)))

(declare-fun b!6150646 () Bool)

(declare-fun tp!1717899 () Bool)

(declare-fun tp!1717897 () Bool)

(assert (=> b!6150646 (= e!3747885 (and tp!1717899 tp!1717897))))

(assert (=> b!6149727 (= tp!1717775 e!3747885)))

(assert (= (and b!6149727 (is-ElementMatch!16092 (reg!16421 (regTwo!32697 r!7292)))) b!6150643))

(assert (= (and b!6149727 (is-Concat!24937 (reg!16421 (regTwo!32697 r!7292)))) b!6150644))

(assert (= (and b!6149727 (is-Star!16092 (reg!16421 (regTwo!32697 r!7292)))) b!6150645))

(assert (= (and b!6149727 (is-Union!16092 (reg!16421 (regTwo!32697 r!7292)))) b!6150646))

(declare-fun b!6150648 () Bool)

(declare-fun e!3747886 () Bool)

(declare-fun tp!1717903 () Bool)

(declare-fun tp!1717905 () Bool)

(assert (=> b!6150648 (= e!3747886 (and tp!1717903 tp!1717905))))

(declare-fun b!6150649 () Bool)

(declare-fun tp!1717906 () Bool)

(assert (=> b!6150649 (= e!3747886 tp!1717906)))

(declare-fun b!6150647 () Bool)

(assert (=> b!6150647 (= e!3747886 tp_is_empty!41437)))

(declare-fun b!6150650 () Bool)

(declare-fun tp!1717904 () Bool)

(declare-fun tp!1717902 () Bool)

(assert (=> b!6150650 (= e!3747886 (and tp!1717904 tp!1717902))))

(assert (=> b!6149750 (= tp!1717795 e!3747886)))

(assert (= (and b!6149750 (is-ElementMatch!16092 (h!70899 (exprs!5976 setElem!41625)))) b!6150647))

(assert (= (and b!6149750 (is-Concat!24937 (h!70899 (exprs!5976 setElem!41625)))) b!6150648))

(assert (= (and b!6149750 (is-Star!16092 (h!70899 (exprs!5976 setElem!41625)))) b!6150649))

(assert (= (and b!6149750 (is-Union!16092 (h!70899 (exprs!5976 setElem!41625)))) b!6150650))

(declare-fun b!6150651 () Bool)

(declare-fun e!3747887 () Bool)

(declare-fun tp!1717907 () Bool)

(declare-fun tp!1717908 () Bool)

(assert (=> b!6150651 (= e!3747887 (and tp!1717907 tp!1717908))))

(assert (=> b!6149750 (= tp!1717796 e!3747887)))

(assert (= (and b!6149750 (is-Cons!64451 (t!378062 (exprs!5976 setElem!41625)))) b!6150651))

(declare-fun b!6150653 () Bool)

(declare-fun e!3747888 () Bool)

(declare-fun tp!1717910 () Bool)

(declare-fun tp!1717912 () Bool)

(assert (=> b!6150653 (= e!3747888 (and tp!1717910 tp!1717912))))

(declare-fun b!6150654 () Bool)

(declare-fun tp!1717913 () Bool)

(assert (=> b!6150654 (= e!3747888 tp!1717913)))

(declare-fun b!6150652 () Bool)

(assert (=> b!6150652 (= e!3747888 tp_is_empty!41437)))

(declare-fun b!6150655 () Bool)

(declare-fun tp!1717911 () Bool)

(declare-fun tp!1717909 () Bool)

(assert (=> b!6150655 (= e!3747888 (and tp!1717911 tp!1717909))))

(assert (=> b!6149728 (= tp!1717773 e!3747888)))

(assert (= (and b!6149728 (is-ElementMatch!16092 (regOne!32697 (regTwo!32697 r!7292)))) b!6150652))

(assert (= (and b!6149728 (is-Concat!24937 (regOne!32697 (regTwo!32697 r!7292)))) b!6150653))

(assert (= (and b!6149728 (is-Star!16092 (regOne!32697 (regTwo!32697 r!7292)))) b!6150654))

(assert (= (and b!6149728 (is-Union!16092 (regOne!32697 (regTwo!32697 r!7292)))) b!6150655))

(declare-fun b!6150657 () Bool)

(declare-fun e!3747889 () Bool)

(declare-fun tp!1717915 () Bool)

(declare-fun tp!1717917 () Bool)

(assert (=> b!6150657 (= e!3747889 (and tp!1717915 tp!1717917))))

(declare-fun b!6150658 () Bool)

(declare-fun tp!1717918 () Bool)

(assert (=> b!6150658 (= e!3747889 tp!1717918)))

(declare-fun b!6150656 () Bool)

(assert (=> b!6150656 (= e!3747889 tp_is_empty!41437)))

(declare-fun b!6150659 () Bool)

(declare-fun tp!1717916 () Bool)

(declare-fun tp!1717914 () Bool)

(assert (=> b!6150659 (= e!3747889 (and tp!1717916 tp!1717914))))

(assert (=> b!6149728 (= tp!1717771 e!3747889)))

(assert (= (and b!6149728 (is-ElementMatch!16092 (regTwo!32697 (regTwo!32697 r!7292)))) b!6150656))

(assert (= (and b!6149728 (is-Concat!24937 (regTwo!32697 (regTwo!32697 r!7292)))) b!6150657))

(assert (= (and b!6149728 (is-Star!16092 (regTwo!32697 (regTwo!32697 r!7292)))) b!6150658))

(assert (= (and b!6149728 (is-Union!16092 (regTwo!32697 (regTwo!32697 r!7292)))) b!6150659))

(declare-fun b!6150661 () Bool)

(declare-fun e!3747890 () Bool)

(declare-fun tp!1717920 () Bool)

(declare-fun tp!1717922 () Bool)

(assert (=> b!6150661 (= e!3747890 (and tp!1717920 tp!1717922))))

(declare-fun b!6150662 () Bool)

(declare-fun tp!1717923 () Bool)

(assert (=> b!6150662 (= e!3747890 tp!1717923)))

(declare-fun b!6150660 () Bool)

(assert (=> b!6150660 (= e!3747890 tp_is_empty!41437)))

(declare-fun b!6150663 () Bool)

(declare-fun tp!1717921 () Bool)

(declare-fun tp!1717919 () Bool)

(assert (=> b!6150663 (= e!3747890 (and tp!1717921 tp!1717919))))

(assert (=> b!6149744 (= tp!1717789 e!3747890)))

(assert (= (and b!6149744 (is-ElementMatch!16092 (reg!16421 (regOne!32696 r!7292)))) b!6150660))

(assert (= (and b!6149744 (is-Concat!24937 (reg!16421 (regOne!32696 r!7292)))) b!6150661))

(assert (= (and b!6149744 (is-Star!16092 (reg!16421 (regOne!32696 r!7292)))) b!6150662))

(assert (= (and b!6149744 (is-Union!16092 (reg!16421 (regOne!32696 r!7292)))) b!6150663))

(declare-fun condSetEmpty!41640 () Bool)

(assert (=> setNonEmpty!41631 (= condSetEmpty!41640 (= setRest!41631 (as set.empty (Set Context!10952))))))

(declare-fun setRes!41640 () Bool)

(assert (=> setNonEmpty!41631 (= tp!1717743 setRes!41640)))

(declare-fun setIsEmpty!41640 () Bool)

(assert (=> setIsEmpty!41640 setRes!41640))

(declare-fun e!3747891 () Bool)

(declare-fun setNonEmpty!41640 () Bool)

(declare-fun setElem!41640 () Context!10952)

(declare-fun tp!1717924 () Bool)

(assert (=> setNonEmpty!41640 (= setRes!41640 (and tp!1717924 (inv!83478 setElem!41640) e!3747891))))

(declare-fun setRest!41640 () (Set Context!10952))

(assert (=> setNonEmpty!41640 (= setRest!41631 (set.union (set.insert setElem!41640 (as set.empty (Set Context!10952))) setRest!41640))))

(declare-fun b!6150664 () Bool)

(declare-fun tp!1717925 () Bool)

(assert (=> b!6150664 (= e!3747891 tp!1717925)))

(assert (= (and setNonEmpty!41631 condSetEmpty!41640) setIsEmpty!41640))

(assert (= (and setNonEmpty!41631 (not condSetEmpty!41640)) setNonEmpty!41640))

(assert (= setNonEmpty!41640 b!6150664))

(declare-fun m!6990352 () Bool)

(assert (=> setNonEmpty!41640 m!6990352))

(declare-fun b!6150666 () Bool)

(declare-fun e!3747892 () Bool)

(declare-fun tp!1717927 () Bool)

(declare-fun tp!1717929 () Bool)

(assert (=> b!6150666 (= e!3747892 (and tp!1717927 tp!1717929))))

(declare-fun b!6150667 () Bool)

(declare-fun tp!1717930 () Bool)

(assert (=> b!6150667 (= e!3747892 tp!1717930)))

(declare-fun b!6150665 () Bool)

(assert (=> b!6150665 (= e!3747892 tp_is_empty!41437)))

(declare-fun b!6150668 () Bool)

(declare-fun tp!1717928 () Bool)

(declare-fun tp!1717926 () Bool)

(assert (=> b!6150668 (= e!3747892 (and tp!1717928 tp!1717926))))

(assert (=> b!6149745 (= tp!1717787 e!3747892)))

(assert (= (and b!6149745 (is-ElementMatch!16092 (regOne!32697 (regOne!32696 r!7292)))) b!6150665))

(assert (= (and b!6149745 (is-Concat!24937 (regOne!32697 (regOne!32696 r!7292)))) b!6150666))

(assert (= (and b!6149745 (is-Star!16092 (regOne!32697 (regOne!32696 r!7292)))) b!6150667))

(assert (= (and b!6149745 (is-Union!16092 (regOne!32697 (regOne!32696 r!7292)))) b!6150668))

(declare-fun b!6150670 () Bool)

(declare-fun e!3747893 () Bool)

(declare-fun tp!1717932 () Bool)

(declare-fun tp!1717934 () Bool)

(assert (=> b!6150670 (= e!3747893 (and tp!1717932 tp!1717934))))

(declare-fun b!6150671 () Bool)

(declare-fun tp!1717935 () Bool)

(assert (=> b!6150671 (= e!3747893 tp!1717935)))

(declare-fun b!6150669 () Bool)

(assert (=> b!6150669 (= e!3747893 tp_is_empty!41437)))

(declare-fun b!6150672 () Bool)

(declare-fun tp!1717933 () Bool)

(declare-fun tp!1717931 () Bool)

(assert (=> b!6150672 (= e!3747893 (and tp!1717933 tp!1717931))))

(assert (=> b!6149745 (= tp!1717785 e!3747893)))

(assert (= (and b!6149745 (is-ElementMatch!16092 (regTwo!32697 (regOne!32696 r!7292)))) b!6150669))

(assert (= (and b!6149745 (is-Concat!24937 (regTwo!32697 (regOne!32696 r!7292)))) b!6150670))

(assert (= (and b!6149745 (is-Star!16092 (regTwo!32697 (regOne!32696 r!7292)))) b!6150671))

(assert (= (and b!6149745 (is-Union!16092 (regTwo!32697 (regOne!32696 r!7292)))) b!6150672))

(declare-fun b!6150674 () Bool)

(declare-fun e!3747894 () Bool)

(declare-fun tp!1717937 () Bool)

(declare-fun tp!1717939 () Bool)

(assert (=> b!6150674 (= e!3747894 (and tp!1717937 tp!1717939))))

(declare-fun b!6150675 () Bool)

(declare-fun tp!1717940 () Bool)

(assert (=> b!6150675 (= e!3747894 tp!1717940)))

(declare-fun b!6150673 () Bool)

(assert (=> b!6150673 (= e!3747894 tp_is_empty!41437)))

(declare-fun b!6150676 () Bool)

(declare-fun tp!1717938 () Bool)

(declare-fun tp!1717936 () Bool)

(assert (=> b!6150676 (= e!3747894 (and tp!1717938 tp!1717936))))

(assert (=> b!6149715 (= tp!1717757 e!3747894)))

(assert (= (and b!6149715 (is-ElementMatch!16092 (regOne!32697 (reg!16421 r!7292)))) b!6150673))

(assert (= (and b!6149715 (is-Concat!24937 (regOne!32697 (reg!16421 r!7292)))) b!6150674))

(assert (= (and b!6149715 (is-Star!16092 (regOne!32697 (reg!16421 r!7292)))) b!6150675))

(assert (= (and b!6149715 (is-Union!16092 (regOne!32697 (reg!16421 r!7292)))) b!6150676))

(declare-fun b!6150678 () Bool)

(declare-fun e!3747895 () Bool)

(declare-fun tp!1717942 () Bool)

(declare-fun tp!1717944 () Bool)

(assert (=> b!6150678 (= e!3747895 (and tp!1717942 tp!1717944))))

(declare-fun b!6150679 () Bool)

(declare-fun tp!1717945 () Bool)

(assert (=> b!6150679 (= e!3747895 tp!1717945)))

(declare-fun b!6150677 () Bool)

(assert (=> b!6150677 (= e!3747895 tp_is_empty!41437)))

(declare-fun b!6150680 () Bool)

(declare-fun tp!1717943 () Bool)

(declare-fun tp!1717941 () Bool)

(assert (=> b!6150680 (= e!3747895 (and tp!1717943 tp!1717941))))

(assert (=> b!6149715 (= tp!1717755 e!3747895)))

(assert (= (and b!6149715 (is-ElementMatch!16092 (regTwo!32697 (reg!16421 r!7292)))) b!6150677))

(assert (= (and b!6149715 (is-Concat!24937 (regTwo!32697 (reg!16421 r!7292)))) b!6150678))

(assert (= (and b!6149715 (is-Star!16092 (regTwo!32697 (reg!16421 r!7292)))) b!6150679))

(assert (= (and b!6149715 (is-Union!16092 (regTwo!32697 (reg!16421 r!7292)))) b!6150680))

(declare-fun b!6150682 () Bool)

(declare-fun e!3747896 () Bool)

(declare-fun tp!1717947 () Bool)

(declare-fun tp!1717949 () Bool)

(assert (=> b!6150682 (= e!3747896 (and tp!1717947 tp!1717949))))

(declare-fun b!6150683 () Bool)

(declare-fun tp!1717950 () Bool)

(assert (=> b!6150683 (= e!3747896 tp!1717950)))

(declare-fun b!6150681 () Bool)

(assert (=> b!6150681 (= e!3747896 tp_is_empty!41437)))

(declare-fun b!6150684 () Bool)

(declare-fun tp!1717948 () Bool)

(declare-fun tp!1717946 () Bool)

(assert (=> b!6150684 (= e!3747896 (and tp!1717948 tp!1717946))))

(assert (=> b!6149743 (= tp!1717786 e!3747896)))

(assert (= (and b!6149743 (is-ElementMatch!16092 (regOne!32696 (regOne!32696 r!7292)))) b!6150681))

(assert (= (and b!6149743 (is-Concat!24937 (regOne!32696 (regOne!32696 r!7292)))) b!6150682))

(assert (= (and b!6149743 (is-Star!16092 (regOne!32696 (regOne!32696 r!7292)))) b!6150683))

(assert (= (and b!6149743 (is-Union!16092 (regOne!32696 (regOne!32696 r!7292)))) b!6150684))

(declare-fun b!6150686 () Bool)

(declare-fun e!3747897 () Bool)

(declare-fun tp!1717952 () Bool)

(declare-fun tp!1717954 () Bool)

(assert (=> b!6150686 (= e!3747897 (and tp!1717952 tp!1717954))))

(declare-fun b!6150687 () Bool)

(declare-fun tp!1717955 () Bool)

(assert (=> b!6150687 (= e!3747897 tp!1717955)))

(declare-fun b!6150685 () Bool)

(assert (=> b!6150685 (= e!3747897 tp_is_empty!41437)))

(declare-fun b!6150688 () Bool)

(declare-fun tp!1717953 () Bool)

(declare-fun tp!1717951 () Bool)

(assert (=> b!6150688 (= e!3747897 (and tp!1717953 tp!1717951))))

(assert (=> b!6149743 (= tp!1717788 e!3747897)))

(assert (= (and b!6149743 (is-ElementMatch!16092 (regTwo!32696 (regOne!32696 r!7292)))) b!6150685))

(assert (= (and b!6149743 (is-Concat!24937 (regTwo!32696 (regOne!32696 r!7292)))) b!6150686))

(assert (= (and b!6149743 (is-Star!16092 (regTwo!32696 (regOne!32696 r!7292)))) b!6150687))

(assert (= (and b!6149743 (is-Union!16092 (regTwo!32696 (regOne!32696 r!7292)))) b!6150688))

(declare-fun b!6150690 () Bool)

(declare-fun e!3747898 () Bool)

(declare-fun tp!1717957 () Bool)

(declare-fun tp!1717959 () Bool)

(assert (=> b!6150690 (= e!3747898 (and tp!1717957 tp!1717959))))

(declare-fun b!6150691 () Bool)

(declare-fun tp!1717960 () Bool)

(assert (=> b!6150691 (= e!3747898 tp!1717960)))

(declare-fun b!6150689 () Bool)

(assert (=> b!6150689 (= e!3747898 tp_is_empty!41437)))

(declare-fun b!6150692 () Bool)

(declare-fun tp!1717958 () Bool)

(declare-fun tp!1717956 () Bool)

(assert (=> b!6150692 (= e!3747898 (and tp!1717958 tp!1717956))))

(assert (=> b!6149723 (= tp!1717770 e!3747898)))

(assert (= (and b!6149723 (is-ElementMatch!16092 (reg!16421 (regOne!32697 r!7292)))) b!6150689))

(assert (= (and b!6149723 (is-Concat!24937 (reg!16421 (regOne!32697 r!7292)))) b!6150690))

(assert (= (and b!6149723 (is-Star!16092 (reg!16421 (regOne!32697 r!7292)))) b!6150691))

(assert (= (and b!6149723 (is-Union!16092 (reg!16421 (regOne!32697 r!7292)))) b!6150692))

(declare-fun b!6150694 () Bool)

(declare-fun e!3747899 () Bool)

(declare-fun tp!1717962 () Bool)

(declare-fun tp!1717964 () Bool)

(assert (=> b!6150694 (= e!3747899 (and tp!1717962 tp!1717964))))

(declare-fun b!6150695 () Bool)

(declare-fun tp!1717965 () Bool)

(assert (=> b!6150695 (= e!3747899 tp!1717965)))

(declare-fun b!6150693 () Bool)

(assert (=> b!6150693 (= e!3747899 tp_is_empty!41437)))

(declare-fun b!6150696 () Bool)

(declare-fun tp!1717963 () Bool)

(declare-fun tp!1717961 () Bool)

(assert (=> b!6150696 (= e!3747899 (and tp!1717963 tp!1717961))))

(assert (=> b!6149722 (= tp!1717767 e!3747899)))

(assert (= (and b!6149722 (is-ElementMatch!16092 (regOne!32696 (regOne!32697 r!7292)))) b!6150693))

(assert (= (and b!6149722 (is-Concat!24937 (regOne!32696 (regOne!32697 r!7292)))) b!6150694))

(assert (= (and b!6149722 (is-Star!16092 (regOne!32696 (regOne!32697 r!7292)))) b!6150695))

(assert (= (and b!6149722 (is-Union!16092 (regOne!32696 (regOne!32697 r!7292)))) b!6150696))

(declare-fun b!6150698 () Bool)

(declare-fun e!3747900 () Bool)

(declare-fun tp!1717967 () Bool)

(declare-fun tp!1717969 () Bool)

(assert (=> b!6150698 (= e!3747900 (and tp!1717967 tp!1717969))))

(declare-fun b!6150699 () Bool)

(declare-fun tp!1717970 () Bool)

(assert (=> b!6150699 (= e!3747900 tp!1717970)))

(declare-fun b!6150697 () Bool)

(assert (=> b!6150697 (= e!3747900 tp_is_empty!41437)))

(declare-fun b!6150700 () Bool)

(declare-fun tp!1717968 () Bool)

(declare-fun tp!1717966 () Bool)

(assert (=> b!6150700 (= e!3747900 (and tp!1717968 tp!1717966))))

(assert (=> b!6149722 (= tp!1717769 e!3747900)))

(assert (= (and b!6149722 (is-ElementMatch!16092 (regTwo!32696 (regOne!32697 r!7292)))) b!6150697))

(assert (= (and b!6149722 (is-Concat!24937 (regTwo!32696 (regOne!32697 r!7292)))) b!6150698))

(assert (= (and b!6149722 (is-Star!16092 (regTwo!32696 (regOne!32697 r!7292)))) b!6150699))

(assert (= (and b!6149722 (is-Union!16092 (regTwo!32696 (regOne!32697 r!7292)))) b!6150700))

(declare-fun b!6150701 () Bool)

(declare-fun e!3747901 () Bool)

(declare-fun tp!1717971 () Bool)

(declare-fun tp!1717972 () Bool)

(assert (=> b!6150701 (= e!3747901 (and tp!1717971 tp!1717972))))

(assert (=> b!6149701 (= tp!1717744 e!3747901)))

(assert (= (and b!6149701 (is-Cons!64451 (exprs!5976 setElem!41631))) b!6150701))

(declare-fun b!6150703 () Bool)

(declare-fun e!3747902 () Bool)

(declare-fun tp!1717974 () Bool)

(declare-fun tp!1717976 () Bool)

(assert (=> b!6150703 (= e!3747902 (and tp!1717974 tp!1717976))))

(declare-fun b!6150704 () Bool)

(declare-fun tp!1717977 () Bool)

(assert (=> b!6150704 (= e!3747902 tp!1717977)))

(declare-fun b!6150702 () Bool)

(assert (=> b!6150702 (= e!3747902 tp_is_empty!41437)))

(declare-fun b!6150705 () Bool)

(declare-fun tp!1717975 () Bool)

(declare-fun tp!1717973 () Bool)

(assert (=> b!6150705 (= e!3747902 (and tp!1717975 tp!1717973))))

(assert (=> b!6149724 (= tp!1717768 e!3747902)))

(assert (= (and b!6149724 (is-ElementMatch!16092 (regOne!32697 (regOne!32697 r!7292)))) b!6150702))

(assert (= (and b!6149724 (is-Concat!24937 (regOne!32697 (regOne!32697 r!7292)))) b!6150703))

(assert (= (and b!6149724 (is-Star!16092 (regOne!32697 (regOne!32697 r!7292)))) b!6150704))

(assert (= (and b!6149724 (is-Union!16092 (regOne!32697 (regOne!32697 r!7292)))) b!6150705))

(declare-fun b!6150707 () Bool)

(declare-fun e!3747903 () Bool)

(declare-fun tp!1717979 () Bool)

(declare-fun tp!1717981 () Bool)

(assert (=> b!6150707 (= e!3747903 (and tp!1717979 tp!1717981))))

(declare-fun b!6150708 () Bool)

(declare-fun tp!1717982 () Bool)

(assert (=> b!6150708 (= e!3747903 tp!1717982)))

(declare-fun b!6150706 () Bool)

(assert (=> b!6150706 (= e!3747903 tp_is_empty!41437)))

(declare-fun b!6150709 () Bool)

(declare-fun tp!1717980 () Bool)

(declare-fun tp!1717978 () Bool)

(assert (=> b!6150709 (= e!3747903 (and tp!1717980 tp!1717978))))

(assert (=> b!6149724 (= tp!1717766 e!3747903)))

(assert (= (and b!6149724 (is-ElementMatch!16092 (regTwo!32697 (regOne!32697 r!7292)))) b!6150706))

(assert (= (and b!6149724 (is-Concat!24937 (regTwo!32697 (regOne!32697 r!7292)))) b!6150707))

(assert (= (and b!6149724 (is-Star!16092 (regTwo!32697 (regOne!32697 r!7292)))) b!6150708))

(assert (= (and b!6149724 (is-Union!16092 (regTwo!32697 (regOne!32697 r!7292)))) b!6150709))

(declare-fun b!6150711 () Bool)

(declare-fun e!3747904 () Bool)

(declare-fun tp!1717984 () Bool)

(declare-fun tp!1717986 () Bool)

(assert (=> b!6150711 (= e!3747904 (and tp!1717984 tp!1717986))))

(declare-fun b!6150712 () Bool)

(declare-fun tp!1717987 () Bool)

(assert (=> b!6150712 (= e!3747904 tp!1717987)))

(declare-fun b!6150710 () Bool)

(assert (=> b!6150710 (= e!3747904 tp_is_empty!41437)))

(declare-fun b!6150713 () Bool)

(declare-fun tp!1717985 () Bool)

(declare-fun tp!1717983 () Bool)

(assert (=> b!6150713 (= e!3747904 (and tp!1717985 tp!1717983))))

(assert (=> b!6149749 (= tp!1717792 e!3747904)))

(assert (= (and b!6149749 (is-ElementMatch!16092 (regOne!32697 (regTwo!32696 r!7292)))) b!6150710))

(assert (= (and b!6149749 (is-Concat!24937 (regOne!32697 (regTwo!32696 r!7292)))) b!6150711))

(assert (= (and b!6149749 (is-Star!16092 (regOne!32697 (regTwo!32696 r!7292)))) b!6150712))

(assert (= (and b!6149749 (is-Union!16092 (regOne!32697 (regTwo!32696 r!7292)))) b!6150713))

(declare-fun b!6150715 () Bool)

(declare-fun e!3747905 () Bool)

(declare-fun tp!1717989 () Bool)

(declare-fun tp!1717991 () Bool)

(assert (=> b!6150715 (= e!3747905 (and tp!1717989 tp!1717991))))

(declare-fun b!6150716 () Bool)

(declare-fun tp!1717992 () Bool)

(assert (=> b!6150716 (= e!3747905 tp!1717992)))

(declare-fun b!6150714 () Bool)

(assert (=> b!6150714 (= e!3747905 tp_is_empty!41437)))

(declare-fun b!6150717 () Bool)

(declare-fun tp!1717990 () Bool)

(declare-fun tp!1717988 () Bool)

(assert (=> b!6150717 (= e!3747905 (and tp!1717990 tp!1717988))))

(assert (=> b!6149749 (= tp!1717790 e!3747905)))

(assert (= (and b!6149749 (is-ElementMatch!16092 (regTwo!32697 (regTwo!32696 r!7292)))) b!6150714))

(assert (= (and b!6149749 (is-Concat!24937 (regTwo!32697 (regTwo!32696 r!7292)))) b!6150715))

(assert (= (and b!6149749 (is-Star!16092 (regTwo!32697 (regTwo!32696 r!7292)))) b!6150716))

(assert (= (and b!6149749 (is-Union!16092 (regTwo!32697 (regTwo!32696 r!7292)))) b!6150717))

(declare-fun b!6150719 () Bool)

(declare-fun e!3747906 () Bool)

(declare-fun tp!1717994 () Bool)

(declare-fun tp!1717996 () Bool)

(assert (=> b!6150719 (= e!3747906 (and tp!1717994 tp!1717996))))

(declare-fun b!6150720 () Bool)

(declare-fun tp!1717997 () Bool)

(assert (=> b!6150720 (= e!3747906 tp!1717997)))

(declare-fun b!6150718 () Bool)

(assert (=> b!6150718 (= e!3747906 tp_is_empty!41437)))

(declare-fun b!6150721 () Bool)

(declare-fun tp!1717995 () Bool)

(declare-fun tp!1717993 () Bool)

(assert (=> b!6150721 (= e!3747906 (and tp!1717995 tp!1717993))))

(assert (=> b!6149748 (= tp!1717794 e!3747906)))

(assert (= (and b!6149748 (is-ElementMatch!16092 (reg!16421 (regTwo!32696 r!7292)))) b!6150718))

(assert (= (and b!6149748 (is-Concat!24937 (reg!16421 (regTwo!32696 r!7292)))) b!6150719))

(assert (= (and b!6149748 (is-Star!16092 (reg!16421 (regTwo!32696 r!7292)))) b!6150720))

(assert (= (and b!6149748 (is-Union!16092 (reg!16421 (regTwo!32696 r!7292)))) b!6150721))

(declare-fun b!6150723 () Bool)

(declare-fun e!3747907 () Bool)

(declare-fun tp!1717999 () Bool)

(declare-fun tp!1718001 () Bool)

(assert (=> b!6150723 (= e!3747907 (and tp!1717999 tp!1718001))))

(declare-fun b!6150724 () Bool)

(declare-fun tp!1718002 () Bool)

(assert (=> b!6150724 (= e!3747907 tp!1718002)))

(declare-fun b!6150722 () Bool)

(assert (=> b!6150722 (= e!3747907 tp_is_empty!41437)))

(declare-fun b!6150725 () Bool)

(declare-fun tp!1718000 () Bool)

(declare-fun tp!1717998 () Bool)

(assert (=> b!6150725 (= e!3747907 (and tp!1718000 tp!1717998))))

(assert (=> b!6149726 (= tp!1717772 e!3747907)))

(assert (= (and b!6149726 (is-ElementMatch!16092 (regOne!32696 (regTwo!32697 r!7292)))) b!6150722))

(assert (= (and b!6149726 (is-Concat!24937 (regOne!32696 (regTwo!32697 r!7292)))) b!6150723))

(assert (= (and b!6149726 (is-Star!16092 (regOne!32696 (regTwo!32697 r!7292)))) b!6150724))

(assert (= (and b!6149726 (is-Union!16092 (regOne!32696 (regTwo!32697 r!7292)))) b!6150725))

(declare-fun b!6150727 () Bool)

(declare-fun e!3747908 () Bool)

(declare-fun tp!1718004 () Bool)

(declare-fun tp!1718006 () Bool)

(assert (=> b!6150727 (= e!3747908 (and tp!1718004 tp!1718006))))

(declare-fun b!6150728 () Bool)

(declare-fun tp!1718007 () Bool)

(assert (=> b!6150728 (= e!3747908 tp!1718007)))

(declare-fun b!6150726 () Bool)

(assert (=> b!6150726 (= e!3747908 tp_is_empty!41437)))

(declare-fun b!6150729 () Bool)

(declare-fun tp!1718005 () Bool)

(declare-fun tp!1718003 () Bool)

(assert (=> b!6150729 (= e!3747908 (and tp!1718005 tp!1718003))))

(assert (=> b!6149726 (= tp!1717774 e!3747908)))

(assert (= (and b!6149726 (is-ElementMatch!16092 (regTwo!32696 (regTwo!32697 r!7292)))) b!6150726))

(assert (= (and b!6149726 (is-Concat!24937 (regTwo!32696 (regTwo!32697 r!7292)))) b!6150727))

(assert (= (and b!6149726 (is-Star!16092 (regTwo!32696 (regTwo!32697 r!7292)))) b!6150728))

(assert (= (and b!6149726 (is-Union!16092 (regTwo!32696 (regTwo!32697 r!7292)))) b!6150729))

(declare-fun b!6150730 () Bool)

(declare-fun e!3747909 () Bool)

(declare-fun tp!1718008 () Bool)

(assert (=> b!6150730 (= e!3747909 (and tp_is_empty!41437 tp!1718008))))

(assert (=> b!6149741 (= tp!1717784 e!3747909)))

(assert (= (and b!6149741 (is-Cons!64452 (t!378063 (t!378063 s!2326)))) b!6150730))

(declare-fun b!6150732 () Bool)

(declare-fun e!3747910 () Bool)

(declare-fun tp!1718010 () Bool)

(declare-fun tp!1718012 () Bool)

(assert (=> b!6150732 (= e!3747910 (and tp!1718010 tp!1718012))))

(declare-fun b!6150733 () Bool)

(declare-fun tp!1718013 () Bool)

(assert (=> b!6150733 (= e!3747910 tp!1718013)))

(declare-fun b!6150731 () Bool)

(assert (=> b!6150731 (= e!3747910 tp_is_empty!41437)))

(declare-fun b!6150734 () Bool)

(declare-fun tp!1718011 () Bool)

(declare-fun tp!1718009 () Bool)

(assert (=> b!6150734 (= e!3747910 (and tp!1718011 tp!1718009))))

(assert (=> b!6149747 (= tp!1717791 e!3747910)))

(assert (= (and b!6149747 (is-ElementMatch!16092 (regOne!32696 (regTwo!32696 r!7292)))) b!6150731))

(assert (= (and b!6149747 (is-Concat!24937 (regOne!32696 (regTwo!32696 r!7292)))) b!6150732))

(assert (= (and b!6149747 (is-Star!16092 (regOne!32696 (regTwo!32696 r!7292)))) b!6150733))

(assert (= (and b!6149747 (is-Union!16092 (regOne!32696 (regTwo!32696 r!7292)))) b!6150734))

(declare-fun b!6150736 () Bool)

(declare-fun e!3747911 () Bool)

(declare-fun tp!1718015 () Bool)

(declare-fun tp!1718017 () Bool)

(assert (=> b!6150736 (= e!3747911 (and tp!1718015 tp!1718017))))

(declare-fun b!6150737 () Bool)

(declare-fun tp!1718018 () Bool)

(assert (=> b!6150737 (= e!3747911 tp!1718018)))

(declare-fun b!6150735 () Bool)

(assert (=> b!6150735 (= e!3747911 tp_is_empty!41437)))

(declare-fun b!6150738 () Bool)

(declare-fun tp!1718016 () Bool)

(declare-fun tp!1718014 () Bool)

(assert (=> b!6150738 (= e!3747911 (and tp!1718016 tp!1718014))))

(assert (=> b!6149747 (= tp!1717793 e!3747911)))

(assert (= (and b!6149747 (is-ElementMatch!16092 (regTwo!32696 (regTwo!32696 r!7292)))) b!6150735))

(assert (= (and b!6149747 (is-Concat!24937 (regTwo!32696 (regTwo!32696 r!7292)))) b!6150736))

(assert (= (and b!6149747 (is-Star!16092 (regTwo!32696 (regTwo!32696 r!7292)))) b!6150737))

(assert (= (and b!6149747 (is-Union!16092 (regTwo!32696 (regTwo!32696 r!7292)))) b!6150738))

(declare-fun b_lambda!234091 () Bool)

(assert (= b_lambda!234083 (or d!1926768 b_lambda!234091)))

(declare-fun bs!1524746 () Bool)

(declare-fun d!1927148 () Bool)

(assert (= bs!1524746 (and d!1927148 d!1926768)))

(assert (=> bs!1524746 (= (dynLambda!25407 lambda!335354 (h!70899 (exprs!5976 (h!70901 zl!343)))) (validRegex!7828 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(declare-fun m!6990354 () Bool)

(assert (=> bs!1524746 m!6990354))

(assert (=> b!6150462 d!1927148))

(declare-fun b_lambda!234093 () Bool)

(assert (= b_lambda!234077 (or d!1926736 b_lambda!234093)))

(declare-fun bs!1524747 () Bool)

(declare-fun d!1927150 () Bool)

(assert (= bs!1524747 (and d!1927150 d!1926736)))

(assert (=> bs!1524747 (= (dynLambda!25407 lambda!335344 (h!70899 (exprs!5976 lt!2334170))) (validRegex!7828 (h!70899 (exprs!5976 lt!2334170))))))

(declare-fun m!6990356 () Bool)

(assert (=> bs!1524747 m!6990356))

(assert (=> b!6150383 d!1927150))

(declare-fun b_lambda!234095 () Bool)

(assert (= b_lambda!234085 (or b!6149238 b_lambda!234095)))

(assert (=> d!1927114 d!1926792))

(declare-fun b_lambda!234097 () Bool)

(assert (= b_lambda!234089 (or b!6149238 b_lambda!234097)))

(assert (=> d!1927136 d!1926788))

(declare-fun b_lambda!234099 () Bool)

(assert (= b_lambda!234081 (or d!1926782 b_lambda!234099)))

(declare-fun bs!1524748 () Bool)

(declare-fun d!1927152 () Bool)

(assert (= bs!1524748 (and d!1927152 d!1926782)))

(assert (=> bs!1524748 (= (dynLambda!25407 lambda!335366 (h!70899 lt!2334297)) (validRegex!7828 (h!70899 lt!2334297)))))

(declare-fun m!6990358 () Bool)

(assert (=> bs!1524748 m!6990358))

(assert (=> b!6150437 d!1927152))

(declare-fun b_lambda!234101 () Bool)

(assert (= b_lambda!234075 (or d!1926708 b_lambda!234101)))

(declare-fun bs!1524749 () Bool)

(declare-fun d!1927154 () Bool)

(assert (= bs!1524749 (and d!1927154 d!1926708)))

(assert (=> bs!1524749 (= (dynLambda!25407 lambda!335340 (h!70899 (exprs!5976 setElem!41625))) (validRegex!7828 (h!70899 (exprs!5976 setElem!41625))))))

(declare-fun m!6990360 () Bool)

(assert (=> bs!1524749 m!6990360))

(assert (=> b!6150205 d!1927154))

(declare-fun b_lambda!234103 () Bool)

(assert (= b_lambda!234079 (or d!1926728 b_lambda!234103)))

(declare-fun bs!1524750 () Bool)

(declare-fun d!1927156 () Bool)

(assert (= bs!1524750 (and d!1927156 d!1926728)))

(assert (=> bs!1524750 (= (dynLambda!25407 lambda!335343 (h!70899 (exprs!5976 (h!70901 zl!343)))) (validRegex!7828 (h!70899 (exprs!5976 (h!70901 zl!343)))))))

(assert (=> bs!1524750 m!6990354))

(assert (=> b!6150405 d!1927156))

(declare-fun b_lambda!234105 () Bool)

(assert (= b_lambda!234087 (or b!6149238 b_lambda!234105)))

(assert (=> d!1927116 d!1926790))

(declare-fun b_lambda!234107 () Bool)

(assert (= b_lambda!234073 (or d!1926780 b_lambda!234107)))

(declare-fun bs!1524751 () Bool)

(declare-fun d!1927158 () Bool)

(assert (= bs!1524751 (and d!1927158 d!1926780)))

(assert (=> bs!1524751 (= (dynLambda!25407 lambda!335363 (h!70899 (unfocusZipperList!1513 zl!343))) (validRegex!7828 (h!70899 (unfocusZipperList!1513 zl!343))))))

(declare-fun m!6990362 () Bool)

(assert (=> bs!1524751 m!6990362))

(assert (=> b!6150155 d!1927158))

(push 1)

(assert (not b!6150569))

(assert (not b!6150568))

(assert (not b!6150236))

(assert (not b!6150427))

(assert (not b!6150642))

(assert (not bm!511449))

(assert (not bm!511450))

(assert (not b!6150625))

(assert (not b_lambda!234107))

(assert (not bm!511495))

(assert (not b!6150139))

(assert (not b!6150509))

(assert (not b_lambda!234103))

(assert (not b!6150733))

(assert (not bm!511442))

(assert (not bm!511432))

(assert (not d!1926980))

(assert (not b!6150240))

(assert (not bm!511426))

(assert (not b!6150206))

(assert (not bm!511436))

(assert (not bm!511490))

(assert (not b!6150567))

(assert (not bm!511443))

(assert (not b!6150686))

(assert (not b!6150668))

(assert (not bm!511523))

(assert (not d!1926974))

(assert (not b!6150358))

(assert (not d!1926970))

(assert (not b!6150649))

(assert (not d!1926936))

(assert (not b!6150426))

(assert (not bm!511453))

(assert (not b!6150664))

(assert (not b!6150519))

(assert (not d!1927062))

(assert (not b!6150430))

(assert (not b_lambda!234059))

(assert (not bm!511406))

(assert (not bs!1524751))

(assert (not b!6150734))

(assert (not b!6150610))

(assert (not b!6150691))

(assert (not bm!511471))

(assert (not bm!511472))

(assert (not b!6150434))

(assert (not bm!511434))

(assert (not bm!511431))

(assert (not b!6150675))

(assert (not b!6150438))

(assert (not b!6150699))

(assert (not b!6150727))

(assert (not d!1927056))

(assert (not bm!511516))

(assert (not bm!511475))

(assert (not b!6150466))

(assert (not d!1927052))

(assert (not b!6150323))

(assert (not b!6150306))

(assert (not b!6150658))

(assert (not b!6150310))

(assert (not bm!511458))

(assert (not bm!511521))

(assert (not b!6150239))

(assert (not bm!511412))

(assert (not b!6150198))

(assert (not b!6150277))

(assert (not setNonEmpty!41639))

(assert (not d!1927006))

(assert (not b!6150156))

(assert (not b!6150667))

(assert (not b!6150439))

(assert (not b!6150688))

(assert (not b!6150728))

(assert (not d!1927136))

(assert (not bm!511518))

(assert (not d!1927072))

(assert (not d!1926984))

(assert (not b!6150503))

(assert (not bm!511429))

(assert (not bm!511511))

(assert (not d!1926902))

(assert (not b!6150572))

(assert (not d!1927140))

(assert (not b!6150721))

(assert (not b!6150376))

(assert (not b!6150304))

(assert (not bm!511507))

(assert (not b!6150678))

(assert (not d!1926918))

(assert (not b!6150597))

(assert (not b!6150701))

(assert (not bm!511437))

(assert (not b_lambda!234099))

(assert (not d!1926972))

(assert (not bm!511420))

(assert (not bm!511501))

(assert (not bm!511411))

(assert (not b!6150322))

(assert (not b!6150692))

(assert (not b!6150662))

(assert (not b_lambda!234057))

(assert (not b!6150237))

(assert (not b!6150531))

(assert (not b!6150446))

(assert (not b!6150729))

(assert (not b!6150663))

(assert (not d!1927084))

(assert (not b!6150475))

(assert (not b!6150671))

(assert (not bm!511510))

(assert (not b!6150717))

(assert (not b!6150657))

(assert (not b!6150406))

(assert (not bm!511494))

(assert (not b!6150713))

(assert (not b!6150262))

(assert (not bm!511498))

(assert (not b!6150695))

(assert (not b!6150680))

(assert (not d!1927054))

(assert (not d!1927106))

(assert (not d!1927114))

(assert (not b!6150281))

(assert (not b!6150637))

(assert (not b!6150603))

(assert (not d!1927080))

(assert (not b!6150178))

(assert (not d!1927120))

(assert (not b!6150303))

(assert (not b!6150626))

(assert (not d!1926954))

(assert (not b!6150189))

(assert (not bm!511522))

(assert (not b!6150190))

(assert (not d!1927004))

(assert (not b!6150207))

(assert (not d!1927112))

(assert (not b!6150530))

(assert (not d!1927014))

(assert (not b!6150401))

(assert (not bm!511415))

(assert (not b!6150271))

(assert (not b!6150138))

(assert (not b!6150704))

(assert (not bm!511462))

(assert (not d!1927118))

(assert (not b!6150602))

(assert (not b!6150321))

(assert (not d!1926946))

(assert (not b_lambda!234055))

(assert (not d!1927130))

(assert (not b!6150308))

(assert (not b_lambda!234101))

(assert (not b!6150468))

(assert (not b!6150348))

(assert (not bm!511520))

(assert (not bm!511419))

(assert (not b!6150723))

(assert (not b!6150646))

(assert (not b!6150227))

(assert (not b!6150612))

(assert (not b!6150272))

(assert (not d!1926904))

(assert (not b!6150193))

(assert (not b!6150683))

(assert (not b!6150309))

(assert (not bm!511430))

(assert (not setNonEmpty!41640))

(assert tp_is_empty!41437)

(assert (not d!1927016))

(assert (not b!6150472))

(assert (not b!6150199))

(assert (not b!6150650))

(assert (not b!6150627))

(assert (not b!6150709))

(assert (not bm!511457))

(assert (not b!6150651))

(assert (not d!1927082))

(assert (not d!1927064))

(assert (not b!6150670))

(assert (not b!6150679))

(assert (not bm!511413))

(assert (not b!6150659))

(assert (not bm!511515))

(assert (not bm!511454))

(assert (not b!6150242))

(assert (not bm!511422))

(assert (not b!6150622))

(assert (not bm!511447))

(assert (not b!6150307))

(assert (not b_lambda!234095))

(assert (not d!1927068))

(assert (not bm!511508))

(assert (not b!6150655))

(assert (not b!6150711))

(assert (not b!6150444))

(assert (not bm!511504))

(assert (not b!6150605))

(assert (not b!6150356))

(assert (not d!1926962))

(assert (not b!6150192))

(assert (not b!6150696))

(assert (not b!6150228))

(assert (not d!1927010))

(assert (not bm!511440))

(assert (not bm!511463))

(assert (not b!6150202))

(assert (not b!6150245))

(assert (not b!6150634))

(assert (not b!6150362))

(assert (not b!6150278))

(assert (not b!6150418))

(assert (not b!6150451))

(assert (not b!6150371))

(assert (not b!6150235))

(assert (not b!6150638))

(assert (not bm!511503))

(assert (not d!1927020))

(assert (not b!6150570))

(assert (not b_lambda!234093))

(assert (not b!6150542))

(assert (not d!1926956))

(assert (not b!6150147))

(assert (not b!6150571))

(assert (not b!6150687))

(assert (not b!6150690))

(assert (not bm!511470))

(assert (not d!1926988))

(assert (not b!6150708))

(assert (not b!6150257))

(assert (not d!1926924))

(assert (not b!6150732))

(assert (not d!1927108))

(assert (not bm!511493))

(assert (not b!6150352))

(assert (not b!6150703))

(assert (not d!1927022))

(assert (not b!6150644))

(assert (not b!6150515))

(assert (not b!6150349))

(assert (not b!6150666))

(assert (not b!6150719))

(assert (not b!6150407))

(assert (not b!6150218))

(assert (not d!1927086))

(assert (not bm!511446))

(assert (not b!6150545))

(assert (not d!1926906))

(assert (not b!6150715))

(assert (not b!6150632))

(assert (not bm!511416))

(assert (not bs!1524749))

(assert (not bm!511467))

(assert (not b!6150629))

(assert (not d!1927094))

(assert (not b!6150725))

(assert (not b!6150195))

(assert (not b!6150648))

(assert (not bm!511473))

(assert (not bm!511517))

(assert (not d!1926966))

(assert (not bm!511455))

(assert (not b!6150246))

(assert (not b!6150261))

(assert (not bm!511464))

(assert (not b!6150355))

(assert (not b!6150508))

(assert (not b!6150631))

(assert (not b!6150423))

(assert (not bm!511466))

(assert (not b!6150385))

(assert (not b!6150471))

(assert (not b!6150738))

(assert (not d!1926964))

(assert (not b!6150360))

(assert (not b!6150672))

(assert (not b!6150284))

(assert (not b!6150682))

(assert (not b!6150328))

(assert (not b!6150737))

(assert (not bs!1524747))

(assert (not bm!511491))

(assert (not bm!511476))

(assert (not d!1926938))

(assert (not bm!511497))

(assert (not b!6150628))

(assert (not d!1926998))

(assert (not b!6150698))

(assert (not b!6150285))

(assert (not d!1927132))

(assert (not setNonEmpty!41637))

(assert (not b!6150420))

(assert (not b!6150694))

(assert (not d!1926982))

(assert (not b!6150463))

(assert (not d!1926930))

(assert (not b!6150730))

(assert (not b!6150684))

(assert (not b!6150707))

(assert (not b!6150716))

(assert (not b!6150289))

(assert (not b!6150653))

(assert (not b!6150705))

(assert (not bs!1524750))

(assert (not b!6150442))

(assert (not b!6150661))

(assert (not b!6150712))

(assert (not b!6150700))

(assert (not d!1926896))

(assert (not b!6150654))

(assert (not b!6150436))

(assert (not d!1927110))

(assert (not b!6150640))

(assert (not b!6150736))

(assert (not d!1926996))

(assert (not d!1926958))

(assert (not b!6150674))

(assert (not bm!511479))

(assert (not b!6150359))

(assert (not b!6150633))

(assert (not d!1926926))

(assert (not d!1927134))

(assert (not b!6150378))

(assert (not b!6150384))

(assert (not b!6150581))

(assert (not d!1927008))

(assert (not b!6150221))

(assert (not bm!511423))

(assert (not d!1927116))

(assert (not b!6150636))

(assert (not b!6150433))

(assert (not d!1926928))

(assert (not b!6150624))

(assert (not b!6150274))

(assert (not b!6150249))

(assert (not setNonEmpty!41638))

(assert (not b_lambda!234091))

(assert (not b!6150288))

(assert (not b_lambda!234097))

(assert (not bs!1524748))

(assert (not d!1926976))

(assert (not b!6150465))

(assert (not b!6150353))

(assert (not b!6150370))

(assert (not b!6150301))

(assert (not b!6150641))

(assert (not b!6150326))

(assert (not b!6150421))

(assert (not b!6150449))

(assert (not bm!511405))

(assert (not b!6150720))

(assert (not b!6150574))

(assert (not bm!511427))

(assert (not b!6150645))

(assert (not bm!511433))

(assert (not d!1927012))

(assert (not bs!1524746))

(assert (not b_lambda!234105))

(assert (not b!6150547))

(assert (not b!6150676))

(assert (not b!6150435))

(assert (not b!6150724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

