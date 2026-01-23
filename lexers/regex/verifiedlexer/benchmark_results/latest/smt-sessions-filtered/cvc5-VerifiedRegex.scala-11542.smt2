; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!634972 () Bool)

(assert start!634972)

(declare-fun b!6426986 () Bool)

(assert (=> b!6426986 true))

(assert (=> b!6426986 true))

(declare-fun lambda!355337 () Int)

(declare-fun lambda!355336 () Int)

(assert (=> b!6426986 (not (= lambda!355337 lambda!355336))))

(assert (=> b!6426986 true))

(assert (=> b!6426986 true))

(declare-fun b!6426969 () Bool)

(assert (=> b!6426969 true))

(declare-fun bs!1616568 () Bool)

(declare-fun b!6426989 () Bool)

(assert (= bs!1616568 (and b!6426989 b!6426986)))

(declare-datatypes ((C!32930 0))(
  ( (C!32931 (val!26167 Int)) )
))
(declare-datatypes ((Regex!16330 0))(
  ( (ElementMatch!16330 (c!1174427 C!32930)) (Concat!25175 (regOne!33172 Regex!16330) (regTwo!33172 Regex!16330)) (EmptyExpr!16330) (Star!16330 (reg!16659 Regex!16330)) (EmptyLang!16330) (Union!16330 (regOne!33173 Regex!16330) (regTwo!33173 Regex!16330)) )
))
(declare-fun r!7292 () Regex!16330)

(declare-fun lt!2378328 () Regex!16330)

(declare-fun lambda!355339 () Int)

(assert (=> bs!1616568 (= (= lt!2378328 (regOne!33172 r!7292)) (= lambda!355339 lambda!355336))))

(assert (=> bs!1616568 (not (= lambda!355339 lambda!355337))))

(assert (=> b!6426989 true))

(assert (=> b!6426989 true))

(assert (=> b!6426989 true))

(declare-fun lambda!355340 () Int)

(assert (=> bs!1616568 (not (= lambda!355340 lambda!355336))))

(assert (=> bs!1616568 (= (= lt!2378328 (regOne!33172 r!7292)) (= lambda!355340 lambda!355337))))

(assert (=> b!6426989 (not (= lambda!355340 lambda!355339))))

(assert (=> b!6426989 true))

(assert (=> b!6426989 true))

(assert (=> b!6426989 true))

(declare-fun bs!1616569 () Bool)

(declare-fun b!6426997 () Bool)

(assert (= bs!1616569 (and b!6426997 b!6426986)))

(declare-datatypes ((List!65289 0))(
  ( (Nil!65165) (Cons!65165 (h!71613 C!32930) (t!378905 List!65289)) )
))
(declare-datatypes ((tuple2!66618 0))(
  ( (tuple2!66619 (_1!36612 List!65289) (_2!36612 List!65289)) )
))
(declare-fun lt!2378308 () tuple2!66618)

(declare-fun lambda!355341 () Int)

(declare-fun s!2326 () List!65289)

(assert (=> bs!1616569 (= (and (= (_1!36612 lt!2378308) s!2326) (= (reg!16659 (regOne!33172 r!7292)) (regOne!33172 r!7292)) (= lt!2378328 (regTwo!33172 r!7292))) (= lambda!355341 lambda!355336))))

(assert (=> bs!1616569 (not (= lambda!355341 lambda!355337))))

(declare-fun bs!1616570 () Bool)

(assert (= bs!1616570 (and b!6426997 b!6426989)))

(assert (=> bs!1616570 (= (and (= (_1!36612 lt!2378308) s!2326) (= (reg!16659 (regOne!33172 r!7292)) lt!2378328) (= lt!2378328 (regTwo!33172 r!7292))) (= lambda!355341 lambda!355339))))

(assert (=> bs!1616570 (not (= lambda!355341 lambda!355340))))

(assert (=> b!6426997 true))

(assert (=> b!6426997 true))

(assert (=> b!6426997 true))

(declare-fun lambda!355342 () Int)

(assert (=> bs!1616570 (not (= lambda!355342 lambda!355340))))

(assert (=> bs!1616569 (not (= lambda!355342 lambda!355336))))

(assert (=> bs!1616569 (not (= lambda!355342 lambda!355337))))

(assert (=> bs!1616570 (not (= lambda!355342 lambda!355339))))

(assert (=> b!6426997 (not (= lambda!355342 lambda!355341))))

(assert (=> b!6426997 true))

(assert (=> b!6426997 true))

(assert (=> b!6426997 true))

(declare-fun lambda!355343 () Int)

(assert (=> bs!1616570 (= (and (= (_1!36612 lt!2378308) s!2326) (= (reg!16659 (regOne!33172 r!7292)) lt!2378328) (= lt!2378328 (regTwo!33172 r!7292))) (= lambda!355343 lambda!355340))))

(assert (=> bs!1616569 (not (= lambda!355343 lambda!355336))))

(assert (=> b!6426997 (not (= lambda!355343 lambda!355342))))

(assert (=> bs!1616569 (= (and (= (_1!36612 lt!2378308) s!2326) (= (reg!16659 (regOne!33172 r!7292)) (regOne!33172 r!7292)) (= lt!2378328 (regTwo!33172 r!7292))) (= lambda!355343 lambda!355337))))

(assert (=> bs!1616570 (not (= lambda!355343 lambda!355339))))

(assert (=> b!6426997 (not (= lambda!355343 lambda!355341))))

(assert (=> b!6426997 true))

(assert (=> b!6426997 true))

(assert (=> b!6426997 true))

(declare-fun b!6426968 () Bool)

(declare-fun res!2641563 () Bool)

(declare-fun e!3899180 () Bool)

(assert (=> b!6426968 (=> res!2641563 e!3899180)))

(assert (=> b!6426968 (= res!2641563 (or (is-Concat!25175 (regOne!33172 r!7292)) (not (is-Star!16330 (regOne!33172 r!7292)))))))

(declare-fun setIsEmpty!43881 () Bool)

(declare-fun setRes!43881 () Bool)

(assert (=> setIsEmpty!43881 setRes!43881))

(declare-fun b!6426970 () Bool)

(declare-fun res!2641545 () Bool)

(declare-fun e!3899176 () Bool)

(assert (=> b!6426970 (=> res!2641545 e!3899176)))

(declare-fun lt!2378322 () Regex!16330)

(assert (=> b!6426970 (= res!2641545 (not (= lt!2378322 r!7292)))))

(declare-fun b!6426971 () Bool)

(declare-fun e!3899179 () Bool)

(assert (=> b!6426971 (= e!3899176 e!3899179)))

(declare-fun res!2641531 () Bool)

(assert (=> b!6426971 (=> res!2641531 e!3899179)))

(declare-fun lt!2378324 () Regex!16330)

(assert (=> b!6426971 (= res!2641531 (not (= r!7292 lt!2378324)))))

(assert (=> b!6426971 (= lt!2378324 (Concat!25175 lt!2378328 (regTwo!33172 r!7292)))))

(declare-fun b!6426972 () Bool)

(declare-fun e!3899188 () Bool)

(declare-fun tp!1783744 () Bool)

(assert (=> b!6426972 (= e!3899188 tp!1783744)))

(declare-fun b!6426973 () Bool)

(declare-fun e!3899171 () Bool)

(assert (=> b!6426973 (= e!3899180 e!3899171)))

(declare-fun res!2641562 () Bool)

(assert (=> b!6426973 (=> res!2641562 e!3899171)))

(declare-datatypes ((List!65290 0))(
  ( (Nil!65166) (Cons!65166 (h!71614 Regex!16330) (t!378906 List!65290)) )
))
(declare-datatypes ((Context!11428 0))(
  ( (Context!11429 (exprs!6214 List!65290)) )
))
(declare-fun lt!2378297 () (Set Context!11428))

(declare-fun lt!2378311 () (Set Context!11428))

(assert (=> b!6426973 (= res!2641562 (not (= lt!2378297 lt!2378311)))))

(declare-fun lt!2378317 () Context!11428)

(declare-fun derivationStepZipperDown!1578 (Regex!16330 Context!11428 C!32930) (Set Context!11428))

(assert (=> b!6426973 (= lt!2378311 (derivationStepZipperDown!1578 (reg!16659 (regOne!33172 r!7292)) lt!2378317 (h!71613 s!2326)))))

(declare-fun lt!2378309 () List!65290)

(assert (=> b!6426973 (= lt!2378317 (Context!11429 lt!2378309))))

(declare-datatypes ((List!65291 0))(
  ( (Nil!65167) (Cons!65167 (h!71615 Context!11428) (t!378907 List!65291)) )
))
(declare-fun zl!343 () List!65291)

(assert (=> b!6426973 (= lt!2378309 (Cons!65166 lt!2378328 (t!378906 (exprs!6214 (h!71615 zl!343)))))))

(assert (=> b!6426973 (= lt!2378328 (Star!16330 (reg!16659 (regOne!33172 r!7292))))))

(declare-fun b!6426974 () Bool)

(declare-fun e!3899177 () Bool)

(declare-fun tp!1783747 () Bool)

(assert (=> b!6426974 (= e!3899177 tp!1783747)))

(declare-fun b!6426975 () Bool)

(declare-fun e!3899169 () Bool)

(declare-fun validRegex!8066 (Regex!16330) Bool)

(assert (=> b!6426975 (= e!3899169 (validRegex!8066 lt!2378328))))

(declare-fun b!6426976 () Bool)

(declare-fun res!2641553 () Bool)

(declare-fun e!3899183 () Bool)

(assert (=> b!6426976 (=> res!2641553 e!3899183)))

(declare-fun matchR!8513 (Regex!16330 List!65289) Bool)

(assert (=> b!6426976 (= res!2641553 (not (matchR!8513 (regTwo!33172 r!7292) (_2!36612 lt!2378308))))))

(declare-fun b!6426977 () Bool)

(declare-fun res!2641539 () Bool)

(declare-fun e!3899181 () Bool)

(assert (=> b!6426977 (=> res!2641539 e!3899181)))

(assert (=> b!6426977 (= res!2641539 (not (is-Cons!65166 (exprs!6214 (h!71615 zl!343)))))))

(declare-fun e!3899185 () Bool)

(assert (=> b!6426969 (= e!3899185 e!3899180)))

(declare-fun res!2641550 () Bool)

(assert (=> b!6426969 (=> res!2641550 e!3899180)))

(assert (=> b!6426969 (= res!2641550 (or (and (is-ElementMatch!16330 (regOne!33172 r!7292)) (= (c!1174427 (regOne!33172 r!7292)) (h!71613 s!2326))) (is-Union!16330 (regOne!33172 r!7292))))))

(declare-datatypes ((Unit!158651 0))(
  ( (Unit!158652) )
))
(declare-fun lt!2378329 () Unit!158651)

(declare-fun e!3899187 () Unit!158651)

(assert (=> b!6426969 (= lt!2378329 e!3899187)))

(declare-fun c!1174426 () Bool)

(declare-fun nullable!6323 (Regex!16330) Bool)

(assert (=> b!6426969 (= c!1174426 (nullable!6323 (h!71614 (exprs!6214 (h!71615 zl!343)))))))

(declare-fun z!1189 () (Set Context!11428))

(declare-fun lambda!355338 () Int)

(declare-fun flatMap!1835 ((Set Context!11428) Int) (Set Context!11428))

(declare-fun derivationStepZipperUp!1504 (Context!11428 C!32930) (Set Context!11428))

(assert (=> b!6426969 (= (flatMap!1835 z!1189 lambda!355338) (derivationStepZipperUp!1504 (h!71615 zl!343) (h!71613 s!2326)))))

(declare-fun lt!2378300 () Unit!158651)

(declare-fun lemmaFlatMapOnSingletonSet!1361 ((Set Context!11428) Context!11428 Int) Unit!158651)

(assert (=> b!6426969 (= lt!2378300 (lemmaFlatMapOnSingletonSet!1361 z!1189 (h!71615 zl!343) lambda!355338))))

(declare-fun lt!2378291 () (Set Context!11428))

(declare-fun lt!2378290 () Context!11428)

(assert (=> b!6426969 (= lt!2378291 (derivationStepZipperUp!1504 lt!2378290 (h!71613 s!2326)))))

(assert (=> b!6426969 (= lt!2378297 (derivationStepZipperDown!1578 (h!71614 (exprs!6214 (h!71615 zl!343))) lt!2378290 (h!71613 s!2326)))))

(assert (=> b!6426969 (= lt!2378290 (Context!11429 (t!378906 (exprs!6214 (h!71615 zl!343)))))))

(declare-fun lt!2378315 () (Set Context!11428))

(assert (=> b!6426969 (= lt!2378315 (derivationStepZipperUp!1504 (Context!11429 (Cons!65166 (h!71614 (exprs!6214 (h!71615 zl!343))) (t!378906 (exprs!6214 (h!71615 zl!343))))) (h!71613 s!2326)))))

(declare-fun res!2641534 () Bool)

(declare-fun e!3899178 () Bool)

(assert (=> start!634972 (=> (not res!2641534) (not e!3899178))))

(assert (=> start!634972 (= res!2641534 (validRegex!8066 r!7292))))

(assert (=> start!634972 e!3899178))

(assert (=> start!634972 e!3899177))

(declare-fun condSetEmpty!43881 () Bool)

(assert (=> start!634972 (= condSetEmpty!43881 (= z!1189 (as set.empty (Set Context!11428))))))

(assert (=> start!634972 setRes!43881))

(declare-fun e!3899170 () Bool)

(assert (=> start!634972 e!3899170))

(declare-fun e!3899175 () Bool)

(assert (=> start!634972 e!3899175))

(declare-fun b!6426978 () Bool)

(declare-fun res!2641533 () Bool)

(assert (=> b!6426978 (=> res!2641533 e!3899183)))

(assert (=> b!6426978 (= res!2641533 (not (matchR!8513 lt!2378328 (_1!36612 lt!2378308))))))

(declare-fun b!6426979 () Bool)

(declare-fun e!3899174 () Bool)

(assert (=> b!6426979 (= e!3899178 e!3899174)))

(declare-fun res!2641536 () Bool)

(assert (=> b!6426979 (=> (not res!2641536) (not e!3899174))))

(assert (=> b!6426979 (= res!2641536 (= r!7292 lt!2378322))))

(declare-fun unfocusZipper!2072 (List!65291) Regex!16330)

(assert (=> b!6426979 (= lt!2378322 (unfocusZipper!2072 zl!343))))

(declare-fun b!6426980 () Bool)

(declare-fun res!2641556 () Bool)

(declare-fun e!3899184 () Bool)

(assert (=> b!6426980 (=> res!2641556 e!3899184)))

(assert (=> b!6426980 (= res!2641556 (not (= (unfocusZipper!2072 (Cons!65167 lt!2378317 Nil!65167)) lt!2378324)))))

(declare-fun b!6426981 () Bool)

(declare-fun res!2641532 () Bool)

(assert (=> b!6426981 (=> res!2641532 e!3899181)))

(declare-fun isEmpty!37329 (List!65291) Bool)

(assert (=> b!6426981 (= res!2641532 (not (isEmpty!37329 (t!378907 zl!343))))))

(declare-fun b!6426982 () Bool)

(declare-fun res!2641551 () Bool)

(assert (=> b!6426982 (=> res!2641551 e!3899169)))

(declare-fun lt!2378313 () tuple2!66618)

(assert (=> b!6426982 (= res!2641551 (not (matchR!8513 (reg!16659 (regOne!33172 r!7292)) (_1!36612 lt!2378313))))))

(declare-fun b!6426983 () Bool)

(declare-fun e!3899186 () Bool)

(declare-fun lt!2378302 () Bool)

(declare-fun lt!2378330 () Bool)

(assert (=> b!6426983 (= e!3899186 (or (not lt!2378302) lt!2378330))))

(declare-fun setElem!43881 () Context!11428)

(declare-fun setNonEmpty!43881 () Bool)

(declare-fun e!3899167 () Bool)

(declare-fun tp!1783748 () Bool)

(declare-fun inv!84073 (Context!11428) Bool)

(assert (=> setNonEmpty!43881 (= setRes!43881 (and tp!1783748 (inv!84073 setElem!43881) e!3899167))))

(declare-fun setRest!43881 () (Set Context!11428))

(assert (=> setNonEmpty!43881 (= z!1189 (set.union (set.insert setElem!43881 (as set.empty (Set Context!11428))) setRest!43881))))

(declare-fun b!6426984 () Bool)

(declare-fun tp!1783746 () Bool)

(assert (=> b!6426984 (= e!3899170 (and (inv!84073 (h!71615 zl!343)) e!3899188 tp!1783746))))

(declare-fun b!6426985 () Bool)

(assert (=> b!6426985 (= e!3899171 e!3899176)))

(declare-fun res!2641544 () Bool)

(assert (=> b!6426985 (=> res!2641544 e!3899176)))

(declare-fun lt!2378332 () (Set Context!11428))

(assert (=> b!6426985 (= res!2641544 (not (= lt!2378332 lt!2378311)))))

(declare-fun lt!2378327 () Context!11428)

(declare-fun lt!2378293 () (Set Context!11428))

(assert (=> b!6426985 (= (flatMap!1835 lt!2378293 lambda!355338) (derivationStepZipperUp!1504 lt!2378327 (h!71613 s!2326)))))

(declare-fun lt!2378325 () Unit!158651)

(assert (=> b!6426985 (= lt!2378325 (lemmaFlatMapOnSingletonSet!1361 lt!2378293 lt!2378327 lambda!355338))))

(declare-fun lt!2378312 () (Set Context!11428))

(assert (=> b!6426985 (= lt!2378312 (derivationStepZipperUp!1504 lt!2378327 (h!71613 s!2326)))))

(declare-fun derivationStepZipper!2296 ((Set Context!11428) C!32930) (Set Context!11428))

(assert (=> b!6426985 (= lt!2378332 (derivationStepZipper!2296 lt!2378293 (h!71613 s!2326)))))

(assert (=> b!6426985 (= lt!2378293 (set.insert lt!2378327 (as set.empty (Set Context!11428))))))

(assert (=> b!6426985 (= lt!2378327 (Context!11429 (Cons!65166 (reg!16659 (regOne!33172 r!7292)) lt!2378309)))))

(assert (=> b!6426986 (= e!3899181 e!3899185)))

(declare-fun res!2641538 () Bool)

(assert (=> b!6426986 (=> res!2641538 e!3899185)))

(declare-fun lt!2378304 () Bool)

(assert (=> b!6426986 (= res!2641538 (or (not (= lt!2378302 lt!2378304)) (is-Nil!65165 s!2326)))))

(declare-fun Exists!3400 (Int) Bool)

(assert (=> b!6426986 (= (Exists!3400 lambda!355336) (Exists!3400 lambda!355337))))

(declare-fun lt!2378298 () Unit!158651)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1937 (Regex!16330 Regex!16330 List!65289) Unit!158651)

(assert (=> b!6426986 (= lt!2378298 (lemmaExistCutMatchRandMatchRSpecEquivalent!1937 (regOne!33172 r!7292) (regTwo!33172 r!7292) s!2326))))

(assert (=> b!6426986 (= lt!2378304 (Exists!3400 lambda!355336))))

(declare-datatypes ((Option!16221 0))(
  ( (None!16220) (Some!16220 (v!52393 tuple2!66618)) )
))
(declare-fun isDefined!12924 (Option!16221) Bool)

(declare-fun findConcatSeparation!2635 (Regex!16330 Regex!16330 List!65289 List!65289 List!65289) Option!16221)

(assert (=> b!6426986 (= lt!2378304 (isDefined!12924 (findConcatSeparation!2635 (regOne!33172 r!7292) (regTwo!33172 r!7292) Nil!65165 s!2326 s!2326)))))

(declare-fun lt!2378320 () Unit!158651)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2399 (Regex!16330 Regex!16330 List!65289) Unit!158651)

(assert (=> b!6426986 (= lt!2378320 (lemmaFindConcatSeparationEquivalentToExists!2399 (regOne!33172 r!7292) (regTwo!33172 r!7292) s!2326))))

(declare-fun b!6426987 () Bool)

(assert (=> b!6426987 (= e!3899174 (not e!3899181))))

(declare-fun res!2641560 () Bool)

(assert (=> b!6426987 (=> res!2641560 e!3899181)))

(assert (=> b!6426987 (= res!2641560 (not (is-Cons!65167 zl!343)))))

(assert (=> b!6426987 (= lt!2378302 lt!2378330)))

(declare-fun matchRSpec!3431 (Regex!16330 List!65289) Bool)

(assert (=> b!6426987 (= lt!2378330 (matchRSpec!3431 r!7292 s!2326))))

(assert (=> b!6426987 (= lt!2378302 (matchR!8513 r!7292 s!2326))))

(declare-fun lt!2378323 () Unit!158651)

(declare-fun mainMatchTheorem!3431 (Regex!16330 List!65289) Unit!158651)

(assert (=> b!6426987 (= lt!2378323 (mainMatchTheorem!3431 r!7292 s!2326))))

(declare-fun b!6426988 () Bool)

(declare-fun e!3899172 () Bool)

(assert (=> b!6426988 (= e!3899172 e!3899169)))

(declare-fun res!2641542 () Bool)

(assert (=> b!6426988 (=> res!2641542 e!3899169)))

(declare-fun lt!2378307 () List!65289)

(assert (=> b!6426988 (= res!2641542 (not (= lt!2378307 s!2326)))))

(declare-fun lt!2378294 () List!65289)

(declare-fun ++!14398 (List!65289 List!65289) List!65289)

(assert (=> b!6426988 (= lt!2378307 (++!14398 (_1!36612 lt!2378313) lt!2378294))))

(declare-fun lt!2378319 () List!65289)

(assert (=> b!6426988 (= lt!2378307 (++!14398 lt!2378319 (_2!36612 lt!2378308)))))

(assert (=> b!6426988 (= lt!2378294 (++!14398 (_2!36612 lt!2378313) (_2!36612 lt!2378308)))))

(declare-fun lt!2378316 () Unit!158651)

(declare-fun lemmaConcatAssociativity!2901 (List!65289 List!65289 List!65289) Unit!158651)

(assert (=> b!6426988 (= lt!2378316 (lemmaConcatAssociativity!2901 (_1!36612 lt!2378313) (_2!36612 lt!2378313) (_2!36612 lt!2378308)))))

(declare-fun e!3899173 () Bool)

(assert (=> b!6426989 (= e!3899173 e!3899183)))

(declare-fun res!2641541 () Bool)

(assert (=> b!6426989 (=> res!2641541 e!3899183)))

(assert (=> b!6426989 (= res!2641541 (not (= (++!14398 (_1!36612 lt!2378308) (_2!36612 lt!2378308)) s!2326)))))

(declare-fun lt!2378334 () Option!16221)

(declare-fun get!22579 (Option!16221) tuple2!66618)

(assert (=> b!6426989 (= lt!2378308 (get!22579 lt!2378334))))

(assert (=> b!6426989 (= (Exists!3400 lambda!355339) (Exists!3400 lambda!355340))))

(declare-fun lt!2378326 () Unit!158651)

(assert (=> b!6426989 (= lt!2378326 (lemmaExistCutMatchRandMatchRSpecEquivalent!1937 lt!2378328 (regTwo!33172 r!7292) s!2326))))

(assert (=> b!6426989 (= (isDefined!12924 lt!2378334) (Exists!3400 lambda!355339))))

(assert (=> b!6426989 (= lt!2378334 (findConcatSeparation!2635 lt!2378328 (regTwo!33172 r!7292) Nil!65165 s!2326 s!2326))))

(declare-fun lt!2378299 () Unit!158651)

(assert (=> b!6426989 (= lt!2378299 (lemmaFindConcatSeparationEquivalentToExists!2399 lt!2378328 (regTwo!33172 r!7292) s!2326))))

(declare-fun b!6426990 () Bool)

(declare-fun tp!1783741 () Bool)

(assert (=> b!6426990 (= e!3899167 tp!1783741)))

(declare-fun b!6426991 () Bool)

(declare-fun tp!1783740 () Bool)

(declare-fun tp!1783745 () Bool)

(assert (=> b!6426991 (= e!3899177 (and tp!1783740 tp!1783745))))

(declare-fun b!6426992 () Bool)

(declare-fun res!2641559 () Bool)

(assert (=> b!6426992 (=> res!2641559 e!3899176)))

(declare-fun matchZipper!2342 ((Set Context!11428) List!65289) Bool)

(assert (=> b!6426992 (= res!2641559 (not (= (matchZipper!2342 lt!2378293 s!2326) (matchZipper!2342 lt!2378332 (t!378905 s!2326)))))))

(declare-fun b!6426993 () Bool)

(declare-fun res!2641555 () Bool)

(assert (=> b!6426993 (=> res!2641555 e!3899181)))

(declare-fun generalisedUnion!2174 (List!65290) Regex!16330)

(declare-fun unfocusZipperList!1751 (List!65291) List!65290)

(assert (=> b!6426993 (= res!2641555 (not (= r!7292 (generalisedUnion!2174 (unfocusZipperList!1751 zl!343)))))))

(declare-fun b!6426994 () Bool)

(declare-fun res!2641548 () Bool)

(assert (=> b!6426994 (=> res!2641548 e!3899169)))

(assert (=> b!6426994 (= res!2641548 (not (matchR!8513 lt!2378328 (_2!36612 lt!2378313))))))

(declare-fun b!6426995 () Bool)

(declare-fun e!3899182 () Bool)

(assert (=> b!6426995 (= e!3899182 e!3899184)))

(declare-fun res!2641537 () Bool)

(assert (=> b!6426995 (=> res!2641537 e!3899184)))

(declare-fun lt!2378295 () Context!11428)

(assert (=> b!6426995 (= res!2641537 (not (= (unfocusZipper!2072 (Cons!65167 lt!2378295 Nil!65167)) (reg!16659 (regOne!33172 r!7292)))))))

(declare-fun lt!2378306 () (Set Context!11428))

(assert (=> b!6426995 (= (flatMap!1835 lt!2378306 lambda!355338) (derivationStepZipperUp!1504 lt!2378317 (h!71613 s!2326)))))

(declare-fun lt!2378310 () Unit!158651)

(assert (=> b!6426995 (= lt!2378310 (lemmaFlatMapOnSingletonSet!1361 lt!2378306 lt!2378317 lambda!355338))))

(declare-fun lt!2378305 () (Set Context!11428))

(assert (=> b!6426995 (= (flatMap!1835 lt!2378305 lambda!355338) (derivationStepZipperUp!1504 lt!2378295 (h!71613 s!2326)))))

(declare-fun lt!2378296 () Unit!158651)

(assert (=> b!6426995 (= lt!2378296 (lemmaFlatMapOnSingletonSet!1361 lt!2378305 lt!2378295 lambda!355338))))

(declare-fun lt!2378289 () (Set Context!11428))

(assert (=> b!6426995 (= lt!2378289 (derivationStepZipperUp!1504 lt!2378317 (h!71613 s!2326)))))

(declare-fun lt!2378318 () (Set Context!11428))

(assert (=> b!6426995 (= lt!2378318 (derivationStepZipperUp!1504 lt!2378295 (h!71613 s!2326)))))

(assert (=> b!6426995 (= lt!2378306 (set.insert lt!2378317 (as set.empty (Set Context!11428))))))

(assert (=> b!6426995 (= lt!2378305 (set.insert lt!2378295 (as set.empty (Set Context!11428))))))

(assert (=> b!6426995 (= lt!2378295 (Context!11429 (Cons!65166 (reg!16659 (regOne!33172 r!7292)) Nil!65166)))))

(declare-fun b!6426996 () Bool)

(declare-fun res!2641552 () Bool)

(assert (=> b!6426996 (=> (not res!2641552) (not e!3899178))))

(declare-fun toList!10114 ((Set Context!11428)) List!65291)

(assert (=> b!6426996 (= res!2641552 (= (toList!10114 z!1189) zl!343))))

(assert (=> b!6426997 (= e!3899183 e!3899172)))

(declare-fun res!2641547 () Bool)

(assert (=> b!6426997 (=> res!2641547 e!3899172)))

(assert (=> b!6426997 (= res!2641547 (not (= (_1!36612 lt!2378308) lt!2378319)))))

(assert (=> b!6426997 (= lt!2378319 (++!14398 (_1!36612 lt!2378313) (_2!36612 lt!2378313)))))

(declare-fun lt!2378292 () Option!16221)

(assert (=> b!6426997 (= lt!2378313 (get!22579 lt!2378292))))

(assert (=> b!6426997 (= (Exists!3400 lambda!355341) (Exists!3400 lambda!355343))))

(declare-fun lt!2378335 () Unit!158651)

(assert (=> b!6426997 (= lt!2378335 (lemmaExistCutMatchRandMatchRSpecEquivalent!1937 (reg!16659 (regOne!33172 r!7292)) lt!2378328 (_1!36612 lt!2378308)))))

(assert (=> b!6426997 (= (Exists!3400 lambda!355341) (Exists!3400 lambda!355342))))

(declare-fun lt!2378321 () Unit!158651)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!621 (Regex!16330 List!65289) Unit!158651)

(assert (=> b!6426997 (= lt!2378321 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!621 (reg!16659 (regOne!33172 r!7292)) (_1!36612 lt!2378308)))))

(assert (=> b!6426997 (= (isDefined!12924 lt!2378292) (Exists!3400 lambda!355341))))

(assert (=> b!6426997 (= lt!2378292 (findConcatSeparation!2635 (reg!16659 (regOne!33172 r!7292)) lt!2378328 Nil!65165 (_1!36612 lt!2378308) (_1!36612 lt!2378308)))))

(declare-fun lt!2378333 () Unit!158651)

(assert (=> b!6426997 (= lt!2378333 (lemmaFindConcatSeparationEquivalentToExists!2399 (reg!16659 (regOne!33172 r!7292)) lt!2378328 (_1!36612 lt!2378308)))))

(assert (=> b!6426997 (matchRSpec!3431 lt!2378328 (_1!36612 lt!2378308))))

(declare-fun lt!2378314 () Unit!158651)

(assert (=> b!6426997 (= lt!2378314 (mainMatchTheorem!3431 lt!2378328 (_1!36612 lt!2378308)))))

(declare-fun b!6426998 () Bool)

(declare-fun tp!1783743 () Bool)

(declare-fun tp!1783739 () Bool)

(assert (=> b!6426998 (= e!3899177 (and tp!1783743 tp!1783739))))

(declare-fun b!6426999 () Bool)

(declare-fun e!3899168 () Bool)

(assert (=> b!6426999 (= e!3899168 (matchZipper!2342 lt!2378291 (t!378905 s!2326)))))

(declare-fun b!6427000 () Bool)

(declare-fun Unit!158653 () Unit!158651)

(assert (=> b!6427000 (= e!3899187 Unit!158653)))

(declare-fun lt!2378301 () Unit!158651)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1161 ((Set Context!11428) (Set Context!11428) List!65289) Unit!158651)

(assert (=> b!6427000 (= lt!2378301 (lemmaZipperConcatMatchesSameAsBothZippers!1161 lt!2378297 lt!2378291 (t!378905 s!2326)))))

(declare-fun res!2641549 () Bool)

(assert (=> b!6427000 (= res!2641549 (matchZipper!2342 lt!2378297 (t!378905 s!2326)))))

(assert (=> b!6427000 (=> res!2641549 e!3899168)))

(assert (=> b!6427000 (= (matchZipper!2342 (set.union lt!2378297 lt!2378291) (t!378905 s!2326)) e!3899168)))

(declare-fun b!6427001 () Bool)

(declare-fun res!2641540 () Bool)

(assert (=> b!6427001 (=> res!2641540 e!3899180)))

(declare-fun e!3899189 () Bool)

(assert (=> b!6427001 (= res!2641540 e!3899189)))

(declare-fun res!2641564 () Bool)

(assert (=> b!6427001 (=> (not res!2641564) (not e!3899189))))

(assert (=> b!6427001 (= res!2641564 (is-Concat!25175 (regOne!33172 r!7292)))))

(declare-fun b!6427002 () Bool)

(declare-fun tp_is_empty!41913 () Bool)

(declare-fun tp!1783742 () Bool)

(assert (=> b!6427002 (= e!3899175 (and tp_is_empty!41913 tp!1783742))))

(declare-fun b!6427003 () Bool)

(declare-fun res!2641535 () Bool)

(assert (=> b!6427003 (=> res!2641535 e!3899183)))

(declare-fun isEmpty!37330 (List!65289) Bool)

(assert (=> b!6427003 (= res!2641535 (isEmpty!37330 (_1!36612 lt!2378308)))))

(declare-fun b!6427004 () Bool)

(declare-fun res!2641557 () Bool)

(assert (=> b!6427004 (=> res!2641557 e!3899185)))

(declare-fun isEmpty!37331 (List!65290) Bool)

(assert (=> b!6427004 (= res!2641557 (isEmpty!37331 (t!378906 (exprs!6214 (h!71615 zl!343)))))))

(declare-fun b!6427005 () Bool)

(assert (=> b!6427005 (= e!3899189 (nullable!6323 (regOne!33172 (regOne!33172 r!7292))))))

(declare-fun b!6427006 () Bool)

(assert (=> b!6427006 (= e!3899184 e!3899173)))

(declare-fun res!2641558 () Bool)

(assert (=> b!6427006 (=> res!2641558 e!3899173)))

(assert (=> b!6427006 (= res!2641558 (not lt!2378302))))

(assert (=> b!6427006 e!3899186))

(declare-fun res!2641546 () Bool)

(assert (=> b!6427006 (=> (not res!2641546) (not e!3899186))))

(declare-fun lt!2378331 () Regex!16330)

(assert (=> b!6427006 (= res!2641546 (= (matchR!8513 lt!2378331 s!2326) (matchRSpec!3431 lt!2378331 s!2326)))))

(declare-fun lt!2378303 () Unit!158651)

(assert (=> b!6427006 (= lt!2378303 (mainMatchTheorem!3431 lt!2378331 s!2326))))

(declare-fun b!6427007 () Bool)

(declare-fun res!2641543 () Bool)

(assert (=> b!6427007 (=> res!2641543 e!3899181)))

(declare-fun generalisedConcat!1927 (List!65290) Regex!16330)

(assert (=> b!6427007 (= res!2641543 (not (= r!7292 (generalisedConcat!1927 (exprs!6214 (h!71615 zl!343))))))))

(declare-fun b!6427008 () Bool)

(declare-fun Unit!158654 () Unit!158651)

(assert (=> b!6427008 (= e!3899187 Unit!158654)))

(declare-fun b!6427009 () Bool)

(assert (=> b!6427009 (= e!3899177 tp_is_empty!41913)))

(declare-fun b!6427010 () Bool)

(declare-fun res!2641554 () Bool)

(assert (=> b!6427010 (=> res!2641554 e!3899181)))

(assert (=> b!6427010 (= res!2641554 (or (is-EmptyExpr!16330 r!7292) (is-EmptyLang!16330 r!7292) (is-ElementMatch!16330 r!7292) (is-Union!16330 r!7292) (not (is-Concat!25175 r!7292))))))

(declare-fun b!6427011 () Bool)

(assert (=> b!6427011 (= e!3899179 e!3899182)))

(declare-fun res!2641561 () Bool)

(assert (=> b!6427011 (=> res!2641561 e!3899182)))

(assert (=> b!6427011 (= res!2641561 (not (= (unfocusZipper!2072 (Cons!65167 lt!2378327 Nil!65167)) lt!2378331)))))

(assert (=> b!6427011 (= lt!2378331 (Concat!25175 (reg!16659 (regOne!33172 r!7292)) lt!2378324))))

(assert (= (and start!634972 res!2641534) b!6426996))

(assert (= (and b!6426996 res!2641552) b!6426979))

(assert (= (and b!6426979 res!2641536) b!6426987))

(assert (= (and b!6426987 (not res!2641560)) b!6426981))

(assert (= (and b!6426981 (not res!2641532)) b!6427007))

(assert (= (and b!6427007 (not res!2641543)) b!6426977))

(assert (= (and b!6426977 (not res!2641539)) b!6426993))

(assert (= (and b!6426993 (not res!2641555)) b!6427010))

(assert (= (and b!6427010 (not res!2641554)) b!6426986))

(assert (= (and b!6426986 (not res!2641538)) b!6427004))

(assert (= (and b!6427004 (not res!2641557)) b!6426969))

(assert (= (and b!6426969 c!1174426) b!6427000))

(assert (= (and b!6426969 (not c!1174426)) b!6427008))

(assert (= (and b!6427000 (not res!2641549)) b!6426999))

(assert (= (and b!6426969 (not res!2641550)) b!6427001))

(assert (= (and b!6427001 res!2641564) b!6427005))

(assert (= (and b!6427001 (not res!2641540)) b!6426968))

