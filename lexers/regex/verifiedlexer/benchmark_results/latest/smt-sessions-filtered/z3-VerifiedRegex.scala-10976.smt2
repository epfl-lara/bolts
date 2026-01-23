; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!568766 () Bool)

(assert start!568766)

(declare-fun b!5417067 () Bool)

(assert (=> b!5417067 true))

(assert (=> b!5417067 true))

(declare-fun lambda!283363 () Int)

(declare-fun lambda!283362 () Int)

(assert (=> b!5417067 (not (= lambda!283363 lambda!283362))))

(assert (=> b!5417067 true))

(assert (=> b!5417067 true))

(declare-fun b!5417082 () Bool)

(assert (=> b!5417082 true))

(declare-fun b!5417072 () Bool)

(assert (=> b!5417072 true))

(declare-fun bs!1251388 () Bool)

(declare-fun b!5417053 () Bool)

(assert (= bs!1251388 (and b!5417053 b!5417067)))

(declare-datatypes ((C!30668 0))(
  ( (C!30669 (val!25036 Int)) )
))
(declare-datatypes ((Regex!15199 0))(
  ( (ElementMatch!15199 (c!944601 C!30668)) (Concat!24044 (regOne!30910 Regex!15199) (regTwo!30910 Regex!15199)) (EmptyExpr!15199) (Star!15199 (reg!15528 Regex!15199)) (EmptyLang!15199) (Union!15199 (regOne!30911 Regex!15199) (regTwo!30911 Regex!15199)) )
))
(declare-fun r!7292 () Regex!15199)

(declare-fun lambda!283367 () Int)

(declare-fun lt!2209142 () Regex!15199)

(assert (=> bs!1251388 (= (= lt!2209142 (regOne!30910 r!7292)) (= lambda!283367 lambda!283362))))

(assert (=> bs!1251388 (not (= lambda!283367 lambda!283363))))

(assert (=> b!5417053 true))

(assert (=> b!5417053 true))

(assert (=> b!5417053 true))

(declare-fun lambda!283368 () Int)

(assert (=> bs!1251388 (not (= lambda!283368 lambda!283362))))

(assert (=> bs!1251388 (= (= lt!2209142 (regOne!30910 r!7292)) (= lambda!283368 lambda!283363))))

(assert (=> b!5417053 (not (= lambda!283368 lambda!283367))))

(assert (=> b!5417053 true))

(assert (=> b!5417053 true))

(assert (=> b!5417053 true))

(declare-fun bs!1251389 () Bool)

(declare-fun b!5417058 () Bool)

(assert (= bs!1251389 (and b!5417058 b!5417067)))

(declare-datatypes ((List!61896 0))(
  ( (Nil!61772) (Cons!61772 (h!68220 C!30668) (t!375119 List!61896)) )
))
(declare-fun s!2326 () List!61896)

(declare-fun lt!2209136 () Regex!15199)

(declare-datatypes ((tuple2!64796 0))(
  ( (tuple2!64797 (_1!35701 List!61896) (_2!35701 List!61896)) )
))
(declare-fun lt!2209169 () tuple2!64796)

(declare-fun lambda!283369 () Int)

(assert (=> bs!1251389 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 r!7292)) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283369 lambda!283362))))

(assert (=> bs!1251389 (not (= lambda!283369 lambda!283363))))

(declare-fun bs!1251390 () Bool)

(assert (= bs!1251390 (and b!5417058 b!5417053)))

(assert (=> bs!1251390 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) lt!2209142) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283369 lambda!283367))))

(assert (=> bs!1251390 (not (= lambda!283369 lambda!283368))))

(assert (=> b!5417058 true))

(assert (=> b!5417058 true))

(assert (=> b!5417058 true))

(declare-fun lambda!283370 () Int)

(assert (=> bs!1251390 (not (= lambda!283370 lambda!283367))))

(assert (=> bs!1251390 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) lt!2209142) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283370 lambda!283368))))

(assert (=> bs!1251389 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 r!7292)) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283370 lambda!283363))))

(assert (=> bs!1251389 (not (= lambda!283370 lambda!283362))))

(assert (=> b!5417058 (not (= lambda!283370 lambda!283369))))

(assert (=> b!5417058 true))

(assert (=> b!5417058 true))

(assert (=> b!5417058 true))

(declare-fun lambda!283371 () Int)

(assert (=> b!5417058 (not (= lambda!283371 lambda!283370))))

(assert (=> bs!1251390 (not (= lambda!283371 lambda!283367))))

(assert (=> bs!1251390 (not (= lambda!283371 lambda!283368))))

(assert (=> bs!1251389 (not (= lambda!283371 lambda!283363))))

(assert (=> bs!1251389 (not (= lambda!283371 lambda!283362))))

(assert (=> b!5417058 (not (= lambda!283371 lambda!283369))))

(assert (=> b!5417058 true))

(assert (=> b!5417058 true))

(assert (=> b!5417058 true))

(declare-fun b!5417041 () Bool)

(declare-fun res!2304412 () Bool)

(declare-fun e!3357583 () Bool)

(assert (=> b!5417041 (=> (not res!2304412) (not e!3357583))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61897 0))(
  ( (Nil!61773) (Cons!61773 (h!68221 Regex!15199) (t!375120 List!61897)) )
))
(declare-datatypes ((Context!9166 0))(
  ( (Context!9167 (exprs!5083 List!61897)) )
))
(declare-fun z!1189 () (InoxSet Context!9166))

(declare-datatypes ((List!61898 0))(
  ( (Nil!61774) (Cons!61774 (h!68222 Context!9166) (t!375121 List!61898)) )
))
(declare-fun zl!343 () List!61898)

(declare-fun toList!8983 ((InoxSet Context!9166)) List!61898)

(assert (=> b!5417041 (= res!2304412 (= (toList!8983 z!1189) zl!343))))

(declare-fun b!5417042 () Bool)

(declare-fun e!3357576 () Bool)

(declare-fun tp_is_empty!39651 () Bool)

(assert (=> b!5417042 (= e!3357576 tp_is_empty!39651)))

(declare-fun b!5417043 () Bool)

(declare-fun e!3357591 () Bool)

(declare-fun tp!1496370 () Bool)

(assert (=> b!5417043 (= e!3357591 tp!1496370)))

(declare-fun b!5417044 () Bool)

(declare-fun e!3357592 () Bool)

(declare-fun e!3357575 () Bool)

(assert (=> b!5417044 (= e!3357592 e!3357575)))

(declare-fun res!2304434 () Bool)

(assert (=> b!5417044 (=> res!2304434 e!3357575)))

(declare-fun lt!2209140 () List!61898)

(declare-fun unfocusZipper!941 (List!61898) Regex!15199)

(assert (=> b!5417044 (= res!2304434 (not (= (unfocusZipper!941 lt!2209140) (reg!15528 (regOne!30910 r!7292)))))))

(declare-fun lt!2209134 () Context!9166)

(assert (=> b!5417044 (= lt!2209140 (Cons!61774 lt!2209134 Nil!61774))))

(declare-fun lt!2209161 () Context!9166)

(declare-fun lambda!283364 () Int)

(declare-fun lt!2209145 () (InoxSet Context!9166))

(declare-fun flatMap!926 ((InoxSet Context!9166) Int) (InoxSet Context!9166))

(declare-fun derivationStepZipperUp!571 (Context!9166 C!30668) (InoxSet Context!9166))

(assert (=> b!5417044 (= (flatMap!926 lt!2209145 lambda!283364) (derivationStepZipperUp!571 lt!2209161 (h!68220 s!2326)))))

(declare-datatypes ((Unit!154318 0))(
  ( (Unit!154319) )
))
(declare-fun lt!2209153 () Unit!154318)

(declare-fun lemmaFlatMapOnSingletonSet!458 ((InoxSet Context!9166) Context!9166 Int) Unit!154318)

(assert (=> b!5417044 (= lt!2209153 (lemmaFlatMapOnSingletonSet!458 lt!2209145 lt!2209161 lambda!283364))))

(declare-fun lt!2209150 () (InoxSet Context!9166))

(assert (=> b!5417044 (= (flatMap!926 lt!2209150 lambda!283364) (derivationStepZipperUp!571 lt!2209134 (h!68220 s!2326)))))

(declare-fun lt!2209141 () Unit!154318)

(assert (=> b!5417044 (= lt!2209141 (lemmaFlatMapOnSingletonSet!458 lt!2209150 lt!2209134 lambda!283364))))

(declare-fun lt!2209167 () (InoxSet Context!9166))

(assert (=> b!5417044 (= lt!2209167 (derivationStepZipperUp!571 lt!2209161 (h!68220 s!2326)))))

(declare-fun lt!2209151 () (InoxSet Context!9166))

(assert (=> b!5417044 (= lt!2209151 (derivationStepZipperUp!571 lt!2209134 (h!68220 s!2326)))))

(assert (=> b!5417044 (= lt!2209145 (store ((as const (Array Context!9166 Bool)) false) lt!2209161 true))))

(assert (=> b!5417044 (= lt!2209150 (store ((as const (Array Context!9166 Bool)) false) lt!2209134 true))))

(declare-fun lt!2209152 () List!61897)

(assert (=> b!5417044 (= lt!2209134 (Context!9167 lt!2209152))))

(assert (=> b!5417044 (= lt!2209152 (Cons!61773 (reg!15528 (regOne!30910 r!7292)) Nil!61773))))

(declare-fun b!5417045 () Bool)

(declare-fun res!2304431 () Bool)

(declare-fun e!3357587 () Bool)

(assert (=> b!5417045 (=> res!2304431 e!3357587)))

(declare-fun matchZipper!1443 ((InoxSet Context!9166) List!61896) Bool)

(assert (=> b!5417045 (= res!2304431 (not (matchZipper!1443 z!1189 s!2326)))))

(declare-fun b!5417046 () Bool)

(declare-fun e!3357588 () Bool)

(assert (=> b!5417046 (= e!3357575 e!3357588)))

(declare-fun res!2304409 () Bool)

(assert (=> b!5417046 (=> res!2304409 e!3357588)))

(declare-fun lt!2209155 () List!61898)

(declare-fun lt!2209147 () Regex!15199)

(assert (=> b!5417046 (= res!2304409 (not (= (unfocusZipper!941 lt!2209155) lt!2209147)))))

(assert (=> b!5417046 (= lt!2209155 (Cons!61774 lt!2209161 Nil!61774))))

(declare-fun b!5417047 () Bool)

(declare-fun e!3357573 () Bool)

(declare-fun e!3357596 () Bool)

(assert (=> b!5417047 (= e!3357573 e!3357596)))

(declare-fun res!2304411 () Bool)

(assert (=> b!5417047 (=> res!2304411 e!3357596)))

(assert (=> b!5417047 (= res!2304411 (not (= r!7292 lt!2209147)))))

(assert (=> b!5417047 (= lt!2209147 (Concat!24044 lt!2209136 (regTwo!30910 r!7292)))))

(declare-fun b!5417048 () Bool)

(declare-fun res!2304413 () Bool)

(declare-fun e!3357572 () Bool)

(assert (=> b!5417048 (=> res!2304413 e!3357572)))

(get-info :version)

(assert (=> b!5417048 (= res!2304413 (or ((_ is Concat!24044) (regOne!30910 r!7292)) (not ((_ is Star!15199) (regOne!30910 r!7292)))))))

(declare-fun b!5417049 () Bool)

(declare-fun e!3357577 () Bool)

(declare-fun e!3357579 () Bool)

(assert (=> b!5417049 (= e!3357577 e!3357579)))

(declare-fun res!2304410 () Bool)

(assert (=> b!5417049 (=> res!2304410 e!3357579)))

(declare-fun lt!2209132 () (InoxSet Context!9166))

(declare-fun lt!2209176 () (InoxSet Context!9166))

(assert (=> b!5417049 (= res!2304410 (not (= lt!2209132 lt!2209176)))))

(declare-fun lt!2209187 () Context!9166)

(declare-fun lt!2209159 () (InoxSet Context!9166))

(assert (=> b!5417049 (= (flatMap!926 lt!2209159 lambda!283364) (derivationStepZipperUp!571 lt!2209187 (h!68220 s!2326)))))

(declare-fun lt!2209173 () Unit!154318)

(assert (=> b!5417049 (= lt!2209173 (lemmaFlatMapOnSingletonSet!458 lt!2209159 lt!2209187 lambda!283364))))

(declare-fun lt!2209184 () (InoxSet Context!9166))

(assert (=> b!5417049 (= lt!2209184 (derivationStepZipperUp!571 lt!2209187 (h!68220 s!2326)))))

(declare-fun derivationStepZipper!1438 ((InoxSet Context!9166) C!30668) (InoxSet Context!9166))

(assert (=> b!5417049 (= lt!2209132 (derivationStepZipper!1438 lt!2209159 (h!68220 s!2326)))))

(assert (=> b!5417049 (= lt!2209159 (store ((as const (Array Context!9166 Bool)) false) lt!2209187 true))))

(declare-fun lt!2209186 () List!61897)

(assert (=> b!5417049 (= lt!2209187 (Context!9167 (Cons!61773 (reg!15528 (regOne!30910 r!7292)) lt!2209186)))))

(declare-fun b!5417050 () Bool)

(declare-fun e!3357580 () Unit!154318)

(declare-fun Unit!154320 () Unit!154318)

(assert (=> b!5417050 (= e!3357580 Unit!154320)))

(declare-fun lt!2209164 () (InoxSet Context!9166))

(declare-fun lt!2209148 () Unit!154318)

(declare-fun lt!2209144 () (InoxSet Context!9166))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!436 ((InoxSet Context!9166) (InoxSet Context!9166) List!61896) Unit!154318)

(assert (=> b!5417050 (= lt!2209148 (lemmaZipperConcatMatchesSameAsBothZippers!436 lt!2209164 lt!2209144 (t!375119 s!2326)))))

(declare-fun res!2304441 () Bool)

(assert (=> b!5417050 (= res!2304441 (matchZipper!1443 lt!2209164 (t!375119 s!2326)))))

(declare-fun e!3357581 () Bool)

(assert (=> b!5417050 (=> res!2304441 e!3357581)))

(assert (=> b!5417050 (= (matchZipper!1443 ((_ map or) lt!2209164 lt!2209144) (t!375119 s!2326)) e!3357581)))

(declare-fun res!2304419 () Bool)

(assert (=> start!568766 (=> (not res!2304419) (not e!3357583))))

(declare-fun validRegex!6935 (Regex!15199) Bool)

(assert (=> start!568766 (= res!2304419 (validRegex!6935 r!7292))))

(assert (=> start!568766 e!3357583))

(assert (=> start!568766 e!3357576))

(declare-fun condSetEmpty!35297 () Bool)

(assert (=> start!568766 (= condSetEmpty!35297 (= z!1189 ((as const (Array Context!9166 Bool)) false)))))

(declare-fun setRes!35297 () Bool)

(assert (=> start!568766 setRes!35297))

(declare-fun e!3357595 () Bool)

(assert (=> start!568766 e!3357595))

(declare-fun e!3357584 () Bool)

(assert (=> start!568766 e!3357584))

(declare-fun b!5417040 () Bool)

(declare-fun res!2304427 () Bool)

(assert (=> b!5417040 (=> res!2304427 e!3357573)))

(declare-fun lt!2209171 () Regex!15199)

(assert (=> b!5417040 (= res!2304427 (not (= lt!2209171 r!7292)))))

(declare-fun b!5417051 () Bool)

(declare-fun e!3357593 () Bool)

(assert (=> b!5417051 (= e!3357593 (not (matchZipper!1443 lt!2209144 (t!375119 s!2326))))))

(declare-fun b!5417052 () Bool)

(declare-fun res!2304436 () Bool)

(declare-fun e!3357582 () Bool)

(assert (=> b!5417052 (=> res!2304436 e!3357582)))

(declare-fun lt!2209180 () tuple2!64796)

(assert (=> b!5417052 (= res!2304436 (not (matchZipper!1443 lt!2209145 (_2!35701 lt!2209180))))))

(declare-fun e!3357589 () Bool)

(assert (=> b!5417053 (= e!3357582 e!3357589)))

(declare-fun res!2304425 () Bool)

(assert (=> b!5417053 (=> res!2304425 e!3357589)))

(declare-fun matchR!7384 (Regex!15199 List!61896) Bool)

(assert (=> b!5417053 (= res!2304425 (not (matchR!7384 lt!2209142 (_1!35701 lt!2209169))))))

(declare-datatypes ((Option!15310 0))(
  ( (None!15309) (Some!15309 (v!51338 tuple2!64796)) )
))
(declare-fun lt!2209190 () Option!15310)

(declare-fun get!21301 (Option!15310) tuple2!64796)

(assert (=> b!5417053 (= lt!2209169 (get!21301 lt!2209190))))

(declare-fun Exists!2380 (Int) Bool)

(assert (=> b!5417053 (= (Exists!2380 lambda!283367) (Exists!2380 lambda!283368))))

(declare-fun lt!2209138 () Unit!154318)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1034 (Regex!15199 Regex!15199 List!61896) Unit!154318)

(assert (=> b!5417053 (= lt!2209138 (lemmaExistCutMatchRandMatchRSpecEquivalent!1034 lt!2209142 (regTwo!30910 r!7292) s!2326))))

(declare-fun isDefined!12013 (Option!15310) Bool)

(assert (=> b!5417053 (= (isDefined!12013 lt!2209190) (Exists!2380 lambda!283367))))

(declare-fun findConcatSeparation!1724 (Regex!15199 Regex!15199 List!61896 List!61896 List!61896) Option!15310)

(assert (=> b!5417053 (= lt!2209190 (findConcatSeparation!1724 lt!2209142 (regTwo!30910 r!7292) Nil!61772 s!2326 s!2326))))

(declare-fun lt!2209183 () Unit!154318)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1488 (Regex!15199 Regex!15199 List!61896) Unit!154318)

(assert (=> b!5417053 (= lt!2209183 (lemmaFindConcatSeparationEquivalentToExists!1488 lt!2209142 (regTwo!30910 r!7292) s!2326))))

(declare-fun lt!2209185 () Regex!15199)

(declare-fun matchRSpec!2302 (Regex!15199 List!61896) Bool)

(assert (=> b!5417053 (matchRSpec!2302 lt!2209185 s!2326)))

(declare-fun lt!2209175 () Unit!154318)

(declare-fun mainMatchTheorem!2302 (Regex!15199 List!61896) Unit!154318)

(assert (=> b!5417053 (= lt!2209175 (mainMatchTheorem!2302 lt!2209185 s!2326))))

(assert (=> b!5417053 (matchR!7384 lt!2209185 s!2326)))

(assert (=> b!5417053 (= lt!2209185 (Concat!24044 lt!2209142 (regTwo!30910 r!7292)))))

(assert (=> b!5417053 (= lt!2209142 (Concat!24044 (reg!15528 (regOne!30910 r!7292)) lt!2209136))))

(declare-fun lt!2209146 () Unit!154318)

(declare-fun lemmaConcatAssociative!52 (Regex!15199 Regex!15199 Regex!15199 List!61896) Unit!154318)

(assert (=> b!5417053 (= lt!2209146 (lemmaConcatAssociative!52 (reg!15528 (regOne!30910 r!7292)) lt!2209136 (regTwo!30910 r!7292) s!2326))))

(declare-fun e!3357571 () Bool)

(assert (=> b!5417053 e!3357571))

(declare-fun res!2304428 () Bool)

(assert (=> b!5417053 (=> (not res!2304428) (not e!3357571))))

(declare-fun lt!2209189 () Regex!15199)

(declare-fun lt!2209172 () List!61896)

(assert (=> b!5417053 (= res!2304428 (matchR!7384 lt!2209189 lt!2209172))))

(declare-fun lt!2209192 () Unit!154318)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!222 (Regex!15199 Regex!15199 List!61896 List!61896) Unit!154318)

(assert (=> b!5417053 (= lt!2209192 (lemmaTwoRegexMatchThenConcatMatchesConcatString!222 (reg!15528 (regOne!30910 r!7292)) lt!2209147 (_1!35701 lt!2209180) (_2!35701 lt!2209180)))))

(assert (=> b!5417053 (matchR!7384 lt!2209147 (_2!35701 lt!2209180))))

(declare-fun lt!2209156 () Unit!154318)

(declare-fun theoremZipperRegexEquiv!513 ((InoxSet Context!9166) List!61898 Regex!15199 List!61896) Unit!154318)

(assert (=> b!5417053 (= lt!2209156 (theoremZipperRegexEquiv!513 lt!2209145 lt!2209155 lt!2209147 (_2!35701 lt!2209180)))))

(assert (=> b!5417053 (matchR!7384 (reg!15528 (regOne!30910 r!7292)) (_1!35701 lt!2209180))))

(declare-fun lt!2209181 () Unit!154318)

(assert (=> b!5417053 (= lt!2209181 (theoremZipperRegexEquiv!513 lt!2209150 lt!2209140 (reg!15528 (regOne!30910 r!7292)) (_1!35701 lt!2209180)))))

(declare-fun ++!13571 (List!61897 List!61897) List!61897)

(assert (=> b!5417053 (matchZipper!1443 (store ((as const (Array Context!9166 Bool)) false) (Context!9167 (++!13571 lt!2209152 lt!2209186)) true) lt!2209172)))

(declare-fun lambda!283366 () Int)

(declare-fun lt!2209174 () Unit!154318)

(declare-fun lemmaConcatPreservesForall!224 (List!61897 List!61897 Int) Unit!154318)

(assert (=> b!5417053 (= lt!2209174 (lemmaConcatPreservesForall!224 lt!2209152 lt!2209186 lambda!283366))))

(declare-fun lt!2209188 () Unit!154318)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!72 (Context!9166 Context!9166 List!61896 List!61896) Unit!154318)

(assert (=> b!5417053 (= lt!2209188 (lemmaConcatenateContextMatchesConcatOfStrings!72 lt!2209134 lt!2209161 (_1!35701 lt!2209180) (_2!35701 lt!2209180)))))

(declare-fun b!5417054 () Bool)

(declare-fun e!3357585 () Bool)

(declare-fun nullable!5368 (Regex!15199) Bool)

(assert (=> b!5417054 (= e!3357585 (nullable!5368 (regOne!30910 (regOne!30910 r!7292))))))

(declare-fun b!5417055 () Bool)

(declare-fun e!3357590 () Bool)

(assert (=> b!5417055 (= e!3357583 e!3357590)))

(declare-fun res!2304421 () Bool)

(assert (=> b!5417055 (=> (not res!2304421) (not e!3357590))))

(assert (=> b!5417055 (= res!2304421 (= r!7292 lt!2209171))))

(assert (=> b!5417055 (= lt!2209171 (unfocusZipper!941 zl!343))))

(declare-fun b!5417056 () Bool)

(declare-fun res!2304442 () Bool)

(declare-fun e!3357574 () Bool)

(assert (=> b!5417056 (=> res!2304442 e!3357574)))

(declare-fun isEmpty!33768 (List!61897) Bool)

(assert (=> b!5417056 (= res!2304442 (isEmpty!33768 (t!375120 (exprs!5083 (h!68222 zl!343)))))))

(declare-fun b!5417057 () Bool)

(declare-fun Unit!154321 () Unit!154318)

(assert (=> b!5417057 (= e!3357580 Unit!154321)))

(assert (=> b!5417058 (= e!3357589 (validRegex!6935 (reg!15528 (regOne!30910 r!7292))))))

(declare-fun lt!2209149 () tuple2!64796)

(declare-fun ++!13572 (List!61896 List!61896) List!61896)

(assert (=> b!5417058 (= (++!13572 (++!13572 (_1!35701 lt!2209149) (_2!35701 lt!2209149)) (_2!35701 lt!2209169)) (++!13572 (_1!35701 lt!2209149) (++!13572 (_2!35701 lt!2209149) (_2!35701 lt!2209169))))))

(declare-fun lt!2209170 () Unit!154318)

(declare-fun lemmaConcatAssociativity!2834 (List!61896 List!61896 List!61896) Unit!154318)

(assert (=> b!5417058 (= lt!2209170 (lemmaConcatAssociativity!2834 (_1!35701 lt!2209149) (_2!35701 lt!2209149) (_2!35701 lt!2209169)))))

(declare-fun lt!2209139 () Option!15310)

(assert (=> b!5417058 (= lt!2209149 (get!21301 lt!2209139))))

(assert (=> b!5417058 (= (Exists!2380 lambda!283369) (Exists!2380 lambda!283371))))

(declare-fun lt!2209157 () Unit!154318)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!410 (Regex!15199 List!61896) Unit!154318)

(assert (=> b!5417058 (= lt!2209157 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!410 (reg!15528 (regOne!30910 r!7292)) (_1!35701 lt!2209169)))))

(assert (=> b!5417058 (= (Exists!2380 lambda!283369) (Exists!2380 lambda!283370))))

(declare-fun lt!2209162 () Unit!154318)

(assert (=> b!5417058 (= lt!2209162 (lemmaExistCutMatchRandMatchRSpecEquivalent!1034 (reg!15528 (regOne!30910 r!7292)) lt!2209136 (_1!35701 lt!2209169)))))

(assert (=> b!5417058 (= (isDefined!12013 lt!2209139) (Exists!2380 lambda!283369))))

(assert (=> b!5417058 (= lt!2209139 (findConcatSeparation!1724 (reg!15528 (regOne!30910 r!7292)) lt!2209136 Nil!61772 (_1!35701 lt!2209169) (_1!35701 lt!2209169)))))

(declare-fun lt!2209191 () Unit!154318)

(assert (=> b!5417058 (= lt!2209191 (lemmaFindConcatSeparationEquivalentToExists!1488 (reg!15528 (regOne!30910 r!7292)) lt!2209136 (_1!35701 lt!2209169)))))

(assert (=> b!5417058 (matchRSpec!2302 lt!2209142 (_1!35701 lt!2209169))))

(declare-fun lt!2209135 () Unit!154318)

(assert (=> b!5417058 (= lt!2209135 (mainMatchTheorem!2302 lt!2209142 (_1!35701 lt!2209169)))))

(declare-fun e!3357570 () Bool)

(declare-fun tp!1496372 () Bool)

(declare-fun b!5417059 () Bool)

(declare-fun inv!81244 (Context!9166) Bool)

(assert (=> b!5417059 (= e!3357595 (and (inv!81244 (h!68222 zl!343)) e!3357570 tp!1496372))))

(declare-fun b!5417060 () Bool)

(assert (=> b!5417060 (= e!3357596 e!3357592)))

(declare-fun res!2304438 () Bool)

(assert (=> b!5417060 (=> res!2304438 e!3357592)))

(assert (=> b!5417060 (= res!2304438 (not (= (unfocusZipper!941 (Cons!61774 lt!2209187 Nil!61774)) lt!2209189)))))

(assert (=> b!5417060 (= lt!2209189 (Concat!24044 (reg!15528 (regOne!30910 r!7292)) lt!2209147))))

(declare-fun b!5417061 () Bool)

(declare-fun tp!1496374 () Bool)

(declare-fun tp!1496375 () Bool)

(assert (=> b!5417061 (= e!3357576 (and tp!1496374 tp!1496375))))

(declare-fun b!5417062 () Bool)

(assert (=> b!5417062 (= e!3357572 e!3357577)))

(declare-fun res!2304430 () Bool)

(assert (=> b!5417062 (=> res!2304430 e!3357577)))

(assert (=> b!5417062 (= res!2304430 (not (= lt!2209164 lt!2209176)))))

(declare-fun derivationStepZipperDown!647 (Regex!15199 Context!9166 C!30668) (InoxSet Context!9166))

(assert (=> b!5417062 (= lt!2209176 (derivationStepZipperDown!647 (reg!15528 (regOne!30910 r!7292)) lt!2209161 (h!68220 s!2326)))))

(assert (=> b!5417062 (= lt!2209161 (Context!9167 lt!2209186))))

(assert (=> b!5417062 (= lt!2209186 (Cons!61773 lt!2209136 (t!375120 (exprs!5083 (h!68222 zl!343)))))))

(assert (=> b!5417062 (= lt!2209136 (Star!15199 (reg!15528 (regOne!30910 r!7292))))))

(declare-fun b!5417063 () Bool)

(declare-fun res!2304435 () Bool)

(assert (=> b!5417063 (=> res!2304435 e!3357582)))

(assert (=> b!5417063 (= res!2304435 (not (matchZipper!1443 lt!2209150 (_1!35701 lt!2209180))))))

(declare-fun b!5417064 () Bool)

(declare-fun tp!1496371 () Bool)

(assert (=> b!5417064 (= e!3357576 tp!1496371)))

(declare-fun b!5417065 () Bool)

(declare-fun tp!1496369 () Bool)

(declare-fun tp!1496376 () Bool)

(assert (=> b!5417065 (= e!3357576 (and tp!1496369 tp!1496376))))

(declare-fun b!5417066 () Bool)

(declare-fun tp!1496377 () Bool)

(assert (=> b!5417066 (= e!3357584 (and tp_is_empty!39651 tp!1496377))))

(declare-fun e!3357578 () Bool)

(assert (=> b!5417067 (= e!3357578 e!3357574)))

(declare-fun res!2304420 () Bool)

(assert (=> b!5417067 (=> res!2304420 e!3357574)))

(declare-fun lt!2209143 () Bool)

(declare-fun lt!2209166 () Bool)

(assert (=> b!5417067 (= res!2304420 (or (not (= lt!2209143 lt!2209166)) ((_ is Nil!61772) s!2326)))))

(assert (=> b!5417067 (= (Exists!2380 lambda!283362) (Exists!2380 lambda!283363))))

(declare-fun lt!2209178 () Unit!154318)

(assert (=> b!5417067 (= lt!2209178 (lemmaExistCutMatchRandMatchRSpecEquivalent!1034 (regOne!30910 r!7292) (regTwo!30910 r!7292) s!2326))))

(assert (=> b!5417067 (= lt!2209166 (Exists!2380 lambda!283362))))

(assert (=> b!5417067 (= lt!2209166 (isDefined!12013 (findConcatSeparation!1724 (regOne!30910 r!7292) (regTwo!30910 r!7292) Nil!61772 s!2326 s!2326)))))

(declare-fun lt!2209163 () Unit!154318)

(assert (=> b!5417067 (= lt!2209163 (lemmaFindConcatSeparationEquivalentToExists!1488 (regOne!30910 r!7292) (regTwo!30910 r!7292) s!2326))))

(declare-fun b!5417068 () Bool)

(declare-fun res!2304432 () Bool)

(assert (=> b!5417068 (=> res!2304432 e!3357578)))

(declare-fun generalisedUnion!1128 (List!61897) Regex!15199)

(declare-fun unfocusZipperList!641 (List!61898) List!61897)

(assert (=> b!5417068 (= res!2304432 (not (= r!7292 (generalisedUnion!1128 (unfocusZipperList!641 zl!343)))))))

(declare-fun b!5417069 () Bool)

(assert (=> b!5417069 (= e!3357590 (not e!3357578))))

(declare-fun res!2304437 () Bool)

(assert (=> b!5417069 (=> res!2304437 e!3357578)))

(assert (=> b!5417069 (= res!2304437 (not ((_ is Cons!61774) zl!343)))))

(assert (=> b!5417069 (= lt!2209143 (matchRSpec!2302 r!7292 s!2326))))

(assert (=> b!5417069 (= lt!2209143 (matchR!7384 r!7292 s!2326))))

(declare-fun lt!2209165 () Unit!154318)

(assert (=> b!5417069 (= lt!2209165 (mainMatchTheorem!2302 r!7292 s!2326))))

(declare-fun b!5417070 () Bool)

(declare-fun res!2304443 () Bool)

(assert (=> b!5417070 (=> res!2304443 e!3357572)))

(assert (=> b!5417070 (= res!2304443 e!3357585)))

(declare-fun res!2304416 () Bool)

(assert (=> b!5417070 (=> (not res!2304416) (not e!3357585))))

(assert (=> b!5417070 (= res!2304416 ((_ is Concat!24044) (regOne!30910 r!7292)))))

(declare-fun b!5417071 () Bool)

(declare-fun res!2304424 () Bool)

(assert (=> b!5417071 (=> res!2304424 e!3357578)))

(declare-fun isEmpty!33769 (List!61898) Bool)

(assert (=> b!5417071 (= res!2304424 (not (isEmpty!33769 (t!375121 zl!343))))))

(declare-fun e!3357594 () Bool)

(declare-fun e!3357586 () Bool)

(assert (=> b!5417072 (= e!3357594 e!3357586)))

(declare-fun res!2304426 () Bool)

(assert (=> b!5417072 (=> res!2304426 e!3357586)))

(declare-fun appendTo!58 ((InoxSet Context!9166) Context!9166) (InoxSet Context!9166))

(assert (=> b!5417072 (= res!2304426 (not (= (appendTo!58 lt!2209150 lt!2209161) lt!2209159)))))

(declare-fun lambda!283365 () Int)

(declare-fun map!14183 ((InoxSet Context!9166) Int) (InoxSet Context!9166))

(assert (=> b!5417072 (= (map!14183 lt!2209150 lambda!283365) (store ((as const (Array Context!9166 Bool)) false) (Context!9167 (++!13571 lt!2209152 lt!2209186)) true))))

(declare-fun lt!2209131 () Unit!154318)

(assert (=> b!5417072 (= lt!2209131 (lemmaConcatPreservesForall!224 lt!2209152 lt!2209186 lambda!283366))))

(declare-fun lt!2209177 () Unit!154318)

(declare-fun lemmaMapOnSingletonSet!58 ((InoxSet Context!9166) Context!9166 Int) Unit!154318)

(assert (=> b!5417072 (= lt!2209177 (lemmaMapOnSingletonSet!58 lt!2209150 lt!2209134 lambda!283365))))

(declare-fun setNonEmpty!35297 () Bool)

(declare-fun tp!1496368 () Bool)

(declare-fun setElem!35297 () Context!9166)

(assert (=> setNonEmpty!35297 (= setRes!35297 (and tp!1496368 (inv!81244 setElem!35297) e!3357591))))

(declare-fun setRest!35297 () (InoxSet Context!9166))

(assert (=> setNonEmpty!35297 (= z!1189 ((_ map or) (store ((as const (Array Context!9166 Bool)) false) setElem!35297 true) setRest!35297))))

(declare-fun b!5417073 () Bool)

(assert (=> b!5417073 (= e!3357581 (matchZipper!1443 lt!2209144 (t!375119 s!2326)))))

(declare-fun b!5417074 () Bool)

(assert (=> b!5417074 (= e!3357587 e!3357594)))

(declare-fun res!2304418 () Bool)

(assert (=> b!5417074 (=> res!2304418 e!3357594)))

(assert (=> b!5417074 (= res!2304418 e!3357593)))

(declare-fun res!2304423 () Bool)

(assert (=> b!5417074 (=> (not res!2304423) (not e!3357593))))

(declare-fun lt!2209130 () Bool)

(assert (=> b!5417074 (= res!2304423 (not lt!2209130))))

(assert (=> b!5417074 (= lt!2209130 (matchZipper!1443 lt!2209164 (t!375119 s!2326)))))

(declare-fun b!5417075 () Bool)

(declare-fun res!2304429 () Bool)

(assert (=> b!5417075 (=> res!2304429 e!3357578)))

(assert (=> b!5417075 (= res!2304429 (not ((_ is Cons!61773) (exprs!5083 (h!68222 zl!343)))))))

(declare-fun b!5417076 () Bool)

(declare-fun res!2304415 () Bool)

(assert (=> b!5417076 (=> res!2304415 e!3357578)))

(declare-fun generalisedConcat!868 (List!61897) Regex!15199)

(assert (=> b!5417076 (= res!2304415 (not (= r!7292 (generalisedConcat!868 (exprs!5083 (h!68222 zl!343))))))))

(declare-fun b!5417077 () Bool)

(assert (=> b!5417077 (= e!3357586 e!3357582)))

(declare-fun res!2304439 () Bool)

(assert (=> b!5417077 (=> res!2304439 e!3357582)))

(assert (=> b!5417077 (= res!2304439 (not (= s!2326 lt!2209172)))))

(assert (=> b!5417077 (= lt!2209172 (++!13572 (_1!35701 lt!2209180) (_2!35701 lt!2209180)))))

(declare-fun lt!2209160 () Option!15310)

(assert (=> b!5417077 (= lt!2209180 (get!21301 lt!2209160))))

(assert (=> b!5417077 (isDefined!12013 lt!2209160)))

(declare-fun findConcatSeparationZippers!56 ((InoxSet Context!9166) (InoxSet Context!9166) List!61896 List!61896 List!61896) Option!15310)

(assert (=> b!5417077 (= lt!2209160 (findConcatSeparationZippers!56 lt!2209150 lt!2209145 Nil!61772 s!2326 s!2326))))

(declare-fun lt!2209133 () Unit!154318)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!56 ((InoxSet Context!9166) Context!9166 List!61896) Unit!154318)

(assert (=> b!5417077 (= lt!2209133 (lemmaConcatZipperMatchesStringThenFindConcatDefined!56 lt!2209150 lt!2209161 s!2326))))

(declare-fun b!5417078 () Bool)

(declare-fun res!2304440 () Bool)

(assert (=> b!5417078 (=> res!2304440 e!3357578)))

(assert (=> b!5417078 (= res!2304440 (or ((_ is EmptyExpr!15199) r!7292) ((_ is EmptyLang!15199) r!7292) ((_ is ElementMatch!15199) r!7292) ((_ is Union!15199) r!7292) (not ((_ is Concat!24044) r!7292))))))

(declare-fun b!5417079 () Bool)

(assert (=> b!5417079 (= e!3357588 e!3357587)))

(declare-fun res!2304422 () Bool)

(assert (=> b!5417079 (=> res!2304422 e!3357587)))

(assert (=> b!5417079 (= res!2304422 lt!2209143)))

(declare-fun lt!2209158 () Bool)

(assert (=> b!5417079 (= lt!2209158 (matchRSpec!2302 lt!2209189 s!2326))))

(assert (=> b!5417079 (= lt!2209158 (matchR!7384 lt!2209189 s!2326))))

(declare-fun lt!2209128 () Unit!154318)

(assert (=> b!5417079 (= lt!2209128 (mainMatchTheorem!2302 lt!2209189 s!2326))))

(declare-fun b!5417080 () Bool)

(declare-fun res!2304408 () Bool)

(assert (=> b!5417080 (=> res!2304408 e!3357587)))

(declare-fun lt!2209154 () Bool)

(assert (=> b!5417080 (= res!2304408 (not lt!2209154))))

(declare-fun b!5417081 () Bool)

(assert (=> b!5417081 (= e!3357571 lt!2209158)))

(assert (=> b!5417082 (= e!3357574 e!3357572)))

(declare-fun res!2304414 () Bool)

(assert (=> b!5417082 (=> res!2304414 e!3357572)))

(assert (=> b!5417082 (= res!2304414 (or (and ((_ is ElementMatch!15199) (regOne!30910 r!7292)) (= (c!944601 (regOne!30910 r!7292)) (h!68220 s!2326))) ((_ is Union!15199) (regOne!30910 r!7292))))))

(declare-fun lt!2209137 () Unit!154318)

(assert (=> b!5417082 (= lt!2209137 e!3357580)))

(declare-fun c!944600 () Bool)

(assert (=> b!5417082 (= c!944600 lt!2209154)))

(assert (=> b!5417082 (= lt!2209154 (nullable!5368 (h!68221 (exprs!5083 (h!68222 zl!343)))))))

(assert (=> b!5417082 (= (flatMap!926 z!1189 lambda!283364) (derivationStepZipperUp!571 (h!68222 zl!343) (h!68220 s!2326)))))

(declare-fun lt!2209182 () Unit!154318)

(assert (=> b!5417082 (= lt!2209182 (lemmaFlatMapOnSingletonSet!458 z!1189 (h!68222 zl!343) lambda!283364))))

(declare-fun lt!2209168 () Context!9166)

(assert (=> b!5417082 (= lt!2209144 (derivationStepZipperUp!571 lt!2209168 (h!68220 s!2326)))))

(assert (=> b!5417082 (= lt!2209164 (derivationStepZipperDown!647 (h!68221 (exprs!5083 (h!68222 zl!343))) lt!2209168 (h!68220 s!2326)))))

(assert (=> b!5417082 (= lt!2209168 (Context!9167 (t!375120 (exprs!5083 (h!68222 zl!343)))))))

(declare-fun lt!2209129 () (InoxSet Context!9166))

(assert (=> b!5417082 (= lt!2209129 (derivationStepZipperUp!571 (Context!9167 (Cons!61773 (h!68221 (exprs!5083 (h!68222 zl!343))) (t!375120 (exprs!5083 (h!68222 zl!343))))) (h!68220 s!2326)))))

(declare-fun b!5417083 () Bool)

(assert (=> b!5417083 (= e!3357579 e!3357573)))

(declare-fun res!2304417 () Bool)

(assert (=> b!5417083 (=> res!2304417 e!3357573)))

(declare-fun lt!2209179 () Bool)

(assert (=> b!5417083 (= res!2304417 (not (= lt!2209179 (matchZipper!1443 lt!2209132 (t!375119 s!2326)))))))

(assert (=> b!5417083 (= lt!2209179 (matchZipper!1443 lt!2209159 s!2326))))

(declare-fun b!5417084 () Bool)

(declare-fun res!2304433 () Bool)

(assert (=> b!5417084 (=> res!2304433 e!3357594)))

(assert (=> b!5417084 (= res!2304433 (or (not lt!2209130) (not lt!2209179)))))

(declare-fun setIsEmpty!35297 () Bool)

(assert (=> setIsEmpty!35297 setRes!35297))

(declare-fun b!5417085 () Bool)

(declare-fun tp!1496373 () Bool)

(assert (=> b!5417085 (= e!3357570 tp!1496373)))

(assert (= (and start!568766 res!2304419) b!5417041))

(assert (= (and b!5417041 res!2304412) b!5417055))

(assert (= (and b!5417055 res!2304421) b!5417069))

(assert (= (and b!5417069 (not res!2304437)) b!5417071))

(assert (= (and b!5417071 (not res!2304424)) b!5417076))

(assert (= (and b!5417076 (not res!2304415)) b!5417075))

(assert (= (and b!5417075 (not res!2304429)) b!5417068))

(assert (= (and b!5417068 (not res!2304432)) b!5417078))

(assert (= (and b!5417078 (not res!2304440)) b!5417067))

(assert (= (and b!5417067 (not res!2304420)) b!5417056))

(assert (= (and b!5417056 (not res!2304442)) b!5417082))

(assert (= (and b!5417082 c!944600) b!5417050))

(assert (= (and b!5417082 (not c!944600)) b!5417057))

(assert (= (and b!5417050 (not res!2304441)) b!5417073))

(assert (= (and b!5417082 (not res!2304414)) b!5417070))

(assert (= (and b!5417070 res!2304416) b!5417054))

(assert (= (and b!5417070 (not res!2304443)) b!5417048))

(assert (= (and b!5417048 (not res!2304413)) b!5417062))

(assert (= (and b!5417062 (not res!2304430)) b!5417049))

(assert (= (and b!5417049 (not res!2304410)) b!5417083))

(assert (= (and b!5417083 (not res!2304417)) b!5417040))

(assert (= (and b!5417040 (not res!2304427)) b!5417047))

(assert (= (and b!5417047 (not res!2304411)) b!5417060))

(assert (= (and b!5417060 (not res!2304438)) b!5417044))

(assert (= (and b!5417044 (not res!2304434)) b!5417046))

(assert (= (and b!5417046 (not res!2304409)) b!5417079))

(assert (= (and b!5417079 (not res!2304422)) b!5417045))

(assert (= (and b!5417045 (not res!2304431)) b!5417080))

(assert (= (and b!5417080 (not res!2304408)) b!5417074))

(assert (= (and b!5417074 res!2304423) b!5417051))

(assert (= (and b!5417074 (not res!2304418)) b!5417084))

(assert (= (and b!5417084 (not res!2304433)) b!5417072))

(assert (= (and b!5417072 (not res!2304426)) b!5417077))

(assert (= (and b!5417077 (not res!2304439)) b!5417063))

(assert (= (and b!5417063 (not res!2304435)) b!5417052))

(assert (= (and b!5417052 (not res!2304436)) b!5417053))

(assert (= (and b!5417053 res!2304428) b!5417081))

(assert (= (and b!5417053 (not res!2304425)) b!5417058))

(assert (= (and start!568766 ((_ is ElementMatch!15199) r!7292)) b!5417042))

(assert (= (and start!568766 ((_ is Concat!24044) r!7292)) b!5417065))

(assert (= (and start!568766 ((_ is Star!15199) r!7292)) b!5417064))

(assert (= (and start!568766 ((_ is Union!15199) r!7292)) b!5417061))

(assert (= (and start!568766 condSetEmpty!35297) setIsEmpty!35297))

(assert (= (and start!568766 (not condSetEmpty!35297)) setNonEmpty!35297))

(assert (= setNonEmpty!35297 b!5417043))

(assert (= b!5417059 b!5417085))

(assert (= (and start!568766 ((_ is Cons!61774) zl!343)) b!5417059))

(assert (= (and start!568766 ((_ is Cons!61772) s!2326)) b!5417066))

(declare-fun m!6440912 () Bool)

(assert (=> b!5417056 m!6440912))

(declare-fun m!6440914 () Bool)

(assert (=> b!5417058 m!6440914))

(declare-fun m!6440916 () Bool)

(assert (=> b!5417058 m!6440916))

(declare-fun m!6440918 () Bool)

(assert (=> b!5417058 m!6440918))

(declare-fun m!6440920 () Bool)

(assert (=> b!5417058 m!6440920))

(declare-fun m!6440922 () Bool)

(assert (=> b!5417058 m!6440922))

(declare-fun m!6440924 () Bool)

(assert (=> b!5417058 m!6440924))

(declare-fun m!6440926 () Bool)

(assert (=> b!5417058 m!6440926))

(declare-fun m!6440928 () Bool)

(assert (=> b!5417058 m!6440928))

(declare-fun m!6440930 () Bool)

(assert (=> b!5417058 m!6440930))

(assert (=> b!5417058 m!6440926))

(declare-fun m!6440932 () Bool)

(assert (=> b!5417058 m!6440932))

(declare-fun m!6440934 () Bool)

(assert (=> b!5417058 m!6440934))

(declare-fun m!6440936 () Bool)

(assert (=> b!5417058 m!6440936))

(declare-fun m!6440938 () Bool)

(assert (=> b!5417058 m!6440938))

(declare-fun m!6440940 () Bool)

(assert (=> b!5417058 m!6440940))

(declare-fun m!6440942 () Bool)

(assert (=> b!5417058 m!6440942))

(assert (=> b!5417058 m!6440920))

(assert (=> b!5417058 m!6440920))

(declare-fun m!6440944 () Bool)

(assert (=> b!5417058 m!6440944))

(declare-fun m!6440946 () Bool)

(assert (=> b!5417058 m!6440946))

(assert (=> b!5417058 m!6440916))

(declare-fun m!6440948 () Bool)

(assert (=> b!5417068 m!6440948))

(assert (=> b!5417068 m!6440948))

(declare-fun m!6440950 () Bool)

(assert (=> b!5417068 m!6440950))

(declare-fun m!6440952 () Bool)

(assert (=> start!568766 m!6440952))

(declare-fun m!6440954 () Bool)

(assert (=> b!5417071 m!6440954))

(declare-fun m!6440956 () Bool)

(assert (=> b!5417045 m!6440956))

(declare-fun m!6440958 () Bool)

(assert (=> b!5417076 m!6440958))

(declare-fun m!6440960 () Bool)

(assert (=> b!5417052 m!6440960))

(declare-fun m!6440962 () Bool)

(assert (=> b!5417082 m!6440962))

(declare-fun m!6440964 () Bool)

(assert (=> b!5417082 m!6440964))

(declare-fun m!6440966 () Bool)

(assert (=> b!5417082 m!6440966))

(declare-fun m!6440968 () Bool)

(assert (=> b!5417082 m!6440968))

(declare-fun m!6440970 () Bool)

(assert (=> b!5417082 m!6440970))

(declare-fun m!6440972 () Bool)

(assert (=> b!5417082 m!6440972))

(declare-fun m!6440974 () Bool)

(assert (=> b!5417082 m!6440974))

(declare-fun m!6440976 () Bool)

(assert (=> b!5417069 m!6440976))

(declare-fun m!6440978 () Bool)

(assert (=> b!5417069 m!6440978))

(declare-fun m!6440980 () Bool)

(assert (=> b!5417069 m!6440980))

(declare-fun m!6440982 () Bool)

(assert (=> b!5417074 m!6440982))

(declare-fun m!6440984 () Bool)

(assert (=> b!5417067 m!6440984))

(declare-fun m!6440986 () Bool)

(assert (=> b!5417067 m!6440986))

(declare-fun m!6440988 () Bool)

(assert (=> b!5417067 m!6440988))

(declare-fun m!6440990 () Bool)

(assert (=> b!5417067 m!6440990))

(assert (=> b!5417067 m!6440986))

(declare-fun m!6440992 () Bool)

(assert (=> b!5417067 m!6440992))

(assert (=> b!5417067 m!6440988))

(declare-fun m!6440994 () Bool)

(assert (=> b!5417067 m!6440994))

(declare-fun m!6440996 () Bool)

(assert (=> b!5417060 m!6440996))

(declare-fun m!6440998 () Bool)

(assert (=> b!5417073 m!6440998))

(declare-fun m!6441000 () Bool)

(assert (=> b!5417054 m!6441000))

(declare-fun m!6441002 () Bool)

(assert (=> b!5417049 m!6441002))

(declare-fun m!6441004 () Bool)

(assert (=> b!5417049 m!6441004))

(declare-fun m!6441006 () Bool)

(assert (=> b!5417049 m!6441006))

(declare-fun m!6441008 () Bool)

(assert (=> b!5417049 m!6441008))

(declare-fun m!6441010 () Bool)

(assert (=> b!5417049 m!6441010))

(declare-fun m!6441012 () Bool)

(assert (=> b!5417079 m!6441012))

(declare-fun m!6441014 () Bool)

(assert (=> b!5417079 m!6441014))

(declare-fun m!6441016 () Bool)

(assert (=> b!5417079 m!6441016))

(assert (=> b!5417051 m!6440998))

(declare-fun m!6441018 () Bool)

(assert (=> b!5417062 m!6441018))

(declare-fun m!6441020 () Bool)

(assert (=> setNonEmpty!35297 m!6441020))

(declare-fun m!6441022 () Bool)

(assert (=> b!5417041 m!6441022))

(declare-fun m!6441024 () Bool)

(assert (=> b!5417072 m!6441024))

(declare-fun m!6441026 () Bool)

(assert (=> b!5417072 m!6441026))

(declare-fun m!6441028 () Bool)

(assert (=> b!5417072 m!6441028))

(declare-fun m!6441030 () Bool)

(assert (=> b!5417072 m!6441030))

(declare-fun m!6441032 () Bool)

(assert (=> b!5417072 m!6441032))

(declare-fun m!6441034 () Bool)

(assert (=> b!5417072 m!6441034))

(declare-fun m!6441036 () Bool)

(assert (=> b!5417083 m!6441036))

(declare-fun m!6441038 () Bool)

(assert (=> b!5417083 m!6441038))

(declare-fun m!6441040 () Bool)

(assert (=> b!5417063 m!6441040))

(declare-fun m!6441042 () Bool)

(assert (=> b!5417077 m!6441042))

(declare-fun m!6441044 () Bool)

(assert (=> b!5417077 m!6441044))

(declare-fun m!6441046 () Bool)

(assert (=> b!5417077 m!6441046))

(declare-fun m!6441048 () Bool)

(assert (=> b!5417077 m!6441048))

(declare-fun m!6441050 () Bool)

(assert (=> b!5417077 m!6441050))

(declare-fun m!6441052 () Bool)

(assert (=> b!5417059 m!6441052))

(declare-fun m!6441054 () Bool)

(assert (=> b!5417044 m!6441054))

(declare-fun m!6441056 () Bool)

(assert (=> b!5417044 m!6441056))

(declare-fun m!6441058 () Bool)

(assert (=> b!5417044 m!6441058))

(declare-fun m!6441060 () Bool)

(assert (=> b!5417044 m!6441060))

(declare-fun m!6441062 () Bool)

(assert (=> b!5417044 m!6441062))

(declare-fun m!6441064 () Bool)

(assert (=> b!5417044 m!6441064))

(declare-fun m!6441066 () Bool)

(assert (=> b!5417044 m!6441066))

(declare-fun m!6441068 () Bool)

(assert (=> b!5417044 m!6441068))

(declare-fun m!6441070 () Bool)

(assert (=> b!5417044 m!6441070))

(declare-fun m!6441072 () Bool)

(assert (=> b!5417046 m!6441072))

(declare-fun m!6441074 () Bool)

(assert (=> b!5417055 m!6441074))

(declare-fun m!6441076 () Bool)

(assert (=> b!5417050 m!6441076))

(assert (=> b!5417050 m!6440982))

(declare-fun m!6441078 () Bool)

(assert (=> b!5417050 m!6441078))

(assert (=> b!5417053 m!6441028))

(declare-fun m!6441080 () Bool)

(assert (=> b!5417053 m!6441080))

(declare-fun m!6441082 () Bool)

(assert (=> b!5417053 m!6441082))

(declare-fun m!6441084 () Bool)

(assert (=> b!5417053 m!6441084))

(declare-fun m!6441086 () Bool)

(assert (=> b!5417053 m!6441086))

(declare-fun m!6441088 () Bool)

(assert (=> b!5417053 m!6441088))

(declare-fun m!6441090 () Bool)

(assert (=> b!5417053 m!6441090))

(declare-fun m!6441092 () Bool)

(assert (=> b!5417053 m!6441092))

(declare-fun m!6441094 () Bool)

(assert (=> b!5417053 m!6441094))

(declare-fun m!6441096 () Bool)

(assert (=> b!5417053 m!6441096))

(declare-fun m!6441098 () Bool)

(assert (=> b!5417053 m!6441098))

(assert (=> b!5417053 m!6441032))

(declare-fun m!6441100 () Bool)

(assert (=> b!5417053 m!6441100))

(declare-fun m!6441102 () Bool)

(assert (=> b!5417053 m!6441102))

(declare-fun m!6441104 () Bool)

(assert (=> b!5417053 m!6441104))

(assert (=> b!5417053 m!6441094))

(assert (=> b!5417053 m!6441028))

(declare-fun m!6441106 () Bool)

(assert (=> b!5417053 m!6441106))

(declare-fun m!6441108 () Bool)

(assert (=> b!5417053 m!6441108))

(declare-fun m!6441110 () Bool)

(assert (=> b!5417053 m!6441110))

(declare-fun m!6441112 () Bool)

(assert (=> b!5417053 m!6441112))

(declare-fun m!6441114 () Bool)

(assert (=> b!5417053 m!6441114))

(declare-fun m!6441116 () Bool)

(assert (=> b!5417053 m!6441116))

(declare-fun m!6441118 () Bool)

(assert (=> b!5417053 m!6441118))

(assert (=> b!5417053 m!6441034))

(check-sat (not b!5417063) (not b!5417082) (not b!5417073) (not b!5417068) (not b!5417059) (not b!5417049) (not b!5417065) (not start!568766) (not b!5417074) (not b!5417076) (not b!5417044) (not b!5417067) (not b!5417046) (not b!5417053) (not b!5417072) (not b!5417077) tp_is_empty!39651 (not b!5417050) (not b!5417058) (not b!5417055) (not b!5417056) (not setNonEmpty!35297) (not b!5417043) (not b!5417054) (not b!5417062) (not b!5417064) (not b!5417041) (not b!5417085) (not b!5417079) (not b!5417052) (not b!5417045) (not b!5417066) (not b!5417060) (not b!5417051) (not b!5417071) (not b!5417069) (not b!5417083) (not b!5417061))
(check-sat)
(get-model)

(declare-fun d!1728433 () Bool)

(declare-fun lt!2209204 () Regex!15199)

(assert (=> d!1728433 (validRegex!6935 lt!2209204)))

(assert (=> d!1728433 (= lt!2209204 (generalisedUnion!1128 (unfocusZipperList!641 lt!2209140)))))

(assert (=> d!1728433 (= (unfocusZipper!941 lt!2209140) lt!2209204)))

(declare-fun bs!1251395 () Bool)

(assert (= bs!1251395 d!1728433))

(declare-fun m!6441150 () Bool)

(assert (=> bs!1251395 m!6441150))

(declare-fun m!6441152 () Bool)

(assert (=> bs!1251395 m!6441152))

(assert (=> bs!1251395 m!6441152))

(declare-fun m!6441154 () Bool)

(assert (=> bs!1251395 m!6441154))

(assert (=> b!5417044 d!1728433))

(declare-fun d!1728437 () Bool)

(declare-fun choose!40985 ((InoxSet Context!9166) Int) (InoxSet Context!9166))

(assert (=> d!1728437 (= (flatMap!926 lt!2209145 lambda!283364) (choose!40985 lt!2209145 lambda!283364))))

(declare-fun bs!1251397 () Bool)

(assert (= bs!1251397 d!1728437))

(declare-fun m!6441158 () Bool)

(assert (=> bs!1251397 m!6441158))

(assert (=> b!5417044 d!1728437))

(declare-fun d!1728441 () Bool)

(declare-fun dynLambda!24342 (Int Context!9166) (InoxSet Context!9166))

(assert (=> d!1728441 (= (flatMap!926 lt!2209145 lambda!283364) (dynLambda!24342 lambda!283364 lt!2209161))))

(declare-fun lt!2209207 () Unit!154318)

(declare-fun choose!40986 ((InoxSet Context!9166) Context!9166 Int) Unit!154318)

(assert (=> d!1728441 (= lt!2209207 (choose!40986 lt!2209145 lt!2209161 lambda!283364))))

(assert (=> d!1728441 (= lt!2209145 (store ((as const (Array Context!9166 Bool)) false) lt!2209161 true))))

(assert (=> d!1728441 (= (lemmaFlatMapOnSingletonSet!458 lt!2209145 lt!2209161 lambda!283364) lt!2209207)))

(declare-fun b_lambda!206829 () Bool)

(assert (=> (not b_lambda!206829) (not d!1728441)))

(declare-fun bs!1251398 () Bool)

(assert (= bs!1251398 d!1728441))

(assert (=> bs!1251398 m!6441058))

(declare-fun m!6441160 () Bool)

(assert (=> bs!1251398 m!6441160))

(declare-fun m!6441162 () Bool)

(assert (=> bs!1251398 m!6441162))

(assert (=> bs!1251398 m!6441062))

(assert (=> b!5417044 d!1728441))

(declare-fun d!1728443 () Bool)

(assert (=> d!1728443 (= (flatMap!926 lt!2209150 lambda!283364) (dynLambda!24342 lambda!283364 lt!2209134))))

(declare-fun lt!2209208 () Unit!154318)

(assert (=> d!1728443 (= lt!2209208 (choose!40986 lt!2209150 lt!2209134 lambda!283364))))

(assert (=> d!1728443 (= lt!2209150 (store ((as const (Array Context!9166 Bool)) false) lt!2209134 true))))

(assert (=> d!1728443 (= (lemmaFlatMapOnSingletonSet!458 lt!2209150 lt!2209134 lambda!283364) lt!2209208)))

(declare-fun b_lambda!206831 () Bool)

(assert (=> (not b_lambda!206831) (not d!1728443)))

(declare-fun bs!1251399 () Bool)

(assert (= bs!1251399 d!1728443))

(assert (=> bs!1251399 m!6441054))

(declare-fun m!6441164 () Bool)

(assert (=> bs!1251399 m!6441164))

(declare-fun m!6441166 () Bool)

(assert (=> bs!1251399 m!6441166))

(assert (=> bs!1251399 m!6441056))

(assert (=> b!5417044 d!1728443))

(declare-fun d!1728445 () Bool)

(assert (=> d!1728445 (= (flatMap!926 lt!2209150 lambda!283364) (choose!40985 lt!2209150 lambda!283364))))

(declare-fun bs!1251400 () Bool)

(assert (= bs!1251400 d!1728445))

(declare-fun m!6441168 () Bool)

(assert (=> bs!1251400 m!6441168))

(assert (=> b!5417044 d!1728445))

(declare-fun call!387670 () (InoxSet Context!9166))

(declare-fun b!5417157 () Bool)

(declare-fun e!3357633 () (InoxSet Context!9166))

(assert (=> b!5417157 (= e!3357633 ((_ map or) call!387670 (derivationStepZipperUp!571 (Context!9167 (t!375120 (exprs!5083 lt!2209134))) (h!68220 s!2326))))))

(declare-fun d!1728447 () Bool)

(declare-fun c!944627 () Bool)

(declare-fun e!3357635 () Bool)

(assert (=> d!1728447 (= c!944627 e!3357635)))

(declare-fun res!2304457 () Bool)

(assert (=> d!1728447 (=> (not res!2304457) (not e!3357635))))

(assert (=> d!1728447 (= res!2304457 ((_ is Cons!61773) (exprs!5083 lt!2209134)))))

(assert (=> d!1728447 (= (derivationStepZipperUp!571 lt!2209134 (h!68220 s!2326)) e!3357633)))

(declare-fun b!5417158 () Bool)

(declare-fun e!3357634 () (InoxSet Context!9166))

(assert (=> b!5417158 (= e!3357634 call!387670)))

(declare-fun bm!387665 () Bool)

(assert (=> bm!387665 (= call!387670 (derivationStepZipperDown!647 (h!68221 (exprs!5083 lt!2209134)) (Context!9167 (t!375120 (exprs!5083 lt!2209134))) (h!68220 s!2326)))))

(declare-fun b!5417159 () Bool)

(assert (=> b!5417159 (= e!3357633 e!3357634)))

(declare-fun c!944628 () Bool)

(assert (=> b!5417159 (= c!944628 ((_ is Cons!61773) (exprs!5083 lt!2209134)))))

(declare-fun b!5417160 () Bool)

(assert (=> b!5417160 (= e!3357635 (nullable!5368 (h!68221 (exprs!5083 lt!2209134))))))

(declare-fun b!5417161 () Bool)

(assert (=> b!5417161 (= e!3357634 ((as const (Array Context!9166 Bool)) false))))

(assert (= (and d!1728447 res!2304457) b!5417160))

(assert (= (and d!1728447 c!944627) b!5417157))

(assert (= (and d!1728447 (not c!944627)) b!5417159))

(assert (= (and b!5417159 c!944628) b!5417158))

(assert (= (and b!5417159 (not c!944628)) b!5417161))

(assert (= (or b!5417157 b!5417158) bm!387665))

(declare-fun m!6441180 () Bool)

(assert (=> b!5417157 m!6441180))

(declare-fun m!6441182 () Bool)

(assert (=> bm!387665 m!6441182))

(declare-fun m!6441184 () Bool)

(assert (=> b!5417160 m!6441184))

(assert (=> b!5417044 d!1728447))

(declare-fun e!3357636 () (InoxSet Context!9166))

(declare-fun call!387671 () (InoxSet Context!9166))

(declare-fun b!5417162 () Bool)

(assert (=> b!5417162 (= e!3357636 ((_ map or) call!387671 (derivationStepZipperUp!571 (Context!9167 (t!375120 (exprs!5083 lt!2209161))) (h!68220 s!2326))))))

(declare-fun d!1728453 () Bool)

(declare-fun c!944629 () Bool)

(declare-fun e!3357638 () Bool)

(assert (=> d!1728453 (= c!944629 e!3357638)))

(declare-fun res!2304458 () Bool)

(assert (=> d!1728453 (=> (not res!2304458) (not e!3357638))))

(assert (=> d!1728453 (= res!2304458 ((_ is Cons!61773) (exprs!5083 lt!2209161)))))

(assert (=> d!1728453 (= (derivationStepZipperUp!571 lt!2209161 (h!68220 s!2326)) e!3357636)))

(declare-fun b!5417163 () Bool)

(declare-fun e!3357637 () (InoxSet Context!9166))

(assert (=> b!5417163 (= e!3357637 call!387671)))

(declare-fun bm!387666 () Bool)

(assert (=> bm!387666 (= call!387671 (derivationStepZipperDown!647 (h!68221 (exprs!5083 lt!2209161)) (Context!9167 (t!375120 (exprs!5083 lt!2209161))) (h!68220 s!2326)))))

(declare-fun b!5417164 () Bool)

(assert (=> b!5417164 (= e!3357636 e!3357637)))

(declare-fun c!944630 () Bool)

(assert (=> b!5417164 (= c!944630 ((_ is Cons!61773) (exprs!5083 lt!2209161)))))

(declare-fun b!5417165 () Bool)

(assert (=> b!5417165 (= e!3357638 (nullable!5368 (h!68221 (exprs!5083 lt!2209161))))))

(declare-fun b!5417166 () Bool)

(assert (=> b!5417166 (= e!3357637 ((as const (Array Context!9166 Bool)) false))))

(assert (= (and d!1728453 res!2304458) b!5417165))

(assert (= (and d!1728453 c!944629) b!5417162))

(assert (= (and d!1728453 (not c!944629)) b!5417164))

(assert (= (and b!5417164 c!944630) b!5417163))

(assert (= (and b!5417164 (not c!944630)) b!5417166))

(assert (= (or b!5417162 b!5417163) bm!387666))

(declare-fun m!6441186 () Bool)

(assert (=> b!5417162 m!6441186))

(declare-fun m!6441188 () Bool)

(assert (=> bm!387666 m!6441188))

(declare-fun m!6441190 () Bool)

(assert (=> b!5417165 m!6441190))

(assert (=> b!5417044 d!1728453))

(declare-fun bs!1251404 () Bool)

(declare-fun d!1728455 () Bool)

(assert (= bs!1251404 (and d!1728455 b!5417072)))

(declare-fun lambda!283385 () Int)

(assert (=> bs!1251404 (= lambda!283385 lambda!283366)))

(declare-fun b!5417217 () Bool)

(declare-fun e!3357669 () Bool)

(declare-fun e!3357668 () Bool)

(assert (=> b!5417217 (= e!3357669 e!3357668)))

(declare-fun c!944652 () Bool)

(declare-fun tail!10718 (List!61897) List!61897)

(assert (=> b!5417217 (= c!944652 (isEmpty!33768 (tail!10718 (unfocusZipperList!641 zl!343))))))

(declare-fun b!5417218 () Bool)

(declare-fun lt!2209214 () Regex!15199)

(declare-fun head!11621 (List!61897) Regex!15199)

(assert (=> b!5417218 (= e!3357668 (= lt!2209214 (head!11621 (unfocusZipperList!641 zl!343))))))

(declare-fun b!5417219 () Bool)

(declare-fun e!3357667 () Regex!15199)

(declare-fun e!3357672 () Regex!15199)

(assert (=> b!5417219 (= e!3357667 e!3357672)))

(declare-fun c!944650 () Bool)

(assert (=> b!5417219 (= c!944650 ((_ is Cons!61773) (unfocusZipperList!641 zl!343)))))

(declare-fun b!5417220 () Bool)

(assert (=> b!5417220 (= e!3357672 EmptyLang!15199)))

(declare-fun b!5417221 () Bool)

(assert (=> b!5417221 (= e!3357667 (h!68221 (unfocusZipperList!641 zl!343)))))

(declare-fun b!5417222 () Bool)

(declare-fun isEmptyLang!993 (Regex!15199) Bool)

(assert (=> b!5417222 (= e!3357669 (isEmptyLang!993 lt!2209214))))

(declare-fun e!3357670 () Bool)

(assert (=> d!1728455 e!3357670))

(declare-fun res!2304475 () Bool)

(assert (=> d!1728455 (=> (not res!2304475) (not e!3357670))))

(assert (=> d!1728455 (= res!2304475 (validRegex!6935 lt!2209214))))

(assert (=> d!1728455 (= lt!2209214 e!3357667)))

(declare-fun c!944649 () Bool)

(declare-fun e!3357671 () Bool)

(assert (=> d!1728455 (= c!944649 e!3357671)))

(declare-fun res!2304476 () Bool)

(assert (=> d!1728455 (=> (not res!2304476) (not e!3357671))))

(assert (=> d!1728455 (= res!2304476 ((_ is Cons!61773) (unfocusZipperList!641 zl!343)))))

(declare-fun forall!14545 (List!61897 Int) Bool)

(assert (=> d!1728455 (forall!14545 (unfocusZipperList!641 zl!343) lambda!283385)))

(assert (=> d!1728455 (= (generalisedUnion!1128 (unfocusZipperList!641 zl!343)) lt!2209214)))

(declare-fun b!5417223 () Bool)

(assert (=> b!5417223 (= e!3357671 (isEmpty!33768 (t!375120 (unfocusZipperList!641 zl!343))))))

(declare-fun b!5417224 () Bool)

(declare-fun isUnion!425 (Regex!15199) Bool)

(assert (=> b!5417224 (= e!3357668 (isUnion!425 lt!2209214))))

(declare-fun b!5417225 () Bool)

(assert (=> b!5417225 (= e!3357672 (Union!15199 (h!68221 (unfocusZipperList!641 zl!343)) (generalisedUnion!1128 (t!375120 (unfocusZipperList!641 zl!343)))))))

(declare-fun b!5417226 () Bool)

(assert (=> b!5417226 (= e!3357670 e!3357669)))

(declare-fun c!944651 () Bool)

(assert (=> b!5417226 (= c!944651 (isEmpty!33768 (unfocusZipperList!641 zl!343)))))

(assert (= (and d!1728455 res!2304476) b!5417223))

(assert (= (and d!1728455 c!944649) b!5417221))

(assert (= (and d!1728455 (not c!944649)) b!5417219))

(assert (= (and b!5417219 c!944650) b!5417225))

(assert (= (and b!5417219 (not c!944650)) b!5417220))

(assert (= (and d!1728455 res!2304475) b!5417226))

(assert (= (and b!5417226 c!944651) b!5417222))

(assert (= (and b!5417226 (not c!944651)) b!5417217))

(assert (= (and b!5417217 c!944652) b!5417218))

(assert (= (and b!5417217 (not c!944652)) b!5417224))

(declare-fun m!6441194 () Bool)

(assert (=> b!5417222 m!6441194))

(assert (=> b!5417226 m!6440948))

(declare-fun m!6441196 () Bool)

(assert (=> b!5417226 m!6441196))

(assert (=> b!5417217 m!6440948))

(declare-fun m!6441198 () Bool)

(assert (=> b!5417217 m!6441198))

(assert (=> b!5417217 m!6441198))

(declare-fun m!6441200 () Bool)

(assert (=> b!5417217 m!6441200))

(declare-fun m!6441202 () Bool)

(assert (=> b!5417223 m!6441202))

(declare-fun m!6441204 () Bool)

(assert (=> b!5417225 m!6441204))

(assert (=> b!5417218 m!6440948))

(declare-fun m!6441206 () Bool)

(assert (=> b!5417218 m!6441206))

(declare-fun m!6441208 () Bool)

(assert (=> b!5417224 m!6441208))

(declare-fun m!6441210 () Bool)

(assert (=> d!1728455 m!6441210))

(assert (=> d!1728455 m!6440948))

(declare-fun m!6441212 () Bool)

(assert (=> d!1728455 m!6441212))

(assert (=> b!5417068 d!1728455))

(declare-fun bs!1251405 () Bool)

(declare-fun d!1728459 () Bool)

(assert (= bs!1251405 (and d!1728459 b!5417072)))

(declare-fun lambda!283390 () Int)

(assert (=> bs!1251405 (= lambda!283390 lambda!283366)))

(declare-fun bs!1251406 () Bool)

(assert (= bs!1251406 (and d!1728459 d!1728455)))

(assert (=> bs!1251406 (= lambda!283390 lambda!283385)))

(declare-fun lt!2209217 () List!61897)

(assert (=> d!1728459 (forall!14545 lt!2209217 lambda!283390)))

(declare-fun e!3357677 () List!61897)

(assert (=> d!1728459 (= lt!2209217 e!3357677)))

(declare-fun c!944655 () Bool)

(assert (=> d!1728459 (= c!944655 ((_ is Cons!61774) zl!343))))

(assert (=> d!1728459 (= (unfocusZipperList!641 zl!343) lt!2209217)))

(declare-fun b!5417235 () Bool)

(assert (=> b!5417235 (= e!3357677 (Cons!61773 (generalisedConcat!868 (exprs!5083 (h!68222 zl!343))) (unfocusZipperList!641 (t!375121 zl!343))))))

(declare-fun b!5417236 () Bool)

(assert (=> b!5417236 (= e!3357677 Nil!61773)))

(assert (= (and d!1728459 c!944655) b!5417235))

(assert (= (and d!1728459 (not c!944655)) b!5417236))

(declare-fun m!6441214 () Bool)

(assert (=> d!1728459 m!6441214))

(assert (=> b!5417235 m!6440958))

(declare-fun m!6441216 () Bool)

(assert (=> b!5417235 m!6441216))

(assert (=> b!5417068 d!1728459))

(declare-fun d!1728461 () Bool)

(declare-fun lt!2209218 () Regex!15199)

(assert (=> d!1728461 (validRegex!6935 lt!2209218)))

(assert (=> d!1728461 (= lt!2209218 (generalisedUnion!1128 (unfocusZipperList!641 lt!2209155)))))

(assert (=> d!1728461 (= (unfocusZipper!941 lt!2209155) lt!2209218)))

(declare-fun bs!1251407 () Bool)

(assert (= bs!1251407 d!1728461))

(declare-fun m!6441218 () Bool)

(assert (=> bs!1251407 m!6441218))

(declare-fun m!6441220 () Bool)

(assert (=> bs!1251407 m!6441220))

(assert (=> bs!1251407 m!6441220))

(declare-fun m!6441222 () Bool)

(assert (=> bs!1251407 m!6441222))

(assert (=> b!5417046 d!1728461))

(declare-fun b!5417294 () Bool)

(declare-fun e!3357709 () Bool)

(declare-fun lt!2209228 () Option!15310)

(assert (=> b!5417294 (= e!3357709 (= (++!13572 (_1!35701 (get!21301 lt!2209228)) (_2!35701 (get!21301 lt!2209228))) s!2326))))

(declare-fun b!5417295 () Bool)

(declare-fun e!3357712 () Bool)

(assert (=> b!5417295 (= e!3357712 (matchR!7384 (regTwo!30910 r!7292) s!2326))))

(declare-fun b!5417297 () Bool)

(declare-fun lt!2209229 () Unit!154318)

(declare-fun lt!2209227 () Unit!154318)

(assert (=> b!5417297 (= lt!2209229 lt!2209227)))

(assert (=> b!5417297 (= (++!13572 (++!13572 Nil!61772 (Cons!61772 (h!68220 s!2326) Nil!61772)) (t!375119 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1846 (List!61896 C!30668 List!61896 List!61896) Unit!154318)

(assert (=> b!5417297 (= lt!2209227 (lemmaMoveElementToOtherListKeepsConcatEq!1846 Nil!61772 (h!68220 s!2326) (t!375119 s!2326) s!2326))))

(declare-fun e!3357713 () Option!15310)

(assert (=> b!5417297 (= e!3357713 (findConcatSeparation!1724 (regOne!30910 r!7292) (regTwo!30910 r!7292) (++!13572 Nil!61772 (Cons!61772 (h!68220 s!2326) Nil!61772)) (t!375119 s!2326) s!2326))))

(declare-fun b!5417298 () Bool)

(declare-fun res!2304512 () Bool)

(assert (=> b!5417298 (=> (not res!2304512) (not e!3357709))))

(assert (=> b!5417298 (= res!2304512 (matchR!7384 (regTwo!30910 r!7292) (_2!35701 (get!21301 lt!2209228))))))

(declare-fun b!5417299 () Bool)

(declare-fun res!2304510 () Bool)

(assert (=> b!5417299 (=> (not res!2304510) (not e!3357709))))

(assert (=> b!5417299 (= res!2304510 (matchR!7384 (regOne!30910 r!7292) (_1!35701 (get!21301 lt!2209228))))))

(declare-fun b!5417300 () Bool)

(declare-fun e!3357711 () Option!15310)

(assert (=> b!5417300 (= e!3357711 e!3357713)))

(declare-fun c!944671 () Bool)

(assert (=> b!5417300 (= c!944671 ((_ is Nil!61772) s!2326))))

(declare-fun b!5417301 () Bool)

(assert (=> b!5417301 (= e!3357711 (Some!15309 (tuple2!64797 Nil!61772 s!2326)))))

(declare-fun b!5417302 () Bool)

(declare-fun e!3357710 () Bool)

(assert (=> b!5417302 (= e!3357710 (not (isDefined!12013 lt!2209228)))))

(declare-fun d!1728463 () Bool)

(assert (=> d!1728463 e!3357710))

(declare-fun res!2304513 () Bool)

(assert (=> d!1728463 (=> res!2304513 e!3357710)))

(assert (=> d!1728463 (= res!2304513 e!3357709)))

(declare-fun res!2304511 () Bool)

(assert (=> d!1728463 (=> (not res!2304511) (not e!3357709))))

(assert (=> d!1728463 (= res!2304511 (isDefined!12013 lt!2209228))))

(assert (=> d!1728463 (= lt!2209228 e!3357711)))

(declare-fun c!944670 () Bool)

(assert (=> d!1728463 (= c!944670 e!3357712)))

(declare-fun res!2304514 () Bool)

(assert (=> d!1728463 (=> (not res!2304514) (not e!3357712))))

(assert (=> d!1728463 (= res!2304514 (matchR!7384 (regOne!30910 r!7292) Nil!61772))))

(assert (=> d!1728463 (validRegex!6935 (regOne!30910 r!7292))))

(assert (=> d!1728463 (= (findConcatSeparation!1724 (regOne!30910 r!7292) (regTwo!30910 r!7292) Nil!61772 s!2326 s!2326) lt!2209228)))

(declare-fun b!5417296 () Bool)

(assert (=> b!5417296 (= e!3357713 None!15309)))

(assert (= (and d!1728463 res!2304514) b!5417295))

(assert (= (and d!1728463 c!944670) b!5417301))

(assert (= (and d!1728463 (not c!944670)) b!5417300))

(assert (= (and b!5417300 c!944671) b!5417296))

(assert (= (and b!5417300 (not c!944671)) b!5417297))

(assert (= (and d!1728463 res!2304511) b!5417299))

(assert (= (and b!5417299 res!2304510) b!5417298))

(assert (= (and b!5417298 res!2304512) b!5417294))

(assert (= (and d!1728463 (not res!2304513)) b!5417302))

(declare-fun m!6441232 () Bool)

(assert (=> b!5417298 m!6441232))

(declare-fun m!6441234 () Bool)

(assert (=> b!5417298 m!6441234))

(declare-fun m!6441236 () Bool)

(assert (=> d!1728463 m!6441236))

(declare-fun m!6441238 () Bool)

(assert (=> d!1728463 m!6441238))

(declare-fun m!6441240 () Bool)

(assert (=> d!1728463 m!6441240))

(declare-fun m!6441242 () Bool)

(assert (=> b!5417295 m!6441242))

(assert (=> b!5417294 m!6441232))

(declare-fun m!6441244 () Bool)

(assert (=> b!5417294 m!6441244))

(assert (=> b!5417299 m!6441232))

(declare-fun m!6441246 () Bool)

(assert (=> b!5417299 m!6441246))

(assert (=> b!5417302 m!6441236))

(declare-fun m!6441248 () Bool)

(assert (=> b!5417297 m!6441248))

(assert (=> b!5417297 m!6441248))

(declare-fun m!6441250 () Bool)

(assert (=> b!5417297 m!6441250))

(declare-fun m!6441252 () Bool)

(assert (=> b!5417297 m!6441252))

(assert (=> b!5417297 m!6441248))

(declare-fun m!6441254 () Bool)

(assert (=> b!5417297 m!6441254))

(assert (=> b!5417067 d!1728463))

(declare-fun d!1728467 () Bool)

(declare-fun choose!40988 (Int) Bool)

(assert (=> d!1728467 (= (Exists!2380 lambda!283363) (choose!40988 lambda!283363))))

(declare-fun bs!1251415 () Bool)

(assert (= bs!1251415 d!1728467))

(declare-fun m!6441256 () Bool)

(assert (=> bs!1251415 m!6441256))

(assert (=> b!5417067 d!1728467))

(declare-fun d!1728469 () Bool)

(assert (=> d!1728469 (= (Exists!2380 lambda!283362) (choose!40988 lambda!283362))))

(declare-fun bs!1251416 () Bool)

(assert (= bs!1251416 d!1728469))

(declare-fun m!6441258 () Bool)

(assert (=> bs!1251416 m!6441258))

(assert (=> b!5417067 d!1728469))

(declare-fun bs!1251427 () Bool)

(declare-fun d!1728471 () Bool)

(assert (= bs!1251427 (and d!1728471 b!5417058)))

(declare-fun lambda!283399 () Int)

(assert (=> bs!1251427 (not (= lambda!283399 lambda!283371))))

(assert (=> bs!1251427 (not (= lambda!283399 lambda!283370))))

(declare-fun bs!1251428 () Bool)

(assert (= bs!1251428 (and d!1728471 b!5417053)))

(assert (=> bs!1251428 (= (= (regOne!30910 r!7292) lt!2209142) (= lambda!283399 lambda!283367))))

(assert (=> bs!1251428 (not (= lambda!283399 lambda!283368))))

(declare-fun bs!1251429 () Bool)

(assert (= bs!1251429 (and d!1728471 b!5417067)))

(assert (=> bs!1251429 (not (= lambda!283399 lambda!283363))))

(assert (=> bs!1251429 (= lambda!283399 lambda!283362)))

(assert (=> bs!1251427 (= (and (= s!2326 (_1!35701 lt!2209169)) (= (regOne!30910 r!7292) (reg!15528 (regOne!30910 r!7292))) (= (regTwo!30910 r!7292) lt!2209136)) (= lambda!283399 lambda!283369))))

(assert (=> d!1728471 true))

(assert (=> d!1728471 true))

(assert (=> d!1728471 true))

(assert (=> d!1728471 (= (isDefined!12013 (findConcatSeparation!1724 (regOne!30910 r!7292) (regTwo!30910 r!7292) Nil!61772 s!2326 s!2326)) (Exists!2380 lambda!283399))))

(declare-fun lt!2209236 () Unit!154318)

(declare-fun choose!40989 (Regex!15199 Regex!15199 List!61896) Unit!154318)

(assert (=> d!1728471 (= lt!2209236 (choose!40989 (regOne!30910 r!7292) (regTwo!30910 r!7292) s!2326))))

(assert (=> d!1728471 (validRegex!6935 (regOne!30910 r!7292))))

(assert (=> d!1728471 (= (lemmaFindConcatSeparationEquivalentToExists!1488 (regOne!30910 r!7292) (regTwo!30910 r!7292) s!2326) lt!2209236)))

(declare-fun bs!1251433 () Bool)

(assert (= bs!1251433 d!1728471))

(declare-fun m!6441278 () Bool)

(assert (=> bs!1251433 m!6441278))

(assert (=> bs!1251433 m!6440988))

(assert (=> bs!1251433 m!6440990))

(assert (=> bs!1251433 m!6440988))

(assert (=> bs!1251433 m!6441240))

(declare-fun m!6441280 () Bool)

(assert (=> bs!1251433 m!6441280))

(assert (=> b!5417067 d!1728471))

(declare-fun bs!1251444 () Bool)

(declare-fun d!1728479 () Bool)

(assert (= bs!1251444 (and d!1728479 b!5417058)))

(declare-fun lambda!283405 () Int)

(assert (=> bs!1251444 (not (= lambda!283405 lambda!283371))))

(declare-fun bs!1251445 () Bool)

(assert (= bs!1251445 (and d!1728479 b!5417053)))

(assert (=> bs!1251445 (= (= (regOne!30910 r!7292) lt!2209142) (= lambda!283405 lambda!283367))))

(assert (=> bs!1251445 (not (= lambda!283405 lambda!283368))))

(declare-fun bs!1251446 () Bool)

(assert (= bs!1251446 (and d!1728479 b!5417067)))

(assert (=> bs!1251446 (not (= lambda!283405 lambda!283363))))

(assert (=> bs!1251446 (= lambda!283405 lambda!283362)))

(assert (=> bs!1251444 (= (and (= s!2326 (_1!35701 lt!2209169)) (= (regOne!30910 r!7292) (reg!15528 (regOne!30910 r!7292))) (= (regTwo!30910 r!7292) lt!2209136)) (= lambda!283405 lambda!283369))))

(assert (=> bs!1251444 (not (= lambda!283405 lambda!283370))))

(declare-fun bs!1251447 () Bool)

(assert (= bs!1251447 (and d!1728479 d!1728471)))

(assert (=> bs!1251447 (= lambda!283405 lambda!283399)))

(assert (=> d!1728479 true))

(assert (=> d!1728479 true))

(assert (=> d!1728479 true))

(declare-fun lambda!283406 () Int)

(assert (=> bs!1251444 (not (= lambda!283406 lambda!283371))))

(declare-fun bs!1251448 () Bool)

(assert (= bs!1251448 d!1728479))

(assert (=> bs!1251448 (not (= lambda!283406 lambda!283405))))

(assert (=> bs!1251445 (not (= lambda!283406 lambda!283367))))

(assert (=> bs!1251445 (= (= (regOne!30910 r!7292) lt!2209142) (= lambda!283406 lambda!283368))))

(assert (=> bs!1251446 (= lambda!283406 lambda!283363)))

(assert (=> bs!1251446 (not (= lambda!283406 lambda!283362))))

(assert (=> bs!1251444 (not (= lambda!283406 lambda!283369))))

(assert (=> bs!1251444 (= (and (= s!2326 (_1!35701 lt!2209169)) (= (regOne!30910 r!7292) (reg!15528 (regOne!30910 r!7292))) (= (regTwo!30910 r!7292) lt!2209136)) (= lambda!283406 lambda!283370))))

(assert (=> bs!1251447 (not (= lambda!283406 lambda!283399))))

(assert (=> d!1728479 true))

(assert (=> d!1728479 true))

(assert (=> d!1728479 true))

(assert (=> d!1728479 (= (Exists!2380 lambda!283405) (Exists!2380 lambda!283406))))

(declare-fun lt!2209244 () Unit!154318)

(declare-fun choose!40990 (Regex!15199 Regex!15199 List!61896) Unit!154318)

(assert (=> d!1728479 (= lt!2209244 (choose!40990 (regOne!30910 r!7292) (regTwo!30910 r!7292) s!2326))))

(assert (=> d!1728479 (validRegex!6935 (regOne!30910 r!7292))))

(assert (=> d!1728479 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1034 (regOne!30910 r!7292) (regTwo!30910 r!7292) s!2326) lt!2209244)))

(declare-fun m!6441328 () Bool)

(assert (=> bs!1251448 m!6441328))

(declare-fun m!6441330 () Bool)

(assert (=> bs!1251448 m!6441330))

(declare-fun m!6441332 () Bool)

(assert (=> bs!1251448 m!6441332))

(assert (=> bs!1251448 m!6441240))

(assert (=> b!5417067 d!1728479))

(declare-fun d!1728505 () Bool)

(declare-fun isEmpty!33771 (Option!15310) Bool)

(assert (=> d!1728505 (= (isDefined!12013 (findConcatSeparation!1724 (regOne!30910 r!7292) (regTwo!30910 r!7292) Nil!61772 s!2326 s!2326)) (not (isEmpty!33771 (findConcatSeparation!1724 (regOne!30910 r!7292) (regTwo!30910 r!7292) Nil!61772 s!2326 s!2326))))))

(declare-fun bs!1251449 () Bool)

(assert (= bs!1251449 d!1728505))

(assert (=> bs!1251449 m!6440988))

(declare-fun m!6441334 () Bool)

(assert (=> bs!1251449 m!6441334))

(assert (=> b!5417067 d!1728505))

(declare-fun d!1728507 () Bool)

(declare-fun c!944692 () Bool)

(declare-fun isEmpty!33772 (List!61896) Bool)

(assert (=> d!1728507 (= c!944692 (isEmpty!33772 s!2326))))

(declare-fun e!3357755 () Bool)

(assert (=> d!1728507 (= (matchZipper!1443 z!1189 s!2326) e!3357755)))

(declare-fun b!5417378 () Bool)

(declare-fun nullableZipper!1451 ((InoxSet Context!9166)) Bool)

(assert (=> b!5417378 (= e!3357755 (nullableZipper!1451 z!1189))))

(declare-fun b!5417379 () Bool)

(declare-fun head!11622 (List!61896) C!30668)

(declare-fun tail!10719 (List!61896) List!61896)

(assert (=> b!5417379 (= e!3357755 (matchZipper!1443 (derivationStepZipper!1438 z!1189 (head!11622 s!2326)) (tail!10719 s!2326)))))

(assert (= (and d!1728507 c!944692) b!5417378))

(assert (= (and d!1728507 (not c!944692)) b!5417379))

(declare-fun m!6441336 () Bool)

(assert (=> d!1728507 m!6441336))

(declare-fun m!6441338 () Bool)

(assert (=> b!5417378 m!6441338))

(declare-fun m!6441340 () Bool)

(assert (=> b!5417379 m!6441340))

(assert (=> b!5417379 m!6441340))

(declare-fun m!6441342 () Bool)

(assert (=> b!5417379 m!6441342))

(declare-fun m!6441344 () Bool)

(assert (=> b!5417379 m!6441344))

(assert (=> b!5417379 m!6441342))

(assert (=> b!5417379 m!6441344))

(declare-fun m!6441346 () Bool)

(assert (=> b!5417379 m!6441346))

(assert (=> b!5417045 d!1728507))

(declare-fun d!1728509 () Bool)

(declare-fun e!3357767 () Bool)

(assert (=> d!1728509 (= (matchZipper!1443 ((_ map or) lt!2209164 lt!2209144) (t!375119 s!2326)) e!3357767)))

(declare-fun res!2304565 () Bool)

(assert (=> d!1728509 (=> res!2304565 e!3357767)))

(assert (=> d!1728509 (= res!2304565 (matchZipper!1443 lt!2209164 (t!375119 s!2326)))))

(declare-fun lt!2209256 () Unit!154318)

(declare-fun choose!40991 ((InoxSet Context!9166) (InoxSet Context!9166) List!61896) Unit!154318)

(assert (=> d!1728509 (= lt!2209256 (choose!40991 lt!2209164 lt!2209144 (t!375119 s!2326)))))

(assert (=> d!1728509 (= (lemmaZipperConcatMatchesSameAsBothZippers!436 lt!2209164 lt!2209144 (t!375119 s!2326)) lt!2209256)))

(declare-fun b!5417399 () Bool)

(assert (=> b!5417399 (= e!3357767 (matchZipper!1443 lt!2209144 (t!375119 s!2326)))))

(assert (= (and d!1728509 (not res!2304565)) b!5417399))

(assert (=> d!1728509 m!6441078))

(assert (=> d!1728509 m!6440982))

(declare-fun m!6441348 () Bool)

(assert (=> d!1728509 m!6441348))

(assert (=> b!5417399 m!6440998))

(assert (=> b!5417050 d!1728509))

(declare-fun d!1728511 () Bool)

(declare-fun c!944695 () Bool)

(assert (=> d!1728511 (= c!944695 (isEmpty!33772 (t!375119 s!2326)))))

(declare-fun e!3357768 () Bool)

(assert (=> d!1728511 (= (matchZipper!1443 lt!2209164 (t!375119 s!2326)) e!3357768)))

(declare-fun b!5417400 () Bool)

(assert (=> b!5417400 (= e!3357768 (nullableZipper!1451 lt!2209164))))

(declare-fun b!5417401 () Bool)

(assert (=> b!5417401 (= e!3357768 (matchZipper!1443 (derivationStepZipper!1438 lt!2209164 (head!11622 (t!375119 s!2326))) (tail!10719 (t!375119 s!2326))))))

(assert (= (and d!1728511 c!944695) b!5417400))

(assert (= (and d!1728511 (not c!944695)) b!5417401))

(declare-fun m!6441350 () Bool)

(assert (=> d!1728511 m!6441350))

(declare-fun m!6441352 () Bool)

(assert (=> b!5417400 m!6441352))

(declare-fun m!6441354 () Bool)

(assert (=> b!5417401 m!6441354))

(assert (=> b!5417401 m!6441354))

(declare-fun m!6441356 () Bool)

(assert (=> b!5417401 m!6441356))

(declare-fun m!6441358 () Bool)

(assert (=> b!5417401 m!6441358))

(assert (=> b!5417401 m!6441356))

(assert (=> b!5417401 m!6441358))

(declare-fun m!6441360 () Bool)

(assert (=> b!5417401 m!6441360))

(assert (=> b!5417050 d!1728511))

(declare-fun d!1728513 () Bool)

(declare-fun c!944696 () Bool)

(assert (=> d!1728513 (= c!944696 (isEmpty!33772 (t!375119 s!2326)))))

(declare-fun e!3357769 () Bool)

(assert (=> d!1728513 (= (matchZipper!1443 ((_ map or) lt!2209164 lt!2209144) (t!375119 s!2326)) e!3357769)))

(declare-fun b!5417402 () Bool)

(assert (=> b!5417402 (= e!3357769 (nullableZipper!1451 ((_ map or) lt!2209164 lt!2209144)))))

(declare-fun b!5417403 () Bool)

(assert (=> b!5417403 (= e!3357769 (matchZipper!1443 (derivationStepZipper!1438 ((_ map or) lt!2209164 lt!2209144) (head!11622 (t!375119 s!2326))) (tail!10719 (t!375119 s!2326))))))

(assert (= (and d!1728513 c!944696) b!5417402))

(assert (= (and d!1728513 (not c!944696)) b!5417403))

(assert (=> d!1728513 m!6441350))

(declare-fun m!6441362 () Bool)

(assert (=> b!5417402 m!6441362))

(assert (=> b!5417403 m!6441354))

(assert (=> b!5417403 m!6441354))

(declare-fun m!6441366 () Bool)

(assert (=> b!5417403 m!6441366))

(assert (=> b!5417403 m!6441358))

(assert (=> b!5417403 m!6441366))

(assert (=> b!5417403 m!6441358))

(declare-fun m!6441374 () Bool)

(assert (=> b!5417403 m!6441374))

(assert (=> b!5417050 d!1728513))

(declare-fun d!1728515 () Bool)

(assert (=> d!1728515 (= (isEmpty!33769 (t!375121 zl!343)) ((_ is Nil!61774) (t!375121 zl!343)))))

(assert (=> b!5417071 d!1728515))

(declare-fun b!5417434 () Bool)

(declare-fun e!3357795 () Bool)

(declare-fun call!387694 () Bool)

(assert (=> b!5417434 (= e!3357795 call!387694)))

(declare-fun bm!387687 () Bool)

(declare-fun call!387693 () Bool)

(declare-fun c!944704 () Bool)

(assert (=> bm!387687 (= call!387693 (validRegex!6935 (ite c!944704 (regOne!30911 r!7292) (regOne!30910 r!7292))))))

(declare-fun b!5417435 () Bool)

(declare-fun e!3357791 () Bool)

(declare-fun call!387692 () Bool)

(assert (=> b!5417435 (= e!3357791 call!387692)))

(declare-fun b!5417436 () Bool)

(declare-fun e!3357796 () Bool)

(declare-fun e!3357794 () Bool)

(assert (=> b!5417436 (= e!3357796 e!3357794)))

(assert (=> b!5417436 (= c!944704 ((_ is Union!15199) r!7292))))

(declare-fun bm!387688 () Bool)

(assert (=> bm!387688 (= call!387694 call!387692)))

(declare-fun b!5417437 () Bool)

(declare-fun e!3357792 () Bool)

(assert (=> b!5417437 (= e!3357792 call!387694)))

(declare-fun b!5417438 () Bool)

(declare-fun res!2304583 () Bool)

(assert (=> b!5417438 (=> (not res!2304583) (not e!3357792))))

(assert (=> b!5417438 (= res!2304583 call!387693)))

(assert (=> b!5417438 (= e!3357794 e!3357792)))

(declare-fun b!5417439 () Bool)

(declare-fun e!3357793 () Bool)

(assert (=> b!5417439 (= e!3357793 e!3357796)))

(declare-fun c!944705 () Bool)

(assert (=> b!5417439 (= c!944705 ((_ is Star!15199) r!7292))))

(declare-fun d!1728519 () Bool)

(declare-fun res!2304585 () Bool)

(assert (=> d!1728519 (=> res!2304585 e!3357793)))

(assert (=> d!1728519 (= res!2304585 ((_ is ElementMatch!15199) r!7292))))

(assert (=> d!1728519 (= (validRegex!6935 r!7292) e!3357793)))

(declare-fun b!5417440 () Bool)

(declare-fun res!2304586 () Bool)

(declare-fun e!3357790 () Bool)

(assert (=> b!5417440 (=> res!2304586 e!3357790)))

(assert (=> b!5417440 (= res!2304586 (not ((_ is Concat!24044) r!7292)))))

(assert (=> b!5417440 (= e!3357794 e!3357790)))

(declare-fun bm!387689 () Bool)

(assert (=> bm!387689 (= call!387692 (validRegex!6935 (ite c!944705 (reg!15528 r!7292) (ite c!944704 (regTwo!30911 r!7292) (regTwo!30910 r!7292)))))))

(declare-fun b!5417441 () Bool)

(assert (=> b!5417441 (= e!3357790 e!3357795)))

(declare-fun res!2304584 () Bool)

(assert (=> b!5417441 (=> (not res!2304584) (not e!3357795))))

(assert (=> b!5417441 (= res!2304584 call!387693)))

(declare-fun b!5417442 () Bool)

(assert (=> b!5417442 (= e!3357796 e!3357791)))

(declare-fun res!2304582 () Bool)

(assert (=> b!5417442 (= res!2304582 (not (nullable!5368 (reg!15528 r!7292))))))

(assert (=> b!5417442 (=> (not res!2304582) (not e!3357791))))

(assert (= (and d!1728519 (not res!2304585)) b!5417439))

(assert (= (and b!5417439 c!944705) b!5417442))

(assert (= (and b!5417439 (not c!944705)) b!5417436))

(assert (= (and b!5417442 res!2304582) b!5417435))

(assert (= (and b!5417436 c!944704) b!5417438))

(assert (= (and b!5417436 (not c!944704)) b!5417440))

(assert (= (and b!5417438 res!2304583) b!5417437))

(assert (= (and b!5417440 (not res!2304586)) b!5417441))

(assert (= (and b!5417441 res!2304584) b!5417434))

(assert (= (or b!5417437 b!5417434) bm!387688))

(assert (= (or b!5417438 b!5417441) bm!387687))

(assert (= (or b!5417435 bm!387688) bm!387689))

(declare-fun m!6441408 () Bool)

(assert (=> bm!387687 m!6441408))

(declare-fun m!6441410 () Bool)

(assert (=> bm!387689 m!6441410))

(declare-fun m!6441412 () Bool)

(assert (=> b!5417442 m!6441412))

(assert (=> start!568766 d!1728519))

(declare-fun d!1728527 () Bool)

(assert (=> d!1728527 (= (flatMap!926 lt!2209159 lambda!283364) (choose!40985 lt!2209159 lambda!283364))))

(declare-fun bs!1251451 () Bool)

(assert (= bs!1251451 d!1728527))

(declare-fun m!6441414 () Bool)

(assert (=> bs!1251451 m!6441414))

(assert (=> b!5417049 d!1728527))

(declare-fun call!387695 () (InoxSet Context!9166))

(declare-fun e!3357797 () (InoxSet Context!9166))

(declare-fun b!5417443 () Bool)

(assert (=> b!5417443 (= e!3357797 ((_ map or) call!387695 (derivationStepZipperUp!571 (Context!9167 (t!375120 (exprs!5083 lt!2209187))) (h!68220 s!2326))))))

(declare-fun d!1728529 () Bool)

(declare-fun c!944706 () Bool)

(declare-fun e!3357799 () Bool)

(assert (=> d!1728529 (= c!944706 e!3357799)))

(declare-fun res!2304587 () Bool)

(assert (=> d!1728529 (=> (not res!2304587) (not e!3357799))))

(assert (=> d!1728529 (= res!2304587 ((_ is Cons!61773) (exprs!5083 lt!2209187)))))

(assert (=> d!1728529 (= (derivationStepZipperUp!571 lt!2209187 (h!68220 s!2326)) e!3357797)))

(declare-fun b!5417444 () Bool)

(declare-fun e!3357798 () (InoxSet Context!9166))

(assert (=> b!5417444 (= e!3357798 call!387695)))

(declare-fun bm!387690 () Bool)

(assert (=> bm!387690 (= call!387695 (derivationStepZipperDown!647 (h!68221 (exprs!5083 lt!2209187)) (Context!9167 (t!375120 (exprs!5083 lt!2209187))) (h!68220 s!2326)))))

(declare-fun b!5417445 () Bool)

(assert (=> b!5417445 (= e!3357797 e!3357798)))

(declare-fun c!944707 () Bool)

(assert (=> b!5417445 (= c!944707 ((_ is Cons!61773) (exprs!5083 lt!2209187)))))

(declare-fun b!5417446 () Bool)

(assert (=> b!5417446 (= e!3357799 (nullable!5368 (h!68221 (exprs!5083 lt!2209187))))))

(declare-fun b!5417447 () Bool)

(assert (=> b!5417447 (= e!3357798 ((as const (Array Context!9166 Bool)) false))))

(assert (= (and d!1728529 res!2304587) b!5417446))

(assert (= (and d!1728529 c!944706) b!5417443))

(assert (= (and d!1728529 (not c!944706)) b!5417445))

(assert (= (and b!5417445 c!944707) b!5417444))

(assert (= (and b!5417445 (not c!944707)) b!5417447))

(assert (= (or b!5417443 b!5417444) bm!387690))

(declare-fun m!6441416 () Bool)

(assert (=> b!5417443 m!6441416))

(declare-fun m!6441418 () Bool)

(assert (=> bm!387690 m!6441418))

(declare-fun m!6441420 () Bool)

(assert (=> b!5417446 m!6441420))

(assert (=> b!5417049 d!1728529))

(declare-fun d!1728531 () Bool)

(assert (=> d!1728531 (= (flatMap!926 lt!2209159 lambda!283364) (dynLambda!24342 lambda!283364 lt!2209187))))

(declare-fun lt!2209260 () Unit!154318)

(assert (=> d!1728531 (= lt!2209260 (choose!40986 lt!2209159 lt!2209187 lambda!283364))))

(assert (=> d!1728531 (= lt!2209159 (store ((as const (Array Context!9166 Bool)) false) lt!2209187 true))))

(assert (=> d!1728531 (= (lemmaFlatMapOnSingletonSet!458 lt!2209159 lt!2209187 lambda!283364) lt!2209260)))

(declare-fun b_lambda!206839 () Bool)

(assert (=> (not b_lambda!206839) (not d!1728531)))

(declare-fun bs!1251452 () Bool)

(assert (= bs!1251452 d!1728531))

(assert (=> bs!1251452 m!6441008))

(declare-fun m!6441422 () Bool)

(assert (=> bs!1251452 m!6441422))

(declare-fun m!6441424 () Bool)

(assert (=> bs!1251452 m!6441424))

(assert (=> bs!1251452 m!6441004))

(assert (=> b!5417049 d!1728531))

(declare-fun bs!1251453 () Bool)

(declare-fun d!1728533 () Bool)

(assert (= bs!1251453 (and d!1728533 b!5417082)))

(declare-fun lambda!283409 () Int)

(assert (=> bs!1251453 (= lambda!283409 lambda!283364)))

(assert (=> d!1728533 true))

(assert (=> d!1728533 (= (derivationStepZipper!1438 lt!2209159 (h!68220 s!2326)) (flatMap!926 lt!2209159 lambda!283409))))

(declare-fun bs!1251454 () Bool)

(assert (= bs!1251454 d!1728533))

(declare-fun m!6441426 () Bool)

(assert (=> bs!1251454 m!6441426))

(assert (=> b!5417049 d!1728533))

(declare-fun bs!1251459 () Bool)

(declare-fun b!5417501 () Bool)

(assert (= bs!1251459 (and b!5417501 b!5417058)))

(declare-fun lambda!283419 () Int)

(assert (=> bs!1251459 (= (and (= s!2326 (_1!35701 lt!2209169)) (= (reg!15528 r!7292) (reg!15528 (regOne!30910 r!7292))) (= r!7292 lt!2209136)) (= lambda!283419 lambda!283371))))

(declare-fun bs!1251460 () Bool)

(assert (= bs!1251460 (and b!5417501 d!1728479)))

(assert (=> bs!1251460 (not (= lambda!283419 lambda!283405))))

(declare-fun bs!1251461 () Bool)

(assert (= bs!1251461 (and b!5417501 b!5417053)))

(assert (=> bs!1251461 (not (= lambda!283419 lambda!283367))))

(assert (=> bs!1251461 (not (= lambda!283419 lambda!283368))))

(assert (=> bs!1251460 (not (= lambda!283419 lambda!283406))))

(declare-fun bs!1251463 () Bool)

(assert (= bs!1251463 (and b!5417501 b!5417067)))

(assert (=> bs!1251463 (not (= lambda!283419 lambda!283363))))

(assert (=> bs!1251463 (not (= lambda!283419 lambda!283362))))

(assert (=> bs!1251459 (not (= lambda!283419 lambda!283369))))

(assert (=> bs!1251459 (not (= lambda!283419 lambda!283370))))

(declare-fun bs!1251464 () Bool)

(assert (= bs!1251464 (and b!5417501 d!1728471)))

(assert (=> bs!1251464 (not (= lambda!283419 lambda!283399))))

(assert (=> b!5417501 true))

(assert (=> b!5417501 true))

(declare-fun bs!1251465 () Bool)

(declare-fun b!5417496 () Bool)

(assert (= bs!1251465 (and b!5417496 b!5417058)))

(declare-fun lambda!283420 () Int)

(assert (=> bs!1251465 (not (= lambda!283420 lambda!283371))))

(declare-fun bs!1251466 () Bool)

(assert (= bs!1251466 (and b!5417496 d!1728479)))

(assert (=> bs!1251466 (not (= lambda!283420 lambda!283405))))

(declare-fun bs!1251467 () Bool)

(assert (= bs!1251467 (and b!5417496 b!5417053)))

(assert (=> bs!1251467 (not (= lambda!283420 lambda!283367))))

(assert (=> bs!1251467 (= (= (regOne!30910 r!7292) lt!2209142) (= lambda!283420 lambda!283368))))

(assert (=> bs!1251466 (= lambda!283420 lambda!283406)))

(declare-fun bs!1251468 () Bool)

(assert (= bs!1251468 (and b!5417496 b!5417501)))

(assert (=> bs!1251468 (not (= lambda!283420 lambda!283419))))

(declare-fun bs!1251470 () Bool)

(assert (= bs!1251470 (and b!5417496 b!5417067)))

(assert (=> bs!1251470 (= lambda!283420 lambda!283363)))

(assert (=> bs!1251470 (not (= lambda!283420 lambda!283362))))

(assert (=> bs!1251465 (not (= lambda!283420 lambda!283369))))

(assert (=> bs!1251465 (= (and (= s!2326 (_1!35701 lt!2209169)) (= (regOne!30910 r!7292) (reg!15528 (regOne!30910 r!7292))) (= (regTwo!30910 r!7292) lt!2209136)) (= lambda!283420 lambda!283370))))

(declare-fun bs!1251471 () Bool)

(assert (= bs!1251471 (and b!5417496 d!1728471)))

(assert (=> bs!1251471 (not (= lambda!283420 lambda!283399))))

(assert (=> b!5417496 true))

(assert (=> b!5417496 true))

(declare-fun e!3357828 () Bool)

(declare-fun call!387701 () Bool)

(assert (=> b!5417496 (= e!3357828 call!387701)))

(declare-fun b!5417497 () Bool)

(declare-fun e!3357825 () Bool)

(declare-fun e!3357824 () Bool)

(assert (=> b!5417497 (= e!3357825 e!3357824)))

(declare-fun res!2304610 () Bool)

(assert (=> b!5417497 (= res!2304610 (not ((_ is EmptyLang!15199) r!7292)))))

(assert (=> b!5417497 (=> (not res!2304610) (not e!3357824))))

(declare-fun c!944724 () Bool)

(declare-fun bm!387695 () Bool)

(assert (=> bm!387695 (= call!387701 (Exists!2380 (ite c!944724 lambda!283419 lambda!283420)))))

(declare-fun b!5417498 () Bool)

(declare-fun res!2304611 () Bool)

(declare-fun e!3357830 () Bool)

(assert (=> b!5417498 (=> res!2304611 e!3357830)))

(declare-fun call!387700 () Bool)

(assert (=> b!5417498 (= res!2304611 call!387700)))

(assert (=> b!5417498 (= e!3357828 e!3357830)))

(declare-fun b!5417499 () Bool)

(declare-fun e!3357826 () Bool)

(assert (=> b!5417499 (= e!3357826 e!3357828)))

(assert (=> b!5417499 (= c!944724 ((_ is Star!15199) r!7292))))

(declare-fun b!5417500 () Bool)

(declare-fun c!944725 () Bool)

(assert (=> b!5417500 (= c!944725 ((_ is ElementMatch!15199) r!7292))))

(declare-fun e!3357829 () Bool)

(assert (=> b!5417500 (= e!3357824 e!3357829)))

(declare-fun d!1728535 () Bool)

(declare-fun c!944723 () Bool)

(assert (=> d!1728535 (= c!944723 ((_ is EmptyExpr!15199) r!7292))))

(assert (=> d!1728535 (= (matchRSpec!2302 r!7292 s!2326) e!3357825)))

(assert (=> b!5417501 (= e!3357830 call!387701)))

(declare-fun b!5417502 () Bool)

(assert (=> b!5417502 (= e!3357829 (= s!2326 (Cons!61772 (c!944601 r!7292) Nil!61772)))))

(declare-fun b!5417503 () Bool)

(assert (=> b!5417503 (= e!3357825 call!387700)))

(declare-fun b!5417504 () Bool)

(declare-fun e!3357827 () Bool)

(assert (=> b!5417504 (= e!3357827 (matchRSpec!2302 (regTwo!30911 r!7292) s!2326))))

(declare-fun bm!387696 () Bool)

(assert (=> bm!387696 (= call!387700 (isEmpty!33772 s!2326))))

(declare-fun b!5417505 () Bool)

(assert (=> b!5417505 (= e!3357826 e!3357827)))

(declare-fun res!2304612 () Bool)

(assert (=> b!5417505 (= res!2304612 (matchRSpec!2302 (regOne!30911 r!7292) s!2326))))

(assert (=> b!5417505 (=> res!2304612 e!3357827)))

(declare-fun b!5417506 () Bool)

(declare-fun c!944722 () Bool)

(assert (=> b!5417506 (= c!944722 ((_ is Union!15199) r!7292))))

(assert (=> b!5417506 (= e!3357829 e!3357826)))

(assert (= (and d!1728535 c!944723) b!5417503))

(assert (= (and d!1728535 (not c!944723)) b!5417497))

(assert (= (and b!5417497 res!2304610) b!5417500))

(assert (= (and b!5417500 c!944725) b!5417502))

(assert (= (and b!5417500 (not c!944725)) b!5417506))

(assert (= (and b!5417506 c!944722) b!5417505))

(assert (= (and b!5417506 (not c!944722)) b!5417499))

(assert (= (and b!5417505 (not res!2304612)) b!5417504))

(assert (= (and b!5417499 c!944724) b!5417498))

(assert (= (and b!5417499 (not c!944724)) b!5417496))

(assert (= (and b!5417498 (not res!2304611)) b!5417501))

(assert (= (or b!5417501 b!5417496) bm!387695))

(assert (= (or b!5417503 b!5417498) bm!387696))

(declare-fun m!6441466 () Bool)

(assert (=> bm!387695 m!6441466))

(declare-fun m!6441468 () Bool)

(assert (=> b!5417504 m!6441468))

(assert (=> bm!387696 m!6441336))

(declare-fun m!6441470 () Bool)

(assert (=> b!5417505 m!6441470))

(assert (=> b!5417069 d!1728535))

(declare-fun b!5417550 () Bool)

(declare-fun e!3357860 () Bool)

(declare-fun lt!2209280 () Bool)

(declare-fun call!387704 () Bool)

(assert (=> b!5417550 (= e!3357860 (= lt!2209280 call!387704))))

(declare-fun b!5417551 () Bool)

(declare-fun e!3357859 () Bool)

(assert (=> b!5417551 (= e!3357859 (not (= (head!11622 s!2326) (c!944601 r!7292))))))

(declare-fun b!5417552 () Bool)

(declare-fun e!3357854 () Bool)

(assert (=> b!5417552 (= e!3357854 (not lt!2209280))))

(declare-fun b!5417553 () Bool)

(assert (=> b!5417553 (= e!3357860 e!3357854)))

(declare-fun c!944739 () Bool)

(assert (=> b!5417553 (= c!944739 ((_ is EmptyLang!15199) r!7292))))

(declare-fun b!5417554 () Bool)

(declare-fun res!2304634 () Bool)

(assert (=> b!5417554 (=> res!2304634 e!3357859)))

(assert (=> b!5417554 (= res!2304634 (not (isEmpty!33772 (tail!10719 s!2326))))))

(declare-fun d!1728551 () Bool)

(assert (=> d!1728551 e!3357860))

(declare-fun c!944740 () Bool)

(assert (=> d!1728551 (= c!944740 ((_ is EmptyExpr!15199) r!7292))))

(declare-fun e!3357857 () Bool)

(assert (=> d!1728551 (= lt!2209280 e!3357857)))

(declare-fun c!944738 () Bool)

(assert (=> d!1728551 (= c!944738 (isEmpty!33772 s!2326))))

(assert (=> d!1728551 (validRegex!6935 r!7292)))

(assert (=> d!1728551 (= (matchR!7384 r!7292 s!2326) lt!2209280)))

(declare-fun b!5417555 () Bool)

(declare-fun derivativeStep!4273 (Regex!15199 C!30668) Regex!15199)

(assert (=> b!5417555 (= e!3357857 (matchR!7384 (derivativeStep!4273 r!7292 (head!11622 s!2326)) (tail!10719 s!2326)))))

(declare-fun b!5417556 () Bool)

(assert (=> b!5417556 (= e!3357857 (nullable!5368 r!7292))))

(declare-fun b!5417557 () Bool)

(declare-fun res!2304637 () Bool)

(declare-fun e!3357855 () Bool)

(assert (=> b!5417557 (=> (not res!2304637) (not e!3357855))))

(assert (=> b!5417557 (= res!2304637 (not call!387704))))

(declare-fun b!5417558 () Bool)

(declare-fun e!3357858 () Bool)

(assert (=> b!5417558 (= e!3357858 e!3357859)))

(declare-fun res!2304632 () Bool)

(assert (=> b!5417558 (=> res!2304632 e!3357859)))

(assert (=> b!5417558 (= res!2304632 call!387704)))

(declare-fun b!5417559 () Bool)

(declare-fun res!2304636 () Bool)

(declare-fun e!3357856 () Bool)

(assert (=> b!5417559 (=> res!2304636 e!3357856)))

(assert (=> b!5417559 (= res!2304636 (not ((_ is ElementMatch!15199) r!7292)))))

(assert (=> b!5417559 (= e!3357854 e!3357856)))

(declare-fun b!5417560 () Bool)

(assert (=> b!5417560 (= e!3357856 e!3357858)))

(declare-fun res!2304638 () Bool)

(assert (=> b!5417560 (=> (not res!2304638) (not e!3357858))))

(assert (=> b!5417560 (= res!2304638 (not lt!2209280))))

(declare-fun b!5417561 () Bool)

(declare-fun res!2304633 () Bool)

(assert (=> b!5417561 (=> (not res!2304633) (not e!3357855))))

(assert (=> b!5417561 (= res!2304633 (isEmpty!33772 (tail!10719 s!2326)))))

(declare-fun b!5417562 () Bool)

(declare-fun res!2304635 () Bool)

(assert (=> b!5417562 (=> res!2304635 e!3357856)))

(assert (=> b!5417562 (= res!2304635 e!3357855)))

(declare-fun res!2304639 () Bool)

(assert (=> b!5417562 (=> (not res!2304639) (not e!3357855))))

(assert (=> b!5417562 (= res!2304639 lt!2209280)))

(declare-fun bm!387699 () Bool)

(assert (=> bm!387699 (= call!387704 (isEmpty!33772 s!2326))))

(declare-fun b!5417563 () Bool)

(assert (=> b!5417563 (= e!3357855 (= (head!11622 s!2326) (c!944601 r!7292)))))

(assert (= (and d!1728551 c!944738) b!5417556))

(assert (= (and d!1728551 (not c!944738)) b!5417555))

(assert (= (and d!1728551 c!944740) b!5417550))

(assert (= (and d!1728551 (not c!944740)) b!5417553))

(assert (= (and b!5417553 c!944739) b!5417552))

(assert (= (and b!5417553 (not c!944739)) b!5417559))

(assert (= (and b!5417559 (not res!2304636)) b!5417562))

(assert (= (and b!5417562 res!2304639) b!5417557))

(assert (= (and b!5417557 res!2304637) b!5417561))

(assert (= (and b!5417561 res!2304633) b!5417563))

(assert (= (and b!5417562 (not res!2304635)) b!5417560))

(assert (= (and b!5417560 res!2304638) b!5417558))

(assert (= (and b!5417558 (not res!2304632)) b!5417554))

(assert (= (and b!5417554 (not res!2304634)) b!5417551))

(assert (= (or b!5417550 b!5417557 b!5417558) bm!387699))

(assert (=> d!1728551 m!6441336))

(assert (=> d!1728551 m!6440952))

(assert (=> b!5417563 m!6441340))

(assert (=> bm!387699 m!6441336))

(assert (=> b!5417554 m!6441344))

(assert (=> b!5417554 m!6441344))

(declare-fun m!6441512 () Bool)

(assert (=> b!5417554 m!6441512))

(assert (=> b!5417561 m!6441344))

(assert (=> b!5417561 m!6441344))

(assert (=> b!5417561 m!6441512))

(assert (=> b!5417555 m!6441340))

(assert (=> b!5417555 m!6441340))

(declare-fun m!6441514 () Bool)

(assert (=> b!5417555 m!6441514))

(assert (=> b!5417555 m!6441344))

(assert (=> b!5417555 m!6441514))

(assert (=> b!5417555 m!6441344))

(declare-fun m!6441516 () Bool)

(assert (=> b!5417555 m!6441516))

(declare-fun m!6441518 () Bool)

(assert (=> b!5417556 m!6441518))

(assert (=> b!5417551 m!6441340))

(assert (=> b!5417069 d!1728551))

(declare-fun d!1728565 () Bool)

(assert (=> d!1728565 (= (matchR!7384 r!7292 s!2326) (matchRSpec!2302 r!7292 s!2326))))

(declare-fun lt!2209283 () Unit!154318)

(declare-fun choose!40996 (Regex!15199 List!61896) Unit!154318)

(assert (=> d!1728565 (= lt!2209283 (choose!40996 r!7292 s!2326))))

(assert (=> d!1728565 (validRegex!6935 r!7292)))

(assert (=> d!1728565 (= (mainMatchTheorem!2302 r!7292 s!2326) lt!2209283)))

(declare-fun bs!1251477 () Bool)

(assert (= bs!1251477 d!1728565))

(assert (=> bs!1251477 m!6440978))

(assert (=> bs!1251477 m!6440976))

(declare-fun m!6441520 () Bool)

(assert (=> bs!1251477 m!6441520))

(assert (=> bs!1251477 m!6440952))

(assert (=> b!5417069 d!1728565))

(declare-fun d!1728567 () Bool)

(declare-fun c!944747 () Bool)

(assert (=> d!1728567 (= c!944747 (isEmpty!33772 (t!375119 s!2326)))))

(declare-fun e!3357882 () Bool)

(assert (=> d!1728567 (= (matchZipper!1443 lt!2209144 (t!375119 s!2326)) e!3357882)))

(declare-fun b!5417591 () Bool)

(assert (=> b!5417591 (= e!3357882 (nullableZipper!1451 lt!2209144))))

(declare-fun b!5417592 () Bool)

(assert (=> b!5417592 (= e!3357882 (matchZipper!1443 (derivationStepZipper!1438 lt!2209144 (head!11622 (t!375119 s!2326))) (tail!10719 (t!375119 s!2326))))))

(assert (= (and d!1728567 c!944747) b!5417591))

(assert (= (and d!1728567 (not c!944747)) b!5417592))

(assert (=> d!1728567 m!6441350))

(declare-fun m!6441522 () Bool)

(assert (=> b!5417591 m!6441522))

(assert (=> b!5417592 m!6441354))

(assert (=> b!5417592 m!6441354))

(declare-fun m!6441528 () Bool)

(assert (=> b!5417592 m!6441528))

(assert (=> b!5417592 m!6441358))

(assert (=> b!5417592 m!6441528))

(assert (=> b!5417592 m!6441358))

(declare-fun m!6441532 () Bool)

(assert (=> b!5417592 m!6441532))

(assert (=> b!5417073 d!1728567))

(declare-fun d!1728571 () Bool)

(declare-fun c!944748 () Bool)

(assert (=> d!1728571 (= c!944748 (isEmpty!33772 (_2!35701 lt!2209180)))))

(declare-fun e!3357883 () Bool)

(assert (=> d!1728571 (= (matchZipper!1443 lt!2209145 (_2!35701 lt!2209180)) e!3357883)))

(declare-fun b!5417593 () Bool)

(assert (=> b!5417593 (= e!3357883 (nullableZipper!1451 lt!2209145))))

(declare-fun b!5417594 () Bool)

(assert (=> b!5417594 (= e!3357883 (matchZipper!1443 (derivationStepZipper!1438 lt!2209145 (head!11622 (_2!35701 lt!2209180))) (tail!10719 (_2!35701 lt!2209180))))))

(assert (= (and d!1728571 c!944748) b!5417593))

(assert (= (and d!1728571 (not c!944748)) b!5417594))

(declare-fun m!6441534 () Bool)

(assert (=> d!1728571 m!6441534))

(declare-fun m!6441536 () Bool)

(assert (=> b!5417593 m!6441536))

(declare-fun m!6441538 () Bool)

(assert (=> b!5417594 m!6441538))

(assert (=> b!5417594 m!6441538))

(declare-fun m!6441540 () Bool)

(assert (=> b!5417594 m!6441540))

(declare-fun m!6441542 () Bool)

(assert (=> b!5417594 m!6441542))

(assert (=> b!5417594 m!6441540))

(assert (=> b!5417594 m!6441542))

(declare-fun m!6441544 () Bool)

(assert (=> b!5417594 m!6441544))

(assert (=> b!5417052 d!1728571))

(declare-fun bs!1251478 () Bool)

(declare-fun d!1728573 () Bool)

(assert (= bs!1251478 (and d!1728573 b!5417072)))

(declare-fun lambda!283424 () Int)

(assert (=> bs!1251478 (= lambda!283424 lambda!283366)))

(declare-fun bs!1251479 () Bool)

(assert (= bs!1251479 (and d!1728573 d!1728455)))

(assert (=> bs!1251479 (= lambda!283424 lambda!283385)))

(declare-fun bs!1251480 () Bool)

(assert (= bs!1251480 (and d!1728573 d!1728459)))

(assert (=> bs!1251480 (= lambda!283424 lambda!283390)))

(assert (=> d!1728573 (= (inv!81244 setElem!35297) (forall!14545 (exprs!5083 setElem!35297) lambda!283424))))

(declare-fun bs!1251481 () Bool)

(assert (= bs!1251481 d!1728573))

(declare-fun m!6441546 () Bool)

(assert (=> bs!1251481 m!6441546))

(assert (=> setNonEmpty!35297 d!1728573))

(assert (=> b!5417051 d!1728567))

(declare-fun d!1728575 () Bool)

(declare-fun choose!40998 ((InoxSet Context!9166) Int) (InoxSet Context!9166))

(assert (=> d!1728575 (= (map!14183 lt!2209150 lambda!283365) (choose!40998 lt!2209150 lambda!283365))))

(declare-fun bs!1251482 () Bool)

(assert (= bs!1251482 d!1728575))

(declare-fun m!6441548 () Bool)

(assert (=> bs!1251482 m!6441548))

(assert (=> b!5417072 d!1728575))

(declare-fun bs!1251483 () Bool)

(declare-fun d!1728577 () Bool)

(assert (= bs!1251483 (and d!1728577 b!5417072)))

(declare-fun lambda!283429 () Int)

(assert (=> bs!1251483 (= (= (exprs!5083 lt!2209161) lt!2209186) (= lambda!283429 lambda!283365))))

(assert (=> d!1728577 true))

(assert (=> d!1728577 (= (appendTo!58 lt!2209150 lt!2209161) (map!14183 lt!2209150 lambda!283429))))

(declare-fun bs!1251484 () Bool)

(assert (= bs!1251484 d!1728577))

(declare-fun m!6441550 () Bool)

(assert (=> bs!1251484 m!6441550))

(assert (=> b!5417072 d!1728577))

(declare-fun d!1728579 () Bool)

(assert (=> d!1728579 (forall!14545 (++!13571 lt!2209152 lt!2209186) lambda!283366)))

(declare-fun lt!2209288 () Unit!154318)

(declare-fun choose!40999 (List!61897 List!61897 Int) Unit!154318)

(assert (=> d!1728579 (= lt!2209288 (choose!40999 lt!2209152 lt!2209186 lambda!283366))))

(assert (=> d!1728579 (forall!14545 lt!2209152 lambda!283366)))

(assert (=> d!1728579 (= (lemmaConcatPreservesForall!224 lt!2209152 lt!2209186 lambda!283366) lt!2209288)))

(declare-fun bs!1251485 () Bool)

(assert (= bs!1251485 d!1728579))

(assert (=> bs!1251485 m!6441034))

(assert (=> bs!1251485 m!6441034))

(declare-fun m!6441552 () Bool)

(assert (=> bs!1251485 m!6441552))

(declare-fun m!6441554 () Bool)

(assert (=> bs!1251485 m!6441554))

(declare-fun m!6441556 () Bool)

(assert (=> bs!1251485 m!6441556))

(assert (=> b!5417072 d!1728579))

(declare-fun d!1728581 () Bool)

(declare-fun e!3357922 () Bool)

(assert (=> d!1728581 e!3357922))

(declare-fun res!2304666 () Bool)

(assert (=> d!1728581 (=> (not res!2304666) (not e!3357922))))

(declare-fun lt!2209292 () List!61897)

(declare-fun content!11102 (List!61897) (InoxSet Regex!15199))

(assert (=> d!1728581 (= res!2304666 (= (content!11102 lt!2209292) ((_ map or) (content!11102 lt!2209152) (content!11102 lt!2209186))))))

(declare-fun e!3357921 () List!61897)

(assert (=> d!1728581 (= lt!2209292 e!3357921)))

(declare-fun c!944778 () Bool)

(assert (=> d!1728581 (= c!944778 ((_ is Nil!61773) lt!2209152))))

(assert (=> d!1728581 (= (++!13571 lt!2209152 lt!2209186) lt!2209292)))

(declare-fun b!5417665 () Bool)

(assert (=> b!5417665 (= e!3357921 (Cons!61773 (h!68221 lt!2209152) (++!13571 (t!375120 lt!2209152) lt!2209186)))))

(declare-fun b!5417666 () Bool)

(declare-fun res!2304667 () Bool)

(assert (=> b!5417666 (=> (not res!2304667) (not e!3357922))))

(declare-fun size!39871 (List!61897) Int)

(assert (=> b!5417666 (= res!2304667 (= (size!39871 lt!2209292) (+ (size!39871 lt!2209152) (size!39871 lt!2209186))))))

(declare-fun b!5417664 () Bool)

(assert (=> b!5417664 (= e!3357921 lt!2209186)))

(declare-fun b!5417667 () Bool)

(assert (=> b!5417667 (= e!3357922 (or (not (= lt!2209186 Nil!61773)) (= lt!2209292 lt!2209152)))))

(assert (= (and d!1728581 c!944778) b!5417664))

(assert (= (and d!1728581 (not c!944778)) b!5417665))

(assert (= (and d!1728581 res!2304666) b!5417666))

(assert (= (and b!5417666 res!2304667) b!5417667))

(declare-fun m!6441588 () Bool)

(assert (=> d!1728581 m!6441588))

(declare-fun m!6441590 () Bool)

(assert (=> d!1728581 m!6441590))

(declare-fun m!6441592 () Bool)

(assert (=> d!1728581 m!6441592))

(declare-fun m!6441594 () Bool)

(assert (=> b!5417665 m!6441594))

(declare-fun m!6441596 () Bool)

(assert (=> b!5417666 m!6441596))

(declare-fun m!6441598 () Bool)

(assert (=> b!5417666 m!6441598))

(declare-fun m!6441600 () Bool)

(assert (=> b!5417666 m!6441600))

(assert (=> b!5417072 d!1728581))

(declare-fun d!1728593 () Bool)

(declare-fun dynLambda!24344 (Int Context!9166) Context!9166)

(assert (=> d!1728593 (= (map!14183 lt!2209150 lambda!283365) (store ((as const (Array Context!9166 Bool)) false) (dynLambda!24344 lambda!283365 lt!2209134) true))))

(declare-fun lt!2209295 () Unit!154318)

(declare-fun choose!41000 ((InoxSet Context!9166) Context!9166 Int) Unit!154318)

(assert (=> d!1728593 (= lt!2209295 (choose!41000 lt!2209150 lt!2209134 lambda!283365))))

(assert (=> d!1728593 (= lt!2209150 (store ((as const (Array Context!9166 Bool)) false) lt!2209134 true))))

(assert (=> d!1728593 (= (lemmaMapOnSingletonSet!58 lt!2209150 lt!2209134 lambda!283365) lt!2209295)))

(declare-fun b_lambda!206845 () Bool)

(assert (=> (not b_lambda!206845) (not d!1728593)))

(declare-fun bs!1251491 () Bool)

(assert (= bs!1251491 d!1728593))

(assert (=> bs!1251491 m!6441030))

(declare-fun m!6441628 () Bool)

(assert (=> bs!1251491 m!6441628))

(assert (=> bs!1251491 m!6441628))

(declare-fun m!6441630 () Bool)

(assert (=> bs!1251491 m!6441630))

(assert (=> bs!1251491 m!6441056))

(declare-fun m!6441632 () Bool)

(assert (=> bs!1251491 m!6441632))

(assert (=> b!5417072 d!1728593))

(declare-fun d!1728603 () Bool)

(declare-fun lt!2209296 () Regex!15199)

(assert (=> d!1728603 (validRegex!6935 lt!2209296)))

(assert (=> d!1728603 (= lt!2209296 (generalisedUnion!1128 (unfocusZipperList!641 zl!343)))))

(assert (=> d!1728603 (= (unfocusZipper!941 zl!343) lt!2209296)))

(declare-fun bs!1251493 () Bool)

(assert (= bs!1251493 d!1728603))

(declare-fun m!6441634 () Bool)

(assert (=> bs!1251493 m!6441634))

(assert (=> bs!1251493 m!6440948))

(assert (=> bs!1251493 m!6440948))

(assert (=> bs!1251493 m!6440950))

(assert (=> b!5417055 d!1728603))

(declare-fun d!1728605 () Bool)

(declare-fun nullableFct!1603 (Regex!15199) Bool)

(assert (=> d!1728605 (= (nullable!5368 (regOne!30910 (regOne!30910 r!7292))) (nullableFct!1603 (regOne!30910 (regOne!30910 r!7292))))))

(declare-fun bs!1251497 () Bool)

(assert (= bs!1251497 d!1728605))

(declare-fun m!6441636 () Bool)

(assert (=> bs!1251497 m!6441636))

(assert (=> b!5417054 d!1728605))

(assert (=> b!5417074 d!1728511))

(declare-fun b!5417681 () Bool)

(declare-fun e!3357937 () Bool)

(declare-fun lt!2209297 () Bool)

(declare-fun call!387743 () Bool)

(assert (=> b!5417681 (= e!3357937 (= lt!2209297 call!387743))))

(declare-fun b!5417682 () Bool)

(declare-fun e!3357936 () Bool)

(assert (=> b!5417682 (= e!3357936 (not (= (head!11622 (_1!35701 lt!2209180)) (c!944601 (reg!15528 (regOne!30910 r!7292))))))))

(declare-fun b!5417683 () Bool)

(declare-fun e!3357931 () Bool)

(assert (=> b!5417683 (= e!3357931 (not lt!2209297))))

(declare-fun b!5417684 () Bool)

(assert (=> b!5417684 (= e!3357937 e!3357931)))

(declare-fun c!944785 () Bool)

(assert (=> b!5417684 (= c!944785 ((_ is EmptyLang!15199) (reg!15528 (regOne!30910 r!7292))))))

(declare-fun b!5417685 () Bool)

(declare-fun res!2304673 () Bool)

(assert (=> b!5417685 (=> res!2304673 e!3357936)))

(assert (=> b!5417685 (= res!2304673 (not (isEmpty!33772 (tail!10719 (_1!35701 lt!2209180)))))))

(declare-fun d!1728607 () Bool)

(assert (=> d!1728607 e!3357937))

(declare-fun c!944786 () Bool)

(assert (=> d!1728607 (= c!944786 ((_ is EmptyExpr!15199) (reg!15528 (regOne!30910 r!7292))))))

(declare-fun e!3357934 () Bool)

(assert (=> d!1728607 (= lt!2209297 e!3357934)))

(declare-fun c!944784 () Bool)

(assert (=> d!1728607 (= c!944784 (isEmpty!33772 (_1!35701 lt!2209180)))))

(assert (=> d!1728607 (validRegex!6935 (reg!15528 (regOne!30910 r!7292)))))

(assert (=> d!1728607 (= (matchR!7384 (reg!15528 (regOne!30910 r!7292)) (_1!35701 lt!2209180)) lt!2209297)))

(declare-fun b!5417686 () Bool)

(assert (=> b!5417686 (= e!3357934 (matchR!7384 (derivativeStep!4273 (reg!15528 (regOne!30910 r!7292)) (head!11622 (_1!35701 lt!2209180))) (tail!10719 (_1!35701 lt!2209180))))))

(declare-fun b!5417687 () Bool)

(assert (=> b!5417687 (= e!3357934 (nullable!5368 (reg!15528 (regOne!30910 r!7292))))))

(declare-fun b!5417688 () Bool)

(declare-fun res!2304676 () Bool)

(declare-fun e!3357932 () Bool)

(assert (=> b!5417688 (=> (not res!2304676) (not e!3357932))))

(assert (=> b!5417688 (= res!2304676 (not call!387743))))

(declare-fun b!5417689 () Bool)

(declare-fun e!3357935 () Bool)

(assert (=> b!5417689 (= e!3357935 e!3357936)))

(declare-fun res!2304671 () Bool)

(assert (=> b!5417689 (=> res!2304671 e!3357936)))

(assert (=> b!5417689 (= res!2304671 call!387743)))

(declare-fun b!5417690 () Bool)

(declare-fun res!2304675 () Bool)

(declare-fun e!3357933 () Bool)

(assert (=> b!5417690 (=> res!2304675 e!3357933)))

(assert (=> b!5417690 (= res!2304675 (not ((_ is ElementMatch!15199) (reg!15528 (regOne!30910 r!7292)))))))

(assert (=> b!5417690 (= e!3357931 e!3357933)))

(declare-fun b!5417691 () Bool)

(assert (=> b!5417691 (= e!3357933 e!3357935)))

(declare-fun res!2304677 () Bool)

(assert (=> b!5417691 (=> (not res!2304677) (not e!3357935))))

(assert (=> b!5417691 (= res!2304677 (not lt!2209297))))

(declare-fun b!5417692 () Bool)

(declare-fun res!2304672 () Bool)

(assert (=> b!5417692 (=> (not res!2304672) (not e!3357932))))

(assert (=> b!5417692 (= res!2304672 (isEmpty!33772 (tail!10719 (_1!35701 lt!2209180))))))

(declare-fun b!5417693 () Bool)

(declare-fun res!2304674 () Bool)

(assert (=> b!5417693 (=> res!2304674 e!3357933)))

(assert (=> b!5417693 (= res!2304674 e!3357932)))

(declare-fun res!2304678 () Bool)

(assert (=> b!5417693 (=> (not res!2304678) (not e!3357932))))

(assert (=> b!5417693 (= res!2304678 lt!2209297)))

(declare-fun bm!387738 () Bool)

(assert (=> bm!387738 (= call!387743 (isEmpty!33772 (_1!35701 lt!2209180)))))

(declare-fun b!5417694 () Bool)

(assert (=> b!5417694 (= e!3357932 (= (head!11622 (_1!35701 lt!2209180)) (c!944601 (reg!15528 (regOne!30910 r!7292)))))))

(assert (= (and d!1728607 c!944784) b!5417687))

(assert (= (and d!1728607 (not c!944784)) b!5417686))

(assert (= (and d!1728607 c!944786) b!5417681))

(assert (= (and d!1728607 (not c!944786)) b!5417684))

(assert (= (and b!5417684 c!944785) b!5417683))

(assert (= (and b!5417684 (not c!944785)) b!5417690))

(assert (= (and b!5417690 (not res!2304675)) b!5417693))

(assert (= (and b!5417693 res!2304678) b!5417688))

(assert (= (and b!5417688 res!2304676) b!5417692))

(assert (= (and b!5417692 res!2304672) b!5417694))

(assert (= (and b!5417693 (not res!2304674)) b!5417691))

(assert (= (and b!5417691 res!2304677) b!5417689))

(assert (= (and b!5417689 (not res!2304671)) b!5417685))

(assert (= (and b!5417685 (not res!2304673)) b!5417682))

(assert (= (or b!5417681 b!5417688 b!5417689) bm!387738))

(declare-fun m!6441638 () Bool)

(assert (=> d!1728607 m!6441638))

(assert (=> d!1728607 m!6440936))

(declare-fun m!6441640 () Bool)

(assert (=> b!5417694 m!6441640))

(assert (=> bm!387738 m!6441638))

(declare-fun m!6441642 () Bool)

(assert (=> b!5417685 m!6441642))

(assert (=> b!5417685 m!6441642))

(declare-fun m!6441644 () Bool)

(assert (=> b!5417685 m!6441644))

(assert (=> b!5417692 m!6441642))

(assert (=> b!5417692 m!6441642))

(assert (=> b!5417692 m!6441644))

(assert (=> b!5417686 m!6441640))

(assert (=> b!5417686 m!6441640))

(declare-fun m!6441646 () Bool)

(assert (=> b!5417686 m!6441646))

(assert (=> b!5417686 m!6441642))

(assert (=> b!5417686 m!6441646))

(assert (=> b!5417686 m!6441642))

(declare-fun m!6441648 () Bool)

(assert (=> b!5417686 m!6441648))

(declare-fun m!6441650 () Bool)

(assert (=> b!5417687 m!6441650))

(assert (=> b!5417682 m!6441640))

(assert (=> b!5417053 d!1728607))

(declare-fun d!1728609 () Bool)

(declare-fun c!944787 () Bool)

(assert (=> d!1728609 (= c!944787 (isEmpty!33772 lt!2209172))))

(declare-fun e!3357938 () Bool)

(assert (=> d!1728609 (= (matchZipper!1443 (store ((as const (Array Context!9166 Bool)) false) (Context!9167 (++!13571 lt!2209152 lt!2209186)) true) lt!2209172) e!3357938)))

(declare-fun b!5417695 () Bool)

(assert (=> b!5417695 (= e!3357938 (nullableZipper!1451 (store ((as const (Array Context!9166 Bool)) false) (Context!9167 (++!13571 lt!2209152 lt!2209186)) true)))))

(declare-fun b!5417696 () Bool)

(assert (=> b!5417696 (= e!3357938 (matchZipper!1443 (derivationStepZipper!1438 (store ((as const (Array Context!9166 Bool)) false) (Context!9167 (++!13571 lt!2209152 lt!2209186)) true) (head!11622 lt!2209172)) (tail!10719 lt!2209172)))))

(assert (= (and d!1728609 c!944787) b!5417695))

(assert (= (and d!1728609 (not c!944787)) b!5417696))

(declare-fun m!6441652 () Bool)

(assert (=> d!1728609 m!6441652))

(assert (=> b!5417695 m!6441028))

(declare-fun m!6441654 () Bool)

(assert (=> b!5417695 m!6441654))

(declare-fun m!6441656 () Bool)

(assert (=> b!5417696 m!6441656))

(assert (=> b!5417696 m!6441028))

(assert (=> b!5417696 m!6441656))

(declare-fun m!6441658 () Bool)

(assert (=> b!5417696 m!6441658))

(declare-fun m!6441660 () Bool)

(assert (=> b!5417696 m!6441660))

(assert (=> b!5417696 m!6441658))

(assert (=> b!5417696 m!6441660))

(declare-fun m!6441662 () Bool)

(assert (=> b!5417696 m!6441662))

(assert (=> b!5417053 d!1728609))

(declare-fun d!1728611 () Bool)

(assert (=> d!1728611 (= (matchR!7384 lt!2209185 s!2326) (matchRSpec!2302 lt!2209185 s!2326))))

(declare-fun lt!2209298 () Unit!154318)

(assert (=> d!1728611 (= lt!2209298 (choose!40996 lt!2209185 s!2326))))

(assert (=> d!1728611 (validRegex!6935 lt!2209185)))

(assert (=> d!1728611 (= (mainMatchTheorem!2302 lt!2209185 s!2326) lt!2209298)))

(declare-fun bs!1251507 () Bool)

(assert (= bs!1251507 d!1728611))

(assert (=> bs!1251507 m!6441092))

(assert (=> bs!1251507 m!6441098))

(declare-fun m!6441664 () Bool)

(assert (=> bs!1251507 m!6441664))

(declare-fun m!6441666 () Bool)

(assert (=> bs!1251507 m!6441666))

(assert (=> b!5417053 d!1728611))

(declare-fun d!1728613 () Bool)

(assert (=> d!1728613 (= (Exists!2380 lambda!283368) (choose!40988 lambda!283368))))

(declare-fun bs!1251508 () Bool)

(assert (= bs!1251508 d!1728613))

(declare-fun m!6441668 () Bool)

(assert (=> bs!1251508 m!6441668))

(assert (=> b!5417053 d!1728613))

(declare-fun b!5417697 () Bool)

(declare-fun e!3357945 () Bool)

(declare-fun lt!2209299 () Bool)

(declare-fun call!387744 () Bool)

(assert (=> b!5417697 (= e!3357945 (= lt!2209299 call!387744))))

(declare-fun b!5417698 () Bool)

(declare-fun e!3357944 () Bool)

(assert (=> b!5417698 (= e!3357944 (not (= (head!11622 lt!2209172) (c!944601 lt!2209189))))))

(declare-fun b!5417699 () Bool)

(declare-fun e!3357939 () Bool)

(assert (=> b!5417699 (= e!3357939 (not lt!2209299))))

(declare-fun b!5417700 () Bool)

(assert (=> b!5417700 (= e!3357945 e!3357939)))

(declare-fun c!944789 () Bool)

(assert (=> b!5417700 (= c!944789 ((_ is EmptyLang!15199) lt!2209189))))

(declare-fun b!5417701 () Bool)

(declare-fun res!2304681 () Bool)

(assert (=> b!5417701 (=> res!2304681 e!3357944)))

(assert (=> b!5417701 (= res!2304681 (not (isEmpty!33772 (tail!10719 lt!2209172))))))

(declare-fun d!1728615 () Bool)

(assert (=> d!1728615 e!3357945))

(declare-fun c!944790 () Bool)

(assert (=> d!1728615 (= c!944790 ((_ is EmptyExpr!15199) lt!2209189))))

(declare-fun e!3357942 () Bool)

(assert (=> d!1728615 (= lt!2209299 e!3357942)))

(declare-fun c!944788 () Bool)

(assert (=> d!1728615 (= c!944788 (isEmpty!33772 lt!2209172))))

(assert (=> d!1728615 (validRegex!6935 lt!2209189)))

(assert (=> d!1728615 (= (matchR!7384 lt!2209189 lt!2209172) lt!2209299)))

(declare-fun b!5417702 () Bool)

(assert (=> b!5417702 (= e!3357942 (matchR!7384 (derivativeStep!4273 lt!2209189 (head!11622 lt!2209172)) (tail!10719 lt!2209172)))))

(declare-fun b!5417703 () Bool)

(assert (=> b!5417703 (= e!3357942 (nullable!5368 lt!2209189))))

(declare-fun b!5417704 () Bool)

(declare-fun res!2304684 () Bool)

(declare-fun e!3357940 () Bool)

(assert (=> b!5417704 (=> (not res!2304684) (not e!3357940))))

(assert (=> b!5417704 (= res!2304684 (not call!387744))))

(declare-fun b!5417705 () Bool)

(declare-fun e!3357943 () Bool)

(assert (=> b!5417705 (= e!3357943 e!3357944)))

(declare-fun res!2304679 () Bool)

(assert (=> b!5417705 (=> res!2304679 e!3357944)))

(assert (=> b!5417705 (= res!2304679 call!387744)))

(declare-fun b!5417706 () Bool)

(declare-fun res!2304683 () Bool)

(declare-fun e!3357941 () Bool)

(assert (=> b!5417706 (=> res!2304683 e!3357941)))

(assert (=> b!5417706 (= res!2304683 (not ((_ is ElementMatch!15199) lt!2209189)))))

(assert (=> b!5417706 (= e!3357939 e!3357941)))

(declare-fun b!5417707 () Bool)

(assert (=> b!5417707 (= e!3357941 e!3357943)))

(declare-fun res!2304685 () Bool)

(assert (=> b!5417707 (=> (not res!2304685) (not e!3357943))))

(assert (=> b!5417707 (= res!2304685 (not lt!2209299))))

(declare-fun b!5417708 () Bool)

(declare-fun res!2304680 () Bool)

(assert (=> b!5417708 (=> (not res!2304680) (not e!3357940))))

(assert (=> b!5417708 (= res!2304680 (isEmpty!33772 (tail!10719 lt!2209172)))))

(declare-fun b!5417709 () Bool)

(declare-fun res!2304682 () Bool)

(assert (=> b!5417709 (=> res!2304682 e!3357941)))

(assert (=> b!5417709 (= res!2304682 e!3357940)))

(declare-fun res!2304686 () Bool)

(assert (=> b!5417709 (=> (not res!2304686) (not e!3357940))))

(assert (=> b!5417709 (= res!2304686 lt!2209299)))

(declare-fun bm!387739 () Bool)

(assert (=> bm!387739 (= call!387744 (isEmpty!33772 lt!2209172))))

(declare-fun b!5417710 () Bool)

(assert (=> b!5417710 (= e!3357940 (= (head!11622 lt!2209172) (c!944601 lt!2209189)))))

(assert (= (and d!1728615 c!944788) b!5417703))

(assert (= (and d!1728615 (not c!944788)) b!5417702))

(assert (= (and d!1728615 c!944790) b!5417697))

(assert (= (and d!1728615 (not c!944790)) b!5417700))

(assert (= (and b!5417700 c!944789) b!5417699))

(assert (= (and b!5417700 (not c!944789)) b!5417706))

(assert (= (and b!5417706 (not res!2304683)) b!5417709))

(assert (= (and b!5417709 res!2304686) b!5417704))

(assert (= (and b!5417704 res!2304684) b!5417708))

(assert (= (and b!5417708 res!2304680) b!5417710))

(assert (= (and b!5417709 (not res!2304682)) b!5417707))

(assert (= (and b!5417707 res!2304685) b!5417705))

(assert (= (and b!5417705 (not res!2304679)) b!5417701))

(assert (= (and b!5417701 (not res!2304681)) b!5417698))

(assert (= (or b!5417697 b!5417704 b!5417705) bm!387739))

(assert (=> d!1728615 m!6441652))

(declare-fun m!6441676 () Bool)

(assert (=> d!1728615 m!6441676))

(assert (=> b!5417710 m!6441656))

(assert (=> bm!387739 m!6441652))

(assert (=> b!5417701 m!6441660))

(assert (=> b!5417701 m!6441660))

(declare-fun m!6441678 () Bool)

(assert (=> b!5417701 m!6441678))

(assert (=> b!5417708 m!6441660))

(assert (=> b!5417708 m!6441660))

(assert (=> b!5417708 m!6441678))

(assert (=> b!5417702 m!6441656))

(assert (=> b!5417702 m!6441656))

(declare-fun m!6441680 () Bool)

(assert (=> b!5417702 m!6441680))

(assert (=> b!5417702 m!6441660))

(assert (=> b!5417702 m!6441680))

(assert (=> b!5417702 m!6441660))

(declare-fun m!6441682 () Bool)

(assert (=> b!5417702 m!6441682))

(declare-fun m!6441684 () Bool)

(assert (=> b!5417703 m!6441684))

(assert (=> b!5417698 m!6441656))

(assert (=> b!5417053 d!1728615))

(declare-fun b!5417711 () Bool)

(declare-fun e!3357952 () Bool)

(declare-fun lt!2209300 () Bool)

(declare-fun call!387745 () Bool)

(assert (=> b!5417711 (= e!3357952 (= lt!2209300 call!387745))))

(declare-fun b!5417712 () Bool)

(declare-fun e!3357951 () Bool)

(assert (=> b!5417712 (= e!3357951 (not (= (head!11622 s!2326) (c!944601 lt!2209185))))))

(declare-fun b!5417713 () Bool)

(declare-fun e!3357946 () Bool)

(assert (=> b!5417713 (= e!3357946 (not lt!2209300))))

(declare-fun b!5417714 () Bool)

(assert (=> b!5417714 (= e!3357952 e!3357946)))

(declare-fun c!944792 () Bool)

(assert (=> b!5417714 (= c!944792 ((_ is EmptyLang!15199) lt!2209185))))

(declare-fun b!5417715 () Bool)

(declare-fun res!2304689 () Bool)

(assert (=> b!5417715 (=> res!2304689 e!3357951)))

(assert (=> b!5417715 (= res!2304689 (not (isEmpty!33772 (tail!10719 s!2326))))))

(declare-fun d!1728619 () Bool)

(assert (=> d!1728619 e!3357952))

(declare-fun c!944793 () Bool)

(assert (=> d!1728619 (= c!944793 ((_ is EmptyExpr!15199) lt!2209185))))

(declare-fun e!3357949 () Bool)

(assert (=> d!1728619 (= lt!2209300 e!3357949)))

(declare-fun c!944791 () Bool)

(assert (=> d!1728619 (= c!944791 (isEmpty!33772 s!2326))))

(assert (=> d!1728619 (validRegex!6935 lt!2209185)))

(assert (=> d!1728619 (= (matchR!7384 lt!2209185 s!2326) lt!2209300)))

(declare-fun b!5417716 () Bool)

(assert (=> b!5417716 (= e!3357949 (matchR!7384 (derivativeStep!4273 lt!2209185 (head!11622 s!2326)) (tail!10719 s!2326)))))

(declare-fun b!5417717 () Bool)

(assert (=> b!5417717 (= e!3357949 (nullable!5368 lt!2209185))))

(declare-fun b!5417718 () Bool)

(declare-fun res!2304692 () Bool)

(declare-fun e!3357947 () Bool)

(assert (=> b!5417718 (=> (not res!2304692) (not e!3357947))))

(assert (=> b!5417718 (= res!2304692 (not call!387745))))

(declare-fun b!5417719 () Bool)

(declare-fun e!3357950 () Bool)

(assert (=> b!5417719 (= e!3357950 e!3357951)))

(declare-fun res!2304687 () Bool)

(assert (=> b!5417719 (=> res!2304687 e!3357951)))

(assert (=> b!5417719 (= res!2304687 call!387745)))

(declare-fun b!5417720 () Bool)

(declare-fun res!2304691 () Bool)

(declare-fun e!3357948 () Bool)

(assert (=> b!5417720 (=> res!2304691 e!3357948)))

(assert (=> b!5417720 (= res!2304691 (not ((_ is ElementMatch!15199) lt!2209185)))))

(assert (=> b!5417720 (= e!3357946 e!3357948)))

(declare-fun b!5417721 () Bool)

(assert (=> b!5417721 (= e!3357948 e!3357950)))

(declare-fun res!2304693 () Bool)

(assert (=> b!5417721 (=> (not res!2304693) (not e!3357950))))

(assert (=> b!5417721 (= res!2304693 (not lt!2209300))))

(declare-fun b!5417722 () Bool)

(declare-fun res!2304688 () Bool)

(assert (=> b!5417722 (=> (not res!2304688) (not e!3357947))))

(assert (=> b!5417722 (= res!2304688 (isEmpty!33772 (tail!10719 s!2326)))))

(declare-fun b!5417723 () Bool)

(declare-fun res!2304690 () Bool)

(assert (=> b!5417723 (=> res!2304690 e!3357948)))

(assert (=> b!5417723 (= res!2304690 e!3357947)))

(declare-fun res!2304694 () Bool)

(assert (=> b!5417723 (=> (not res!2304694) (not e!3357947))))

(assert (=> b!5417723 (= res!2304694 lt!2209300)))

(declare-fun bm!387740 () Bool)

(assert (=> bm!387740 (= call!387745 (isEmpty!33772 s!2326))))

(declare-fun b!5417724 () Bool)

(assert (=> b!5417724 (= e!3357947 (= (head!11622 s!2326) (c!944601 lt!2209185)))))

(assert (= (and d!1728619 c!944791) b!5417717))

(assert (= (and d!1728619 (not c!944791)) b!5417716))

(assert (= (and d!1728619 c!944793) b!5417711))

(assert (= (and d!1728619 (not c!944793)) b!5417714))

(assert (= (and b!5417714 c!944792) b!5417713))

(assert (= (and b!5417714 (not c!944792)) b!5417720))

(assert (= (and b!5417720 (not res!2304691)) b!5417723))

(assert (= (and b!5417723 res!2304694) b!5417718))

(assert (= (and b!5417718 res!2304692) b!5417722))

(assert (= (and b!5417722 res!2304688) b!5417724))

(assert (= (and b!5417723 (not res!2304690)) b!5417721))

(assert (= (and b!5417721 res!2304693) b!5417719))

(assert (= (and b!5417719 (not res!2304687)) b!5417715))

(assert (= (and b!5417715 (not res!2304689)) b!5417712))

(assert (= (or b!5417711 b!5417718 b!5417719) bm!387740))

(assert (=> d!1728619 m!6441336))

(assert (=> d!1728619 m!6441666))

(assert (=> b!5417724 m!6441340))

(assert (=> bm!387740 m!6441336))

(assert (=> b!5417715 m!6441344))

(assert (=> b!5417715 m!6441344))

(assert (=> b!5417715 m!6441512))

(assert (=> b!5417722 m!6441344))

(assert (=> b!5417722 m!6441344))

(assert (=> b!5417722 m!6441512))

(assert (=> b!5417716 m!6441340))

(assert (=> b!5417716 m!6441340))

(declare-fun m!6441686 () Bool)

(assert (=> b!5417716 m!6441686))

(assert (=> b!5417716 m!6441344))

(assert (=> b!5417716 m!6441686))

(assert (=> b!5417716 m!6441344))

(declare-fun m!6441688 () Bool)

(assert (=> b!5417716 m!6441688))

(declare-fun m!6441690 () Bool)

(assert (=> b!5417717 m!6441690))

(assert (=> b!5417712 m!6441340))

(assert (=> b!5417053 d!1728619))

(declare-fun bs!1251509 () Bool)

(declare-fun d!1728621 () Bool)

(assert (= bs!1251509 (and d!1728621 b!5417058)))

(declare-fun lambda!283432 () Int)

(assert (=> bs!1251509 (not (= lambda!283432 lambda!283371))))

(declare-fun bs!1251510 () Bool)

(assert (= bs!1251510 (and d!1728621 d!1728479)))

(assert (=> bs!1251510 (= (= lt!2209142 (regOne!30910 r!7292)) (= lambda!283432 lambda!283405))))

(declare-fun bs!1251511 () Bool)

(assert (= bs!1251511 (and d!1728621 b!5417053)))

(assert (=> bs!1251511 (= lambda!283432 lambda!283367)))

(assert (=> bs!1251511 (not (= lambda!283432 lambda!283368))))

(assert (=> bs!1251510 (not (= lambda!283432 lambda!283406))))

(declare-fun bs!1251512 () Bool)

(assert (= bs!1251512 (and d!1728621 b!5417501)))

(assert (=> bs!1251512 (not (= lambda!283432 lambda!283419))))

(declare-fun bs!1251513 () Bool)

(assert (= bs!1251513 (and d!1728621 b!5417067)))

(assert (=> bs!1251513 (not (= lambda!283432 lambda!283363))))

(declare-fun bs!1251514 () Bool)

(assert (= bs!1251514 (and d!1728621 b!5417496)))

(assert (=> bs!1251514 (not (= lambda!283432 lambda!283420))))

(assert (=> bs!1251513 (= (= lt!2209142 (regOne!30910 r!7292)) (= lambda!283432 lambda!283362))))

(assert (=> bs!1251509 (= (and (= s!2326 (_1!35701 lt!2209169)) (= lt!2209142 (reg!15528 (regOne!30910 r!7292))) (= (regTwo!30910 r!7292) lt!2209136)) (= lambda!283432 lambda!283369))))

(assert (=> bs!1251509 (not (= lambda!283432 lambda!283370))))

(declare-fun bs!1251515 () Bool)

(assert (= bs!1251515 (and d!1728621 d!1728471)))

(assert (=> bs!1251515 (= (= lt!2209142 (regOne!30910 r!7292)) (= lambda!283432 lambda!283399))))

(assert (=> d!1728621 true))

(assert (=> d!1728621 true))

(assert (=> d!1728621 true))

(declare-fun lambda!283433 () Int)

(assert (=> bs!1251509 (not (= lambda!283433 lambda!283371))))

(assert (=> bs!1251510 (not (= lambda!283433 lambda!283405))))

(assert (=> bs!1251511 (not (= lambda!283433 lambda!283367))))

(assert (=> bs!1251511 (= lambda!283433 lambda!283368)))

(assert (=> bs!1251510 (= (= lt!2209142 (regOne!30910 r!7292)) (= lambda!283433 lambda!283406))))

(assert (=> bs!1251512 (not (= lambda!283433 lambda!283419))))

(assert (=> bs!1251513 (= (= lt!2209142 (regOne!30910 r!7292)) (= lambda!283433 lambda!283363))))

(assert (=> bs!1251514 (= (= lt!2209142 (regOne!30910 r!7292)) (= lambda!283433 lambda!283420))))

(assert (=> bs!1251513 (not (= lambda!283433 lambda!283362))))

(assert (=> bs!1251509 (not (= lambda!283433 lambda!283369))))

(declare-fun bs!1251517 () Bool)

(assert (= bs!1251517 d!1728621))

(assert (=> bs!1251517 (not (= lambda!283433 lambda!283432))))

(assert (=> bs!1251509 (= (and (= s!2326 (_1!35701 lt!2209169)) (= lt!2209142 (reg!15528 (regOne!30910 r!7292))) (= (regTwo!30910 r!7292) lt!2209136)) (= lambda!283433 lambda!283370))))

(assert (=> bs!1251515 (not (= lambda!283433 lambda!283399))))

(assert (=> d!1728621 true))

(assert (=> d!1728621 true))

(assert (=> d!1728621 true))

(assert (=> d!1728621 (= (Exists!2380 lambda!283432) (Exists!2380 lambda!283433))))

(declare-fun lt!2209301 () Unit!154318)

(assert (=> d!1728621 (= lt!2209301 (choose!40990 lt!2209142 (regTwo!30910 r!7292) s!2326))))

(assert (=> d!1728621 (validRegex!6935 lt!2209142)))

(assert (=> d!1728621 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1034 lt!2209142 (regTwo!30910 r!7292) s!2326) lt!2209301)))

(declare-fun m!6441696 () Bool)

(assert (=> bs!1251517 m!6441696))

(declare-fun m!6441698 () Bool)

(assert (=> bs!1251517 m!6441698))

(declare-fun m!6441700 () Bool)

(assert (=> bs!1251517 m!6441700))

(declare-fun m!6441704 () Bool)

(assert (=> bs!1251517 m!6441704))

(assert (=> b!5417053 d!1728621))

(declare-fun b!5417739 () Bool)

(declare-fun e!3357966 () Bool)

(declare-fun lt!2209306 () Bool)

(declare-fun call!387747 () Bool)

(assert (=> b!5417739 (= e!3357966 (= lt!2209306 call!387747))))

(declare-fun b!5417740 () Bool)

(declare-fun e!3357965 () Bool)

(assert (=> b!5417740 (= e!3357965 (not (= (head!11622 (_2!35701 lt!2209180)) (c!944601 lt!2209147))))))

(declare-fun b!5417741 () Bool)

(declare-fun e!3357960 () Bool)

(assert (=> b!5417741 (= e!3357960 (not lt!2209306))))

(declare-fun b!5417742 () Bool)

(assert (=> b!5417742 (= e!3357966 e!3357960)))

(declare-fun c!944798 () Bool)

(assert (=> b!5417742 (= c!944798 ((_ is EmptyLang!15199) lt!2209147))))

(declare-fun b!5417743 () Bool)

(declare-fun res!2304705 () Bool)

(assert (=> b!5417743 (=> res!2304705 e!3357965)))

(assert (=> b!5417743 (= res!2304705 (not (isEmpty!33772 (tail!10719 (_2!35701 lt!2209180)))))))

(declare-fun d!1728625 () Bool)

(assert (=> d!1728625 e!3357966))

(declare-fun c!944799 () Bool)

(assert (=> d!1728625 (= c!944799 ((_ is EmptyExpr!15199) lt!2209147))))

(declare-fun e!3357963 () Bool)

(assert (=> d!1728625 (= lt!2209306 e!3357963)))

(declare-fun c!944797 () Bool)

(assert (=> d!1728625 (= c!944797 (isEmpty!33772 (_2!35701 lt!2209180)))))

(assert (=> d!1728625 (validRegex!6935 lt!2209147)))

(assert (=> d!1728625 (= (matchR!7384 lt!2209147 (_2!35701 lt!2209180)) lt!2209306)))

(declare-fun b!5417744 () Bool)

(assert (=> b!5417744 (= e!3357963 (matchR!7384 (derivativeStep!4273 lt!2209147 (head!11622 (_2!35701 lt!2209180))) (tail!10719 (_2!35701 lt!2209180))))))

(declare-fun b!5417745 () Bool)

(assert (=> b!5417745 (= e!3357963 (nullable!5368 lt!2209147))))

(declare-fun b!5417746 () Bool)

(declare-fun res!2304708 () Bool)

(declare-fun e!3357961 () Bool)

(assert (=> b!5417746 (=> (not res!2304708) (not e!3357961))))

(assert (=> b!5417746 (= res!2304708 (not call!387747))))

(declare-fun b!5417747 () Bool)

(declare-fun e!3357964 () Bool)

(assert (=> b!5417747 (= e!3357964 e!3357965)))

(declare-fun res!2304703 () Bool)

(assert (=> b!5417747 (=> res!2304703 e!3357965)))

(assert (=> b!5417747 (= res!2304703 call!387747)))

(declare-fun b!5417748 () Bool)

(declare-fun res!2304707 () Bool)

(declare-fun e!3357962 () Bool)

(assert (=> b!5417748 (=> res!2304707 e!3357962)))

(assert (=> b!5417748 (= res!2304707 (not ((_ is ElementMatch!15199) lt!2209147)))))

(assert (=> b!5417748 (= e!3357960 e!3357962)))

(declare-fun b!5417749 () Bool)

(assert (=> b!5417749 (= e!3357962 e!3357964)))

(declare-fun res!2304709 () Bool)

(assert (=> b!5417749 (=> (not res!2304709) (not e!3357964))))

(assert (=> b!5417749 (= res!2304709 (not lt!2209306))))

(declare-fun b!5417750 () Bool)

(declare-fun res!2304704 () Bool)

(assert (=> b!5417750 (=> (not res!2304704) (not e!3357961))))

(assert (=> b!5417750 (= res!2304704 (isEmpty!33772 (tail!10719 (_2!35701 lt!2209180))))))

(declare-fun b!5417751 () Bool)

(declare-fun res!2304706 () Bool)

(assert (=> b!5417751 (=> res!2304706 e!3357962)))

(assert (=> b!5417751 (= res!2304706 e!3357961)))

(declare-fun res!2304710 () Bool)

(assert (=> b!5417751 (=> (not res!2304710) (not e!3357961))))

(assert (=> b!5417751 (= res!2304710 lt!2209306)))

(declare-fun bm!387742 () Bool)

(assert (=> bm!387742 (= call!387747 (isEmpty!33772 (_2!35701 lt!2209180)))))

(declare-fun b!5417752 () Bool)

(assert (=> b!5417752 (= e!3357961 (= (head!11622 (_2!35701 lt!2209180)) (c!944601 lt!2209147)))))

(assert (= (and d!1728625 c!944797) b!5417745))

(assert (= (and d!1728625 (not c!944797)) b!5417744))

(assert (= (and d!1728625 c!944799) b!5417739))

(assert (= (and d!1728625 (not c!944799)) b!5417742))

(assert (= (and b!5417742 c!944798) b!5417741))

(assert (= (and b!5417742 (not c!944798)) b!5417748))

(assert (= (and b!5417748 (not res!2304707)) b!5417751))

(assert (= (and b!5417751 res!2304710) b!5417746))

(assert (= (and b!5417746 res!2304708) b!5417750))

(assert (= (and b!5417750 res!2304704) b!5417752))

(assert (= (and b!5417751 (not res!2304706)) b!5417749))

(assert (= (and b!5417749 res!2304709) b!5417747))

(assert (= (and b!5417747 (not res!2304703)) b!5417743))

(assert (= (and b!5417743 (not res!2304705)) b!5417740))

(assert (= (or b!5417739 b!5417746 b!5417747) bm!387742))

(assert (=> d!1728625 m!6441534))

(declare-fun m!6441712 () Bool)

(assert (=> d!1728625 m!6441712))

(assert (=> b!5417752 m!6441538))

(assert (=> bm!387742 m!6441534))

(assert (=> b!5417743 m!6441542))

(assert (=> b!5417743 m!6441542))

(declare-fun m!6441714 () Bool)

(assert (=> b!5417743 m!6441714))

(assert (=> b!5417750 m!6441542))

(assert (=> b!5417750 m!6441542))

(assert (=> b!5417750 m!6441714))

(assert (=> b!5417744 m!6441538))

(assert (=> b!5417744 m!6441538))

(declare-fun m!6441716 () Bool)

(assert (=> b!5417744 m!6441716))

(assert (=> b!5417744 m!6441542))

(assert (=> b!5417744 m!6441716))

(assert (=> b!5417744 m!6441542))

(declare-fun m!6441718 () Bool)

(assert (=> b!5417744 m!6441718))

(declare-fun m!6441722 () Bool)

(assert (=> b!5417745 m!6441722))

(assert (=> b!5417740 m!6441538))

(assert (=> b!5417053 d!1728625))

(declare-fun bs!1251518 () Bool)

(declare-fun d!1728629 () Bool)

(assert (= bs!1251518 (and d!1728629 b!5417058)))

(declare-fun lambda!283434 () Int)

(assert (=> bs!1251518 (not (= lambda!283434 lambda!283371))))

(declare-fun bs!1251519 () Bool)

(assert (= bs!1251519 (and d!1728629 d!1728479)))

(assert (=> bs!1251519 (= (= lt!2209142 (regOne!30910 r!7292)) (= lambda!283434 lambda!283405))))

(declare-fun bs!1251520 () Bool)

(assert (= bs!1251520 (and d!1728629 d!1728621)))

(assert (=> bs!1251520 (not (= lambda!283434 lambda!283433))))

(declare-fun bs!1251521 () Bool)

(assert (= bs!1251521 (and d!1728629 b!5417053)))

(assert (=> bs!1251521 (= lambda!283434 lambda!283367)))

(assert (=> bs!1251521 (not (= lambda!283434 lambda!283368))))

(assert (=> bs!1251519 (not (= lambda!283434 lambda!283406))))

(declare-fun bs!1251522 () Bool)

(assert (= bs!1251522 (and d!1728629 b!5417501)))

(assert (=> bs!1251522 (not (= lambda!283434 lambda!283419))))

(declare-fun bs!1251523 () Bool)

(assert (= bs!1251523 (and d!1728629 b!5417067)))

(assert (=> bs!1251523 (not (= lambda!283434 lambda!283363))))

(declare-fun bs!1251524 () Bool)

(assert (= bs!1251524 (and d!1728629 b!5417496)))

(assert (=> bs!1251524 (not (= lambda!283434 lambda!283420))))

(assert (=> bs!1251523 (= (= lt!2209142 (regOne!30910 r!7292)) (= lambda!283434 lambda!283362))))

(assert (=> bs!1251518 (= (and (= s!2326 (_1!35701 lt!2209169)) (= lt!2209142 (reg!15528 (regOne!30910 r!7292))) (= (regTwo!30910 r!7292) lt!2209136)) (= lambda!283434 lambda!283369))))

(assert (=> bs!1251520 (= lambda!283434 lambda!283432)))

(assert (=> bs!1251518 (not (= lambda!283434 lambda!283370))))

(declare-fun bs!1251525 () Bool)

(assert (= bs!1251525 (and d!1728629 d!1728471)))

(assert (=> bs!1251525 (= (= lt!2209142 (regOne!30910 r!7292)) (= lambda!283434 lambda!283399))))

(assert (=> d!1728629 true))

(assert (=> d!1728629 true))

(assert (=> d!1728629 true))

(assert (=> d!1728629 (= (isDefined!12013 (findConcatSeparation!1724 lt!2209142 (regTwo!30910 r!7292) Nil!61772 s!2326 s!2326)) (Exists!2380 lambda!283434))))

(declare-fun lt!2209308 () Unit!154318)

(assert (=> d!1728629 (= lt!2209308 (choose!40989 lt!2209142 (regTwo!30910 r!7292) s!2326))))

(assert (=> d!1728629 (validRegex!6935 lt!2209142)))

(assert (=> d!1728629 (= (lemmaFindConcatSeparationEquivalentToExists!1488 lt!2209142 (regTwo!30910 r!7292) s!2326) lt!2209308)))

(declare-fun bs!1251526 () Bool)

(assert (= bs!1251526 d!1728629))

(declare-fun m!6441730 () Bool)

(assert (=> bs!1251526 m!6441730))

(assert (=> bs!1251526 m!6441108))

(declare-fun m!6441732 () Bool)

(assert (=> bs!1251526 m!6441732))

(assert (=> bs!1251526 m!6441108))

(assert (=> bs!1251526 m!6441704))

(declare-fun m!6441734 () Bool)

(assert (=> bs!1251526 m!6441734))

(assert (=> b!5417053 d!1728629))

(declare-fun b!5417767 () Bool)

(declare-fun e!3357980 () Bool)

(declare-fun lt!2209309 () Bool)

(declare-fun call!387749 () Bool)

(assert (=> b!5417767 (= e!3357980 (= lt!2209309 call!387749))))

(declare-fun b!5417768 () Bool)

(declare-fun e!3357979 () Bool)

(assert (=> b!5417768 (= e!3357979 (not (= (head!11622 (_1!35701 lt!2209169)) (c!944601 lt!2209142))))))

(declare-fun b!5417769 () Bool)

(declare-fun e!3357974 () Bool)

(assert (=> b!5417769 (= e!3357974 (not lt!2209309))))

(declare-fun b!5417770 () Bool)

(assert (=> b!5417770 (= e!3357980 e!3357974)))

(declare-fun c!944804 () Bool)

(assert (=> b!5417770 (= c!944804 ((_ is EmptyLang!15199) lt!2209142))))

(declare-fun b!5417771 () Bool)

(declare-fun res!2304721 () Bool)

(assert (=> b!5417771 (=> res!2304721 e!3357979)))

(assert (=> b!5417771 (= res!2304721 (not (isEmpty!33772 (tail!10719 (_1!35701 lt!2209169)))))))

(declare-fun d!1728633 () Bool)

(assert (=> d!1728633 e!3357980))

(declare-fun c!944805 () Bool)

(assert (=> d!1728633 (= c!944805 ((_ is EmptyExpr!15199) lt!2209142))))

(declare-fun e!3357977 () Bool)

(assert (=> d!1728633 (= lt!2209309 e!3357977)))

(declare-fun c!944803 () Bool)

(assert (=> d!1728633 (= c!944803 (isEmpty!33772 (_1!35701 lt!2209169)))))

(assert (=> d!1728633 (validRegex!6935 lt!2209142)))

(assert (=> d!1728633 (= (matchR!7384 lt!2209142 (_1!35701 lt!2209169)) lt!2209309)))

(declare-fun b!5417772 () Bool)

(assert (=> b!5417772 (= e!3357977 (matchR!7384 (derivativeStep!4273 lt!2209142 (head!11622 (_1!35701 lt!2209169))) (tail!10719 (_1!35701 lt!2209169))))))

(declare-fun b!5417773 () Bool)

(assert (=> b!5417773 (= e!3357977 (nullable!5368 lt!2209142))))

(declare-fun b!5417774 () Bool)

(declare-fun res!2304724 () Bool)

(declare-fun e!3357975 () Bool)

(assert (=> b!5417774 (=> (not res!2304724) (not e!3357975))))

(assert (=> b!5417774 (= res!2304724 (not call!387749))))

(declare-fun b!5417775 () Bool)

(declare-fun e!3357978 () Bool)

(assert (=> b!5417775 (= e!3357978 e!3357979)))

(declare-fun res!2304719 () Bool)

(assert (=> b!5417775 (=> res!2304719 e!3357979)))

(assert (=> b!5417775 (= res!2304719 call!387749)))

(declare-fun b!5417776 () Bool)

(declare-fun res!2304723 () Bool)

(declare-fun e!3357976 () Bool)

(assert (=> b!5417776 (=> res!2304723 e!3357976)))

(assert (=> b!5417776 (= res!2304723 (not ((_ is ElementMatch!15199) lt!2209142)))))

(assert (=> b!5417776 (= e!3357974 e!3357976)))

(declare-fun b!5417777 () Bool)

(assert (=> b!5417777 (= e!3357976 e!3357978)))

(declare-fun res!2304725 () Bool)

(assert (=> b!5417777 (=> (not res!2304725) (not e!3357978))))

(assert (=> b!5417777 (= res!2304725 (not lt!2209309))))

(declare-fun b!5417778 () Bool)

(declare-fun res!2304720 () Bool)

(assert (=> b!5417778 (=> (not res!2304720) (not e!3357975))))

(assert (=> b!5417778 (= res!2304720 (isEmpty!33772 (tail!10719 (_1!35701 lt!2209169))))))

(declare-fun b!5417779 () Bool)

(declare-fun res!2304722 () Bool)

(assert (=> b!5417779 (=> res!2304722 e!3357976)))

(assert (=> b!5417779 (= res!2304722 e!3357975)))

(declare-fun res!2304726 () Bool)

(assert (=> b!5417779 (=> (not res!2304726) (not e!3357975))))

(assert (=> b!5417779 (= res!2304726 lt!2209309)))

(declare-fun bm!387744 () Bool)

(assert (=> bm!387744 (= call!387749 (isEmpty!33772 (_1!35701 lt!2209169)))))

(declare-fun b!5417780 () Bool)

(assert (=> b!5417780 (= e!3357975 (= (head!11622 (_1!35701 lt!2209169)) (c!944601 lt!2209142)))))

(assert (= (and d!1728633 c!944803) b!5417773))

(assert (= (and d!1728633 (not c!944803)) b!5417772))

(assert (= (and d!1728633 c!944805) b!5417767))

(assert (= (and d!1728633 (not c!944805)) b!5417770))

(assert (= (and b!5417770 c!944804) b!5417769))

(assert (= (and b!5417770 (not c!944804)) b!5417776))

(assert (= (and b!5417776 (not res!2304723)) b!5417779))

(assert (= (and b!5417779 res!2304726) b!5417774))

(assert (= (and b!5417774 res!2304724) b!5417778))

(assert (= (and b!5417778 res!2304720) b!5417780))

(assert (= (and b!5417779 (not res!2304722)) b!5417777))

(assert (= (and b!5417777 res!2304725) b!5417775))

(assert (= (and b!5417775 (not res!2304719)) b!5417771))

(assert (= (and b!5417771 (not res!2304721)) b!5417768))

(assert (= (or b!5417767 b!5417774 b!5417775) bm!387744))

(declare-fun m!6441736 () Bool)

(assert (=> d!1728633 m!6441736))

(assert (=> d!1728633 m!6441704))

(declare-fun m!6441738 () Bool)

(assert (=> b!5417780 m!6441738))

(assert (=> bm!387744 m!6441736))

(declare-fun m!6441740 () Bool)

(assert (=> b!5417771 m!6441740))

(assert (=> b!5417771 m!6441740))

(declare-fun m!6441742 () Bool)

(assert (=> b!5417771 m!6441742))

(assert (=> b!5417778 m!6441740))

(assert (=> b!5417778 m!6441740))

(assert (=> b!5417778 m!6441742))

(assert (=> b!5417772 m!6441738))

(assert (=> b!5417772 m!6441738))

(declare-fun m!6441744 () Bool)

(assert (=> b!5417772 m!6441744))

(assert (=> b!5417772 m!6441740))

(assert (=> b!5417772 m!6441744))

(assert (=> b!5417772 m!6441740))

(declare-fun m!6441746 () Bool)

(assert (=> b!5417772 m!6441746))

(declare-fun m!6441748 () Bool)

(assert (=> b!5417773 m!6441748))

(assert (=> b!5417768 m!6441738))

(assert (=> b!5417053 d!1728633))

(declare-fun b!5417781 () Bool)

(declare-fun e!3357981 () Bool)

(declare-fun lt!2209311 () Option!15310)

(assert (=> b!5417781 (= e!3357981 (= (++!13572 (_1!35701 (get!21301 lt!2209311)) (_2!35701 (get!21301 lt!2209311))) s!2326))))

(declare-fun b!5417782 () Bool)

(declare-fun e!3357984 () Bool)

(assert (=> b!5417782 (= e!3357984 (matchR!7384 (regTwo!30910 r!7292) s!2326))))

(declare-fun b!5417784 () Bool)

(declare-fun lt!2209312 () Unit!154318)

(declare-fun lt!2209310 () Unit!154318)

(assert (=> b!5417784 (= lt!2209312 lt!2209310)))

(assert (=> b!5417784 (= (++!13572 (++!13572 Nil!61772 (Cons!61772 (h!68220 s!2326) Nil!61772)) (t!375119 s!2326)) s!2326)))

(assert (=> b!5417784 (= lt!2209310 (lemmaMoveElementToOtherListKeepsConcatEq!1846 Nil!61772 (h!68220 s!2326) (t!375119 s!2326) s!2326))))

(declare-fun e!3357985 () Option!15310)

(assert (=> b!5417784 (= e!3357985 (findConcatSeparation!1724 lt!2209142 (regTwo!30910 r!7292) (++!13572 Nil!61772 (Cons!61772 (h!68220 s!2326) Nil!61772)) (t!375119 s!2326) s!2326))))

(declare-fun b!5417785 () Bool)

(declare-fun res!2304729 () Bool)

(assert (=> b!5417785 (=> (not res!2304729) (not e!3357981))))

(assert (=> b!5417785 (= res!2304729 (matchR!7384 (regTwo!30910 r!7292) (_2!35701 (get!21301 lt!2209311))))))

(declare-fun b!5417786 () Bool)

(declare-fun res!2304727 () Bool)

(assert (=> b!5417786 (=> (not res!2304727) (not e!3357981))))

(assert (=> b!5417786 (= res!2304727 (matchR!7384 lt!2209142 (_1!35701 (get!21301 lt!2209311))))))

(declare-fun b!5417787 () Bool)

(declare-fun e!3357983 () Option!15310)

(assert (=> b!5417787 (= e!3357983 e!3357985)))

(declare-fun c!944807 () Bool)

(assert (=> b!5417787 (= c!944807 ((_ is Nil!61772) s!2326))))

(declare-fun b!5417788 () Bool)

(assert (=> b!5417788 (= e!3357983 (Some!15309 (tuple2!64797 Nil!61772 s!2326)))))

(declare-fun b!5417789 () Bool)

(declare-fun e!3357982 () Bool)

(assert (=> b!5417789 (= e!3357982 (not (isDefined!12013 lt!2209311)))))

(declare-fun d!1728635 () Bool)

(assert (=> d!1728635 e!3357982))

(declare-fun res!2304730 () Bool)

(assert (=> d!1728635 (=> res!2304730 e!3357982)))

(assert (=> d!1728635 (= res!2304730 e!3357981)))

(declare-fun res!2304728 () Bool)

(assert (=> d!1728635 (=> (not res!2304728) (not e!3357981))))

(assert (=> d!1728635 (= res!2304728 (isDefined!12013 lt!2209311))))

(assert (=> d!1728635 (= lt!2209311 e!3357983)))

(declare-fun c!944806 () Bool)

(assert (=> d!1728635 (= c!944806 e!3357984)))

(declare-fun res!2304731 () Bool)

(assert (=> d!1728635 (=> (not res!2304731) (not e!3357984))))

(assert (=> d!1728635 (= res!2304731 (matchR!7384 lt!2209142 Nil!61772))))

(assert (=> d!1728635 (validRegex!6935 lt!2209142)))

(assert (=> d!1728635 (= (findConcatSeparation!1724 lt!2209142 (regTwo!30910 r!7292) Nil!61772 s!2326 s!2326) lt!2209311)))

(declare-fun b!5417783 () Bool)

(assert (=> b!5417783 (= e!3357985 None!15309)))

(assert (= (and d!1728635 res!2304731) b!5417782))

(assert (= (and d!1728635 c!944806) b!5417788))

(assert (= (and d!1728635 (not c!944806)) b!5417787))

(assert (= (and b!5417787 c!944807) b!5417783))

(assert (= (and b!5417787 (not c!944807)) b!5417784))

(assert (= (and d!1728635 res!2304728) b!5417786))

(assert (= (and b!5417786 res!2304727) b!5417785))

(assert (= (and b!5417785 res!2304729) b!5417781))

(assert (= (and d!1728635 (not res!2304730)) b!5417789))

(declare-fun m!6441750 () Bool)

(assert (=> b!5417785 m!6441750))

(declare-fun m!6441752 () Bool)

(assert (=> b!5417785 m!6441752))

(declare-fun m!6441754 () Bool)

(assert (=> d!1728635 m!6441754))

(declare-fun m!6441756 () Bool)

(assert (=> d!1728635 m!6441756))

(assert (=> d!1728635 m!6441704))

(assert (=> b!5417782 m!6441242))

(assert (=> b!5417781 m!6441750))

(declare-fun m!6441758 () Bool)

(assert (=> b!5417781 m!6441758))

(assert (=> b!5417786 m!6441750))

(declare-fun m!6441760 () Bool)

(assert (=> b!5417786 m!6441760))

(assert (=> b!5417789 m!6441754))

(assert (=> b!5417784 m!6441248))

(assert (=> b!5417784 m!6441248))

(assert (=> b!5417784 m!6441250))

(assert (=> b!5417784 m!6441252))

(assert (=> b!5417784 m!6441248))

(declare-fun m!6441762 () Bool)

(assert (=> b!5417784 m!6441762))

(assert (=> b!5417053 d!1728635))

(declare-fun d!1728637 () Bool)

(assert (=> d!1728637 (= (isDefined!12013 lt!2209190) (not (isEmpty!33771 lt!2209190)))))

(declare-fun bs!1251527 () Bool)

(assert (= bs!1251527 d!1728637))

(declare-fun m!6441764 () Bool)

(assert (=> bs!1251527 m!6441764))

(assert (=> b!5417053 d!1728637))

(declare-fun d!1728639 () Bool)

(assert (=> d!1728639 (= (get!21301 lt!2209190) (v!51338 lt!2209190))))

(assert (=> b!5417053 d!1728639))

(declare-fun bs!1251528 () Bool)

(declare-fun b!5417795 () Bool)

(assert (= bs!1251528 (and b!5417795 b!5417058)))

(declare-fun lambda!283435 () Int)

(assert (=> bs!1251528 (= (and (= s!2326 (_1!35701 lt!2209169)) (= (reg!15528 lt!2209185) (reg!15528 (regOne!30910 r!7292))) (= lt!2209185 lt!2209136)) (= lambda!283435 lambda!283371))))

(declare-fun bs!1251529 () Bool)

(assert (= bs!1251529 (and b!5417795 d!1728479)))

(assert (=> bs!1251529 (not (= lambda!283435 lambda!283405))))

(declare-fun bs!1251530 () Bool)

(assert (= bs!1251530 (and b!5417795 d!1728621)))

(assert (=> bs!1251530 (not (= lambda!283435 lambda!283433))))

(declare-fun bs!1251531 () Bool)

(assert (= bs!1251531 (and b!5417795 b!5417053)))

(assert (=> bs!1251531 (not (= lambda!283435 lambda!283367))))

(assert (=> bs!1251531 (not (= lambda!283435 lambda!283368))))

(assert (=> bs!1251529 (not (= lambda!283435 lambda!283406))))

(declare-fun bs!1251532 () Bool)

(assert (= bs!1251532 (and b!5417795 b!5417501)))

(assert (=> bs!1251532 (= (and (= (reg!15528 lt!2209185) (reg!15528 r!7292)) (= lt!2209185 r!7292)) (= lambda!283435 lambda!283419))))

(declare-fun bs!1251533 () Bool)

(assert (= bs!1251533 (and b!5417795 d!1728629)))

(assert (=> bs!1251533 (not (= lambda!283435 lambda!283434))))

(declare-fun bs!1251534 () Bool)

(assert (= bs!1251534 (and b!5417795 b!5417067)))

(assert (=> bs!1251534 (not (= lambda!283435 lambda!283363))))

(declare-fun bs!1251535 () Bool)

(assert (= bs!1251535 (and b!5417795 b!5417496)))

(assert (=> bs!1251535 (not (= lambda!283435 lambda!283420))))

(assert (=> bs!1251534 (not (= lambda!283435 lambda!283362))))

(assert (=> bs!1251528 (not (= lambda!283435 lambda!283369))))

(assert (=> bs!1251530 (not (= lambda!283435 lambda!283432))))

(assert (=> bs!1251528 (not (= lambda!283435 lambda!283370))))

(declare-fun bs!1251536 () Bool)

(assert (= bs!1251536 (and b!5417795 d!1728471)))

(assert (=> bs!1251536 (not (= lambda!283435 lambda!283399))))

(assert (=> b!5417795 true))

(assert (=> b!5417795 true))

(declare-fun bs!1251537 () Bool)

(declare-fun b!5417790 () Bool)

(assert (= bs!1251537 (and b!5417790 b!5417058)))

(declare-fun lambda!283436 () Int)

(assert (=> bs!1251537 (not (= lambda!283436 lambda!283371))))

(declare-fun bs!1251538 () Bool)

(assert (= bs!1251538 (and b!5417790 d!1728479)))

(assert (=> bs!1251538 (not (= lambda!283436 lambda!283405))))

(declare-fun bs!1251539 () Bool)

(assert (= bs!1251539 (and b!5417790 d!1728621)))

(assert (=> bs!1251539 (= (and (= (regOne!30910 lt!2209185) lt!2209142) (= (regTwo!30910 lt!2209185) (regTwo!30910 r!7292))) (= lambda!283436 lambda!283433))))

(declare-fun bs!1251540 () Bool)

(assert (= bs!1251540 (and b!5417790 b!5417053)))

(assert (=> bs!1251540 (not (= lambda!283436 lambda!283367))))

(assert (=> bs!1251540 (= (and (= (regOne!30910 lt!2209185) lt!2209142) (= (regTwo!30910 lt!2209185) (regTwo!30910 r!7292))) (= lambda!283436 lambda!283368))))

(assert (=> bs!1251538 (= (and (= (regOne!30910 lt!2209185) (regOne!30910 r!7292)) (= (regTwo!30910 lt!2209185) (regTwo!30910 r!7292))) (= lambda!283436 lambda!283406))))

(declare-fun bs!1251541 () Bool)

(assert (= bs!1251541 (and b!5417790 b!5417501)))

(assert (=> bs!1251541 (not (= lambda!283436 lambda!283419))))

(declare-fun bs!1251542 () Bool)

(assert (= bs!1251542 (and b!5417790 d!1728629)))

(assert (=> bs!1251542 (not (= lambda!283436 lambda!283434))))

(declare-fun bs!1251543 () Bool)

(assert (= bs!1251543 (and b!5417790 b!5417067)))

(assert (=> bs!1251543 (= (and (= (regOne!30910 lt!2209185) (regOne!30910 r!7292)) (= (regTwo!30910 lt!2209185) (regTwo!30910 r!7292))) (= lambda!283436 lambda!283363))))

(declare-fun bs!1251544 () Bool)

(assert (= bs!1251544 (and b!5417790 b!5417496)))

(assert (=> bs!1251544 (= (and (= (regOne!30910 lt!2209185) (regOne!30910 r!7292)) (= (regTwo!30910 lt!2209185) (regTwo!30910 r!7292))) (= lambda!283436 lambda!283420))))

(assert (=> bs!1251537 (not (= lambda!283436 lambda!283369))))

(assert (=> bs!1251539 (not (= lambda!283436 lambda!283432))))

(assert (=> bs!1251537 (= (and (= s!2326 (_1!35701 lt!2209169)) (= (regOne!30910 lt!2209185) (reg!15528 (regOne!30910 r!7292))) (= (regTwo!30910 lt!2209185) lt!2209136)) (= lambda!283436 lambda!283370))))

(declare-fun bs!1251545 () Bool)

(assert (= bs!1251545 (and b!5417790 d!1728471)))

(assert (=> bs!1251545 (not (= lambda!283436 lambda!283399))))

(declare-fun bs!1251546 () Bool)

(assert (= bs!1251546 (and b!5417790 b!5417795)))

(assert (=> bs!1251546 (not (= lambda!283436 lambda!283435))))

(assert (=> bs!1251543 (not (= lambda!283436 lambda!283362))))

(assert (=> b!5417790 true))

(assert (=> b!5417790 true))

(declare-fun e!3357990 () Bool)

(declare-fun call!387751 () Bool)

(assert (=> b!5417790 (= e!3357990 call!387751)))

(declare-fun b!5417791 () Bool)

(declare-fun e!3357987 () Bool)

(declare-fun e!3357986 () Bool)

(assert (=> b!5417791 (= e!3357987 e!3357986)))

(declare-fun res!2304732 () Bool)

(assert (=> b!5417791 (= res!2304732 (not ((_ is EmptyLang!15199) lt!2209185)))))

(assert (=> b!5417791 (=> (not res!2304732) (not e!3357986))))

(declare-fun c!944810 () Bool)

(declare-fun bm!387745 () Bool)

(assert (=> bm!387745 (= call!387751 (Exists!2380 (ite c!944810 lambda!283435 lambda!283436)))))

(declare-fun b!5417792 () Bool)

(declare-fun res!2304733 () Bool)

(declare-fun e!3357992 () Bool)

(assert (=> b!5417792 (=> res!2304733 e!3357992)))

(declare-fun call!387750 () Bool)

(assert (=> b!5417792 (= res!2304733 call!387750)))

(assert (=> b!5417792 (= e!3357990 e!3357992)))

(declare-fun b!5417793 () Bool)

(declare-fun e!3357988 () Bool)

(assert (=> b!5417793 (= e!3357988 e!3357990)))

(assert (=> b!5417793 (= c!944810 ((_ is Star!15199) lt!2209185))))

(declare-fun b!5417794 () Bool)

(declare-fun c!944811 () Bool)

(assert (=> b!5417794 (= c!944811 ((_ is ElementMatch!15199) lt!2209185))))

(declare-fun e!3357991 () Bool)

(assert (=> b!5417794 (= e!3357986 e!3357991)))

(declare-fun d!1728641 () Bool)

(declare-fun c!944809 () Bool)

(assert (=> d!1728641 (= c!944809 ((_ is EmptyExpr!15199) lt!2209185))))

(assert (=> d!1728641 (= (matchRSpec!2302 lt!2209185 s!2326) e!3357987)))

(assert (=> b!5417795 (= e!3357992 call!387751)))

(declare-fun b!5417796 () Bool)

(assert (=> b!5417796 (= e!3357991 (= s!2326 (Cons!61772 (c!944601 lt!2209185) Nil!61772)))))

(declare-fun b!5417797 () Bool)

(assert (=> b!5417797 (= e!3357987 call!387750)))

(declare-fun b!5417798 () Bool)

(declare-fun e!3357989 () Bool)

(assert (=> b!5417798 (= e!3357989 (matchRSpec!2302 (regTwo!30911 lt!2209185) s!2326))))

(declare-fun bm!387746 () Bool)

(assert (=> bm!387746 (= call!387750 (isEmpty!33772 s!2326))))

(declare-fun b!5417799 () Bool)

(assert (=> b!5417799 (= e!3357988 e!3357989)))

(declare-fun res!2304734 () Bool)

(assert (=> b!5417799 (= res!2304734 (matchRSpec!2302 (regOne!30911 lt!2209185) s!2326))))

(assert (=> b!5417799 (=> res!2304734 e!3357989)))

(declare-fun b!5417800 () Bool)

(declare-fun c!944808 () Bool)

(assert (=> b!5417800 (= c!944808 ((_ is Union!15199) lt!2209185))))

(assert (=> b!5417800 (= e!3357991 e!3357988)))

(assert (= (and d!1728641 c!944809) b!5417797))

(assert (= (and d!1728641 (not c!944809)) b!5417791))

(assert (= (and b!5417791 res!2304732) b!5417794))

(assert (= (and b!5417794 c!944811) b!5417796))

(assert (= (and b!5417794 (not c!944811)) b!5417800))

(assert (= (and b!5417800 c!944808) b!5417799))

(assert (= (and b!5417800 (not c!944808)) b!5417793))

(assert (= (and b!5417799 (not res!2304734)) b!5417798))

(assert (= (and b!5417793 c!944810) b!5417792))

(assert (= (and b!5417793 (not c!944810)) b!5417790))

(assert (= (and b!5417792 (not res!2304733)) b!5417795))

(assert (= (or b!5417795 b!5417790) bm!387745))

(assert (= (or b!5417797 b!5417792) bm!387746))

(declare-fun m!6441766 () Bool)

(assert (=> bm!387745 m!6441766))

(declare-fun m!6441768 () Bool)

(assert (=> b!5417798 m!6441768))

(assert (=> bm!387746 m!6441336))

(declare-fun m!6441770 () Bool)

(assert (=> b!5417799 m!6441770))

(assert (=> b!5417053 d!1728641))

(declare-fun d!1728643 () Bool)

(assert (=> d!1728643 (= (matchR!7384 (Concat!24044 (Concat!24044 (reg!15528 (regOne!30910 r!7292)) lt!2209136) (regTwo!30910 r!7292)) s!2326) (matchR!7384 (Concat!24044 (reg!15528 (regOne!30910 r!7292)) (Concat!24044 lt!2209136 (regTwo!30910 r!7292))) s!2326))))

(declare-fun lt!2209325 () Unit!154318)

(declare-fun choose!41002 (Regex!15199 Regex!15199 Regex!15199 List!61896) Unit!154318)

(assert (=> d!1728643 (= lt!2209325 (choose!41002 (reg!15528 (regOne!30910 r!7292)) lt!2209136 (regTwo!30910 r!7292) s!2326))))

(declare-fun e!3358017 () Bool)

(assert (=> d!1728643 e!3358017))

(declare-fun res!2304762 () Bool)

(assert (=> d!1728643 (=> (not res!2304762) (not e!3358017))))

(assert (=> d!1728643 (= res!2304762 (validRegex!6935 (reg!15528 (regOne!30910 r!7292))))))

(assert (=> d!1728643 (= (lemmaConcatAssociative!52 (reg!15528 (regOne!30910 r!7292)) lt!2209136 (regTwo!30910 r!7292) s!2326) lt!2209325)))

(declare-fun b!5417846 () Bool)

(declare-fun res!2304763 () Bool)

(assert (=> b!5417846 (=> (not res!2304763) (not e!3358017))))

(assert (=> b!5417846 (= res!2304763 (validRegex!6935 lt!2209136))))

(declare-fun b!5417847 () Bool)

(assert (=> b!5417847 (= e!3358017 (validRegex!6935 (regTwo!30910 r!7292)))))

(assert (= (and d!1728643 res!2304762) b!5417846))

(assert (= (and b!5417846 res!2304763) b!5417847))

(declare-fun m!6441790 () Bool)

(assert (=> d!1728643 m!6441790))

(declare-fun m!6441796 () Bool)

(assert (=> d!1728643 m!6441796))

(declare-fun m!6441798 () Bool)

(assert (=> d!1728643 m!6441798))

(assert (=> d!1728643 m!6440936))

(declare-fun m!6441804 () Bool)

(assert (=> b!5417846 m!6441804))

(declare-fun m!6441806 () Bool)

(assert (=> b!5417847 m!6441806))

(assert (=> b!5417053 d!1728643))

(declare-fun d!1728649 () Bool)

(assert (=> d!1728649 (matchR!7384 (Concat!24044 (reg!15528 (regOne!30910 r!7292)) lt!2209147) (++!13572 (_1!35701 lt!2209180) (_2!35701 lt!2209180)))))

(declare-fun lt!2209328 () Unit!154318)

(declare-fun choose!41003 (Regex!15199 Regex!15199 List!61896 List!61896) Unit!154318)

(assert (=> d!1728649 (= lt!2209328 (choose!41003 (reg!15528 (regOne!30910 r!7292)) lt!2209147 (_1!35701 lt!2209180) (_2!35701 lt!2209180)))))

(declare-fun e!3358020 () Bool)

(assert (=> d!1728649 e!3358020))

(declare-fun res!2304766 () Bool)

(assert (=> d!1728649 (=> (not res!2304766) (not e!3358020))))

(assert (=> d!1728649 (= res!2304766 (validRegex!6935 (reg!15528 (regOne!30910 r!7292))))))

(assert (=> d!1728649 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!222 (reg!15528 (regOne!30910 r!7292)) lt!2209147 (_1!35701 lt!2209180) (_2!35701 lt!2209180)) lt!2209328)))

(declare-fun b!5417850 () Bool)

(assert (=> b!5417850 (= e!3358020 (validRegex!6935 lt!2209147))))

(assert (= (and d!1728649 res!2304766) b!5417850))

(assert (=> d!1728649 m!6441042))

(assert (=> d!1728649 m!6441042))

(declare-fun m!6441816 () Bool)

(assert (=> d!1728649 m!6441816))

(declare-fun m!6441818 () Bool)

(assert (=> d!1728649 m!6441818))

(assert (=> d!1728649 m!6440936))

(assert (=> b!5417850 m!6441712))

(assert (=> b!5417053 d!1728649))

(assert (=> b!5417053 d!1728579))

(declare-fun bs!1251560 () Bool)

(declare-fun d!1728655 () Bool)

(assert (= bs!1251560 (and d!1728655 b!5417072)))

(declare-fun lambda!283442 () Int)

(assert (=> bs!1251560 (= lambda!283442 lambda!283366)))

(declare-fun bs!1251561 () Bool)

(assert (= bs!1251561 (and d!1728655 d!1728455)))

(assert (=> bs!1251561 (= lambda!283442 lambda!283385)))

(declare-fun bs!1251562 () Bool)

(assert (= bs!1251562 (and d!1728655 d!1728459)))

(assert (=> bs!1251562 (= lambda!283442 lambda!283390)))

(declare-fun bs!1251563 () Bool)

(assert (= bs!1251563 (and d!1728655 d!1728573)))

(assert (=> bs!1251563 (= lambda!283442 lambda!283424)))

(assert (=> d!1728655 (matchZipper!1443 (store ((as const (Array Context!9166 Bool)) false) (Context!9167 (++!13571 (exprs!5083 lt!2209134) (exprs!5083 lt!2209161))) true) (++!13572 (_1!35701 lt!2209180) (_2!35701 lt!2209180)))))

(declare-fun lt!2209338 () Unit!154318)

(assert (=> d!1728655 (= lt!2209338 (lemmaConcatPreservesForall!224 (exprs!5083 lt!2209134) (exprs!5083 lt!2209161) lambda!283442))))

(declare-fun lt!2209337 () Unit!154318)

(declare-fun choose!41005 (Context!9166 Context!9166 List!61896 List!61896) Unit!154318)

(assert (=> d!1728655 (= lt!2209337 (choose!41005 lt!2209134 lt!2209161 (_1!35701 lt!2209180) (_2!35701 lt!2209180)))))

(assert (=> d!1728655 (matchZipper!1443 (store ((as const (Array Context!9166 Bool)) false) lt!2209134 true) (_1!35701 lt!2209180))))

(assert (=> d!1728655 (= (lemmaConcatenateContextMatchesConcatOfStrings!72 lt!2209134 lt!2209161 (_1!35701 lt!2209180) (_2!35701 lt!2209180)) lt!2209337)))

(declare-fun bs!1251564 () Bool)

(assert (= bs!1251564 d!1728655))

(assert (=> bs!1251564 m!6441056))

(declare-fun m!6441830 () Bool)

(assert (=> bs!1251564 m!6441830))

(declare-fun m!6441832 () Bool)

(assert (=> bs!1251564 m!6441832))

(assert (=> bs!1251564 m!6441042))

(declare-fun m!6441834 () Bool)

(assert (=> bs!1251564 m!6441834))

(assert (=> bs!1251564 m!6441042))

(declare-fun m!6441836 () Bool)

(assert (=> bs!1251564 m!6441836))

(assert (=> bs!1251564 m!6441056))

(assert (=> bs!1251564 m!6441832))

(declare-fun m!6441838 () Bool)

(assert (=> bs!1251564 m!6441838))

(declare-fun m!6441840 () Bool)

(assert (=> bs!1251564 m!6441840))

(assert (=> b!5417053 d!1728655))

(declare-fun d!1728663 () Bool)

(assert (=> d!1728663 (= (matchR!7384 lt!2209147 (_2!35701 lt!2209180)) (matchZipper!1443 lt!2209145 (_2!35701 lt!2209180)))))

(declare-fun lt!2209345 () Unit!154318)

(declare-fun choose!41006 ((InoxSet Context!9166) List!61898 Regex!15199 List!61896) Unit!154318)

(assert (=> d!1728663 (= lt!2209345 (choose!41006 lt!2209145 lt!2209155 lt!2209147 (_2!35701 lt!2209180)))))

(assert (=> d!1728663 (validRegex!6935 lt!2209147)))

(assert (=> d!1728663 (= (theoremZipperRegexEquiv!513 lt!2209145 lt!2209155 lt!2209147 (_2!35701 lt!2209180)) lt!2209345)))

(declare-fun bs!1251565 () Bool)

(assert (= bs!1251565 d!1728663))

(assert (=> bs!1251565 m!6441082))

(assert (=> bs!1251565 m!6440960))

(declare-fun m!6441842 () Bool)

(assert (=> bs!1251565 m!6441842))

(assert (=> bs!1251565 m!6441712))

(assert (=> b!5417053 d!1728663))

(declare-fun d!1728665 () Bool)

(assert (=> d!1728665 (= (Exists!2380 lambda!283367) (choose!40988 lambda!283367))))

(declare-fun bs!1251566 () Bool)

(assert (= bs!1251566 d!1728665))

(declare-fun m!6441844 () Bool)

(assert (=> bs!1251566 m!6441844))

(assert (=> b!5417053 d!1728665))

(declare-fun d!1728667 () Bool)

(assert (=> d!1728667 (= (matchR!7384 (reg!15528 (regOne!30910 r!7292)) (_1!35701 lt!2209180)) (matchZipper!1443 lt!2209150 (_1!35701 lt!2209180)))))

(declare-fun lt!2209346 () Unit!154318)

(assert (=> d!1728667 (= lt!2209346 (choose!41006 lt!2209150 lt!2209140 (reg!15528 (regOne!30910 r!7292)) (_1!35701 lt!2209180)))))

(assert (=> d!1728667 (validRegex!6935 (reg!15528 (regOne!30910 r!7292)))))

(assert (=> d!1728667 (= (theoremZipperRegexEquiv!513 lt!2209150 lt!2209140 (reg!15528 (regOne!30910 r!7292)) (_1!35701 lt!2209180)) lt!2209346)))

(declare-fun bs!1251567 () Bool)

(assert (= bs!1251567 d!1728667))

(assert (=> bs!1251567 m!6441110))

(assert (=> bs!1251567 m!6441040))

(declare-fun m!6441846 () Bool)

(assert (=> bs!1251567 m!6441846))

(assert (=> bs!1251567 m!6440936))

(assert (=> b!5417053 d!1728667))

(assert (=> b!5417053 d!1728581))

(declare-fun d!1728669 () Bool)

(declare-fun e!3358028 () Bool)

(assert (=> d!1728669 e!3358028))

(declare-fun res!2304776 () Bool)

(assert (=> d!1728669 (=> (not res!2304776) (not e!3358028))))

(declare-fun lt!2209351 () List!61896)

(declare-fun content!11103 (List!61896) (InoxSet C!30668))

(assert (=> d!1728669 (= res!2304776 (= (content!11103 lt!2209351) ((_ map or) (content!11103 (_1!35701 lt!2209149)) (content!11103 (++!13572 (_2!35701 lt!2209149) (_2!35701 lt!2209169))))))))

(declare-fun e!3358027 () List!61896)

(assert (=> d!1728669 (= lt!2209351 e!3358027)))

(declare-fun c!944823 () Bool)

(assert (=> d!1728669 (= c!944823 ((_ is Nil!61772) (_1!35701 lt!2209149)))))

(assert (=> d!1728669 (= (++!13572 (_1!35701 lt!2209149) (++!13572 (_2!35701 lt!2209149) (_2!35701 lt!2209169))) lt!2209351)))

(declare-fun b!5417866 () Bool)

(assert (=> b!5417866 (= e!3358028 (or (not (= (++!13572 (_2!35701 lt!2209149) (_2!35701 lt!2209169)) Nil!61772)) (= lt!2209351 (_1!35701 lt!2209149))))))

(declare-fun b!5417865 () Bool)

(declare-fun res!2304775 () Bool)

(assert (=> b!5417865 (=> (not res!2304775) (not e!3358028))))

(declare-fun size!39872 (List!61896) Int)

(assert (=> b!5417865 (= res!2304775 (= (size!39872 lt!2209351) (+ (size!39872 (_1!35701 lt!2209149)) (size!39872 (++!13572 (_2!35701 lt!2209149) (_2!35701 lt!2209169))))))))

(declare-fun b!5417864 () Bool)

(assert (=> b!5417864 (= e!3358027 (Cons!61772 (h!68220 (_1!35701 lt!2209149)) (++!13572 (t!375119 (_1!35701 lt!2209149)) (++!13572 (_2!35701 lt!2209149) (_2!35701 lt!2209169)))))))

(declare-fun b!5417863 () Bool)

(assert (=> b!5417863 (= e!3358027 (++!13572 (_2!35701 lt!2209149) (_2!35701 lt!2209169)))))

(assert (= (and d!1728669 c!944823) b!5417863))

(assert (= (and d!1728669 (not c!944823)) b!5417864))

(assert (= (and d!1728669 res!2304776) b!5417865))

(assert (= (and b!5417865 res!2304775) b!5417866))

(declare-fun m!6441860 () Bool)

(assert (=> d!1728669 m!6441860))

(declare-fun m!6441862 () Bool)

(assert (=> d!1728669 m!6441862))

(assert (=> d!1728669 m!6440926))

(declare-fun m!6441864 () Bool)

(assert (=> d!1728669 m!6441864))

(declare-fun m!6441866 () Bool)

(assert (=> b!5417865 m!6441866))

(declare-fun m!6441868 () Bool)

(assert (=> b!5417865 m!6441868))

(assert (=> b!5417865 m!6440926))

(declare-fun m!6441870 () Bool)

(assert (=> b!5417865 m!6441870))

(assert (=> b!5417864 m!6440926))

(declare-fun m!6441872 () Bool)

(assert (=> b!5417864 m!6441872))

(assert (=> b!5417058 d!1728669))

(declare-fun d!1728673 () Bool)

(assert (=> d!1728673 (= (matchR!7384 lt!2209142 (_1!35701 lt!2209169)) (matchRSpec!2302 lt!2209142 (_1!35701 lt!2209169)))))

(declare-fun lt!2209352 () Unit!154318)

(assert (=> d!1728673 (= lt!2209352 (choose!40996 lt!2209142 (_1!35701 lt!2209169)))))

(assert (=> d!1728673 (validRegex!6935 lt!2209142)))

(assert (=> d!1728673 (= (mainMatchTheorem!2302 lt!2209142 (_1!35701 lt!2209169)) lt!2209352)))

(declare-fun bs!1251574 () Bool)

(assert (= bs!1251574 d!1728673))

(assert (=> bs!1251574 m!6441106))

(assert (=> bs!1251574 m!6440914))

(declare-fun m!6441874 () Bool)

(assert (=> bs!1251574 m!6441874))

(assert (=> bs!1251574 m!6441704))

(assert (=> b!5417058 d!1728673))

(declare-fun b!5417867 () Bool)

(declare-fun e!3358034 () Bool)

(declare-fun call!387755 () Bool)

(assert (=> b!5417867 (= e!3358034 call!387755)))

(declare-fun bm!387748 () Bool)

(declare-fun call!387754 () Bool)

(declare-fun c!944824 () Bool)

(assert (=> bm!387748 (= call!387754 (validRegex!6935 (ite c!944824 (regOne!30911 (reg!15528 (regOne!30910 r!7292))) (regOne!30910 (reg!15528 (regOne!30910 r!7292))))))))

(declare-fun b!5417868 () Bool)

(declare-fun e!3358030 () Bool)

(declare-fun call!387753 () Bool)

(assert (=> b!5417868 (= e!3358030 call!387753)))

(declare-fun b!5417869 () Bool)

(declare-fun e!3358035 () Bool)

(declare-fun e!3358033 () Bool)

(assert (=> b!5417869 (= e!3358035 e!3358033)))

(assert (=> b!5417869 (= c!944824 ((_ is Union!15199) (reg!15528 (regOne!30910 r!7292))))))

(declare-fun bm!387749 () Bool)

(assert (=> bm!387749 (= call!387755 call!387753)))

(declare-fun b!5417870 () Bool)

(declare-fun e!3358031 () Bool)

(assert (=> b!5417870 (= e!3358031 call!387755)))

(declare-fun b!5417871 () Bool)

(declare-fun res!2304778 () Bool)

(assert (=> b!5417871 (=> (not res!2304778) (not e!3358031))))

(assert (=> b!5417871 (= res!2304778 call!387754)))

(assert (=> b!5417871 (= e!3358033 e!3358031)))

(declare-fun b!5417872 () Bool)

(declare-fun e!3358032 () Bool)

(assert (=> b!5417872 (= e!3358032 e!3358035)))

(declare-fun c!944825 () Bool)

(assert (=> b!5417872 (= c!944825 ((_ is Star!15199) (reg!15528 (regOne!30910 r!7292))))))

(declare-fun d!1728675 () Bool)

(declare-fun res!2304780 () Bool)

(assert (=> d!1728675 (=> res!2304780 e!3358032)))

(assert (=> d!1728675 (= res!2304780 ((_ is ElementMatch!15199) (reg!15528 (regOne!30910 r!7292))))))

(assert (=> d!1728675 (= (validRegex!6935 (reg!15528 (regOne!30910 r!7292))) e!3358032)))

(declare-fun b!5417873 () Bool)

(declare-fun res!2304781 () Bool)

(declare-fun e!3358029 () Bool)

(assert (=> b!5417873 (=> res!2304781 e!3358029)))

(assert (=> b!5417873 (= res!2304781 (not ((_ is Concat!24044) (reg!15528 (regOne!30910 r!7292)))))))

(assert (=> b!5417873 (= e!3358033 e!3358029)))

(declare-fun bm!387750 () Bool)

(assert (=> bm!387750 (= call!387753 (validRegex!6935 (ite c!944825 (reg!15528 (reg!15528 (regOne!30910 r!7292))) (ite c!944824 (regTwo!30911 (reg!15528 (regOne!30910 r!7292))) (regTwo!30910 (reg!15528 (regOne!30910 r!7292)))))))))

(declare-fun b!5417874 () Bool)

(assert (=> b!5417874 (= e!3358029 e!3358034)))

(declare-fun res!2304779 () Bool)

(assert (=> b!5417874 (=> (not res!2304779) (not e!3358034))))

(assert (=> b!5417874 (= res!2304779 call!387754)))

(declare-fun b!5417875 () Bool)

(assert (=> b!5417875 (= e!3358035 e!3358030)))

(declare-fun res!2304777 () Bool)

(assert (=> b!5417875 (= res!2304777 (not (nullable!5368 (reg!15528 (reg!15528 (regOne!30910 r!7292))))))))

(assert (=> b!5417875 (=> (not res!2304777) (not e!3358030))))

(assert (= (and d!1728675 (not res!2304780)) b!5417872))

(assert (= (and b!5417872 c!944825) b!5417875))

(assert (= (and b!5417872 (not c!944825)) b!5417869))

(assert (= (and b!5417875 res!2304777) b!5417868))

(assert (= (and b!5417869 c!944824) b!5417871))

(assert (= (and b!5417869 (not c!944824)) b!5417873))

(assert (= (and b!5417871 res!2304778) b!5417870))

(assert (= (and b!5417873 (not res!2304781)) b!5417874))

(assert (= (and b!5417874 res!2304779) b!5417867))

(assert (= (or b!5417870 b!5417867) bm!387749))

(assert (= (or b!5417871 b!5417874) bm!387748))

(assert (= (or b!5417868 bm!387749) bm!387750))

(declare-fun m!6441876 () Bool)

(assert (=> bm!387748 m!6441876))

(declare-fun m!6441878 () Bool)

(assert (=> bm!387750 m!6441878))

(declare-fun m!6441880 () Bool)

(assert (=> b!5417875 m!6441880))

(assert (=> b!5417058 d!1728675))

(declare-fun d!1728677 () Bool)

(declare-fun e!3358037 () Bool)

(assert (=> d!1728677 e!3358037))

(declare-fun res!2304783 () Bool)

(assert (=> d!1728677 (=> (not res!2304783) (not e!3358037))))

(declare-fun lt!2209353 () List!61896)

(assert (=> d!1728677 (= res!2304783 (= (content!11103 lt!2209353) ((_ map or) (content!11103 (_2!35701 lt!2209149)) (content!11103 (_2!35701 lt!2209169)))))))

(declare-fun e!3358036 () List!61896)

(assert (=> d!1728677 (= lt!2209353 e!3358036)))

(declare-fun c!944826 () Bool)

(assert (=> d!1728677 (= c!944826 ((_ is Nil!61772) (_2!35701 lt!2209149)))))

(assert (=> d!1728677 (= (++!13572 (_2!35701 lt!2209149) (_2!35701 lt!2209169)) lt!2209353)))

(declare-fun b!5417879 () Bool)

(assert (=> b!5417879 (= e!3358037 (or (not (= (_2!35701 lt!2209169) Nil!61772)) (= lt!2209353 (_2!35701 lt!2209149))))))

(declare-fun b!5417878 () Bool)

(declare-fun res!2304782 () Bool)

(assert (=> b!5417878 (=> (not res!2304782) (not e!3358037))))

(assert (=> b!5417878 (= res!2304782 (= (size!39872 lt!2209353) (+ (size!39872 (_2!35701 lt!2209149)) (size!39872 (_2!35701 lt!2209169)))))))

(declare-fun b!5417877 () Bool)

(assert (=> b!5417877 (= e!3358036 (Cons!61772 (h!68220 (_2!35701 lt!2209149)) (++!13572 (t!375119 (_2!35701 lt!2209149)) (_2!35701 lt!2209169))))))

(declare-fun b!5417876 () Bool)

(assert (=> b!5417876 (= e!3358036 (_2!35701 lt!2209169))))

(assert (= (and d!1728677 c!944826) b!5417876))

(assert (= (and d!1728677 (not c!944826)) b!5417877))

(assert (= (and d!1728677 res!2304783) b!5417878))

(assert (= (and b!5417878 res!2304782) b!5417879))

(declare-fun m!6441882 () Bool)

(assert (=> d!1728677 m!6441882))

(declare-fun m!6441884 () Bool)

(assert (=> d!1728677 m!6441884))

(declare-fun m!6441886 () Bool)

(assert (=> d!1728677 m!6441886))

(declare-fun m!6441888 () Bool)

(assert (=> b!5417878 m!6441888))

(declare-fun m!6441890 () Bool)

(assert (=> b!5417878 m!6441890))

(declare-fun m!6441892 () Bool)

(assert (=> b!5417878 m!6441892))

(declare-fun m!6441894 () Bool)

(assert (=> b!5417877 m!6441894))

(assert (=> b!5417058 d!1728677))

(declare-fun bs!1251575 () Bool)

(declare-fun b!5417885 () Bool)

(assert (= bs!1251575 (and b!5417885 b!5417058)))

(declare-fun lambda!283446 () Int)

(assert (=> bs!1251575 (= (and (= (reg!15528 lt!2209142) (reg!15528 (regOne!30910 r!7292))) (= lt!2209142 lt!2209136)) (= lambda!283446 lambda!283371))))

(declare-fun bs!1251576 () Bool)

(assert (= bs!1251576 (and b!5417885 d!1728479)))

(assert (=> bs!1251576 (not (= lambda!283446 lambda!283405))))

(declare-fun bs!1251577 () Bool)

(assert (= bs!1251577 (and b!5417885 d!1728621)))

(assert (=> bs!1251577 (not (= lambda!283446 lambda!283433))))

(declare-fun bs!1251578 () Bool)

(assert (= bs!1251578 (and b!5417885 b!5417053)))

(assert (=> bs!1251578 (not (= lambda!283446 lambda!283367))))

(assert (=> bs!1251578 (not (= lambda!283446 lambda!283368))))

(declare-fun bs!1251579 () Bool)

(assert (= bs!1251579 (and b!5417885 b!5417501)))

(assert (=> bs!1251579 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 lt!2209142) (reg!15528 r!7292)) (= lt!2209142 r!7292)) (= lambda!283446 lambda!283419))))

(declare-fun bs!1251580 () Bool)

(assert (= bs!1251580 (and b!5417885 d!1728629)))

(assert (=> bs!1251580 (not (= lambda!283446 lambda!283434))))

(declare-fun bs!1251581 () Bool)

(assert (= bs!1251581 (and b!5417885 b!5417067)))

(assert (=> bs!1251581 (not (= lambda!283446 lambda!283363))))

(declare-fun bs!1251582 () Bool)

(assert (= bs!1251582 (and b!5417885 b!5417496)))

(assert (=> bs!1251582 (not (= lambda!283446 lambda!283420))))

(assert (=> bs!1251575 (not (= lambda!283446 lambda!283369))))

(assert (=> bs!1251577 (not (= lambda!283446 lambda!283432))))

(assert (=> bs!1251575 (not (= lambda!283446 lambda!283370))))

(declare-fun bs!1251583 () Bool)

(assert (= bs!1251583 (and b!5417885 d!1728471)))

(assert (=> bs!1251583 (not (= lambda!283446 lambda!283399))))

(declare-fun bs!1251584 () Bool)

(assert (= bs!1251584 (and b!5417885 b!5417790)))

(assert (=> bs!1251584 (not (= lambda!283446 lambda!283436))))

(assert (=> bs!1251576 (not (= lambda!283446 lambda!283406))))

(declare-fun bs!1251585 () Bool)

(assert (= bs!1251585 (and b!5417885 b!5417795)))

(assert (=> bs!1251585 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 lt!2209142) (reg!15528 lt!2209185)) (= lt!2209142 lt!2209185)) (= lambda!283446 lambda!283435))))

(assert (=> bs!1251581 (not (= lambda!283446 lambda!283362))))

(assert (=> b!5417885 true))

(assert (=> b!5417885 true))

(declare-fun bs!1251586 () Bool)

(declare-fun b!5417880 () Bool)

(assert (= bs!1251586 (and b!5417880 b!5417058)))

(declare-fun lambda!283451 () Int)

(assert (=> bs!1251586 (not (= lambda!283451 lambda!283371))))

(declare-fun bs!1251587 () Bool)

(assert (= bs!1251587 (and b!5417880 d!1728479)))

(assert (=> bs!1251587 (not (= lambda!283451 lambda!283405))))

(declare-fun bs!1251588 () Bool)

(assert (= bs!1251588 (and b!5417880 d!1728621)))

(assert (=> bs!1251588 (= (and (= (_1!35701 lt!2209169) s!2326) (= (regOne!30910 lt!2209142) lt!2209142) (= (regTwo!30910 lt!2209142) (regTwo!30910 r!7292))) (= lambda!283451 lambda!283433))))

(declare-fun bs!1251589 () Bool)

(assert (= bs!1251589 (and b!5417880 b!5417053)))

(assert (=> bs!1251589 (not (= lambda!283451 lambda!283367))))

(assert (=> bs!1251589 (= (and (= (_1!35701 lt!2209169) s!2326) (= (regOne!30910 lt!2209142) lt!2209142) (= (regTwo!30910 lt!2209142) (regTwo!30910 r!7292))) (= lambda!283451 lambda!283368))))

(declare-fun bs!1251590 () Bool)

(assert (= bs!1251590 (and b!5417880 b!5417501)))

(assert (=> bs!1251590 (not (= lambda!283451 lambda!283419))))

(declare-fun bs!1251591 () Bool)

(assert (= bs!1251591 (and b!5417880 b!5417885)))

(assert (=> bs!1251591 (not (= lambda!283451 lambda!283446))))

(declare-fun bs!1251592 () Bool)

(assert (= bs!1251592 (and b!5417880 d!1728629)))

(assert (=> bs!1251592 (not (= lambda!283451 lambda!283434))))

(declare-fun bs!1251593 () Bool)

(assert (= bs!1251593 (and b!5417880 b!5417067)))

(assert (=> bs!1251593 (= (and (= (_1!35701 lt!2209169) s!2326) (= (regOne!30910 lt!2209142) (regOne!30910 r!7292)) (= (regTwo!30910 lt!2209142) (regTwo!30910 r!7292))) (= lambda!283451 lambda!283363))))

(declare-fun bs!1251594 () Bool)

(assert (= bs!1251594 (and b!5417880 b!5417496)))

(assert (=> bs!1251594 (= (and (= (_1!35701 lt!2209169) s!2326) (= (regOne!30910 lt!2209142) (regOne!30910 r!7292)) (= (regTwo!30910 lt!2209142) (regTwo!30910 r!7292))) (= lambda!283451 lambda!283420))))

(assert (=> bs!1251586 (not (= lambda!283451 lambda!283369))))

(assert (=> bs!1251588 (not (= lambda!283451 lambda!283432))))

(assert (=> bs!1251586 (= (and (= (regOne!30910 lt!2209142) (reg!15528 (regOne!30910 r!7292))) (= (regTwo!30910 lt!2209142) lt!2209136)) (= lambda!283451 lambda!283370))))

(declare-fun bs!1251595 () Bool)

(assert (= bs!1251595 (and b!5417880 d!1728471)))

(assert (=> bs!1251595 (not (= lambda!283451 lambda!283399))))

(declare-fun bs!1251596 () Bool)

(assert (= bs!1251596 (and b!5417880 b!5417790)))

(assert (=> bs!1251596 (= (and (= (_1!35701 lt!2209169) s!2326) (= (regOne!30910 lt!2209142) (regOne!30910 lt!2209185)) (= (regTwo!30910 lt!2209142) (regTwo!30910 lt!2209185))) (= lambda!283451 lambda!283436))))

(assert (=> bs!1251587 (= (and (= (_1!35701 lt!2209169) s!2326) (= (regOne!30910 lt!2209142) (regOne!30910 r!7292)) (= (regTwo!30910 lt!2209142) (regTwo!30910 r!7292))) (= lambda!283451 lambda!283406))))

(declare-fun bs!1251598 () Bool)

(assert (= bs!1251598 (and b!5417880 b!5417795)))

(assert (=> bs!1251598 (not (= lambda!283451 lambda!283435))))

(assert (=> bs!1251593 (not (= lambda!283451 lambda!283362))))

(assert (=> b!5417880 true))

(assert (=> b!5417880 true))

(declare-fun e!3358042 () Bool)

(declare-fun call!387757 () Bool)

(assert (=> b!5417880 (= e!3358042 call!387757)))

(declare-fun b!5417881 () Bool)

(declare-fun e!3358039 () Bool)

(declare-fun e!3358038 () Bool)

(assert (=> b!5417881 (= e!3358039 e!3358038)))

(declare-fun res!2304784 () Bool)

(assert (=> b!5417881 (= res!2304784 (not ((_ is EmptyLang!15199) lt!2209142)))))

(assert (=> b!5417881 (=> (not res!2304784) (not e!3358038))))

(declare-fun bm!387751 () Bool)

(declare-fun c!944829 () Bool)

(assert (=> bm!387751 (= call!387757 (Exists!2380 (ite c!944829 lambda!283446 lambda!283451)))))

(declare-fun b!5417882 () Bool)

(declare-fun res!2304785 () Bool)

(declare-fun e!3358044 () Bool)

(assert (=> b!5417882 (=> res!2304785 e!3358044)))

(declare-fun call!387756 () Bool)

(assert (=> b!5417882 (= res!2304785 call!387756)))

(assert (=> b!5417882 (= e!3358042 e!3358044)))

(declare-fun b!5417883 () Bool)

(declare-fun e!3358040 () Bool)

(assert (=> b!5417883 (= e!3358040 e!3358042)))

(assert (=> b!5417883 (= c!944829 ((_ is Star!15199) lt!2209142))))

(declare-fun b!5417884 () Bool)

(declare-fun c!944830 () Bool)

(assert (=> b!5417884 (= c!944830 ((_ is ElementMatch!15199) lt!2209142))))

(declare-fun e!3358043 () Bool)

(assert (=> b!5417884 (= e!3358038 e!3358043)))

(declare-fun d!1728679 () Bool)

(declare-fun c!944828 () Bool)

(assert (=> d!1728679 (= c!944828 ((_ is EmptyExpr!15199) lt!2209142))))

(assert (=> d!1728679 (= (matchRSpec!2302 lt!2209142 (_1!35701 lt!2209169)) e!3358039)))

(assert (=> b!5417885 (= e!3358044 call!387757)))

(declare-fun b!5417886 () Bool)

(assert (=> b!5417886 (= e!3358043 (= (_1!35701 lt!2209169) (Cons!61772 (c!944601 lt!2209142) Nil!61772)))))

(declare-fun b!5417887 () Bool)

(assert (=> b!5417887 (= e!3358039 call!387756)))

(declare-fun b!5417888 () Bool)

(declare-fun e!3358041 () Bool)

(assert (=> b!5417888 (= e!3358041 (matchRSpec!2302 (regTwo!30911 lt!2209142) (_1!35701 lt!2209169)))))

(declare-fun bm!387752 () Bool)

(assert (=> bm!387752 (= call!387756 (isEmpty!33772 (_1!35701 lt!2209169)))))

(declare-fun b!5417889 () Bool)

(assert (=> b!5417889 (= e!3358040 e!3358041)))

(declare-fun res!2304786 () Bool)

(assert (=> b!5417889 (= res!2304786 (matchRSpec!2302 (regOne!30911 lt!2209142) (_1!35701 lt!2209169)))))

(assert (=> b!5417889 (=> res!2304786 e!3358041)))

(declare-fun b!5417890 () Bool)

(declare-fun c!944827 () Bool)

(assert (=> b!5417890 (= c!944827 ((_ is Union!15199) lt!2209142))))

(assert (=> b!5417890 (= e!3358043 e!3358040)))

(assert (= (and d!1728679 c!944828) b!5417887))

(assert (= (and d!1728679 (not c!944828)) b!5417881))

(assert (= (and b!5417881 res!2304784) b!5417884))

(assert (= (and b!5417884 c!944830) b!5417886))

(assert (= (and b!5417884 (not c!944830)) b!5417890))

(assert (= (and b!5417890 c!944827) b!5417889))

(assert (= (and b!5417890 (not c!944827)) b!5417883))

(assert (= (and b!5417889 (not res!2304786)) b!5417888))

(assert (= (and b!5417883 c!944829) b!5417882))

(assert (= (and b!5417883 (not c!944829)) b!5417880))

(assert (= (and b!5417882 (not res!2304785)) b!5417885))

(assert (= (or b!5417885 b!5417880) bm!387751))

(assert (= (or b!5417887 b!5417882) bm!387752))

(declare-fun m!6441896 () Bool)

(assert (=> bm!387751 m!6441896))

(declare-fun m!6441898 () Bool)

(assert (=> b!5417888 m!6441898))

(assert (=> bm!387752 m!6441736))

(declare-fun m!6441900 () Bool)

(assert (=> b!5417889 m!6441900))

(assert (=> b!5417058 d!1728679))

(declare-fun bs!1251608 () Bool)

(declare-fun d!1728681 () Bool)

(assert (= bs!1251608 (and d!1728681 b!5417058)))

(declare-fun lambda!283453 () Int)

(assert (=> bs!1251608 (not (= lambda!283453 lambda!283371))))

(declare-fun bs!1251609 () Bool)

(assert (= bs!1251609 (and d!1728681 d!1728479)))

(assert (=> bs!1251609 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 r!7292)) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283453 lambda!283405))))

(declare-fun bs!1251610 () Bool)

(assert (= bs!1251610 (and d!1728681 b!5417053)))

(assert (=> bs!1251610 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) lt!2209142) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283453 lambda!283367))))

(assert (=> bs!1251610 (not (= lambda!283453 lambda!283368))))

(declare-fun bs!1251611 () Bool)

(assert (= bs!1251611 (and d!1728681 b!5417501)))

(assert (=> bs!1251611 (not (= lambda!283453 lambda!283419))))

(declare-fun bs!1251612 () Bool)

(assert (= bs!1251612 (and d!1728681 b!5417885)))

(assert (=> bs!1251612 (not (= lambda!283453 lambda!283446))))

(declare-fun bs!1251613 () Bool)

(assert (= bs!1251613 (and d!1728681 d!1728629)))

(assert (=> bs!1251613 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) lt!2209142) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283453 lambda!283434))))

(declare-fun bs!1251614 () Bool)

(assert (= bs!1251614 (and d!1728681 b!5417067)))

(assert (=> bs!1251614 (not (= lambda!283453 lambda!283363))))

(declare-fun bs!1251615 () Bool)

(assert (= bs!1251615 (and d!1728681 b!5417496)))

(assert (=> bs!1251615 (not (= lambda!283453 lambda!283420))))

(assert (=> bs!1251608 (= lambda!283453 lambda!283369)))

(declare-fun bs!1251616 () Bool)

(assert (= bs!1251616 (and d!1728681 d!1728621)))

(assert (=> bs!1251616 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) lt!2209142) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283453 lambda!283432))))

(assert (=> bs!1251608 (not (= lambda!283453 lambda!283370))))

(declare-fun bs!1251617 () Bool)

(assert (= bs!1251617 (and d!1728681 d!1728471)))

(assert (=> bs!1251617 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 r!7292)) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283453 lambda!283399))))

(assert (=> bs!1251616 (not (= lambda!283453 lambda!283433))))

(declare-fun bs!1251618 () Bool)

(assert (= bs!1251618 (and d!1728681 b!5417880)))

(assert (=> bs!1251618 (not (= lambda!283453 lambda!283451))))

(declare-fun bs!1251619 () Bool)

(assert (= bs!1251619 (and d!1728681 b!5417790)))

(assert (=> bs!1251619 (not (= lambda!283453 lambda!283436))))

(assert (=> bs!1251609 (not (= lambda!283453 lambda!283406))))

(declare-fun bs!1251621 () Bool)

(assert (= bs!1251621 (and d!1728681 b!5417795)))

(assert (=> bs!1251621 (not (= lambda!283453 lambda!283435))))

(assert (=> bs!1251614 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 r!7292)) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283453 lambda!283362))))

(assert (=> d!1728681 true))

(assert (=> d!1728681 true))

(assert (=> d!1728681 true))

(assert (=> d!1728681 (= (isDefined!12013 (findConcatSeparation!1724 (reg!15528 (regOne!30910 r!7292)) lt!2209136 Nil!61772 (_1!35701 lt!2209169) (_1!35701 lt!2209169))) (Exists!2380 lambda!283453))))

(declare-fun lt!2209357 () Unit!154318)

(assert (=> d!1728681 (= lt!2209357 (choose!40989 (reg!15528 (regOne!30910 r!7292)) lt!2209136 (_1!35701 lt!2209169)))))

(assert (=> d!1728681 (validRegex!6935 (reg!15528 (regOne!30910 r!7292)))))

(assert (=> d!1728681 (= (lemmaFindConcatSeparationEquivalentToExists!1488 (reg!15528 (regOne!30910 r!7292)) lt!2209136 (_1!35701 lt!2209169)) lt!2209357)))

(declare-fun bs!1251622 () Bool)

(assert (= bs!1251622 d!1728681))

(declare-fun m!6441902 () Bool)

(assert (=> bs!1251622 m!6441902))

(assert (=> bs!1251622 m!6440934))

(declare-fun m!6441906 () Bool)

(assert (=> bs!1251622 m!6441906))

(assert (=> bs!1251622 m!6440934))

(assert (=> bs!1251622 m!6440936))

(declare-fun m!6441910 () Bool)

(assert (=> bs!1251622 m!6441910))

(assert (=> b!5417058 d!1728681))

(declare-fun d!1728683 () Bool)

(declare-fun e!3358050 () Bool)

(assert (=> d!1728683 e!3358050))

(declare-fun res!2304796 () Bool)

(assert (=> d!1728683 (=> (not res!2304796) (not e!3358050))))

(declare-fun lt!2209358 () List!61896)

(assert (=> d!1728683 (= res!2304796 (= (content!11103 lt!2209358) ((_ map or) (content!11103 (_1!35701 lt!2209149)) (content!11103 (_2!35701 lt!2209149)))))))

(declare-fun e!3358049 () List!61896)

(assert (=> d!1728683 (= lt!2209358 e!3358049)))

(declare-fun c!944831 () Bool)

(assert (=> d!1728683 (= c!944831 ((_ is Nil!61772) (_1!35701 lt!2209149)))))

(assert (=> d!1728683 (= (++!13572 (_1!35701 lt!2209149) (_2!35701 lt!2209149)) lt!2209358)))

(declare-fun b!5417902 () Bool)

(assert (=> b!5417902 (= e!3358050 (or (not (= (_2!35701 lt!2209149) Nil!61772)) (= lt!2209358 (_1!35701 lt!2209149))))))

(declare-fun b!5417901 () Bool)

(declare-fun res!2304795 () Bool)

(assert (=> b!5417901 (=> (not res!2304795) (not e!3358050))))

(assert (=> b!5417901 (= res!2304795 (= (size!39872 lt!2209358) (+ (size!39872 (_1!35701 lt!2209149)) (size!39872 (_2!35701 lt!2209149)))))))

(declare-fun b!5417900 () Bool)

(assert (=> b!5417900 (= e!3358049 (Cons!61772 (h!68220 (_1!35701 lt!2209149)) (++!13572 (t!375119 (_1!35701 lt!2209149)) (_2!35701 lt!2209149))))))

(declare-fun b!5417899 () Bool)

(assert (=> b!5417899 (= e!3358049 (_2!35701 lt!2209149))))

(assert (= (and d!1728683 c!944831) b!5417899))

(assert (= (and d!1728683 (not c!944831)) b!5417900))

(assert (= (and d!1728683 res!2304796) b!5417901))

(assert (= (and b!5417901 res!2304795) b!5417902))

(declare-fun m!6441914 () Bool)

(assert (=> d!1728683 m!6441914))

(assert (=> d!1728683 m!6441862))

(assert (=> d!1728683 m!6441884))

(declare-fun m!6441916 () Bool)

(assert (=> b!5417901 m!6441916))

(assert (=> b!5417901 m!6441868))

(assert (=> b!5417901 m!6441890))

(declare-fun m!6441918 () Bool)

(assert (=> b!5417900 m!6441918))

(assert (=> b!5417058 d!1728683))

(declare-fun d!1728687 () Bool)

(assert (=> d!1728687 (= (++!13572 (++!13572 (_1!35701 lt!2209149) (_2!35701 lt!2209149)) (_2!35701 lt!2209169)) (++!13572 (_1!35701 lt!2209149) (++!13572 (_2!35701 lt!2209149) (_2!35701 lt!2209169))))))

(declare-fun lt!2209364 () Unit!154318)

(declare-fun choose!41012 (List!61896 List!61896 List!61896) Unit!154318)

(assert (=> d!1728687 (= lt!2209364 (choose!41012 (_1!35701 lt!2209149) (_2!35701 lt!2209149) (_2!35701 lt!2209169)))))

(assert (=> d!1728687 (= (lemmaConcatAssociativity!2834 (_1!35701 lt!2209149) (_2!35701 lt!2209149) (_2!35701 lt!2209169)) lt!2209364)))

(declare-fun bs!1251625 () Bool)

(assert (= bs!1251625 d!1728687))

(assert (=> bs!1251625 m!6440926))

(assert (=> bs!1251625 m!6440926))

(assert (=> bs!1251625 m!6440932))

(assert (=> bs!1251625 m!6440916))

(assert (=> bs!1251625 m!6440918))

(declare-fun m!6441944 () Bool)

(assert (=> bs!1251625 m!6441944))

(assert (=> bs!1251625 m!6440916))

(assert (=> b!5417058 d!1728687))

(declare-fun d!1728697 () Bool)

(assert (=> d!1728697 (= (isDefined!12013 lt!2209139) (not (isEmpty!33771 lt!2209139)))))

(declare-fun bs!1251626 () Bool)

(assert (= bs!1251626 d!1728697))

(declare-fun m!6441946 () Bool)

(assert (=> bs!1251626 m!6441946))

(assert (=> b!5417058 d!1728697))

(declare-fun bs!1251627 () Bool)

(declare-fun d!1728699 () Bool)

(assert (= bs!1251627 (and d!1728699 b!5417058)))

(declare-fun lambda!283459 () Int)

(assert (=> bs!1251627 (not (= lambda!283459 lambda!283371))))

(declare-fun bs!1251628 () Bool)

(assert (= bs!1251628 (and d!1728699 d!1728479)))

(assert (=> bs!1251628 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 r!7292)) (= (Star!15199 (reg!15528 (regOne!30910 r!7292))) (regTwo!30910 r!7292))) (= lambda!283459 lambda!283405))))

(declare-fun bs!1251629 () Bool)

(assert (= bs!1251629 (and d!1728699 b!5417053)))

(assert (=> bs!1251629 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) lt!2209142) (= (Star!15199 (reg!15528 (regOne!30910 r!7292))) (regTwo!30910 r!7292))) (= lambda!283459 lambda!283367))))

(declare-fun bs!1251630 () Bool)

(assert (= bs!1251630 (and d!1728699 d!1728681)))

(assert (=> bs!1251630 (= (= (Star!15199 (reg!15528 (regOne!30910 r!7292))) lt!2209136) (= lambda!283459 lambda!283453))))

(assert (=> bs!1251629 (not (= lambda!283459 lambda!283368))))

(declare-fun bs!1251631 () Bool)

(assert (= bs!1251631 (and d!1728699 b!5417501)))

(assert (=> bs!1251631 (not (= lambda!283459 lambda!283419))))

(declare-fun bs!1251632 () Bool)

(assert (= bs!1251632 (and d!1728699 b!5417885)))

(assert (=> bs!1251632 (not (= lambda!283459 lambda!283446))))

(declare-fun bs!1251633 () Bool)

(assert (= bs!1251633 (and d!1728699 d!1728629)))

(assert (=> bs!1251633 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) lt!2209142) (= (Star!15199 (reg!15528 (regOne!30910 r!7292))) (regTwo!30910 r!7292))) (= lambda!283459 lambda!283434))))

(declare-fun bs!1251634 () Bool)

(assert (= bs!1251634 (and d!1728699 b!5417067)))

(assert (=> bs!1251634 (not (= lambda!283459 lambda!283363))))

(declare-fun bs!1251635 () Bool)

(assert (= bs!1251635 (and d!1728699 b!5417496)))

(assert (=> bs!1251635 (not (= lambda!283459 lambda!283420))))

(assert (=> bs!1251627 (= (= (Star!15199 (reg!15528 (regOne!30910 r!7292))) lt!2209136) (= lambda!283459 lambda!283369))))

(declare-fun bs!1251636 () Bool)

(assert (= bs!1251636 (and d!1728699 d!1728621)))

(assert (=> bs!1251636 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) lt!2209142) (= (Star!15199 (reg!15528 (regOne!30910 r!7292))) (regTwo!30910 r!7292))) (= lambda!283459 lambda!283432))))

(assert (=> bs!1251627 (not (= lambda!283459 lambda!283370))))

(declare-fun bs!1251637 () Bool)

(assert (= bs!1251637 (and d!1728699 d!1728471)))

(assert (=> bs!1251637 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 r!7292)) (= (Star!15199 (reg!15528 (regOne!30910 r!7292))) (regTwo!30910 r!7292))) (= lambda!283459 lambda!283399))))

(assert (=> bs!1251636 (not (= lambda!283459 lambda!283433))))

(declare-fun bs!1251638 () Bool)

(assert (= bs!1251638 (and d!1728699 b!5417880)))

(assert (=> bs!1251638 (not (= lambda!283459 lambda!283451))))

(declare-fun bs!1251639 () Bool)

(assert (= bs!1251639 (and d!1728699 b!5417790)))

(assert (=> bs!1251639 (not (= lambda!283459 lambda!283436))))

(assert (=> bs!1251628 (not (= lambda!283459 lambda!283406))))

(declare-fun bs!1251640 () Bool)

(assert (= bs!1251640 (and d!1728699 b!5417795)))

(assert (=> bs!1251640 (not (= lambda!283459 lambda!283435))))

(assert (=> bs!1251634 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 r!7292)) (= (Star!15199 (reg!15528 (regOne!30910 r!7292))) (regTwo!30910 r!7292))) (= lambda!283459 lambda!283362))))

(assert (=> d!1728699 true))

(assert (=> d!1728699 true))

(declare-fun lambda!283462 () Int)

(assert (=> bs!1251627 (= (= (Star!15199 (reg!15528 (regOne!30910 r!7292))) lt!2209136) (= lambda!283462 lambda!283371))))

(assert (=> bs!1251628 (not (= lambda!283462 lambda!283405))))

(declare-fun bs!1251641 () Bool)

(assert (= bs!1251641 d!1728699))

(assert (=> bs!1251641 (not (= lambda!283462 lambda!283459))))

(assert (=> bs!1251629 (not (= lambda!283462 lambda!283367))))

(assert (=> bs!1251630 (not (= lambda!283462 lambda!283453))))

(assert (=> bs!1251629 (not (= lambda!283462 lambda!283368))))

(assert (=> bs!1251631 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (reg!15528 r!7292)) (= (Star!15199 (reg!15528 (regOne!30910 r!7292))) r!7292)) (= lambda!283462 lambda!283419))))

(assert (=> bs!1251632 (= (and (= (reg!15528 (regOne!30910 r!7292)) (reg!15528 lt!2209142)) (= (Star!15199 (reg!15528 (regOne!30910 r!7292))) lt!2209142)) (= lambda!283462 lambda!283446))))

(assert (=> bs!1251633 (not (= lambda!283462 lambda!283434))))

(assert (=> bs!1251634 (not (= lambda!283462 lambda!283363))))

(assert (=> bs!1251635 (not (= lambda!283462 lambda!283420))))

(assert (=> bs!1251627 (not (= lambda!283462 lambda!283369))))

(assert (=> bs!1251636 (not (= lambda!283462 lambda!283432))))

(assert (=> bs!1251627 (not (= lambda!283462 lambda!283370))))

(assert (=> bs!1251637 (not (= lambda!283462 lambda!283399))))

(assert (=> bs!1251636 (not (= lambda!283462 lambda!283433))))

(assert (=> bs!1251638 (not (= lambda!283462 lambda!283451))))

(assert (=> bs!1251639 (not (= lambda!283462 lambda!283436))))

(assert (=> bs!1251628 (not (= lambda!283462 lambda!283406))))

(assert (=> bs!1251640 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (reg!15528 lt!2209185)) (= (Star!15199 (reg!15528 (regOne!30910 r!7292))) lt!2209185)) (= lambda!283462 lambda!283435))))

(assert (=> bs!1251634 (not (= lambda!283462 lambda!283362))))

(assert (=> d!1728699 true))

(assert (=> d!1728699 true))

(assert (=> d!1728699 (= (Exists!2380 lambda!283459) (Exists!2380 lambda!283462))))

(declare-fun lt!2209373 () Unit!154318)

(declare-fun choose!41013 (Regex!15199 List!61896) Unit!154318)

(assert (=> d!1728699 (= lt!2209373 (choose!41013 (reg!15528 (regOne!30910 r!7292)) (_1!35701 lt!2209169)))))

(assert (=> d!1728699 (validRegex!6935 (reg!15528 (regOne!30910 r!7292)))))

(assert (=> d!1728699 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!410 (reg!15528 (regOne!30910 r!7292)) (_1!35701 lt!2209169)) lt!2209373)))

(declare-fun m!6441962 () Bool)

(assert (=> bs!1251641 m!6441962))

(declare-fun m!6441964 () Bool)

(assert (=> bs!1251641 m!6441964))

(declare-fun m!6441966 () Bool)

(assert (=> bs!1251641 m!6441966))

(assert (=> bs!1251641 m!6440936))

(assert (=> b!5417058 d!1728699))

(declare-fun d!1728705 () Bool)

(assert (=> d!1728705 (= (Exists!2380 lambda!283369) (choose!40988 lambda!283369))))

(declare-fun bs!1251647 () Bool)

(assert (= bs!1251647 d!1728705))

(declare-fun m!6441968 () Bool)

(assert (=> bs!1251647 m!6441968))

(assert (=> b!5417058 d!1728705))

(declare-fun d!1728707 () Bool)

(assert (=> d!1728707 (= (Exists!2380 lambda!283370) (choose!40988 lambda!283370))))

(declare-fun bs!1251649 () Bool)

(assert (= bs!1251649 d!1728707))

(declare-fun m!6441970 () Bool)

(assert (=> bs!1251649 m!6441970))

(assert (=> b!5417058 d!1728707))

(declare-fun b!5417980 () Bool)

(declare-fun e!3358093 () Bool)

(declare-fun lt!2209378 () Option!15310)

(assert (=> b!5417980 (= e!3358093 (= (++!13572 (_1!35701 (get!21301 lt!2209378)) (_2!35701 (get!21301 lt!2209378))) (_1!35701 lt!2209169)))))

(declare-fun b!5417981 () Bool)

(declare-fun e!3358096 () Bool)

(assert (=> b!5417981 (= e!3358096 (matchR!7384 lt!2209136 (_1!35701 lt!2209169)))))

(declare-fun b!5417983 () Bool)

(declare-fun lt!2209379 () Unit!154318)

(declare-fun lt!2209377 () Unit!154318)

(assert (=> b!5417983 (= lt!2209379 lt!2209377)))

(assert (=> b!5417983 (= (++!13572 (++!13572 Nil!61772 (Cons!61772 (h!68220 (_1!35701 lt!2209169)) Nil!61772)) (t!375119 (_1!35701 lt!2209169))) (_1!35701 lt!2209169))))

(assert (=> b!5417983 (= lt!2209377 (lemmaMoveElementToOtherListKeepsConcatEq!1846 Nil!61772 (h!68220 (_1!35701 lt!2209169)) (t!375119 (_1!35701 lt!2209169)) (_1!35701 lt!2209169)))))

(declare-fun e!3358097 () Option!15310)

(assert (=> b!5417983 (= e!3358097 (findConcatSeparation!1724 (reg!15528 (regOne!30910 r!7292)) lt!2209136 (++!13572 Nil!61772 (Cons!61772 (h!68220 (_1!35701 lt!2209169)) Nil!61772)) (t!375119 (_1!35701 lt!2209169)) (_1!35701 lt!2209169)))))

(declare-fun b!5417984 () Bool)

(declare-fun res!2304840 () Bool)

(assert (=> b!5417984 (=> (not res!2304840) (not e!3358093))))

(assert (=> b!5417984 (= res!2304840 (matchR!7384 lt!2209136 (_2!35701 (get!21301 lt!2209378))))))

(declare-fun b!5417985 () Bool)

(declare-fun res!2304838 () Bool)

(assert (=> b!5417985 (=> (not res!2304838) (not e!3358093))))

(assert (=> b!5417985 (= res!2304838 (matchR!7384 (reg!15528 (regOne!30910 r!7292)) (_1!35701 (get!21301 lt!2209378))))))

(declare-fun b!5417986 () Bool)

(declare-fun e!3358095 () Option!15310)

(assert (=> b!5417986 (= e!3358095 e!3358097)))

(declare-fun c!944851 () Bool)

(assert (=> b!5417986 (= c!944851 ((_ is Nil!61772) (_1!35701 lt!2209169)))))

(declare-fun b!5417987 () Bool)

(assert (=> b!5417987 (= e!3358095 (Some!15309 (tuple2!64797 Nil!61772 (_1!35701 lt!2209169))))))

(declare-fun b!5417988 () Bool)

(declare-fun e!3358094 () Bool)

(assert (=> b!5417988 (= e!3358094 (not (isDefined!12013 lt!2209378)))))

(declare-fun d!1728709 () Bool)

(assert (=> d!1728709 e!3358094))

(declare-fun res!2304841 () Bool)

(assert (=> d!1728709 (=> res!2304841 e!3358094)))

(assert (=> d!1728709 (= res!2304841 e!3358093)))

(declare-fun res!2304839 () Bool)

(assert (=> d!1728709 (=> (not res!2304839) (not e!3358093))))

(assert (=> d!1728709 (= res!2304839 (isDefined!12013 lt!2209378))))

(assert (=> d!1728709 (= lt!2209378 e!3358095)))

(declare-fun c!944850 () Bool)

(assert (=> d!1728709 (= c!944850 e!3358096)))

(declare-fun res!2304842 () Bool)

(assert (=> d!1728709 (=> (not res!2304842) (not e!3358096))))

(assert (=> d!1728709 (= res!2304842 (matchR!7384 (reg!15528 (regOne!30910 r!7292)) Nil!61772))))

(assert (=> d!1728709 (validRegex!6935 (reg!15528 (regOne!30910 r!7292)))))

(assert (=> d!1728709 (= (findConcatSeparation!1724 (reg!15528 (regOne!30910 r!7292)) lt!2209136 Nil!61772 (_1!35701 lt!2209169) (_1!35701 lt!2209169)) lt!2209378)))

(declare-fun b!5417982 () Bool)

(assert (=> b!5417982 (= e!3358097 None!15309)))

(assert (= (and d!1728709 res!2304842) b!5417981))

(assert (= (and d!1728709 c!944850) b!5417987))

(assert (= (and d!1728709 (not c!944850)) b!5417986))

(assert (= (and b!5417986 c!944851) b!5417982))

(assert (= (and b!5417986 (not c!944851)) b!5417983))

(assert (= (and d!1728709 res!2304839) b!5417985))

(assert (= (and b!5417985 res!2304838) b!5417984))

(assert (= (and b!5417984 res!2304840) b!5417980))

(assert (= (and d!1728709 (not res!2304841)) b!5417988))

(declare-fun m!6441994 () Bool)

(assert (=> b!5417984 m!6441994))

(declare-fun m!6441996 () Bool)

(assert (=> b!5417984 m!6441996))

(declare-fun m!6441998 () Bool)

(assert (=> d!1728709 m!6441998))

(declare-fun m!6442002 () Bool)

(assert (=> d!1728709 m!6442002))

(assert (=> d!1728709 m!6440936))

(declare-fun m!6442004 () Bool)

(assert (=> b!5417981 m!6442004))

(assert (=> b!5417980 m!6441994))

(declare-fun m!6442006 () Bool)

(assert (=> b!5417980 m!6442006))

(assert (=> b!5417985 m!6441994))

(declare-fun m!6442008 () Bool)

(assert (=> b!5417985 m!6442008))

(assert (=> b!5417988 m!6441998))

(declare-fun m!6442010 () Bool)

(assert (=> b!5417983 m!6442010))

(assert (=> b!5417983 m!6442010))

(declare-fun m!6442016 () Bool)

(assert (=> b!5417983 m!6442016))

(declare-fun m!6442018 () Bool)

(assert (=> b!5417983 m!6442018))

(assert (=> b!5417983 m!6442010))

(declare-fun m!6442022 () Bool)

(assert (=> b!5417983 m!6442022))

(assert (=> b!5417058 d!1728709))

(declare-fun bs!1251650 () Bool)

(declare-fun d!1728717 () Bool)

(assert (= bs!1251650 (and d!1728717 b!5417058)))

(declare-fun lambda!283464 () Int)

(assert (=> bs!1251650 (not (= lambda!283464 lambda!283371))))

(declare-fun bs!1251652 () Bool)

(assert (= bs!1251652 (and d!1728717 d!1728479)))

(assert (=> bs!1251652 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 r!7292)) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283464 lambda!283405))))

(declare-fun bs!1251653 () Bool)

(assert (= bs!1251653 (and d!1728717 d!1728699)))

(assert (=> bs!1251653 (= (= lt!2209136 (Star!15199 (reg!15528 (regOne!30910 r!7292)))) (= lambda!283464 lambda!283459))))

(declare-fun bs!1251654 () Bool)

(assert (= bs!1251654 (and d!1728717 b!5417053)))

(assert (=> bs!1251654 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) lt!2209142) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283464 lambda!283367))))

(assert (=> bs!1251654 (not (= lambda!283464 lambda!283368))))

(declare-fun bs!1251655 () Bool)

(assert (= bs!1251655 (and d!1728717 b!5417501)))

(assert (=> bs!1251655 (not (= lambda!283464 lambda!283419))))

(declare-fun bs!1251656 () Bool)

(assert (= bs!1251656 (and d!1728717 b!5417885)))

(assert (=> bs!1251656 (not (= lambda!283464 lambda!283446))))

(declare-fun bs!1251657 () Bool)

(assert (= bs!1251657 (and d!1728717 d!1728629)))

(assert (=> bs!1251657 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) lt!2209142) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283464 lambda!283434))))

(declare-fun bs!1251658 () Bool)

(assert (= bs!1251658 (and d!1728717 b!5417067)))

(assert (=> bs!1251658 (not (= lambda!283464 lambda!283363))))

(declare-fun bs!1251659 () Bool)

(assert (= bs!1251659 (and d!1728717 b!5417496)))

(assert (=> bs!1251659 (not (= lambda!283464 lambda!283420))))

(assert (=> bs!1251650 (= lambda!283464 lambda!283369)))

(declare-fun bs!1251660 () Bool)

(assert (= bs!1251660 (and d!1728717 d!1728621)))

(assert (=> bs!1251660 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) lt!2209142) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283464 lambda!283432))))

(assert (=> bs!1251650 (not (= lambda!283464 lambda!283370))))

(declare-fun bs!1251661 () Bool)

(assert (= bs!1251661 (and d!1728717 d!1728471)))

(assert (=> bs!1251661 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 r!7292)) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283464 lambda!283399))))

(assert (=> bs!1251660 (not (= lambda!283464 lambda!283433))))

(declare-fun bs!1251662 () Bool)

(assert (= bs!1251662 (and d!1728717 b!5417880)))

(assert (=> bs!1251662 (not (= lambda!283464 lambda!283451))))

(declare-fun bs!1251663 () Bool)

(assert (= bs!1251663 (and d!1728717 d!1728681)))

(assert (=> bs!1251663 (= lambda!283464 lambda!283453)))

(assert (=> bs!1251653 (not (= lambda!283464 lambda!283462))))

(declare-fun bs!1251664 () Bool)

(assert (= bs!1251664 (and d!1728717 b!5417790)))

(assert (=> bs!1251664 (not (= lambda!283464 lambda!283436))))

(assert (=> bs!1251652 (not (= lambda!283464 lambda!283406))))

(declare-fun bs!1251665 () Bool)

(assert (= bs!1251665 (and d!1728717 b!5417795)))

(assert (=> bs!1251665 (not (= lambda!283464 lambda!283435))))

(assert (=> bs!1251658 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 r!7292)) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283464 lambda!283362))))

(assert (=> d!1728717 true))

(assert (=> d!1728717 true))

(assert (=> d!1728717 true))

(declare-fun lambda!283465 () Int)

(assert (=> bs!1251650 (not (= lambda!283465 lambda!283371))))

(assert (=> bs!1251652 (not (= lambda!283465 lambda!283405))))

(assert (=> bs!1251654 (not (= lambda!283465 lambda!283367))))

(assert (=> bs!1251654 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) lt!2209142) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283465 lambda!283368))))

(assert (=> bs!1251655 (not (= lambda!283465 lambda!283419))))

(assert (=> bs!1251656 (not (= lambda!283465 lambda!283446))))

(assert (=> bs!1251657 (not (= lambda!283465 lambda!283434))))

(assert (=> bs!1251658 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 r!7292)) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283465 lambda!283363))))

(assert (=> bs!1251659 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 r!7292)) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283465 lambda!283420))))

(assert (=> bs!1251650 (not (= lambda!283465 lambda!283369))))

(assert (=> bs!1251660 (not (= lambda!283465 lambda!283432))))

(assert (=> bs!1251650 (= lambda!283465 lambda!283370)))

(assert (=> bs!1251661 (not (= lambda!283465 lambda!283399))))

(assert (=> bs!1251653 (not (= lambda!283465 lambda!283459))))

(declare-fun bs!1251668 () Bool)

(assert (= bs!1251668 d!1728717))

(assert (=> bs!1251668 (not (= lambda!283465 lambda!283464))))

(assert (=> bs!1251660 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) lt!2209142) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283465 lambda!283433))))

(assert (=> bs!1251662 (= (and (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 lt!2209142)) (= lt!2209136 (regTwo!30910 lt!2209142))) (= lambda!283465 lambda!283451))))

(assert (=> bs!1251663 (not (= lambda!283465 lambda!283453))))

(assert (=> bs!1251653 (not (= lambda!283465 lambda!283462))))

(assert (=> bs!1251664 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 lt!2209185)) (= lt!2209136 (regTwo!30910 lt!2209185))) (= lambda!283465 lambda!283436))))

(assert (=> bs!1251652 (= (and (= (_1!35701 lt!2209169) s!2326) (= (reg!15528 (regOne!30910 r!7292)) (regOne!30910 r!7292)) (= lt!2209136 (regTwo!30910 r!7292))) (= lambda!283465 lambda!283406))))

(assert (=> bs!1251665 (not (= lambda!283465 lambda!283435))))

(assert (=> bs!1251658 (not (= lambda!283465 lambda!283362))))

(assert (=> d!1728717 true))

(assert (=> d!1728717 true))

(assert (=> d!1728717 true))

(assert (=> d!1728717 (= (Exists!2380 lambda!283464) (Exists!2380 lambda!283465))))

(declare-fun lt!2209380 () Unit!154318)

(assert (=> d!1728717 (= lt!2209380 (choose!40990 (reg!15528 (regOne!30910 r!7292)) lt!2209136 (_1!35701 lt!2209169)))))

(assert (=> d!1728717 (validRegex!6935 (reg!15528 (regOne!30910 r!7292)))))

(assert (=> d!1728717 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1034 (reg!15528 (regOne!30910 r!7292)) lt!2209136 (_1!35701 lt!2209169)) lt!2209380)))

(declare-fun m!6442068 () Bool)

(assert (=> bs!1251668 m!6442068))

(declare-fun m!6442070 () Bool)

(assert (=> bs!1251668 m!6442070))

(declare-fun m!6442072 () Bool)

(assert (=> bs!1251668 m!6442072))

(assert (=> bs!1251668 m!6440936))

(assert (=> b!5417058 d!1728717))

(declare-fun d!1728733 () Bool)

(declare-fun e!3358111 () Bool)

(assert (=> d!1728733 e!3358111))

(declare-fun res!2304852 () Bool)

(assert (=> d!1728733 (=> (not res!2304852) (not e!3358111))))

(declare-fun lt!2209390 () List!61896)

(assert (=> d!1728733 (= res!2304852 (= (content!11103 lt!2209390) ((_ map or) (content!11103 (++!13572 (_1!35701 lt!2209149) (_2!35701 lt!2209149))) (content!11103 (_2!35701 lt!2209169)))))))

(declare-fun e!3358110 () List!61896)

(assert (=> d!1728733 (= lt!2209390 e!3358110)))

(declare-fun c!944858 () Bool)

(assert (=> d!1728733 (= c!944858 ((_ is Nil!61772) (++!13572 (_1!35701 lt!2209149) (_2!35701 lt!2209149))))))

(assert (=> d!1728733 (= (++!13572 (++!13572 (_1!35701 lt!2209149) (_2!35701 lt!2209149)) (_2!35701 lt!2209169)) lt!2209390)))

(declare-fun b!5418012 () Bool)

(assert (=> b!5418012 (= e!3358111 (or (not (= (_2!35701 lt!2209169) Nil!61772)) (= lt!2209390 (++!13572 (_1!35701 lt!2209149) (_2!35701 lt!2209149)))))))

(declare-fun b!5418011 () Bool)

(declare-fun res!2304851 () Bool)

(assert (=> b!5418011 (=> (not res!2304851) (not e!3358111))))

(assert (=> b!5418011 (= res!2304851 (= (size!39872 lt!2209390) (+ (size!39872 (++!13572 (_1!35701 lt!2209149) (_2!35701 lt!2209149))) (size!39872 (_2!35701 lt!2209169)))))))

(declare-fun b!5418010 () Bool)

(assert (=> b!5418010 (= e!3358110 (Cons!61772 (h!68220 (++!13572 (_1!35701 lt!2209149) (_2!35701 lt!2209149))) (++!13572 (t!375119 (++!13572 (_1!35701 lt!2209149) (_2!35701 lt!2209149))) (_2!35701 lt!2209169))))))

(declare-fun b!5418009 () Bool)

(assert (=> b!5418009 (= e!3358110 (_2!35701 lt!2209169))))

(assert (= (and d!1728733 c!944858) b!5418009))

(assert (= (and d!1728733 (not c!944858)) b!5418010))

(assert (= (and d!1728733 res!2304852) b!5418011))

(assert (= (and b!5418011 res!2304851) b!5418012))

(declare-fun m!6442074 () Bool)

(assert (=> d!1728733 m!6442074))

(assert (=> d!1728733 m!6440916))

(declare-fun m!6442076 () Bool)

(assert (=> d!1728733 m!6442076))

(assert (=> d!1728733 m!6441886))

(declare-fun m!6442078 () Bool)

(assert (=> b!5418011 m!6442078))

(assert (=> b!5418011 m!6440916))

(declare-fun m!6442080 () Bool)

(assert (=> b!5418011 m!6442080))

(assert (=> b!5418011 m!6441892))

(declare-fun m!6442082 () Bool)

(assert (=> b!5418010 m!6442082))

(assert (=> b!5417058 d!1728733))

(declare-fun d!1728735 () Bool)

(assert (=> d!1728735 (= (get!21301 lt!2209139) (v!51338 lt!2209139))))

(assert (=> b!5417058 d!1728735))

(declare-fun d!1728737 () Bool)

(assert (=> d!1728737 (= (Exists!2380 lambda!283371) (choose!40988 lambda!283371))))

(declare-fun bs!1251680 () Bool)

(assert (= bs!1251680 d!1728737))

(declare-fun m!6442084 () Bool)

(assert (=> bs!1251680 m!6442084))

(assert (=> b!5417058 d!1728737))

(declare-fun d!1728739 () Bool)

(declare-fun e!3358113 () Bool)

(assert (=> d!1728739 e!3358113))

(declare-fun res!2304854 () Bool)

(assert (=> d!1728739 (=> (not res!2304854) (not e!3358113))))

(declare-fun lt!2209391 () List!61896)

(assert (=> d!1728739 (= res!2304854 (= (content!11103 lt!2209391) ((_ map or) (content!11103 (_1!35701 lt!2209180)) (content!11103 (_2!35701 lt!2209180)))))))

(declare-fun e!3358112 () List!61896)

(assert (=> d!1728739 (= lt!2209391 e!3358112)))

(declare-fun c!944859 () Bool)

(assert (=> d!1728739 (= c!944859 ((_ is Nil!61772) (_1!35701 lt!2209180)))))

(assert (=> d!1728739 (= (++!13572 (_1!35701 lt!2209180) (_2!35701 lt!2209180)) lt!2209391)))

(declare-fun b!5418016 () Bool)

(assert (=> b!5418016 (= e!3358113 (or (not (= (_2!35701 lt!2209180) Nil!61772)) (= lt!2209391 (_1!35701 lt!2209180))))))

(declare-fun b!5418015 () Bool)

(declare-fun res!2304853 () Bool)

(assert (=> b!5418015 (=> (not res!2304853) (not e!3358113))))

(assert (=> b!5418015 (= res!2304853 (= (size!39872 lt!2209391) (+ (size!39872 (_1!35701 lt!2209180)) (size!39872 (_2!35701 lt!2209180)))))))

(declare-fun b!5418014 () Bool)

(assert (=> b!5418014 (= e!3358112 (Cons!61772 (h!68220 (_1!35701 lt!2209180)) (++!13572 (t!375119 (_1!35701 lt!2209180)) (_2!35701 lt!2209180))))))

(declare-fun b!5418013 () Bool)

(assert (=> b!5418013 (= e!3358112 (_2!35701 lt!2209180))))

(assert (= (and d!1728739 c!944859) b!5418013))

(assert (= (and d!1728739 (not c!944859)) b!5418014))

(assert (= (and d!1728739 res!2304854) b!5418015))

(assert (= (and b!5418015 res!2304853) b!5418016))

(declare-fun m!6442090 () Bool)

(assert (=> d!1728739 m!6442090))

(declare-fun m!6442092 () Bool)

(assert (=> d!1728739 m!6442092))

(declare-fun m!6442094 () Bool)

(assert (=> d!1728739 m!6442094))

(declare-fun m!6442096 () Bool)

(assert (=> b!5418015 m!6442096))

(declare-fun m!6442098 () Bool)

(assert (=> b!5418015 m!6442098))

(declare-fun m!6442100 () Bool)

(assert (=> b!5418015 m!6442100))

(declare-fun m!6442102 () Bool)

(assert (=> b!5418014 m!6442102))

(assert (=> b!5417077 d!1728739))

(declare-fun d!1728743 () Bool)

(assert (=> d!1728743 (= (isDefined!12013 lt!2209160) (not (isEmpty!33771 lt!2209160)))))

(declare-fun bs!1251682 () Bool)

(assert (= bs!1251682 d!1728743))

(declare-fun m!6442104 () Bool)

(assert (=> bs!1251682 m!6442104))

(assert (=> b!5417077 d!1728743))

(declare-fun b!5418068 () Bool)

(declare-fun e!3358147 () Bool)

(assert (=> b!5418068 (= e!3358147 (matchZipper!1443 lt!2209145 s!2326))))

(declare-fun b!5418069 () Bool)

(declare-fun e!3358148 () Option!15310)

(declare-fun e!3358149 () Option!15310)

(assert (=> b!5418069 (= e!3358148 e!3358149)))

(declare-fun c!944874 () Bool)

(assert (=> b!5418069 (= c!944874 ((_ is Nil!61772) s!2326))))

(declare-fun b!5418070 () Bool)

(declare-fun res!2304880 () Bool)

(declare-fun e!3358145 () Bool)

(assert (=> b!5418070 (=> (not res!2304880) (not e!3358145))))

(declare-fun lt!2209404 () Option!15310)

(assert (=> b!5418070 (= res!2304880 (matchZipper!1443 lt!2209145 (_2!35701 (get!21301 lt!2209404))))))

(declare-fun b!5418071 () Bool)

(assert (=> b!5418071 (= e!3358145 (= (++!13572 (_1!35701 (get!21301 lt!2209404)) (_2!35701 (get!21301 lt!2209404))) s!2326))))

(declare-fun b!5418073 () Bool)

(assert (=> b!5418073 (= e!3358148 (Some!15309 (tuple2!64797 Nil!61772 s!2326)))))

(declare-fun b!5418074 () Bool)

(declare-fun lt!2209403 () Unit!154318)

(declare-fun lt!2209405 () Unit!154318)

(assert (=> b!5418074 (= lt!2209403 lt!2209405)))

(assert (=> b!5418074 (= (++!13572 (++!13572 Nil!61772 (Cons!61772 (h!68220 s!2326) Nil!61772)) (t!375119 s!2326)) s!2326)))

(assert (=> b!5418074 (= lt!2209405 (lemmaMoveElementToOtherListKeepsConcatEq!1846 Nil!61772 (h!68220 s!2326) (t!375119 s!2326) s!2326))))

(assert (=> b!5418074 (= e!3358149 (findConcatSeparationZippers!56 lt!2209150 lt!2209145 (++!13572 Nil!61772 (Cons!61772 (h!68220 s!2326) Nil!61772)) (t!375119 s!2326) s!2326))))

(declare-fun b!5418075 () Bool)

(declare-fun res!2304881 () Bool)

(assert (=> b!5418075 (=> (not res!2304881) (not e!3358145))))

(assert (=> b!5418075 (= res!2304881 (matchZipper!1443 lt!2209150 (_1!35701 (get!21301 lt!2209404))))))

(declare-fun b!5418076 () Bool)

(assert (=> b!5418076 (= e!3358149 None!15309)))

(declare-fun d!1728745 () Bool)

(declare-fun e!3358146 () Bool)

(assert (=> d!1728745 e!3358146))

(declare-fun res!2304883 () Bool)

(assert (=> d!1728745 (=> res!2304883 e!3358146)))

(assert (=> d!1728745 (= res!2304883 e!3358145)))

(declare-fun res!2304884 () Bool)

(assert (=> d!1728745 (=> (not res!2304884) (not e!3358145))))

(assert (=> d!1728745 (= res!2304884 (isDefined!12013 lt!2209404))))

(assert (=> d!1728745 (= lt!2209404 e!3358148)))

(declare-fun c!944873 () Bool)

(assert (=> d!1728745 (= c!944873 e!3358147)))

(declare-fun res!2304882 () Bool)

(assert (=> d!1728745 (=> (not res!2304882) (not e!3358147))))

(assert (=> d!1728745 (= res!2304882 (matchZipper!1443 lt!2209150 Nil!61772))))

(assert (=> d!1728745 (= (++!13572 Nil!61772 s!2326) s!2326)))

(assert (=> d!1728745 (= (findConcatSeparationZippers!56 lt!2209150 lt!2209145 Nil!61772 s!2326 s!2326) lt!2209404)))

(declare-fun b!5418072 () Bool)

(assert (=> b!5418072 (= e!3358146 (not (isDefined!12013 lt!2209404)))))

(assert (= (and d!1728745 res!2304882) b!5418068))

(assert (= (and d!1728745 c!944873) b!5418073))

(assert (= (and d!1728745 (not c!944873)) b!5418069))

(assert (= (and b!5418069 c!944874) b!5418076))

(assert (= (and b!5418069 (not c!944874)) b!5418074))

(assert (= (and d!1728745 res!2304884) b!5418075))

(assert (= (and b!5418075 res!2304881) b!5418070))

(assert (= (and b!5418070 res!2304880) b!5418071))

(assert (= (and d!1728745 (not res!2304883)) b!5418072))

(declare-fun m!6442168 () Bool)

(assert (=> b!5418075 m!6442168))

(declare-fun m!6442170 () Bool)

(assert (=> b!5418075 m!6442170))

(assert (=> b!5418071 m!6442168))

(declare-fun m!6442172 () Bool)

(assert (=> b!5418071 m!6442172))

(declare-fun m!6442174 () Bool)

(assert (=> d!1728745 m!6442174))

(declare-fun m!6442176 () Bool)

(assert (=> d!1728745 m!6442176))

(declare-fun m!6442178 () Bool)

(assert (=> d!1728745 m!6442178))

(assert (=> b!5418070 m!6442168))

(declare-fun m!6442180 () Bool)

(assert (=> b!5418070 m!6442180))

(assert (=> b!5418072 m!6442174))

(assert (=> b!5418074 m!6441248))

(assert (=> b!5418074 m!6441248))

(assert (=> b!5418074 m!6441250))

(assert (=> b!5418074 m!6441252))

(assert (=> b!5418074 m!6441248))

(declare-fun m!6442182 () Bool)

(assert (=> b!5418074 m!6442182))

(declare-fun m!6442184 () Bool)

(assert (=> b!5418068 m!6442184))

(assert (=> b!5417077 d!1728745))

(declare-fun d!1728765 () Bool)

(assert (=> d!1728765 (isDefined!12013 (findConcatSeparationZippers!56 lt!2209150 (store ((as const (Array Context!9166 Bool)) false) lt!2209161 true) Nil!61772 s!2326 s!2326))))

(declare-fun lt!2209410 () Unit!154318)

(declare-fun choose!41015 ((InoxSet Context!9166) Context!9166 List!61896) Unit!154318)

(assert (=> d!1728765 (= lt!2209410 (choose!41015 lt!2209150 lt!2209161 s!2326))))

(assert (=> d!1728765 (matchZipper!1443 (appendTo!58 lt!2209150 lt!2209161) s!2326)))

(assert (=> d!1728765 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!56 lt!2209150 lt!2209161 s!2326) lt!2209410)))

(declare-fun bs!1251760 () Bool)

(assert (= bs!1251760 d!1728765))

(assert (=> bs!1251760 m!6441062))

(declare-fun m!6442194 () Bool)

(assert (=> bs!1251760 m!6442194))

(assert (=> bs!1251760 m!6441062))

(declare-fun m!6442196 () Bool)

(assert (=> bs!1251760 m!6442196))

(assert (=> bs!1251760 m!6441026))

(declare-fun m!6442198 () Bool)

(assert (=> bs!1251760 m!6442198))

(assert (=> bs!1251760 m!6441026))

(assert (=> bs!1251760 m!6442194))

(declare-fun m!6442200 () Bool)

(assert (=> bs!1251760 m!6442200))

(assert (=> b!5417077 d!1728765))

(declare-fun d!1728771 () Bool)

(assert (=> d!1728771 (= (get!21301 lt!2209160) (v!51338 lt!2209160))))

(assert (=> b!5417077 d!1728771))

(declare-fun d!1728773 () Bool)

(assert (=> d!1728773 (= (isEmpty!33768 (t!375120 (exprs!5083 (h!68222 zl!343)))) ((_ is Nil!61773) (t!375120 (exprs!5083 (h!68222 zl!343)))))))

(assert (=> b!5417056 d!1728773))

(declare-fun bs!1251763 () Bool)

(declare-fun d!1728775 () Bool)

(assert (= bs!1251763 (and d!1728775 d!1728455)))

(declare-fun lambda!283476 () Int)

(assert (=> bs!1251763 (= lambda!283476 lambda!283385)))

(declare-fun bs!1251764 () Bool)

(assert (= bs!1251764 (and d!1728775 d!1728459)))

(assert (=> bs!1251764 (= lambda!283476 lambda!283390)))

(declare-fun bs!1251765 () Bool)

(assert (= bs!1251765 (and d!1728775 b!5417072)))

(assert (=> bs!1251765 (= lambda!283476 lambda!283366)))

(declare-fun bs!1251766 () Bool)

(assert (= bs!1251766 (and d!1728775 d!1728655)))

(assert (=> bs!1251766 (= lambda!283476 lambda!283442)))

(declare-fun bs!1251767 () Bool)

(assert (= bs!1251767 (and d!1728775 d!1728573)))

(assert (=> bs!1251767 (= lambda!283476 lambda!283424)))

(declare-fun b!5418109 () Bool)

(declare-fun e!3358168 () Regex!15199)

(assert (=> b!5418109 (= e!3358168 (h!68221 (exprs!5083 (h!68222 zl!343))))))

(declare-fun b!5418110 () Bool)

(declare-fun e!3358172 () Regex!15199)

(assert (=> b!5418110 (= e!3358172 EmptyExpr!15199)))

(declare-fun b!5418111 () Bool)

(declare-fun e!3358169 () Bool)

(declare-fun e!3358173 () Bool)

(assert (=> b!5418111 (= e!3358169 e!3358173)))

(declare-fun c!944888 () Bool)

(assert (=> b!5418111 (= c!944888 (isEmpty!33768 (exprs!5083 (h!68222 zl!343))))))

(declare-fun b!5418113 () Bool)

(declare-fun e!3358170 () Bool)

(assert (=> b!5418113 (= e!3358173 e!3358170)))

(declare-fun c!944887 () Bool)

(assert (=> b!5418113 (= c!944887 (isEmpty!33768 (tail!10718 (exprs!5083 (h!68222 zl!343)))))))

(declare-fun b!5418114 () Bool)

(declare-fun lt!2209417 () Regex!15199)

(declare-fun isEmptyExpr!984 (Regex!15199) Bool)

(assert (=> b!5418114 (= e!3358173 (isEmptyExpr!984 lt!2209417))))

(declare-fun b!5418115 () Bool)

(declare-fun isConcat!507 (Regex!15199) Bool)

(assert (=> b!5418115 (= e!3358170 (isConcat!507 lt!2209417))))

(declare-fun b!5418116 () Bool)

(assert (=> b!5418116 (= e!3358168 e!3358172)))

(declare-fun c!944886 () Bool)

(assert (=> b!5418116 (= c!944886 ((_ is Cons!61773) (exprs!5083 (h!68222 zl!343))))))

(declare-fun b!5418117 () Bool)

(declare-fun e!3358171 () Bool)

(assert (=> b!5418117 (= e!3358171 (isEmpty!33768 (t!375120 (exprs!5083 (h!68222 zl!343)))))))

(declare-fun b!5418118 () Bool)

(assert (=> b!5418118 (= e!3358170 (= lt!2209417 (head!11621 (exprs!5083 (h!68222 zl!343)))))))

(assert (=> d!1728775 e!3358169))

(declare-fun res!2304896 () Bool)

(assert (=> d!1728775 (=> (not res!2304896) (not e!3358169))))

(assert (=> d!1728775 (= res!2304896 (validRegex!6935 lt!2209417))))

(assert (=> d!1728775 (= lt!2209417 e!3358168)))

(declare-fun c!944889 () Bool)

(assert (=> d!1728775 (= c!944889 e!3358171)))

(declare-fun res!2304895 () Bool)

(assert (=> d!1728775 (=> (not res!2304895) (not e!3358171))))

(assert (=> d!1728775 (= res!2304895 ((_ is Cons!61773) (exprs!5083 (h!68222 zl!343))))))

(assert (=> d!1728775 (forall!14545 (exprs!5083 (h!68222 zl!343)) lambda!283476)))

(assert (=> d!1728775 (= (generalisedConcat!868 (exprs!5083 (h!68222 zl!343))) lt!2209417)))

(declare-fun b!5418112 () Bool)

(assert (=> b!5418112 (= e!3358172 (Concat!24044 (h!68221 (exprs!5083 (h!68222 zl!343))) (generalisedConcat!868 (t!375120 (exprs!5083 (h!68222 zl!343))))))))

(assert (= (and d!1728775 res!2304895) b!5418117))

(assert (= (and d!1728775 c!944889) b!5418109))

(assert (= (and d!1728775 (not c!944889)) b!5418116))

(assert (= (and b!5418116 c!944886) b!5418112))

(assert (= (and b!5418116 (not c!944886)) b!5418110))

(assert (= (and d!1728775 res!2304896) b!5418111))

(assert (= (and b!5418111 c!944888) b!5418114))

(assert (= (and b!5418111 (not c!944888)) b!5418113))

(assert (= (and b!5418113 c!944887) b!5418118))

(assert (= (and b!5418113 (not c!944887)) b!5418115))

(declare-fun m!6442240 () Bool)

(assert (=> b!5418115 m!6442240))

(declare-fun m!6442242 () Bool)

(assert (=> d!1728775 m!6442242))

(declare-fun m!6442244 () Bool)

(assert (=> d!1728775 m!6442244))

(declare-fun m!6442246 () Bool)

(assert (=> b!5418118 m!6442246))

(declare-fun m!6442248 () Bool)

(assert (=> b!5418114 m!6442248))

(declare-fun m!6442250 () Bool)

(assert (=> b!5418113 m!6442250))

(assert (=> b!5418113 m!6442250))

(declare-fun m!6442252 () Bool)

(assert (=> b!5418113 m!6442252))

(declare-fun m!6442254 () Bool)

(assert (=> b!5418111 m!6442254))

(declare-fun m!6442256 () Bool)

(assert (=> b!5418112 m!6442256))

(assert (=> b!5418117 m!6440912))

(assert (=> b!5417076 d!1728775))

(declare-fun d!1728789 () Bool)

(declare-fun lt!2209420 () Regex!15199)

(assert (=> d!1728789 (validRegex!6935 lt!2209420)))

(assert (=> d!1728789 (= lt!2209420 (generalisedUnion!1128 (unfocusZipperList!641 (Cons!61774 lt!2209187 Nil!61774))))))

(assert (=> d!1728789 (= (unfocusZipper!941 (Cons!61774 lt!2209187 Nil!61774)) lt!2209420)))

(declare-fun bs!1251768 () Bool)

(assert (= bs!1251768 d!1728789))

(declare-fun m!6442258 () Bool)

(assert (=> bs!1251768 m!6442258))

(declare-fun m!6442260 () Bool)

(assert (=> bs!1251768 m!6442260))

(assert (=> bs!1251768 m!6442260))

(declare-fun m!6442262 () Bool)

(assert (=> bs!1251768 m!6442262))

(assert (=> b!5417060 d!1728789))

(declare-fun bs!1251769 () Bool)

(declare-fun d!1728791 () Bool)

(assert (= bs!1251769 (and d!1728791 d!1728455)))

(declare-fun lambda!283477 () Int)

(assert (=> bs!1251769 (= lambda!283477 lambda!283385)))

(declare-fun bs!1251770 () Bool)

(assert (= bs!1251770 (and d!1728791 d!1728459)))

(assert (=> bs!1251770 (= lambda!283477 lambda!283390)))

(declare-fun bs!1251771 () Bool)

(assert (= bs!1251771 (and d!1728791 b!5417072)))

(assert (=> bs!1251771 (= lambda!283477 lambda!283366)))

(declare-fun bs!1251772 () Bool)

(assert (= bs!1251772 (and d!1728791 d!1728775)))

(assert (=> bs!1251772 (= lambda!283477 lambda!283476)))

(declare-fun bs!1251773 () Bool)

(assert (= bs!1251773 (and d!1728791 d!1728655)))

(assert (=> bs!1251773 (= lambda!283477 lambda!283442)))

(declare-fun bs!1251774 () Bool)

(assert (= bs!1251774 (and d!1728791 d!1728573)))

(assert (=> bs!1251774 (= lambda!283477 lambda!283424)))

(assert (=> d!1728791 (= (inv!81244 (h!68222 zl!343)) (forall!14545 (exprs!5083 (h!68222 zl!343)) lambda!283477))))

(declare-fun bs!1251775 () Bool)

(assert (= bs!1251775 d!1728791))

(declare-fun m!6442264 () Bool)

(assert (=> bs!1251775 m!6442264))

(assert (=> b!5417059 d!1728791))

(declare-fun bs!1251776 () Bool)

(declare-fun b!5418124 () Bool)

(assert (= bs!1251776 (and b!5418124 d!1728479)))

(declare-fun lambda!283480 () Int)

(assert (=> bs!1251776 (not (= lambda!283480 lambda!283405))))

(declare-fun bs!1251777 () Bool)

(assert (= bs!1251777 (and b!5418124 b!5417053)))

(assert (=> bs!1251777 (not (= lambda!283480 lambda!283367))))

(assert (=> bs!1251777 (not (= lambda!283480 lambda!283368))))

(declare-fun bs!1251778 () Bool)

(assert (= bs!1251778 (and b!5418124 b!5417501)))

(assert (=> bs!1251778 (= (and (= (reg!15528 lt!2209189) (reg!15528 r!7292)) (= lt!2209189 r!7292)) (= lambda!283480 lambda!283419))))

(declare-fun bs!1251779 () Bool)

(assert (= bs!1251779 (and b!5418124 b!5417885)))

(assert (=> bs!1251779 (= (and (= s!2326 (_1!35701 lt!2209169)) (= (reg!15528 lt!2209189) (reg!15528 lt!2209142)) (= lt!2209189 lt!2209142)) (= lambda!283480 lambda!283446))))

(declare-fun bs!1251780 () Bool)

(assert (= bs!1251780 (and b!5418124 d!1728629)))

(assert (=> bs!1251780 (not (= lambda!283480 lambda!283434))))

(declare-fun bs!1251781 () Bool)

(assert (= bs!1251781 (and b!5418124 b!5417067)))

(assert (=> bs!1251781 (not (= lambda!283480 lambda!283363))))

(declare-fun bs!1251782 () Bool)

(assert (= bs!1251782 (and b!5418124 b!5417496)))

(assert (=> bs!1251782 (not (= lambda!283480 lambda!283420))))

(declare-fun bs!1251783 () Bool)

(assert (= bs!1251783 (and b!5418124 b!5417058)))

(assert (=> bs!1251783 (not (= lambda!283480 lambda!283369))))

(declare-fun bs!1251784 () Bool)

(assert (= bs!1251784 (and b!5418124 d!1728621)))

(assert (=> bs!1251784 (not (= lambda!283480 lambda!283432))))

(assert (=> bs!1251783 (= (and (= s!2326 (_1!35701 lt!2209169)) (= (reg!15528 lt!2209189) (reg!15528 (regOne!30910 r!7292))) (= lt!2209189 lt!2209136)) (= lambda!283480 lambda!283371))))

(declare-fun bs!1251785 () Bool)

(assert (= bs!1251785 (and b!5418124 d!1728717)))

(assert (=> bs!1251785 (not (= lambda!283480 lambda!283465))))

(assert (=> bs!1251783 (not (= lambda!283480 lambda!283370))))

(declare-fun bs!1251786 () Bool)

(assert (= bs!1251786 (and b!5418124 d!1728471)))

(assert (=> bs!1251786 (not (= lambda!283480 lambda!283399))))

(declare-fun bs!1251787 () Bool)

(assert (= bs!1251787 (and b!5418124 d!1728699)))

(assert (=> bs!1251787 (not (= lambda!283480 lambda!283459))))

(assert (=> bs!1251785 (not (= lambda!283480 lambda!283464))))

(assert (=> bs!1251784 (not (= lambda!283480 lambda!283433))))

(declare-fun bs!1251788 () Bool)

(assert (= bs!1251788 (and b!5418124 b!5417880)))

(assert (=> bs!1251788 (not (= lambda!283480 lambda!283451))))

(declare-fun bs!1251789 () Bool)

(assert (= bs!1251789 (and b!5418124 d!1728681)))

(assert (=> bs!1251789 (not (= lambda!283480 lambda!283453))))

(assert (=> bs!1251787 (= (and (= s!2326 (_1!35701 lt!2209169)) (= (reg!15528 lt!2209189) (reg!15528 (regOne!30910 r!7292))) (= lt!2209189 (Star!15199 (reg!15528 (regOne!30910 r!7292))))) (= lambda!283480 lambda!283462))))

(declare-fun bs!1251790 () Bool)

(assert (= bs!1251790 (and b!5418124 b!5417790)))

(assert (=> bs!1251790 (not (= lambda!283480 lambda!283436))))

(assert (=> bs!1251776 (not (= lambda!283480 lambda!283406))))

(declare-fun bs!1251791 () Bool)

(assert (= bs!1251791 (and b!5418124 b!5417795)))

(assert (=> bs!1251791 (= (and (= (reg!15528 lt!2209189) (reg!15528 lt!2209185)) (= lt!2209189 lt!2209185)) (= lambda!283480 lambda!283435))))

(assert (=> bs!1251781 (not (= lambda!283480 lambda!283362))))

(assert (=> b!5418124 true))

(assert (=> b!5418124 true))

(declare-fun bs!1251792 () Bool)

(declare-fun b!5418119 () Bool)

(assert (= bs!1251792 (and b!5418119 b!5418124)))

(declare-fun lambda!283483 () Int)

(assert (=> bs!1251792 (not (= lambda!283483 lambda!283480))))

(declare-fun bs!1251793 () Bool)

(assert (= bs!1251793 (and b!5418119 d!1728479)))

(assert (=> bs!1251793 (not (= lambda!283483 lambda!283405))))

(declare-fun bs!1251795 () Bool)

(assert (= bs!1251795 (and b!5418119 b!5417053)))

(assert (=> bs!1251795 (not (= lambda!283483 lambda!283367))))

(assert (=> bs!1251795 (= (and (= (regOne!30910 lt!2209189) lt!2209142) (= (regTwo!30910 lt!2209189) (regTwo!30910 r!7292))) (= lambda!283483 lambda!283368))))

(declare-fun bs!1251797 () Bool)

(assert (= bs!1251797 (and b!5418119 b!5417501)))

(assert (=> bs!1251797 (not (= lambda!283483 lambda!283419))))

(declare-fun bs!1251799 () Bool)

(assert (= bs!1251799 (and b!5418119 b!5417885)))

(assert (=> bs!1251799 (not (= lambda!283483 lambda!283446))))

(declare-fun bs!1251801 () Bool)

(assert (= bs!1251801 (and b!5418119 d!1728629)))

(assert (=> bs!1251801 (not (= lambda!283483 lambda!283434))))

(declare-fun bs!1251803 () Bool)

(assert (= bs!1251803 (and b!5418119 b!5417067)))

(assert (=> bs!1251803 (= (and (= (regOne!30910 lt!2209189) (regOne!30910 r!7292)) (= (regTwo!30910 lt!2209189) (regTwo!30910 r!7292))) (= lambda!283483 lambda!283363))))

(declare-fun bs!1251804 () Bool)

(assert (= bs!1251804 (and b!5418119 b!5417496)))

(assert (=> bs!1251804 (= (and (= (regOne!30910 lt!2209189) (regOne!30910 r!7292)) (= (regTwo!30910 lt!2209189) (regTwo!30910 r!7292))) (= lambda!283483 lambda!283420))))

(declare-fun bs!1251806 () Bool)

(assert (= bs!1251806 (and b!5418119 b!5417058)))

(assert (=> bs!1251806 (not (= lambda!283483 lambda!283369))))

(declare-fun bs!1251808 () Bool)

(assert (= bs!1251808 (and b!5418119 d!1728621)))

(assert (=> bs!1251808 (not (= lambda!283483 lambda!283432))))

(assert (=> bs!1251806 (not (= lambda!283483 lambda!283371))))

(declare-fun bs!1251811 () Bool)

(assert (= bs!1251811 (and b!5418119 d!1728717)))

(assert (=> bs!1251811 (= (and (= s!2326 (_1!35701 lt!2209169)) (= (regOne!30910 lt!2209189) (reg!15528 (regOne!30910 r!7292))) (= (regTwo!30910 lt!2209189) lt!2209136)) (= lambda!283483 lambda!283465))))

(assert (=> bs!1251806 (= (and (= s!2326 (_1!35701 lt!2209169)) (= (regOne!30910 lt!2209189) (reg!15528 (regOne!30910 r!7292))) (= (regTwo!30910 lt!2209189) lt!2209136)) (= lambda!283483 lambda!283370))))

(declare-fun bs!1251813 () Bool)

(assert (= bs!1251813 (and b!5418119 d!1728471)))

(assert (=> bs!1251813 (not (= lambda!283483 lambda!283399))))

(declare-fun bs!1251815 () Bool)

(assert (= bs!1251815 (and b!5418119 d!1728699)))

(assert (=> bs!1251815 (not (= lambda!283483 lambda!283459))))

(assert (=> bs!1251811 (not (= lambda!283483 lambda!283464))))

(assert (=> bs!1251808 (= (and (= (regOne!30910 lt!2209189) lt!2209142) (= (regTwo!30910 lt!2209189) (regTwo!30910 r!7292))) (= lambda!283483 lambda!283433))))

(declare-fun bs!1251818 () Bool)

(assert (= bs!1251818 (and b!5418119 b!5417880)))

(assert (=> bs!1251818 (= (and (= s!2326 (_1!35701 lt!2209169)) (= (regOne!30910 lt!2209189) (regOne!30910 lt!2209142)) (= (regTwo!30910 lt!2209189) (regTwo!30910 lt!2209142))) (= lambda!283483 lambda!283451))))

(declare-fun bs!1251820 () Bool)

(assert (= bs!1251820 (and b!5418119 d!1728681)))

(assert (=> bs!1251820 (not (= lambda!283483 lambda!283453))))

(assert (=> bs!1251815 (not (= lambda!283483 lambda!283462))))

(declare-fun bs!1251822 () Bool)

(assert (= bs!1251822 (and b!5418119 b!5417790)))

(assert (=> bs!1251822 (= (and (= (regOne!30910 lt!2209189) (regOne!30910 lt!2209185)) (= (regTwo!30910 lt!2209189) (regTwo!30910 lt!2209185))) (= lambda!283483 lambda!283436))))

(assert (=> bs!1251793 (= (and (= (regOne!30910 lt!2209189) (regOne!30910 r!7292)) (= (regTwo!30910 lt!2209189) (regTwo!30910 r!7292))) (= lambda!283483 lambda!283406))))

(declare-fun bs!1251824 () Bool)

(assert (= bs!1251824 (and b!5418119 b!5417795)))

(assert (=> bs!1251824 (not (= lambda!283483 lambda!283435))))

(assert (=> bs!1251803 (not (= lambda!283483 lambda!283362))))

(assert (=> b!5418119 true))

(assert (=> b!5418119 true))

(declare-fun e!3358178 () Bool)

(declare-fun call!387766 () Bool)

(assert (=> b!5418119 (= e!3358178 call!387766)))

(declare-fun b!5418120 () Bool)

(declare-fun e!3358175 () Bool)

(declare-fun e!3358174 () Bool)

(assert (=> b!5418120 (= e!3358175 e!3358174)))

(declare-fun res!2304897 () Bool)

(assert (=> b!5418120 (= res!2304897 (not ((_ is EmptyLang!15199) lt!2209189)))))

(assert (=> b!5418120 (=> (not res!2304897) (not e!3358174))))

(declare-fun c!944892 () Bool)

(declare-fun bm!387760 () Bool)

(assert (=> bm!387760 (= call!387766 (Exists!2380 (ite c!944892 lambda!283480 lambda!283483)))))

(declare-fun b!5418121 () Bool)

(declare-fun res!2304898 () Bool)

(declare-fun e!3358180 () Bool)

(assert (=> b!5418121 (=> res!2304898 e!3358180)))

(declare-fun call!387765 () Bool)

(assert (=> b!5418121 (= res!2304898 call!387765)))

(assert (=> b!5418121 (= e!3358178 e!3358180)))

(declare-fun b!5418122 () Bool)

(declare-fun e!3358176 () Bool)

(assert (=> b!5418122 (= e!3358176 e!3358178)))

(assert (=> b!5418122 (= c!944892 ((_ is Star!15199) lt!2209189))))

(declare-fun b!5418123 () Bool)

(declare-fun c!944893 () Bool)

(assert (=> b!5418123 (= c!944893 ((_ is ElementMatch!15199) lt!2209189))))

(declare-fun e!3358179 () Bool)

(assert (=> b!5418123 (= e!3358174 e!3358179)))

(declare-fun d!1728793 () Bool)

(declare-fun c!944891 () Bool)

(assert (=> d!1728793 (= c!944891 ((_ is EmptyExpr!15199) lt!2209189))))

(assert (=> d!1728793 (= (matchRSpec!2302 lt!2209189 s!2326) e!3358175)))

(assert (=> b!5418124 (= e!3358180 call!387766)))

(declare-fun b!5418125 () Bool)

(assert (=> b!5418125 (= e!3358179 (= s!2326 (Cons!61772 (c!944601 lt!2209189) Nil!61772)))))

(declare-fun b!5418126 () Bool)

(assert (=> b!5418126 (= e!3358175 call!387765)))

(declare-fun b!5418127 () Bool)

(declare-fun e!3358177 () Bool)

(assert (=> b!5418127 (= e!3358177 (matchRSpec!2302 (regTwo!30911 lt!2209189) s!2326))))

(declare-fun bm!387761 () Bool)

(assert (=> bm!387761 (= call!387765 (isEmpty!33772 s!2326))))

(declare-fun b!5418128 () Bool)

(assert (=> b!5418128 (= e!3358176 e!3358177)))

(declare-fun res!2304899 () Bool)

(assert (=> b!5418128 (= res!2304899 (matchRSpec!2302 (regOne!30911 lt!2209189) s!2326))))

(assert (=> b!5418128 (=> res!2304899 e!3358177)))

(declare-fun b!5418129 () Bool)

(declare-fun c!944890 () Bool)

(assert (=> b!5418129 (= c!944890 ((_ is Union!15199) lt!2209189))))

(assert (=> b!5418129 (= e!3358179 e!3358176)))

(assert (= (and d!1728793 c!944891) b!5418126))

(assert (= (and d!1728793 (not c!944891)) b!5418120))

(assert (= (and b!5418120 res!2304897) b!5418123))

(assert (= (and b!5418123 c!944893) b!5418125))

(assert (= (and b!5418123 (not c!944893)) b!5418129))

(assert (= (and b!5418129 c!944890) b!5418128))

(assert (= (and b!5418129 (not c!944890)) b!5418122))

(assert (= (and b!5418128 (not res!2304899)) b!5418127))

(assert (= (and b!5418122 c!944892) b!5418121))

(assert (= (and b!5418122 (not c!944892)) b!5418119))

(assert (= (and b!5418121 (not res!2304898)) b!5418124))

(assert (= (or b!5418124 b!5418119) bm!387760))

(assert (= (or b!5418126 b!5418121) bm!387761))

(declare-fun m!6442266 () Bool)

(assert (=> bm!387760 m!6442266))

(declare-fun m!6442268 () Bool)

(assert (=> b!5418127 m!6442268))

(assert (=> bm!387761 m!6441336))

(declare-fun m!6442270 () Bool)

(assert (=> b!5418128 m!6442270))

(assert (=> b!5417079 d!1728793))

(declare-fun b!5418140 () Bool)

(declare-fun e!3358191 () Bool)

(declare-fun lt!2209422 () Bool)

(declare-fun call!387767 () Bool)

(assert (=> b!5418140 (= e!3358191 (= lt!2209422 call!387767))))

(declare-fun b!5418141 () Bool)

(declare-fun e!3358190 () Bool)

(assert (=> b!5418141 (= e!3358190 (not (= (head!11622 s!2326) (c!944601 lt!2209189))))))

(declare-fun b!5418142 () Bool)

(declare-fun e!3358185 () Bool)

(assert (=> b!5418142 (= e!3358185 (not lt!2209422))))

(declare-fun b!5418143 () Bool)

(assert (=> b!5418143 (= e!3358191 e!3358185)))

(declare-fun c!944895 () Bool)

(assert (=> b!5418143 (= c!944895 ((_ is EmptyLang!15199) lt!2209189))))

(declare-fun b!5418144 () Bool)

(declare-fun res!2304912 () Bool)

(assert (=> b!5418144 (=> res!2304912 e!3358190)))

(assert (=> b!5418144 (= res!2304912 (not (isEmpty!33772 (tail!10719 s!2326))))))

(declare-fun d!1728795 () Bool)

(assert (=> d!1728795 e!3358191))

(declare-fun c!944896 () Bool)

(assert (=> d!1728795 (= c!944896 ((_ is EmptyExpr!15199) lt!2209189))))

(declare-fun e!3358188 () Bool)

(assert (=> d!1728795 (= lt!2209422 e!3358188)))

(declare-fun c!944894 () Bool)

(assert (=> d!1728795 (= c!944894 (isEmpty!33772 s!2326))))

(assert (=> d!1728795 (validRegex!6935 lt!2209189)))

(assert (=> d!1728795 (= (matchR!7384 lt!2209189 s!2326) lt!2209422)))

(declare-fun b!5418145 () Bool)

(assert (=> b!5418145 (= e!3358188 (matchR!7384 (derivativeStep!4273 lt!2209189 (head!11622 s!2326)) (tail!10719 s!2326)))))

(declare-fun b!5418146 () Bool)

(assert (=> b!5418146 (= e!3358188 (nullable!5368 lt!2209189))))

(declare-fun b!5418147 () Bool)

(declare-fun res!2304915 () Bool)

(declare-fun e!3358186 () Bool)

(assert (=> b!5418147 (=> (not res!2304915) (not e!3358186))))

(assert (=> b!5418147 (= res!2304915 (not call!387767))))

(declare-fun b!5418148 () Bool)

(declare-fun e!3358189 () Bool)

(assert (=> b!5418148 (= e!3358189 e!3358190)))

(declare-fun res!2304910 () Bool)

(assert (=> b!5418148 (=> res!2304910 e!3358190)))

(assert (=> b!5418148 (= res!2304910 call!387767)))

(declare-fun b!5418149 () Bool)

(declare-fun res!2304914 () Bool)

(declare-fun e!3358187 () Bool)

(assert (=> b!5418149 (=> res!2304914 e!3358187)))

(assert (=> b!5418149 (= res!2304914 (not ((_ is ElementMatch!15199) lt!2209189)))))

(assert (=> b!5418149 (= e!3358185 e!3358187)))

(declare-fun b!5418150 () Bool)

(assert (=> b!5418150 (= e!3358187 e!3358189)))

(declare-fun res!2304916 () Bool)

(assert (=> b!5418150 (=> (not res!2304916) (not e!3358189))))

(assert (=> b!5418150 (= res!2304916 (not lt!2209422))))

(declare-fun b!5418151 () Bool)

(declare-fun res!2304911 () Bool)

(assert (=> b!5418151 (=> (not res!2304911) (not e!3358186))))

(assert (=> b!5418151 (= res!2304911 (isEmpty!33772 (tail!10719 s!2326)))))

(declare-fun b!5418152 () Bool)

(declare-fun res!2304913 () Bool)

(assert (=> b!5418152 (=> res!2304913 e!3358187)))

(assert (=> b!5418152 (= res!2304913 e!3358186)))

(declare-fun res!2304917 () Bool)

(assert (=> b!5418152 (=> (not res!2304917) (not e!3358186))))

(assert (=> b!5418152 (= res!2304917 lt!2209422)))

(declare-fun bm!387762 () Bool)

(assert (=> bm!387762 (= call!387767 (isEmpty!33772 s!2326))))

(declare-fun b!5418153 () Bool)

(assert (=> b!5418153 (= e!3358186 (= (head!11622 s!2326) (c!944601 lt!2209189)))))

(assert (= (and d!1728795 c!944894) b!5418146))

(assert (= (and d!1728795 (not c!944894)) b!5418145))

(assert (= (and d!1728795 c!944896) b!5418140))

(assert (= (and d!1728795 (not c!944896)) b!5418143))

(assert (= (and b!5418143 c!944895) b!5418142))

(assert (= (and b!5418143 (not c!944895)) b!5418149))

(assert (= (and b!5418149 (not res!2304914)) b!5418152))

(assert (= (and b!5418152 res!2304917) b!5418147))

(assert (= (and b!5418147 res!2304915) b!5418151))

(assert (= (and b!5418151 res!2304911) b!5418153))

(assert (= (and b!5418152 (not res!2304913)) b!5418150))

(assert (= (and b!5418150 res!2304916) b!5418148))

(assert (= (and b!5418148 (not res!2304910)) b!5418144))

(assert (= (and b!5418144 (not res!2304912)) b!5418141))

(assert (= (or b!5418140 b!5418147 b!5418148) bm!387762))

(assert (=> d!1728795 m!6441336))

(assert (=> d!1728795 m!6441676))

(assert (=> b!5418153 m!6441340))

(assert (=> bm!387762 m!6441336))

(assert (=> b!5418144 m!6441344))

(assert (=> b!5418144 m!6441344))

(assert (=> b!5418144 m!6441512))

(assert (=> b!5418151 m!6441344))

(assert (=> b!5418151 m!6441344))

(assert (=> b!5418151 m!6441512))

(assert (=> b!5418145 m!6441340))

(assert (=> b!5418145 m!6441340))

(declare-fun m!6442272 () Bool)

(assert (=> b!5418145 m!6442272))

(assert (=> b!5418145 m!6441344))

(assert (=> b!5418145 m!6442272))

(assert (=> b!5418145 m!6441344))

(declare-fun m!6442274 () Bool)

(assert (=> b!5418145 m!6442274))

(assert (=> b!5418146 m!6441684))

(assert (=> b!5418141 m!6441340))

(assert (=> b!5417079 d!1728795))

(declare-fun d!1728797 () Bool)

(assert (=> d!1728797 (= (matchR!7384 lt!2209189 s!2326) (matchRSpec!2302 lt!2209189 s!2326))))

(declare-fun lt!2209423 () Unit!154318)

(assert (=> d!1728797 (= lt!2209423 (choose!40996 lt!2209189 s!2326))))

(assert (=> d!1728797 (validRegex!6935 lt!2209189)))

(assert (=> d!1728797 (= (mainMatchTheorem!2302 lt!2209189 s!2326) lt!2209423)))

(declare-fun bs!1251826 () Bool)

(assert (= bs!1251826 d!1728797))

(assert (=> bs!1251826 m!6441014))

(assert (=> bs!1251826 m!6441012))

(declare-fun m!6442276 () Bool)

(assert (=> bs!1251826 m!6442276))

(assert (=> bs!1251826 m!6441676))

(assert (=> b!5417079 d!1728797))

(declare-fun d!1728799 () Bool)

(declare-fun c!944897 () Bool)

(assert (=> d!1728799 (= c!944897 (isEmpty!33772 (_1!35701 lt!2209180)))))

(declare-fun e!3358192 () Bool)

(assert (=> d!1728799 (= (matchZipper!1443 lt!2209150 (_1!35701 lt!2209180)) e!3358192)))

(declare-fun b!5418154 () Bool)

(assert (=> b!5418154 (= e!3358192 (nullableZipper!1451 lt!2209150))))

(declare-fun b!5418155 () Bool)

(assert (=> b!5418155 (= e!3358192 (matchZipper!1443 (derivationStepZipper!1438 lt!2209150 (head!11622 (_1!35701 lt!2209180))) (tail!10719 (_1!35701 lt!2209180))))))

(assert (= (and d!1728799 c!944897) b!5418154))

(assert (= (and d!1728799 (not c!944897)) b!5418155))

(assert (=> d!1728799 m!6441638))

(declare-fun m!6442278 () Bool)

(assert (=> b!5418154 m!6442278))

(assert (=> b!5418155 m!6441640))

(assert (=> b!5418155 m!6441640))

(declare-fun m!6442280 () Bool)

(assert (=> b!5418155 m!6442280))

(assert (=> b!5418155 m!6441642))

(assert (=> b!5418155 m!6442280))

(assert (=> b!5418155 m!6441642))

(declare-fun m!6442282 () Bool)

(assert (=> b!5418155 m!6442282))

(assert (=> b!5417063 d!1728799))

(declare-fun d!1728801 () Bool)

(declare-fun c!944898 () Bool)

(assert (=> d!1728801 (= c!944898 (isEmpty!33772 (t!375119 s!2326)))))

(declare-fun e!3358193 () Bool)

(assert (=> d!1728801 (= (matchZipper!1443 lt!2209132 (t!375119 s!2326)) e!3358193)))

(declare-fun b!5418156 () Bool)

(assert (=> b!5418156 (= e!3358193 (nullableZipper!1451 lt!2209132))))

(declare-fun b!5418157 () Bool)

(assert (=> b!5418157 (= e!3358193 (matchZipper!1443 (derivationStepZipper!1438 lt!2209132 (head!11622 (t!375119 s!2326))) (tail!10719 (t!375119 s!2326))))))

(assert (= (and d!1728801 c!944898) b!5418156))

(assert (= (and d!1728801 (not c!944898)) b!5418157))

(assert (=> d!1728801 m!6441350))

(declare-fun m!6442284 () Bool)

(assert (=> b!5418156 m!6442284))

(assert (=> b!5418157 m!6441354))

(assert (=> b!5418157 m!6441354))

(declare-fun m!6442286 () Bool)

(assert (=> b!5418157 m!6442286))

(assert (=> b!5418157 m!6441358))

(assert (=> b!5418157 m!6442286))

(assert (=> b!5418157 m!6441358))

(declare-fun m!6442288 () Bool)

(assert (=> b!5418157 m!6442288))

(assert (=> b!5417083 d!1728801))

(declare-fun d!1728803 () Bool)

(declare-fun c!944899 () Bool)

(assert (=> d!1728803 (= c!944899 (isEmpty!33772 s!2326))))

(declare-fun e!3358194 () Bool)

(assert (=> d!1728803 (= (matchZipper!1443 lt!2209159 s!2326) e!3358194)))

(declare-fun b!5418158 () Bool)

(assert (=> b!5418158 (= e!3358194 (nullableZipper!1451 lt!2209159))))

(declare-fun b!5418159 () Bool)

(assert (=> b!5418159 (= e!3358194 (matchZipper!1443 (derivationStepZipper!1438 lt!2209159 (head!11622 s!2326)) (tail!10719 s!2326)))))

(assert (= (and d!1728803 c!944899) b!5418158))

(assert (= (and d!1728803 (not c!944899)) b!5418159))

(assert (=> d!1728803 m!6441336))

(declare-fun m!6442290 () Bool)

(assert (=> b!5418158 m!6442290))

(assert (=> b!5418159 m!6441340))

(assert (=> b!5418159 m!6441340))

(declare-fun m!6442292 () Bool)

(assert (=> b!5418159 m!6442292))

(assert (=> b!5418159 m!6441344))

(assert (=> b!5418159 m!6442292))

(assert (=> b!5418159 m!6441344))

(declare-fun m!6442294 () Bool)

(assert (=> b!5418159 m!6442294))

(assert (=> b!5417083 d!1728803))

(declare-fun d!1728805 () Bool)

(declare-fun e!3358197 () Bool)

(assert (=> d!1728805 e!3358197))

(declare-fun res!2304920 () Bool)

(assert (=> d!1728805 (=> (not res!2304920) (not e!3358197))))

(declare-fun lt!2209426 () List!61898)

(declare-fun noDuplicate!1402 (List!61898) Bool)

(assert (=> d!1728805 (= res!2304920 (noDuplicate!1402 lt!2209426))))

(declare-fun choose!41016 ((InoxSet Context!9166)) List!61898)

(assert (=> d!1728805 (= lt!2209426 (choose!41016 z!1189))))

(assert (=> d!1728805 (= (toList!8983 z!1189) lt!2209426)))

(declare-fun b!5418162 () Bool)

(declare-fun content!11105 (List!61898) (InoxSet Context!9166))

(assert (=> b!5418162 (= e!3358197 (= (content!11105 lt!2209426) z!1189))))

(assert (= (and d!1728805 res!2304920) b!5418162))

(declare-fun m!6442304 () Bool)

(assert (=> d!1728805 m!6442304))

(declare-fun m!6442306 () Bool)

(assert (=> d!1728805 m!6442306))

(declare-fun m!6442308 () Bool)

(assert (=> b!5418162 m!6442308))

(assert (=> b!5417041 d!1728805))

(declare-fun c!944913 () Bool)

(declare-fun call!387782 () List!61897)

(declare-fun call!387784 () (InoxSet Context!9166))

(declare-fun bm!387775 () Bool)

(assert (=> bm!387775 (= call!387784 (derivationStepZipperDown!647 (ite c!944913 (regOne!30911 (reg!15528 (regOne!30910 r!7292))) (regOne!30910 (reg!15528 (regOne!30910 r!7292)))) (ite c!944913 lt!2209161 (Context!9167 call!387782)) (h!68220 s!2326)))))

(declare-fun b!5418239 () Bool)

(declare-fun e!3358238 () (InoxSet Context!9166))

(assert (=> b!5418239 (= e!3358238 (store ((as const (Array Context!9166 Bool)) false) lt!2209161 true))))

(declare-fun c!944911 () Bool)

(declare-fun c!944912 () Bool)

(declare-fun bm!387776 () Bool)

(declare-fun $colon$colon!1502 (List!61897 Regex!15199) List!61897)

(assert (=> bm!387776 (= call!387782 ($colon$colon!1502 (exprs!5083 lt!2209161) (ite (or c!944912 c!944911) (regTwo!30910 (reg!15528 (regOne!30910 r!7292))) (reg!15528 (regOne!30910 r!7292)))))))

(declare-fun b!5418240 () Bool)

(declare-fun e!3358237 () Bool)

(assert (=> b!5418240 (= e!3358237 (nullable!5368 (regOne!30910 (reg!15528 (regOne!30910 r!7292)))))))

(declare-fun b!5418241 () Bool)

(declare-fun e!3358233 () (InoxSet Context!9166))

(declare-fun call!387785 () (InoxSet Context!9166))

(assert (=> b!5418241 (= e!3358233 ((_ map or) call!387784 call!387785))))

(declare-fun d!1728811 () Bool)

(declare-fun c!944914 () Bool)

(assert (=> d!1728811 (= c!944914 (and ((_ is ElementMatch!15199) (reg!15528 (regOne!30910 r!7292))) (= (c!944601 (reg!15528 (regOne!30910 r!7292))) (h!68220 s!2326))))))

(assert (=> d!1728811 (= (derivationStepZipperDown!647 (reg!15528 (regOne!30910 r!7292)) lt!2209161 (h!68220 s!2326)) e!3358238)))

(declare-fun b!5418242 () Bool)

(assert (=> b!5418242 (= c!944912 e!3358237)))

(declare-fun res!2304923 () Bool)

(assert (=> b!5418242 (=> (not res!2304923) (not e!3358237))))

(assert (=> b!5418242 (= res!2304923 ((_ is Concat!24044) (reg!15528 (regOne!30910 r!7292))))))

(declare-fun e!3358234 () (InoxSet Context!9166))

(assert (=> b!5418242 (= e!3358234 e!3358233)))

(declare-fun b!5418243 () Bool)

(declare-fun c!944910 () Bool)

(assert (=> b!5418243 (= c!944910 ((_ is Star!15199) (reg!15528 (regOne!30910 r!7292))))))

(declare-fun e!3358235 () (InoxSet Context!9166))

(declare-fun e!3358236 () (InoxSet Context!9166))

(assert (=> b!5418243 (= e!3358235 e!3358236)))

(declare-fun b!5418244 () Bool)

(declare-fun call!387781 () (InoxSet Context!9166))

(assert (=> b!5418244 (= e!3358235 call!387781)))

(declare-fun b!5418245 () Bool)

(assert (=> b!5418245 (= e!3358233 e!3358235)))

(assert (=> b!5418245 (= c!944911 ((_ is Concat!24044) (reg!15528 (regOne!30910 r!7292))))))

(declare-fun call!387780 () List!61897)

(declare-fun call!387783 () (InoxSet Context!9166))

(declare-fun bm!387777 () Bool)

(assert (=> bm!387777 (= call!387783 (derivationStepZipperDown!647 (ite c!944913 (regTwo!30911 (reg!15528 (regOne!30910 r!7292))) (ite c!944912 (regTwo!30910 (reg!15528 (regOne!30910 r!7292))) (ite c!944911 (regOne!30910 (reg!15528 (regOne!30910 r!7292))) (reg!15528 (reg!15528 (regOne!30910 r!7292)))))) (ite (or c!944913 c!944912) lt!2209161 (Context!9167 call!387780)) (h!68220 s!2326)))))

(declare-fun bm!387778 () Bool)

(assert (=> bm!387778 (= call!387780 call!387782)))

(declare-fun bm!387779 () Bool)

(assert (=> bm!387779 (= call!387781 call!387785)))

(declare-fun b!5418246 () Bool)

(assert (=> b!5418246 (= e!3358236 call!387781)))

(declare-fun bm!387780 () Bool)

(assert (=> bm!387780 (= call!387785 call!387783)))

(declare-fun b!5418247 () Bool)

(assert (=> b!5418247 (= e!3358238 e!3358234)))

(assert (=> b!5418247 (= c!944913 ((_ is Union!15199) (reg!15528 (regOne!30910 r!7292))))))

(declare-fun b!5418248 () Bool)

(assert (=> b!5418248 (= e!3358236 ((as const (Array Context!9166 Bool)) false))))

(declare-fun b!5418249 () Bool)

(assert (=> b!5418249 (= e!3358234 ((_ map or) call!387784 call!387783))))

(assert (= (and d!1728811 c!944914) b!5418239))

(assert (= (and d!1728811 (not c!944914)) b!5418247))

(assert (= (and b!5418247 c!944913) b!5418249))

(assert (= (and b!5418247 (not c!944913)) b!5418242))

(assert (= (and b!5418242 res!2304923) b!5418240))

(assert (= (and b!5418242 c!944912) b!5418241))

(assert (= (and b!5418242 (not c!944912)) b!5418245))

(assert (= (and b!5418245 c!944911) b!5418244))

(assert (= (and b!5418245 (not c!944911)) b!5418243))

(assert (= (and b!5418243 c!944910) b!5418246))

(assert (= (and b!5418243 (not c!944910)) b!5418248))

(assert (= (or b!5418244 b!5418246) bm!387778))

(assert (= (or b!5418244 b!5418246) bm!387779))

(assert (= (or b!5418241 bm!387778) bm!387776))

(assert (= (or b!5418241 bm!387779) bm!387780))

(assert (= (or b!5418249 bm!387780) bm!387777))

(assert (= (or b!5418249 b!5418241) bm!387775))

(assert (=> b!5418239 m!6441062))

(declare-fun m!6442320 () Bool)

(assert (=> bm!387775 m!6442320))

(declare-fun m!6442322 () Bool)

(assert (=> bm!387777 m!6442322))

(declare-fun m!6442324 () Bool)

(assert (=> bm!387776 m!6442324))

(declare-fun m!6442326 () Bool)

(assert (=> b!5418240 m!6442326))

(assert (=> b!5417062 d!1728811))

(declare-fun e!3358239 () (InoxSet Context!9166))

(declare-fun b!5418250 () Bool)

(declare-fun call!387786 () (InoxSet Context!9166))

(assert (=> b!5418250 (= e!3358239 ((_ map or) call!387786 (derivationStepZipperUp!571 (Context!9167 (t!375120 (exprs!5083 (Context!9167 (Cons!61773 (h!68221 (exprs!5083 (h!68222 zl!343))) (t!375120 (exprs!5083 (h!68222 zl!343)))))))) (h!68220 s!2326))))))

(declare-fun d!1728823 () Bool)

(declare-fun c!944915 () Bool)

(declare-fun e!3358241 () Bool)

(assert (=> d!1728823 (= c!944915 e!3358241)))

(declare-fun res!2304924 () Bool)

(assert (=> d!1728823 (=> (not res!2304924) (not e!3358241))))

(assert (=> d!1728823 (= res!2304924 ((_ is Cons!61773) (exprs!5083 (Context!9167 (Cons!61773 (h!68221 (exprs!5083 (h!68222 zl!343))) (t!375120 (exprs!5083 (h!68222 zl!343))))))))))

(assert (=> d!1728823 (= (derivationStepZipperUp!571 (Context!9167 (Cons!61773 (h!68221 (exprs!5083 (h!68222 zl!343))) (t!375120 (exprs!5083 (h!68222 zl!343))))) (h!68220 s!2326)) e!3358239)))

(declare-fun b!5418251 () Bool)

(declare-fun e!3358240 () (InoxSet Context!9166))

(assert (=> b!5418251 (= e!3358240 call!387786)))

(declare-fun bm!387781 () Bool)

(assert (=> bm!387781 (= call!387786 (derivationStepZipperDown!647 (h!68221 (exprs!5083 (Context!9167 (Cons!61773 (h!68221 (exprs!5083 (h!68222 zl!343))) (t!375120 (exprs!5083 (h!68222 zl!343))))))) (Context!9167 (t!375120 (exprs!5083 (Context!9167 (Cons!61773 (h!68221 (exprs!5083 (h!68222 zl!343))) (t!375120 (exprs!5083 (h!68222 zl!343)))))))) (h!68220 s!2326)))))

(declare-fun b!5418252 () Bool)

(assert (=> b!5418252 (= e!3358239 e!3358240)))

(declare-fun c!944916 () Bool)

(assert (=> b!5418252 (= c!944916 ((_ is Cons!61773) (exprs!5083 (Context!9167 (Cons!61773 (h!68221 (exprs!5083 (h!68222 zl!343))) (t!375120 (exprs!5083 (h!68222 zl!343))))))))))

(declare-fun b!5418253 () Bool)

(assert (=> b!5418253 (= e!3358241 (nullable!5368 (h!68221 (exprs!5083 (Context!9167 (Cons!61773 (h!68221 (exprs!5083 (h!68222 zl!343))) (t!375120 (exprs!5083 (h!68222 zl!343)))))))))))

(declare-fun b!5418254 () Bool)

(assert (=> b!5418254 (= e!3358240 ((as const (Array Context!9166 Bool)) false))))

(assert (= (and d!1728823 res!2304924) b!5418253))

(assert (= (and d!1728823 c!944915) b!5418250))

(assert (= (and d!1728823 (not c!944915)) b!5418252))

(assert (= (and b!5418252 c!944916) b!5418251))

(assert (= (and b!5418252 (not c!944916)) b!5418254))

(assert (= (or b!5418250 b!5418251) bm!387781))

(declare-fun m!6442328 () Bool)

(assert (=> b!5418250 m!6442328))

(declare-fun m!6442330 () Bool)

(assert (=> bm!387781 m!6442330))

(declare-fun m!6442332 () Bool)

(assert (=> b!5418253 m!6442332))

(assert (=> b!5417082 d!1728823))

(declare-fun d!1728825 () Bool)

(assert (=> d!1728825 (= (flatMap!926 z!1189 lambda!283364) (choose!40985 z!1189 lambda!283364))))

(declare-fun bs!1251835 () Bool)

(assert (= bs!1251835 d!1728825))

(declare-fun m!6442334 () Bool)

(assert (=> bs!1251835 m!6442334))

(assert (=> b!5417082 d!1728825))

(declare-fun b!5418255 () Bool)

(declare-fun e!3358242 () (InoxSet Context!9166))

(declare-fun call!387787 () (InoxSet Context!9166))

(assert (=> b!5418255 (= e!3358242 ((_ map or) call!387787 (derivationStepZipperUp!571 (Context!9167 (t!375120 (exprs!5083 (h!68222 zl!343)))) (h!68220 s!2326))))))

(declare-fun d!1728827 () Bool)

(declare-fun c!944917 () Bool)

(declare-fun e!3358244 () Bool)

(assert (=> d!1728827 (= c!944917 e!3358244)))

(declare-fun res!2304925 () Bool)

(assert (=> d!1728827 (=> (not res!2304925) (not e!3358244))))

(assert (=> d!1728827 (= res!2304925 ((_ is Cons!61773) (exprs!5083 (h!68222 zl!343))))))

(assert (=> d!1728827 (= (derivationStepZipperUp!571 (h!68222 zl!343) (h!68220 s!2326)) e!3358242)))

(declare-fun b!5418256 () Bool)

(declare-fun e!3358243 () (InoxSet Context!9166))

(assert (=> b!5418256 (= e!3358243 call!387787)))

(declare-fun bm!387782 () Bool)

(assert (=> bm!387782 (= call!387787 (derivationStepZipperDown!647 (h!68221 (exprs!5083 (h!68222 zl!343))) (Context!9167 (t!375120 (exprs!5083 (h!68222 zl!343)))) (h!68220 s!2326)))))

(declare-fun b!5418257 () Bool)

(assert (=> b!5418257 (= e!3358242 e!3358243)))

(declare-fun c!944918 () Bool)

(assert (=> b!5418257 (= c!944918 ((_ is Cons!61773) (exprs!5083 (h!68222 zl!343))))))

(declare-fun b!5418258 () Bool)

(assert (=> b!5418258 (= e!3358244 (nullable!5368 (h!68221 (exprs!5083 (h!68222 zl!343)))))))

(declare-fun b!5418259 () Bool)

(assert (=> b!5418259 (= e!3358243 ((as const (Array Context!9166 Bool)) false))))

(assert (= (and d!1728827 res!2304925) b!5418258))

(assert (= (and d!1728827 c!944917) b!5418255))

(assert (= (and d!1728827 (not c!944917)) b!5418257))

(assert (= (and b!5418257 c!944918) b!5418256))

(assert (= (and b!5418257 (not c!944918)) b!5418259))

(assert (= (or b!5418255 b!5418256) bm!387782))

(declare-fun m!6442336 () Bool)

(assert (=> b!5418255 m!6442336))

(declare-fun m!6442338 () Bool)

(assert (=> bm!387782 m!6442338))

(assert (=> b!5418258 m!6440966))

(assert (=> b!5417082 d!1728827))

(declare-fun e!3358245 () (InoxSet Context!9166))

(declare-fun call!387788 () (InoxSet Context!9166))

(declare-fun b!5418260 () Bool)

(assert (=> b!5418260 (= e!3358245 ((_ map or) call!387788 (derivationStepZipperUp!571 (Context!9167 (t!375120 (exprs!5083 lt!2209168))) (h!68220 s!2326))))))

(declare-fun d!1728829 () Bool)

(declare-fun c!944919 () Bool)

(declare-fun e!3358247 () Bool)

(assert (=> d!1728829 (= c!944919 e!3358247)))

(declare-fun res!2304926 () Bool)

(assert (=> d!1728829 (=> (not res!2304926) (not e!3358247))))

(assert (=> d!1728829 (= res!2304926 ((_ is Cons!61773) (exprs!5083 lt!2209168)))))

(assert (=> d!1728829 (= (derivationStepZipperUp!571 lt!2209168 (h!68220 s!2326)) e!3358245)))

(declare-fun b!5418261 () Bool)

(declare-fun e!3358246 () (InoxSet Context!9166))

(assert (=> b!5418261 (= e!3358246 call!387788)))

(declare-fun bm!387783 () Bool)

(assert (=> bm!387783 (= call!387788 (derivationStepZipperDown!647 (h!68221 (exprs!5083 lt!2209168)) (Context!9167 (t!375120 (exprs!5083 lt!2209168))) (h!68220 s!2326)))))

(declare-fun b!5418262 () Bool)

(assert (=> b!5418262 (= e!3358245 e!3358246)))

(declare-fun c!944920 () Bool)

(assert (=> b!5418262 (= c!944920 ((_ is Cons!61773) (exprs!5083 lt!2209168)))))

(declare-fun b!5418263 () Bool)

(assert (=> b!5418263 (= e!3358247 (nullable!5368 (h!68221 (exprs!5083 lt!2209168))))))

(declare-fun b!5418264 () Bool)

(assert (=> b!5418264 (= e!3358246 ((as const (Array Context!9166 Bool)) false))))

(assert (= (and d!1728829 res!2304926) b!5418263))

(assert (= (and d!1728829 c!944919) b!5418260))

(assert (= (and d!1728829 (not c!944919)) b!5418262))

(assert (= (and b!5418262 c!944920) b!5418261))

(assert (= (and b!5418262 (not c!944920)) b!5418264))

(assert (= (or b!5418260 b!5418261) bm!387783))

(declare-fun m!6442340 () Bool)

(assert (=> b!5418260 m!6442340))

(declare-fun m!6442342 () Bool)

(assert (=> bm!387783 m!6442342))

(declare-fun m!6442344 () Bool)

(assert (=> b!5418263 m!6442344))

(assert (=> b!5417082 d!1728829))

(declare-fun d!1728831 () Bool)

(assert (=> d!1728831 (= (nullable!5368 (h!68221 (exprs!5083 (h!68222 zl!343)))) (nullableFct!1603 (h!68221 (exprs!5083 (h!68222 zl!343)))))))

(declare-fun bs!1251836 () Bool)

(assert (= bs!1251836 d!1728831))

(declare-fun m!6442346 () Bool)

(assert (=> bs!1251836 m!6442346))

(assert (=> b!5417082 d!1728831))

(declare-fun d!1728833 () Bool)

(assert (=> d!1728833 (= (flatMap!926 z!1189 lambda!283364) (dynLambda!24342 lambda!283364 (h!68222 zl!343)))))

(declare-fun lt!2209431 () Unit!154318)

(assert (=> d!1728833 (= lt!2209431 (choose!40986 z!1189 (h!68222 zl!343) lambda!283364))))

(assert (=> d!1728833 (= z!1189 (store ((as const (Array Context!9166 Bool)) false) (h!68222 zl!343) true))))

(assert (=> d!1728833 (= (lemmaFlatMapOnSingletonSet!458 z!1189 (h!68222 zl!343) lambda!283364) lt!2209431)))

(declare-fun b_lambda!206857 () Bool)

(assert (=> (not b_lambda!206857) (not d!1728833)))

(declare-fun bs!1251837 () Bool)

(assert (= bs!1251837 d!1728833))

(assert (=> bs!1251837 m!6440962))

(declare-fun m!6442348 () Bool)

(assert (=> bs!1251837 m!6442348))

(declare-fun m!6442350 () Bool)

(assert (=> bs!1251837 m!6442350))

(declare-fun m!6442352 () Bool)

(assert (=> bs!1251837 m!6442352))

(assert (=> b!5417082 d!1728833))

(declare-fun c!944924 () Bool)

(declare-fun bm!387784 () Bool)

(declare-fun call!387791 () List!61897)

(declare-fun call!387793 () (InoxSet Context!9166))

(assert (=> bm!387784 (= call!387793 (derivationStepZipperDown!647 (ite c!944924 (regOne!30911 (h!68221 (exprs!5083 (h!68222 zl!343)))) (regOne!30910 (h!68221 (exprs!5083 (h!68222 zl!343))))) (ite c!944924 lt!2209168 (Context!9167 call!387791)) (h!68220 s!2326)))))

(declare-fun b!5418265 () Bool)

(declare-fun e!3358253 () (InoxSet Context!9166))

(assert (=> b!5418265 (= e!3358253 (store ((as const (Array Context!9166 Bool)) false) lt!2209168 true))))

(declare-fun c!944922 () Bool)

(declare-fun c!944923 () Bool)

(declare-fun bm!387785 () Bool)

(assert (=> bm!387785 (= call!387791 ($colon$colon!1502 (exprs!5083 lt!2209168) (ite (or c!944923 c!944922) (regTwo!30910 (h!68221 (exprs!5083 (h!68222 zl!343)))) (h!68221 (exprs!5083 (h!68222 zl!343))))))))

(declare-fun b!5418266 () Bool)

(declare-fun e!3358252 () Bool)

(assert (=> b!5418266 (= e!3358252 (nullable!5368 (regOne!30910 (h!68221 (exprs!5083 (h!68222 zl!343))))))))

(declare-fun b!5418267 () Bool)

(declare-fun e!3358248 () (InoxSet Context!9166))

(declare-fun call!387794 () (InoxSet Context!9166))

(assert (=> b!5418267 (= e!3358248 ((_ map or) call!387793 call!387794))))

(declare-fun d!1728835 () Bool)

(declare-fun c!944925 () Bool)

(assert (=> d!1728835 (= c!944925 (and ((_ is ElementMatch!15199) (h!68221 (exprs!5083 (h!68222 zl!343)))) (= (c!944601 (h!68221 (exprs!5083 (h!68222 zl!343)))) (h!68220 s!2326))))))

(assert (=> d!1728835 (= (derivationStepZipperDown!647 (h!68221 (exprs!5083 (h!68222 zl!343))) lt!2209168 (h!68220 s!2326)) e!3358253)))

(declare-fun b!5418268 () Bool)

(assert (=> b!5418268 (= c!944923 e!3358252)))

(declare-fun res!2304927 () Bool)

(assert (=> b!5418268 (=> (not res!2304927) (not e!3358252))))

(assert (=> b!5418268 (= res!2304927 ((_ is Concat!24044) (h!68221 (exprs!5083 (h!68222 zl!343)))))))

(declare-fun e!3358249 () (InoxSet Context!9166))

(assert (=> b!5418268 (= e!3358249 e!3358248)))

(declare-fun b!5418269 () Bool)

(declare-fun c!944921 () Bool)

(assert (=> b!5418269 (= c!944921 ((_ is Star!15199) (h!68221 (exprs!5083 (h!68222 zl!343)))))))

(declare-fun e!3358250 () (InoxSet Context!9166))

(declare-fun e!3358251 () (InoxSet Context!9166))

(assert (=> b!5418269 (= e!3358250 e!3358251)))

(declare-fun b!5418270 () Bool)

(declare-fun call!387790 () (InoxSet Context!9166))

(assert (=> b!5418270 (= e!3358250 call!387790)))

(declare-fun b!5418271 () Bool)

(assert (=> b!5418271 (= e!3358248 e!3358250)))

(assert (=> b!5418271 (= c!944922 ((_ is Concat!24044) (h!68221 (exprs!5083 (h!68222 zl!343)))))))

(declare-fun call!387789 () List!61897)

(declare-fun call!387792 () (InoxSet Context!9166))

(declare-fun bm!387786 () Bool)

(assert (=> bm!387786 (= call!387792 (derivationStepZipperDown!647 (ite c!944924 (regTwo!30911 (h!68221 (exprs!5083 (h!68222 zl!343)))) (ite c!944923 (regTwo!30910 (h!68221 (exprs!5083 (h!68222 zl!343)))) (ite c!944922 (regOne!30910 (h!68221 (exprs!5083 (h!68222 zl!343)))) (reg!15528 (h!68221 (exprs!5083 (h!68222 zl!343))))))) (ite (or c!944924 c!944923) lt!2209168 (Context!9167 call!387789)) (h!68220 s!2326)))))

(declare-fun bm!387787 () Bool)

(assert (=> bm!387787 (= call!387789 call!387791)))

(declare-fun bm!387788 () Bool)

(assert (=> bm!387788 (= call!387790 call!387794)))

(declare-fun b!5418272 () Bool)

(assert (=> b!5418272 (= e!3358251 call!387790)))

(declare-fun bm!387789 () Bool)

(assert (=> bm!387789 (= call!387794 call!387792)))

(declare-fun b!5418273 () Bool)

(assert (=> b!5418273 (= e!3358253 e!3358249)))

(assert (=> b!5418273 (= c!944924 ((_ is Union!15199) (h!68221 (exprs!5083 (h!68222 zl!343)))))))

(declare-fun b!5418274 () Bool)

(assert (=> b!5418274 (= e!3358251 ((as const (Array Context!9166 Bool)) false))))

(declare-fun b!5418275 () Bool)

(assert (=> b!5418275 (= e!3358249 ((_ map or) call!387793 call!387792))))

(assert (= (and d!1728835 c!944925) b!5418265))

(assert (= (and d!1728835 (not c!944925)) b!5418273))

(assert (= (and b!5418273 c!944924) b!5418275))

(assert (= (and b!5418273 (not c!944924)) b!5418268))

(assert (= (and b!5418268 res!2304927) b!5418266))

(assert (= (and b!5418268 c!944923) b!5418267))

(assert (= (and b!5418268 (not c!944923)) b!5418271))

(assert (= (and b!5418271 c!944922) b!5418270))

(assert (= (and b!5418271 (not c!944922)) b!5418269))

(assert (= (and b!5418269 c!944921) b!5418272))

(assert (= (and b!5418269 (not c!944921)) b!5418274))

(assert (= (or b!5418270 b!5418272) bm!387787))

(assert (= (or b!5418270 b!5418272) bm!387788))

(assert (= (or b!5418267 bm!387787) bm!387785))

(assert (= (or b!5418267 bm!387788) bm!387789))

(assert (= (or b!5418275 bm!387789) bm!387786))

(assert (= (or b!5418275 b!5418267) bm!387784))

(declare-fun m!6442354 () Bool)

(assert (=> b!5418265 m!6442354))

(declare-fun m!6442356 () Bool)

(assert (=> bm!387784 m!6442356))

(declare-fun m!6442358 () Bool)

(assert (=> bm!387786 m!6442358))

(declare-fun m!6442360 () Bool)

(assert (=> bm!387785 m!6442360))

(declare-fun m!6442362 () Bool)

(assert (=> b!5418266 m!6442362))

(assert (=> b!5417082 d!1728835))

(declare-fun b!5418280 () Bool)

(declare-fun e!3358256 () Bool)

(declare-fun tp!1496438 () Bool)

(assert (=> b!5418280 (= e!3358256 (and tp_is_empty!39651 tp!1496438))))

(assert (=> b!5417066 (= tp!1496377 e!3358256)))

(assert (= (and b!5417066 ((_ is Cons!61772) (t!375119 s!2326))) b!5418280))

(declare-fun b!5418285 () Bool)

(declare-fun e!3358259 () Bool)

(declare-fun tp!1496443 () Bool)

(declare-fun tp!1496444 () Bool)

(assert (=> b!5418285 (= e!3358259 (and tp!1496443 tp!1496444))))

(assert (=> b!5417085 (= tp!1496373 e!3358259)))

(assert (= (and b!5417085 ((_ is Cons!61773) (exprs!5083 (h!68222 zl!343)))) b!5418285))

(declare-fun b!5418299 () Bool)

(declare-fun e!3358262 () Bool)

(declare-fun tp!1496455 () Bool)

(declare-fun tp!1496456 () Bool)

(assert (=> b!5418299 (= e!3358262 (and tp!1496455 tp!1496456))))

(assert (=> b!5417065 (= tp!1496369 e!3358262)))

(declare-fun b!5418298 () Bool)

(declare-fun tp!1496457 () Bool)

(assert (=> b!5418298 (= e!3358262 tp!1496457)))

(declare-fun b!5418297 () Bool)

(declare-fun tp!1496459 () Bool)

(declare-fun tp!1496458 () Bool)

(assert (=> b!5418297 (= e!3358262 (and tp!1496459 tp!1496458))))

(declare-fun b!5418296 () Bool)

(assert (=> b!5418296 (= e!3358262 tp_is_empty!39651)))

(assert (= (and b!5417065 ((_ is ElementMatch!15199) (regOne!30910 r!7292))) b!5418296))

(assert (= (and b!5417065 ((_ is Concat!24044) (regOne!30910 r!7292))) b!5418297))

(assert (= (and b!5417065 ((_ is Star!15199) (regOne!30910 r!7292))) b!5418298))

(assert (= (and b!5417065 ((_ is Union!15199) (regOne!30910 r!7292))) b!5418299))

(declare-fun b!5418303 () Bool)

(declare-fun e!3358263 () Bool)

(declare-fun tp!1496460 () Bool)

(declare-fun tp!1496461 () Bool)

(assert (=> b!5418303 (= e!3358263 (and tp!1496460 tp!1496461))))

(assert (=> b!5417065 (= tp!1496376 e!3358263)))

(declare-fun b!5418302 () Bool)

(declare-fun tp!1496462 () Bool)

(assert (=> b!5418302 (= e!3358263 tp!1496462)))

(declare-fun b!5418301 () Bool)

(declare-fun tp!1496464 () Bool)

(declare-fun tp!1496463 () Bool)

(assert (=> b!5418301 (= e!3358263 (and tp!1496464 tp!1496463))))

(declare-fun b!5418300 () Bool)

(assert (=> b!5418300 (= e!3358263 tp_is_empty!39651)))

(assert (= (and b!5417065 ((_ is ElementMatch!15199) (regTwo!30910 r!7292))) b!5418300))

(assert (= (and b!5417065 ((_ is Concat!24044) (regTwo!30910 r!7292))) b!5418301))

(assert (= (and b!5417065 ((_ is Star!15199) (regTwo!30910 r!7292))) b!5418302))

(assert (= (and b!5417065 ((_ is Union!15199) (regTwo!30910 r!7292))) b!5418303))

(declare-fun b!5418311 () Bool)

(declare-fun e!3358269 () Bool)

(declare-fun tp!1496469 () Bool)

(assert (=> b!5418311 (= e!3358269 tp!1496469)))

(declare-fun b!5418310 () Bool)

(declare-fun e!3358268 () Bool)

(declare-fun tp!1496470 () Bool)

(assert (=> b!5418310 (= e!3358268 (and (inv!81244 (h!68222 (t!375121 zl!343))) e!3358269 tp!1496470))))

(assert (=> b!5417059 (= tp!1496372 e!3358268)))

(assert (= b!5418310 b!5418311))

(assert (= (and b!5417059 ((_ is Cons!61774) (t!375121 zl!343))) b!5418310))

(declare-fun m!6442364 () Bool)

(assert (=> b!5418310 m!6442364))

(declare-fun b!5418312 () Bool)

(declare-fun e!3358270 () Bool)

(declare-fun tp!1496471 () Bool)

(declare-fun tp!1496472 () Bool)

(assert (=> b!5418312 (= e!3358270 (and tp!1496471 tp!1496472))))

(assert (=> b!5417043 (= tp!1496370 e!3358270)))

(assert (= (and b!5417043 ((_ is Cons!61773) (exprs!5083 setElem!35297))) b!5418312))

(declare-fun b!5418316 () Bool)

(declare-fun e!3358271 () Bool)

(declare-fun tp!1496473 () Bool)

(declare-fun tp!1496474 () Bool)

(assert (=> b!5418316 (= e!3358271 (and tp!1496473 tp!1496474))))

(assert (=> b!5417064 (= tp!1496371 e!3358271)))

(declare-fun b!5418315 () Bool)

(declare-fun tp!1496475 () Bool)

(assert (=> b!5418315 (= e!3358271 tp!1496475)))

(declare-fun b!5418314 () Bool)

(declare-fun tp!1496477 () Bool)

(declare-fun tp!1496476 () Bool)

(assert (=> b!5418314 (= e!3358271 (and tp!1496477 tp!1496476))))

(declare-fun b!5418313 () Bool)

(assert (=> b!5418313 (= e!3358271 tp_is_empty!39651)))

(assert (= (and b!5417064 ((_ is ElementMatch!15199) (reg!15528 r!7292))) b!5418313))

(assert (= (and b!5417064 ((_ is Concat!24044) (reg!15528 r!7292))) b!5418314))

(assert (= (and b!5417064 ((_ is Star!15199) (reg!15528 r!7292))) b!5418315))

(assert (= (and b!5417064 ((_ is Union!15199) (reg!15528 r!7292))) b!5418316))

(declare-fun condSetEmpty!35303 () Bool)

(assert (=> setNonEmpty!35297 (= condSetEmpty!35303 (= setRest!35297 ((as const (Array Context!9166 Bool)) false)))))

(declare-fun setRes!35303 () Bool)

(assert (=> setNonEmpty!35297 (= tp!1496368 setRes!35303)))

(declare-fun setIsEmpty!35303 () Bool)

(assert (=> setIsEmpty!35303 setRes!35303))

(declare-fun setElem!35303 () Context!9166)

(declare-fun setNonEmpty!35303 () Bool)

(declare-fun e!3358274 () Bool)

(declare-fun tp!1496482 () Bool)

(assert (=> setNonEmpty!35303 (= setRes!35303 (and tp!1496482 (inv!81244 setElem!35303) e!3358274))))

(declare-fun setRest!35303 () (InoxSet Context!9166))

(assert (=> setNonEmpty!35303 (= setRest!35297 ((_ map or) (store ((as const (Array Context!9166 Bool)) false) setElem!35303 true) setRest!35303))))

(declare-fun b!5418321 () Bool)

(declare-fun tp!1496483 () Bool)

(assert (=> b!5418321 (= e!3358274 tp!1496483)))

(assert (= (and setNonEmpty!35297 condSetEmpty!35303) setIsEmpty!35303))

(assert (= (and setNonEmpty!35297 (not condSetEmpty!35303)) setNonEmpty!35303))

(assert (= setNonEmpty!35303 b!5418321))

(declare-fun m!6442366 () Bool)

(assert (=> setNonEmpty!35303 m!6442366))

(declare-fun b!5418325 () Bool)

(declare-fun e!3358275 () Bool)

(declare-fun tp!1496484 () Bool)

(declare-fun tp!1496485 () Bool)

(assert (=> b!5418325 (= e!3358275 (and tp!1496484 tp!1496485))))

(assert (=> b!5417061 (= tp!1496374 e!3358275)))

(declare-fun b!5418324 () Bool)

(declare-fun tp!1496486 () Bool)

(assert (=> b!5418324 (= e!3358275 tp!1496486)))

(declare-fun b!5418323 () Bool)

(declare-fun tp!1496488 () Bool)

(declare-fun tp!1496487 () Bool)

(assert (=> b!5418323 (= e!3358275 (and tp!1496488 tp!1496487))))

(declare-fun b!5418322 () Bool)

(assert (=> b!5418322 (= e!3358275 tp_is_empty!39651)))

(assert (= (and b!5417061 ((_ is ElementMatch!15199) (regOne!30911 r!7292))) b!5418322))

(assert (= (and b!5417061 ((_ is Concat!24044) (regOne!30911 r!7292))) b!5418323))

(assert (= (and b!5417061 ((_ is Star!15199) (regOne!30911 r!7292))) b!5418324))

(assert (= (and b!5417061 ((_ is Union!15199) (regOne!30911 r!7292))) b!5418325))

(declare-fun b!5418329 () Bool)

(declare-fun e!3358276 () Bool)

(declare-fun tp!1496489 () Bool)

(declare-fun tp!1496490 () Bool)

(assert (=> b!5418329 (= e!3358276 (and tp!1496489 tp!1496490))))

(assert (=> b!5417061 (= tp!1496375 e!3358276)))

(declare-fun b!5418328 () Bool)

(declare-fun tp!1496491 () Bool)

(assert (=> b!5418328 (= e!3358276 tp!1496491)))

(declare-fun b!5418327 () Bool)

(declare-fun tp!1496493 () Bool)

(declare-fun tp!1496492 () Bool)

(assert (=> b!5418327 (= e!3358276 (and tp!1496493 tp!1496492))))

(declare-fun b!5418326 () Bool)

(assert (=> b!5418326 (= e!3358276 tp_is_empty!39651)))

(assert (= (and b!5417061 ((_ is ElementMatch!15199) (regTwo!30911 r!7292))) b!5418326))

(assert (= (and b!5417061 ((_ is Concat!24044) (regTwo!30911 r!7292))) b!5418327))

(assert (= (and b!5417061 ((_ is Star!15199) (regTwo!30911 r!7292))) b!5418328))

(assert (= (and b!5417061 ((_ is Union!15199) (regTwo!30911 r!7292))) b!5418329))

(declare-fun b_lambda!206859 () Bool)

(assert (= b_lambda!206845 (or b!5417072 b_lambda!206859)))

(declare-fun bs!1251838 () Bool)

(declare-fun d!1728837 () Bool)

(assert (= bs!1251838 (and d!1728837 b!5417072)))

(declare-fun lt!2209432 () Unit!154318)

(assert (=> bs!1251838 (= lt!2209432 (lemmaConcatPreservesForall!224 (exprs!5083 lt!2209134) lt!2209186 lambda!283366))))

(assert (=> bs!1251838 (= (dynLambda!24344 lambda!283365 lt!2209134) (Context!9167 (++!13571 (exprs!5083 lt!2209134) lt!2209186)))))

(declare-fun m!6442368 () Bool)

(assert (=> bs!1251838 m!6442368))

(declare-fun m!6442370 () Bool)

(assert (=> bs!1251838 m!6442370))

(assert (=> d!1728593 d!1728837))

(declare-fun b_lambda!206861 () Bool)

(assert (= b_lambda!206831 (or b!5417082 b_lambda!206861)))

(declare-fun bs!1251839 () Bool)

(declare-fun d!1728839 () Bool)

(assert (= bs!1251839 (and d!1728839 b!5417082)))

(assert (=> bs!1251839 (= (dynLambda!24342 lambda!283364 lt!2209134) (derivationStepZipperUp!571 lt!2209134 (h!68220 s!2326)))))

(assert (=> bs!1251839 m!6441066))

(assert (=> d!1728443 d!1728839))

(declare-fun b_lambda!206863 () Bool)

(assert (= b_lambda!206857 (or b!5417082 b_lambda!206863)))

(declare-fun bs!1251840 () Bool)

(declare-fun d!1728841 () Bool)

(assert (= bs!1251840 (and d!1728841 b!5417082)))

(assert (=> bs!1251840 (= (dynLambda!24342 lambda!283364 (h!68222 zl!343)) (derivationStepZipperUp!571 (h!68222 zl!343) (h!68220 s!2326)))))

(assert (=> bs!1251840 m!6440964))

(assert (=> d!1728833 d!1728841))

(declare-fun b_lambda!206865 () Bool)

(assert (= b_lambda!206839 (or b!5417082 b_lambda!206865)))

(declare-fun bs!1251841 () Bool)

(declare-fun d!1728843 () Bool)

(assert (= bs!1251841 (and d!1728843 b!5417082)))

(assert (=> bs!1251841 (= (dynLambda!24342 lambda!283364 lt!2209187) (derivationStepZipperUp!571 lt!2209187 (h!68220 s!2326)))))

(assert (=> bs!1251841 m!6441010))

(assert (=> d!1728531 d!1728843))

(declare-fun b_lambda!206867 () Bool)

(assert (= b_lambda!206829 (or b!5417082 b_lambda!206867)))

(declare-fun bs!1251842 () Bool)

(declare-fun d!1728845 () Bool)

(assert (= bs!1251842 (and d!1728845 b!5417082)))

(assert (=> bs!1251842 (= (dynLambda!24342 lambda!283364 lt!2209161) (derivationStepZipperUp!571 lt!2209161 (h!68220 s!2326)))))

(assert (=> bs!1251842 m!6441060))

(assert (=> d!1728441 d!1728845))

(check-sat (not b!5418316) (not b!5417781) (not b!5417505) (not b!5418303) (not d!1728533) (not b!5418010) (not d!1728673) (not b!5417740) (not d!1728577) (not d!1728765) (not b!5417591) (not b!5418144) (not bm!387760) (not b!5417877) (not b!5418250) (not b!5417901) (not b!5418154) (not d!1728805) (not b!5417446) (not b!5417694) (not b!5417786) (not b!5418068) (not b!5417554) (not bm!387740) (not bm!387744) (not b!5418111) (not d!1728799) (not d!1728635) (not b!5418159) (not b!5417593) (not d!1728567) (not b!5417165) (not b!5417379) (not b!5417235) (not b!5418328) (not b!5418258) (not d!1728803) (not b!5417900) (not b!5418157) (not bm!387666) (not d!1728603) (not d!1728699) (not b!5417710) (not d!1728479) (not bm!387689) (not b!5418302) (not b!5418155) (not b!5417715) (not bm!387761) (not b!5418327) (not bm!387665) (not b!5418315) (not d!1728833) (not d!1728705) (not b!5417743) (not d!1728663) (not d!1728461) (not bm!387687) (not b!5417594) (not bs!1251838) (not b!5418311) (not b!5417782) (not d!1728531) (not d!1728775) (not b!5417504) (not b!5417399) (not b!5417401) (not b!5417701) (not b!5417752) (not d!1728801) (not d!1728441) (not bm!387782) (not b!5418297) (not b!5417696) (not b!5417695) (not d!1728609) (not b!5417772) (not b!5417724) (not d!1728469) (not b_lambda!206863) (not bm!387777) (not b!5417864) (not d!1728437) (not b!5418240) (not d!1728655) (not b!5418070) (not b!5417702) (not d!1728505) (not b!5418071) (not b!5417846) (not b!5417889) (not d!1728611) (not b!5417745) (not b!5418266) (not d!1728739) (not b!5417223) (not b!5418113) (not d!1728581) (not b!5417226) (not b!5418153) (not b!5418011) (not d!1728737) (not b!5417773) (not bm!387785) (not d!1728697) (not d!1728791) (not bm!387751) tp_is_empty!39651 (not b!5418312) (not b!5418112) (not d!1728681) (not b_lambda!206861) (not d!1728571) (not b_lambda!206865) (not d!1728607) (not d!1728575) (not b!5418015) (not b!5417685) (not bm!387781) (not b!5417750) (not d!1728687) (not b!5418141) (not b!5418314) (not b!5418310) (not d!1728825) (not b!5418075) (not d!1728445) (not b!5417722) (not d!1728743) (not d!1728649) (not d!1728733) (not b!5417798) (not bm!387745) (not d!1728513) (not b!5418260) (not b!5418158) (not b!5418285) (not d!1728551) (not b!5417778) (not b!5417299) (not d!1728605) (not b!5417217) (not bm!387786) (not b!5417850) (not b!5417785) (not b!5417294) (not b!5417442) (not b!5417984) (not b!5418298) (not d!1728565) (not b!5417716) (not b!5418280) (not b!5417686) (not b!5417682) (not d!1728629) (not d!1728443) (not b!5418299) (not d!1728455) (not b!5417878) (not bm!387762) (not b!5418255) (not b!5418329) (not b!5417162) (not d!1728573) (not b!5417225) (not b!5417561) (not d!1728579) (not b_lambda!206859) (not b!5417799) (not b!5417160) (not d!1728619) (not d!1728677) (not b!5417400) (not b!5417403) (not b!5417698) (not b!5417218) (not bm!387776) (not d!1728831) (not bm!387775) (not d!1728507) (not b!5417888) (not d!1728433) (not b!5417980) (not d!1728615) (not d!1728665) (not d!1728667) (not b!5417592) (not bm!387748) (not b!5417789) (not d!1728459) (not d!1728527) (not b_lambda!206867) (not bm!387742) (not b!5417981) (not b!5417551) (not bm!387750) (not b!5418156) (not b!5417744) (not b!5418074) (not bm!387739) (not d!1728613) (not b!5417988) (not bm!387690) (not d!1728621) (not bm!387783) (not d!1728797) (not b!5417703) (not d!1728637) (not b!5418324) (not bm!387784) (not b!5418118) (not b!5417378) (not bm!387695) (not d!1728789) (not b!5418253) (not b!5417687) (not b!5418321) (not b!5418263) (not bs!1251841) (not bm!387696) (not b!5417692) (not b!5417157) (not bs!1251842) (not b!5417302) (not b!5417556) (not d!1728643) (not setNonEmpty!35303) (not b!5417222) (not b!5417298) (not b!5417563) (not b!5417847) (not b!5417402) (not d!1728625) (not d!1728709) (not d!1728669) (not b!5417708) (not b!5418145) (not d!1728683) (not d!1728717) (not d!1728467) (not b!5418115) (not b!5418128) (not b!5417295) (not b!5417771) (not d!1728593) (not b!5417983) (not bm!387699) (not b!5417784) (not bs!1251840) (not b!5418114) (not bm!387746) (not d!1728633) (not bs!1251839) (not d!1728511) (not d!1728707) (not b!5418117) (not b!5418146) (not b!5418162) (not b!5417865) (not d!1728795) (not b!5418323) (not b!5417666) (not b!5417443) (not b!5417712) (not b!5417665) (not d!1728509) (not b!5417875) (not b!5417780) (not b!5418072) (not b!5418014) (not b!5417297) (not b!5417717) (not bm!387738) (not bm!387752) (not b!5417555) (not b!5417224) (not d!1728471) (not b!5417768) (not b!5418127) (not b!5417985) (not b!5418151) (not d!1728463) (not b!5418325) (not d!1728745) (not b!5418301))
(check-sat)