(assert (= (and b!6426968 (not res!2641563)) b!6426973))

(assert (= (and b!6426973 (not res!2641562)) b!6426985))

(assert (= (and b!6426985 (not res!2641544)) b!6426992))

(assert (= (and b!6426992 (not res!2641559)) b!6426970))

(assert (= (and b!6426970 (not res!2641545)) b!6426971))

(assert (= (and b!6426971 (not res!2641531)) b!6427011))

(assert (= (and b!6427011 (not res!2641561)) b!6426995))

(assert (= (and b!6426995 (not res!2641537)) b!6426980))

(assert (= (and b!6426980 (not res!2641556)) b!6427006))

(assert (= (and b!6427006 res!2641546) b!6426983))

(assert (= (and b!6427006 (not res!2641558)) b!6426989))

(assert (= (and b!6426989 (not res!2641541)) b!6426978))

(assert (= (and b!6426978 (not res!2641533)) b!6426976))

(assert (= (and b!6426976 (not res!2641553)) b!6427003))

(assert (= (and b!6427003 (not res!2641535)) b!6426997))

(assert (= (and b!6426997 (not res!2641547)) b!6426988))

(assert (= (and b!6426988 (not res!2641542)) b!6426982))

(assert (= (and b!6426982 (not res!2641551)) b!6426994))

(assert (= (and b!6426994 (not res!2641548)) b!6426975))

(assert (= (and start!634972 (is-ElementMatch!16330 r!7292)) b!6427009))

(assert (= (and start!634972 (is-Concat!25175 r!7292)) b!6426998))

(assert (= (and start!634972 (is-Star!16330 r!7292)) b!6426974))

(assert (= (and start!634972 (is-Union!16330 r!7292)) b!6426991))

(assert (= (and start!634972 condSetEmpty!43881) setIsEmpty!43881))

(assert (= (and start!634972 (not condSetEmpty!43881)) setNonEmpty!43881))

(assert (= setNonEmpty!43881 b!6426990))

(assert (= b!6426984 b!6426972))

(assert (= (and start!634972 (is-Cons!65167 zl!343)) b!6426984))

(assert (= (and start!634972 (is-Cons!65165 s!2326)) b!6427002))

(declare-fun m!7220796 () Bool)

(assert (=> b!6427007 m!7220796))

(declare-fun m!7220798 () Bool)

(assert (=> b!6426992 m!7220798))

(declare-fun m!7220800 () Bool)

(assert (=> b!6426992 m!7220800))

(declare-fun m!7220802 () Bool)

(assert (=> b!6426984 m!7220802))

(declare-fun m!7220804 () Bool)

(assert (=> b!6426996 m!7220804))

(declare-fun m!7220806 () Bool)

(assert (=> setNonEmpty!43881 m!7220806))

(declare-fun m!7220808 () Bool)

(assert (=> b!6426986 m!7220808))

(declare-fun m!7220810 () Bool)

(assert (=> b!6426986 m!7220810))

(declare-fun m!7220812 () Bool)

(assert (=> b!6426986 m!7220812))

(assert (=> b!6426986 m!7220808))

(assert (=> b!6426986 m!7220810))

(declare-fun m!7220814 () Bool)

(assert (=> b!6426986 m!7220814))

(declare-fun m!7220816 () Bool)

(assert (=> b!6426986 m!7220816))

(declare-fun m!7220818 () Bool)

(assert (=> b!6426986 m!7220818))

(declare-fun m!7220820 () Bool)

(assert (=> b!6426995 m!7220820))

(declare-fun m!7220822 () Bool)

(assert (=> b!6426995 m!7220822))

(declare-fun m!7220824 () Bool)

(assert (=> b!6426995 m!7220824))

(declare-fun m!7220826 () Bool)

(assert (=> b!6426995 m!7220826))

(declare-fun m!7220828 () Bool)

(assert (=> b!6426995 m!7220828))

(declare-fun m!7220830 () Bool)

(assert (=> b!6426995 m!7220830))

(declare-fun m!7220832 () Bool)

(assert (=> b!6426995 m!7220832))

(declare-fun m!7220834 () Bool)

(assert (=> b!6426995 m!7220834))

(declare-fun m!7220836 () Bool)

(assert (=> b!6426995 m!7220836))

(declare-fun m!7220838 () Bool)

(assert (=> b!6426978 m!7220838))

(declare-fun m!7220840 () Bool)

(assert (=> b!6426993 m!7220840))

(assert (=> b!6426993 m!7220840))

(declare-fun m!7220842 () Bool)

(assert (=> b!6426993 m!7220842))

(declare-fun m!7220844 () Bool)

(assert (=> b!6427006 m!7220844))

(declare-fun m!7220846 () Bool)

(assert (=> b!6427006 m!7220846))

(declare-fun m!7220848 () Bool)

(assert (=> b!6427006 m!7220848))

(declare-fun m!7220850 () Bool)

(assert (=> b!6427005 m!7220850))

(declare-fun m!7220852 () Bool)

(assert (=> b!6426989 m!7220852))

(declare-fun m!7220854 () Bool)

(assert (=> b!6426989 m!7220854))

(declare-fun m!7220856 () Bool)

(assert (=> b!6426989 m!7220856))

(declare-fun m!7220858 () Bool)

(assert (=> b!6426989 m!7220858))

(assert (=> b!6426989 m!7220852))

(declare-fun m!7220860 () Bool)

(assert (=> b!6426989 m!7220860))

(declare-fun m!7220862 () Bool)

(assert (=> b!6426989 m!7220862))

(declare-fun m!7220864 () Bool)

(assert (=> b!6426989 m!7220864))

(declare-fun m!7220866 () Bool)

(assert (=> b!6426989 m!7220866))

(declare-fun m!7220868 () Bool)

(assert (=> b!6426982 m!7220868))

(declare-fun m!7220870 () Bool)

(assert (=> b!6426987 m!7220870))

(declare-fun m!7220872 () Bool)

(assert (=> b!6426987 m!7220872))

(declare-fun m!7220874 () Bool)

(assert (=> b!6426987 m!7220874))

(declare-fun m!7220876 () Bool)

(assert (=> b!6426994 m!7220876))

(declare-fun m!7220878 () Bool)

(assert (=> b!6426999 m!7220878))

(declare-fun m!7220880 () Bool)

(assert (=> b!6426997 m!7220880))

(declare-fun m!7220882 () Bool)

(assert (=> b!6426997 m!7220882))

(declare-fun m!7220884 () Bool)

(assert (=> b!6426997 m!7220884))

(declare-fun m!7220886 () Bool)

(assert (=> b!6426997 m!7220886))

(declare-fun m!7220888 () Bool)

(assert (=> b!6426997 m!7220888))

(declare-fun m!7220890 () Bool)

(assert (=> b!6426997 m!7220890))

(declare-fun m!7220892 () Bool)

(assert (=> b!6426997 m!7220892))

(declare-fun m!7220894 () Bool)

(assert (=> b!6426997 m!7220894))

(declare-fun m!7220896 () Bool)

(assert (=> b!6426997 m!7220896))

(declare-fun m!7220898 () Bool)

(assert (=> b!6426997 m!7220898))

(declare-fun m!7220900 () Bool)

(assert (=> b!6426997 m!7220900))

(declare-fun m!7220902 () Bool)

(assert (=> b!6426997 m!7220902))

(assert (=> b!6426997 m!7220896))

(assert (=> b!6426997 m!7220896))

(declare-fun m!7220904 () Bool)

(assert (=> b!6427011 m!7220904))

(declare-fun m!7220906 () Bool)

(assert (=> b!6426973 m!7220906))

(declare-fun m!7220908 () Bool)

(assert (=> b!6426988 m!7220908))

(declare-fun m!7220910 () Bool)

(assert (=> b!6426988 m!7220910))

(declare-fun m!7220912 () Bool)

(assert (=> b!6426988 m!7220912))

(declare-fun m!7220914 () Bool)

(assert (=> b!6426988 m!7220914))

(declare-fun m!7220916 () Bool)

(assert (=> b!6427003 m!7220916))

(declare-fun m!7220918 () Bool)

(assert (=> b!6426979 m!7220918))

(declare-fun m!7220920 () Bool)

(assert (=> b!6427004 m!7220920))

(declare-fun m!7220922 () Bool)

(assert (=> b!6426969 m!7220922))

(declare-fun m!7220924 () Bool)

(assert (=> b!6426969 m!7220924))

(declare-fun m!7220926 () Bool)

(assert (=> b!6426969 m!7220926))

(declare-fun m!7220928 () Bool)

(assert (=> b!6426969 m!7220928))

(declare-fun m!7220930 () Bool)

(assert (=> b!6426969 m!7220930))

(declare-fun m!7220932 () Bool)

(assert (=> b!6426969 m!7220932))

(declare-fun m!7220934 () Bool)

(assert (=> b!6426969 m!7220934))

(declare-fun m!7220936 () Bool)

(assert (=> b!6426985 m!7220936))

(declare-fun m!7220938 () Bool)

(assert (=> b!6426985 m!7220938))

(declare-fun m!7220940 () Bool)

(assert (=> b!6426985 m!7220940))

(declare-fun m!7220942 () Bool)

(assert (=> b!6426985 m!7220942))

(declare-fun m!7220944 () Bool)

(assert (=> b!6426985 m!7220944))

(declare-fun m!7220946 () Bool)

(assert (=> b!6426981 m!7220946))

(declare-fun m!7220948 () Bool)

(assert (=> b!6426980 m!7220948))

(declare-fun m!7220950 () Bool)

(assert (=> b!6426976 m!7220950))

(declare-fun m!7220952 () Bool)

(assert (=> start!634972 m!7220952))

(declare-fun m!7220954 () Bool)

(assert (=> b!6427000 m!7220954))

(declare-fun m!7220956 () Bool)

(assert (=> b!6427000 m!7220956))

(declare-fun m!7220958 () Bool)

(assert (=> b!6427000 m!7220958))

(declare-fun m!7220960 () Bool)

(assert (=> b!6426975 m!7220960))

(push 1)

(assert (not b!6426972))

(assert (not b!6426981))

(assert (not b!6427000))

(assert (not start!634972))

(assert (not b!6426996))

(assert (not b!6426987))

(assert tp_is_empty!41913)

(assert (not b!6426975))

(assert (not b!6426997))

(assert (not b!6426974))

(assert (not b!6427006))

(assert (not b!6426980))

(assert (not b!6427007))

(assert (not b!6426999))

(assert (not b!6426985))

(assert (not b!6426989))

(assert (not b!6426978))

(assert (not b!6426990))

(assert (not b!6426986))

(assert (not b!6426988))

(assert (not b!6426976))

(assert (not b!6426982))

(assert (not b!6426979))

(assert (not b!6426992))

(assert (not b!6426995))

(assert (not b!6426969))

(assert (not b!6426984))

(assert (not b!6426993))

(assert (not b!6427011))

(assert (not b!6426998))

(assert (not b!6426991))

(assert (not setNonEmpty!43881))

(assert (not b!6426994))

(assert (not b!6426973))

(assert (not b!6427005))

(assert (not b!6427002))

(assert (not b!6427003))

(assert (not b!6427004))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6427234 () Bool)

(declare-fun res!2641731 () Bool)

(declare-fun e!3899301 () Bool)

(assert (=> b!6427234 (=> res!2641731 e!3899301)))

(assert (=> b!6427234 (= res!2641731 (not (is-ElementMatch!16330 lt!2378328)))))

(declare-fun e!3899297 () Bool)

(assert (=> b!6427234 (= e!3899297 e!3899301)))

(declare-fun d!2014895 () Bool)

(declare-fun e!3899298 () Bool)

(assert (=> d!2014895 e!3899298))

(declare-fun c!1174449 () Bool)

(assert (=> d!2014895 (= c!1174449 (is-EmptyExpr!16330 lt!2378328))))

(declare-fun lt!2378479 () Bool)

(declare-fun e!3899296 () Bool)

(assert (=> d!2014895 (= lt!2378479 e!3899296)))

(declare-fun c!1174447 () Bool)

(assert (=> d!2014895 (= c!1174447 (isEmpty!37330 (_2!36612 lt!2378313)))))

(assert (=> d!2014895 (validRegex!8066 lt!2378328)))

(assert (=> d!2014895 (= (matchR!8513 lt!2378328 (_2!36612 lt!2378313)) lt!2378479)))

(declare-fun bm!552786 () Bool)

(declare-fun call!552791 () Bool)

(assert (=> bm!552786 (= call!552791 (isEmpty!37330 (_2!36612 lt!2378313)))))

(declare-fun b!6427235 () Bool)

(declare-fun res!2641736 () Bool)

(declare-fun e!3899295 () Bool)

(assert (=> b!6427235 (=> res!2641736 e!3899295)))

(declare-fun tail!12236 (List!65289) List!65289)

(assert (=> b!6427235 (= res!2641736 (not (isEmpty!37330 (tail!12236 (_2!36612 lt!2378313)))))))

(declare-fun b!6427236 () Bool)

(assert (=> b!6427236 (= e!3899298 e!3899297)))

(declare-fun c!1174448 () Bool)

(assert (=> b!6427236 (= c!1174448 (is-EmptyLang!16330 lt!2378328))))

(declare-fun b!6427237 () Bool)

(declare-fun e!3899300 () Bool)

(declare-fun head!13151 (List!65289) C!32930)

(assert (=> b!6427237 (= e!3899300 (= (head!13151 (_2!36612 lt!2378313)) (c!1174427 lt!2378328)))))

(declare-fun b!6427238 () Bool)

(assert (=> b!6427238 (= e!3899297 (not lt!2378479))))

(declare-fun b!6427239 () Bool)

(assert (=> b!6427239 (= e!3899296 (nullable!6323 lt!2378328))))

(declare-fun b!6427240 () Bool)

(declare-fun e!3899299 () Bool)

(assert (=> b!6427240 (= e!3899299 e!3899295)))

(declare-fun res!2641734 () Bool)

(assert (=> b!6427240 (=> res!2641734 e!3899295)))

(assert (=> b!6427240 (= res!2641734 call!552791)))

(declare-fun b!6427241 () Bool)

(declare-fun derivativeStep!5034 (Regex!16330 C!32930) Regex!16330)

(assert (=> b!6427241 (= e!3899296 (matchR!8513 (derivativeStep!5034 lt!2378328 (head!13151 (_2!36612 lt!2378313))) (tail!12236 (_2!36612 lt!2378313))))))

(declare-fun b!6427242 () Bool)

(assert (=> b!6427242 (= e!3899295 (not (= (head!13151 (_2!36612 lt!2378313)) (c!1174427 lt!2378328))))))

(declare-fun b!6427243 () Bool)

(assert (=> b!6427243 (= e!3899301 e!3899299)))

(declare-fun res!2641729 () Bool)

(assert (=> b!6427243 (=> (not res!2641729) (not e!3899299))))

(assert (=> b!6427243 (= res!2641729 (not lt!2378479))))

(declare-fun b!6427244 () Bool)

(declare-fun res!2641735 () Bool)

(assert (=> b!6427244 (=> (not res!2641735) (not e!3899300))))

(assert (=> b!6427244 (= res!2641735 (isEmpty!37330 (tail!12236 (_2!36612 lt!2378313))))))

(declare-fun b!6427245 () Bool)

(assert (=> b!6427245 (= e!3899298 (= lt!2378479 call!552791))))

(declare-fun b!6427246 () Bool)

(declare-fun res!2641733 () Bool)

(assert (=> b!6427246 (=> (not res!2641733) (not e!3899300))))

(assert (=> b!6427246 (= res!2641733 (not call!552791))))

(declare-fun b!6427247 () Bool)

(declare-fun res!2641732 () Bool)

(assert (=> b!6427247 (=> res!2641732 e!3899301)))

(assert (=> b!6427247 (= res!2641732 e!3899300)))

(declare-fun res!2641730 () Bool)

(assert (=> b!6427247 (=> (not res!2641730) (not e!3899300))))

(assert (=> b!6427247 (= res!2641730 lt!2378479)))

(assert (= (and d!2014895 c!1174447) b!6427239))

(assert (= (and d!2014895 (not c!1174447)) b!6427241))

(assert (= (and d!2014895 c!1174449) b!6427245))

(assert (= (and d!2014895 (not c!1174449)) b!6427236))

(assert (= (and b!6427236 c!1174448) b!6427238))

(assert (= (and b!6427236 (not c!1174448)) b!6427234))

(assert (= (and b!6427234 (not res!2641731)) b!6427247))

(assert (= (and b!6427247 res!2641730) b!6427246))

(assert (= (and b!6427246 res!2641733) b!6427244))

(assert (= (and b!6427244 res!2641735) b!6427237))

(assert (= (and b!6427247 (not res!2641732)) b!6427243))

(assert (= (and b!6427243 res!2641729) b!6427240))

(assert (= (and b!6427240 (not res!2641734)) b!6427235))

(assert (= (and b!6427235 (not res!2641736)) b!6427242))

(assert (= (or b!6427245 b!6427240 b!6427246) bm!552786))

(declare-fun m!7221128 () Bool)

(assert (=> d!2014895 m!7221128))

(assert (=> d!2014895 m!7220960))

(declare-fun m!7221130 () Bool)

(assert (=> b!6427242 m!7221130))

(declare-fun m!7221132 () Bool)

(assert (=> b!6427244 m!7221132))

(assert (=> b!6427244 m!7221132))

(declare-fun m!7221134 () Bool)

(assert (=> b!6427244 m!7221134))

(declare-fun m!7221136 () Bool)

(assert (=> b!6427239 m!7221136))

(assert (=> b!6427237 m!7221130))

(assert (=> b!6427235 m!7221132))

(assert (=> b!6427235 m!7221132))

(assert (=> b!6427235 m!7221134))

(assert (=> b!6427241 m!7221130))

(assert (=> b!6427241 m!7221130))

(declare-fun m!7221138 () Bool)

(assert (=> b!6427241 m!7221138))

(assert (=> b!6427241 m!7221132))

(assert (=> b!6427241 m!7221138))

(assert (=> b!6427241 m!7221132))

(declare-fun m!7221140 () Bool)

(assert (=> b!6427241 m!7221140))

(assert (=> bm!552786 m!7221128))

(assert (=> b!6426994 d!2014895))

(declare-fun b!6427270 () Bool)

(declare-fun e!3899316 () (Set Context!11428))

(declare-fun call!552809 () (Set Context!11428))

(assert (=> b!6427270 (= e!3899316 call!552809)))

(declare-fun b!6427271 () Bool)

(declare-fun c!1174463 () Bool)

(assert (=> b!6427271 (= c!1174463 (is-Star!16330 (reg!16659 (regOne!33172 r!7292))))))

(declare-fun e!3899315 () (Set Context!11428))

(assert (=> b!6427271 (= e!3899316 e!3899315)))

(declare-fun bm!552799 () Bool)

(declare-fun c!1174460 () Bool)

(declare-fun c!1174462 () Bool)

(declare-fun call!552807 () List!65290)

(declare-fun $colon$colon!2191 (List!65290 Regex!16330) List!65290)

(assert (=> bm!552799 (= call!552807 ($colon$colon!2191 (exprs!6214 lt!2378317) (ite (or c!1174460 c!1174462) (regTwo!33172 (reg!16659 (regOne!33172 r!7292))) (reg!16659 (regOne!33172 r!7292)))))))

(declare-fun bm!552800 () Bool)

(declare-fun call!552808 () (Set Context!11428))

(assert (=> bm!552800 (= call!552809 call!552808)))

(declare-fun b!6427272 () Bool)

(declare-fun e!3899319 () (Set Context!11428))

(declare-fun call!552804 () (Set Context!11428))

(assert (=> b!6427272 (= e!3899319 (set.union call!552804 call!552808))))

(declare-fun b!6427273 () Bool)

(declare-fun e!3899314 () (Set Context!11428))

(declare-fun e!3899318 () (Set Context!11428))

(assert (=> b!6427273 (= e!3899314 e!3899318)))

(declare-fun c!1174464 () Bool)

(assert (=> b!6427273 (= c!1174464 (is-Union!16330 (reg!16659 (regOne!33172 r!7292))))))

(declare-fun b!6427274 () Bool)

(declare-fun e!3899317 () Bool)

(assert (=> b!6427274 (= e!3899317 (nullable!6323 (regOne!33172 (reg!16659 (regOne!33172 r!7292)))))))

(declare-fun b!6427275 () Bool)

(assert (=> b!6427275 (= e!3899315 call!552809)))

(declare-fun b!6427276 () Bool)

(assert (=> b!6427276 (= e!3899315 (as set.empty (Set Context!11428)))))

(declare-fun b!6427277 () Bool)

(assert (=> b!6427277 (= c!1174460 e!3899317)))

(declare-fun res!2641739 () Bool)

(assert (=> b!6427277 (=> (not res!2641739) (not e!3899317))))

(assert (=> b!6427277 (= res!2641739 (is-Concat!25175 (reg!16659 (regOne!33172 r!7292))))))

(assert (=> b!6427277 (= e!3899318 e!3899319)))

(declare-fun bm!552802 () Bool)

(declare-fun call!552805 () (Set Context!11428))

(assert (=> bm!552802 (= call!552808 call!552805)))

(declare-fun b!6427278 () Bool)

(assert (=> b!6427278 (= e!3899314 (set.insert lt!2378317 (as set.empty (Set Context!11428))))))

(declare-fun bm!552803 () Bool)

(declare-fun call!552806 () List!65290)

(assert (=> bm!552803 (= call!552806 call!552807)))

(declare-fun bm!552804 () Bool)

(assert (=> bm!552804 (= call!552805 (derivationStepZipperDown!1578 (ite c!1174464 (regTwo!33173 (reg!16659 (regOne!33172 r!7292))) (ite c!1174460 (regTwo!33172 (reg!16659 (regOne!33172 r!7292))) (ite c!1174462 (regOne!33172 (reg!16659 (regOne!33172 r!7292))) (reg!16659 (reg!16659 (regOne!33172 r!7292)))))) (ite (or c!1174464 c!1174460) lt!2378317 (Context!11429 call!552806)) (h!71613 s!2326)))))

(declare-fun b!6427279 () Bool)

(assert (=> b!6427279 (= e!3899319 e!3899316)))

(assert (=> b!6427279 (= c!1174462 (is-Concat!25175 (reg!16659 (regOne!33172 r!7292))))))

(declare-fun b!6427280 () Bool)

(assert (=> b!6427280 (= e!3899318 (set.union call!552804 call!552805))))

(declare-fun d!2014897 () Bool)

(declare-fun c!1174461 () Bool)

(assert (=> d!2014897 (= c!1174461 (and (is-ElementMatch!16330 (reg!16659 (regOne!33172 r!7292))) (= (c!1174427 (reg!16659 (regOne!33172 r!7292))) (h!71613 s!2326))))))

(assert (=> d!2014897 (= (derivationStepZipperDown!1578 (reg!16659 (regOne!33172 r!7292)) lt!2378317 (h!71613 s!2326)) e!3899314)))

(declare-fun bm!552801 () Bool)

(assert (=> bm!552801 (= call!552804 (derivationStepZipperDown!1578 (ite c!1174464 (regOne!33173 (reg!16659 (regOne!33172 r!7292))) (regOne!33172 (reg!16659 (regOne!33172 r!7292)))) (ite c!1174464 lt!2378317 (Context!11429 call!552807)) (h!71613 s!2326)))))

(assert (= (and d!2014897 c!1174461) b!6427278))

(assert (= (and d!2014897 (not c!1174461)) b!6427273))

(assert (= (and b!6427273 c!1174464) b!6427280))

(assert (= (and b!6427273 (not c!1174464)) b!6427277))

(assert (= (and b!6427277 res!2641739) b!6427274))

(assert (= (and b!6427277 c!1174460) b!6427272))

(assert (= (and b!6427277 (not c!1174460)) b!6427279))

(assert (= (and b!6427279 c!1174462) b!6427270))

(assert (= (and b!6427279 (not c!1174462)) b!6427271))

(assert (= (and b!6427271 c!1174463) b!6427275))

(assert (= (and b!6427271 (not c!1174463)) b!6427276))

(assert (= (or b!6427270 b!6427275) bm!552803))

(assert (= (or b!6427270 b!6427275) bm!552800))

(assert (= (or b!6427272 bm!552803) bm!552799))

(assert (= (or b!6427272 bm!552800) bm!552802))

(assert (= (or b!6427280 bm!552802) bm!552804))

(assert (= (or b!6427280 b!6427272) bm!552801))

(declare-fun m!7221142 () Bool)

(assert (=> b!6427274 m!7221142))

(assert (=> b!6427278 m!7220830))

(declare-fun m!7221144 () Bool)

(assert (=> bm!552804 m!7221144))

(declare-fun m!7221146 () Bool)

(assert (=> bm!552799 m!7221146))

(declare-fun m!7221148 () Bool)

(assert (=> bm!552801 m!7221148))

(assert (=> b!6426973 d!2014897))

(declare-fun b!6427301 () Bool)

(declare-fun e!3899335 () Regex!16330)

(assert (=> b!6427301 (= e!3899335 (h!71614 (unfocusZipperList!1751 zl!343)))))

(declare-fun b!6427302 () Bool)

(declare-fun e!3899337 () Bool)

(declare-fun e!3899332 () Bool)

(assert (=> b!6427302 (= e!3899337 e!3899332)))

(declare-fun c!1174474 () Bool)

(declare-fun tail!12237 (List!65290) List!65290)

(assert (=> b!6427302 (= c!1174474 (isEmpty!37331 (tail!12237 (unfocusZipperList!1751 zl!343))))))

(declare-fun b!6427303 () Bool)

(declare-fun lt!2378482 () Regex!16330)

(declare-fun isUnion!1168 (Regex!16330) Bool)

(assert (=> b!6427303 (= e!3899332 (isUnion!1168 lt!2378482))))

(declare-fun b!6427304 () Bool)

(declare-fun e!3899333 () Regex!16330)

(assert (=> b!6427304 (= e!3899333 EmptyLang!16330)))

(declare-fun b!6427305 () Bool)

(assert (=> b!6427305 (= e!3899335 e!3899333)))

(declare-fun c!1174475 () Bool)

(assert (=> b!6427305 (= c!1174475 (is-Cons!65166 (unfocusZipperList!1751 zl!343)))))

(declare-fun b!6427306 () Bool)

(declare-fun head!13152 (List!65290) Regex!16330)

(assert (=> b!6427306 (= e!3899332 (= lt!2378482 (head!13152 (unfocusZipperList!1751 zl!343))))))

(declare-fun b!6427307 () Bool)

(declare-fun isEmptyLang!1738 (Regex!16330) Bool)

(assert (=> b!6427307 (= e!3899337 (isEmptyLang!1738 lt!2378482))))

(declare-fun d!2014899 () Bool)

(declare-fun e!3899336 () Bool)

(assert (=> d!2014899 e!3899336))

(declare-fun res!2641745 () Bool)

(assert (=> d!2014899 (=> (not res!2641745) (not e!3899336))))

(assert (=> d!2014899 (= res!2641745 (validRegex!8066 lt!2378482))))

(assert (=> d!2014899 (= lt!2378482 e!3899335)))

(declare-fun c!1174473 () Bool)

(declare-fun e!3899334 () Bool)

(assert (=> d!2014899 (= c!1174473 e!3899334)))

(declare-fun res!2641744 () Bool)

(assert (=> d!2014899 (=> (not res!2641744) (not e!3899334))))

(assert (=> d!2014899 (= res!2641744 (is-Cons!65166 (unfocusZipperList!1751 zl!343)))))

(declare-fun lambda!355384 () Int)

(declare-fun forall!15520 (List!65290 Int) Bool)

(assert (=> d!2014899 (forall!15520 (unfocusZipperList!1751 zl!343) lambda!355384)))

(assert (=> d!2014899 (= (generalisedUnion!2174 (unfocusZipperList!1751 zl!343)) lt!2378482)))

(declare-fun b!6427308 () Bool)

(assert (=> b!6427308 (= e!3899333 (Union!16330 (h!71614 (unfocusZipperList!1751 zl!343)) (generalisedUnion!2174 (t!378906 (unfocusZipperList!1751 zl!343)))))))

(declare-fun b!6427309 () Bool)

(assert (=> b!6427309 (= e!3899334 (isEmpty!37331 (t!378906 (unfocusZipperList!1751 zl!343))))))

(declare-fun b!6427310 () Bool)

(assert (=> b!6427310 (= e!3899336 e!3899337)))

(declare-fun c!1174476 () Bool)

(assert (=> b!6427310 (= c!1174476 (isEmpty!37331 (unfocusZipperList!1751 zl!343)))))

(assert (= (and d!2014899 res!2641744) b!6427309))

(assert (= (and d!2014899 c!1174473) b!6427301))

(assert (= (and d!2014899 (not c!1174473)) b!6427305))

(assert (= (and b!6427305 c!1174475) b!6427308))

(assert (= (and b!6427305 (not c!1174475)) b!6427304))

(assert (= (and d!2014899 res!2641745) b!6427310))

(assert (= (and b!6427310 c!1174476) b!6427307))

(assert (= (and b!6427310 (not c!1174476)) b!6427302))

(assert (= (and b!6427302 c!1174474) b!6427306))

(assert (= (and b!6427302 (not c!1174474)) b!6427303))

(declare-fun m!7221150 () Bool)

(assert (=> b!6427303 m!7221150))

(assert (=> b!6427306 m!7220840))

(declare-fun m!7221152 () Bool)

(assert (=> b!6427306 m!7221152))

(declare-fun m!7221154 () Bool)

(assert (=> b!6427308 m!7221154))

(declare-fun m!7221156 () Bool)

(assert (=> b!6427309 m!7221156))

(assert (=> b!6427302 m!7220840))

(declare-fun m!7221158 () Bool)

(assert (=> b!6427302 m!7221158))

(assert (=> b!6427302 m!7221158))

(declare-fun m!7221160 () Bool)

(assert (=> b!6427302 m!7221160))

(assert (=> b!6427310 m!7220840))

(declare-fun m!7221162 () Bool)

(assert (=> b!6427310 m!7221162))

(declare-fun m!7221164 () Bool)

(assert (=> b!6427307 m!7221164))

(declare-fun m!7221166 () Bool)

(assert (=> d!2014899 m!7221166))

(assert (=> d!2014899 m!7220840))

(declare-fun m!7221168 () Bool)

(assert (=> d!2014899 m!7221168))

(assert (=> b!6426993 d!2014899))

(declare-fun bs!1616574 () Bool)

(declare-fun d!2014905 () Bool)

(assert (= bs!1616574 (and d!2014905 d!2014899)))

(declare-fun lambda!355387 () Int)

(assert (=> bs!1616574 (= lambda!355387 lambda!355384)))

(declare-fun lt!2378485 () List!65290)

(assert (=> d!2014905 (forall!15520 lt!2378485 lambda!355387)))

(declare-fun e!3899340 () List!65290)

(assert (=> d!2014905 (= lt!2378485 e!3899340)))

(declare-fun c!1174479 () Bool)

(assert (=> d!2014905 (= c!1174479 (is-Cons!65167 zl!343))))

(assert (=> d!2014905 (= (unfocusZipperList!1751 zl!343) lt!2378485)))

(declare-fun b!6427315 () Bool)

(assert (=> b!6427315 (= e!3899340 (Cons!65166 (generalisedConcat!1927 (exprs!6214 (h!71615 zl!343))) (unfocusZipperList!1751 (t!378907 zl!343))))))

(declare-fun b!6427316 () Bool)

(assert (=> b!6427316 (= e!3899340 Nil!65166)))

(assert (= (and d!2014905 c!1174479) b!6427315))

(assert (= (and d!2014905 (not c!1174479)) b!6427316))

(declare-fun m!7221170 () Bool)

(assert (=> d!2014905 m!7221170))

(assert (=> b!6427315 m!7220796))

(declare-fun m!7221172 () Bool)

(assert (=> b!6427315 m!7221172))

(assert (=> b!6426993 d!2014905))

(declare-fun b!6427363 () Bool)

(declare-fun e!3899369 () Bool)

(declare-fun e!3899371 () Bool)

(assert (=> b!6427363 (= e!3899369 e!3899371)))

(declare-fun c!1174490 () Bool)

(assert (=> b!6427363 (= c!1174490 (is-Union!16330 lt!2378328))))

(declare-fun b!6427364 () Bool)

(declare-fun e!3899373 () Bool)

(declare-fun call!552819 () Bool)

(assert (=> b!6427364 (= e!3899373 call!552819)))

(declare-fun b!6427365 () Bool)

(declare-fun e!3899370 () Bool)

(assert (=> b!6427365 (= e!3899369 e!3899370)))

(declare-fun res!2641774 () Bool)

(assert (=> b!6427365 (= res!2641774 (not (nullable!6323 (reg!16659 lt!2378328))))))

(assert (=> b!6427365 (=> (not res!2641774) (not e!3899370))))

(declare-fun bm!552813 () Bool)

(declare-fun call!552820 () Bool)

(assert (=> bm!552813 (= call!552820 (validRegex!8066 (ite c!1174490 (regOne!33173 lt!2378328) (regOne!33172 lt!2378328))))))

(declare-fun bm!552814 () Bool)

(declare-fun call!552818 () Bool)

(assert (=> bm!552814 (= call!552819 call!552818)))

(declare-fun d!2014907 () Bool)

(declare-fun res!2641775 () Bool)

(declare-fun e!3899372 () Bool)

(assert (=> d!2014907 (=> res!2641775 e!3899372)))

(assert (=> d!2014907 (= res!2641775 (is-ElementMatch!16330 lt!2378328))))

(assert (=> d!2014907 (= (validRegex!8066 lt!2378328) e!3899372)))

(declare-fun b!6427366 () Bool)

(declare-fun res!2641776 () Bool)

(assert (=> b!6427366 (=> (not res!2641776) (not e!3899373))))

(assert (=> b!6427366 (= res!2641776 call!552820)))

(assert (=> b!6427366 (= e!3899371 e!3899373)))

(declare-fun b!6427367 () Bool)

(assert (=> b!6427367 (= e!3899370 call!552818)))

(declare-fun bm!552815 () Bool)

(declare-fun c!1174491 () Bool)

(assert (=> bm!552815 (= call!552818 (validRegex!8066 (ite c!1174491 (reg!16659 lt!2378328) (ite c!1174490 (regTwo!33173 lt!2378328) (regTwo!33172 lt!2378328)))))))

(declare-fun b!6427368 () Bool)

(assert (=> b!6427368 (= e!3899372 e!3899369)))

(assert (=> b!6427368 (= c!1174491 (is-Star!16330 lt!2378328))))

(declare-fun b!6427369 () Bool)

(declare-fun e!3899374 () Bool)

(assert (=> b!6427369 (= e!3899374 call!552819)))

(declare-fun b!6427370 () Bool)

(declare-fun e!3899375 () Bool)

(assert (=> b!6427370 (= e!3899375 e!3899374)))

(declare-fun res!2641773 () Bool)

(assert (=> b!6427370 (=> (not res!2641773) (not e!3899374))))

(assert (=> b!6427370 (= res!2641773 call!552820)))

(declare-fun b!6427371 () Bool)

(declare-fun res!2641772 () Bool)

(assert (=> b!6427371 (=> res!2641772 e!3899375)))

(assert (=> b!6427371 (= res!2641772 (not (is-Concat!25175 lt!2378328)))))

(assert (=> b!6427371 (= e!3899371 e!3899375)))

(assert (= (and d!2014907 (not res!2641775)) b!6427368))

(assert (= (and b!6427368 c!1174491) b!6427365))

(assert (= (and b!6427368 (not c!1174491)) b!6427363))

(assert (= (and b!6427365 res!2641774) b!6427367))

(assert (= (and b!6427363 c!1174490) b!6427366))

(assert (= (and b!6427363 (not c!1174490)) b!6427371))

(assert (= (and b!6427366 res!2641776) b!6427364))

(assert (= (and b!6427371 (not res!2641772)) b!6427370))

(assert (= (and b!6427370 res!2641773) b!6427369))

(assert (= (or b!6427364 b!6427369) bm!552814))

(assert (= (or b!6427366 b!6427370) bm!552813))

(assert (= (or b!6427367 bm!552814) bm!552815))

(declare-fun m!7221174 () Bool)

(assert (=> b!6427365 m!7221174))

(declare-fun m!7221176 () Bool)

(assert (=> bm!552813 m!7221176))

(declare-fun m!7221178 () Bool)

(assert (=> bm!552815 m!7221178))

(assert (=> b!6426975 d!2014907))

(declare-fun b!6427383 () Bool)

(declare-fun e!3899382 () (Set Context!11428))

(declare-fun call!552823 () (Set Context!11428))

(assert (=> b!6427383 (= e!3899382 (set.union call!552823 (derivationStepZipperUp!1504 (Context!11429 (t!378906 (exprs!6214 lt!2378317))) (h!71613 s!2326))))))

(declare-fun b!6427384 () Bool)

(declare-fun e!3899383 () (Set Context!11428))

(assert (=> b!6427384 (= e!3899383 call!552823)))

(declare-fun b!6427385 () Bool)

(declare-fun e!3899384 () Bool)

(assert (=> b!6427385 (= e!3899384 (nullable!6323 (h!71614 (exprs!6214 lt!2378317))))))

(declare-fun b!6427386 () Bool)

(assert (=> b!6427386 (= e!3899382 e!3899383)))

(declare-fun c!1174497 () Bool)

(assert (=> b!6427386 (= c!1174497 (is-Cons!65166 (exprs!6214 lt!2378317)))))

(declare-fun bm!552818 () Bool)

(assert (=> bm!552818 (= call!552823 (derivationStepZipperDown!1578 (h!71614 (exprs!6214 lt!2378317)) (Context!11429 (t!378906 (exprs!6214 lt!2378317))) (h!71613 s!2326)))))

(declare-fun d!2014909 () Bool)

(declare-fun c!1174496 () Bool)

(assert (=> d!2014909 (= c!1174496 e!3899384)))

(declare-fun res!2641779 () Bool)

(assert (=> d!2014909 (=> (not res!2641779) (not e!3899384))))

(assert (=> d!2014909 (= res!2641779 (is-Cons!65166 (exprs!6214 lt!2378317)))))

(assert (=> d!2014909 (= (derivationStepZipperUp!1504 lt!2378317 (h!71613 s!2326)) e!3899382)))

(declare-fun b!6427382 () Bool)

(assert (=> b!6427382 (= e!3899383 (as set.empty (Set Context!11428)))))

(assert (= (and d!2014909 res!2641779) b!6427385))

(assert (= (and d!2014909 c!1174496) b!6427383))

(assert (= (and d!2014909 (not c!1174496)) b!6427386))

(assert (= (and b!6427386 c!1174497) b!6427384))

(assert (= (and b!6427386 (not c!1174497)) b!6427382))

(assert (= (or b!6427383 b!6427384) bm!552818))

(declare-fun m!7221180 () Bool)

(assert (=> b!6427383 m!7221180))

(declare-fun m!7221182 () Bool)

(assert (=> b!6427385 m!7221182))

(declare-fun m!7221184 () Bool)

(assert (=> bm!552818 m!7221184))

(assert (=> b!6426995 d!2014909))

(declare-fun d!2014911 () Bool)

(declare-fun dynLambda!25887 (Int Context!11428) (Set Context!11428))

(assert (=> d!2014911 (= (flatMap!1835 lt!2378305 lambda!355338) (dynLambda!25887 lambda!355338 lt!2378295))))

(declare-fun lt!2378491 () Unit!158651)

(declare-fun choose!47768 ((Set Context!11428) Context!11428 Int) Unit!158651)

(assert (=> d!2014911 (= lt!2378491 (choose!47768 lt!2378305 lt!2378295 lambda!355338))))

(assert (=> d!2014911 (= lt!2378305 (set.insert lt!2378295 (as set.empty (Set Context!11428))))))

(assert (=> d!2014911 (= (lemmaFlatMapOnSingletonSet!1361 lt!2378305 lt!2378295 lambda!355338) lt!2378491)))

(declare-fun b_lambda!244245 () Bool)

(assert (=> (not b_lambda!244245) (not d!2014911)))

(declare-fun bs!1616575 () Bool)

(assert (= bs!1616575 d!2014911))

(assert (=> bs!1616575 m!7220822))

(declare-fun m!7221202 () Bool)

(assert (=> bs!1616575 m!7221202))

(declare-fun m!7221204 () Bool)

(assert (=> bs!1616575 m!7221204))

(assert (=> bs!1616575 m!7220828))

(assert (=> b!6426995 d!2014911))

(declare-fun d!2014915 () Bool)

(assert (=> d!2014915 (= (flatMap!1835 lt!2378306 lambda!355338) (dynLambda!25887 lambda!355338 lt!2378317))))

(declare-fun lt!2378492 () Unit!158651)

(assert (=> d!2014915 (= lt!2378492 (choose!47768 lt!2378306 lt!2378317 lambda!355338))))

(assert (=> d!2014915 (= lt!2378306 (set.insert lt!2378317 (as set.empty (Set Context!11428))))))

(assert (=> d!2014915 (= (lemmaFlatMapOnSingletonSet!1361 lt!2378306 lt!2378317 lambda!355338) lt!2378492)))

(declare-fun b_lambda!244247 () Bool)

(assert (=> (not b_lambda!244247) (not d!2014915)))

(declare-fun bs!1616576 () Bool)

(assert (= bs!1616576 d!2014915))

(assert (=> bs!1616576 m!7220832))

(declare-fun m!7221206 () Bool)

(assert (=> bs!1616576 m!7221206))

(declare-fun m!7221208 () Bool)

(assert (=> bs!1616576 m!7221208))

(assert (=> bs!1616576 m!7220830))

(assert (=> b!6426995 d!2014915))

(declare-fun d!2014917 () Bool)

(declare-fun lt!2378495 () Regex!16330)

(assert (=> d!2014917 (validRegex!8066 lt!2378495)))

(assert (=> d!2014917 (= lt!2378495 (generalisedUnion!2174 (unfocusZipperList!1751 (Cons!65167 lt!2378295 Nil!65167))))))

(assert (=> d!2014917 (= (unfocusZipper!2072 (Cons!65167 lt!2378295 Nil!65167)) lt!2378495)))

(declare-fun bs!1616577 () Bool)

(assert (= bs!1616577 d!2014917))

(declare-fun m!7221210 () Bool)

(assert (=> bs!1616577 m!7221210))

(declare-fun m!7221212 () Bool)

(assert (=> bs!1616577 m!7221212))

(assert (=> bs!1616577 m!7221212))

(declare-fun m!7221214 () Bool)

(assert (=> bs!1616577 m!7221214))

(assert (=> b!6426995 d!2014917))

(declare-fun call!552825 () (Set Context!11428))

(declare-fun e!3899392 () (Set Context!11428))

(declare-fun b!6427402 () Bool)

(assert (=> b!6427402 (= e!3899392 (set.union call!552825 (derivationStepZipperUp!1504 (Context!11429 (t!378906 (exprs!6214 lt!2378295))) (h!71613 s!2326))))))

(declare-fun b!6427403 () Bool)

(declare-fun e!3899393 () (Set Context!11428))

(assert (=> b!6427403 (= e!3899393 call!552825)))

(declare-fun b!6427404 () Bool)

(declare-fun e!3899394 () Bool)

(assert (=> b!6427404 (= e!3899394 (nullable!6323 (h!71614 (exprs!6214 lt!2378295))))))

(declare-fun b!6427405 () Bool)

(assert (=> b!6427405 (= e!3899392 e!3899393)))

(declare-fun c!1174502 () Bool)

(assert (=> b!6427405 (= c!1174502 (is-Cons!65166 (exprs!6214 lt!2378295)))))

(declare-fun bm!552820 () Bool)

(assert (=> bm!552820 (= call!552825 (derivationStepZipperDown!1578 (h!71614 (exprs!6214 lt!2378295)) (Context!11429 (t!378906 (exprs!6214 lt!2378295))) (h!71613 s!2326)))))

(declare-fun d!2014919 () Bool)

(declare-fun c!1174501 () Bool)

(assert (=> d!2014919 (= c!1174501 e!3899394)))

(declare-fun res!2641788 () Bool)

(assert (=> d!2014919 (=> (not res!2641788) (not e!3899394))))

(assert (=> d!2014919 (= res!2641788 (is-Cons!65166 (exprs!6214 lt!2378295)))))

(assert (=> d!2014919 (= (derivationStepZipperUp!1504 lt!2378295 (h!71613 s!2326)) e!3899392)))

(declare-fun b!6427401 () Bool)

(assert (=> b!6427401 (= e!3899393 (as set.empty (Set Context!11428)))))

(assert (= (and d!2014919 res!2641788) b!6427404))

(assert (= (and d!2014919 c!1174501) b!6427402))

(assert (= (and d!2014919 (not c!1174501)) b!6427405))

(assert (= (and b!6427405 c!1174502) b!6427403))

(assert (= (and b!6427405 (not c!1174502)) b!6427401))

(assert (= (or b!6427402 b!6427403) bm!552820))

(declare-fun m!7221216 () Bool)

(assert (=> b!6427402 m!7221216))

(declare-fun m!7221218 () Bool)

(assert (=> b!6427404 m!7221218))

(declare-fun m!7221220 () Bool)

(assert (=> bm!552820 m!7221220))

(assert (=> b!6426995 d!2014919))

(declare-fun d!2014921 () Bool)

(declare-fun choose!47769 ((Set Context!11428) Int) (Set Context!11428))

(assert (=> d!2014921 (= (flatMap!1835 lt!2378305 lambda!355338) (choose!47769 lt!2378305 lambda!355338))))

(declare-fun bs!1616578 () Bool)

(assert (= bs!1616578 d!2014921))

(declare-fun m!7221222 () Bool)

(assert (=> bs!1616578 m!7221222))

(assert (=> b!6426995 d!2014921))

(declare-fun d!2014923 () Bool)

(assert (=> d!2014923 (= (flatMap!1835 lt!2378306 lambda!355338) (choose!47769 lt!2378306 lambda!355338))))

(declare-fun bs!1616579 () Bool)

(assert (= bs!1616579 d!2014923))

(declare-fun m!7221224 () Bool)

(assert (=> bs!1616579 m!7221224))

(assert (=> b!6426995 d!2014923))

(declare-fun b!6427406 () Bool)

(declare-fun res!2641791 () Bool)

(declare-fun e!3899401 () Bool)

(assert (=> b!6427406 (=> res!2641791 e!3899401)))

(assert (=> b!6427406 (= res!2641791 (not (is-ElementMatch!16330 (regTwo!33172 r!7292))))))

(declare-fun e!3899397 () Bool)

(assert (=> b!6427406 (= e!3899397 e!3899401)))

(declare-fun d!2014925 () Bool)

(declare-fun e!3899398 () Bool)

(assert (=> d!2014925 e!3899398))

(declare-fun c!1174505 () Bool)

(assert (=> d!2014925 (= c!1174505 (is-EmptyExpr!16330 (regTwo!33172 r!7292)))))

(declare-fun lt!2378496 () Bool)

(declare-fun e!3899396 () Bool)

(assert (=> d!2014925 (= lt!2378496 e!3899396)))

(declare-fun c!1174503 () Bool)

(assert (=> d!2014925 (= c!1174503 (isEmpty!37330 (_2!36612 lt!2378308)))))

(assert (=> d!2014925 (validRegex!8066 (regTwo!33172 r!7292))))

(assert (=> d!2014925 (= (matchR!8513 (regTwo!33172 r!7292) (_2!36612 lt!2378308)) lt!2378496)))

(declare-fun bm!552821 () Bool)

(declare-fun call!552826 () Bool)

(assert (=> bm!552821 (= call!552826 (isEmpty!37330 (_2!36612 lt!2378308)))))

(declare-fun b!6427407 () Bool)

(declare-fun res!2641796 () Bool)

(declare-fun e!3899395 () Bool)

(assert (=> b!6427407 (=> res!2641796 e!3899395)))

(assert (=> b!6427407 (= res!2641796 (not (isEmpty!37330 (tail!12236 (_2!36612 lt!2378308)))))))

(declare-fun b!6427408 () Bool)

(assert (=> b!6427408 (= e!3899398 e!3899397)))

(declare-fun c!1174504 () Bool)

(assert (=> b!6427408 (= c!1174504 (is-EmptyLang!16330 (regTwo!33172 r!7292)))))

(declare-fun b!6427409 () Bool)

(declare-fun e!3899400 () Bool)

(assert (=> b!6427409 (= e!3899400 (= (head!13151 (_2!36612 lt!2378308)) (c!1174427 (regTwo!33172 r!7292))))))

(declare-fun b!6427410 () Bool)

(assert (=> b!6427410 (= e!3899397 (not lt!2378496))))

(declare-fun b!6427411 () Bool)

(assert (=> b!6427411 (= e!3899396 (nullable!6323 (regTwo!33172 r!7292)))))

(declare-fun b!6427412 () Bool)

(declare-fun e!3899399 () Bool)

(assert (=> b!6427412 (= e!3899399 e!3899395)))

(declare-fun res!2641794 () Bool)

(assert (=> b!6427412 (=> res!2641794 e!3899395)))

(assert (=> b!6427412 (= res!2641794 call!552826)))

(declare-fun b!6427413 () Bool)

(assert (=> b!6427413 (= e!3899396 (matchR!8513 (derivativeStep!5034 (regTwo!33172 r!7292) (head!13151 (_2!36612 lt!2378308))) (tail!12236 (_2!36612 lt!2378308))))))

(declare-fun b!6427414 () Bool)

(assert (=> b!6427414 (= e!3899395 (not (= (head!13151 (_2!36612 lt!2378308)) (c!1174427 (regTwo!33172 r!7292)))))))

(declare-fun b!6427415 () Bool)

(assert (=> b!6427415 (= e!3899401 e!3899399)))

(declare-fun res!2641789 () Bool)

(assert (=> b!6427415 (=> (not res!2641789) (not e!3899399))))

(assert (=> b!6427415 (= res!2641789 (not lt!2378496))))

(declare-fun b!6427416 () Bool)

(declare-fun res!2641795 () Bool)

(assert (=> b!6427416 (=> (not res!2641795) (not e!3899400))))

(assert (=> b!6427416 (= res!2641795 (isEmpty!37330 (tail!12236 (_2!36612 lt!2378308))))))

(declare-fun b!6427417 () Bool)

(assert (=> b!6427417 (= e!3899398 (= lt!2378496 call!552826))))

(declare-fun b!6427418 () Bool)

(declare-fun res!2641793 () Bool)

(assert (=> b!6427418 (=> (not res!2641793) (not e!3899400))))

(assert (=> b!6427418 (= res!2641793 (not call!552826))))

(declare-fun b!6427419 () Bool)

(declare-fun res!2641792 () Bool)

(assert (=> b!6427419 (=> res!2641792 e!3899401)))

(assert (=> b!6427419 (= res!2641792 e!3899400)))

(declare-fun res!2641790 () Bool)

(assert (=> b!6427419 (=> (not res!2641790) (not e!3899400))))

(assert (=> b!6427419 (= res!2641790 lt!2378496)))

(assert (= (and d!2014925 c!1174503) b!6427411))

(assert (= (and d!2014925 (not c!1174503)) b!6427413))

(assert (= (and d!2014925 c!1174505) b!6427417))

(assert (= (and d!2014925 (not c!1174505)) b!6427408))

(assert (= (and b!6427408 c!1174504) b!6427410))

(assert (= (and b!6427408 (not c!1174504)) b!6427406))

(assert (= (and b!6427406 (not res!2641791)) b!6427419))

(assert (= (and b!6427419 res!2641790) b!6427418))

(assert (= (and b!6427418 res!2641793) b!6427416))

(assert (= (and b!6427416 res!2641795) b!6427409))

(assert (= (and b!6427419 (not res!2641792)) b!6427415))

(assert (= (and b!6427415 res!2641789) b!6427412))

(assert (= (and b!6427412 (not res!2641794)) b!6427407))

(assert (= (and b!6427407 (not res!2641796)) b!6427414))

(assert (= (or b!6427417 b!6427412 b!6427418) bm!552821))

(declare-fun m!7221226 () Bool)

(assert (=> d!2014925 m!7221226))

(declare-fun m!7221228 () Bool)

(assert (=> d!2014925 m!7221228))

(declare-fun m!7221230 () Bool)

(assert (=> b!6427414 m!7221230))

(declare-fun m!7221232 () Bool)

(assert (=> b!6427416 m!7221232))

(assert (=> b!6427416 m!7221232))

(declare-fun m!7221234 () Bool)

(assert (=> b!6427416 m!7221234))

(declare-fun m!7221236 () Bool)

(assert (=> b!6427411 m!7221236))

(assert (=> b!6427409 m!7221230))

(assert (=> b!6427407 m!7221232))

(assert (=> b!6427407 m!7221232))

(assert (=> b!6427407 m!7221234))

(assert (=> b!6427413 m!7221230))

(assert (=> b!6427413 m!7221230))

(declare-fun m!7221238 () Bool)

(assert (=> b!6427413 m!7221238))

(assert (=> b!6427413 m!7221232))

(assert (=> b!6427413 m!7221238))

(assert (=> b!6427413 m!7221232))

(declare-fun m!7221240 () Bool)

(assert (=> b!6427413 m!7221240))

(assert (=> bm!552821 m!7221226))

(assert (=> b!6426976 d!2014925))

(declare-fun d!2014927 () Bool)

(declare-fun e!3899404 () Bool)

(assert (=> d!2014927 e!3899404))

(declare-fun res!2641799 () Bool)

(assert (=> d!2014927 (=> (not res!2641799) (not e!3899404))))

(declare-fun lt!2378499 () List!65291)

(declare-fun noDuplicate!2159 (List!65291) Bool)

(assert (=> d!2014927 (= res!2641799 (noDuplicate!2159 lt!2378499))))

(declare-fun choose!47770 ((Set Context!11428)) List!65291)

(assert (=> d!2014927 (= lt!2378499 (choose!47770 z!1189))))

(assert (=> d!2014927 (= (toList!10114 z!1189) lt!2378499)))

(declare-fun b!6427422 () Bool)

(declare-fun content!12374 (List!65291) (Set Context!11428))

(assert (=> b!6427422 (= e!3899404 (= (content!12374 lt!2378499) z!1189))))

(assert (= (and d!2014927 res!2641799) b!6427422))

(declare-fun m!7221242 () Bool)

(assert (=> d!2014927 m!7221242))

(declare-fun m!7221244 () Bool)

(assert (=> d!2014927 m!7221244))

(declare-fun m!7221246 () Bool)

(assert (=> b!6427422 m!7221246))

(assert (=> b!6426996 d!2014927))

(declare-fun b!6427423 () Bool)

(declare-fun e!3899405 () Bool)

(declare-fun e!3899407 () Bool)

(assert (=> b!6427423 (= e!3899405 e!3899407)))

(declare-fun c!1174506 () Bool)

(assert (=> b!6427423 (= c!1174506 (is-Union!16330 r!7292))))

(declare-fun b!6427424 () Bool)

(declare-fun e!3899409 () Bool)

(declare-fun call!552828 () Bool)

(assert (=> b!6427424 (= e!3899409 call!552828)))

(declare-fun b!6427425 () Bool)

(declare-fun e!3899406 () Bool)

(assert (=> b!6427425 (= e!3899405 e!3899406)))

(declare-fun res!2641802 () Bool)

(assert (=> b!6427425 (= res!2641802 (not (nullable!6323 (reg!16659 r!7292))))))

(assert (=> b!6427425 (=> (not res!2641802) (not e!3899406))))

(declare-fun bm!552822 () Bool)

(declare-fun call!552829 () Bool)

(assert (=> bm!552822 (= call!552829 (validRegex!8066 (ite c!1174506 (regOne!33173 r!7292) (regOne!33172 r!7292))))))

(declare-fun bm!552823 () Bool)

(declare-fun call!552827 () Bool)

(assert (=> bm!552823 (= call!552828 call!552827)))

(declare-fun d!2014929 () Bool)

(declare-fun res!2641803 () Bool)

(declare-fun e!3899408 () Bool)

(assert (=> d!2014929 (=> res!2641803 e!3899408)))

(assert (=> d!2014929 (= res!2641803 (is-ElementMatch!16330 r!7292))))

(assert (=> d!2014929 (= (validRegex!8066 r!7292) e!3899408)))

(declare-fun b!6427426 () Bool)

(declare-fun res!2641804 () Bool)

(assert (=> b!6427426 (=> (not res!2641804) (not e!3899409))))

(assert (=> b!6427426 (= res!2641804 call!552829)))

(assert (=> b!6427426 (= e!3899407 e!3899409)))

(declare-fun b!6427427 () Bool)

(assert (=> b!6427427 (= e!3899406 call!552827)))

(declare-fun c!1174507 () Bool)

(declare-fun bm!552824 () Bool)

(assert (=> bm!552824 (= call!552827 (validRegex!8066 (ite c!1174507 (reg!16659 r!7292) (ite c!1174506 (regTwo!33173 r!7292) (regTwo!33172 r!7292)))))))

(declare-fun b!6427428 () Bool)

(assert (=> b!6427428 (= e!3899408 e!3899405)))

(assert (=> b!6427428 (= c!1174507 (is-Star!16330 r!7292))))

(declare-fun b!6427429 () Bool)

(declare-fun e!3899410 () Bool)

(assert (=> b!6427429 (= e!3899410 call!552828)))

(declare-fun b!6427430 () Bool)

(declare-fun e!3899411 () Bool)

(assert (=> b!6427430 (= e!3899411 e!3899410)))

(declare-fun res!2641801 () Bool)

(assert (=> b!6427430 (=> (not res!2641801) (not e!3899410))))

(assert (=> b!6427430 (= res!2641801 call!552829)))

(declare-fun b!6427431 () Bool)

(declare-fun res!2641800 () Bool)

(assert (=> b!6427431 (=> res!2641800 e!3899411)))

(assert (=> b!6427431 (= res!2641800 (not (is-Concat!25175 r!7292)))))

(assert (=> b!6427431 (= e!3899407 e!3899411)))

(assert (= (and d!2014929 (not res!2641803)) b!6427428))

(assert (= (and b!6427428 c!1174507) b!6427425))

(assert (= (and b!6427428 (not c!1174507)) b!6427423))

(assert (= (and b!6427425 res!2641802) b!6427427))

(assert (= (and b!6427423 c!1174506) b!6427426))

(assert (= (and b!6427423 (not c!1174506)) b!6427431))

(assert (= (and b!6427426 res!2641804) b!6427424))

(assert (= (and b!6427431 (not res!2641800)) b!6427430))

(assert (= (and b!6427430 res!2641801) b!6427429))

(assert (= (or b!6427424 b!6427429) bm!552823))

(assert (= (or b!6427426 b!6427430) bm!552822))

(assert (= (or b!6427427 bm!552823) bm!552824))

(declare-fun m!7221248 () Bool)

(assert (=> b!6427425 m!7221248))

(declare-fun m!7221250 () Bool)

(assert (=> bm!552822 m!7221250))

(declare-fun m!7221252 () Bool)

(assert (=> bm!552824 m!7221252))

(assert (=> start!634972 d!2014929))

(declare-fun bs!1616580 () Bool)

(declare-fun b!6427504 () Bool)

(assert (= bs!1616580 (and b!6427504 b!6426986)))

(declare-fun lambda!355396 () Int)

(assert (=> bs!1616580 (not (= lambda!355396 lambda!355336))))

(declare-fun bs!1616582 () Bool)

(assert (= bs!1616582 (and b!6427504 b!6426997)))

(assert (=> bs!1616582 (= (= (reg!16659 lt!2378328) (reg!16659 (regOne!33172 r!7292))) (= lambda!355396 lambda!355342))))

(assert (=> bs!1616580 (not (= lambda!355396 lambda!355337))))

(declare-fun bs!1616584 () Bool)

(assert (= bs!1616584 (and b!6427504 b!6426989)))

(assert (=> bs!1616584 (not (= lambda!355396 lambda!355339))))

(assert (=> bs!1616582 (not (= lambda!355396 lambda!355341))))

(assert (=> bs!1616584 (not (= lambda!355396 lambda!355340))))

(assert (=> bs!1616582 (not (= lambda!355396 lambda!355343))))

(assert (=> b!6427504 true))

(assert (=> b!6427504 true))

(declare-fun bs!1616586 () Bool)

(declare-fun b!6427497 () Bool)

(assert (= bs!1616586 (and b!6427497 b!6426986)))

(declare-fun lambda!355398 () Int)

(assert (=> bs!1616586 (not (= lambda!355398 lambda!355336))))

(declare-fun bs!1616587 () Bool)

(assert (= bs!1616587 (and b!6427497 b!6426997)))

(assert (=> bs!1616587 (not (= lambda!355398 lambda!355342))))

(declare-fun bs!1616589 () Bool)

(assert (= bs!1616589 (and b!6427497 b!6426989)))

(assert (=> bs!1616589 (not (= lambda!355398 lambda!355339))))

(assert (=> bs!1616587 (not (= lambda!355398 lambda!355341))))

(assert (=> bs!1616589 (= (and (= (_1!36612 lt!2378308) s!2326) (= (regOne!33172 lt!2378328) lt!2378328) (= (regTwo!33172 lt!2378328) (regTwo!33172 r!7292))) (= lambda!355398 lambda!355340))))

(assert (=> bs!1616587 (= (and (= (regOne!33172 lt!2378328) (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 lt!2378328) lt!2378328)) (= lambda!355398 lambda!355343))))

(assert (=> bs!1616586 (= (and (= (_1!36612 lt!2378308) s!2326) (= (regOne!33172 lt!2378328) (regOne!33172 r!7292)) (= (regTwo!33172 lt!2378328) (regTwo!33172 r!7292))) (= lambda!355398 lambda!355337))))

(declare-fun bs!1616592 () Bool)

(assert (= bs!1616592 (and b!6427497 b!6427504)))

(assert (=> bs!1616592 (not (= lambda!355398 lambda!355396))))

(assert (=> b!6427497 true))

(assert (=> b!6427497 true))

(declare-fun b!6427496 () Bool)

(declare-fun e!3899449 () Bool)

(declare-fun e!3899454 () Bool)

(assert (=> b!6427496 (= e!3899449 e!3899454)))

(declare-fun res!2641838 () Bool)

(assert (=> b!6427496 (= res!2641838 (not (is-EmptyLang!16330 lt!2378328)))))

(assert (=> b!6427496 (=> (not res!2641838) (not e!3899454))))

(declare-fun e!3899450 () Bool)

(declare-fun call!552838 () Bool)

(assert (=> b!6427497 (= e!3899450 call!552838)))

(declare-fun b!6427498 () Bool)

(declare-fun c!1174524 () Bool)

(assert (=> b!6427498 (= c!1174524 (is-Union!16330 lt!2378328))))

(declare-fun e!3899448 () Bool)

(declare-fun e!3899451 () Bool)

(assert (=> b!6427498 (= e!3899448 e!3899451)))

(declare-fun b!6427499 () Bool)

(declare-fun res!2641839 () Bool)

(declare-fun e!3899453 () Bool)

(assert (=> b!6427499 (=> res!2641839 e!3899453)))

(declare-fun call!552839 () Bool)

(assert (=> b!6427499 (= res!2641839 call!552839)))

(assert (=> b!6427499 (= e!3899450 e!3899453)))

(declare-fun bm!552833 () Bool)

(assert (=> bm!552833 (= call!552839 (isEmpty!37330 (_1!36612 lt!2378308)))))

(declare-fun b!6427500 () Bool)

(assert (=> b!6427500 (= e!3899449 call!552839)))

(declare-fun b!6427501 () Bool)

(assert (=> b!6427501 (= e!3899451 e!3899450)))

(declare-fun c!1174527 () Bool)

(assert (=> b!6427501 (= c!1174527 (is-Star!16330 lt!2378328))))

(declare-fun d!2014931 () Bool)

(declare-fun c!1174526 () Bool)

(assert (=> d!2014931 (= c!1174526 (is-EmptyExpr!16330 lt!2378328))))

(assert (=> d!2014931 (= (matchRSpec!3431 lt!2378328 (_1!36612 lt!2378308)) e!3899449)))

(declare-fun b!6427502 () Bool)

(assert (=> b!6427502 (= e!3899448 (= (_1!36612 lt!2378308) (Cons!65165 (c!1174427 lt!2378328) Nil!65165)))))

(declare-fun bm!552834 () Bool)

(assert (=> bm!552834 (= call!552838 (Exists!3400 (ite c!1174527 lambda!355396 lambda!355398)))))

(declare-fun b!6427503 () Bool)

(declare-fun e!3899452 () Bool)

(assert (=> b!6427503 (= e!3899451 e!3899452)))

(declare-fun res!2641837 () Bool)

(assert (=> b!6427503 (= res!2641837 (matchRSpec!3431 (regOne!33173 lt!2378328) (_1!36612 lt!2378308)))))

(assert (=> b!6427503 (=> res!2641837 e!3899452)))

(assert (=> b!6427504 (= e!3899453 call!552838)))

(declare-fun b!6427505 () Bool)

(assert (=> b!6427505 (= e!3899452 (matchRSpec!3431 (regTwo!33173 lt!2378328) (_1!36612 lt!2378308)))))

(declare-fun b!6427506 () Bool)

(declare-fun c!1174525 () Bool)

(assert (=> b!6427506 (= c!1174525 (is-ElementMatch!16330 lt!2378328))))

(assert (=> b!6427506 (= e!3899454 e!3899448)))

(assert (= (and d!2014931 c!1174526) b!6427500))

(assert (= (and d!2014931 (not c!1174526)) b!6427496))

(assert (= (and b!6427496 res!2641838) b!6427506))

(assert (= (and b!6427506 c!1174525) b!6427502))

(assert (= (and b!6427506 (not c!1174525)) b!6427498))

(assert (= (and b!6427498 c!1174524) b!6427503))

(assert (= (and b!6427498 (not c!1174524)) b!6427501))

(assert (= (and b!6427503 (not res!2641837)) b!6427505))

(assert (= (and b!6427501 c!1174527) b!6427499))

(assert (= (and b!6427501 (not c!1174527)) b!6427497))

(assert (= (and b!6427499 (not res!2641839)) b!6427504))

(assert (= (or b!6427504 b!6427497) bm!552834))

(assert (= (or b!6427500 b!6427499) bm!552833))

(assert (=> bm!552833 m!7220916))

(declare-fun m!7221254 () Bool)

(assert (=> bm!552834 m!7221254))

(declare-fun m!7221256 () Bool)

(assert (=> b!6427503 m!7221256))

(declare-fun m!7221258 () Bool)

(assert (=> b!6427505 m!7221258))

(assert (=> b!6426997 d!2014931))

(declare-fun d!2014933 () Bool)

(declare-fun choose!47771 (Int) Bool)

(assert (=> d!2014933 (= (Exists!3400 lambda!355342) (choose!47771 lambda!355342))))

(declare-fun bs!1616594 () Bool)

(assert (= bs!1616594 d!2014933))

(declare-fun m!7221266 () Bool)

(assert (=> bs!1616594 m!7221266))

(assert (=> b!6426997 d!2014933))

(declare-fun bs!1616597 () Bool)

(declare-fun d!2014937 () Bool)

(assert (= bs!1616597 (and d!2014937 b!6426986)))

(declare-fun lambda!355407 () Int)

(assert (=> bs!1616597 (= (and (= (_1!36612 lt!2378308) s!2326) (= (reg!16659 (regOne!33172 r!7292)) (regOne!33172 r!7292)) (= (Star!16330 (reg!16659 (regOne!33172 r!7292))) (regTwo!33172 r!7292))) (= lambda!355407 lambda!355336))))

(declare-fun bs!1616598 () Bool)

(assert (= bs!1616598 (and d!2014937 b!6427497)))

(assert (=> bs!1616598 (not (= lambda!355407 lambda!355398))))

(declare-fun bs!1616599 () Bool)

(assert (= bs!1616599 (and d!2014937 b!6426997)))

(assert (=> bs!1616599 (not (= lambda!355407 lambda!355342))))

(declare-fun bs!1616600 () Bool)

(assert (= bs!1616600 (and d!2014937 b!6426989)))

(assert (=> bs!1616600 (= (and (= (_1!36612 lt!2378308) s!2326) (= (reg!16659 (regOne!33172 r!7292)) lt!2378328) (= (Star!16330 (reg!16659 (regOne!33172 r!7292))) (regTwo!33172 r!7292))) (= lambda!355407 lambda!355339))))

(assert (=> bs!1616599 (= (= (Star!16330 (reg!16659 (regOne!33172 r!7292))) lt!2378328) (= lambda!355407 lambda!355341))))

(assert (=> bs!1616600 (not (= lambda!355407 lambda!355340))))

(assert (=> bs!1616599 (not (= lambda!355407 lambda!355343))))

(assert (=> bs!1616597 (not (= lambda!355407 lambda!355337))))

(declare-fun bs!1616601 () Bool)

(assert (= bs!1616601 (and d!2014937 b!6427504)))

(assert (=> bs!1616601 (not (= lambda!355407 lambda!355396))))

(assert (=> d!2014937 true))

(assert (=> d!2014937 true))

(declare-fun lambda!355408 () Int)

(assert (=> bs!1616597 (not (= lambda!355408 lambda!355336))))

(assert (=> bs!1616598 (not (= lambda!355408 lambda!355398))))

(assert (=> bs!1616599 (= (= (Star!16330 (reg!16659 (regOne!33172 r!7292))) lt!2378328) (= lambda!355408 lambda!355342))))

(assert (=> bs!1616600 (not (= lambda!355408 lambda!355339))))

(assert (=> bs!1616599 (not (= lambda!355408 lambda!355341))))

(declare-fun bs!1616602 () Bool)

(assert (= bs!1616602 d!2014937))

(assert (=> bs!1616602 (not (= lambda!355408 lambda!355407))))

(assert (=> bs!1616600 (not (= lambda!355408 lambda!355340))))

(assert (=> bs!1616599 (not (= lambda!355408 lambda!355343))))

(assert (=> bs!1616597 (not (= lambda!355408 lambda!355337))))

(assert (=> bs!1616601 (= (and (= (reg!16659 (regOne!33172 r!7292)) (reg!16659 lt!2378328)) (= (Star!16330 (reg!16659 (regOne!33172 r!7292))) lt!2378328)) (= lambda!355408 lambda!355396))))

(assert (=> d!2014937 true))

(assert (=> d!2014937 true))

(assert (=> d!2014937 (= (Exists!3400 lambda!355407) (Exists!3400 lambda!355408))))

(declare-fun lt!2378505 () Unit!158651)

(declare-fun choose!47773 (Regex!16330 List!65289) Unit!158651)

(assert (=> d!2014937 (= lt!2378505 (choose!47773 (reg!16659 (regOne!33172 r!7292)) (_1!36612 lt!2378308)))))

(assert (=> d!2014937 (validRegex!8066 (reg!16659 (regOne!33172 r!7292)))))

(assert (=> d!2014937 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!621 (reg!16659 (regOne!33172 r!7292)) (_1!36612 lt!2378308)) lt!2378505)))

(declare-fun m!7221284 () Bool)

(assert (=> bs!1616602 m!7221284))

(declare-fun m!7221286 () Bool)

(assert (=> bs!1616602 m!7221286))

(declare-fun m!7221288 () Bool)

(assert (=> bs!1616602 m!7221288))

(declare-fun m!7221290 () Bool)

(assert (=> bs!1616602 m!7221290))

(assert (=> b!6426997 d!2014937))

(declare-fun bs!1616606 () Bool)

(declare-fun d!2014947 () Bool)

(assert (= bs!1616606 (and d!2014947 d!2014937)))

(declare-fun lambda!355413 () Int)

(assert (=> bs!1616606 (not (= lambda!355413 lambda!355408))))

(declare-fun bs!1616607 () Bool)

(assert (= bs!1616607 (and d!2014947 b!6426986)))

(assert (=> bs!1616607 (= (and (= (_1!36612 lt!2378308) s!2326) (= (reg!16659 (regOne!33172 r!7292)) (regOne!33172 r!7292)) (= lt!2378328 (regTwo!33172 r!7292))) (= lambda!355413 lambda!355336))))

(declare-fun bs!1616608 () Bool)

(assert (= bs!1616608 (and d!2014947 b!6427497)))

(assert (=> bs!1616608 (not (= lambda!355413 lambda!355398))))

(declare-fun bs!1616609 () Bool)

(assert (= bs!1616609 (and d!2014947 b!6426997)))

(assert (=> bs!1616609 (not (= lambda!355413 lambda!355342))))

(declare-fun bs!1616610 () Bool)

(assert (= bs!1616610 (and d!2014947 b!6426989)))

(assert (=> bs!1616610 (= (and (= (_1!36612 lt!2378308) s!2326) (= (reg!16659 (regOne!33172 r!7292)) lt!2378328) (= lt!2378328 (regTwo!33172 r!7292))) (= lambda!355413 lambda!355339))))

(assert (=> bs!1616609 (= lambda!355413 lambda!355341)))

(assert (=> bs!1616606 (= (= lt!2378328 (Star!16330 (reg!16659 (regOne!33172 r!7292)))) (= lambda!355413 lambda!355407))))

(assert (=> bs!1616610 (not (= lambda!355413 lambda!355340))))

(assert (=> bs!1616609 (not (= lambda!355413 lambda!355343))))

(assert (=> bs!1616607 (not (= lambda!355413 lambda!355337))))

(declare-fun bs!1616611 () Bool)

(assert (= bs!1616611 (and d!2014947 b!6427504)))

(assert (=> bs!1616611 (not (= lambda!355413 lambda!355396))))

(assert (=> d!2014947 true))

(assert (=> d!2014947 true))

(assert (=> d!2014947 true))

(declare-fun lambda!355414 () Int)

(assert (=> bs!1616606 (not (= lambda!355414 lambda!355408))))

(assert (=> bs!1616607 (not (= lambda!355414 lambda!355336))))

(assert (=> bs!1616608 (= (and (= (reg!16659 (regOne!33172 r!7292)) (regOne!33172 lt!2378328)) (= lt!2378328 (regTwo!33172 lt!2378328))) (= lambda!355414 lambda!355398))))

(assert (=> bs!1616609 (not (= lambda!355414 lambda!355342))))

(assert (=> bs!1616610 (not (= lambda!355414 lambda!355339))))

(declare-fun bs!1616614 () Bool)

(assert (= bs!1616614 d!2014947))

(assert (=> bs!1616614 (not (= lambda!355414 lambda!355413))))

(assert (=> bs!1616609 (not (= lambda!355414 lambda!355341))))

(assert (=> bs!1616606 (not (= lambda!355414 lambda!355407))))

(assert (=> bs!1616610 (= (and (= (_1!36612 lt!2378308) s!2326) (= (reg!16659 (regOne!33172 r!7292)) lt!2378328) (= lt!2378328 (regTwo!33172 r!7292))) (= lambda!355414 lambda!355340))))

(assert (=> bs!1616609 (= lambda!355414 lambda!355343)))

(assert (=> bs!1616607 (= (and (= (_1!36612 lt!2378308) s!2326) (= (reg!16659 (regOne!33172 r!7292)) (regOne!33172 r!7292)) (= lt!2378328 (regTwo!33172 r!7292))) (= lambda!355414 lambda!355337))))

(assert (=> bs!1616611 (not (= lambda!355414 lambda!355396))))

(assert (=> d!2014947 true))

(assert (=> d!2014947 true))

(assert (=> d!2014947 true))

(assert (=> d!2014947 (= (Exists!3400 lambda!355413) (Exists!3400 lambda!355414))))

(declare-fun lt!2378514 () Unit!158651)

(declare-fun choose!47774 (Regex!16330 Regex!16330 List!65289) Unit!158651)

(assert (=> d!2014947 (= lt!2378514 (choose!47774 (reg!16659 (regOne!33172 r!7292)) lt!2378328 (_1!36612 lt!2378308)))))

(assert (=> d!2014947 (validRegex!8066 (reg!16659 (regOne!33172 r!7292)))))

(assert (=> d!2014947 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1937 (reg!16659 (regOne!33172 r!7292)) lt!2378328 (_1!36612 lt!2378308)) lt!2378514)))

(declare-fun m!7221334 () Bool)

(assert (=> bs!1616614 m!7221334))

(declare-fun m!7221336 () Bool)

(assert (=> bs!1616614 m!7221336))

(declare-fun m!7221338 () Bool)

(assert (=> bs!1616614 m!7221338))

(assert (=> bs!1616614 m!7221290))

(assert (=> b!6426997 d!2014947))

(declare-fun d!2014965 () Bool)

(assert (=> d!2014965 (= (get!22579 lt!2378292) (v!52393 lt!2378292))))

(assert (=> b!6426997 d!2014965))

(declare-fun b!6427627 () Bool)

(declare-fun e!3899530 () List!65289)

(assert (=> b!6427627 (= e!3899530 (Cons!65165 (h!71613 (_1!36612 lt!2378313)) (++!14398 (t!378905 (_1!36612 lt!2378313)) (_2!36612 lt!2378313))))))

(declare-fun b!6427628 () Bool)

(declare-fun res!2641894 () Bool)

(declare-fun e!3899529 () Bool)

(assert (=> b!6427628 (=> (not res!2641894) (not e!3899529))))

(declare-fun lt!2378520 () List!65289)

(declare-fun size!40389 (List!65289) Int)

(assert (=> b!6427628 (= res!2641894 (= (size!40389 lt!2378520) (+ (size!40389 (_1!36612 lt!2378313)) (size!40389 (_2!36612 lt!2378313)))))))

(declare-fun b!6427626 () Bool)

(assert (=> b!6427626 (= e!3899530 (_2!36612 lt!2378313))))

(declare-fun d!2014967 () Bool)

(assert (=> d!2014967 e!3899529))

(declare-fun res!2641893 () Bool)

(assert (=> d!2014967 (=> (not res!2641893) (not e!3899529))))

(declare-fun content!12375 (List!65289) (Set C!32930))

(assert (=> d!2014967 (= res!2641893 (= (content!12375 lt!2378520) (set.union (content!12375 (_1!36612 lt!2378313)) (content!12375 (_2!36612 lt!2378313)))))))

(assert (=> d!2014967 (= lt!2378520 e!3899530)))

(declare-fun c!1174561 () Bool)

(assert (=> d!2014967 (= c!1174561 (is-Nil!65165 (_1!36612 lt!2378313)))))

(assert (=> d!2014967 (= (++!14398 (_1!36612 lt!2378313) (_2!36612 lt!2378313)) lt!2378520)))

(declare-fun b!6427629 () Bool)

(assert (=> b!6427629 (= e!3899529 (or (not (= (_2!36612 lt!2378313) Nil!65165)) (= lt!2378520 (_1!36612 lt!2378313))))))

(assert (= (and d!2014967 c!1174561) b!6427626))

(assert (= (and d!2014967 (not c!1174561)) b!6427627))

(assert (= (and d!2014967 res!2641893) b!6427628))

(assert (= (and b!6427628 res!2641894) b!6427629))

(declare-fun m!7221340 () Bool)

(assert (=> b!6427627 m!7221340))

(declare-fun m!7221342 () Bool)

(assert (=> b!6427628 m!7221342))

(declare-fun m!7221344 () Bool)

(assert (=> b!6427628 m!7221344))

(declare-fun m!7221346 () Bool)

(assert (=> b!6427628 m!7221346))

(declare-fun m!7221348 () Bool)

(assert (=> d!2014967 m!7221348))

(declare-fun m!7221350 () Bool)

(assert (=> d!2014967 m!7221350))

(declare-fun m!7221352 () Bool)

(assert (=> d!2014967 m!7221352))

(assert (=> b!6426997 d!2014967))

(declare-fun d!2014969 () Bool)

(assert (=> d!2014969 (= (Exists!3400 lambda!355343) (choose!47771 lambda!355343))))

(declare-fun bs!1616615 () Bool)

(assert (= bs!1616615 d!2014969))

(declare-fun m!7221354 () Bool)

(assert (=> bs!1616615 m!7221354))

(assert (=> b!6426997 d!2014969))

(declare-fun d!2014971 () Bool)

(assert (=> d!2014971 (= (Exists!3400 lambda!355341) (choose!47771 lambda!355341))))

(declare-fun bs!1616616 () Bool)

(assert (= bs!1616616 d!2014971))

(declare-fun m!7221356 () Bool)

(assert (=> bs!1616616 m!7221356))

(assert (=> b!6426997 d!2014971))

(declare-fun d!2014973 () Bool)

(assert (=> d!2014973 (= (matchR!8513 lt!2378328 (_1!36612 lt!2378308)) (matchRSpec!3431 lt!2378328 (_1!36612 lt!2378308)))))

(declare-fun lt!2378524 () Unit!158651)

(declare-fun choose!47775 (Regex!16330 List!65289) Unit!158651)

(assert (=> d!2014973 (= lt!2378524 (choose!47775 lt!2378328 (_1!36612 lt!2378308)))))

(assert (=> d!2014973 (validRegex!8066 lt!2378328)))

(assert (=> d!2014973 (= (mainMatchTheorem!3431 lt!2378328 (_1!36612 lt!2378308)) lt!2378524)))

(declare-fun bs!1616618 () Bool)

(assert (= bs!1616618 d!2014973))

(assert (=> bs!1616618 m!7220838))

(assert (=> bs!1616618 m!7220890))

(declare-fun m!7221378 () Bool)

(assert (=> bs!1616618 m!7221378))

(assert (=> bs!1616618 m!7220960))

(assert (=> b!6426997 d!2014973))

(declare-fun bs!1616626 () Bool)

(declare-fun d!2014977 () Bool)

(assert (= bs!1616626 (and d!2014977 d!2014947)))

(declare-fun lambda!355426 () Int)

(assert (=> bs!1616626 (not (= lambda!355426 lambda!355414))))

(declare-fun bs!1616627 () Bool)

(assert (= bs!1616627 (and d!2014977 d!2014937)))

(assert (=> bs!1616627 (not (= lambda!355426 lambda!355408))))

(declare-fun bs!1616628 () Bool)

(assert (= bs!1616628 (and d!2014977 b!6426986)))

(assert (=> bs!1616628 (= (and (= (_1!36612 lt!2378308) s!2326) (= (reg!16659 (regOne!33172 r!7292)) (regOne!33172 r!7292)) (= lt!2378328 (regTwo!33172 r!7292))) (= lambda!355426 lambda!355336))))

(declare-fun bs!1616629 () Bool)

(assert (= bs!1616629 (and d!2014977 b!6427497)))

(assert (=> bs!1616629 (not (= lambda!355426 lambda!355398))))

(declare-fun bs!1616630 () Bool)

(assert (= bs!1616630 (and d!2014977 b!6426997)))

(assert (=> bs!1616630 (not (= lambda!355426 lambda!355342))))

(declare-fun bs!1616631 () Bool)

(assert (= bs!1616631 (and d!2014977 b!6426989)))

(assert (=> bs!1616631 (= (and (= (_1!36612 lt!2378308) s!2326) (= (reg!16659 (regOne!33172 r!7292)) lt!2378328) (= lt!2378328 (regTwo!33172 r!7292))) (= lambda!355426 lambda!355339))))

(assert (=> bs!1616626 (= lambda!355426 lambda!355413)))

(assert (=> bs!1616630 (= lambda!355426 lambda!355341)))

(assert (=> bs!1616627 (= (= lt!2378328 (Star!16330 (reg!16659 (regOne!33172 r!7292)))) (= lambda!355426 lambda!355407))))

(assert (=> bs!1616631 (not (= lambda!355426 lambda!355340))))

(assert (=> bs!1616630 (not (= lambda!355426 lambda!355343))))

(assert (=> bs!1616628 (not (= lambda!355426 lambda!355337))))

(declare-fun bs!1616633 () Bool)

(assert (= bs!1616633 (and d!2014977 b!6427504)))

(assert (=> bs!1616633 (not (= lambda!355426 lambda!355396))))

(assert (=> d!2014977 true))

(assert (=> d!2014977 true))

(assert (=> d!2014977 true))

(assert (=> d!2014977 (= (isDefined!12924 (findConcatSeparation!2635 (reg!16659 (regOne!33172 r!7292)) lt!2378328 Nil!65165 (_1!36612 lt!2378308) (_1!36612 lt!2378308))) (Exists!3400 lambda!355426))))

(declare-fun lt!2378532 () Unit!158651)

(declare-fun choose!47776 (Regex!16330 Regex!16330 List!65289) Unit!158651)

(assert (=> d!2014977 (= lt!2378532 (choose!47776 (reg!16659 (regOne!33172 r!7292)) lt!2378328 (_1!36612 lt!2378308)))))

(assert (=> d!2014977 (validRegex!8066 (reg!16659 (regOne!33172 r!7292)))))

(assert (=> d!2014977 (= (lemmaFindConcatSeparationEquivalentToExists!2399 (reg!16659 (regOne!33172 r!7292)) lt!2378328 (_1!36612 lt!2378308)) lt!2378532)))

(declare-fun bs!1616635 () Bool)

(assert (= bs!1616635 d!2014977))

(declare-fun m!7221420 () Bool)

(assert (=> bs!1616635 m!7221420))

(assert (=> bs!1616635 m!7220888))

(declare-fun m!7221422 () Bool)

(assert (=> bs!1616635 m!7221422))

(assert (=> bs!1616635 m!7220888))

(declare-fun m!7221424 () Bool)

(assert (=> bs!1616635 m!7221424))

(assert (=> bs!1616635 m!7221290))

(assert (=> b!6426997 d!2014977))

(declare-fun d!2014997 () Bool)

(declare-fun isEmpty!37335 (Option!16221) Bool)

(assert (=> d!2014997 (= (isDefined!12924 lt!2378292) (not (isEmpty!37335 lt!2378292)))))

(declare-fun bs!1616637 () Bool)

(assert (= bs!1616637 d!2014997))

(declare-fun m!7221428 () Bool)

(assert (=> bs!1616637 m!7221428))

(assert (=> b!6426997 d!2014997))

(declare-fun b!6427697 () Bool)

(declare-fun res!2641930 () Bool)

(declare-fun e!3899567 () Bool)

(assert (=> b!6427697 (=> (not res!2641930) (not e!3899567))))

(declare-fun lt!2378545 () Option!16221)

(assert (=> b!6427697 (= res!2641930 (matchR!8513 (reg!16659 (regOne!33172 r!7292)) (_1!36612 (get!22579 lt!2378545))))))

(declare-fun b!6427698 () Bool)

(declare-fun e!3899566 () Option!16221)

(assert (=> b!6427698 (= e!3899566 None!16220)))

(declare-fun b!6427699 () Bool)

(declare-fun res!2641931 () Bool)

(assert (=> b!6427699 (=> (not res!2641931) (not e!3899567))))

(assert (=> b!6427699 (= res!2641931 (matchR!8513 lt!2378328 (_2!36612 (get!22579 lt!2378545))))))

(declare-fun b!6427700 () Bool)

(declare-fun e!3899569 () Bool)

(assert (=> b!6427700 (= e!3899569 (not (isDefined!12924 lt!2378545)))))

(declare-fun d!2015001 () Bool)

(assert (=> d!2015001 e!3899569))

(declare-fun res!2641928 () Bool)

(assert (=> d!2015001 (=> res!2641928 e!3899569)))

(assert (=> d!2015001 (= res!2641928 e!3899567)))

(declare-fun res!2641932 () Bool)

(assert (=> d!2015001 (=> (not res!2641932) (not e!3899567))))

(assert (=> d!2015001 (= res!2641932 (isDefined!12924 lt!2378545))))

(declare-fun e!3899568 () Option!16221)

(assert (=> d!2015001 (= lt!2378545 e!3899568)))

(declare-fun c!1174580 () Bool)

(declare-fun e!3899570 () Bool)

(assert (=> d!2015001 (= c!1174580 e!3899570)))

(declare-fun res!2641929 () Bool)

(assert (=> d!2015001 (=> (not res!2641929) (not e!3899570))))

(assert (=> d!2015001 (= res!2641929 (matchR!8513 (reg!16659 (regOne!33172 r!7292)) Nil!65165))))

(assert (=> d!2015001 (validRegex!8066 (reg!16659 (regOne!33172 r!7292)))))

(assert (=> d!2015001 (= (findConcatSeparation!2635 (reg!16659 (regOne!33172 r!7292)) lt!2378328 Nil!65165 (_1!36612 lt!2378308) (_1!36612 lt!2378308)) lt!2378545)))

(declare-fun b!6427701 () Bool)

(assert (=> b!6427701 (= e!3899570 (matchR!8513 lt!2378328 (_1!36612 lt!2378308)))))

(declare-fun b!6427702 () Bool)

(declare-fun lt!2378544 () Unit!158651)

(declare-fun lt!2378543 () Unit!158651)

(assert (=> b!6427702 (= lt!2378544 lt!2378543)))

(assert (=> b!6427702 (= (++!14398 (++!14398 Nil!65165 (Cons!65165 (h!71613 (_1!36612 lt!2378308)) Nil!65165)) (t!378905 (_1!36612 lt!2378308))) (_1!36612 lt!2378308))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2493 (List!65289 C!32930 List!65289 List!65289) Unit!158651)

(assert (=> b!6427702 (= lt!2378543 (lemmaMoveElementToOtherListKeepsConcatEq!2493 Nil!65165 (h!71613 (_1!36612 lt!2378308)) (t!378905 (_1!36612 lt!2378308)) (_1!36612 lt!2378308)))))

(assert (=> b!6427702 (= e!3899566 (findConcatSeparation!2635 (reg!16659 (regOne!33172 r!7292)) lt!2378328 (++!14398 Nil!65165 (Cons!65165 (h!71613 (_1!36612 lt!2378308)) Nil!65165)) (t!378905 (_1!36612 lt!2378308)) (_1!36612 lt!2378308)))))

(declare-fun b!6427703 () Bool)

(assert (=> b!6427703 (= e!3899568 e!3899566)))

(declare-fun c!1174581 () Bool)

(assert (=> b!6427703 (= c!1174581 (is-Nil!65165 (_1!36612 lt!2378308)))))

(declare-fun b!6427704 () Bool)

(assert (=> b!6427704 (= e!3899567 (= (++!14398 (_1!36612 (get!22579 lt!2378545)) (_2!36612 (get!22579 lt!2378545))) (_1!36612 lt!2378308)))))

(declare-fun b!6427705 () Bool)

(assert (=> b!6427705 (= e!3899568 (Some!16220 (tuple2!66619 Nil!65165 (_1!36612 lt!2378308))))))

(assert (= (and d!2015001 res!2641929) b!6427701))

(assert (= (and d!2015001 c!1174580) b!6427705))

(assert (= (and d!2015001 (not c!1174580)) b!6427703))

(assert (= (and b!6427703 c!1174581) b!6427698))

(assert (= (and b!6427703 (not c!1174581)) b!6427702))

(assert (= (and d!2015001 res!2641932) b!6427697))

(assert (= (and b!6427697 res!2641930) b!6427699))

(assert (= (and b!6427699 res!2641931) b!6427704))

(assert (= (and d!2015001 (not res!2641928)) b!6427700))

(declare-fun m!7221436 () Bool)

(assert (=> b!6427704 m!7221436))

(declare-fun m!7221438 () Bool)

(assert (=> b!6427704 m!7221438))

(declare-fun m!7221440 () Bool)

(assert (=> b!6427702 m!7221440))

(assert (=> b!6427702 m!7221440))

(declare-fun m!7221442 () Bool)

(assert (=> b!6427702 m!7221442))

(declare-fun m!7221444 () Bool)

(assert (=> b!6427702 m!7221444))

(assert (=> b!6427702 m!7221440))

(declare-fun m!7221446 () Bool)

(assert (=> b!6427702 m!7221446))

(assert (=> b!6427697 m!7221436))

(declare-fun m!7221448 () Bool)

(assert (=> b!6427697 m!7221448))

(assert (=> b!6427701 m!7220838))

(assert (=> b!6427699 m!7221436))

(declare-fun m!7221450 () Bool)

(assert (=> b!6427699 m!7221450))

(declare-fun m!7221452 () Bool)

(assert (=> b!6427700 m!7221452))

(assert (=> d!2015001 m!7221452))

(declare-fun m!7221454 () Bool)

(assert (=> d!2015001 m!7221454))

(assert (=> d!2015001 m!7221290))

(assert (=> b!6426997 d!2015001))

(declare-fun b!6427714 () Bool)

(declare-fun e!3899577 () (Set Context!11428))

(declare-fun call!552865 () (Set Context!11428))

(assert (=> b!6427714 (= e!3899577 call!552865)))

(declare-fun b!6427715 () Bool)

(declare-fun c!1174587 () Bool)

(assert (=> b!6427715 (= c!1174587 (is-Star!16330 (h!71614 (exprs!6214 (h!71615 zl!343)))))))

(declare-fun e!3899576 () (Set Context!11428))

(assert (=> b!6427715 (= e!3899577 e!3899576)))

(declare-fun bm!552855 () Bool)

(declare-fun c!1174586 () Bool)

(declare-fun c!1174584 () Bool)

(declare-fun call!552863 () List!65290)

(assert (=> bm!552855 (= call!552863 ($colon$colon!2191 (exprs!6214 lt!2378290) (ite (or c!1174584 c!1174586) (regTwo!33172 (h!71614 (exprs!6214 (h!71615 zl!343)))) (h!71614 (exprs!6214 (h!71615 zl!343))))))))

(declare-fun bm!552856 () Bool)

(declare-fun call!552864 () (Set Context!11428))

(assert (=> bm!552856 (= call!552865 call!552864)))

(declare-fun b!6427716 () Bool)

(declare-fun e!3899580 () (Set Context!11428))

(declare-fun call!552860 () (Set Context!11428))

(assert (=> b!6427716 (= e!3899580 (set.union call!552860 call!552864))))

(declare-fun b!6427717 () Bool)

(declare-fun e!3899575 () (Set Context!11428))

(declare-fun e!3899579 () (Set Context!11428))

(assert (=> b!6427717 (= e!3899575 e!3899579)))

(declare-fun c!1174588 () Bool)

(assert (=> b!6427717 (= c!1174588 (is-Union!16330 (h!71614 (exprs!6214 (h!71615 zl!343)))))))

(declare-fun b!6427718 () Bool)

(declare-fun e!3899578 () Bool)

(assert (=> b!6427718 (= e!3899578 (nullable!6323 (regOne!33172 (h!71614 (exprs!6214 (h!71615 zl!343))))))))

(declare-fun b!6427719 () Bool)

(assert (=> b!6427719 (= e!3899576 call!552865)))

(declare-fun b!6427720 () Bool)

(assert (=> b!6427720 (= e!3899576 (as set.empty (Set Context!11428)))))

(declare-fun b!6427721 () Bool)

(assert (=> b!6427721 (= c!1174584 e!3899578)))

(declare-fun res!2641937 () Bool)

(assert (=> b!6427721 (=> (not res!2641937) (not e!3899578))))

(assert (=> b!6427721 (= res!2641937 (is-Concat!25175 (h!71614 (exprs!6214 (h!71615 zl!343)))))))

(assert (=> b!6427721 (= e!3899579 e!3899580)))

(declare-fun bm!552858 () Bool)

(declare-fun call!552861 () (Set Context!11428))

(assert (=> bm!552858 (= call!552864 call!552861)))

(declare-fun b!6427722 () Bool)

(assert (=> b!6427722 (= e!3899575 (set.insert lt!2378290 (as set.empty (Set Context!11428))))))

(declare-fun bm!552859 () Bool)

(declare-fun call!552862 () List!65290)

(assert (=> bm!552859 (= call!552862 call!552863)))

(declare-fun bm!552860 () Bool)

(assert (=> bm!552860 (= call!552861 (derivationStepZipperDown!1578 (ite c!1174588 (regTwo!33173 (h!71614 (exprs!6214 (h!71615 zl!343)))) (ite c!1174584 (regTwo!33172 (h!71614 (exprs!6214 (h!71615 zl!343)))) (ite c!1174586 (regOne!33172 (h!71614 (exprs!6214 (h!71615 zl!343)))) (reg!16659 (h!71614 (exprs!6214 (h!71615 zl!343))))))) (ite (or c!1174588 c!1174584) lt!2378290 (Context!11429 call!552862)) (h!71613 s!2326)))))

(declare-fun b!6427723 () Bool)

(assert (=> b!6427723 (= e!3899580 e!3899577)))

(assert (=> b!6427723 (= c!1174586 (is-Concat!25175 (h!71614 (exprs!6214 (h!71615 zl!343)))))))

(declare-fun b!6427724 () Bool)

(assert (=> b!6427724 (= e!3899579 (set.union call!552860 call!552861))))

(declare-fun d!2015005 () Bool)

(declare-fun c!1174585 () Bool)

(assert (=> d!2015005 (= c!1174585 (and (is-ElementMatch!16330 (h!71614 (exprs!6214 (h!71615 zl!343)))) (= (c!1174427 (h!71614 (exprs!6214 (h!71615 zl!343)))) (h!71613 s!2326))))))

(assert (=> d!2015005 (= (derivationStepZipperDown!1578 (h!71614 (exprs!6214 (h!71615 zl!343))) lt!2378290 (h!71613 s!2326)) e!3899575)))

(declare-fun bm!552857 () Bool)

(assert (=> bm!552857 (= call!552860 (derivationStepZipperDown!1578 (ite c!1174588 (regOne!33173 (h!71614 (exprs!6214 (h!71615 zl!343)))) (regOne!33172 (h!71614 (exprs!6214 (h!71615 zl!343))))) (ite c!1174588 lt!2378290 (Context!11429 call!552863)) (h!71613 s!2326)))))

(assert (= (and d!2015005 c!1174585) b!6427722))

(assert (= (and d!2015005 (not c!1174585)) b!6427717))

(assert (= (and b!6427717 c!1174588) b!6427724))

(assert (= (and b!6427717 (not c!1174588)) b!6427721))

(assert (= (and b!6427721 res!2641937) b!6427718))

(assert (= (and b!6427721 c!1174584) b!6427716))

(assert (= (and b!6427721 (not c!1174584)) b!6427723))

(assert (= (and b!6427723 c!1174586) b!6427714))

(assert (= (and b!6427723 (not c!1174586)) b!6427715))

(assert (= (and b!6427715 c!1174587) b!6427719))

(assert (= (and b!6427715 (not c!1174587)) b!6427720))

(assert (= (or b!6427714 b!6427719) bm!552859))

(assert (= (or b!6427714 b!6427719) bm!552856))

(assert (= (or b!6427716 bm!552859) bm!552855))

(assert (= (or b!6427716 bm!552856) bm!552858))

(assert (= (or b!6427724 bm!552858) bm!552860))

(assert (= (or b!6427724 b!6427716) bm!552857))

(declare-fun m!7221456 () Bool)

(assert (=> b!6427718 m!7221456))

(declare-fun m!7221458 () Bool)

(assert (=> b!6427722 m!7221458))

(declare-fun m!7221460 () Bool)

(assert (=> bm!552860 m!7221460))

(declare-fun m!7221462 () Bool)

(assert (=> bm!552855 m!7221462))

(declare-fun m!7221464 () Bool)

(assert (=> bm!552857 m!7221464))

(assert (=> b!6426969 d!2015005))

(declare-fun d!2015007 () Bool)

(declare-fun nullableFct!2269 (Regex!16330) Bool)

(assert (=> d!2015007 (= (nullable!6323 (h!71614 (exprs!6214 (h!71615 zl!343)))) (nullableFct!2269 (h!71614 (exprs!6214 (h!71615 zl!343)))))))

(declare-fun bs!1616644 () Bool)

(assert (= bs!1616644 d!2015007))

(declare-fun m!7221480 () Bool)

(assert (=> bs!1616644 m!7221480))

(assert (=> b!6426969 d!2015007))

(declare-fun call!552866 () (Set Context!11428))

(declare-fun e!3899583 () (Set Context!11428))

(declare-fun b!6427730 () Bool)

(assert (=> b!6427730 (= e!3899583 (set.union call!552866 (derivationStepZipperUp!1504 (Context!11429 (t!378906 (exprs!6214 (Context!11429 (Cons!65166 (h!71614 (exprs!6214 (h!71615 zl!343))) (t!378906 (exprs!6214 (h!71615 zl!343)))))))) (h!71613 s!2326))))))

(declare-fun b!6427731 () Bool)

(declare-fun e!3899584 () (Set Context!11428))

(assert (=> b!6427731 (= e!3899584 call!552866)))

(declare-fun b!6427732 () Bool)

(declare-fun e!3899585 () Bool)

(assert (=> b!6427732 (= e!3899585 (nullable!6323 (h!71614 (exprs!6214 (Context!11429 (Cons!65166 (h!71614 (exprs!6214 (h!71615 zl!343))) (t!378906 (exprs!6214 (h!71615 zl!343)))))))))))

(declare-fun b!6427733 () Bool)

(assert (=> b!6427733 (= e!3899583 e!3899584)))

(declare-fun c!1174591 () Bool)

(assert (=> b!6427733 (= c!1174591 (is-Cons!65166 (exprs!6214 (Context!11429 (Cons!65166 (h!71614 (exprs!6214 (h!71615 zl!343))) (t!378906 (exprs!6214 (h!71615 zl!343))))))))))

(declare-fun bm!552861 () Bool)

(assert (=> bm!552861 (= call!552866 (derivationStepZipperDown!1578 (h!71614 (exprs!6214 (Context!11429 (Cons!65166 (h!71614 (exprs!6214 (h!71615 zl!343))) (t!378906 (exprs!6214 (h!71615 zl!343))))))) (Context!11429 (t!378906 (exprs!6214 (Context!11429 (Cons!65166 (h!71614 (exprs!6214 (h!71615 zl!343))) (t!378906 (exprs!6214 (h!71615 zl!343)))))))) (h!71613 s!2326)))))

(declare-fun d!2015011 () Bool)

(declare-fun c!1174590 () Bool)

(assert (=> d!2015011 (= c!1174590 e!3899585)))

(declare-fun res!2641940 () Bool)

(assert (=> d!2015011 (=> (not res!2641940) (not e!3899585))))

(assert (=> d!2015011 (= res!2641940 (is-Cons!65166 (exprs!6214 (Context!11429 (Cons!65166 (h!71614 (exprs!6214 (h!71615 zl!343))) (t!378906 (exprs!6214 (h!71615 zl!343))))))))))

(assert (=> d!2015011 (= (derivationStepZipperUp!1504 (Context!11429 (Cons!65166 (h!71614 (exprs!6214 (h!71615 zl!343))) (t!378906 (exprs!6214 (h!71615 zl!343))))) (h!71613 s!2326)) e!3899583)))

(declare-fun b!6427729 () Bool)

(assert (=> b!6427729 (= e!3899584 (as set.empty (Set Context!11428)))))

(assert (= (and d!2015011 res!2641940) b!6427732))

(assert (= (and d!2015011 c!1174590) b!6427730))

(assert (= (and d!2015011 (not c!1174590)) b!6427733))

(assert (= (and b!6427733 c!1174591) b!6427731))

(assert (= (and b!6427733 (not c!1174591)) b!6427729))

(assert (= (or b!6427730 b!6427731) bm!552861))

(declare-fun m!7221482 () Bool)

(assert (=> b!6427730 m!7221482))

(declare-fun m!7221484 () Bool)

(assert (=> b!6427732 m!7221484))

(declare-fun m!7221486 () Bool)

(assert (=> bm!552861 m!7221486))

(assert (=> b!6426969 d!2015011))

(declare-fun d!2015013 () Bool)

(assert (=> d!2015013 (= (flatMap!1835 z!1189 lambda!355338) (choose!47769 z!1189 lambda!355338))))

(declare-fun bs!1616645 () Bool)

(assert (= bs!1616645 d!2015013))

(declare-fun m!7221488 () Bool)

(assert (=> bs!1616645 m!7221488))

(assert (=> b!6426969 d!2015013))

(declare-fun b!6427735 () Bool)

(declare-fun e!3899586 () (Set Context!11428))

(declare-fun call!552867 () (Set Context!11428))

(assert (=> b!6427735 (= e!3899586 (set.union call!552867 (derivationStepZipperUp!1504 (Context!11429 (t!378906 (exprs!6214 lt!2378290))) (h!71613 s!2326))))))

(declare-fun b!6427736 () Bool)

(declare-fun e!3899587 () (Set Context!11428))

(assert (=> b!6427736 (= e!3899587 call!552867)))

(declare-fun b!6427737 () Bool)

(declare-fun e!3899588 () Bool)

(assert (=> b!6427737 (= e!3899588 (nullable!6323 (h!71614 (exprs!6214 lt!2378290))))))

(declare-fun b!6427738 () Bool)

(assert (=> b!6427738 (= e!3899586 e!3899587)))

(declare-fun c!1174593 () Bool)

(assert (=> b!6427738 (= c!1174593 (is-Cons!65166 (exprs!6214 lt!2378290)))))

(declare-fun bm!552862 () Bool)

(assert (=> bm!552862 (= call!552867 (derivationStepZipperDown!1578 (h!71614 (exprs!6214 lt!2378290)) (Context!11429 (t!378906 (exprs!6214 lt!2378290))) (h!71613 s!2326)))))

(declare-fun d!2015015 () Bool)

(declare-fun c!1174592 () Bool)

(assert (=> d!2015015 (= c!1174592 e!3899588)))

(declare-fun res!2641941 () Bool)

(assert (=> d!2015015 (=> (not res!2641941) (not e!3899588))))

(assert (=> d!2015015 (= res!2641941 (is-Cons!65166 (exprs!6214 lt!2378290)))))

(assert (=> d!2015015 (= (derivationStepZipperUp!1504 lt!2378290 (h!71613 s!2326)) e!3899586)))

(declare-fun b!6427734 () Bool)

(assert (=> b!6427734 (= e!3899587 (as set.empty (Set Context!11428)))))

(assert (= (and d!2015015 res!2641941) b!6427737))

(assert (= (and d!2015015 c!1174592) b!6427735))

(assert (= (and d!2015015 (not c!1174592)) b!6427738))

(assert (= (and b!6427738 c!1174593) b!6427736))

(assert (= (and b!6427738 (not c!1174593)) b!6427734))

(assert (= (or b!6427735 b!6427736) bm!552862))

(declare-fun m!7221490 () Bool)

(assert (=> b!6427735 m!7221490))

(declare-fun m!7221492 () Bool)

(assert (=> b!6427737 m!7221492))

(declare-fun m!7221494 () Bool)

(assert (=> bm!552862 m!7221494))

(assert (=> b!6426969 d!2015015))

(declare-fun d!2015017 () Bool)

(assert (=> d!2015017 (= (flatMap!1835 z!1189 lambda!355338) (dynLambda!25887 lambda!355338 (h!71615 zl!343)))))

(declare-fun lt!2378549 () Unit!158651)

(assert (=> d!2015017 (= lt!2378549 (choose!47768 z!1189 (h!71615 zl!343) lambda!355338))))

(assert (=> d!2015017 (= z!1189 (set.insert (h!71615 zl!343) (as set.empty (Set Context!11428))))))

(assert (=> d!2015017 (= (lemmaFlatMapOnSingletonSet!1361 z!1189 (h!71615 zl!343) lambda!355338) lt!2378549)))

(declare-fun b_lambda!244255 () Bool)

(assert (=> (not b_lambda!244255) (not d!2015017)))

(declare-fun bs!1616646 () Bool)

(assert (= bs!1616646 d!2015017))

(assert (=> bs!1616646 m!7220930))

(declare-fun m!7221496 () Bool)

(assert (=> bs!1616646 m!7221496))

(declare-fun m!7221498 () Bool)

(assert (=> bs!1616646 m!7221498))

(declare-fun m!7221500 () Bool)

(assert (=> bs!1616646 m!7221500))

(assert (=> b!6426969 d!2015017))

(declare-fun call!552868 () (Set Context!11428))

(declare-fun e!3899589 () (Set Context!11428))

(declare-fun b!6427740 () Bool)

(assert (=> b!6427740 (= e!3899589 (set.union call!552868 (derivationStepZipperUp!1504 (Context!11429 (t!378906 (exprs!6214 (h!71615 zl!343)))) (h!71613 s!2326))))))

(declare-fun b!6427741 () Bool)

(declare-fun e!3899590 () (Set Context!11428))

(assert (=> b!6427741 (= e!3899590 call!552868)))

(declare-fun b!6427742 () Bool)

(declare-fun e!3899591 () Bool)

(assert (=> b!6427742 (= e!3899591 (nullable!6323 (h!71614 (exprs!6214 (h!71615 zl!343)))))))

(declare-fun b!6427743 () Bool)

(assert (=> b!6427743 (= e!3899589 e!3899590)))

(declare-fun c!1174595 () Bool)

(assert (=> b!6427743 (= c!1174595 (is-Cons!65166 (exprs!6214 (h!71615 zl!343))))))

(declare-fun bm!552863 () Bool)

(assert (=> bm!552863 (= call!552868 (derivationStepZipperDown!1578 (h!71614 (exprs!6214 (h!71615 zl!343))) (Context!11429 (t!378906 (exprs!6214 (h!71615 zl!343)))) (h!71613 s!2326)))))

(declare-fun d!2015019 () Bool)

(declare-fun c!1174594 () Bool)

(assert (=> d!2015019 (= c!1174594 e!3899591)))

(declare-fun res!2641942 () Bool)

(assert (=> d!2015019 (=> (not res!2641942) (not e!3899591))))

(assert (=> d!2015019 (= res!2641942 (is-Cons!65166 (exprs!6214 (h!71615 zl!343))))))

(assert (=> d!2015019 (= (derivationStepZipperUp!1504 (h!71615 zl!343) (h!71613 s!2326)) e!3899589)))

(declare-fun b!6427739 () Bool)

(assert (=> b!6427739 (= e!3899590 (as set.empty (Set Context!11428)))))

(assert (= (and d!2015019 res!2641942) b!6427742))

(assert (= (and d!2015019 c!1174594) b!6427740))

(assert (= (and d!2015019 (not c!1174594)) b!6427743))

(assert (= (and b!6427743 c!1174595) b!6427741))

(assert (= (and b!6427743 (not c!1174595)) b!6427739))

(assert (= (or b!6427740 b!6427741) bm!552863))

(declare-fun m!7221502 () Bool)

(assert (=> b!6427740 m!7221502))

(assert (=> b!6427742 m!7220934))

(declare-fun m!7221504 () Bool)

(assert (=> bm!552863 m!7221504))

(assert (=> b!6426969 d!2015019))

(declare-fun b!6427745 () Bool)

(declare-fun e!3899593 () List!65289)

(assert (=> b!6427745 (= e!3899593 (Cons!65165 (h!71613 (_1!36612 lt!2378313)) (++!14398 (t!378905 (_1!36612 lt!2378313)) lt!2378294)))))

(declare-fun b!6427746 () Bool)

(declare-fun res!2641944 () Bool)

(declare-fun e!3899592 () Bool)

(assert (=> b!6427746 (=> (not res!2641944) (not e!3899592))))

(declare-fun lt!2378550 () List!65289)

(assert (=> b!6427746 (= res!2641944 (= (size!40389 lt!2378550) (+ (size!40389 (_1!36612 lt!2378313)) (size!40389 lt!2378294))))))

(declare-fun b!6427744 () Bool)

(assert (=> b!6427744 (= e!3899593 lt!2378294)))

(declare-fun d!2015021 () Bool)

(assert (=> d!2015021 e!3899592))

(declare-fun res!2641943 () Bool)

(assert (=> d!2015021 (=> (not res!2641943) (not e!3899592))))

(assert (=> d!2015021 (= res!2641943 (= (content!12375 lt!2378550) (set.union (content!12375 (_1!36612 lt!2378313)) (content!12375 lt!2378294))))))

(assert (=> d!2015021 (= lt!2378550 e!3899593)))

(declare-fun c!1174596 () Bool)

(assert (=> d!2015021 (= c!1174596 (is-Nil!65165 (_1!36612 lt!2378313)))))

(assert (=> d!2015021 (= (++!14398 (_1!36612 lt!2378313) lt!2378294) lt!2378550)))

(declare-fun b!6427747 () Bool)

(assert (=> b!6427747 (= e!3899592 (or (not (= lt!2378294 Nil!65165)) (= lt!2378550 (_1!36612 lt!2378313))))))

(assert (= (and d!2015021 c!1174596) b!6427744))

(assert (= (and d!2015021 (not c!1174596)) b!6427745))

(assert (= (and d!2015021 res!2641943) b!6427746))

(assert (= (and b!6427746 res!2641944) b!6427747))

(declare-fun m!7221506 () Bool)

(assert (=> b!6427745 m!7221506))

(declare-fun m!7221508 () Bool)

(assert (=> b!6427746 m!7221508))

(assert (=> b!6427746 m!7221344))

(declare-fun m!7221510 () Bool)

(assert (=> b!6427746 m!7221510))

(declare-fun m!7221512 () Bool)

(assert (=> d!2015021 m!7221512))

(assert (=> d!2015021 m!7221350))

(declare-fun m!7221514 () Bool)

(assert (=> d!2015021 m!7221514))

(assert (=> b!6426988 d!2015021))

(declare-fun b!6427749 () Bool)

(declare-fun e!3899595 () List!65289)

(assert (=> b!6427749 (= e!3899595 (Cons!65165 (h!71613 lt!2378319) (++!14398 (t!378905 lt!2378319) (_2!36612 lt!2378308))))))

(declare-fun b!6427750 () Bool)

(declare-fun res!2641946 () Bool)

(declare-fun e!3899594 () Bool)

(assert (=> b!6427750 (=> (not res!2641946) (not e!3899594))))

(declare-fun lt!2378551 () List!65289)

(assert (=> b!6427750 (= res!2641946 (= (size!40389 lt!2378551) (+ (size!40389 lt!2378319) (size!40389 (_2!36612 lt!2378308)))))))

(declare-fun b!6427748 () Bool)

(assert (=> b!6427748 (= e!3899595 (_2!36612 lt!2378308))))

(declare-fun d!2015023 () Bool)

(assert (=> d!2015023 e!3899594))

(declare-fun res!2641945 () Bool)

(assert (=> d!2015023 (=> (not res!2641945) (not e!3899594))))

(assert (=> d!2015023 (= res!2641945 (= (content!12375 lt!2378551) (set.union (content!12375 lt!2378319) (content!12375 (_2!36612 lt!2378308)))))))

(assert (=> d!2015023 (= lt!2378551 e!3899595)))

(declare-fun c!1174597 () Bool)

(assert (=> d!2015023 (= c!1174597 (is-Nil!65165 lt!2378319))))

(assert (=> d!2015023 (= (++!14398 lt!2378319 (_2!36612 lt!2378308)) lt!2378551)))

(declare-fun b!6427751 () Bool)

(assert (=> b!6427751 (= e!3899594 (or (not (= (_2!36612 lt!2378308) Nil!65165)) (= lt!2378551 lt!2378319)))))

(assert (= (and d!2015023 c!1174597) b!6427748))

(assert (= (and d!2015023 (not c!1174597)) b!6427749))

(assert (= (and d!2015023 res!2641945) b!6427750))

(assert (= (and b!6427750 res!2641946) b!6427751))

(declare-fun m!7221516 () Bool)

(assert (=> b!6427749 m!7221516))

(declare-fun m!7221518 () Bool)

(assert (=> b!6427750 m!7221518))

(declare-fun m!7221520 () Bool)

(assert (=> b!6427750 m!7221520))

(declare-fun m!7221522 () Bool)

(assert (=> b!6427750 m!7221522))

(declare-fun m!7221524 () Bool)

(assert (=> d!2015023 m!7221524))

(declare-fun m!7221526 () Bool)

(assert (=> d!2015023 m!7221526))

(declare-fun m!7221528 () Bool)

(assert (=> d!2015023 m!7221528))

(assert (=> b!6426988 d!2015023))

(declare-fun b!6427753 () Bool)

(declare-fun e!3899597 () List!65289)

(assert (=> b!6427753 (= e!3899597 (Cons!65165 (h!71613 (_2!36612 lt!2378313)) (++!14398 (t!378905 (_2!36612 lt!2378313)) (_2!36612 lt!2378308))))))

(declare-fun b!6427754 () Bool)

(declare-fun res!2641948 () Bool)

(declare-fun e!3899596 () Bool)

(assert (=> b!6427754 (=> (not res!2641948) (not e!3899596))))

(declare-fun lt!2378552 () List!65289)

(assert (=> b!6427754 (= res!2641948 (= (size!40389 lt!2378552) (+ (size!40389 (_2!36612 lt!2378313)) (size!40389 (_2!36612 lt!2378308)))))))

(declare-fun b!6427752 () Bool)

(assert (=> b!6427752 (= e!3899597 (_2!36612 lt!2378308))))

(declare-fun d!2015025 () Bool)

(assert (=> d!2015025 e!3899596))

(declare-fun res!2641947 () Bool)

(assert (=> d!2015025 (=> (not res!2641947) (not e!3899596))))

(assert (=> d!2015025 (= res!2641947 (= (content!12375 lt!2378552) (set.union (content!12375 (_2!36612 lt!2378313)) (content!12375 (_2!36612 lt!2378308)))))))

(assert (=> d!2015025 (= lt!2378552 e!3899597)))

(declare-fun c!1174598 () Bool)

(assert (=> d!2015025 (= c!1174598 (is-Nil!65165 (_2!36612 lt!2378313)))))

(assert (=> d!2015025 (= (++!14398 (_2!36612 lt!2378313) (_2!36612 lt!2378308)) lt!2378552)))

(declare-fun b!6427755 () Bool)

(assert (=> b!6427755 (= e!3899596 (or (not (= (_2!36612 lt!2378308) Nil!65165)) (= lt!2378552 (_2!36612 lt!2378313))))))

(assert (= (and d!2015025 c!1174598) b!6427752))

(assert (= (and d!2015025 (not c!1174598)) b!6427753))

(assert (= (and d!2015025 res!2641947) b!6427754))

(assert (= (and b!6427754 res!2641948) b!6427755))

(declare-fun m!7221530 () Bool)

(assert (=> b!6427753 m!7221530))

(declare-fun m!7221532 () Bool)

(assert (=> b!6427754 m!7221532))

(assert (=> b!6427754 m!7221346))

(assert (=> b!6427754 m!7221522))

(declare-fun m!7221534 () Bool)

(assert (=> d!2015025 m!7221534))

(assert (=> d!2015025 m!7221352))

(assert (=> d!2015025 m!7221528))

(assert (=> b!6426988 d!2015025))

(declare-fun d!2015027 () Bool)

(assert (=> d!2015027 (= (++!14398 (++!14398 (_1!36612 lt!2378313) (_2!36612 lt!2378313)) (_2!36612 lt!2378308)) (++!14398 (_1!36612 lt!2378313) (++!14398 (_2!36612 lt!2378313) (_2!36612 lt!2378308))))))

(declare-fun lt!2378557 () Unit!158651)

(declare-fun choose!47779 (List!65289 List!65289 List!65289) Unit!158651)

(assert (=> d!2015027 (= lt!2378557 (choose!47779 (_1!36612 lt!2378313) (_2!36612 lt!2378313) (_2!36612 lt!2378308)))))

(assert (=> d!2015027 (= (lemmaConcatAssociativity!2901 (_1!36612 lt!2378313) (_2!36612 lt!2378313) (_2!36612 lt!2378308)) lt!2378557)))

(declare-fun bs!1616647 () Bool)

(assert (= bs!1616647 d!2015027))

(assert (=> bs!1616647 m!7220912))

(declare-fun m!7221536 () Bool)

(assert (=> bs!1616647 m!7221536))

(assert (=> bs!1616647 m!7220900))

(assert (=> bs!1616647 m!7220900))

(declare-fun m!7221538 () Bool)

(assert (=> bs!1616647 m!7221538))

(assert (=> bs!1616647 m!7220912))

(declare-fun m!7221540 () Bool)

(assert (=> bs!1616647 m!7221540))

(assert (=> b!6426988 d!2015027))

(declare-fun d!2015029 () Bool)

(declare-fun lt!2378558 () Regex!16330)

(assert (=> d!2015029 (validRegex!8066 lt!2378558)))

(assert (=> d!2015029 (= lt!2378558 (generalisedUnion!2174 (unfocusZipperList!1751 (Cons!65167 lt!2378327 Nil!65167))))))

(assert (=> d!2015029 (= (unfocusZipper!2072 (Cons!65167 lt!2378327 Nil!65167)) lt!2378558)))

(declare-fun bs!1616648 () Bool)

(assert (= bs!1616648 d!2015029))

(declare-fun m!7221542 () Bool)

(assert (=> bs!1616648 m!7221542))

(declare-fun m!7221544 () Bool)

(assert (=> bs!1616648 m!7221544))

(assert (=> bs!1616648 m!7221544))

(declare-fun m!7221546 () Bool)

(assert (=> bs!1616648 m!7221546))

(assert (=> b!6427011 d!2015029))

(declare-fun d!2015031 () Bool)

(assert (=> d!2015031 (= (isDefined!12924 lt!2378334) (not (isEmpty!37335 lt!2378334)))))

(declare-fun bs!1616649 () Bool)

(assert (= bs!1616649 d!2015031))

(declare-fun m!7221548 () Bool)

(assert (=> bs!1616649 m!7221548))

(assert (=> b!6426989 d!2015031))

(declare-fun b!6427761 () Bool)

(declare-fun e!3899601 () List!65289)

(assert (=> b!6427761 (= e!3899601 (Cons!65165 (h!71613 (_1!36612 lt!2378308)) (++!14398 (t!378905 (_1!36612 lt!2378308)) (_2!36612 lt!2378308))))))

(declare-fun b!6427762 () Bool)

(declare-fun res!2641954 () Bool)

(declare-fun e!3899600 () Bool)

(assert (=> b!6427762 (=> (not res!2641954) (not e!3899600))))

(declare-fun lt!2378559 () List!65289)

(assert (=> b!6427762 (= res!2641954 (= (size!40389 lt!2378559) (+ (size!40389 (_1!36612 lt!2378308)) (size!40389 (_2!36612 lt!2378308)))))))

(declare-fun b!6427760 () Bool)

(assert (=> b!6427760 (= e!3899601 (_2!36612 lt!2378308))))

(declare-fun d!2015033 () Bool)

(assert (=> d!2015033 e!3899600))

(declare-fun res!2641953 () Bool)

(assert (=> d!2015033 (=> (not res!2641953) (not e!3899600))))

(assert (=> d!2015033 (= res!2641953 (= (content!12375 lt!2378559) (set.union (content!12375 (_1!36612 lt!2378308)) (content!12375 (_2!36612 lt!2378308)))))))

(assert (=> d!2015033 (= lt!2378559 e!3899601)))

(declare-fun c!1174599 () Bool)

(assert (=> d!2015033 (= c!1174599 (is-Nil!65165 (_1!36612 lt!2378308)))))

(assert (=> d!2015033 (= (++!14398 (_1!36612 lt!2378308) (_2!36612 lt!2378308)) lt!2378559)))

(declare-fun b!6427763 () Bool)

(assert (=> b!6427763 (= e!3899600 (or (not (= (_2!36612 lt!2378308) Nil!65165)) (= lt!2378559 (_1!36612 lt!2378308))))))

(assert (= (and d!2015033 c!1174599) b!6427760))

(assert (= (and d!2015033 (not c!1174599)) b!6427761))

(assert (= (and d!2015033 res!2641953) b!6427762))

(assert (= (and b!6427762 res!2641954) b!6427763))

(declare-fun m!7221550 () Bool)

(assert (=> b!6427761 m!7221550))

(declare-fun m!7221552 () Bool)

(assert (=> b!6427762 m!7221552))

(declare-fun m!7221554 () Bool)

(assert (=> b!6427762 m!7221554))

(assert (=> b!6427762 m!7221522))

(declare-fun m!7221556 () Bool)

(assert (=> d!2015033 m!7221556))

(declare-fun m!7221558 () Bool)

(assert (=> d!2015033 m!7221558))

(assert (=> d!2015033 m!7221528))

(assert (=> b!6426989 d!2015033))

(declare-fun b!6427764 () Bool)

(declare-fun res!2641957 () Bool)

(declare-fun e!3899603 () Bool)

(assert (=> b!6427764 (=> (not res!2641957) (not e!3899603))))

(declare-fun lt!2378563 () Option!16221)

(assert (=> b!6427764 (= res!2641957 (matchR!8513 lt!2378328 (_1!36612 (get!22579 lt!2378563))))))

(declare-fun b!6427765 () Bool)

(declare-fun e!3899602 () Option!16221)

(assert (=> b!6427765 (= e!3899602 None!16220)))

(declare-fun b!6427766 () Bool)

(declare-fun res!2641958 () Bool)

(assert (=> b!6427766 (=> (not res!2641958) (not e!3899603))))

(assert (=> b!6427766 (= res!2641958 (matchR!8513 (regTwo!33172 r!7292) (_2!36612 (get!22579 lt!2378563))))))

(declare-fun b!6427767 () Bool)

(declare-fun e!3899605 () Bool)

(assert (=> b!6427767 (= e!3899605 (not (isDefined!12924 lt!2378563)))))

(declare-fun d!2015035 () Bool)

(assert (=> d!2015035 e!3899605))

(declare-fun res!2641955 () Bool)

(assert (=> d!2015035 (=> res!2641955 e!3899605)))

(assert (=> d!2015035 (= res!2641955 e!3899603)))

(declare-fun res!2641959 () Bool)

(assert (=> d!2015035 (=> (not res!2641959) (not e!3899603))))

(assert (=> d!2015035 (= res!2641959 (isDefined!12924 lt!2378563))))

(declare-fun e!3899604 () Option!16221)

(assert (=> d!2015035 (= lt!2378563 e!3899604)))

(declare-fun c!1174600 () Bool)

(declare-fun e!3899606 () Bool)

(assert (=> d!2015035 (= c!1174600 e!3899606)))

(declare-fun res!2641956 () Bool)

(assert (=> d!2015035 (=> (not res!2641956) (not e!3899606))))

(assert (=> d!2015035 (= res!2641956 (matchR!8513 lt!2378328 Nil!65165))))

(assert (=> d!2015035 (validRegex!8066 lt!2378328)))

(assert (=> d!2015035 (= (findConcatSeparation!2635 lt!2378328 (regTwo!33172 r!7292) Nil!65165 s!2326 s!2326) lt!2378563)))

(declare-fun b!6427768 () Bool)

(assert (=> b!6427768 (= e!3899606 (matchR!8513 (regTwo!33172 r!7292) s!2326))))

(declare-fun b!6427769 () Bool)

(declare-fun lt!2378561 () Unit!158651)

(declare-fun lt!2378560 () Unit!158651)

(assert (=> b!6427769 (= lt!2378561 lt!2378560)))

(assert (=> b!6427769 (= (++!14398 (++!14398 Nil!65165 (Cons!65165 (h!71613 s!2326) Nil!65165)) (t!378905 s!2326)) s!2326)))

(assert (=> b!6427769 (= lt!2378560 (lemmaMoveElementToOtherListKeepsConcatEq!2493 Nil!65165 (h!71613 s!2326) (t!378905 s!2326) s!2326))))

(assert (=> b!6427769 (= e!3899602 (findConcatSeparation!2635 lt!2378328 (regTwo!33172 r!7292) (++!14398 Nil!65165 (Cons!65165 (h!71613 s!2326) Nil!65165)) (t!378905 s!2326) s!2326))))

(declare-fun b!6427770 () Bool)

(assert (=> b!6427770 (= e!3899604 e!3899602)))

(declare-fun c!1174601 () Bool)

(assert (=> b!6427770 (= c!1174601 (is-Nil!65165 s!2326))))

(declare-fun b!6427771 () Bool)

(assert (=> b!6427771 (= e!3899603 (= (++!14398 (_1!36612 (get!22579 lt!2378563)) (_2!36612 (get!22579 lt!2378563))) s!2326))))

(declare-fun b!6427772 () Bool)

(assert (=> b!6427772 (= e!3899604 (Some!16220 (tuple2!66619 Nil!65165 s!2326)))))

(assert (= (and d!2015035 res!2641956) b!6427768))

(assert (= (and d!2015035 c!1174600) b!6427772))

(assert (= (and d!2015035 (not c!1174600)) b!6427770))

(assert (= (and b!6427770 c!1174601) b!6427765))

(assert (= (and b!6427770 (not c!1174601)) b!6427769))

(assert (= (and d!2015035 res!2641959) b!6427764))

(assert (= (and b!6427764 res!2641957) b!6427766))

(assert (= (and b!6427766 res!2641958) b!6427771))

(assert (= (and d!2015035 (not res!2641955)) b!6427767))

(declare-fun m!7221560 () Bool)

(assert (=> b!6427771 m!7221560))

(declare-fun m!7221562 () Bool)

(assert (=> b!6427771 m!7221562))

(declare-fun m!7221564 () Bool)

(assert (=> b!6427769 m!7221564))

(assert (=> b!6427769 m!7221564))

(declare-fun m!7221566 () Bool)

(assert (=> b!6427769 m!7221566))

(declare-fun m!7221568 () Bool)

(assert (=> b!6427769 m!7221568))

(assert (=> b!6427769 m!7221564))

(declare-fun m!7221570 () Bool)

(assert (=> b!6427769 m!7221570))

(assert (=> b!6427764 m!7221560))

(declare-fun m!7221572 () Bool)

(assert (=> b!6427764 m!7221572))

(declare-fun m!7221574 () Bool)

(assert (=> b!6427768 m!7221574))

(assert (=> b!6427766 m!7221560))

(declare-fun m!7221576 () Bool)

(assert (=> b!6427766 m!7221576))

(declare-fun m!7221578 () Bool)

(assert (=> b!6427767 m!7221578))

(assert (=> d!2015035 m!7221578))

(declare-fun m!7221580 () Bool)

(assert (=> d!2015035 m!7221580))

(assert (=> d!2015035 m!7220960))

(assert (=> b!6426989 d!2015035))

(declare-fun bs!1616656 () Bool)

(declare-fun d!2015037 () Bool)

(assert (= bs!1616656 (and d!2015037 d!2014977)))

(declare-fun lambda!355436 () Int)

(assert (=> bs!1616656 (= (and (= s!2326 (_1!36612 lt!2378308)) (= lt!2378328 (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355436 lambda!355426))))

(declare-fun bs!1616658 () Bool)

(assert (= bs!1616658 (and d!2015037 d!2014947)))

(assert (=> bs!1616658 (not (= lambda!355436 lambda!355414))))

(declare-fun bs!1616659 () Bool)

(assert (= bs!1616659 (and d!2015037 d!2014937)))

(assert (=> bs!1616659 (not (= lambda!355436 lambda!355408))))

(declare-fun bs!1616661 () Bool)

(assert (= bs!1616661 (and d!2015037 b!6426986)))

(assert (=> bs!1616661 (= (= lt!2378328 (regOne!33172 r!7292)) (= lambda!355436 lambda!355336))))

(declare-fun bs!1616662 () Bool)

(assert (= bs!1616662 (and d!2015037 b!6427497)))

(assert (=> bs!1616662 (not (= lambda!355436 lambda!355398))))

(declare-fun bs!1616663 () Bool)

(assert (= bs!1616663 (and d!2015037 b!6426997)))

(assert (=> bs!1616663 (not (= lambda!355436 lambda!355342))))

(declare-fun bs!1616664 () Bool)

(assert (= bs!1616664 (and d!2015037 b!6426989)))

(assert (=> bs!1616664 (= lambda!355436 lambda!355339)))

(assert (=> bs!1616658 (= (and (= s!2326 (_1!36612 lt!2378308)) (= lt!2378328 (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355436 lambda!355413))))

(assert (=> bs!1616663 (= (and (= s!2326 (_1!36612 lt!2378308)) (= lt!2378328 (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355436 lambda!355341))))

(assert (=> bs!1616659 (= (and (= s!2326 (_1!36612 lt!2378308)) (= lt!2378328 (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) (Star!16330 (reg!16659 (regOne!33172 r!7292))))) (= lambda!355436 lambda!355407))))

(assert (=> bs!1616664 (not (= lambda!355436 lambda!355340))))

(assert (=> bs!1616663 (not (= lambda!355436 lambda!355343))))

(assert (=> bs!1616661 (not (= lambda!355436 lambda!355337))))

(declare-fun bs!1616665 () Bool)

(assert (= bs!1616665 (and d!2015037 b!6427504)))

(assert (=> bs!1616665 (not (= lambda!355436 lambda!355396))))

(assert (=> d!2015037 true))

(assert (=> d!2015037 true))

(assert (=> d!2015037 true))

(assert (=> d!2015037 (= (isDefined!12924 (findConcatSeparation!2635 lt!2378328 (regTwo!33172 r!7292) Nil!65165 s!2326 s!2326)) (Exists!3400 lambda!355436))))

(declare-fun lt!2378564 () Unit!158651)

(assert (=> d!2015037 (= lt!2378564 (choose!47776 lt!2378328 (regTwo!33172 r!7292) s!2326))))

(assert (=> d!2015037 (validRegex!8066 lt!2378328)))

(assert (=> d!2015037 (= (lemmaFindConcatSeparationEquivalentToExists!2399 lt!2378328 (regTwo!33172 r!7292) s!2326) lt!2378564)))

(declare-fun bs!1616666 () Bool)

(assert (= bs!1616666 d!2015037))

(declare-fun m!7221590 () Bool)

(assert (=> bs!1616666 m!7221590))

(assert (=> bs!1616666 m!7220856))

(declare-fun m!7221592 () Bool)

(assert (=> bs!1616666 m!7221592))

(assert (=> bs!1616666 m!7220856))

(declare-fun m!7221594 () Bool)

(assert (=> bs!1616666 m!7221594))

(assert (=> bs!1616666 m!7220960))

(assert (=> b!6426989 d!2015037))

(declare-fun d!2015045 () Bool)

(assert (=> d!2015045 (= (get!22579 lt!2378334) (v!52393 lt!2378334))))

(assert (=> b!6426989 d!2015045))

(declare-fun d!2015047 () Bool)

(assert (=> d!2015047 (= (Exists!3400 lambda!355339) (choose!47771 lambda!355339))))

(declare-fun bs!1616667 () Bool)

(assert (= bs!1616667 d!2015047))

(declare-fun m!7221596 () Bool)

(assert (=> bs!1616667 m!7221596))

(assert (=> b!6426989 d!2015047))

(declare-fun d!2015049 () Bool)

(assert (=> d!2015049 (= (Exists!3400 lambda!355340) (choose!47771 lambda!355340))))

(declare-fun bs!1616668 () Bool)

(assert (= bs!1616668 d!2015049))

(declare-fun m!7221598 () Bool)

(assert (=> bs!1616668 m!7221598))

(assert (=> b!6426989 d!2015049))

(declare-fun bs!1616669 () Bool)

(declare-fun d!2015051 () Bool)

(assert (= bs!1616669 (and d!2015051 d!2015037)))

(declare-fun lambda!355437 () Int)

(assert (=> bs!1616669 (= lambda!355437 lambda!355436)))

(declare-fun bs!1616670 () Bool)

(assert (= bs!1616670 (and d!2015051 d!2014977)))

(assert (=> bs!1616670 (= (and (= s!2326 (_1!36612 lt!2378308)) (= lt!2378328 (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355437 lambda!355426))))

(declare-fun bs!1616671 () Bool)

(assert (= bs!1616671 (and d!2015051 d!2014947)))

(assert (=> bs!1616671 (not (= lambda!355437 lambda!355414))))

(declare-fun bs!1616672 () Bool)

(assert (= bs!1616672 (and d!2015051 d!2014937)))

(assert (=> bs!1616672 (not (= lambda!355437 lambda!355408))))

(declare-fun bs!1616673 () Bool)

(assert (= bs!1616673 (and d!2015051 b!6426986)))

(assert (=> bs!1616673 (= (= lt!2378328 (regOne!33172 r!7292)) (= lambda!355437 lambda!355336))))

(declare-fun bs!1616674 () Bool)

(assert (= bs!1616674 (and d!2015051 b!6427497)))

(assert (=> bs!1616674 (not (= lambda!355437 lambda!355398))))

(declare-fun bs!1616675 () Bool)

(assert (= bs!1616675 (and d!2015051 b!6426997)))

(assert (=> bs!1616675 (not (= lambda!355437 lambda!355342))))

(declare-fun bs!1616676 () Bool)

(assert (= bs!1616676 (and d!2015051 b!6426989)))

(assert (=> bs!1616676 (= lambda!355437 lambda!355339)))

(assert (=> bs!1616671 (= (and (= s!2326 (_1!36612 lt!2378308)) (= lt!2378328 (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355437 lambda!355413))))

(assert (=> bs!1616675 (= (and (= s!2326 (_1!36612 lt!2378308)) (= lt!2378328 (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355437 lambda!355341))))

(assert (=> bs!1616672 (= (and (= s!2326 (_1!36612 lt!2378308)) (= lt!2378328 (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) (Star!16330 (reg!16659 (regOne!33172 r!7292))))) (= lambda!355437 lambda!355407))))

(assert (=> bs!1616676 (not (= lambda!355437 lambda!355340))))

(assert (=> bs!1616675 (not (= lambda!355437 lambda!355343))))

(assert (=> bs!1616673 (not (= lambda!355437 lambda!355337))))

(declare-fun bs!1616677 () Bool)

(assert (= bs!1616677 (and d!2015051 b!6427504)))

(assert (=> bs!1616677 (not (= lambda!355437 lambda!355396))))

(assert (=> d!2015051 true))

(assert (=> d!2015051 true))

(assert (=> d!2015051 true))

(declare-fun lambda!355438 () Int)

(assert (=> bs!1616669 (not (= lambda!355438 lambda!355436))))

(assert (=> bs!1616670 (not (= lambda!355438 lambda!355426))))

(assert (=> bs!1616671 (= (and (= s!2326 (_1!36612 lt!2378308)) (= lt!2378328 (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355438 lambda!355414))))

(assert (=> bs!1616672 (not (= lambda!355438 lambda!355408))))

(assert (=> bs!1616673 (not (= lambda!355438 lambda!355336))))

(assert (=> bs!1616674 (= (and (= s!2326 (_1!36612 lt!2378308)) (= lt!2378328 (regOne!33172 lt!2378328)) (= (regTwo!33172 r!7292) (regTwo!33172 lt!2378328))) (= lambda!355438 lambda!355398))))

(assert (=> bs!1616675 (not (= lambda!355438 lambda!355342))))

(assert (=> bs!1616676 (not (= lambda!355438 lambda!355339))))

(assert (=> bs!1616675 (not (= lambda!355438 lambda!355341))))

(assert (=> bs!1616672 (not (= lambda!355438 lambda!355407))))

(assert (=> bs!1616676 (= lambda!355438 lambda!355340)))

(assert (=> bs!1616675 (= (and (= s!2326 (_1!36612 lt!2378308)) (= lt!2378328 (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355438 lambda!355343))))

(assert (=> bs!1616673 (= (= lt!2378328 (regOne!33172 r!7292)) (= lambda!355438 lambda!355337))))

(assert (=> bs!1616677 (not (= lambda!355438 lambda!355396))))

(assert (=> bs!1616671 (not (= lambda!355438 lambda!355413))))

(declare-fun bs!1616678 () Bool)

(assert (= bs!1616678 d!2015051))

(assert (=> bs!1616678 (not (= lambda!355438 lambda!355437))))

(assert (=> d!2015051 true))

(assert (=> d!2015051 true))

(assert (=> d!2015051 true))

(assert (=> d!2015051 (= (Exists!3400 lambda!355437) (Exists!3400 lambda!355438))))

(declare-fun lt!2378565 () Unit!158651)

(assert (=> d!2015051 (= lt!2378565 (choose!47774 lt!2378328 (regTwo!33172 r!7292) s!2326))))

(assert (=> d!2015051 (validRegex!8066 lt!2378328)))

(assert (=> d!2015051 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1937 lt!2378328 (regTwo!33172 r!7292) s!2326) lt!2378565)))

(declare-fun m!7221600 () Bool)

(assert (=> bs!1616678 m!7221600))

(declare-fun m!7221602 () Bool)

(assert (=> bs!1616678 m!7221602))

(declare-fun m!7221604 () Bool)

(assert (=> bs!1616678 m!7221604))

(assert (=> bs!1616678 m!7220960))

(assert (=> b!6426989 d!2015051))

(declare-fun d!2015053 () Bool)

(declare-fun c!1174608 () Bool)

(assert (=> d!2015053 (= c!1174608 (isEmpty!37330 s!2326))))

(declare-fun e!3899615 () Bool)

(assert (=> d!2015053 (= (matchZipper!2342 lt!2378293 s!2326) e!3899615)))

(declare-fun b!6427787 () Bool)

(declare-fun nullableZipper!2096 ((Set Context!11428)) Bool)

(assert (=> b!6427787 (= e!3899615 (nullableZipper!2096 lt!2378293))))

(declare-fun b!6427788 () Bool)

(assert (=> b!6427788 (= e!3899615 (matchZipper!2342 (derivationStepZipper!2296 lt!2378293 (head!13151 s!2326)) (tail!12236 s!2326)))))

(assert (= (and d!2015053 c!1174608) b!6427787))

(assert (= (and d!2015053 (not c!1174608)) b!6427788))

(declare-fun m!7221606 () Bool)

(assert (=> d!2015053 m!7221606))

(declare-fun m!7221608 () Bool)

(assert (=> b!6427787 m!7221608))

(declare-fun m!7221610 () Bool)

(assert (=> b!6427788 m!7221610))

(assert (=> b!6427788 m!7221610))

(declare-fun m!7221612 () Bool)

(assert (=> b!6427788 m!7221612))

(declare-fun m!7221614 () Bool)

(assert (=> b!6427788 m!7221614))

(assert (=> b!6427788 m!7221612))

(assert (=> b!6427788 m!7221614))

(declare-fun m!7221616 () Bool)

(assert (=> b!6427788 m!7221616))

(assert (=> b!6426992 d!2015053))

(declare-fun d!2015055 () Bool)

(declare-fun c!1174609 () Bool)

(assert (=> d!2015055 (= c!1174609 (isEmpty!37330 (t!378905 s!2326)))))

(declare-fun e!3899620 () Bool)

(assert (=> d!2015055 (= (matchZipper!2342 lt!2378332 (t!378905 s!2326)) e!3899620)))

(declare-fun b!6427797 () Bool)

(assert (=> b!6427797 (= e!3899620 (nullableZipper!2096 lt!2378332))))

(declare-fun b!6427798 () Bool)

(assert (=> b!6427798 (= e!3899620 (matchZipper!2342 (derivationStepZipper!2296 lt!2378332 (head!13151 (t!378905 s!2326))) (tail!12236 (t!378905 s!2326))))))

(assert (= (and d!2015055 c!1174609) b!6427797))

(assert (= (and d!2015055 (not c!1174609)) b!6427798))

(declare-fun m!7221618 () Bool)

(assert (=> d!2015055 m!7221618))

(declare-fun m!7221620 () Bool)

(assert (=> b!6427797 m!7221620))

(declare-fun m!7221622 () Bool)

(assert (=> b!6427798 m!7221622))

(assert (=> b!6427798 m!7221622))

(declare-fun m!7221624 () Bool)

(assert (=> b!6427798 m!7221624))

(declare-fun m!7221626 () Bool)

(assert (=> b!6427798 m!7221626))

(assert (=> b!6427798 m!7221624))

(assert (=> b!6427798 m!7221626))

(declare-fun m!7221628 () Bool)

(assert (=> b!6427798 m!7221628))

(assert (=> b!6426992 d!2015055))

(declare-fun bs!1616679 () Bool)

(declare-fun d!2015057 () Bool)

(assert (= bs!1616679 (and d!2015057 d!2014899)))

(declare-fun lambda!355441 () Int)

(assert (=> bs!1616679 (= lambda!355441 lambda!355384)))

(declare-fun bs!1616680 () Bool)

(assert (= bs!1616680 (and d!2015057 d!2014905)))

(assert (=> bs!1616680 (= lambda!355441 lambda!355387)))

(assert (=> d!2015057 (= (inv!84073 setElem!43881) (forall!15520 (exprs!6214 setElem!43881) lambda!355441))))

(declare-fun bs!1616681 () Bool)

(assert (= bs!1616681 d!2015057))

(declare-fun m!7221630 () Bool)

(assert (=> bs!1616681 m!7221630))

(assert (=> setNonEmpty!43881 d!2015057))

(declare-fun d!2015059 () Bool)

(assert (=> d!2015059 (= (isEmpty!37331 (t!378906 (exprs!6214 (h!71615 zl!343)))) (is-Nil!65166 (t!378906 (exprs!6214 (h!71615 zl!343)))))))

(assert (=> b!6427004 d!2015059))

(declare-fun b!6427799 () Bool)

(declare-fun res!2641972 () Bool)

(declare-fun e!3899627 () Bool)

(assert (=> b!6427799 (=> res!2641972 e!3899627)))

(assert (=> b!6427799 (= res!2641972 (not (is-ElementMatch!16330 lt!2378331)))))

(declare-fun e!3899623 () Bool)

(assert (=> b!6427799 (= e!3899623 e!3899627)))

(declare-fun d!2015061 () Bool)

(declare-fun e!3899624 () Bool)

(assert (=> d!2015061 e!3899624))

(declare-fun c!1174612 () Bool)

(assert (=> d!2015061 (= c!1174612 (is-EmptyExpr!16330 lt!2378331))))

(declare-fun lt!2378572 () Bool)

(declare-fun e!3899622 () Bool)

(assert (=> d!2015061 (= lt!2378572 e!3899622)))

(declare-fun c!1174610 () Bool)

(assert (=> d!2015061 (= c!1174610 (isEmpty!37330 s!2326))))

(assert (=> d!2015061 (validRegex!8066 lt!2378331)))

(assert (=> d!2015061 (= (matchR!8513 lt!2378331 s!2326) lt!2378572)))

(declare-fun bm!552864 () Bool)

(declare-fun call!552869 () Bool)

(assert (=> bm!552864 (= call!552869 (isEmpty!37330 s!2326))))

(declare-fun b!6427800 () Bool)

(declare-fun res!2641977 () Bool)

(declare-fun e!3899621 () Bool)

(assert (=> b!6427800 (=> res!2641977 e!3899621)))

(assert (=> b!6427800 (= res!2641977 (not (isEmpty!37330 (tail!12236 s!2326))))))

(declare-fun b!6427801 () Bool)

(assert (=> b!6427801 (= e!3899624 e!3899623)))

(declare-fun c!1174611 () Bool)

(assert (=> b!6427801 (= c!1174611 (is-EmptyLang!16330 lt!2378331))))

(declare-fun b!6427802 () Bool)

(declare-fun e!3899626 () Bool)

(assert (=> b!6427802 (= e!3899626 (= (head!13151 s!2326) (c!1174427 lt!2378331)))))

(declare-fun b!6427803 () Bool)

(assert (=> b!6427803 (= e!3899623 (not lt!2378572))))

(declare-fun b!6427804 () Bool)

(assert (=> b!6427804 (= e!3899622 (nullable!6323 lt!2378331))))

(declare-fun b!6427805 () Bool)

(declare-fun e!3899625 () Bool)

(assert (=> b!6427805 (= e!3899625 e!3899621)))

(declare-fun res!2641975 () Bool)

(assert (=> b!6427805 (=> res!2641975 e!3899621)))

(assert (=> b!6427805 (= res!2641975 call!552869)))

(declare-fun b!6427806 () Bool)

(assert (=> b!6427806 (= e!3899622 (matchR!8513 (derivativeStep!5034 lt!2378331 (head!13151 s!2326)) (tail!12236 s!2326)))))

(declare-fun b!6427807 () Bool)

(assert (=> b!6427807 (= e!3899621 (not (= (head!13151 s!2326) (c!1174427 lt!2378331))))))

(declare-fun b!6427808 () Bool)

(assert (=> b!6427808 (= e!3899627 e!3899625)))

(declare-fun res!2641970 () Bool)

(assert (=> b!6427808 (=> (not res!2641970) (not e!3899625))))

(assert (=> b!6427808 (= res!2641970 (not lt!2378572))))

(declare-fun b!6427809 () Bool)

(declare-fun res!2641976 () Bool)

(assert (=> b!6427809 (=> (not res!2641976) (not e!3899626))))

(assert (=> b!6427809 (= res!2641976 (isEmpty!37330 (tail!12236 s!2326)))))

(declare-fun b!6427810 () Bool)

(assert (=> b!6427810 (= e!3899624 (= lt!2378572 call!552869))))

(declare-fun b!6427811 () Bool)

(declare-fun res!2641974 () Bool)

(assert (=> b!6427811 (=> (not res!2641974) (not e!3899626))))

(assert (=> b!6427811 (= res!2641974 (not call!552869))))

(declare-fun b!6427812 () Bool)

(declare-fun res!2641973 () Bool)

(assert (=> b!6427812 (=> res!2641973 e!3899627)))

(assert (=> b!6427812 (= res!2641973 e!3899626)))

(declare-fun res!2641971 () Bool)

(assert (=> b!6427812 (=> (not res!2641971) (not e!3899626))))

(assert (=> b!6427812 (= res!2641971 lt!2378572)))

(assert (= (and d!2015061 c!1174610) b!6427804))

(assert (= (and d!2015061 (not c!1174610)) b!6427806))

(assert (= (and d!2015061 c!1174612) b!6427810))

(assert (= (and d!2015061 (not c!1174612)) b!6427801))

(assert (= (and b!6427801 c!1174611) b!6427803))

(assert (= (and b!6427801 (not c!1174611)) b!6427799))

(assert (= (and b!6427799 (not res!2641972)) b!6427812))

(assert (= (and b!6427812 res!2641971) b!6427811))

(assert (= (and b!6427811 res!2641974) b!6427809))

(assert (= (and b!6427809 res!2641976) b!6427802))

(assert (= (and b!6427812 (not res!2641973)) b!6427808))

(assert (= (and b!6427808 res!2641970) b!6427805))

(assert (= (and b!6427805 (not res!2641975)) b!6427800))

(assert (= (and b!6427800 (not res!2641977)) b!6427807))

(assert (= (or b!6427810 b!6427805 b!6427811) bm!552864))

(assert (=> d!2015061 m!7221606))

(declare-fun m!7221632 () Bool)

(assert (=> d!2015061 m!7221632))

(assert (=> b!6427807 m!7221610))

(assert (=> b!6427809 m!7221614))

(assert (=> b!6427809 m!7221614))

(declare-fun m!7221634 () Bool)

(assert (=> b!6427809 m!7221634))

(declare-fun m!7221636 () Bool)

(assert (=> b!6427804 m!7221636))

(assert (=> b!6427802 m!7221610))

(assert (=> b!6427800 m!7221614))

(assert (=> b!6427800 m!7221614))

(assert (=> b!6427800 m!7221634))

(assert (=> b!6427806 m!7221610))

(assert (=> b!6427806 m!7221610))

(declare-fun m!7221638 () Bool)

(assert (=> b!6427806 m!7221638))

(assert (=> b!6427806 m!7221614))

(assert (=> b!6427806 m!7221638))

(assert (=> b!6427806 m!7221614))

(declare-fun m!7221640 () Bool)

(assert (=> b!6427806 m!7221640))

(assert (=> bm!552864 m!7221606))

(assert (=> b!6427006 d!2015061))

(declare-fun bs!1616682 () Bool)

(declare-fun b!6427830 () Bool)

(assert (= bs!1616682 (and b!6427830 d!2015037)))

(declare-fun lambda!355442 () Int)

(assert (=> bs!1616682 (not (= lambda!355442 lambda!355436))))

(declare-fun bs!1616683 () Bool)

(assert (= bs!1616683 (and b!6427830 d!2014977)))

(assert (=> bs!1616683 (not (= lambda!355442 lambda!355426))))

(declare-fun bs!1616684 () Bool)

(assert (= bs!1616684 (and b!6427830 d!2014947)))

(assert (=> bs!1616684 (not (= lambda!355442 lambda!355414))))

(declare-fun bs!1616685 () Bool)

(assert (= bs!1616685 (and b!6427830 d!2014937)))

(assert (=> bs!1616685 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (reg!16659 lt!2378331) (reg!16659 (regOne!33172 r!7292))) (= lt!2378331 (Star!16330 (reg!16659 (regOne!33172 r!7292))))) (= lambda!355442 lambda!355408))))

(declare-fun bs!1616686 () Bool)

(assert (= bs!1616686 (and b!6427830 b!6426986)))

(assert (=> bs!1616686 (not (= lambda!355442 lambda!355336))))

(declare-fun bs!1616687 () Bool)

(assert (= bs!1616687 (and b!6427830 b!6427497)))

(assert (=> bs!1616687 (not (= lambda!355442 lambda!355398))))

(declare-fun bs!1616689 () Bool)

(assert (= bs!1616689 (and b!6427830 b!6426997)))

(assert (=> bs!1616689 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (reg!16659 lt!2378331) (reg!16659 (regOne!33172 r!7292))) (= lt!2378331 lt!2378328)) (= lambda!355442 lambda!355342))))

(declare-fun bs!1616690 () Bool)

(assert (= bs!1616690 (and b!6427830 b!6426989)))

(assert (=> bs!1616690 (not (= lambda!355442 lambda!355339))))

(assert (=> bs!1616685 (not (= lambda!355442 lambda!355407))))

(assert (=> bs!1616690 (not (= lambda!355442 lambda!355340))))

(assert (=> bs!1616689 (not (= lambda!355442 lambda!355343))))

(assert (=> bs!1616686 (not (= lambda!355442 lambda!355337))))

(declare-fun bs!1616691 () Bool)

(assert (= bs!1616691 (and b!6427830 b!6427504)))

(assert (=> bs!1616691 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (reg!16659 lt!2378331) (reg!16659 lt!2378328)) (= lt!2378331 lt!2378328)) (= lambda!355442 lambda!355396))))

(assert (=> bs!1616684 (not (= lambda!355442 lambda!355413))))

(declare-fun bs!1616692 () Bool)

(assert (= bs!1616692 (and b!6427830 d!2015051)))

(assert (=> bs!1616692 (not (= lambda!355442 lambda!355437))))

(assert (=> bs!1616689 (not (= lambda!355442 lambda!355341))))

(assert (=> bs!1616692 (not (= lambda!355442 lambda!355438))))

(assert (=> b!6427830 true))

(assert (=> b!6427830 true))

(declare-fun bs!1616693 () Bool)

(declare-fun b!6427823 () Bool)

(assert (= bs!1616693 (and b!6427823 d!2015037)))

(declare-fun lambda!355443 () Int)

(assert (=> bs!1616693 (not (= lambda!355443 lambda!355436))))

(declare-fun bs!1616694 () Bool)

(assert (= bs!1616694 (and b!6427823 d!2014977)))

(assert (=> bs!1616694 (not (= lambda!355443 lambda!355426))))

(declare-fun bs!1616695 () Bool)

(assert (= bs!1616695 (and b!6427823 d!2014947)))

(assert (=> bs!1616695 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 lt!2378331) (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 lt!2378331) lt!2378328)) (= lambda!355443 lambda!355414))))

(declare-fun bs!1616696 () Bool)

(assert (= bs!1616696 (and b!6427823 d!2014937)))

(assert (=> bs!1616696 (not (= lambda!355443 lambda!355408))))

(declare-fun bs!1616697 () Bool)

(assert (= bs!1616697 (and b!6427823 b!6427830)))

(assert (=> bs!1616697 (not (= lambda!355443 lambda!355442))))

(declare-fun bs!1616698 () Bool)

(assert (= bs!1616698 (and b!6427823 b!6426986)))

(assert (=> bs!1616698 (not (= lambda!355443 lambda!355336))))

(declare-fun bs!1616699 () Bool)

(assert (= bs!1616699 (and b!6427823 b!6427497)))

(assert (=> bs!1616699 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 lt!2378331) (regOne!33172 lt!2378328)) (= (regTwo!33172 lt!2378331) (regTwo!33172 lt!2378328))) (= lambda!355443 lambda!355398))))

(declare-fun bs!1616700 () Bool)

(assert (= bs!1616700 (and b!6427823 b!6426997)))

(assert (=> bs!1616700 (not (= lambda!355443 lambda!355342))))

(declare-fun bs!1616701 () Bool)

(assert (= bs!1616701 (and b!6427823 b!6426989)))

(assert (=> bs!1616701 (not (= lambda!355443 lambda!355339))))

(assert (=> bs!1616696 (not (= lambda!355443 lambda!355407))))

(assert (=> bs!1616701 (= (and (= (regOne!33172 lt!2378331) lt!2378328) (= (regTwo!33172 lt!2378331) (regTwo!33172 r!7292))) (= lambda!355443 lambda!355340))))

(assert (=> bs!1616700 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 lt!2378331) (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 lt!2378331) lt!2378328)) (= lambda!355443 lambda!355343))))

(assert (=> bs!1616698 (= (and (= (regOne!33172 lt!2378331) (regOne!33172 r!7292)) (= (regTwo!33172 lt!2378331) (regTwo!33172 r!7292))) (= lambda!355443 lambda!355337))))

(declare-fun bs!1616702 () Bool)

(assert (= bs!1616702 (and b!6427823 b!6427504)))

(assert (=> bs!1616702 (not (= lambda!355443 lambda!355396))))

(assert (=> bs!1616695 (not (= lambda!355443 lambda!355413))))

(declare-fun bs!1616703 () Bool)

(assert (= bs!1616703 (and b!6427823 d!2015051)))

(assert (=> bs!1616703 (not (= lambda!355443 lambda!355437))))

(assert (=> bs!1616700 (not (= lambda!355443 lambda!355341))))

(assert (=> bs!1616703 (= (and (= (regOne!33172 lt!2378331) lt!2378328) (= (regTwo!33172 lt!2378331) (regTwo!33172 r!7292))) (= lambda!355443 lambda!355438))))

(assert (=> b!6427823 true))

(assert (=> b!6427823 true))

(declare-fun b!6427822 () Bool)

(declare-fun e!3899634 () Bool)

(declare-fun e!3899639 () Bool)

(assert (=> b!6427822 (= e!3899634 e!3899639)))

(declare-fun res!2641984 () Bool)

(assert (=> b!6427822 (= res!2641984 (not (is-EmptyLang!16330 lt!2378331)))))

(assert (=> b!6427822 (=> (not res!2641984) (not e!3899639))))

(declare-fun e!3899635 () Bool)

(declare-fun call!552870 () Bool)

(assert (=> b!6427823 (= e!3899635 call!552870)))

(declare-fun b!6427824 () Bool)

(declare-fun c!1174615 () Bool)

(assert (=> b!6427824 (= c!1174615 (is-Union!16330 lt!2378331))))

(declare-fun e!3899633 () Bool)

(declare-fun e!3899636 () Bool)

(assert (=> b!6427824 (= e!3899633 e!3899636)))

(declare-fun b!6427825 () Bool)

(declare-fun res!2641985 () Bool)

(declare-fun e!3899638 () Bool)

(assert (=> b!6427825 (=> res!2641985 e!3899638)))

(declare-fun call!552871 () Bool)

(assert (=> b!6427825 (= res!2641985 call!552871)))

(assert (=> b!6427825 (= e!3899635 e!3899638)))

(declare-fun bm!552865 () Bool)

(assert (=> bm!552865 (= call!552871 (isEmpty!37330 s!2326))))

(declare-fun b!6427826 () Bool)

(assert (=> b!6427826 (= e!3899634 call!552871)))

(declare-fun b!6427827 () Bool)

(assert (=> b!6427827 (= e!3899636 e!3899635)))

(declare-fun c!1174618 () Bool)

(assert (=> b!6427827 (= c!1174618 (is-Star!16330 lt!2378331))))

(declare-fun d!2015063 () Bool)

(declare-fun c!1174617 () Bool)

(assert (=> d!2015063 (= c!1174617 (is-EmptyExpr!16330 lt!2378331))))

(assert (=> d!2015063 (= (matchRSpec!3431 lt!2378331 s!2326) e!3899634)))

(declare-fun b!6427828 () Bool)

(assert (=> b!6427828 (= e!3899633 (= s!2326 (Cons!65165 (c!1174427 lt!2378331) Nil!65165)))))

(declare-fun bm!552866 () Bool)

(assert (=> bm!552866 (= call!552870 (Exists!3400 (ite c!1174618 lambda!355442 lambda!355443)))))

(declare-fun b!6427829 () Bool)

(declare-fun e!3899637 () Bool)

(assert (=> b!6427829 (= e!3899636 e!3899637)))

(declare-fun res!2641983 () Bool)

(assert (=> b!6427829 (= res!2641983 (matchRSpec!3431 (regOne!33173 lt!2378331) s!2326))))

(assert (=> b!6427829 (=> res!2641983 e!3899637)))

(assert (=> b!6427830 (= e!3899638 call!552870)))

(declare-fun b!6427831 () Bool)

(assert (=> b!6427831 (= e!3899637 (matchRSpec!3431 (regTwo!33173 lt!2378331) s!2326))))

(declare-fun b!6427832 () Bool)

(declare-fun c!1174616 () Bool)

(assert (=> b!6427832 (= c!1174616 (is-ElementMatch!16330 lt!2378331))))

(assert (=> b!6427832 (= e!3899639 e!3899633)))

(assert (= (and d!2015063 c!1174617) b!6427826))

(assert (= (and d!2015063 (not c!1174617)) b!6427822))

(assert (= (and b!6427822 res!2641984) b!6427832))

(assert (= (and b!6427832 c!1174616) b!6427828))

(assert (= (and b!6427832 (not c!1174616)) b!6427824))

(assert (= (and b!6427824 c!1174615) b!6427829))

(assert (= (and b!6427824 (not c!1174615)) b!6427827))

(assert (= (and b!6427829 (not res!2641983)) b!6427831))

(assert (= (and b!6427827 c!1174618) b!6427825))

(assert (= (and b!6427827 (not c!1174618)) b!6427823))

(assert (= (and b!6427825 (not res!2641985)) b!6427830))

(assert (= (or b!6427830 b!6427823) bm!552866))

(assert (= (or b!6427826 b!6427825) bm!552865))

(assert (=> bm!552865 m!7221606))

(declare-fun m!7221700 () Bool)

(assert (=> bm!552866 m!7221700))

(declare-fun m!7221702 () Bool)

(assert (=> b!6427829 m!7221702))

(declare-fun m!7221704 () Bool)

(assert (=> b!6427831 m!7221704))

(assert (=> b!6427006 d!2015063))

(declare-fun d!2015075 () Bool)

(assert (=> d!2015075 (= (matchR!8513 lt!2378331 s!2326) (matchRSpec!3431 lt!2378331 s!2326))))

(declare-fun lt!2378579 () Unit!158651)

(assert (=> d!2015075 (= lt!2378579 (choose!47775 lt!2378331 s!2326))))

(assert (=> d!2015075 (validRegex!8066 lt!2378331)))

(assert (=> d!2015075 (= (mainMatchTheorem!3431 lt!2378331 s!2326) lt!2378579)))

(declare-fun bs!1616704 () Bool)

(assert (= bs!1616704 d!2015075))

(assert (=> bs!1616704 m!7220844))

(assert (=> bs!1616704 m!7220846))

(declare-fun m!7221706 () Bool)

(assert (=> bs!1616704 m!7221706))

(assert (=> bs!1616704 m!7221632))

(assert (=> b!6427006 d!2015075))

(declare-fun bs!1616705 () Bool)

(declare-fun d!2015077 () Bool)

(assert (= bs!1616705 (and d!2015077 d!2014899)))

(declare-fun lambda!355444 () Int)

(assert (=> bs!1616705 (= lambda!355444 lambda!355384)))

(declare-fun bs!1616706 () Bool)

(assert (= bs!1616706 (and d!2015077 d!2014905)))

(assert (=> bs!1616706 (= lambda!355444 lambda!355387)))

(declare-fun bs!1616707 () Bool)

(assert (= bs!1616707 (and d!2015077 d!2015057)))

(assert (=> bs!1616707 (= lambda!355444 lambda!355441)))

(assert (=> d!2015077 (= (inv!84073 (h!71615 zl!343)) (forall!15520 (exprs!6214 (h!71615 zl!343)) lambda!355444))))

(declare-fun bs!1616708 () Bool)

(assert (= bs!1616708 d!2015077))

(declare-fun m!7221708 () Bool)

(assert (=> bs!1616708 m!7221708))

(assert (=> b!6426984 d!2015077))

(declare-fun d!2015079 () Bool)

(assert (=> d!2015079 (= (nullable!6323 (regOne!33172 (regOne!33172 r!7292))) (nullableFct!2269 (regOne!33172 (regOne!33172 r!7292))))))

(declare-fun bs!1616709 () Bool)

(assert (= bs!1616709 d!2015079))

(declare-fun m!7221710 () Bool)

(assert (=> bs!1616709 m!7221710))

(assert (=> b!6427005 d!2015079))

(declare-fun b!6427861 () Bool)

(declare-fun res!2642004 () Bool)

(declare-fun e!3899655 () Bool)

(assert (=> b!6427861 (=> (not res!2642004) (not e!3899655))))

(declare-fun lt!2378582 () Option!16221)

(assert (=> b!6427861 (= res!2642004 (matchR!8513 (regOne!33172 r!7292) (_1!36612 (get!22579 lt!2378582))))))

(declare-fun b!6427862 () Bool)

(declare-fun e!3899654 () Option!16221)

(assert (=> b!6427862 (= e!3899654 None!16220)))

(declare-fun b!6427863 () Bool)

(declare-fun res!2642005 () Bool)

(assert (=> b!6427863 (=> (not res!2642005) (not e!3899655))))

(assert (=> b!6427863 (= res!2642005 (matchR!8513 (regTwo!33172 r!7292) (_2!36612 (get!22579 lt!2378582))))))

(declare-fun b!6427864 () Bool)

(declare-fun e!3899657 () Bool)

(assert (=> b!6427864 (= e!3899657 (not (isDefined!12924 lt!2378582)))))

(declare-fun d!2015081 () Bool)

(assert (=> d!2015081 e!3899657))

(declare-fun res!2642002 () Bool)

(assert (=> d!2015081 (=> res!2642002 e!3899657)))

(assert (=> d!2015081 (= res!2642002 e!3899655)))

(declare-fun res!2642006 () Bool)

(assert (=> d!2015081 (=> (not res!2642006) (not e!3899655))))

(assert (=> d!2015081 (= res!2642006 (isDefined!12924 lt!2378582))))

(declare-fun e!3899656 () Option!16221)

(assert (=> d!2015081 (= lt!2378582 e!3899656)))

(declare-fun c!1174625 () Bool)

(declare-fun e!3899658 () Bool)

(assert (=> d!2015081 (= c!1174625 e!3899658)))

(declare-fun res!2642003 () Bool)

(assert (=> d!2015081 (=> (not res!2642003) (not e!3899658))))

(assert (=> d!2015081 (= res!2642003 (matchR!8513 (regOne!33172 r!7292) Nil!65165))))

(assert (=> d!2015081 (validRegex!8066 (regOne!33172 r!7292))))

(assert (=> d!2015081 (= (findConcatSeparation!2635 (regOne!33172 r!7292) (regTwo!33172 r!7292) Nil!65165 s!2326 s!2326) lt!2378582)))

(declare-fun b!6427865 () Bool)

(assert (=> b!6427865 (= e!3899658 (matchR!8513 (regTwo!33172 r!7292) s!2326))))

(declare-fun b!6427866 () Bool)

(declare-fun lt!2378581 () Unit!158651)

(declare-fun lt!2378580 () Unit!158651)

(assert (=> b!6427866 (= lt!2378581 lt!2378580)))

(assert (=> b!6427866 (= (++!14398 (++!14398 Nil!65165 (Cons!65165 (h!71613 s!2326) Nil!65165)) (t!378905 s!2326)) s!2326)))

(assert (=> b!6427866 (= lt!2378580 (lemmaMoveElementToOtherListKeepsConcatEq!2493 Nil!65165 (h!71613 s!2326) (t!378905 s!2326) s!2326))))

(assert (=> b!6427866 (= e!3899654 (findConcatSeparation!2635 (regOne!33172 r!7292) (regTwo!33172 r!7292) (++!14398 Nil!65165 (Cons!65165 (h!71613 s!2326) Nil!65165)) (t!378905 s!2326) s!2326))))

(declare-fun b!6427867 () Bool)

(assert (=> b!6427867 (= e!3899656 e!3899654)))

(declare-fun c!1174626 () Bool)

(assert (=> b!6427867 (= c!1174626 (is-Nil!65165 s!2326))))

(declare-fun b!6427868 () Bool)

(assert (=> b!6427868 (= e!3899655 (= (++!14398 (_1!36612 (get!22579 lt!2378582)) (_2!36612 (get!22579 lt!2378582))) s!2326))))

(declare-fun b!6427869 () Bool)

(assert (=> b!6427869 (= e!3899656 (Some!16220 (tuple2!66619 Nil!65165 s!2326)))))

(assert (= (and d!2015081 res!2642003) b!6427865))

(assert (= (and d!2015081 c!1174625) b!6427869))

(assert (= (and d!2015081 (not c!1174625)) b!6427867))

(assert (= (and b!6427867 c!1174626) b!6427862))

(assert (= (and b!6427867 (not c!1174626)) b!6427866))

(assert (= (and d!2015081 res!2642006) b!6427861))

(assert (= (and b!6427861 res!2642004) b!6427863))

(assert (= (and b!6427863 res!2642005) b!6427868))

(assert (= (and d!2015081 (not res!2642002)) b!6427864))

(declare-fun m!7221712 () Bool)

(assert (=> b!6427868 m!7221712))

(declare-fun m!7221714 () Bool)

(assert (=> b!6427868 m!7221714))

(assert (=> b!6427866 m!7221564))

(assert (=> b!6427866 m!7221564))

(assert (=> b!6427866 m!7221566))

(assert (=> b!6427866 m!7221568))

(assert (=> b!6427866 m!7221564))

(declare-fun m!7221716 () Bool)

(assert (=> b!6427866 m!7221716))

(assert (=> b!6427861 m!7221712))

(declare-fun m!7221718 () Bool)

(assert (=> b!6427861 m!7221718))

(assert (=> b!6427865 m!7221574))

(assert (=> b!6427863 m!7221712))

(declare-fun m!7221720 () Bool)

(assert (=> b!6427863 m!7221720))

(declare-fun m!7221722 () Bool)

(assert (=> b!6427864 m!7221722))

(assert (=> d!2015081 m!7221722))

(declare-fun m!7221724 () Bool)

(assert (=> d!2015081 m!7221724))

(declare-fun m!7221726 () Bool)

(assert (=> d!2015081 m!7221726))

(assert (=> b!6426986 d!2015081))

(declare-fun d!2015083 () Bool)

(assert (=> d!2015083 (= (Exists!3400 lambda!355336) (choose!47771 lambda!355336))))

(declare-fun bs!1616710 () Bool)

(assert (= bs!1616710 d!2015083))

(declare-fun m!7221728 () Bool)

(assert (=> bs!1616710 m!7221728))

(assert (=> b!6426986 d!2015083))

(declare-fun d!2015085 () Bool)

(assert (=> d!2015085 (= (Exists!3400 lambda!355337) (choose!47771 lambda!355337))))

(declare-fun bs!1616711 () Bool)

(assert (= bs!1616711 d!2015085))

(declare-fun m!7221730 () Bool)

(assert (=> bs!1616711 m!7221730))

(assert (=> b!6426986 d!2015085))

(declare-fun bs!1616712 () Bool)

(declare-fun d!2015087 () Bool)

(assert (= bs!1616712 (and d!2015087 d!2015037)))

(declare-fun lambda!355445 () Int)

(assert (=> bs!1616712 (= (= (regOne!33172 r!7292) lt!2378328) (= lambda!355445 lambda!355436))))

(declare-fun bs!1616713 () Bool)

(assert (= bs!1616713 (and d!2015087 d!2014977)))

(assert (=> bs!1616713 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 r!7292) (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355445 lambda!355426))))

(declare-fun bs!1616714 () Bool)

(assert (= bs!1616714 (and d!2015087 b!6427823)))

(assert (=> bs!1616714 (not (= lambda!355445 lambda!355443))))

(declare-fun bs!1616715 () Bool)

(assert (= bs!1616715 (and d!2015087 d!2014947)))

(assert (=> bs!1616715 (not (= lambda!355445 lambda!355414))))

(declare-fun bs!1616716 () Bool)

(assert (= bs!1616716 (and d!2015087 d!2014937)))

(assert (=> bs!1616716 (not (= lambda!355445 lambda!355408))))

(declare-fun bs!1616717 () Bool)

(assert (= bs!1616717 (and d!2015087 b!6427830)))

(assert (=> bs!1616717 (not (= lambda!355445 lambda!355442))))

(declare-fun bs!1616718 () Bool)

(assert (= bs!1616718 (and d!2015087 b!6426986)))

(assert (=> bs!1616718 (= lambda!355445 lambda!355336)))

(declare-fun bs!1616719 () Bool)

(assert (= bs!1616719 (and d!2015087 b!6427497)))

(assert (=> bs!1616719 (not (= lambda!355445 lambda!355398))))

(declare-fun bs!1616720 () Bool)

(assert (= bs!1616720 (and d!2015087 b!6426997)))

(assert (=> bs!1616720 (not (= lambda!355445 lambda!355342))))

(declare-fun bs!1616721 () Bool)

(assert (= bs!1616721 (and d!2015087 b!6426989)))

(assert (=> bs!1616721 (= (= (regOne!33172 r!7292) lt!2378328) (= lambda!355445 lambda!355339))))

(assert (=> bs!1616716 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 r!7292) (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) (Star!16330 (reg!16659 (regOne!33172 r!7292))))) (= lambda!355445 lambda!355407))))

(assert (=> bs!1616721 (not (= lambda!355445 lambda!355340))))

(assert (=> bs!1616720 (not (= lambda!355445 lambda!355343))))

(assert (=> bs!1616718 (not (= lambda!355445 lambda!355337))))

(declare-fun bs!1616722 () Bool)

(assert (= bs!1616722 (and d!2015087 b!6427504)))

(assert (=> bs!1616722 (not (= lambda!355445 lambda!355396))))

(assert (=> bs!1616715 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 r!7292) (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355445 lambda!355413))))

(declare-fun bs!1616723 () Bool)

(assert (= bs!1616723 (and d!2015087 d!2015051)))

(assert (=> bs!1616723 (= (= (regOne!33172 r!7292) lt!2378328) (= lambda!355445 lambda!355437))))

(assert (=> bs!1616720 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 r!7292) (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355445 lambda!355341))))

(assert (=> bs!1616723 (not (= lambda!355445 lambda!355438))))

(assert (=> d!2015087 true))

(assert (=> d!2015087 true))

(assert (=> d!2015087 true))

(assert (=> d!2015087 (= (isDefined!12924 (findConcatSeparation!2635 (regOne!33172 r!7292) (regTwo!33172 r!7292) Nil!65165 s!2326 s!2326)) (Exists!3400 lambda!355445))))

(declare-fun lt!2378583 () Unit!158651)

(assert (=> d!2015087 (= lt!2378583 (choose!47776 (regOne!33172 r!7292) (regTwo!33172 r!7292) s!2326))))

(assert (=> d!2015087 (validRegex!8066 (regOne!33172 r!7292))))

(assert (=> d!2015087 (= (lemmaFindConcatSeparationEquivalentToExists!2399 (regOne!33172 r!7292) (regTwo!33172 r!7292) s!2326) lt!2378583)))

(declare-fun bs!1616724 () Bool)

(assert (= bs!1616724 d!2015087))

(declare-fun m!7221732 () Bool)

(assert (=> bs!1616724 m!7221732))

(assert (=> bs!1616724 m!7220810))

(declare-fun m!7221734 () Bool)

(assert (=> bs!1616724 m!7221734))

(assert (=> bs!1616724 m!7220810))

(assert (=> bs!1616724 m!7220812))

(assert (=> bs!1616724 m!7221726))

(assert (=> b!6426986 d!2015087))

(declare-fun bs!1616725 () Bool)

(declare-fun d!2015089 () Bool)

(assert (= bs!1616725 (and d!2015089 d!2014977)))

(declare-fun lambda!355446 () Int)

(assert (=> bs!1616725 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 r!7292) (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355446 lambda!355426))))

(declare-fun bs!1616726 () Bool)

(assert (= bs!1616726 (and d!2015089 b!6427823)))

(assert (=> bs!1616726 (not (= lambda!355446 lambda!355443))))

(declare-fun bs!1616727 () Bool)

(assert (= bs!1616727 (and d!2015089 d!2014947)))

(assert (=> bs!1616727 (not (= lambda!355446 lambda!355414))))

(declare-fun bs!1616728 () Bool)

(assert (= bs!1616728 (and d!2015089 d!2014937)))

(assert (=> bs!1616728 (not (= lambda!355446 lambda!355408))))

(declare-fun bs!1616729 () Bool)

(assert (= bs!1616729 (and d!2015089 b!6427830)))

(assert (=> bs!1616729 (not (= lambda!355446 lambda!355442))))

(declare-fun bs!1616730 () Bool)

(assert (= bs!1616730 (and d!2015089 b!6426986)))

(assert (=> bs!1616730 (= lambda!355446 lambda!355336)))

(declare-fun bs!1616731 () Bool)

(assert (= bs!1616731 (and d!2015089 b!6427497)))

(assert (=> bs!1616731 (not (= lambda!355446 lambda!355398))))

(declare-fun bs!1616732 () Bool)

(assert (= bs!1616732 (and d!2015089 b!6426997)))

(assert (=> bs!1616732 (not (= lambda!355446 lambda!355342))))

(declare-fun bs!1616733 () Bool)

(assert (= bs!1616733 (and d!2015089 b!6426989)))

(assert (=> bs!1616733 (= (= (regOne!33172 r!7292) lt!2378328) (= lambda!355446 lambda!355339))))

(assert (=> bs!1616728 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 r!7292) (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) (Star!16330 (reg!16659 (regOne!33172 r!7292))))) (= lambda!355446 lambda!355407))))

(declare-fun bs!1616734 () Bool)

(assert (= bs!1616734 (and d!2015089 d!2015087)))

(assert (=> bs!1616734 (= lambda!355446 lambda!355445)))

(declare-fun bs!1616735 () Bool)

(assert (= bs!1616735 (and d!2015089 d!2015037)))

(assert (=> bs!1616735 (= (= (regOne!33172 r!7292) lt!2378328) (= lambda!355446 lambda!355436))))

(assert (=> bs!1616733 (not (= lambda!355446 lambda!355340))))

(assert (=> bs!1616732 (not (= lambda!355446 lambda!355343))))

(assert (=> bs!1616730 (not (= lambda!355446 lambda!355337))))

(declare-fun bs!1616736 () Bool)

(assert (= bs!1616736 (and d!2015089 b!6427504)))

(assert (=> bs!1616736 (not (= lambda!355446 lambda!355396))))

(assert (=> bs!1616727 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 r!7292) (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355446 lambda!355413))))

(declare-fun bs!1616737 () Bool)

(assert (= bs!1616737 (and d!2015089 d!2015051)))

(assert (=> bs!1616737 (= (= (regOne!33172 r!7292) lt!2378328) (= lambda!355446 lambda!355437))))

(assert (=> bs!1616732 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 r!7292) (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355446 lambda!355341))))

(assert (=> bs!1616737 (not (= lambda!355446 lambda!355438))))

(assert (=> d!2015089 true))

(assert (=> d!2015089 true))

(assert (=> d!2015089 true))

(declare-fun lambda!355447 () Int)

(assert (=> bs!1616725 (not (= lambda!355447 lambda!355426))))

(assert (=> bs!1616726 (= (and (= (regOne!33172 r!7292) (regOne!33172 lt!2378331)) (= (regTwo!33172 r!7292) (regTwo!33172 lt!2378331))) (= lambda!355447 lambda!355443))))

(assert (=> bs!1616727 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 r!7292) (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355447 lambda!355414))))

(assert (=> bs!1616728 (not (= lambda!355447 lambda!355408))))

(assert (=> bs!1616729 (not (= lambda!355447 lambda!355442))))

(assert (=> bs!1616730 (not (= lambda!355447 lambda!355336))))

(assert (=> bs!1616731 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 r!7292) (regOne!33172 lt!2378328)) (= (regTwo!33172 r!7292) (regTwo!33172 lt!2378328))) (= lambda!355447 lambda!355398))))

(assert (=> bs!1616732 (not (= lambda!355447 lambda!355342))))

(assert (=> bs!1616728 (not (= lambda!355447 lambda!355407))))

(assert (=> bs!1616734 (not (= lambda!355447 lambda!355445))))

(assert (=> bs!1616735 (not (= lambda!355447 lambda!355436))))

(assert (=> bs!1616733 (= (= (regOne!33172 r!7292) lt!2378328) (= lambda!355447 lambda!355340))))

(assert (=> bs!1616732 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 r!7292) (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355447 lambda!355343))))

(assert (=> bs!1616730 (= lambda!355447 lambda!355337)))

(assert (=> bs!1616736 (not (= lambda!355447 lambda!355396))))

(declare-fun bs!1616738 () Bool)

(assert (= bs!1616738 d!2015089))

(assert (=> bs!1616738 (not (= lambda!355447 lambda!355446))))

(assert (=> bs!1616733 (not (= lambda!355447 lambda!355339))))

(assert (=> bs!1616727 (not (= lambda!355447 lambda!355413))))

(assert (=> bs!1616737 (not (= lambda!355447 lambda!355437))))

(assert (=> bs!1616732 (not (= lambda!355447 lambda!355341))))

(assert (=> bs!1616737 (= (= (regOne!33172 r!7292) lt!2378328) (= lambda!355447 lambda!355438))))

(assert (=> d!2015089 true))

(assert (=> d!2015089 true))

(assert (=> d!2015089 true))

(assert (=> d!2015089 (= (Exists!3400 lambda!355446) (Exists!3400 lambda!355447))))

(declare-fun lt!2378584 () Unit!158651)

(assert (=> d!2015089 (= lt!2378584 (choose!47774 (regOne!33172 r!7292) (regTwo!33172 r!7292) s!2326))))

(assert (=> d!2015089 (validRegex!8066 (regOne!33172 r!7292))))

(assert (=> d!2015089 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1937 (regOne!33172 r!7292) (regTwo!33172 r!7292) s!2326) lt!2378584)))

(declare-fun m!7221744 () Bool)

(assert (=> bs!1616738 m!7221744))

(declare-fun m!7221746 () Bool)

(assert (=> bs!1616738 m!7221746))

(declare-fun m!7221748 () Bool)

(assert (=> bs!1616738 m!7221748))

(assert (=> bs!1616738 m!7221726))

(assert (=> b!6426986 d!2015089))

(declare-fun d!2015093 () Bool)

(assert (=> d!2015093 (= (isDefined!12924 (findConcatSeparation!2635 (regOne!33172 r!7292) (regTwo!33172 r!7292) Nil!65165 s!2326 s!2326)) (not (isEmpty!37335 (findConcatSeparation!2635 (regOne!33172 r!7292) (regTwo!33172 r!7292) Nil!65165 s!2326 s!2326))))))

(declare-fun bs!1616739 () Bool)

(assert (= bs!1616739 d!2015093))

(assert (=> bs!1616739 m!7220810))

(declare-fun m!7221750 () Bool)

(assert (=> bs!1616739 m!7221750))

(assert (=> b!6426986 d!2015093))

(declare-fun bs!1616744 () Bool)

(declare-fun d!2015095 () Bool)

(assert (= bs!1616744 (and d!2015095 d!2014899)))

(declare-fun lambda!355453 () Int)

(assert (=> bs!1616744 (= lambda!355453 lambda!355384)))

(declare-fun bs!1616745 () Bool)

(assert (= bs!1616745 (and d!2015095 d!2014905)))

(assert (=> bs!1616745 (= lambda!355453 lambda!355387)))

(declare-fun bs!1616746 () Bool)

(assert (= bs!1616746 (and d!2015095 d!2015057)))

(assert (=> bs!1616746 (= lambda!355453 lambda!355441)))

(declare-fun bs!1616747 () Bool)

(assert (= bs!1616747 (and d!2015095 d!2015077)))

(assert (=> bs!1616747 (= lambda!355453 lambda!355444)))

(declare-fun b!6427953 () Bool)

(declare-fun e!3899711 () Bool)

(declare-fun e!3899707 () Bool)

(assert (=> b!6427953 (= e!3899711 e!3899707)))

(declare-fun c!1174665 () Bool)

(assert (=> b!6427953 (= c!1174665 (isEmpty!37331 (tail!12237 (exprs!6214 (h!71615 zl!343)))))))

(declare-fun b!6427954 () Bool)

(declare-fun lt!2378590 () Regex!16330)

(declare-fun isConcat!1255 (Regex!16330) Bool)

(assert (=> b!6427954 (= e!3899707 (isConcat!1255 lt!2378590))))

(declare-fun e!3899709 () Bool)

(assert (=> d!2015095 e!3899709))

(declare-fun res!2642021 () Bool)

(assert (=> d!2015095 (=> (not res!2642021) (not e!3899709))))

(assert (=> d!2015095 (= res!2642021 (validRegex!8066 lt!2378590))))

(declare-fun e!3899708 () Regex!16330)

(assert (=> d!2015095 (= lt!2378590 e!3899708)))

(declare-fun c!1174663 () Bool)

(declare-fun e!3899710 () Bool)

(assert (=> d!2015095 (= c!1174663 e!3899710)))

(declare-fun res!2642020 () Bool)

(assert (=> d!2015095 (=> (not res!2642020) (not e!3899710))))

(assert (=> d!2015095 (= res!2642020 (is-Cons!65166 (exprs!6214 (h!71615 zl!343))))))

(assert (=> d!2015095 (forall!15520 (exprs!6214 (h!71615 zl!343)) lambda!355453)))

(assert (=> d!2015095 (= (generalisedConcat!1927 (exprs!6214 (h!71615 zl!343))) lt!2378590)))

(declare-fun b!6427955 () Bool)

(assert (=> b!6427955 (= e!3899710 (isEmpty!37331 (t!378906 (exprs!6214 (h!71615 zl!343)))))))

(declare-fun b!6427956 () Bool)

(assert (=> b!6427956 (= e!3899708 (h!71614 (exprs!6214 (h!71615 zl!343))))))

(declare-fun b!6427957 () Bool)

(declare-fun e!3899712 () Regex!16330)

(assert (=> b!6427957 (= e!3899712 (Concat!25175 (h!71614 (exprs!6214 (h!71615 zl!343))) (generalisedConcat!1927 (t!378906 (exprs!6214 (h!71615 zl!343))))))))

(declare-fun b!6427958 () Bool)

(assert (=> b!6427958 (= e!3899708 e!3899712)))

(declare-fun c!1174662 () Bool)

(assert (=> b!6427958 (= c!1174662 (is-Cons!65166 (exprs!6214 (h!71615 zl!343))))))

(declare-fun b!6427959 () Bool)

(assert (=> b!6427959 (= e!3899709 e!3899711)))

(declare-fun c!1174664 () Bool)

(assert (=> b!6427959 (= c!1174664 (isEmpty!37331 (exprs!6214 (h!71615 zl!343))))))

(declare-fun b!6427960 () Bool)

(declare-fun isEmptyExpr!1732 (Regex!16330) Bool)

(assert (=> b!6427960 (= e!3899711 (isEmptyExpr!1732 lt!2378590))))

(declare-fun b!6427961 () Bool)

(assert (=> b!6427961 (= e!3899712 EmptyExpr!16330)))

(declare-fun b!6427962 () Bool)

(assert (=> b!6427962 (= e!3899707 (= lt!2378590 (head!13152 (exprs!6214 (h!71615 zl!343)))))))

(assert (= (and d!2015095 res!2642020) b!6427955))

(assert (= (and d!2015095 c!1174663) b!6427956))

(assert (= (and d!2015095 (not c!1174663)) b!6427958))

(assert (= (and b!6427958 c!1174662) b!6427957))

(assert (= (and b!6427958 (not c!1174662)) b!6427961))

(assert (= (and d!2015095 res!2642021) b!6427959))

(assert (= (and b!6427959 c!1174664) b!6427960))

(assert (= (and b!6427959 (not c!1174664)) b!6427953))

(assert (= (and b!6427953 c!1174665) b!6427962))

(assert (= (and b!6427953 (not c!1174665)) b!6427954))

(declare-fun m!7221778 () Bool)

(assert (=> b!6427959 m!7221778))

(declare-fun m!7221780 () Bool)

(assert (=> d!2015095 m!7221780))

(declare-fun m!7221782 () Bool)

(assert (=> d!2015095 m!7221782))

(assert (=> b!6427955 m!7220920))

(declare-fun m!7221784 () Bool)

(assert (=> b!6427953 m!7221784))

(assert (=> b!6427953 m!7221784))

(declare-fun m!7221786 () Bool)

(assert (=> b!6427953 m!7221786))

(declare-fun m!7221788 () Bool)

(assert (=> b!6427954 m!7221788))

(declare-fun m!7221790 () Bool)

(assert (=> b!6427957 m!7221790))

(declare-fun m!7221792 () Bool)

(assert (=> b!6427962 m!7221792))

(declare-fun m!7221794 () Bool)

(assert (=> b!6427960 m!7221794))

(assert (=> b!6427007 d!2015095))

(declare-fun d!2015103 () Bool)

(assert (=> d!2015103 (= (flatMap!1835 lt!2378293 lambda!355338) (choose!47769 lt!2378293 lambda!355338))))

(declare-fun bs!1616748 () Bool)

(assert (= bs!1616748 d!2015103))

(declare-fun m!7221796 () Bool)

(assert (=> bs!1616748 m!7221796))

(assert (=> b!6426985 d!2015103))

(declare-fun call!552899 () (Set Context!11428))

(declare-fun b!6427980 () Bool)

(declare-fun e!3899722 () (Set Context!11428))

(assert (=> b!6427980 (= e!3899722 (set.union call!552899 (derivationStepZipperUp!1504 (Context!11429 (t!378906 (exprs!6214 lt!2378327))) (h!71613 s!2326))))))

(declare-fun b!6427981 () Bool)

(declare-fun e!3899723 () (Set Context!11428))

(assert (=> b!6427981 (= e!3899723 call!552899)))

(declare-fun b!6427982 () Bool)

(declare-fun e!3899724 () Bool)

(assert (=> b!6427982 (= e!3899724 (nullable!6323 (h!71614 (exprs!6214 lt!2378327))))))

(declare-fun b!6427983 () Bool)

(assert (=> b!6427983 (= e!3899722 e!3899723)))

(declare-fun c!1174674 () Bool)

(assert (=> b!6427983 (= c!1174674 (is-Cons!65166 (exprs!6214 lt!2378327)))))

(declare-fun bm!552894 () Bool)

(assert (=> bm!552894 (= call!552899 (derivationStepZipperDown!1578 (h!71614 (exprs!6214 lt!2378327)) (Context!11429 (t!378906 (exprs!6214 lt!2378327))) (h!71613 s!2326)))))

(declare-fun d!2015105 () Bool)

(declare-fun c!1174673 () Bool)

(assert (=> d!2015105 (= c!1174673 e!3899724)))

(declare-fun res!2642024 () Bool)

(assert (=> d!2015105 (=> (not res!2642024) (not e!3899724))))

(assert (=> d!2015105 (= res!2642024 (is-Cons!65166 (exprs!6214 lt!2378327)))))

(assert (=> d!2015105 (= (derivationStepZipperUp!1504 lt!2378327 (h!71613 s!2326)) e!3899722)))

(declare-fun b!6427979 () Bool)

(assert (=> b!6427979 (= e!3899723 (as set.empty (Set Context!11428)))))

(assert (= (and d!2015105 res!2642024) b!6427982))

(assert (= (and d!2015105 c!1174673) b!6427980))

(assert (= (and d!2015105 (not c!1174673)) b!6427983))

(assert (= (and b!6427983 c!1174674) b!6427981))

(assert (= (and b!6427983 (not c!1174674)) b!6427979))

(assert (= (or b!6427980 b!6427981) bm!552894))

(declare-fun m!7221804 () Bool)

(assert (=> b!6427980 m!7221804))

(declare-fun m!7221806 () Bool)

(assert (=> b!6427982 m!7221806))

(declare-fun m!7221810 () Bool)

(assert (=> bm!552894 m!7221810))

(assert (=> b!6426985 d!2015105))

(declare-fun d!2015109 () Bool)

(assert (=> d!2015109 (= (flatMap!1835 lt!2378293 lambda!355338) (dynLambda!25887 lambda!355338 lt!2378327))))

(declare-fun lt!2378591 () Unit!158651)

(assert (=> d!2015109 (= lt!2378591 (choose!47768 lt!2378293 lt!2378327 lambda!355338))))

(assert (=> d!2015109 (= lt!2378293 (set.insert lt!2378327 (as set.empty (Set Context!11428))))))

(assert (=> d!2015109 (= (lemmaFlatMapOnSingletonSet!1361 lt!2378293 lt!2378327 lambda!355338) lt!2378591)))

(declare-fun b_lambda!244257 () Bool)

(assert (=> (not b_lambda!244257) (not d!2015109)))

(declare-fun bs!1616749 () Bool)

(assert (= bs!1616749 d!2015109))

(assert (=> bs!1616749 m!7220936))

(declare-fun m!7221814 () Bool)

(assert (=> bs!1616749 m!7221814))

(declare-fun m!7221816 () Bool)

(assert (=> bs!1616749 m!7221816))

(assert (=> bs!1616749 m!7220938))

(assert (=> b!6426985 d!2015109))

(declare-fun bs!1616754 () Bool)

(declare-fun d!2015111 () Bool)

(assert (= bs!1616754 (and d!2015111 b!6426969)))

(declare-fun lambda!355457 () Int)

(assert (=> bs!1616754 (= lambda!355457 lambda!355338)))

(assert (=> d!2015111 true))

(assert (=> d!2015111 (= (derivationStepZipper!2296 lt!2378293 (h!71613 s!2326)) (flatMap!1835 lt!2378293 lambda!355457))))

(declare-fun bs!1616756 () Bool)

(assert (= bs!1616756 d!2015111))

(declare-fun m!7221838 () Bool)

(assert (=> bs!1616756 m!7221838))

(assert (=> b!6426985 d!2015111))

(declare-fun bs!1616761 () Bool)

(declare-fun b!6428004 () Bool)

(assert (= bs!1616761 (and b!6428004 d!2015089)))

(declare-fun lambda!355458 () Int)

(assert (=> bs!1616761 (not (= lambda!355458 lambda!355447))))

(declare-fun bs!1616763 () Bool)

(assert (= bs!1616763 (and b!6428004 d!2014977)))

(assert (=> bs!1616763 (not (= lambda!355458 lambda!355426))))

(declare-fun bs!1616764 () Bool)

(assert (= bs!1616764 (and b!6428004 b!6427823)))

(assert (=> bs!1616764 (not (= lambda!355458 lambda!355443))))

(declare-fun bs!1616765 () Bool)

(assert (= bs!1616765 (and b!6428004 d!2014947)))

(assert (=> bs!1616765 (not (= lambda!355458 lambda!355414))))

(declare-fun bs!1616767 () Bool)

(assert (= bs!1616767 (and b!6428004 d!2014937)))

(assert (=> bs!1616767 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (reg!16659 r!7292) (reg!16659 (regOne!33172 r!7292))) (= r!7292 (Star!16330 (reg!16659 (regOne!33172 r!7292))))) (= lambda!355458 lambda!355408))))

(declare-fun bs!1616768 () Bool)

(assert (= bs!1616768 (and b!6428004 b!6427830)))

(assert (=> bs!1616768 (= (and (= (reg!16659 r!7292) (reg!16659 lt!2378331)) (= r!7292 lt!2378331)) (= lambda!355458 lambda!355442))))

(declare-fun bs!1616769 () Bool)

(assert (= bs!1616769 (and b!6428004 b!6426986)))

(assert (=> bs!1616769 (not (= lambda!355458 lambda!355336))))

(declare-fun bs!1616771 () Bool)

(assert (= bs!1616771 (and b!6428004 b!6427497)))

(assert (=> bs!1616771 (not (= lambda!355458 lambda!355398))))

(declare-fun bs!1616772 () Bool)

(assert (= bs!1616772 (and b!6428004 b!6426997)))

(assert (=> bs!1616772 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (reg!16659 r!7292) (reg!16659 (regOne!33172 r!7292))) (= r!7292 lt!2378328)) (= lambda!355458 lambda!355342))))

(assert (=> bs!1616767 (not (= lambda!355458 lambda!355407))))

(declare-fun bs!1616773 () Bool)

(assert (= bs!1616773 (and b!6428004 d!2015087)))

(assert (=> bs!1616773 (not (= lambda!355458 lambda!355445))))

(declare-fun bs!1616774 () Bool)

(assert (= bs!1616774 (and b!6428004 d!2015037)))

(assert (=> bs!1616774 (not (= lambda!355458 lambda!355436))))

(declare-fun bs!1616775 () Bool)

(assert (= bs!1616775 (and b!6428004 b!6426989)))

(assert (=> bs!1616775 (not (= lambda!355458 lambda!355340))))

(assert (=> bs!1616772 (not (= lambda!355458 lambda!355343))))

(assert (=> bs!1616769 (not (= lambda!355458 lambda!355337))))

(declare-fun bs!1616776 () Bool)

(assert (= bs!1616776 (and b!6428004 b!6427504)))

(assert (=> bs!1616776 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (reg!16659 r!7292) (reg!16659 lt!2378328)) (= r!7292 lt!2378328)) (= lambda!355458 lambda!355396))))

(assert (=> bs!1616761 (not (= lambda!355458 lambda!355446))))

(assert (=> bs!1616775 (not (= lambda!355458 lambda!355339))))

(assert (=> bs!1616765 (not (= lambda!355458 lambda!355413))))

(declare-fun bs!1616777 () Bool)

(assert (= bs!1616777 (and b!6428004 d!2015051)))

(assert (=> bs!1616777 (not (= lambda!355458 lambda!355437))))

(assert (=> bs!1616772 (not (= lambda!355458 lambda!355341))))

(assert (=> bs!1616777 (not (= lambda!355458 lambda!355438))))

(assert (=> b!6428004 true))

(assert (=> b!6428004 true))

(declare-fun bs!1616779 () Bool)

(declare-fun b!6427997 () Bool)

(assert (= bs!1616779 (and b!6427997 d!2015089)))

(declare-fun lambda!355460 () Int)

(assert (=> bs!1616779 (= lambda!355460 lambda!355447)))

(declare-fun bs!1616782 () Bool)

(assert (= bs!1616782 (and b!6427997 d!2014977)))

(assert (=> bs!1616782 (not (= lambda!355460 lambda!355426))))

(declare-fun bs!1616784 () Bool)

(assert (= bs!1616784 (and b!6427997 d!2014947)))

(assert (=> bs!1616784 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 r!7292) (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355460 lambda!355414))))

(declare-fun bs!1616786 () Bool)

(assert (= bs!1616786 (and b!6427997 d!2014937)))

(assert (=> bs!1616786 (not (= lambda!355460 lambda!355408))))

(declare-fun bs!1616787 () Bool)

(assert (= bs!1616787 (and b!6427997 b!6427830)))

(assert (=> bs!1616787 (not (= lambda!355460 lambda!355442))))

(declare-fun bs!1616788 () Bool)

(assert (= bs!1616788 (and b!6427997 b!6426986)))

(assert (=> bs!1616788 (not (= lambda!355460 lambda!355336))))

(declare-fun bs!1616790 () Bool)

(assert (= bs!1616790 (and b!6427997 b!6427497)))

(assert (=> bs!1616790 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 r!7292) (regOne!33172 lt!2378328)) (= (regTwo!33172 r!7292) (regTwo!33172 lt!2378328))) (= lambda!355460 lambda!355398))))

(declare-fun bs!1616791 () Bool)

(assert (= bs!1616791 (and b!6427997 b!6426997)))

(assert (=> bs!1616791 (not (= lambda!355460 lambda!355342))))

(assert (=> bs!1616786 (not (= lambda!355460 lambda!355407))))

(declare-fun bs!1616793 () Bool)

(assert (= bs!1616793 (and b!6427997 d!2015087)))

(assert (=> bs!1616793 (not (= lambda!355460 lambda!355445))))

(declare-fun bs!1616794 () Bool)

(assert (= bs!1616794 (and b!6427997 d!2015037)))

(assert (=> bs!1616794 (not (= lambda!355460 lambda!355436))))

(declare-fun bs!1616796 () Bool)

(assert (= bs!1616796 (and b!6427997 b!6427823)))

(assert (=> bs!1616796 (= (and (= (regOne!33172 r!7292) (regOne!33172 lt!2378331)) (= (regTwo!33172 r!7292) (regTwo!33172 lt!2378331))) (= lambda!355460 lambda!355443))))

(declare-fun bs!1616797 () Bool)

(assert (= bs!1616797 (and b!6427997 b!6428004)))

(assert (=> bs!1616797 (not (= lambda!355460 lambda!355458))))

(declare-fun bs!1616798 () Bool)

(assert (= bs!1616798 (and b!6427997 b!6426989)))

(assert (=> bs!1616798 (= (= (regOne!33172 r!7292) lt!2378328) (= lambda!355460 lambda!355340))))

(assert (=> bs!1616791 (= (and (= s!2326 (_1!36612 lt!2378308)) (= (regOne!33172 r!7292) (reg!16659 (regOne!33172 r!7292))) (= (regTwo!33172 r!7292) lt!2378328)) (= lambda!355460 lambda!355343))))

(assert (=> bs!1616788 (= lambda!355460 lambda!355337)))

(declare-fun bs!1616799 () Bool)

(assert (= bs!1616799 (and b!6427997 b!6427504)))

(assert (=> bs!1616799 (not (= lambda!355460 lambda!355396))))

(assert (=> bs!1616779 (not (= lambda!355460 lambda!355446))))

(assert (=> bs!1616798 (not (= lambda!355460 lambda!355339))))

(assert (=> bs!1616784 (not (= lambda!355460 lambda!355413))))

(declare-fun bs!1616801 () Bool)

(assert (= bs!1616801 (and b!6427997 d!2015051)))

(assert (=> bs!1616801 (not (= lambda!355460 lambda!355437))))

(assert (=> bs!1616791 (not (= lambda!355460 lambda!355341))))

(assert (=> bs!1616801 (= (= (regOne!33172 r!7292) lt!2378328) (= lambda!355460 lambda!355438))))

(assert (=> b!6427997 true))

(assert (=> b!6427997 true))

(declare-fun b!6427996 () Bool)

(declare-fun e!3899732 () Bool)

(declare-fun e!3899737 () Bool)

(assert (=> b!6427996 (= e!3899732 e!3899737)))

(declare-fun res!2642028 () Bool)

(assert (=> b!6427996 (= res!2642028 (not (is-EmptyLang!16330 r!7292)))))

(assert (=> b!6427996 (=> (not res!2642028) (not e!3899737))))

(declare-fun e!3899733 () Bool)

(declare-fun call!552902 () Bool)

(assert (=> b!6427997 (= e!3899733 call!552902)))

(declare-fun b!6427998 () Bool)

(declare-fun c!1174681 () Bool)

(assert (=> b!6427998 (= c!1174681 (is-Union!16330 r!7292))))

(declare-fun e!3899731 () Bool)

(declare-fun e!3899734 () Bool)

(assert (=> b!6427998 (= e!3899731 e!3899734)))

(declare-fun b!6427999 () Bool)

(declare-fun res!2642029 () Bool)

(declare-fun e!3899736 () Bool)

(assert (=> b!6427999 (=> res!2642029 e!3899736)))

(declare-fun call!552903 () Bool)

(assert (=> b!6427999 (= res!2642029 call!552903)))

(assert (=> b!6427999 (= e!3899733 e!3899736)))

(declare-fun bm!552897 () Bool)

(assert (=> bm!552897 (= call!552903 (isEmpty!37330 s!2326))))

(declare-fun b!6428000 () Bool)

(assert (=> b!6428000 (= e!3899732 call!552903)))

(declare-fun b!6428001 () Bool)

(assert (=> b!6428001 (= e!3899734 e!3899733)))

(declare-fun c!1174684 () Bool)

(assert (=> b!6428001 (= c!1174684 (is-Star!16330 r!7292))))

(declare-fun d!2015123 () Bool)

(declare-fun c!1174683 () Bool)

(assert (=> d!2015123 (= c!1174683 (is-EmptyExpr!16330 r!7292))))

(assert (=> d!2015123 (= (matchRSpec!3431 r!7292 s!2326) e!3899732)))

(declare-fun b!6428002 () Bool)

(assert (=> b!6428002 (= e!3899731 (= s!2326 (Cons!65165 (c!1174427 r!7292) Nil!65165)))))

(declare-fun bm!552898 () Bool)

(assert (=> bm!552898 (= call!552902 (Exists!3400 (ite c!1174684 lambda!355458 lambda!355460)))))

(declare-fun b!6428003 () Bool)

(declare-fun e!3899735 () Bool)

(assert (=> b!6428003 (= e!3899734 e!3899735)))

(declare-fun res!2642027 () Bool)

(assert (=> b!6428003 (= res!2642027 (matchRSpec!3431 (regOne!33173 r!7292) s!2326))))

(assert (=> b!6428003 (=> res!2642027 e!3899735)))

(assert (=> b!6428004 (= e!3899736 call!552902)))

(declare-fun b!6428005 () Bool)

(assert (=> b!6428005 (= e!3899735 (matchRSpec!3431 (regTwo!33173 r!7292) s!2326))))

(declare-fun b!6428006 () Bool)

(declare-fun c!1174682 () Bool)

(assert (=> b!6428006 (= c!1174682 (is-ElementMatch!16330 r!7292))))

(assert (=> b!6428006 (= e!3899737 e!3899731)))

(assert (= (and d!2015123 c!1174683) b!6428000))

(assert (= (and d!2015123 (not c!1174683)) b!6427996))

(assert (= (and b!6427996 res!2642028) b!6428006))

(assert (= (and b!6428006 c!1174682) b!6428002))

(assert (= (and b!6428006 (not c!1174682)) b!6427998))

(assert (= (and b!6427998 c!1174681) b!6428003))

(assert (= (and b!6427998 (not c!1174681)) b!6428001))

(assert (= (and b!6428003 (not res!2642027)) b!6428005))

(assert (= (and b!6428001 c!1174684) b!6427999))

(assert (= (and b!6428001 (not c!1174684)) b!6427997))

(assert (= (and b!6427999 (not res!2642029)) b!6428004))

(assert (= (or b!6428004 b!6427997) bm!552898))

(assert (= (or b!6428000 b!6427999) bm!552897))

(assert (=> bm!552897 m!7221606))

(declare-fun m!7221862 () Bool)

(assert (=> bm!552898 m!7221862))

(declare-fun m!7221864 () Bool)

(assert (=> b!6428003 m!7221864))

(declare-fun m!7221866 () Bool)

(assert (=> b!6428005 m!7221866))

(assert (=> b!6426987 d!2015123))

(declare-fun b!6428016 () Bool)

(declare-fun res!2642037 () Bool)

(declare-fun e!3899749 () Bool)

(assert (=> b!6428016 (=> res!2642037 e!3899749)))

(assert (=> b!6428016 (= res!2642037 (not (is-ElementMatch!16330 r!7292)))))

(declare-fun e!3899745 () Bool)

(assert (=> b!6428016 (= e!3899745 e!3899749)))

(declare-fun d!2015131 () Bool)

(declare-fun e!3899746 () Bool)

(assert (=> d!2015131 e!3899746))

(declare-fun c!1174689 () Bool)

(assert (=> d!2015131 (= c!1174689 (is-EmptyExpr!16330 r!7292))))

(declare-fun lt!2378598 () Bool)

(declare-fun e!3899744 () Bool)

(assert (=> d!2015131 (= lt!2378598 e!3899744)))

(declare-fun c!1174687 () Bool)

(assert (=> d!2015131 (= c!1174687 (isEmpty!37330 s!2326))))

(assert (=> d!2015131 (validRegex!8066 r!7292)))

(assert (=> d!2015131 (= (matchR!8513 r!7292 s!2326) lt!2378598)))

(declare-fun bm!552899 () Bool)

(declare-fun call!552904 () Bool)

(assert (=> bm!552899 (= call!552904 (isEmpty!37330 s!2326))))

(declare-fun b!6428017 () Bool)

(declare-fun res!2642042 () Bool)

(declare-fun e!3899743 () Bool)

(assert (=> b!6428017 (=> res!2642042 e!3899743)))

(assert (=> b!6428017 (= res!2642042 (not (isEmpty!37330 (tail!12236 s!2326))))))

(declare-fun b!6428018 () Bool)

(assert (=> b!6428018 (= e!3899746 e!3899745)))

(declare-fun c!1174688 () Bool)

(assert (=> b!6428018 (= c!1174688 (is-EmptyLang!16330 r!7292))))

(declare-fun b!6428019 () Bool)

(declare-fun e!3899748 () Bool)

(assert (=> b!6428019 (= e!3899748 (= (head!13151 s!2326) (c!1174427 r!7292)))))

(declare-fun b!6428020 () Bool)

(assert (=> b!6428020 (= e!3899745 (not lt!2378598))))

(declare-fun b!6428021 () Bool)

(assert (=> b!6428021 (= e!3899744 (nullable!6323 r!7292))))

(declare-fun b!6428022 () Bool)

(declare-fun e!3899747 () Bool)

(assert (=> b!6428022 (= e!3899747 e!3899743)))

(declare-fun res!2642040 () Bool)

(assert (=> b!6428022 (=> res!2642040 e!3899743)))

(assert (=> b!6428022 (= res!2642040 call!552904)))

(declare-fun b!6428023 () Bool)

(assert (=> b!6428023 (= e!3899744 (matchR!8513 (derivativeStep!5034 r!7292 (head!13151 s!2326)) (tail!12236 s!2326)))))

(declare-fun b!6428024 () Bool)

(assert (=> b!6428024 (= e!3899743 (not (= (head!13151 s!2326) (c!1174427 r!7292))))))

(declare-fun b!6428025 () Bool)

(assert (=> b!6428025 (= e!3899749 e!3899747)))

(declare-fun res!2642035 () Bool)

(assert (=> b!6428025 (=> (not res!2642035) (not e!3899747))))

(assert (=> b!6428025 (= res!2642035 (not lt!2378598))))

(declare-fun b!6428026 () Bool)

(declare-fun res!2642041 () Bool)

(assert (=> b!6428026 (=> (not res!2642041) (not e!3899748))))

(assert (=> b!6428026 (= res!2642041 (isEmpty!37330 (tail!12236 s!2326)))))

(declare-fun b!6428027 () Bool)

(assert (=> b!6428027 (= e!3899746 (= lt!2378598 call!552904))))

(declare-fun b!6428028 () Bool)

(declare-fun res!2642039 () Bool)

(assert (=> b!6428028 (=> (not res!2642039) (not e!3899748))))

(assert (=> b!6428028 (= res!2642039 (not call!552904))))

(declare-fun b!6428029 () Bool)

(declare-fun res!2642038 () Bool)

(assert (=> b!6428029 (=> res!2642038 e!3899749)))

(assert (=> b!6428029 (= res!2642038 e!3899748)))

(declare-fun res!2642036 () Bool)

(assert (=> b!6428029 (=> (not res!2642036) (not e!3899748))))

(assert (=> b!6428029 (= res!2642036 lt!2378598)))

(assert (= (and d!2015131 c!1174687) b!6428021))

(assert (= (and d!2015131 (not c!1174687)) b!6428023))

(assert (= (and d!2015131 c!1174689) b!6428027))

(assert (= (and d!2015131 (not c!1174689)) b!6428018))

(assert (= (and b!6428018 c!1174688) b!6428020))

(assert (= (and b!6428018 (not c!1174688)) b!6428016))

(assert (= (and b!6428016 (not res!2642037)) b!6428029))

(assert (= (and b!6428029 res!2642036) b!6428028))

(assert (= (and b!6428028 res!2642039) b!6428026))

(assert (= (and b!6428026 res!2642041) b!6428019))

(assert (= (and b!6428029 (not res!2642038)) b!6428025))

(assert (= (and b!6428025 res!2642035) b!6428022))

(assert (= (and b!6428022 (not res!2642040)) b!6428017))

(assert (= (and b!6428017 (not res!2642042)) b!6428024))

(assert (= (or b!6428027 b!6428022 b!6428028) bm!552899))

(assert (=> d!2015131 m!7221606))

(assert (=> d!2015131 m!7220952))

(assert (=> b!6428024 m!7221610))

(assert (=> b!6428026 m!7221614))

(assert (=> b!6428026 m!7221614))

(assert (=> b!6428026 m!7221634))

(declare-fun m!7221876 () Bool)

(assert (=> b!6428021 m!7221876))

(assert (=> b!6428019 m!7221610))

(assert (=> b!6428017 m!7221614))

(assert (=> b!6428017 m!7221614))

(assert (=> b!6428017 m!7221634))

(assert (=> b!6428023 m!7221610))

(assert (=> b!6428023 m!7221610))

(declare-fun m!7221878 () Bool)

(assert (=> b!6428023 m!7221878))

(assert (=> b!6428023 m!7221614))

(assert (=> b!6428023 m!7221878))

(assert (=> b!6428023 m!7221614))

(declare-fun m!7221882 () Bool)

(assert (=> b!6428023 m!7221882))

(assert (=> bm!552899 m!7221606))

(assert (=> b!6426987 d!2015131))

(declare-fun d!2015137 () Bool)

(assert (=> d!2015137 (= (matchR!8513 r!7292 s!2326) (matchRSpec!3431 r!7292 s!2326))))

(declare-fun lt!2378600 () Unit!158651)

(assert (=> d!2015137 (= lt!2378600 (choose!47775 r!7292 s!2326))))

(assert (=> d!2015137 (validRegex!8066 r!7292)))

(assert (=> d!2015137 (= (mainMatchTheorem!3431 r!7292 s!2326) lt!2378600)))

(declare-fun bs!1616803 () Bool)

(assert (= bs!1616803 d!2015137))

(assert (=> bs!1616803 m!7220872))

(assert (=> bs!1616803 m!7220870))

(declare-fun m!7221896 () Bool)

(assert (=> bs!1616803 m!7221896))

(assert (=> bs!1616803 m!7220952))

(assert (=> b!6426987 d!2015137))

(declare-fun d!2015141 () Bool)

(declare-fun lt!2378602 () Regex!16330)

(assert (=> d!2015141 (validRegex!8066 lt!2378602)))

(assert (=> d!2015141 (= lt!2378602 (generalisedUnion!2174 (unfocusZipperList!1751 zl!343)))))

(assert (=> d!2015141 (= (unfocusZipper!2072 zl!343) lt!2378602)))

(declare-fun bs!1616805 () Bool)

(assert (= bs!1616805 d!2015141))

(declare-fun m!7221900 () Bool)

(assert (=> bs!1616805 m!7221900))

(assert (=> bs!1616805 m!7220840))

(assert (=> bs!1616805 m!7220840))

(assert (=> bs!1616805 m!7220842))

(assert (=> b!6426979 d!2015141))

(declare-fun d!2015145 () Bool)

(declare-fun c!1174691 () Bool)

(assert (=> d!2015145 (= c!1174691 (isEmpty!37330 (t!378905 s!2326)))))

(declare-fun e!3899752 () Bool)

(assert (=> d!2015145 (= (matchZipper!2342 lt!2378291 (t!378905 s!2326)) e!3899752)))

(declare-fun b!6428034 () Bool)

(assert (=> b!6428034 (= e!3899752 (nullableZipper!2096 lt!2378291))))

(declare-fun b!6428035 () Bool)

(assert (=> b!6428035 (= e!3899752 (matchZipper!2342 (derivationStepZipper!2296 lt!2378291 (head!13151 (t!378905 s!2326))) (tail!12236 (t!378905 s!2326))))))

(assert (= (and d!2015145 c!1174691) b!6428034))

(assert (= (and d!2015145 (not c!1174691)) b!6428035))

(assert (=> d!2015145 m!7221618))

(declare-fun m!7221906 () Bool)

(assert (=> b!6428034 m!7221906))

(assert (=> b!6428035 m!7221622))

(assert (=> b!6428035 m!7221622))

(declare-fun m!7221908 () Bool)

(assert (=> b!6428035 m!7221908))

(assert (=> b!6428035 m!7221626))

(assert (=> b!6428035 m!7221908))

(assert (=> b!6428035 m!7221626))

(declare-fun m!7221910 () Bool)

(assert (=> b!6428035 m!7221910))

(assert (=> b!6426999 d!2015145))

(declare-fun b!6428036 () Bool)

(declare-fun res!2642047 () Bool)

(declare-fun e!3899759 () Bool)

(assert (=> b!6428036 (=> res!2642047 e!3899759)))

(assert (=> b!6428036 (= res!2642047 (not (is-ElementMatch!16330 lt!2378328)))))

(declare-fun e!3899755 () Bool)

(assert (=> b!6428036 (= e!3899755 e!3899759)))

(declare-fun d!2015151 () Bool)

(declare-fun e!3899756 () Bool)

(assert (=> d!2015151 e!3899756))

(declare-fun c!1174694 () Bool)

(assert (=> d!2015151 (= c!1174694 (is-EmptyExpr!16330 lt!2378328))))

(declare-fun lt!2378603 () Bool)

(declare-fun e!3899754 () Bool)

(assert (=> d!2015151 (= lt!2378603 e!3899754)))

(declare-fun c!1174692 () Bool)

(assert (=> d!2015151 (= c!1174692 (isEmpty!37330 (_1!36612 lt!2378308)))))

(assert (=> d!2015151 (validRegex!8066 lt!2378328)))

(assert (=> d!2015151 (= (matchR!8513 lt!2378328 (_1!36612 lt!2378308)) lt!2378603)))

(declare-fun bm!552900 () Bool)

(declare-fun call!552905 () Bool)

(assert (=> bm!552900 (= call!552905 (isEmpty!37330 (_1!36612 lt!2378308)))))

(declare-fun b!6428037 () Bool)

(declare-fun res!2642052 () Bool)

(declare-fun e!3899753 () Bool)

(assert (=> b!6428037 (=> res!2642052 e!3899753)))

(assert (=> b!6428037 (= res!2642052 (not (isEmpty!37330 (tail!12236 (_1!36612 lt!2378308)))))))

(declare-fun b!6428038 () Bool)

(assert (=> b!6428038 (= e!3899756 e!3899755)))

(declare-fun c!1174693 () Bool)

(assert (=> b!6428038 (= c!1174693 (is-EmptyLang!16330 lt!2378328))))

(declare-fun b!6428039 () Bool)

(declare-fun e!3899758 () Bool)

(assert (=> b!6428039 (= e!3899758 (= (head!13151 (_1!36612 lt!2378308)) (c!1174427 lt!2378328)))))

(declare-fun b!6428040 () Bool)

(assert (=> b!6428040 (= e!3899755 (not lt!2378603))))

(declare-fun b!6428041 () Bool)

(assert (=> b!6428041 (= e!3899754 (nullable!6323 lt!2378328))))

(declare-fun b!6428042 () Bool)

(declare-fun e!3899757 () Bool)

(assert (=> b!6428042 (= e!3899757 e!3899753)))

(declare-fun res!2642050 () Bool)

(assert (=> b!6428042 (=> res!2642050 e!3899753)))

(assert (=> b!6428042 (= res!2642050 call!552905)))

(declare-fun b!6428043 () Bool)

(assert (=> b!6428043 (= e!3899754 (matchR!8513 (derivativeStep!5034 lt!2378328 (head!13151 (_1!36612 lt!2378308))) (tail!12236 (_1!36612 lt!2378308))))))

(declare-fun b!6428044 () Bool)

(assert (=> b!6428044 (= e!3899753 (not (= (head!13151 (_1!36612 lt!2378308)) (c!1174427 lt!2378328))))))

(declare-fun b!6428045 () Bool)

(assert (=> b!6428045 (= e!3899759 e!3899757)))

(declare-fun res!2642045 () Bool)

(assert (=> b!6428045 (=> (not res!2642045) (not e!3899757))))

(assert (=> b!6428045 (= res!2642045 (not lt!2378603))))

(declare-fun b!6428046 () Bool)

(declare-fun res!2642051 () Bool)

(assert (=> b!6428046 (=> (not res!2642051) (not e!3899758))))

(assert (=> b!6428046 (= res!2642051 (isEmpty!37330 (tail!12236 (_1!36612 lt!2378308))))))

(declare-fun b!6428047 () Bool)

(assert (=> b!6428047 (= e!3899756 (= lt!2378603 call!552905))))

(declare-fun b!6428048 () Bool)

(declare-fun res!2642049 () Bool)

(assert (=> b!6428048 (=> (not res!2642049) (not e!3899758))))

(assert (=> b!6428048 (= res!2642049 (not call!552905))))

(declare-fun b!6428049 () Bool)

(declare-fun res!2642048 () Bool)

(assert (=> b!6428049 (=> res!2642048 e!3899759)))

(assert (=> b!6428049 (= res!2642048 e!3899758)))

(declare-fun res!2642046 () Bool)

(assert (=> b!6428049 (=> (not res!2642046) (not e!3899758))))

(assert (=> b!6428049 (= res!2642046 lt!2378603)))

(assert (= (and d!2015151 c!1174692) b!6428041))

(assert (= (and d!2015151 (not c!1174692)) b!6428043))

(assert (= (and d!2015151 c!1174694) b!6428047))

(assert (= (and d!2015151 (not c!1174694)) b!6428038))

(assert (= (and b!6428038 c!1174693) b!6428040))

(assert (= (and b!6428038 (not c!1174693)) b!6428036))

(assert (= (and b!6428036 (not res!2642047)) b!6428049))

(assert (= (and b!6428049 res!2642046) b!6428048))

(assert (= (and b!6428048 res!2642049) b!6428046))

(assert (= (and b!6428046 res!2642051) b!6428039))

(assert (= (and b!6428049 (not res!2642048)) b!6428045))

(assert (= (and b!6428045 res!2642045) b!6428042))

(assert (= (and b!6428042 (not res!2642050)) b!6428037))

(assert (= (and b!6428037 (not res!2642052)) b!6428044))

(assert (= (or b!6428047 b!6428042 b!6428048) bm!552900))

(assert (=> d!2015151 m!7220916))

(assert (=> d!2015151 m!7220960))

(declare-fun m!7221912 () Bool)

(assert (=> b!6428044 m!7221912))

(declare-fun m!7221914 () Bool)

(assert (=> b!6428046 m!7221914))

(assert (=> b!6428046 m!7221914))

(declare-fun m!7221916 () Bool)

(assert (=> b!6428046 m!7221916))

(assert (=> b!6428041 m!7221136))

(assert (=> b!6428039 m!7221912))

(assert (=> b!6428037 m!7221914))

(assert (=> b!6428037 m!7221914))

(assert (=> b!6428037 m!7221916))

(assert (=> b!6428043 m!7221912))

(assert (=> b!6428043 m!7221912))

(declare-fun m!7221918 () Bool)

(assert (=> b!6428043 m!7221918))

(assert (=> b!6428043 m!7221914))

(assert (=> b!6428043 m!7221918))

(assert (=> b!6428043 m!7221914))

(declare-fun m!7221920 () Bool)

(assert (=> b!6428043 m!7221920))

(assert (=> bm!552900 m!7220916))

(assert (=> b!6426978 d!2015151))

(declare-fun d!2015153 () Bool)

(declare-fun lt!2378604 () Regex!16330)

(assert (=> d!2015153 (validRegex!8066 lt!2378604)))

(assert (=> d!2015153 (= lt!2378604 (generalisedUnion!2174 (unfocusZipperList!1751 (Cons!65167 lt!2378317 Nil!65167))))))

(assert (=> d!2015153 (= (unfocusZipper!2072 (Cons!65167 lt!2378317 Nil!65167)) lt!2378604)))

(declare-fun bs!1616808 () Bool)

(assert (= bs!1616808 d!2015153))

(declare-fun m!7221922 () Bool)

(assert (=> bs!1616808 m!7221922))

(declare-fun m!7221924 () Bool)

(assert (=> bs!1616808 m!7221924))

(assert (=> bs!1616808 m!7221924))

(declare-fun m!7221926 () Bool)

(assert (=> bs!1616808 m!7221926))

(assert (=> b!6426980 d!2015153))

(declare-fun d!2015155 () Bool)

(declare-fun e!3899762 () Bool)

(assert (=> d!2015155 (= (matchZipper!2342 (set.union lt!2378297 lt!2378291) (t!378905 s!2326)) e!3899762)))

(declare-fun res!2642055 () Bool)

(assert (=> d!2015155 (=> res!2642055 e!3899762)))

(assert (=> d!2015155 (= res!2642055 (matchZipper!2342 lt!2378297 (t!378905 s!2326)))))

(declare-fun lt!2378609 () Unit!158651)

(declare-fun choose!47783 ((Set Context!11428) (Set Context!11428) List!65289) Unit!158651)

(assert (=> d!2015155 (= lt!2378609 (choose!47783 lt!2378297 lt!2378291 (t!378905 s!2326)))))

(assert (=> d!2015155 (= (lemmaZipperConcatMatchesSameAsBothZippers!1161 lt!2378297 lt!2378291 (t!378905 s!2326)) lt!2378609)))

(declare-fun b!6428052 () Bool)

(assert (=> b!6428052 (= e!3899762 (matchZipper!2342 lt!2378291 (t!378905 s!2326)))))

(assert (= (and d!2015155 (not res!2642055)) b!6428052))

(assert (=> d!2015155 m!7220958))

(assert (=> d!2015155 m!7220956))

(declare-fun m!7221928 () Bool)

(assert (=> d!2015155 m!7221928))

(assert (=> b!6428052 m!7220878))

(assert (=> b!6427000 d!2015155))

(declare-fun d!2015157 () Bool)

(declare-fun c!1174695 () Bool)

(assert (=> d!2015157 (= c!1174695 (isEmpty!37330 (t!378905 s!2326)))))

(declare-fun e!3899763 () Bool)

(assert (=> d!2015157 (= (matchZipper!2342 lt!2378297 (t!378905 s!2326)) e!3899763)))

(declare-fun b!6428053 () Bool)

(assert (=> b!6428053 (= e!3899763 (nullableZipper!2096 lt!2378297))))

(declare-fun b!6428054 () Bool)

(assert (=> b!6428054 (= e!3899763 (matchZipper!2342 (derivationStepZipper!2296 lt!2378297 (head!13151 (t!378905 s!2326))) (tail!12236 (t!378905 s!2326))))))

(assert (= (and d!2015157 c!1174695) b!6428053))

(assert (= (and d!2015157 (not c!1174695)) b!6428054))

(assert (=> d!2015157 m!7221618))

(declare-fun m!7221930 () Bool)

(assert (=> b!6428053 m!7221930))

(assert (=> b!6428054 m!7221622))

(assert (=> b!6428054 m!7221622))

(declare-fun m!7221932 () Bool)

(assert (=> b!6428054 m!7221932))

(assert (=> b!6428054 m!7221626))

(assert (=> b!6428054 m!7221932))

(assert (=> b!6428054 m!7221626))

(declare-fun m!7221934 () Bool)

(assert (=> b!6428054 m!7221934))

(assert (=> b!6427000 d!2015157))

(declare-fun d!2015159 () Bool)

(declare-fun c!1174696 () Bool)

(assert (=> d!2015159 (= c!1174696 (isEmpty!37330 (t!378905 s!2326)))))

(declare-fun e!3899766 () Bool)

(assert (=> d!2015159 (= (matchZipper!2342 (set.union lt!2378297 lt!2378291) (t!378905 s!2326)) e!3899766)))

(declare-fun b!6428059 () Bool)

(assert (=> b!6428059 (= e!3899766 (nullableZipper!2096 (set.union lt!2378297 lt!2378291)))))

(declare-fun b!6428060 () Bool)

(assert (=> b!6428060 (= e!3899766 (matchZipper!2342 (derivationStepZipper!2296 (set.union lt!2378297 lt!2378291) (head!13151 (t!378905 s!2326))) (tail!12236 (t!378905 s!2326))))))

(assert (= (and d!2015159 c!1174696) b!6428059))

(assert (= (and d!2015159 (not c!1174696)) b!6428060))

(assert (=> d!2015159 m!7221618))

(declare-fun m!7221936 () Bool)

(assert (=> b!6428059 m!7221936))

(assert (=> b!6428060 m!7221622))

(assert (=> b!6428060 m!7221622))

(declare-fun m!7221938 () Bool)

(assert (=> b!6428060 m!7221938))

(assert (=> b!6428060 m!7221626))

(assert (=> b!6428060 m!7221938))

(assert (=> b!6428060 m!7221626))

(declare-fun m!7221940 () Bool)

(assert (=> b!6428060 m!7221940))

(assert (=> b!6427000 d!2015159))

(declare-fun d!2015161 () Bool)

(assert (=> d!2015161 (= (isEmpty!37329 (t!378907 zl!343)) (is-Nil!65167 (t!378907 zl!343)))))

(assert (=> b!6426981 d!2015161))

(declare-fun d!2015163 () Bool)

(assert (=> d!2015163 (= (isEmpty!37330 (_1!36612 lt!2378308)) (is-Nil!65165 (_1!36612 lt!2378308)))))

(assert (=> b!6427003 d!2015163))

(declare-fun b!6428061 () Bool)

(declare-fun res!2642062 () Bool)

(declare-fun e!3899773 () Bool)

(assert (=> b!6428061 (=> res!2642062 e!3899773)))

(assert (=> b!6428061 (= res!2642062 (not (is-ElementMatch!16330 (reg!16659 (regOne!33172 r!7292)))))))

(declare-fun e!3899769 () Bool)

(assert (=> b!6428061 (= e!3899769 e!3899773)))

(declare-fun d!2015165 () Bool)

(declare-fun e!3899770 () Bool)

(assert (=> d!2015165 e!3899770))

(declare-fun c!1174699 () Bool)

(assert (=> d!2015165 (= c!1174699 (is-EmptyExpr!16330 (reg!16659 (regOne!33172 r!7292))))))

(declare-fun lt!2378610 () Bool)

(declare-fun e!3899768 () Bool)

(assert (=> d!2015165 (= lt!2378610 e!3899768)))

(declare-fun c!1174697 () Bool)

(assert (=> d!2015165 (= c!1174697 (isEmpty!37330 (_1!36612 lt!2378313)))))

(assert (=> d!2015165 (validRegex!8066 (reg!16659 (regOne!33172 r!7292)))))

(assert (=> d!2015165 (= (matchR!8513 (reg!16659 (regOne!33172 r!7292)) (_1!36612 lt!2378313)) lt!2378610)))

(declare-fun bm!552901 () Bool)

(declare-fun call!552906 () Bool)

(assert (=> bm!552901 (= call!552906 (isEmpty!37330 (_1!36612 lt!2378313)))))

(declare-fun b!6428062 () Bool)

(declare-fun res!2642067 () Bool)

(declare-fun e!3899767 () Bool)

(assert (=> b!6428062 (=> res!2642067 e!3899767)))

(assert (=> b!6428062 (= res!2642067 (not (isEmpty!37330 (tail!12236 (_1!36612 lt!2378313)))))))

(declare-fun b!6428063 () Bool)

(assert (=> b!6428063 (= e!3899770 e!3899769)))

(declare-fun c!1174698 () Bool)

(assert (=> b!6428063 (= c!1174698 (is-EmptyLang!16330 (reg!16659 (regOne!33172 r!7292))))))

(declare-fun b!6428064 () Bool)

(declare-fun e!3899772 () Bool)

(assert (=> b!6428064 (= e!3899772 (= (head!13151 (_1!36612 lt!2378313)) (c!1174427 (reg!16659 (regOne!33172 r!7292)))))))

(declare-fun b!6428065 () Bool)

(assert (=> b!6428065 (= e!3899769 (not lt!2378610))))

(declare-fun b!6428066 () Bool)

(assert (=> b!6428066 (= e!3899768 (nullable!6323 (reg!16659 (regOne!33172 r!7292))))))

(declare-fun b!6428067 () Bool)

(declare-fun e!3899771 () Bool)

(assert (=> b!6428067 (= e!3899771 e!3899767)))

(declare-fun res!2642065 () Bool)

(assert (=> b!6428067 (=> res!2642065 e!3899767)))

(assert (=> b!6428067 (= res!2642065 call!552906)))

(declare-fun b!6428068 () Bool)

(assert (=> b!6428068 (= e!3899768 (matchR!8513 (derivativeStep!5034 (reg!16659 (regOne!33172 r!7292)) (head!13151 (_1!36612 lt!2378313))) (tail!12236 (_1!36612 lt!2378313))))))

(declare-fun b!6428069 () Bool)

(assert (=> b!6428069 (= e!3899767 (not (= (head!13151 (_1!36612 lt!2378313)) (c!1174427 (reg!16659 (regOne!33172 r!7292))))))))

(declare-fun b!6428070 () Bool)

(assert (=> b!6428070 (= e!3899773 e!3899771)))

(declare-fun res!2642060 () Bool)

(assert (=> b!6428070 (=> (not res!2642060) (not e!3899771))))

(assert (=> b!6428070 (= res!2642060 (not lt!2378610))))

(declare-fun b!6428071 () Bool)

(declare-fun res!2642066 () Bool)

(assert (=> b!6428071 (=> (not res!2642066) (not e!3899772))))

(assert (=> b!6428071 (= res!2642066 (isEmpty!37330 (tail!12236 (_1!36612 lt!2378313))))))

(declare-fun b!6428072 () Bool)

(assert (=> b!6428072 (= e!3899770 (= lt!2378610 call!552906))))

(declare-fun b!6428073 () Bool)

(declare-fun res!2642064 () Bool)

(assert (=> b!6428073 (=> (not res!2642064) (not e!3899772))))

(assert (=> b!6428073 (= res!2642064 (not call!552906))))

(declare-fun b!6428074 () Bool)

(declare-fun res!2642063 () Bool)

(assert (=> b!6428074 (=> res!2642063 e!3899773)))

(assert (=> b!6428074 (= res!2642063 e!3899772)))

(declare-fun res!2642061 () Bool)

(assert (=> b!6428074 (=> (not res!2642061) (not e!3899772))))

(assert (=> b!6428074 (= res!2642061 lt!2378610)))

(assert (= (and d!2015165 c!1174697) b!6428066))

(assert (= (and d!2015165 (not c!1174697)) b!6428068))

(assert (= (and d!2015165 c!1174699) b!6428072))

(assert (= (and d!2015165 (not c!1174699)) b!6428063))

(assert (= (and b!6428063 c!1174698) b!6428065))

(assert (= (and b!6428063 (not c!1174698)) b!6428061))

(assert (= (and b!6428061 (not res!2642062)) b!6428074))

(assert (= (and b!6428074 res!2642061) b!6428073))

(assert (= (and b!6428073 res!2642064) b!6428071))

(assert (= (and b!6428071 res!2642066) b!6428064))

(assert (= (and b!6428074 (not res!2642063)) b!6428070))

(assert (= (and b!6428070 res!2642060) b!6428067))

(assert (= (and b!6428067 (not res!2642065)) b!6428062))

(assert (= (and b!6428062 (not res!2642067)) b!6428069))

(assert (= (or b!6428072 b!6428067 b!6428073) bm!552901))

(declare-fun m!7221942 () Bool)

(assert (=> d!2015165 m!7221942))

(assert (=> d!2015165 m!7221290))

(declare-fun m!7221944 () Bool)

(assert (=> b!6428069 m!7221944))

(declare-fun m!7221946 () Bool)

(assert (=> b!6428071 m!7221946))

(assert (=> b!6428071 m!7221946))

(declare-fun m!7221948 () Bool)

(assert (=> b!6428071 m!7221948))

(declare-fun m!7221950 () Bool)

(assert (=> b!6428066 m!7221950))

(assert (=> b!6428064 m!7221944))

(assert (=> b!6428062 m!7221946))

(assert (=> b!6428062 m!7221946))

(assert (=> b!6428062 m!7221948))

(assert (=> b!6428068 m!7221944))

(assert (=> b!6428068 m!7221944))

(declare-fun m!7221952 () Bool)

(assert (=> b!6428068 m!7221952))

(assert (=> b!6428068 m!7221946))

(assert (=> b!6428068 m!7221952))

(assert (=> b!6428068 m!7221946))

(declare-fun m!7221954 () Bool)

(assert (=> b!6428068 m!7221954))

(assert (=> bm!552901 m!7221942))

(assert (=> b!6426982 d!2015165))

(declare-fun condSetEmpty!43887 () Bool)

(assert (=> setNonEmpty!43881 (= condSetEmpty!43887 (= setRest!43881 (as set.empty (Set Context!11428))))))

(declare-fun setRes!43887 () Bool)

(assert (=> setNonEmpty!43881 (= tp!1783748 setRes!43887)))

(declare-fun setIsEmpty!43887 () Bool)

(assert (=> setIsEmpty!43887 setRes!43887))

(declare-fun setElem!43887 () Context!11428)

(declare-fun e!3899778 () Bool)

(declare-fun setNonEmpty!43887 () Bool)

(declare-fun tp!1783783 () Bool)

(assert (=> setNonEmpty!43887 (= setRes!43887 (and tp!1783783 (inv!84073 setElem!43887) e!3899778))))

(declare-fun setRest!43887 () (Set Context!11428))

(assert (=> setNonEmpty!43887 (= setRest!43881 (set.union (set.insert setElem!43887 (as set.empty (Set Context!11428))) setRest!43887))))

(declare-fun b!6428085 () Bool)

(declare-fun tp!1783784 () Bool)

(assert (=> b!6428085 (= e!3899778 tp!1783784)))

(assert (= (and setNonEmpty!43881 condSetEmpty!43887) setIsEmpty!43887))

(assert (= (and setNonEmpty!43881 (not condSetEmpty!43887)) setNonEmpty!43887))

(assert (= setNonEmpty!43887 b!6428085))

(declare-fun m!7221956 () Bool)

(assert (=> setNonEmpty!43887 m!7221956))

(declare-fun b!6428090 () Bool)

(declare-fun e!3899781 () Bool)

(declare-fun tp!1783789 () Bool)

(declare-fun tp!1783790 () Bool)

(assert (=> b!6428090 (= e!3899781 (and tp!1783789 tp!1783790))))

(assert (=> b!6426990 (= tp!1783741 e!3899781)))

(assert (= (and b!6426990 (is-Cons!65166 (exprs!6214 setElem!43881))) b!6428090))

(declare-fun b!6428098 () Bool)

(declare-fun e!3899787 () Bool)

(declare-fun tp!1783795 () Bool)

(assert (=> b!6428098 (= e!3899787 tp!1783795)))

(declare-fun b!6428097 () Bool)

(declare-fun e!3899786 () Bool)

(declare-fun tp!1783796 () Bool)

(assert (=> b!6428097 (= e!3899786 (and (inv!84073 (h!71615 (t!378907 zl!343))) e!3899787 tp!1783796))))

(assert (=> b!6426984 (= tp!1783746 e!3899786)))

(assert (= b!6428097 b!6428098))

(assert (= (and b!6426984 (is-Cons!65167 (t!378907 zl!343))) b!6428097))

(declare-fun m!7221958 () Bool)

(assert (=> b!6428097 m!7221958))

(declare-fun b!6428111 () Bool)

(declare-fun e!3899790 () Bool)

(declare-fun tp!1783808 () Bool)

(assert (=> b!6428111 (= e!3899790 tp!1783808)))

(declare-fun b!6428112 () Bool)

(declare-fun tp!1783809 () Bool)

(declare-fun tp!1783807 () Bool)

(assert (=> b!6428112 (= e!3899790 (and tp!1783809 tp!1783807))))

(declare-fun b!6428110 () Bool)

(declare-fun tp!1783810 () Bool)

(declare-fun tp!1783811 () Bool)

(assert (=> b!6428110 (= e!3899790 (and tp!1783810 tp!1783811))))

(declare-fun b!6428109 () Bool)

(assert (=> b!6428109 (= e!3899790 tp_is_empty!41913)))

(assert (=> b!6426974 (= tp!1783747 e!3899790)))

(assert (= (and b!6426974 (is-ElementMatch!16330 (reg!16659 r!7292))) b!6428109))

(assert (= (and b!6426974 (is-Concat!25175 (reg!16659 r!7292))) b!6428110))

(assert (= (and b!6426974 (is-Star!16330 (reg!16659 r!7292))) b!6428111))

(assert (= (and b!6426974 (is-Union!16330 (reg!16659 r!7292))) b!6428112))

(declare-fun b!6428117 () Bool)

(declare-fun e!3899793 () Bool)

(declare-fun tp!1783814 () Bool)

(assert (=> b!6428117 (= e!3899793 (and tp_is_empty!41913 tp!1783814))))

(assert (=> b!6427002 (= tp!1783742 e!3899793)))

(assert (= (and b!6427002 (is-Cons!65165 (t!378905 s!2326))) b!6428117))

(declare-fun b!6428120 () Bool)

(declare-fun e!3899794 () Bool)

(declare-fun tp!1783816 () Bool)

(assert (=> b!6428120 (= e!3899794 tp!1783816)))

(declare-fun b!6428121 () Bool)

(declare-fun tp!1783817 () Bool)

(declare-fun tp!1783815 () Bool)

(assert (=> b!6428121 (= e!3899794 (and tp!1783817 tp!1783815))))

(declare-fun b!6428119 () Bool)

(declare-fun tp!1783818 () Bool)

(declare-fun tp!1783819 () Bool)

(assert (=> b!6428119 (= e!3899794 (and tp!1783818 tp!1783819))))

(declare-fun b!6428118 () Bool)

(assert (=> b!6428118 (= e!3899794 tp_is_empty!41913)))

(assert (=> b!6426991 (= tp!1783740 e!3899794)))

(assert (= (and b!6426991 (is-ElementMatch!16330 (regOne!33173 r!7292))) b!6428118))

(assert (= (and b!6426991 (is-Concat!25175 (regOne!33173 r!7292))) b!6428119))

(assert (= (and b!6426991 (is-Star!16330 (regOne!33173 r!7292))) b!6428120))

(assert (= (and b!6426991 (is-Union!16330 (regOne!33173 r!7292))) b!6428121))

(declare-fun b!6428124 () Bool)

(declare-fun e!3899795 () Bool)

(declare-fun tp!1783821 () Bool)

(assert (=> b!6428124 (= e!3899795 tp!1783821)))

(declare-fun b!6428125 () Bool)

(declare-fun tp!1783822 () Bool)

(declare-fun tp!1783820 () Bool)

(assert (=> b!6428125 (= e!3899795 (and tp!1783822 tp!1783820))))

(declare-fun b!6428123 () Bool)

(declare-fun tp!1783823 () Bool)

(declare-fun tp!1783824 () Bool)

(assert (=> b!6428123 (= e!3899795 (and tp!1783823 tp!1783824))))

(declare-fun b!6428122 () Bool)

(assert (=> b!6428122 (= e!3899795 tp_is_empty!41913)))

(assert (=> b!6426991 (= tp!1783745 e!3899795)))

(assert (= (and b!6426991 (is-ElementMatch!16330 (regTwo!33173 r!7292))) b!6428122))

(assert (= (and b!6426991 (is-Concat!25175 (regTwo!33173 r!7292))) b!6428123))

(assert (= (and b!6426991 (is-Star!16330 (regTwo!33173 r!7292))) b!6428124))

(assert (= (and b!6426991 (is-Union!16330 (regTwo!33173 r!7292))) b!6428125))

(declare-fun b!6428128 () Bool)

(declare-fun e!3899796 () Bool)

(declare-fun tp!1783826 () Bool)

(assert (=> b!6428128 (= e!3899796 tp!1783826)))

(declare-fun b!6428129 () Bool)

(declare-fun tp!1783827 () Bool)

(declare-fun tp!1783825 () Bool)

(assert (=> b!6428129 (= e!3899796 (and tp!1783827 tp!1783825))))

(declare-fun b!6428127 () Bool)

(declare-fun tp!1783828 () Bool)

(declare-fun tp!1783829 () Bool)

(assert (=> b!6428127 (= e!3899796 (and tp!1783828 tp!1783829))))

(declare-fun b!6428126 () Bool)

(assert (=> b!6428126 (= e!3899796 tp_is_empty!41913)))

(assert (=> b!6426998 (= tp!1783743 e!3899796)))

(assert (= (and b!6426998 (is-ElementMatch!16330 (regOne!33172 r!7292))) b!6428126))

(assert (= (and b!6426998 (is-Concat!25175 (regOne!33172 r!7292))) b!6428127))

(assert (= (and b!6426998 (is-Star!16330 (regOne!33172 r!7292))) b!6428128))

(assert (= (and b!6426998 (is-Union!16330 (regOne!33172 r!7292))) b!6428129))

(declare-fun b!6428132 () Bool)

(declare-fun e!3899797 () Bool)

(declare-fun tp!1783831 () Bool)

(assert (=> b!6428132 (= e!3899797 tp!1783831)))

(declare-fun b!6428133 () Bool)

(declare-fun tp!1783832 () Bool)

(declare-fun tp!1783830 () Bool)

(assert (=> b!6428133 (= e!3899797 (and tp!1783832 tp!1783830))))

(declare-fun b!6428131 () Bool)

(declare-fun tp!1783833 () Bool)

(declare-fun tp!1783834 () Bool)

(assert (=> b!6428131 (= e!3899797 (and tp!1783833 tp!1783834))))

(declare-fun b!6428130 () Bool)

(assert (=> b!6428130 (= e!3899797 tp_is_empty!41913)))

(assert (=> b!6426998 (= tp!1783739 e!3899797)))

(assert (= (and b!6426998 (is-ElementMatch!16330 (regTwo!33172 r!7292))) b!6428130))

(assert (= (and b!6426998 (is-Concat!25175 (regTwo!33172 r!7292))) b!6428131))

(assert (= (and b!6426998 (is-Star!16330 (regTwo!33172 r!7292))) b!6428132))

(assert (= (and b!6426998 (is-Union!16330 (regTwo!33172 r!7292))) b!6428133))

(declare-fun b!6428134 () Bool)

(declare-fun e!3899798 () Bool)

(declare-fun tp!1783835 () Bool)

(declare-fun tp!1783836 () Bool)

(assert (=> b!6428134 (= e!3899798 (and tp!1783835 tp!1783836))))

(assert (=> b!6426972 (= tp!1783744 e!3899798)))

(assert (= (and b!6426972 (is-Cons!65166 (exprs!6214 (h!71615 zl!343)))) b!6428134))

(declare-fun b_lambda!244261 () Bool)

(assert (= b_lambda!244255 (or b!6426969 b_lambda!244261)))

(declare-fun bs!1616818 () Bool)

(declare-fun d!2015167 () Bool)

(assert (= bs!1616818 (and d!2015167 b!6426969)))

(assert (=> bs!1616818 (= (dynLambda!25887 lambda!355338 (h!71615 zl!343)) (derivationStepZipperUp!1504 (h!71615 zl!343) (h!71613 s!2326)))))

(assert (=> bs!1616818 m!7220928))

(assert (=> d!2015017 d!2015167))

(declare-fun b_lambda!244263 () Bool)

(assert (= b_lambda!244257 (or b!6426969 b_lambda!244263)))

(declare-fun bs!1616819 () Bool)

(declare-fun d!2015169 () Bool)

(assert (= bs!1616819 (and d!2015169 b!6426969)))

(assert (=> bs!1616819 (= (dynLambda!25887 lambda!355338 lt!2378327) (derivationStepZipperUp!1504 lt!2378327 (h!71613 s!2326)))))

(assert (=> bs!1616819 m!7220942))

(assert (=> d!2015109 d!2015169))

(declare-fun b_lambda!244265 () Bool)

(assert (= b_lambda!244245 (or b!6426969 b_lambda!244265)))

(declare-fun bs!1616820 () Bool)

(declare-fun d!2015171 () Bool)

(assert (= bs!1616820 (and d!2015171 b!6426969)))

(assert (=> bs!1616820 (= (dynLambda!25887 lambda!355338 lt!2378295) (derivationStepZipperUp!1504 lt!2378295 (h!71613 s!2326)))))

(assert (=> bs!1616820 m!7220826))

(assert (=> d!2014911 d!2015171))

(declare-fun b_lambda!244267 () Bool)

(assert (= b_lambda!244247 (or b!6426969 b_lambda!244267)))

(declare-fun bs!1616821 () Bool)

(declare-fun d!2015173 () Bool)

(assert (= bs!1616821 (and d!2015173 b!6426969)))

(assert (=> bs!1616821 (= (dynLambda!25887 lambda!355338 lt!2378317) (derivationStepZipperUp!1504 lt!2378317 (h!71613 s!2326)))))

(assert (=> bs!1616821 m!7220836))

(assert (=> d!2014915 d!2015173))

(push 1)

(assert (not b!6428127))

(assert (not b!6427768))

(assert (not b!6427749))

(assert (not d!2015159))

(assert (not b!6428017))

(assert (not b!6427800))

(assert (not b!6428133))

(assert (not d!2015053))

(assert (not b!6427764))

(assert (not b!6427807))

(assert (not b!6428068))

(assert (not b!6427701))

(assert (not d!2015085))

(assert (not b!6427982))

(assert (not b!6428119))

(assert (not b!6428134))

(assert (not d!2014933))

(assert (not d!2015025))

(assert (not b!6427413))

(assert (not b!6427505))

(assert (not b!6428071))

(assert (not d!2015001))

(assert (not d!2015047))

(assert (not b!6428069))

(assert (not bs!1616819))

(assert (not b!6427745))

(assert (not b_lambda!244267))

(assert (not b!6427244))

(assert (not d!2014977))

(assert (not bm!552900))

(assert (not b!6427955))

(assert (not b!6427383))

(assert (not b!6427237))

(assert (not bm!552855))

(assert (not b!6428039))

(assert (not bm!552864))

(assert (not d!2015031))

(assert (not b!6427806))

(assert (not b!6427414))

(assert (not b!6428112))

(assert (not b_lambda!244265))

(assert (not b!6427762))

(assert (not b!6427865))

(assert (not b!6427242))

(assert (not b!6427732))

(assert (not b!6427697))

(assert (not bm!552866))

(assert (not d!2015051))

(assert (not b!6427402))

(assert (not b!6427241))

(assert (not bm!552833))

(assert (not b!6427771))

(assert (not setNonEmpty!43887))

(assert (not d!2014927))

(assert (not b!6427307))

(assert (not b!6428005))

(assert (not d!2015109))

(assert (not d!2015087))

(assert (not d!2015093))

(assert (not b!6428111))

(assert (not b!6428043))

(assert (not b!6428037))

(assert (not bm!552898))

(assert (not d!2014969))

(assert (not b!6427766))

(assert (not d!2015153))

(assert (not b!6427628))

(assert (not b!6427980))

(assert (not d!2015079))

(assert (not b!6427954))

(assert (not b!6427718))

(assert (not d!2015141))

(assert (not d!2014917))

(assert (not b!6427704))

(assert (not d!2014905))

(assert (not d!2015137))

(assert (not b!6427753))

(assert (not b!6427861))

(assert (not d!2014947))

(assert (not b!6428090))

(assert (not b!6427740))

(assert (not d!2015075))

(assert (not d!2015095))

(assert (not bm!552901))

(assert (not d!2015083))

(assert (not b!6428132))

(assert (not d!2014915))

(assert (not b!6427385))

(assert (not b!6427953))

(assert (not bm!552863))

(assert (not b!6427503))

(assert (not d!2015007))

(assert (not bm!552899))

(assert (not d!2015061))

(assert (not b!6427798))

(assert (not d!2015023))

(assert (not bm!552897))

(assert (not d!2015151))

(assert (not b!6427831))

(assert (not b!6428053))

(assert (not b!6427761))

(assert (not b!6428035))

(assert (not b!6428003))

(assert (not b!6427788))

(assert (not bm!552801))

(assert (not bm!552820))

(assert (not b!6428044))

(assert (not b!6427309))

(assert (not d!2014923))

(assert (not b!6427411))

(assert (not b!6427864))

(assert (not d!2015077))

(assert (not b!6427957))

(assert (not b!6427699))

(assert (not b!6427746))

(assert (not b!6427315))

(assert (not b!6427959))

(assert (not b!6427422))

(assert (not d!2015103))

(assert (not bm!552865))

(assert (not b!6427407))

(assert (not d!2015035))

(assert (not d!2014937))

(assert (not d!2015017))

(assert (not b!6427306))

(assert (not b!6427416))

(assert (not b!6427769))

(assert (not b!6428026))

(assert (not d!2015111))

(assert (not d!2015027))

(assert (not d!2015033))

(assert (not bm!552804))

(assert (not bm!552857))

(assert (not b!6428117))

(assert (not b!6427627))

(assert (not bs!1616820))

(assert (not b!6428121))

(assert (not b!6428059))

(assert (not b!6427700))

(assert (not b!6427730))

(assert (not b!6428041))

(assert (not b!6428066))

(assert tp_is_empty!41913)

(assert (not d!2014899))

(assert (not b!6428024))

(assert (not bm!552815))

(assert (not b!6428123))

(assert (not d!2014973))

(assert (not bm!552799))

(assert (not bm!552821))

(assert (not d!2015131))

(assert (not d!2014967))

(assert (not b_lambda!244263))

(assert (not bs!1616818))

(assert (not b!6427829))

(assert (not b!6428046))

(assert (not bm!552813))

(assert (not b!6427866))

(assert (not d!2015165))

(assert (not d!2015089))

(assert (not d!2014895))

(assert (not b!6428062))

(assert (not bm!552834))

(assert (not b!6428064))

(assert (not b!6428125))

(assert (not bm!552822))

(assert (not b!6428131))

(assert (not d!2015145))

(assert (not b!6428129))

(assert (not b!6428098))

(assert (not b!6427308))

(assert (not b!6428021))

(assert (not b!6427425))

(assert (not b!6428110))

(assert (not b!6428023))

(assert (not b!6427737))

(assert (not d!2014911))

(assert (not bm!552862))

(assert (not b!6427809))

(assert (not b!6427863))

(assert (not d!2014971))

(assert (not b!6427702))

(assert (not b!6428128))

(assert (not b!6427804))

(assert (not b!6427797))

(assert (not b!6427767))

(assert (not b!6427802))

(assert (not b!6428060))

(assert (not b!6427868))

(assert (not b!6427239))

(assert (not b!6428019))

(assert (not b!6427960))

(assert (not d!2015049))

(assert (not b!6427750))

(assert (not b!6427274))

(assert (not b!6427303))

(assert (not d!2015155))

(assert (not b_lambda!244261))

(assert (not d!2014925))

(assert (not b!6427302))

(assert (not b!6428120))

(assert (not d!2014921))

(assert (not b!6427962))

(assert (not d!2015037))

(assert (not bs!1616821))

(assert (not b!6427754))

(assert (not bm!552894))

(assert (not d!2015021))

(assert (not b!6427310))

(assert (not d!2015055))

(assert (not b!6427404))

(assert (not d!2015057))

(assert (not b!6427742))

(assert (not bm!552860))

(assert (not d!2015081))

(assert (not bm!552818))

(assert (not b!6428124))

(assert (not b!6427787))

(assert (not bm!552861))

(assert (not d!2015157))

(assert (not bm!552786))

(assert (not d!2015013))

(assert (not bm!552824))

(assert (not d!2014997))

(assert (not b!6428052))

(assert (not b!6428085))

(assert (not b!6427735))

(assert (not b!6427235))

(assert (not d!2015029))

(assert (not b!6428054))

(assert (not b!6427409))

(assert (not b!6428097))

(assert (not b!6427365))

(assert (not b!6428034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

