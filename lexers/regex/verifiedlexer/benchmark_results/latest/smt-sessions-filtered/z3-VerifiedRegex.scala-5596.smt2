; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!280896 () Bool)

(assert start!280896)

(declare-fun b!2878137 () Bool)

(declare-fun e!1821152 () Bool)

(declare-fun e!1821150 () Bool)

(assert (=> b!2878137 (= e!1821152 e!1821150)))

(declare-fun res!1193189 () Bool)

(assert (=> b!2878137 (=> (not res!1193189) (not e!1821150))))

(declare-datatypes ((C!17676 0))(
  ( (C!17677 (val!10872 Int)) )
))
(declare-datatypes ((List!34532 0))(
  ( (Nil!34408) (Cons!34408 (h!39828 C!17676) (t!233575 List!34532)) )
))
(declare-datatypes ((Option!6422 0))(
  ( (None!6421) (Some!6421 (v!34547 List!34532)) )
))
(declare-fun lt!1019148 () Option!6422)

(get-info :version)

(assert (=> b!2878137 (= res!1193189 ((_ is Some!6421) lt!1019148))))

(declare-datatypes ((Regex!8747 0))(
  ( (ElementMatch!8747 (c!466810 C!17676)) (Concat!14068 (regOne!18006 Regex!8747) (regTwo!18006 Regex!8747)) (EmptyExpr!8747) (Star!8747 (reg!9076 Regex!8747)) (EmptyLang!8747) (Union!8747 (regOne!18007 Regex!8747) (regTwo!18007 Regex!8747)) )
))
(declare-datatypes ((List!34533 0))(
  ( (Nil!34409) (Cons!34409 (h!39829 Regex!8747) (t!233576 List!34533)) )
))
(declare-datatypes ((Context!5414 0))(
  ( (Context!5415 (exprs!3207 List!34533)) )
))
(declare-fun lt!1019143 () Context!5414)

(declare-fun getLanguageWitness!445 (Context!5414) Option!6422)

(assert (=> b!2878137 (= lt!1019148 (getLanguageWitness!445 lt!1019143))))

(declare-fun c!7184 () Context!5414)

(assert (=> b!2878137 (= lt!1019143 (Context!5415 (t!233576 (exprs!3207 c!7184))))))

(declare-fun b!2878138 () Bool)

(declare-fun e!1821149 () Bool)

(declare-fun e!1821153 () Bool)

(assert (=> b!2878138 (= e!1821149 e!1821153)))

(declare-fun res!1193188 () Bool)

(assert (=> b!2878138 (=> res!1193188 e!1821153)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!1019145 () (InoxSet Context!5414))

(declare-fun matchZipper!489 ((InoxSet Context!5414) List!34532) Bool)

(assert (=> b!2878138 (= res!1193188 (not (matchZipper!489 lt!1019145 (v!34547 lt!1019148))))))

(declare-fun lt!1019147 () (InoxSet Context!5414))

(declare-fun lt!1019141 () Option!6422)

(assert (=> b!2878138 (matchZipper!489 lt!1019147 (v!34547 lt!1019141))))

(declare-fun lt!1019144 () Context!5414)

(declare-datatypes ((Unit!47995 0))(
  ( (Unit!47996) )
))
(declare-fun lt!1019146 () Unit!47995)

(declare-datatypes ((List!34534 0))(
  ( (Nil!34410) (Cons!34410 (h!39830 Context!5414) (t!233577 List!34534)) )
))
(declare-fun theoremZipperRegexEquiv!121 ((InoxSet Context!5414) List!34534 Regex!8747 List!34532) Unit!47995)

(assert (=> b!2878138 (= lt!1019146 (theoremZipperRegexEquiv!121 lt!1019147 (Cons!34410 lt!1019144 Nil!34410) (h!39829 (exprs!3207 c!7184)) (v!34547 lt!1019141)))))

(assert (=> b!2878138 (= lt!1019147 (store ((as const (Array Context!5414 Bool)) false) lt!1019144 true))))

(assert (=> b!2878138 (= lt!1019144 (Context!5415 (Cons!34409 (h!39829 (exprs!3207 c!7184)) Nil!34409)))))

(declare-fun b!2878139 () Bool)

(declare-fun res!1193185 () Bool)

(declare-fun e!1821151 () Bool)

(assert (=> b!2878139 (=> (not res!1193185) (not e!1821151))))

(assert (=> b!2878139 (= res!1193185 ((_ is Cons!34409) (exprs!3207 c!7184)))))

(declare-fun b!2878140 () Bool)

(assert (=> b!2878140 (= e!1821151 e!1821152)))

(declare-fun res!1193184 () Bool)

(assert (=> b!2878140 (=> (not res!1193184) (not e!1821152))))

(assert (=> b!2878140 (= res!1193184 ((_ is Some!6421) lt!1019141))))

(declare-fun getLanguageWitness!446 (Regex!8747) Option!6422)

(assert (=> b!2878140 (= lt!1019141 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878141 () Bool)

(declare-fun e!1821148 () Bool)

(declare-fun tp!923944 () Bool)

(assert (=> b!2878141 (= e!1821148 tp!923944)))

(declare-fun res!1193187 () Bool)

(assert (=> start!280896 (=> (not res!1193187) (not e!1821151))))

(declare-fun lostCause!839 (Context!5414) Bool)

(assert (=> start!280896 (= res!1193187 (not (lostCause!839 c!7184)))))

(assert (=> start!280896 e!1821151))

(declare-fun inv!46454 (Context!5414) Bool)

(assert (=> start!280896 (and (inv!46454 c!7184) e!1821148)))

(declare-fun b!2878142 () Bool)

(assert (=> b!2878142 (= e!1821150 (not e!1821149))))

(declare-fun res!1193186 () Bool)

(assert (=> b!2878142 (=> res!1193186 e!1821149)))

(declare-fun matchR!3747 (Regex!8747 List!34532) Bool)

(assert (=> b!2878142 (= res!1193186 (not (matchR!3747 (h!39829 (exprs!3207 c!7184)) (v!34547 lt!1019141))))))

(declare-fun get!10347 (Option!6422) List!34532)

(assert (=> b!2878142 (matchZipper!489 lt!1019145 (get!10347 lt!1019148))))

(assert (=> b!2878142 (= lt!1019145 (store ((as const (Array Context!5414 Bool)) false) lt!1019143 true))))

(declare-fun lt!1019142 () Unit!47995)

(declare-fun lemmaGetWitnessMatchesContext!46 (Context!5414) Unit!47995)

(assert (=> b!2878142 (= lt!1019142 (lemmaGetWitnessMatchesContext!46 lt!1019143))))

(assert (=> b!2878142 (matchR!3747 (h!39829 (exprs!3207 c!7184)) (get!10347 lt!1019141))))

(declare-fun lt!1019149 () Unit!47995)

(declare-fun lemmaGetWitnessMatches!54 (Regex!8747) Unit!47995)

(assert (=> b!2878142 (= lt!1019149 (lemmaGetWitnessMatches!54 (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878143 () Bool)

(assert (=> b!2878143 (= e!1821153 (inv!46454 lt!1019144))))

(assert (= (and start!280896 res!1193187) b!2878139))

(assert (= (and b!2878139 res!1193185) b!2878140))

(assert (= (and b!2878140 res!1193184) b!2878137))

(assert (= (and b!2878137 res!1193189) b!2878142))

(assert (= (and b!2878142 (not res!1193186)) b!2878138))

(assert (= (and b!2878138 (not res!1193188)) b!2878143))

(assert (= start!280896 b!2878141))

(declare-fun m!3295533 () Bool)

(assert (=> b!2878138 m!3295533))

(declare-fun m!3295535 () Bool)

(assert (=> b!2878138 m!3295535))

(declare-fun m!3295537 () Bool)

(assert (=> b!2878138 m!3295537))

(declare-fun m!3295539 () Bool)

(assert (=> b!2878138 m!3295539))

(declare-fun m!3295541 () Bool)

(assert (=> b!2878142 m!3295541))

(declare-fun m!3295543 () Bool)

(assert (=> b!2878142 m!3295543))

(declare-fun m!3295545 () Bool)

(assert (=> b!2878142 m!3295545))

(declare-fun m!3295547 () Bool)

(assert (=> b!2878142 m!3295547))

(declare-fun m!3295549 () Bool)

(assert (=> b!2878142 m!3295549))

(assert (=> b!2878142 m!3295547))

(declare-fun m!3295551 () Bool)

(assert (=> b!2878142 m!3295551))

(declare-fun m!3295553 () Bool)

(assert (=> b!2878142 m!3295553))

(assert (=> b!2878142 m!3295553))

(declare-fun m!3295555 () Bool)

(assert (=> b!2878142 m!3295555))

(declare-fun m!3295557 () Bool)

(assert (=> b!2878143 m!3295557))

(declare-fun m!3295559 () Bool)

(assert (=> start!280896 m!3295559))

(declare-fun m!3295561 () Bool)

(assert (=> start!280896 m!3295561))

(declare-fun m!3295563 () Bool)

(assert (=> b!2878140 m!3295563))

(declare-fun m!3295565 () Bool)

(assert (=> b!2878137 m!3295565))

(check-sat (not b!2878138) (not b!2878140) (not b!2878137) (not b!2878142) (not start!280896) (not b!2878143) (not b!2878141))
(check-sat)
(get-model)

(declare-fun d!832129 () Bool)

(declare-fun c!466813 () Bool)

(declare-fun isEmpty!18737 (List!34532) Bool)

(assert (=> d!832129 (= c!466813 (isEmpty!18737 (v!34547 lt!1019148)))))

(declare-fun e!1821156 () Bool)

(assert (=> d!832129 (= (matchZipper!489 lt!1019145 (v!34547 lt!1019148)) e!1821156)))

(declare-fun b!2878148 () Bool)

(declare-fun nullableZipper!725 ((InoxSet Context!5414)) Bool)

(assert (=> b!2878148 (= e!1821156 (nullableZipper!725 lt!1019145))))

(declare-fun b!2878149 () Bool)

(declare-fun derivationStepZipper!481 ((InoxSet Context!5414) C!17676) (InoxSet Context!5414))

(declare-fun head!6354 (List!34532) C!17676)

(declare-fun tail!4579 (List!34532) List!34532)

(assert (=> b!2878149 (= e!1821156 (matchZipper!489 (derivationStepZipper!481 lt!1019145 (head!6354 (v!34547 lt!1019148))) (tail!4579 (v!34547 lt!1019148))))))

(assert (= (and d!832129 c!466813) b!2878148))

(assert (= (and d!832129 (not c!466813)) b!2878149))

(declare-fun m!3295567 () Bool)

(assert (=> d!832129 m!3295567))

(declare-fun m!3295569 () Bool)

(assert (=> b!2878148 m!3295569))

(declare-fun m!3295571 () Bool)

(assert (=> b!2878149 m!3295571))

(assert (=> b!2878149 m!3295571))

(declare-fun m!3295573 () Bool)

(assert (=> b!2878149 m!3295573))

(declare-fun m!3295575 () Bool)

(assert (=> b!2878149 m!3295575))

(assert (=> b!2878149 m!3295573))

(assert (=> b!2878149 m!3295575))

(declare-fun m!3295577 () Bool)

(assert (=> b!2878149 m!3295577))

(assert (=> b!2878138 d!832129))

(declare-fun d!832133 () Bool)

(declare-fun c!466814 () Bool)

(assert (=> d!832133 (= c!466814 (isEmpty!18737 (v!34547 lt!1019141)))))

(declare-fun e!1821157 () Bool)

(assert (=> d!832133 (= (matchZipper!489 lt!1019147 (v!34547 lt!1019141)) e!1821157)))

(declare-fun b!2878150 () Bool)

(assert (=> b!2878150 (= e!1821157 (nullableZipper!725 lt!1019147))))

(declare-fun b!2878151 () Bool)

(assert (=> b!2878151 (= e!1821157 (matchZipper!489 (derivationStepZipper!481 lt!1019147 (head!6354 (v!34547 lt!1019141))) (tail!4579 (v!34547 lt!1019141))))))

(assert (= (and d!832133 c!466814) b!2878150))

(assert (= (and d!832133 (not c!466814)) b!2878151))

(declare-fun m!3295579 () Bool)

(assert (=> d!832133 m!3295579))

(declare-fun m!3295581 () Bool)

(assert (=> b!2878150 m!3295581))

(declare-fun m!3295583 () Bool)

(assert (=> b!2878151 m!3295583))

(assert (=> b!2878151 m!3295583))

(declare-fun m!3295585 () Bool)

(assert (=> b!2878151 m!3295585))

(declare-fun m!3295587 () Bool)

(assert (=> b!2878151 m!3295587))

(assert (=> b!2878151 m!3295585))

(assert (=> b!2878151 m!3295587))

(declare-fun m!3295589 () Bool)

(assert (=> b!2878151 m!3295589))

(assert (=> b!2878138 d!832133))

(declare-fun d!832135 () Bool)

(assert (=> d!832135 (= (matchR!3747 (h!39829 (exprs!3207 c!7184)) (v!34547 lt!1019141)) (matchZipper!489 lt!1019147 (v!34547 lt!1019141)))))

(declare-fun lt!1019152 () Unit!47995)

(declare-fun choose!17022 ((InoxSet Context!5414) List!34534 Regex!8747 List!34532) Unit!47995)

(assert (=> d!832135 (= lt!1019152 (choose!17022 lt!1019147 (Cons!34410 lt!1019144 Nil!34410) (h!39829 (exprs!3207 c!7184)) (v!34547 lt!1019141)))))

(declare-fun validRegex!3525 (Regex!8747) Bool)

(assert (=> d!832135 (validRegex!3525 (h!39829 (exprs!3207 c!7184)))))

(assert (=> d!832135 (= (theoremZipperRegexEquiv!121 lt!1019147 (Cons!34410 lt!1019144 Nil!34410) (h!39829 (exprs!3207 c!7184)) (v!34547 lt!1019141)) lt!1019152)))

(declare-fun bs!522996 () Bool)

(assert (= bs!522996 d!832135))

(assert (=> bs!522996 m!3295543))

(assert (=> bs!522996 m!3295535))

(declare-fun m!3295591 () Bool)

(assert (=> bs!522996 m!3295591))

(declare-fun m!3295593 () Bool)

(assert (=> bs!522996 m!3295593))

(assert (=> b!2878138 d!832135))

(declare-fun d!832137 () Bool)

(declare-fun lambda!107387 () Int)

(declare-fun forall!7091 (List!34533 Int) Bool)

(assert (=> d!832137 (= (inv!46454 lt!1019144) (forall!7091 (exprs!3207 lt!1019144) lambda!107387))))

(declare-fun bs!523009 () Bool)

(assert (= bs!523009 d!832137))

(declare-fun m!3295689 () Bool)

(assert (=> bs!523009 m!3295689))

(assert (=> b!2878143 d!832137))

(declare-fun b!2878317 () Bool)

(declare-fun res!1193241 () Bool)

(declare-fun e!1821241 () Bool)

(assert (=> b!2878317 (=> res!1193241 e!1821241)))

(declare-fun e!1821245 () Bool)

(assert (=> b!2878317 (= res!1193241 e!1821245)))

(declare-fun res!1193239 () Bool)

(assert (=> b!2878317 (=> (not res!1193239) (not e!1821245))))

(declare-fun lt!1019186 () Bool)

(assert (=> b!2878317 (= res!1193239 lt!1019186)))

(declare-fun b!2878319 () Bool)

(declare-fun res!1193240 () Bool)

(assert (=> b!2878319 (=> (not res!1193240) (not e!1821245))))

(declare-fun call!186431 () Bool)

(assert (=> b!2878319 (= res!1193240 (not call!186431))))

(declare-fun bm!186426 () Bool)

(assert (=> bm!186426 (= call!186431 (isEmpty!18737 (v!34547 lt!1019141)))))

(declare-fun b!2878320 () Bool)

(declare-fun e!1821243 () Bool)

(declare-fun nullable!2697 (Regex!8747) Bool)

(assert (=> b!2878320 (= e!1821243 (nullable!2697 (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878321 () Bool)

(declare-fun derivativeStep!2330 (Regex!8747 C!17676) Regex!8747)

(assert (=> b!2878321 (= e!1821243 (matchR!3747 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))) (tail!4579 (v!34547 lt!1019141))))))

(declare-fun b!2878322 () Bool)

(declare-fun e!1821246 () Bool)

(assert (=> b!2878322 (= e!1821246 (not lt!1019186))))

(declare-fun b!2878323 () Bool)

(declare-fun res!1193244 () Bool)

(assert (=> b!2878323 (=> res!1193244 e!1821241)))

(assert (=> b!2878323 (= res!1193244 (not ((_ is ElementMatch!8747) (h!39829 (exprs!3207 c!7184)))))))

(assert (=> b!2878323 (= e!1821246 e!1821241)))

(declare-fun b!2878324 () Bool)

(declare-fun res!1193245 () Bool)

(declare-fun e!1821247 () Bool)

(assert (=> b!2878324 (=> res!1193245 e!1821247)))

(assert (=> b!2878324 (= res!1193245 (not (isEmpty!18737 (tail!4579 (v!34547 lt!1019141)))))))

(declare-fun b!2878325 () Bool)

(declare-fun res!1193243 () Bool)

(assert (=> b!2878325 (=> (not res!1193243) (not e!1821245))))

(assert (=> b!2878325 (= res!1193243 (isEmpty!18737 (tail!4579 (v!34547 lt!1019141))))))

(declare-fun b!2878326 () Bool)

(assert (=> b!2878326 (= e!1821245 (= (head!6354 (v!34547 lt!1019141)) (c!466810 (h!39829 (exprs!3207 c!7184)))))))

(declare-fun b!2878327 () Bool)

(assert (=> b!2878327 (= e!1821247 (not (= (head!6354 (v!34547 lt!1019141)) (c!466810 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2878328 () Bool)

(declare-fun e!1821244 () Bool)

(assert (=> b!2878328 (= e!1821244 e!1821247)))

(declare-fun res!1193238 () Bool)

(assert (=> b!2878328 (=> res!1193238 e!1821247)))

(assert (=> b!2878328 (= res!1193238 call!186431)))

(declare-fun b!2878318 () Bool)

(declare-fun e!1821242 () Bool)

(assert (=> b!2878318 (= e!1821242 (= lt!1019186 call!186431))))

(declare-fun d!832167 () Bool)

(assert (=> d!832167 e!1821242))

(declare-fun c!466873 () Bool)

(assert (=> d!832167 (= c!466873 ((_ is EmptyExpr!8747) (h!39829 (exprs!3207 c!7184))))))

(assert (=> d!832167 (= lt!1019186 e!1821243)))

(declare-fun c!466875 () Bool)

(assert (=> d!832167 (= c!466875 (isEmpty!18737 (v!34547 lt!1019141)))))

(assert (=> d!832167 (validRegex!3525 (h!39829 (exprs!3207 c!7184)))))

(assert (=> d!832167 (= (matchR!3747 (h!39829 (exprs!3207 c!7184)) (v!34547 lt!1019141)) lt!1019186)))

(declare-fun b!2878329 () Bool)

(assert (=> b!2878329 (= e!1821241 e!1821244)))

(declare-fun res!1193242 () Bool)

(assert (=> b!2878329 (=> (not res!1193242) (not e!1821244))))

(assert (=> b!2878329 (= res!1193242 (not lt!1019186))))

(declare-fun b!2878330 () Bool)

(assert (=> b!2878330 (= e!1821242 e!1821246)))

(declare-fun c!466874 () Bool)

(assert (=> b!2878330 (= c!466874 ((_ is EmptyLang!8747) (h!39829 (exprs!3207 c!7184))))))

(assert (= (and d!832167 c!466875) b!2878320))

(assert (= (and d!832167 (not c!466875)) b!2878321))

(assert (= (and d!832167 c!466873) b!2878318))

(assert (= (and d!832167 (not c!466873)) b!2878330))

(assert (= (and b!2878330 c!466874) b!2878322))

(assert (= (and b!2878330 (not c!466874)) b!2878323))

(assert (= (and b!2878323 (not res!1193244)) b!2878317))

(assert (= (and b!2878317 res!1193239) b!2878319))

(assert (= (and b!2878319 res!1193240) b!2878325))

(assert (= (and b!2878325 res!1193243) b!2878326))

(assert (= (and b!2878317 (not res!1193241)) b!2878329))

(assert (= (and b!2878329 res!1193242) b!2878328))

(assert (= (and b!2878328 (not res!1193238)) b!2878324))

(assert (= (and b!2878324 (not res!1193245)) b!2878327))

(assert (= (or b!2878318 b!2878319 b!2878328) bm!186426))

(assert (=> b!2878327 m!3295583))

(declare-fun m!3295691 () Bool)

(assert (=> b!2878320 m!3295691))

(assert (=> b!2878326 m!3295583))

(assert (=> b!2878325 m!3295587))

(assert (=> b!2878325 m!3295587))

(declare-fun m!3295693 () Bool)

(assert (=> b!2878325 m!3295693))

(assert (=> bm!186426 m!3295579))

(assert (=> b!2878321 m!3295583))

(assert (=> b!2878321 m!3295583))

(declare-fun m!3295695 () Bool)

(assert (=> b!2878321 m!3295695))

(assert (=> b!2878321 m!3295587))

(assert (=> b!2878321 m!3295695))

(assert (=> b!2878321 m!3295587))

(declare-fun m!3295697 () Bool)

(assert (=> b!2878321 m!3295697))

(assert (=> b!2878324 m!3295587))

(assert (=> b!2878324 m!3295587))

(assert (=> b!2878324 m!3295693))

(assert (=> d!832167 m!3295579))

(assert (=> d!832167 m!3295593))

(assert (=> b!2878142 d!832167))

(declare-fun d!832169 () Bool)

(assert (=> d!832169 (= (get!10347 lt!1019141) (v!34547 lt!1019141))))

(assert (=> b!2878142 d!832169))

(declare-fun d!832171 () Bool)

(declare-fun c!466876 () Bool)

(assert (=> d!832171 (= c!466876 (isEmpty!18737 (get!10347 lt!1019148)))))

(declare-fun e!1821248 () Bool)

(assert (=> d!832171 (= (matchZipper!489 lt!1019145 (get!10347 lt!1019148)) e!1821248)))

(declare-fun b!2878331 () Bool)

(assert (=> b!2878331 (= e!1821248 (nullableZipper!725 lt!1019145))))

(declare-fun b!2878332 () Bool)

(assert (=> b!2878332 (= e!1821248 (matchZipper!489 (derivationStepZipper!481 lt!1019145 (head!6354 (get!10347 lt!1019148))) (tail!4579 (get!10347 lt!1019148))))))

(assert (= (and d!832171 c!466876) b!2878331))

(assert (= (and d!832171 (not c!466876)) b!2878332))

(assert (=> d!832171 m!3295553))

(declare-fun m!3295699 () Bool)

(assert (=> d!832171 m!3295699))

(assert (=> b!2878331 m!3295569))

(assert (=> b!2878332 m!3295553))

(declare-fun m!3295701 () Bool)

(assert (=> b!2878332 m!3295701))

(assert (=> b!2878332 m!3295701))

(declare-fun m!3295703 () Bool)

(assert (=> b!2878332 m!3295703))

(assert (=> b!2878332 m!3295553))

(declare-fun m!3295705 () Bool)

(assert (=> b!2878332 m!3295705))

(assert (=> b!2878332 m!3295703))

(assert (=> b!2878332 m!3295705))

(declare-fun m!3295707 () Bool)

(assert (=> b!2878332 m!3295707))

(assert (=> b!2878142 d!832171))

(declare-fun d!832173 () Bool)

(assert (=> d!832173 (matchR!3747 (h!39829 (exprs!3207 c!7184)) (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))))

(declare-fun lt!1019189 () Unit!47995)

(declare-fun choose!17023 (Regex!8747) Unit!47995)

(assert (=> d!832173 (= lt!1019189 (choose!17023 (h!39829 (exprs!3207 c!7184))))))

(assert (=> d!832173 (validRegex!3525 (h!39829 (exprs!3207 c!7184)))))

(assert (=> d!832173 (= (lemmaGetWitnessMatches!54 (h!39829 (exprs!3207 c!7184))) lt!1019189)))

(declare-fun bs!523010 () Bool)

(assert (= bs!523010 d!832173))

(declare-fun m!3295709 () Bool)

(assert (=> bs!523010 m!3295709))

(declare-fun m!3295711 () Bool)

(assert (=> bs!523010 m!3295711))

(assert (=> bs!523010 m!3295593))

(declare-fun m!3295713 () Bool)

(assert (=> bs!523010 m!3295713))

(assert (=> bs!523010 m!3295563))

(assert (=> bs!523010 m!3295709))

(assert (=> bs!523010 m!3295563))

(assert (=> b!2878142 d!832173))

(declare-fun b!2878333 () Bool)

(declare-fun res!1193249 () Bool)

(declare-fun e!1821249 () Bool)

(assert (=> b!2878333 (=> res!1193249 e!1821249)))

(declare-fun e!1821253 () Bool)

(assert (=> b!2878333 (= res!1193249 e!1821253)))

(declare-fun res!1193247 () Bool)

(assert (=> b!2878333 (=> (not res!1193247) (not e!1821253))))

(declare-fun lt!1019190 () Bool)

(assert (=> b!2878333 (= res!1193247 lt!1019190)))

(declare-fun b!2878335 () Bool)

(declare-fun res!1193248 () Bool)

(assert (=> b!2878335 (=> (not res!1193248) (not e!1821253))))

(declare-fun call!186432 () Bool)

(assert (=> b!2878335 (= res!1193248 (not call!186432))))

(declare-fun bm!186427 () Bool)

(assert (=> bm!186427 (= call!186432 (isEmpty!18737 (get!10347 lt!1019141)))))

(declare-fun b!2878336 () Bool)

(declare-fun e!1821251 () Bool)

(assert (=> b!2878336 (= e!1821251 (nullable!2697 (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878337 () Bool)

(assert (=> b!2878337 (= e!1821251 (matchR!3747 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))) (tail!4579 (get!10347 lt!1019141))))))

(declare-fun b!2878338 () Bool)

(declare-fun e!1821254 () Bool)

(assert (=> b!2878338 (= e!1821254 (not lt!1019190))))

(declare-fun b!2878339 () Bool)

(declare-fun res!1193252 () Bool)

(assert (=> b!2878339 (=> res!1193252 e!1821249)))

(assert (=> b!2878339 (= res!1193252 (not ((_ is ElementMatch!8747) (h!39829 (exprs!3207 c!7184)))))))

(assert (=> b!2878339 (= e!1821254 e!1821249)))

(declare-fun b!2878340 () Bool)

(declare-fun res!1193253 () Bool)

(declare-fun e!1821255 () Bool)

(assert (=> b!2878340 (=> res!1193253 e!1821255)))

(assert (=> b!2878340 (= res!1193253 (not (isEmpty!18737 (tail!4579 (get!10347 lt!1019141)))))))

(declare-fun b!2878341 () Bool)

(declare-fun res!1193251 () Bool)

(assert (=> b!2878341 (=> (not res!1193251) (not e!1821253))))

(assert (=> b!2878341 (= res!1193251 (isEmpty!18737 (tail!4579 (get!10347 lt!1019141))))))

(declare-fun b!2878342 () Bool)

(assert (=> b!2878342 (= e!1821253 (= (head!6354 (get!10347 lt!1019141)) (c!466810 (h!39829 (exprs!3207 c!7184)))))))

(declare-fun b!2878343 () Bool)

(assert (=> b!2878343 (= e!1821255 (not (= (head!6354 (get!10347 lt!1019141)) (c!466810 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2878344 () Bool)

(declare-fun e!1821252 () Bool)

(assert (=> b!2878344 (= e!1821252 e!1821255)))

(declare-fun res!1193246 () Bool)

(assert (=> b!2878344 (=> res!1193246 e!1821255)))

(assert (=> b!2878344 (= res!1193246 call!186432)))

(declare-fun b!2878334 () Bool)

(declare-fun e!1821250 () Bool)

(assert (=> b!2878334 (= e!1821250 (= lt!1019190 call!186432))))

(declare-fun d!832175 () Bool)

(assert (=> d!832175 e!1821250))

(declare-fun c!466877 () Bool)

(assert (=> d!832175 (= c!466877 ((_ is EmptyExpr!8747) (h!39829 (exprs!3207 c!7184))))))

(assert (=> d!832175 (= lt!1019190 e!1821251)))

(declare-fun c!466879 () Bool)

(assert (=> d!832175 (= c!466879 (isEmpty!18737 (get!10347 lt!1019141)))))

(assert (=> d!832175 (validRegex!3525 (h!39829 (exprs!3207 c!7184)))))

(assert (=> d!832175 (= (matchR!3747 (h!39829 (exprs!3207 c!7184)) (get!10347 lt!1019141)) lt!1019190)))

(declare-fun b!2878345 () Bool)

(assert (=> b!2878345 (= e!1821249 e!1821252)))

(declare-fun res!1193250 () Bool)

(assert (=> b!2878345 (=> (not res!1193250) (not e!1821252))))

(assert (=> b!2878345 (= res!1193250 (not lt!1019190))))

(declare-fun b!2878346 () Bool)

(assert (=> b!2878346 (= e!1821250 e!1821254)))

(declare-fun c!466878 () Bool)

(assert (=> b!2878346 (= c!466878 ((_ is EmptyLang!8747) (h!39829 (exprs!3207 c!7184))))))

(assert (= (and d!832175 c!466879) b!2878336))

(assert (= (and d!832175 (not c!466879)) b!2878337))

(assert (= (and d!832175 c!466877) b!2878334))

(assert (= (and d!832175 (not c!466877)) b!2878346))

(assert (= (and b!2878346 c!466878) b!2878338))

(assert (= (and b!2878346 (not c!466878)) b!2878339))

(assert (= (and b!2878339 (not res!1193252)) b!2878333))

(assert (= (and b!2878333 res!1193247) b!2878335))

(assert (= (and b!2878335 res!1193248) b!2878341))

(assert (= (and b!2878341 res!1193251) b!2878342))

(assert (= (and b!2878333 (not res!1193249)) b!2878345))

(assert (= (and b!2878345 res!1193250) b!2878344))

(assert (= (and b!2878344 (not res!1193246)) b!2878340))

(assert (= (and b!2878340 (not res!1193253)) b!2878343))

(assert (= (or b!2878334 b!2878335 b!2878344) bm!186427))

(assert (=> b!2878343 m!3295547))

(declare-fun m!3295715 () Bool)

(assert (=> b!2878343 m!3295715))

(assert (=> b!2878336 m!3295691))

(assert (=> b!2878342 m!3295547))

(assert (=> b!2878342 m!3295715))

(assert (=> b!2878341 m!3295547))

(declare-fun m!3295717 () Bool)

(assert (=> b!2878341 m!3295717))

(assert (=> b!2878341 m!3295717))

(declare-fun m!3295719 () Bool)

(assert (=> b!2878341 m!3295719))

(assert (=> bm!186427 m!3295547))

(declare-fun m!3295721 () Bool)

(assert (=> bm!186427 m!3295721))

(assert (=> b!2878337 m!3295547))

(assert (=> b!2878337 m!3295715))

(assert (=> b!2878337 m!3295715))

(declare-fun m!3295723 () Bool)

(assert (=> b!2878337 m!3295723))

(assert (=> b!2878337 m!3295547))

(assert (=> b!2878337 m!3295717))

(assert (=> b!2878337 m!3295723))

(assert (=> b!2878337 m!3295717))

(declare-fun m!3295725 () Bool)

(assert (=> b!2878337 m!3295725))

(assert (=> b!2878340 m!3295547))

(assert (=> b!2878340 m!3295717))

(assert (=> b!2878340 m!3295717))

(assert (=> b!2878340 m!3295719))

(assert (=> d!832175 m!3295547))

(assert (=> d!832175 m!3295721))

(assert (=> d!832175 m!3295593))

(assert (=> b!2878142 d!832175))

(declare-fun d!832177 () Bool)

(assert (=> d!832177 (matchZipper!489 (store ((as const (Array Context!5414 Bool)) false) lt!1019143 true) (get!10347 (getLanguageWitness!445 lt!1019143)))))

(declare-fun lt!1019193 () Unit!47995)

(declare-fun choose!17024 (Context!5414) Unit!47995)

(assert (=> d!832177 (= lt!1019193 (choose!17024 lt!1019143))))

(assert (=> d!832177 (not (lostCause!839 lt!1019143))))

(assert (=> d!832177 (= (lemmaGetWitnessMatchesContext!46 lt!1019143) lt!1019193)))

(declare-fun bs!523011 () Bool)

(assert (= bs!523011 d!832177))

(assert (=> bs!523011 m!3295565))

(declare-fun m!3295727 () Bool)

(assert (=> bs!523011 m!3295727))

(declare-fun m!3295729 () Bool)

(assert (=> bs!523011 m!3295729))

(assert (=> bs!523011 m!3295545))

(assert (=> bs!523011 m!3295565))

(assert (=> bs!523011 m!3295545))

(assert (=> bs!523011 m!3295727))

(declare-fun m!3295731 () Bool)

(assert (=> bs!523011 m!3295731))

(declare-fun m!3295733 () Bool)

(assert (=> bs!523011 m!3295733))

(assert (=> b!2878142 d!832177))

(declare-fun d!832179 () Bool)

(assert (=> d!832179 (= (get!10347 lt!1019148) (v!34547 lt!1019148))))

(assert (=> b!2878142 d!832179))

(declare-fun bs!523012 () Bool)

(declare-fun d!832181 () Bool)

(assert (= bs!523012 (and d!832181 d!832137)))

(declare-fun lambda!107390 () Int)

(assert (=> bs!523012 (not (= lambda!107390 lambda!107387))))

(declare-fun b!2878359 () Bool)

(declare-fun e!1821262 () Option!6422)

(declare-fun e!1821263 () Option!6422)

(assert (=> b!2878359 (= e!1821262 e!1821263)))

(declare-fun lt!1019201 () Option!6422)

(assert (=> b!2878359 (= lt!1019201 (getLanguageWitness!446 (h!39829 (exprs!3207 lt!1019143))))))

(declare-fun c!466890 () Bool)

(assert (=> b!2878359 (= c!466890 ((_ is Some!6421) lt!1019201))))

(declare-fun lt!1019200 () Option!6422)

(declare-fun isEmpty!18738 (Option!6422) Bool)

(declare-fun exists!1182 (List!34533 Int) Bool)

(assert (=> d!832181 (= (isEmpty!18738 lt!1019200) (exists!1182 (exprs!3207 lt!1019143) lambda!107390))))

(assert (=> d!832181 (= lt!1019200 e!1821262)))

(declare-fun c!466888 () Bool)

(assert (=> d!832181 (= c!466888 ((_ is Cons!34409) (exprs!3207 lt!1019143)))))

(assert (=> d!832181 (= (getLanguageWitness!445 lt!1019143) lt!1019200)))

(declare-fun b!2878360 () Bool)

(declare-fun e!1821264 () Option!6422)

(declare-fun lt!1019202 () Option!6422)

(declare-fun ++!8183 (List!34532 List!34532) List!34532)

(assert (=> b!2878360 (= e!1821264 (Some!6421 (++!8183 (v!34547 lt!1019201) (v!34547 lt!1019202))))))

(declare-fun b!2878361 () Bool)

(assert (=> b!2878361 (= e!1821263 None!6421)))

(declare-fun b!2878362 () Bool)

(assert (=> b!2878362 (= e!1821262 (Some!6421 Nil!34408))))

(declare-fun b!2878363 () Bool)

(declare-fun c!466889 () Bool)

(assert (=> b!2878363 (= c!466889 ((_ is Some!6421) lt!1019202))))

(assert (=> b!2878363 (= lt!1019202 (getLanguageWitness!445 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))))))

(assert (=> b!2878363 (= e!1821263 e!1821264)))

(declare-fun b!2878364 () Bool)

(assert (=> b!2878364 (= e!1821264 None!6421)))

(assert (= (and d!832181 c!466888) b!2878359))

(assert (= (and d!832181 (not c!466888)) b!2878362))

(assert (= (and b!2878359 c!466890) b!2878363))

(assert (= (and b!2878359 (not c!466890)) b!2878361))

(assert (= (and b!2878363 c!466889) b!2878360))

(assert (= (and b!2878363 (not c!466889)) b!2878364))

(declare-fun m!3295735 () Bool)

(assert (=> b!2878359 m!3295735))

(declare-fun m!3295737 () Bool)

(assert (=> d!832181 m!3295737))

(declare-fun m!3295739 () Bool)

(assert (=> d!832181 m!3295739))

(declare-fun m!3295741 () Bool)

(assert (=> b!2878360 m!3295741))

(declare-fun m!3295743 () Bool)

(assert (=> b!2878363 m!3295743))

(assert (=> b!2878137 d!832181))

(declare-fun bs!523013 () Bool)

(declare-fun d!832183 () Bool)

(assert (= bs!523013 (and d!832183 d!832137)))

(declare-fun lambda!107393 () Int)

(assert (=> bs!523013 (not (= lambda!107393 lambda!107387))))

(declare-fun bs!523014 () Bool)

(assert (= bs!523014 (and d!832183 d!832181)))

(assert (=> bs!523014 (= lambda!107393 lambda!107390)))

(assert (=> d!832183 (= (lostCause!839 c!7184) (exists!1182 (exprs!3207 c!7184) lambda!107393))))

(declare-fun bs!523015 () Bool)

(assert (= bs!523015 d!832183))

(declare-fun m!3295745 () Bool)

(assert (=> bs!523015 m!3295745))

(assert (=> start!280896 d!832183))

(declare-fun bs!523016 () Bool)

(declare-fun d!832185 () Bool)

(assert (= bs!523016 (and d!832185 d!832137)))

(declare-fun lambda!107394 () Int)

(assert (=> bs!523016 (= lambda!107394 lambda!107387)))

(declare-fun bs!523017 () Bool)

(assert (= bs!523017 (and d!832185 d!832181)))

(assert (=> bs!523017 (not (= lambda!107394 lambda!107390))))

(declare-fun bs!523018 () Bool)

(assert (= bs!523018 (and d!832185 d!832183)))

(assert (=> bs!523018 (not (= lambda!107394 lambda!107393))))

(assert (=> d!832185 (= (inv!46454 c!7184) (forall!7091 (exprs!3207 c!7184) lambda!107394))))

(declare-fun bs!523019 () Bool)

(assert (= bs!523019 d!832185))

(declare-fun m!3295747 () Bool)

(assert (=> bs!523019 m!3295747))

(assert (=> start!280896 d!832185))

(declare-fun d!832187 () Bool)

(declare-fun c!466907 () Bool)

(assert (=> d!832187 (= c!466907 ((_ is EmptyExpr!8747) (h!39829 (exprs!3207 c!7184))))))

(declare-fun e!1821285 () Option!6422)

(assert (=> d!832187 (= (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))) e!1821285)))

(declare-fun b!2878397 () Bool)

(declare-fun e!1821283 () Option!6422)

(assert (=> b!2878397 (= e!1821283 None!6421)))

(declare-fun b!2878398 () Bool)

(declare-fun e!1821281 () Option!6422)

(declare-fun lt!1019209 () Option!6422)

(declare-fun lt!1019210 () Option!6422)

(assert (=> b!2878398 (= e!1821281 (Some!6421 (++!8183 (v!34547 lt!1019209) (v!34547 lt!1019210))))))

(declare-fun b!2878399 () Bool)

(declare-fun e!1821288 () Option!6422)

(declare-fun call!186437 () Option!6422)

(assert (=> b!2878399 (= e!1821288 call!186437)))

(declare-fun b!2878400 () Bool)

(assert (=> b!2878400 (= e!1821285 (Some!6421 Nil!34408))))

(declare-fun b!2878401 () Bool)

(assert (=> b!2878401 (= e!1821281 None!6421)))

(declare-fun b!2878402 () Bool)

(declare-fun e!1821287 () Option!6422)

(assert (=> b!2878402 (= e!1821287 e!1821288)))

(declare-fun lt!1019211 () Option!6422)

(declare-fun call!186438 () Option!6422)

(assert (=> b!2878402 (= lt!1019211 call!186438)))

(declare-fun c!466914 () Bool)

(assert (=> b!2878402 (= c!466914 ((_ is Some!6421) lt!1019211))))

(declare-fun b!2878403 () Bool)

(assert (=> b!2878403 (= e!1821288 lt!1019211)))

(declare-fun bm!186432 () Bool)

(declare-fun c!466911 () Bool)

(assert (=> bm!186432 (= call!186437 (getLanguageWitness!446 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2878404 () Bool)

(declare-fun e!1821286 () Option!6422)

(declare-fun e!1821282 () Option!6422)

(assert (=> b!2878404 (= e!1821286 e!1821282)))

(declare-fun c!466908 () Bool)

(assert (=> b!2878404 (= c!466908 ((_ is Star!8747) (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878405 () Bool)

(declare-fun c!466913 () Bool)

(assert (=> b!2878405 (= c!466913 ((_ is Some!6421) lt!1019210))))

(assert (=> b!2878405 (= lt!1019210 call!186437)))

(assert (=> b!2878405 (= e!1821283 e!1821281)))

(declare-fun b!2878406 () Bool)

(declare-fun e!1821284 () Option!6422)

(assert (=> b!2878406 (= e!1821284 None!6421)))

(declare-fun bm!186433 () Bool)

(assert (=> bm!186433 (= call!186438 (getLanguageWitness!446 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2878407 () Bool)

(assert (=> b!2878407 (= e!1821282 (Some!6421 Nil!34408))))

(declare-fun b!2878408 () Bool)

(assert (=> b!2878408 (= e!1821287 e!1821283)))

(assert (=> b!2878408 (= lt!1019209 call!186438)))

(declare-fun c!466910 () Bool)

(assert (=> b!2878408 (= c!466910 ((_ is Some!6421) lt!1019209))))

(declare-fun b!2878409 () Bool)

(assert (=> b!2878409 (= e!1821285 e!1821284)))

(declare-fun c!466912 () Bool)

(assert (=> b!2878409 (= c!466912 ((_ is EmptyLang!8747) (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878410 () Bool)

(declare-fun c!466909 () Bool)

(assert (=> b!2878410 (= c!466909 ((_ is ElementMatch!8747) (h!39829 (exprs!3207 c!7184))))))

(assert (=> b!2878410 (= e!1821284 e!1821286)))

(declare-fun b!2878411 () Bool)

(assert (=> b!2878411 (= c!466911 ((_ is Union!8747) (h!39829 (exprs!3207 c!7184))))))

(assert (=> b!2878411 (= e!1821282 e!1821287)))

(declare-fun b!2878412 () Bool)

(assert (=> b!2878412 (= e!1821286 (Some!6421 (Cons!34408 (c!466810 (h!39829 (exprs!3207 c!7184))) Nil!34408)))))

(assert (= (and d!832187 c!466907) b!2878400))

(assert (= (and d!832187 (not c!466907)) b!2878409))

(assert (= (and b!2878409 c!466912) b!2878406))

(assert (= (and b!2878409 (not c!466912)) b!2878410))

(assert (= (and b!2878410 c!466909) b!2878412))

(assert (= (and b!2878410 (not c!466909)) b!2878404))

(assert (= (and b!2878404 c!466908) b!2878407))

(assert (= (and b!2878404 (not c!466908)) b!2878411))

(assert (= (and b!2878411 c!466911) b!2878402))

(assert (= (and b!2878411 (not c!466911)) b!2878408))

(assert (= (and b!2878402 c!466914) b!2878403))

(assert (= (and b!2878402 (not c!466914)) b!2878399))

(assert (= (and b!2878408 c!466910) b!2878405))

(assert (= (and b!2878408 (not c!466910)) b!2878397))

(assert (= (and b!2878405 c!466913) b!2878398))

(assert (= (and b!2878405 (not c!466913)) b!2878401))

(assert (= (or b!2878399 b!2878405) bm!186432))

(assert (= (or b!2878402 b!2878408) bm!186433))

(declare-fun m!3295749 () Bool)

(assert (=> b!2878398 m!3295749))

(declare-fun m!3295751 () Bool)

(assert (=> bm!186432 m!3295751))

(declare-fun m!3295753 () Bool)

(assert (=> bm!186433 m!3295753))

(assert (=> b!2878140 d!832187))

(declare-fun b!2878417 () Bool)

(declare-fun e!1821291 () Bool)

(declare-fun tp!923955 () Bool)

(declare-fun tp!923956 () Bool)

(assert (=> b!2878417 (= e!1821291 (and tp!923955 tp!923956))))

(assert (=> b!2878141 (= tp!923944 e!1821291)))

(assert (= (and b!2878141 ((_ is Cons!34409) (exprs!3207 c!7184))) b!2878417))

(check-sat (not b!2878320) (not b!2878325) (not d!832133) (not bm!186427) (not b!2878359) (not d!832177) (not b!2878149) (not b!2878332) (not d!832185) (not b!2878336) (not b!2878343) (not b!2878324) (not b!2878337) (not b!2878326) (not b!2878398) (not bm!186433) (not d!832181) (not d!832129) (not b!2878327) (not d!832173) (not b!2878340) (not bm!186426) (not b!2878342) (not d!832167) (not d!832175) (not b!2878331) (not b!2878363) (not b!2878148) (not d!832183) (not d!832171) (not b!2878151) (not b!2878341) (not d!832135) (not b!2878417) (not bm!186432) (not b!2878321) (not d!832137) (not b!2878360) (not b!2878150))
(check-sat)
(get-model)

(declare-fun b!2878564 () Bool)

(declare-fun e!1821384 () Bool)

(declare-fun call!186471 () Bool)

(assert (=> b!2878564 (= e!1821384 call!186471)))

(declare-fun b!2878565 () Bool)

(declare-fun e!1821385 () Bool)

(declare-fun e!1821387 () Bool)

(assert (=> b!2878565 (= e!1821385 e!1821387)))

(declare-fun c!466962 () Bool)

(assert (=> b!2878565 (= c!466962 ((_ is Union!8747) (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878566 () Bool)

(declare-fun e!1821381 () Bool)

(declare-fun e!1821383 () Bool)

(assert (=> b!2878566 (= e!1821381 e!1821383)))

(declare-fun res!1193315 () Bool)

(assert (=> b!2878566 (=> (not res!1193315) (not e!1821383))))

(assert (=> b!2878566 (= res!1193315 call!186471)))

(declare-fun b!2878567 () Bool)

(declare-fun res!1193314 () Bool)

(assert (=> b!2878567 (=> res!1193314 e!1821381)))

(assert (=> b!2878567 (= res!1193314 (not ((_ is Concat!14068) (h!39829 (exprs!3207 c!7184)))))))

(assert (=> b!2878567 (= e!1821387 e!1821381)))

(declare-fun bm!186465 () Bool)

(assert (=> bm!186465 (= call!186471 (validRegex!3525 (ite c!466962 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2878568 () Bool)

(declare-fun res!1193313 () Bool)

(assert (=> b!2878568 (=> (not res!1193313) (not e!1821384))))

(declare-fun call!186470 () Bool)

(assert (=> b!2878568 (= res!1193313 call!186470)))

(assert (=> b!2878568 (= e!1821387 e!1821384)))

(declare-fun b!2878563 () Bool)

(declare-fun e!1821386 () Bool)

(assert (=> b!2878563 (= e!1821386 e!1821385)))

(declare-fun c!466961 () Bool)

(assert (=> b!2878563 (= c!466961 ((_ is Star!8747) (h!39829 (exprs!3207 c!7184))))))

(declare-fun d!832217 () Bool)

(declare-fun res!1193311 () Bool)

(assert (=> d!832217 (=> res!1193311 e!1821386)))

(assert (=> d!832217 (= res!1193311 ((_ is ElementMatch!8747) (h!39829 (exprs!3207 c!7184))))))

(assert (=> d!832217 (= (validRegex!3525 (h!39829 (exprs!3207 c!7184))) e!1821386)))

(declare-fun bm!186466 () Bool)

(declare-fun call!186472 () Bool)

(assert (=> bm!186466 (= call!186470 call!186472)))

(declare-fun b!2878569 () Bool)

(assert (=> b!2878569 (= e!1821383 call!186470)))

(declare-fun b!2878570 () Bool)

(declare-fun e!1821382 () Bool)

(assert (=> b!2878570 (= e!1821382 call!186472)))

(declare-fun bm!186467 () Bool)

(assert (=> bm!186467 (= call!186472 (validRegex!3525 (ite c!466961 (reg!9076 (h!39829 (exprs!3207 c!7184))) (ite c!466962 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))))))

(declare-fun b!2878571 () Bool)

(assert (=> b!2878571 (= e!1821385 e!1821382)))

(declare-fun res!1193312 () Bool)

(assert (=> b!2878571 (= res!1193312 (not (nullable!2697 (reg!9076 (h!39829 (exprs!3207 c!7184))))))))

(assert (=> b!2878571 (=> (not res!1193312) (not e!1821382))))

(assert (= (and d!832217 (not res!1193311)) b!2878563))

(assert (= (and b!2878563 c!466961) b!2878571))

(assert (= (and b!2878563 (not c!466961)) b!2878565))

(assert (= (and b!2878571 res!1193312) b!2878570))

(assert (= (and b!2878565 c!466962) b!2878568))

(assert (= (and b!2878565 (not c!466962)) b!2878567))

(assert (= (and b!2878568 res!1193313) b!2878564))

(assert (= (and b!2878567 (not res!1193314)) b!2878566))

(assert (= (and b!2878566 res!1193315) b!2878569))

(assert (= (or b!2878564 b!2878566) bm!186465))

(assert (= (or b!2878568 b!2878569) bm!186466))

(assert (= (or b!2878570 bm!186466) bm!186467))

(declare-fun m!3295853 () Bool)

(assert (=> bm!186465 m!3295853))

(declare-fun m!3295855 () Bool)

(assert (=> bm!186467 m!3295855))

(declare-fun m!3295857 () Bool)

(assert (=> b!2878571 m!3295857))

(assert (=> d!832173 d!832217))

(declare-fun d!832233 () Bool)

(assert (=> d!832233 (= (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))) (v!34547 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))))

(assert (=> d!832173 d!832233))

(assert (=> d!832173 d!832187))

(declare-fun b!2878572 () Bool)

(declare-fun res!1193319 () Bool)

(declare-fun e!1821388 () Bool)

(assert (=> b!2878572 (=> res!1193319 e!1821388)))

(declare-fun e!1821392 () Bool)

(assert (=> b!2878572 (= res!1193319 e!1821392)))

(declare-fun res!1193317 () Bool)

(assert (=> b!2878572 (=> (not res!1193317) (not e!1821392))))

(declare-fun lt!1019224 () Bool)

(assert (=> b!2878572 (= res!1193317 lt!1019224)))

(declare-fun b!2878574 () Bool)

(declare-fun res!1193318 () Bool)

(assert (=> b!2878574 (=> (not res!1193318) (not e!1821392))))

(declare-fun call!186473 () Bool)

(assert (=> b!2878574 (= res!1193318 (not call!186473))))

(declare-fun bm!186468 () Bool)

(assert (=> bm!186468 (= call!186473 (isEmpty!18737 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2878575 () Bool)

(declare-fun e!1821390 () Bool)

(assert (=> b!2878575 (= e!1821390 (nullable!2697 (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878576 () Bool)

(assert (=> b!2878576 (= e!1821390 (matchR!3747 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))) (tail!4579 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))))))

(declare-fun b!2878577 () Bool)

(declare-fun e!1821393 () Bool)

(assert (=> b!2878577 (= e!1821393 (not lt!1019224))))

(declare-fun b!2878578 () Bool)

(declare-fun res!1193322 () Bool)

(assert (=> b!2878578 (=> res!1193322 e!1821388)))

(assert (=> b!2878578 (= res!1193322 (not ((_ is ElementMatch!8747) (h!39829 (exprs!3207 c!7184)))))))

(assert (=> b!2878578 (= e!1821393 e!1821388)))

(declare-fun b!2878579 () Bool)

(declare-fun res!1193323 () Bool)

(declare-fun e!1821394 () Bool)

(assert (=> b!2878579 (=> res!1193323 e!1821394)))

(assert (=> b!2878579 (= res!1193323 (not (isEmpty!18737 (tail!4579 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2878580 () Bool)

(declare-fun res!1193321 () Bool)

(assert (=> b!2878580 (=> (not res!1193321) (not e!1821392))))

(assert (=> b!2878580 (= res!1193321 (isEmpty!18737 (tail!4579 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))))))

(declare-fun b!2878581 () Bool)

(assert (=> b!2878581 (= e!1821392 (= (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))) (c!466810 (h!39829 (exprs!3207 c!7184)))))))

(declare-fun b!2878582 () Bool)

(assert (=> b!2878582 (= e!1821394 (not (= (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))) (c!466810 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2878583 () Bool)

(declare-fun e!1821391 () Bool)

(assert (=> b!2878583 (= e!1821391 e!1821394)))

(declare-fun res!1193316 () Bool)

(assert (=> b!2878583 (=> res!1193316 e!1821394)))

(assert (=> b!2878583 (= res!1193316 call!186473)))

(declare-fun b!2878573 () Bool)

(declare-fun e!1821389 () Bool)

(assert (=> b!2878573 (= e!1821389 (= lt!1019224 call!186473))))

(declare-fun d!832235 () Bool)

(assert (=> d!832235 e!1821389))

(declare-fun c!466965 () Bool)

(assert (=> d!832235 (= c!466965 ((_ is EmptyExpr!8747) (h!39829 (exprs!3207 c!7184))))))

(assert (=> d!832235 (= lt!1019224 e!1821390)))

(declare-fun c!466967 () Bool)

(assert (=> d!832235 (= c!466967 (isEmpty!18737 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))))))

(assert (=> d!832235 (validRegex!3525 (h!39829 (exprs!3207 c!7184)))))

(assert (=> d!832235 (= (matchR!3747 (h!39829 (exprs!3207 c!7184)) (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))) lt!1019224)))

(declare-fun b!2878584 () Bool)

(assert (=> b!2878584 (= e!1821388 e!1821391)))

(declare-fun res!1193320 () Bool)

(assert (=> b!2878584 (=> (not res!1193320) (not e!1821391))))

(assert (=> b!2878584 (= res!1193320 (not lt!1019224))))

(declare-fun b!2878585 () Bool)

(assert (=> b!2878585 (= e!1821389 e!1821393)))

(declare-fun c!466966 () Bool)

(assert (=> b!2878585 (= c!466966 ((_ is EmptyLang!8747) (h!39829 (exprs!3207 c!7184))))))

(assert (= (and d!832235 c!466967) b!2878575))

(assert (= (and d!832235 (not c!466967)) b!2878576))

(assert (= (and d!832235 c!466965) b!2878573))

(assert (= (and d!832235 (not c!466965)) b!2878585))

(assert (= (and b!2878585 c!466966) b!2878577))

(assert (= (and b!2878585 (not c!466966)) b!2878578))

(assert (= (and b!2878578 (not res!1193322)) b!2878572))

(assert (= (and b!2878572 res!1193317) b!2878574))

(assert (= (and b!2878574 res!1193318) b!2878580))

(assert (= (and b!2878580 res!1193321) b!2878581))

(assert (= (and b!2878572 (not res!1193319)) b!2878584))

(assert (= (and b!2878584 res!1193320) b!2878583))

(assert (= (and b!2878583 (not res!1193316)) b!2878579))

(assert (= (and b!2878579 (not res!1193323)) b!2878582))

(assert (= (or b!2878573 b!2878574 b!2878583) bm!186468))

(assert (=> b!2878582 m!3295709))

(declare-fun m!3295861 () Bool)

(assert (=> b!2878582 m!3295861))

(assert (=> b!2878575 m!3295691))

(assert (=> b!2878581 m!3295709))

(assert (=> b!2878581 m!3295861))

(assert (=> b!2878580 m!3295709))

(declare-fun m!3295867 () Bool)

(assert (=> b!2878580 m!3295867))

(assert (=> b!2878580 m!3295867))

(declare-fun m!3295869 () Bool)

(assert (=> b!2878580 m!3295869))

(assert (=> bm!186468 m!3295709))

(declare-fun m!3295873 () Bool)

(assert (=> bm!186468 m!3295873))

(assert (=> b!2878576 m!3295709))

(assert (=> b!2878576 m!3295861))

(assert (=> b!2878576 m!3295861))

(declare-fun m!3295877 () Bool)

(assert (=> b!2878576 m!3295877))

(assert (=> b!2878576 m!3295709))

(assert (=> b!2878576 m!3295867))

(assert (=> b!2878576 m!3295877))

(assert (=> b!2878576 m!3295867))

(declare-fun m!3295881 () Bool)

(assert (=> b!2878576 m!3295881))

(assert (=> b!2878579 m!3295709))

(assert (=> b!2878579 m!3295867))

(assert (=> b!2878579 m!3295867))

(assert (=> b!2878579 m!3295869))

(assert (=> d!832235 m!3295709))

(assert (=> d!832235 m!3295873))

(assert (=> d!832235 m!3295593))

(assert (=> d!832173 d!832235))

(declare-fun d!832245 () Bool)

(assert (=> d!832245 (matchR!3747 (h!39829 (exprs!3207 c!7184)) (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))))

(assert (=> d!832245 true))

(declare-fun _$101!123 () Unit!47995)

(assert (=> d!832245 (= (choose!17023 (h!39829 (exprs!3207 c!7184))) _$101!123)))

(declare-fun bs!523032 () Bool)

(assert (= bs!523032 d!832245))

(assert (=> bs!523032 m!3295563))

(assert (=> bs!523032 m!3295563))

(assert (=> bs!523032 m!3295709))

(assert (=> bs!523032 m!3295709))

(assert (=> bs!523032 m!3295711))

(assert (=> d!832173 d!832245))

(declare-fun d!832255 () Bool)

(assert (=> d!832255 (= (isEmpty!18737 (v!34547 lt!1019141)) ((_ is Nil!34408) (v!34547 lt!1019141)))))

(assert (=> bm!186426 d!832255))

(declare-fun d!832257 () Bool)

(assert (=> d!832257 (= (isEmpty!18738 lt!1019200) (not ((_ is Some!6421) lt!1019200)))))

(assert (=> d!832181 d!832257))

(declare-fun bs!523033 () Bool)

(declare-fun d!832259 () Bool)

(assert (= bs!523033 (and d!832259 d!832137)))

(declare-fun lambda!107405 () Int)

(assert (=> bs!523033 (not (= lambda!107405 lambda!107387))))

(declare-fun bs!523034 () Bool)

(assert (= bs!523034 (and d!832259 d!832181)))

(assert (=> bs!523034 (not (= lambda!107405 lambda!107390))))

(declare-fun bs!523035 () Bool)

(assert (= bs!523035 (and d!832259 d!832183)))

(assert (=> bs!523035 (not (= lambda!107405 lambda!107393))))

(declare-fun bs!523036 () Bool)

(assert (= bs!523036 (and d!832259 d!832185)))

(assert (=> bs!523036 (not (= lambda!107405 lambda!107394))))

(assert (=> d!832259 true))

(declare-fun order!18145 () Int)

(declare-fun dynLambda!14327 (Int Int) Int)

(assert (=> d!832259 (< (dynLambda!14327 order!18145 lambda!107390) (dynLambda!14327 order!18145 lambda!107405))))

(assert (=> d!832259 (= (exists!1182 (exprs!3207 lt!1019143) lambda!107390) (not (forall!7091 (exprs!3207 lt!1019143) lambda!107405)))))

(declare-fun bs!523038 () Bool)

(assert (= bs!523038 d!832259))

(declare-fun m!3295899 () Bool)

(assert (=> bs!523038 m!3295899))

(assert (=> d!832181 d!832259))

(declare-fun d!832261 () Bool)

(declare-fun nullableFct!824 (Regex!8747) Bool)

(assert (=> d!832261 (= (nullable!2697 (h!39829 (exprs!3207 c!7184))) (nullableFct!824 (h!39829 (exprs!3207 c!7184))))))

(declare-fun bs!523041 () Bool)

(assert (= bs!523041 d!832261))

(declare-fun m!3295903 () Bool)

(assert (=> bs!523041 m!3295903))

(assert (=> b!2878336 d!832261))

(declare-fun b!2878594 () Bool)

(declare-fun res!1193327 () Bool)

(declare-fun e!1821397 () Bool)

(assert (=> b!2878594 (=> res!1193327 e!1821397)))

(declare-fun e!1821401 () Bool)

(assert (=> b!2878594 (= res!1193327 e!1821401)))

(declare-fun res!1193325 () Bool)

(assert (=> b!2878594 (=> (not res!1193325) (not e!1821401))))

(declare-fun lt!1019225 () Bool)

(assert (=> b!2878594 (= res!1193325 lt!1019225)))

(declare-fun b!2878596 () Bool)

(declare-fun res!1193326 () Bool)

(assert (=> b!2878596 (=> (not res!1193326) (not e!1821401))))

(declare-fun call!186474 () Bool)

(assert (=> b!2878596 (= res!1193326 (not call!186474))))

(declare-fun bm!186469 () Bool)

(assert (=> bm!186469 (= call!186474 (isEmpty!18737 (tail!4579 (get!10347 lt!1019141))))))

(declare-fun b!2878597 () Bool)

(declare-fun e!1821399 () Bool)

(assert (=> b!2878597 (= e!1821399 (nullable!2697 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))))))

(declare-fun b!2878598 () Bool)

(assert (=> b!2878598 (= e!1821399 (matchR!3747 (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))) (head!6354 (tail!4579 (get!10347 lt!1019141)))) (tail!4579 (tail!4579 (get!10347 lt!1019141)))))))

(declare-fun b!2878599 () Bool)

(declare-fun e!1821402 () Bool)

(assert (=> b!2878599 (= e!1821402 (not lt!1019225))))

(declare-fun b!2878600 () Bool)

(declare-fun res!1193330 () Bool)

(assert (=> b!2878600 (=> res!1193330 e!1821397)))

(assert (=> b!2878600 (= res!1193330 (not ((_ is ElementMatch!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))))))))

(assert (=> b!2878600 (= e!1821402 e!1821397)))

(declare-fun b!2878601 () Bool)

(declare-fun res!1193331 () Bool)

(declare-fun e!1821403 () Bool)

(assert (=> b!2878601 (=> res!1193331 e!1821403)))

(assert (=> b!2878601 (= res!1193331 (not (isEmpty!18737 (tail!4579 (tail!4579 (get!10347 lt!1019141))))))))

(declare-fun b!2878602 () Bool)

(declare-fun res!1193329 () Bool)

(assert (=> b!2878602 (=> (not res!1193329) (not e!1821401))))

(assert (=> b!2878602 (= res!1193329 (isEmpty!18737 (tail!4579 (tail!4579 (get!10347 lt!1019141)))))))

(declare-fun b!2878603 () Bool)

(assert (=> b!2878603 (= e!1821401 (= (head!6354 (tail!4579 (get!10347 lt!1019141))) (c!466810 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))))))))

(declare-fun b!2878604 () Bool)

(assert (=> b!2878604 (= e!1821403 (not (= (head!6354 (tail!4579 (get!10347 lt!1019141))) (c!466810 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))))))))

(declare-fun b!2878605 () Bool)

(declare-fun e!1821400 () Bool)

(assert (=> b!2878605 (= e!1821400 e!1821403)))

(declare-fun res!1193324 () Bool)

(assert (=> b!2878605 (=> res!1193324 e!1821403)))

(assert (=> b!2878605 (= res!1193324 call!186474)))

(declare-fun b!2878595 () Bool)

(declare-fun e!1821398 () Bool)

(assert (=> b!2878595 (= e!1821398 (= lt!1019225 call!186474))))

(declare-fun d!832271 () Bool)

(assert (=> d!832271 e!1821398))

(declare-fun c!466971 () Bool)

(assert (=> d!832271 (= c!466971 ((_ is EmptyExpr!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))))))

(assert (=> d!832271 (= lt!1019225 e!1821399)))

(declare-fun c!466973 () Bool)

(assert (=> d!832271 (= c!466973 (isEmpty!18737 (tail!4579 (get!10347 lt!1019141))))))

(assert (=> d!832271 (validRegex!3525 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))))))

(assert (=> d!832271 (= (matchR!3747 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))) (tail!4579 (get!10347 lt!1019141))) lt!1019225)))

(declare-fun b!2878606 () Bool)

(assert (=> b!2878606 (= e!1821397 e!1821400)))

(declare-fun res!1193328 () Bool)

(assert (=> b!2878606 (=> (not res!1193328) (not e!1821400))))

(assert (=> b!2878606 (= res!1193328 (not lt!1019225))))

(declare-fun b!2878607 () Bool)

(assert (=> b!2878607 (= e!1821398 e!1821402)))

(declare-fun c!466972 () Bool)

(assert (=> b!2878607 (= c!466972 ((_ is EmptyLang!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))))))

(assert (= (and d!832271 c!466973) b!2878597))

(assert (= (and d!832271 (not c!466973)) b!2878598))

(assert (= (and d!832271 c!466971) b!2878595))

(assert (= (and d!832271 (not c!466971)) b!2878607))

(assert (= (and b!2878607 c!466972) b!2878599))

(assert (= (and b!2878607 (not c!466972)) b!2878600))

(assert (= (and b!2878600 (not res!1193330)) b!2878594))

(assert (= (and b!2878594 res!1193325) b!2878596))

(assert (= (and b!2878596 res!1193326) b!2878602))

(assert (= (and b!2878602 res!1193329) b!2878603))

(assert (= (and b!2878594 (not res!1193327)) b!2878606))

(assert (= (and b!2878606 res!1193328) b!2878605))

(assert (= (and b!2878605 (not res!1193324)) b!2878601))

(assert (= (and b!2878601 (not res!1193331)) b!2878604))

(assert (= (or b!2878595 b!2878596 b!2878605) bm!186469))

(assert (=> b!2878604 m!3295717))

(declare-fun m!3295905 () Bool)

(assert (=> b!2878604 m!3295905))

(assert (=> b!2878597 m!3295723))

(declare-fun m!3295907 () Bool)

(assert (=> b!2878597 m!3295907))

(assert (=> b!2878603 m!3295717))

(assert (=> b!2878603 m!3295905))

(assert (=> b!2878602 m!3295717))

(declare-fun m!3295909 () Bool)

(assert (=> b!2878602 m!3295909))

(assert (=> b!2878602 m!3295909))

(declare-fun m!3295911 () Bool)

(assert (=> b!2878602 m!3295911))

(assert (=> bm!186469 m!3295717))

(assert (=> bm!186469 m!3295719))

(assert (=> b!2878598 m!3295717))

(assert (=> b!2878598 m!3295905))

(assert (=> b!2878598 m!3295723))

(assert (=> b!2878598 m!3295905))

(declare-fun m!3295913 () Bool)

(assert (=> b!2878598 m!3295913))

(assert (=> b!2878598 m!3295717))

(assert (=> b!2878598 m!3295909))

(assert (=> b!2878598 m!3295913))

(assert (=> b!2878598 m!3295909))

(declare-fun m!3295915 () Bool)

(assert (=> b!2878598 m!3295915))

(assert (=> b!2878601 m!3295717))

(assert (=> b!2878601 m!3295909))

(assert (=> b!2878601 m!3295909))

(assert (=> b!2878601 m!3295911))

(assert (=> d!832271 m!3295717))

(assert (=> d!832271 m!3295719))

(assert (=> d!832271 m!3295723))

(declare-fun m!3295917 () Bool)

(assert (=> d!832271 m!3295917))

(assert (=> b!2878337 d!832271))

(declare-fun bm!186487 () Bool)

(declare-fun c!467013 () Bool)

(declare-fun call!186494 () Regex!8747)

(assert (=> bm!186487 (= call!186494 (derivativeStep!2330 (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))) (head!6354 (get!10347 lt!1019141))))))

(declare-fun b!2878709 () Bool)

(declare-fun e!1821452 () Regex!8747)

(declare-fun call!186492 () Regex!8747)

(assert (=> b!2878709 (= e!1821452 (Union!8747 call!186492 call!186494))))

(declare-fun b!2878710 () Bool)

(declare-fun e!1821453 () Regex!8747)

(assert (=> b!2878710 (= e!1821453 EmptyLang!8747)))

(declare-fun d!832275 () Bool)

(declare-fun lt!1019239 () Regex!8747)

(assert (=> d!832275 (validRegex!3525 lt!1019239)))

(assert (=> d!832275 (= lt!1019239 e!1821453)))

(declare-fun c!467016 () Bool)

(assert (=> d!832275 (= c!467016 (or ((_ is EmptyExpr!8747) (h!39829 (exprs!3207 c!7184))) ((_ is EmptyLang!8747) (h!39829 (exprs!3207 c!7184)))))))

(assert (=> d!832275 (validRegex!3525 (h!39829 (exprs!3207 c!7184)))))

(assert (=> d!832275 (= (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))) lt!1019239)))

(declare-fun b!2878711 () Bool)

(declare-fun e!1821451 () Regex!8747)

(assert (=> b!2878711 (= e!1821452 e!1821451)))

(declare-fun c!467014 () Bool)

(assert (=> b!2878711 (= c!467014 ((_ is Star!8747) (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878712 () Bool)

(declare-fun e!1821450 () Regex!8747)

(declare-fun call!186493 () Regex!8747)

(assert (=> b!2878712 (= e!1821450 (Union!8747 (Concat!14068 call!186493 (regTwo!18006 (h!39829 (exprs!3207 c!7184)))) EmptyLang!8747))))

(declare-fun b!2878713 () Bool)

(declare-fun e!1821454 () Regex!8747)

(assert (=> b!2878713 (= e!1821453 e!1821454)))

(declare-fun c!467015 () Bool)

(assert (=> b!2878713 (= c!467015 ((_ is ElementMatch!8747) (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878714 () Bool)

(assert (=> b!2878714 (= e!1821454 (ite (= (head!6354 (get!10347 lt!1019141)) (c!466810 (h!39829 (exprs!3207 c!7184)))) EmptyExpr!8747 EmptyLang!8747))))

(declare-fun b!2878715 () Bool)

(declare-fun call!186495 () Regex!8747)

(assert (=> b!2878715 (= e!1821451 (Concat!14068 call!186495 (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878716 () Bool)

(assert (=> b!2878716 (= e!1821450 (Union!8747 (Concat!14068 call!186493 (regTwo!18006 (h!39829 (exprs!3207 c!7184)))) call!186494))))

(declare-fun b!2878717 () Bool)

(assert (=> b!2878717 (= c!467013 ((_ is Union!8747) (h!39829 (exprs!3207 c!7184))))))

(assert (=> b!2878717 (= e!1821454 e!1821452)))

(declare-fun bm!186488 () Bool)

(assert (=> bm!186488 (= call!186492 (derivativeStep!2330 (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (head!6354 (get!10347 lt!1019141))))))

(declare-fun bm!186489 () Bool)

(assert (=> bm!186489 (= call!186495 call!186492)))

(declare-fun bm!186490 () Bool)

(assert (=> bm!186490 (= call!186493 call!186495)))

(declare-fun b!2878718 () Bool)

(declare-fun c!467012 () Bool)

(assert (=> b!2878718 (= c!467012 (nullable!2697 (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))

(assert (=> b!2878718 (= e!1821451 e!1821450)))

(assert (= (and d!832275 c!467016) b!2878710))

(assert (= (and d!832275 (not c!467016)) b!2878713))

(assert (= (and b!2878713 c!467015) b!2878714))

(assert (= (and b!2878713 (not c!467015)) b!2878717))

(assert (= (and b!2878717 c!467013) b!2878709))

(assert (= (and b!2878717 (not c!467013)) b!2878711))

(assert (= (and b!2878711 c!467014) b!2878715))

(assert (= (and b!2878711 (not c!467014)) b!2878718))

(assert (= (and b!2878718 c!467012) b!2878716))

(assert (= (and b!2878718 (not c!467012)) b!2878712))

(assert (= (or b!2878716 b!2878712) bm!186490))

(assert (= (or b!2878715 bm!186490) bm!186489))

(assert (= (or b!2878709 bm!186489) bm!186488))

(assert (= (or b!2878709 b!2878716) bm!186487))

(assert (=> bm!186487 m!3295715))

(declare-fun m!3295977 () Bool)

(assert (=> bm!186487 m!3295977))

(declare-fun m!3295979 () Bool)

(assert (=> d!832275 m!3295979))

(assert (=> d!832275 m!3295593))

(assert (=> bm!186488 m!3295715))

(declare-fun m!3295981 () Bool)

(assert (=> bm!186488 m!3295981))

(declare-fun m!3295983 () Bool)

(assert (=> b!2878718 m!3295983))

(assert (=> b!2878337 d!832275))

(declare-fun d!832307 () Bool)

(assert (=> d!832307 (= (head!6354 (get!10347 lt!1019141)) (h!39828 (get!10347 lt!1019141)))))

(assert (=> b!2878337 d!832307))

(declare-fun d!832309 () Bool)

(assert (=> d!832309 (= (tail!4579 (get!10347 lt!1019141)) (t!233575 (get!10347 lt!1019141)))))

(assert (=> b!2878337 d!832309))

(declare-fun d!832311 () Bool)

(assert (=> d!832311 (= (isEmpty!18737 (get!10347 lt!1019141)) ((_ is Nil!34408) (get!10347 lt!1019141)))))

(assert (=> bm!186427 d!832311))

(declare-fun d!832313 () Bool)

(declare-fun c!467017 () Bool)

(assert (=> d!832313 (= c!467017 (isEmpty!18737 (tail!4579 (v!34547 lt!1019148))))))

(declare-fun e!1821455 () Bool)

(assert (=> d!832313 (= (matchZipper!489 (derivationStepZipper!481 lt!1019145 (head!6354 (v!34547 lt!1019148))) (tail!4579 (v!34547 lt!1019148))) e!1821455)))

(declare-fun b!2878719 () Bool)

(assert (=> b!2878719 (= e!1821455 (nullableZipper!725 (derivationStepZipper!481 lt!1019145 (head!6354 (v!34547 lt!1019148)))))))

(declare-fun b!2878720 () Bool)

(assert (=> b!2878720 (= e!1821455 (matchZipper!489 (derivationStepZipper!481 (derivationStepZipper!481 lt!1019145 (head!6354 (v!34547 lt!1019148))) (head!6354 (tail!4579 (v!34547 lt!1019148)))) (tail!4579 (tail!4579 (v!34547 lt!1019148)))))))

(assert (= (and d!832313 c!467017) b!2878719))

(assert (= (and d!832313 (not c!467017)) b!2878720))

(assert (=> d!832313 m!3295575))

(declare-fun m!3295985 () Bool)

(assert (=> d!832313 m!3295985))

(assert (=> b!2878719 m!3295573))

(declare-fun m!3295987 () Bool)

(assert (=> b!2878719 m!3295987))

(assert (=> b!2878720 m!3295575))

(declare-fun m!3295989 () Bool)

(assert (=> b!2878720 m!3295989))

(assert (=> b!2878720 m!3295573))

(assert (=> b!2878720 m!3295989))

(declare-fun m!3295991 () Bool)

(assert (=> b!2878720 m!3295991))

(assert (=> b!2878720 m!3295575))

(declare-fun m!3295993 () Bool)

(assert (=> b!2878720 m!3295993))

(assert (=> b!2878720 m!3295991))

(assert (=> b!2878720 m!3295993))

(declare-fun m!3295995 () Bool)

(assert (=> b!2878720 m!3295995))

(assert (=> b!2878149 d!832313))

(declare-fun d!832315 () Bool)

(assert (=> d!832315 true))

(declare-fun lambda!107415 () Int)

(declare-fun flatMap!227 ((InoxSet Context!5414) Int) (InoxSet Context!5414))

(assert (=> d!832315 (= (derivationStepZipper!481 lt!1019145 (head!6354 (v!34547 lt!1019148))) (flatMap!227 lt!1019145 lambda!107415))))

(declare-fun bs!523067 () Bool)

(assert (= bs!523067 d!832315))

(declare-fun m!3295997 () Bool)

(assert (=> bs!523067 m!3295997))

(assert (=> b!2878149 d!832315))

(declare-fun d!832317 () Bool)

(assert (=> d!832317 (= (head!6354 (v!34547 lt!1019148)) (h!39828 (v!34547 lt!1019148)))))

(assert (=> b!2878149 d!832317))

(declare-fun d!832319 () Bool)

(assert (=> d!832319 (= (tail!4579 (v!34547 lt!1019148)) (t!233575 (v!34547 lt!1019148)))))

(assert (=> b!2878149 d!832319))

(declare-fun d!832321 () Bool)

(assert (=> d!832321 (= (isEmpty!18737 (get!10347 lt!1019148)) ((_ is Nil!34408) (get!10347 lt!1019148)))))

(assert (=> d!832171 d!832321))

(assert (=> b!2878343 d!832307))

(declare-fun lt!1019242 () List!34532)

(declare-fun e!1821461 () Bool)

(declare-fun b!2878734 () Bool)

(assert (=> b!2878734 (= e!1821461 (or (not (= (v!34547 lt!1019202) Nil!34408)) (= lt!1019242 (v!34547 lt!1019201))))))

(declare-fun b!2878732 () Bool)

(declare-fun e!1821460 () List!34532)

(assert (=> b!2878732 (= e!1821460 (Cons!34408 (h!39828 (v!34547 lt!1019201)) (++!8183 (t!233575 (v!34547 lt!1019201)) (v!34547 lt!1019202))))))

(declare-fun d!832323 () Bool)

(assert (=> d!832323 e!1821461))

(declare-fun res!1193345 () Bool)

(assert (=> d!832323 (=> (not res!1193345) (not e!1821461))))

(declare-fun content!4711 (List!34532) (InoxSet C!17676))

(assert (=> d!832323 (= res!1193345 (= (content!4711 lt!1019242) ((_ map or) (content!4711 (v!34547 lt!1019201)) (content!4711 (v!34547 lt!1019202)))))))

(assert (=> d!832323 (= lt!1019242 e!1821460)))

(declare-fun c!467022 () Bool)

(assert (=> d!832323 (= c!467022 ((_ is Nil!34408) (v!34547 lt!1019201)))))

(assert (=> d!832323 (= (++!8183 (v!34547 lt!1019201) (v!34547 lt!1019202)) lt!1019242)))

(declare-fun b!2878731 () Bool)

(assert (=> b!2878731 (= e!1821460 (v!34547 lt!1019202))))

(declare-fun b!2878733 () Bool)

(declare-fun res!1193344 () Bool)

(assert (=> b!2878733 (=> (not res!1193344) (not e!1821461))))

(declare-fun size!26330 (List!34532) Int)

(assert (=> b!2878733 (= res!1193344 (= (size!26330 lt!1019242) (+ (size!26330 (v!34547 lt!1019201)) (size!26330 (v!34547 lt!1019202)))))))

(assert (= (and d!832323 c!467022) b!2878731))

(assert (= (and d!832323 (not c!467022)) b!2878732))

(assert (= (and d!832323 res!1193345) b!2878733))

(assert (= (and b!2878733 res!1193344) b!2878734))

(declare-fun m!3295999 () Bool)

(assert (=> b!2878732 m!3295999))

(declare-fun m!3296001 () Bool)

(assert (=> d!832323 m!3296001))

(declare-fun m!3296003 () Bool)

(assert (=> d!832323 m!3296003))

(declare-fun m!3296005 () Bool)

(assert (=> d!832323 m!3296005))

(declare-fun m!3296007 () Bool)

(assert (=> b!2878733 m!3296007))

(declare-fun m!3296009 () Bool)

(assert (=> b!2878733 m!3296009))

(declare-fun m!3296011 () Bool)

(assert (=> b!2878733 m!3296011))

(assert (=> b!2878360 d!832323))

(declare-fun d!832325 () Bool)

(assert (=> d!832325 (= (isEmpty!18737 (tail!4579 (v!34547 lt!1019141))) ((_ is Nil!34408) (tail!4579 (v!34547 lt!1019141))))))

(assert (=> b!2878324 d!832325))

(declare-fun d!832327 () Bool)

(assert (=> d!832327 (= (tail!4579 (v!34547 lt!1019141)) (t!233575 (v!34547 lt!1019141)))))

(assert (=> b!2878324 d!832327))

(declare-fun d!832329 () Bool)

(declare-fun c!467023 () Bool)

(assert (=> d!832329 (= c!467023 ((_ is EmptyExpr!8747) (h!39829 (exprs!3207 lt!1019143))))))

(declare-fun e!1821466 () Option!6422)

(assert (=> d!832329 (= (getLanguageWitness!446 (h!39829 (exprs!3207 lt!1019143))) e!1821466)))

(declare-fun b!2878735 () Bool)

(declare-fun e!1821464 () Option!6422)

(assert (=> b!2878735 (= e!1821464 None!6421)))

(declare-fun b!2878736 () Bool)

(declare-fun e!1821462 () Option!6422)

(declare-fun lt!1019243 () Option!6422)

(declare-fun lt!1019244 () Option!6422)

(assert (=> b!2878736 (= e!1821462 (Some!6421 (++!8183 (v!34547 lt!1019243) (v!34547 lt!1019244))))))

(declare-fun b!2878737 () Bool)

(declare-fun e!1821469 () Option!6422)

(declare-fun call!186496 () Option!6422)

(assert (=> b!2878737 (= e!1821469 call!186496)))

(declare-fun b!2878738 () Bool)

(assert (=> b!2878738 (= e!1821466 (Some!6421 Nil!34408))))

(declare-fun b!2878739 () Bool)

(assert (=> b!2878739 (= e!1821462 None!6421)))

(declare-fun b!2878740 () Bool)

(declare-fun e!1821468 () Option!6422)

(assert (=> b!2878740 (= e!1821468 e!1821469)))

(declare-fun lt!1019245 () Option!6422)

(declare-fun call!186497 () Option!6422)

(assert (=> b!2878740 (= lt!1019245 call!186497)))

(declare-fun c!467030 () Bool)

(assert (=> b!2878740 (= c!467030 ((_ is Some!6421) lt!1019245))))

(declare-fun b!2878741 () Bool)

(assert (=> b!2878741 (= e!1821469 lt!1019245)))

(declare-fun bm!186491 () Bool)

(declare-fun c!467027 () Bool)

(assert (=> bm!186491 (= call!186496 (getLanguageWitness!446 (ite c!467027 (regTwo!18007 (h!39829 (exprs!3207 lt!1019143))) (regTwo!18006 (h!39829 (exprs!3207 lt!1019143))))))))

(declare-fun b!2878742 () Bool)

(declare-fun e!1821467 () Option!6422)

(declare-fun e!1821463 () Option!6422)

(assert (=> b!2878742 (= e!1821467 e!1821463)))

(declare-fun c!467024 () Bool)

(assert (=> b!2878742 (= c!467024 ((_ is Star!8747) (h!39829 (exprs!3207 lt!1019143))))))

(declare-fun b!2878743 () Bool)

(declare-fun c!467029 () Bool)

(assert (=> b!2878743 (= c!467029 ((_ is Some!6421) lt!1019244))))

(assert (=> b!2878743 (= lt!1019244 call!186496)))

(assert (=> b!2878743 (= e!1821464 e!1821462)))

(declare-fun b!2878744 () Bool)

(declare-fun e!1821465 () Option!6422)

(assert (=> b!2878744 (= e!1821465 None!6421)))

(declare-fun bm!186492 () Bool)

(assert (=> bm!186492 (= call!186497 (getLanguageWitness!446 (ite c!467027 (regOne!18007 (h!39829 (exprs!3207 lt!1019143))) (regOne!18006 (h!39829 (exprs!3207 lt!1019143))))))))

(declare-fun b!2878745 () Bool)

(assert (=> b!2878745 (= e!1821463 (Some!6421 Nil!34408))))

(declare-fun b!2878746 () Bool)

(assert (=> b!2878746 (= e!1821468 e!1821464)))

(assert (=> b!2878746 (= lt!1019243 call!186497)))

(declare-fun c!467026 () Bool)

(assert (=> b!2878746 (= c!467026 ((_ is Some!6421) lt!1019243))))

(declare-fun b!2878747 () Bool)

(assert (=> b!2878747 (= e!1821466 e!1821465)))

(declare-fun c!467028 () Bool)

(assert (=> b!2878747 (= c!467028 ((_ is EmptyLang!8747) (h!39829 (exprs!3207 lt!1019143))))))

(declare-fun b!2878748 () Bool)

(declare-fun c!467025 () Bool)

(assert (=> b!2878748 (= c!467025 ((_ is ElementMatch!8747) (h!39829 (exprs!3207 lt!1019143))))))

(assert (=> b!2878748 (= e!1821465 e!1821467)))

(declare-fun b!2878749 () Bool)

(assert (=> b!2878749 (= c!467027 ((_ is Union!8747) (h!39829 (exprs!3207 lt!1019143))))))

(assert (=> b!2878749 (= e!1821463 e!1821468)))

(declare-fun b!2878750 () Bool)

(assert (=> b!2878750 (= e!1821467 (Some!6421 (Cons!34408 (c!466810 (h!39829 (exprs!3207 lt!1019143))) Nil!34408)))))

(assert (= (and d!832329 c!467023) b!2878738))

(assert (= (and d!832329 (not c!467023)) b!2878747))

(assert (= (and b!2878747 c!467028) b!2878744))

(assert (= (and b!2878747 (not c!467028)) b!2878748))

(assert (= (and b!2878748 c!467025) b!2878750))

(assert (= (and b!2878748 (not c!467025)) b!2878742))

(assert (= (and b!2878742 c!467024) b!2878745))

(assert (= (and b!2878742 (not c!467024)) b!2878749))

(assert (= (and b!2878749 c!467027) b!2878740))

(assert (= (and b!2878749 (not c!467027)) b!2878746))

(assert (= (and b!2878740 c!467030) b!2878741))

(assert (= (and b!2878740 (not c!467030)) b!2878737))

(assert (= (and b!2878746 c!467026) b!2878743))

(assert (= (and b!2878746 (not c!467026)) b!2878735))

(assert (= (and b!2878743 c!467029) b!2878736))

(assert (= (and b!2878743 (not c!467029)) b!2878739))

(assert (= (or b!2878737 b!2878743) bm!186491))

(assert (= (or b!2878740 b!2878746) bm!186492))

(declare-fun m!3296013 () Bool)

(assert (=> b!2878736 m!3296013))

(declare-fun m!3296015 () Bool)

(assert (=> bm!186491 m!3296015))

(declare-fun m!3296017 () Bool)

(assert (=> bm!186492 m!3296017))

(assert (=> b!2878359 d!832329))

(assert (=> b!2878342 d!832307))

(declare-fun b!2878751 () Bool)

(declare-fun res!1193349 () Bool)

(declare-fun e!1821470 () Bool)

(assert (=> b!2878751 (=> res!1193349 e!1821470)))

(declare-fun e!1821474 () Bool)

(assert (=> b!2878751 (= res!1193349 e!1821474)))

(declare-fun res!1193347 () Bool)

(assert (=> b!2878751 (=> (not res!1193347) (not e!1821474))))

(declare-fun lt!1019246 () Bool)

(assert (=> b!2878751 (= res!1193347 lt!1019246)))

(declare-fun b!2878753 () Bool)

(declare-fun res!1193348 () Bool)

(assert (=> b!2878753 (=> (not res!1193348) (not e!1821474))))

(declare-fun call!186498 () Bool)

(assert (=> b!2878753 (= res!1193348 (not call!186498))))

(declare-fun bm!186493 () Bool)

(assert (=> bm!186493 (= call!186498 (isEmpty!18737 (tail!4579 (v!34547 lt!1019141))))))

(declare-fun b!2878754 () Bool)

(declare-fun e!1821472 () Bool)

(assert (=> b!2878754 (= e!1821472 (nullable!2697 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))))))

(declare-fun b!2878755 () Bool)

(assert (=> b!2878755 (= e!1821472 (matchR!3747 (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141)))) (tail!4579 (tail!4579 (v!34547 lt!1019141)))))))

(declare-fun b!2878756 () Bool)

(declare-fun e!1821475 () Bool)

(assert (=> b!2878756 (= e!1821475 (not lt!1019246))))

(declare-fun b!2878757 () Bool)

(declare-fun res!1193352 () Bool)

(assert (=> b!2878757 (=> res!1193352 e!1821470)))

(assert (=> b!2878757 (= res!1193352 (not ((_ is ElementMatch!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))))))))

(assert (=> b!2878757 (= e!1821475 e!1821470)))

(declare-fun b!2878758 () Bool)

(declare-fun res!1193353 () Bool)

(declare-fun e!1821476 () Bool)

(assert (=> b!2878758 (=> res!1193353 e!1821476)))

(assert (=> b!2878758 (= res!1193353 (not (isEmpty!18737 (tail!4579 (tail!4579 (v!34547 lt!1019141))))))))

(declare-fun b!2878759 () Bool)

(declare-fun res!1193351 () Bool)

(assert (=> b!2878759 (=> (not res!1193351) (not e!1821474))))

(assert (=> b!2878759 (= res!1193351 (isEmpty!18737 (tail!4579 (tail!4579 (v!34547 lt!1019141)))))))

(declare-fun b!2878760 () Bool)

(assert (=> b!2878760 (= e!1821474 (= (head!6354 (tail!4579 (v!34547 lt!1019141))) (c!466810 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))))))))

(declare-fun b!2878761 () Bool)

(assert (=> b!2878761 (= e!1821476 (not (= (head!6354 (tail!4579 (v!34547 lt!1019141))) (c!466810 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))))))))

(declare-fun b!2878762 () Bool)

(declare-fun e!1821473 () Bool)

(assert (=> b!2878762 (= e!1821473 e!1821476)))

(declare-fun res!1193346 () Bool)

(assert (=> b!2878762 (=> res!1193346 e!1821476)))

(assert (=> b!2878762 (= res!1193346 call!186498)))

(declare-fun b!2878752 () Bool)

(declare-fun e!1821471 () Bool)

(assert (=> b!2878752 (= e!1821471 (= lt!1019246 call!186498))))

(declare-fun d!832331 () Bool)

(assert (=> d!832331 e!1821471))

(declare-fun c!467031 () Bool)

(assert (=> d!832331 (= c!467031 ((_ is EmptyExpr!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))))))

(assert (=> d!832331 (= lt!1019246 e!1821472)))

(declare-fun c!467033 () Bool)

(assert (=> d!832331 (= c!467033 (isEmpty!18737 (tail!4579 (v!34547 lt!1019141))))))

(assert (=> d!832331 (validRegex!3525 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))))))

(assert (=> d!832331 (= (matchR!3747 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))) (tail!4579 (v!34547 lt!1019141))) lt!1019246)))

(declare-fun b!2878763 () Bool)

(assert (=> b!2878763 (= e!1821470 e!1821473)))

(declare-fun res!1193350 () Bool)

(assert (=> b!2878763 (=> (not res!1193350) (not e!1821473))))

(assert (=> b!2878763 (= res!1193350 (not lt!1019246))))

(declare-fun b!2878764 () Bool)

(assert (=> b!2878764 (= e!1821471 e!1821475)))

(declare-fun c!467032 () Bool)

(assert (=> b!2878764 (= c!467032 ((_ is EmptyLang!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))))))

(assert (= (and d!832331 c!467033) b!2878754))

(assert (= (and d!832331 (not c!467033)) b!2878755))

(assert (= (and d!832331 c!467031) b!2878752))

(assert (= (and d!832331 (not c!467031)) b!2878764))

(assert (= (and b!2878764 c!467032) b!2878756))

(assert (= (and b!2878764 (not c!467032)) b!2878757))

(assert (= (and b!2878757 (not res!1193352)) b!2878751))

(assert (= (and b!2878751 res!1193347) b!2878753))

(assert (= (and b!2878753 res!1193348) b!2878759))

(assert (= (and b!2878759 res!1193351) b!2878760))

(assert (= (and b!2878751 (not res!1193349)) b!2878763))

(assert (= (and b!2878763 res!1193350) b!2878762))

(assert (= (and b!2878762 (not res!1193346)) b!2878758))

(assert (= (and b!2878758 (not res!1193353)) b!2878761))

(assert (= (or b!2878752 b!2878753 b!2878762) bm!186493))

(assert (=> b!2878761 m!3295587))

(declare-fun m!3296019 () Bool)

(assert (=> b!2878761 m!3296019))

(assert (=> b!2878754 m!3295695))

(declare-fun m!3296021 () Bool)

(assert (=> b!2878754 m!3296021))

(assert (=> b!2878760 m!3295587))

(assert (=> b!2878760 m!3296019))

(assert (=> b!2878759 m!3295587))

(declare-fun m!3296023 () Bool)

(assert (=> b!2878759 m!3296023))

(assert (=> b!2878759 m!3296023))

(declare-fun m!3296025 () Bool)

(assert (=> b!2878759 m!3296025))

(assert (=> bm!186493 m!3295587))

(assert (=> bm!186493 m!3295693))

(assert (=> b!2878755 m!3295587))

(assert (=> b!2878755 m!3296019))

(assert (=> b!2878755 m!3295695))

(assert (=> b!2878755 m!3296019))

(declare-fun m!3296027 () Bool)

(assert (=> b!2878755 m!3296027))

(assert (=> b!2878755 m!3295587))

(assert (=> b!2878755 m!3296023))

(assert (=> b!2878755 m!3296027))

(assert (=> b!2878755 m!3296023))

(declare-fun m!3296029 () Bool)

(assert (=> b!2878755 m!3296029))

(assert (=> b!2878758 m!3295587))

(assert (=> b!2878758 m!3296023))

(assert (=> b!2878758 m!3296023))

(assert (=> b!2878758 m!3296025))

(assert (=> d!832331 m!3295587))

(assert (=> d!832331 m!3295693))

(assert (=> d!832331 m!3295695))

(declare-fun m!3296031 () Bool)

(assert (=> d!832331 m!3296031))

(assert (=> b!2878321 d!832331))

(declare-fun c!467035 () Bool)

(declare-fun call!186501 () Regex!8747)

(declare-fun bm!186494 () Bool)

(assert (=> bm!186494 (= call!186501 (derivativeStep!2330 (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))) (head!6354 (v!34547 lt!1019141))))))

(declare-fun b!2878765 () Bool)

(declare-fun e!1821479 () Regex!8747)

(declare-fun call!186499 () Regex!8747)

(assert (=> b!2878765 (= e!1821479 (Union!8747 call!186499 call!186501))))

(declare-fun b!2878766 () Bool)

(declare-fun e!1821480 () Regex!8747)

(assert (=> b!2878766 (= e!1821480 EmptyLang!8747)))

(declare-fun d!832333 () Bool)

(declare-fun lt!1019247 () Regex!8747)

(assert (=> d!832333 (validRegex!3525 lt!1019247)))

(assert (=> d!832333 (= lt!1019247 e!1821480)))

(declare-fun c!467038 () Bool)

(assert (=> d!832333 (= c!467038 (or ((_ is EmptyExpr!8747) (h!39829 (exprs!3207 c!7184))) ((_ is EmptyLang!8747) (h!39829 (exprs!3207 c!7184)))))))

(assert (=> d!832333 (validRegex!3525 (h!39829 (exprs!3207 c!7184)))))

(assert (=> d!832333 (= (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))) lt!1019247)))

(declare-fun b!2878767 () Bool)

(declare-fun e!1821478 () Regex!8747)

(assert (=> b!2878767 (= e!1821479 e!1821478)))

(declare-fun c!467036 () Bool)

(assert (=> b!2878767 (= c!467036 ((_ is Star!8747) (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878768 () Bool)

(declare-fun e!1821477 () Regex!8747)

(declare-fun call!186500 () Regex!8747)

(assert (=> b!2878768 (= e!1821477 (Union!8747 (Concat!14068 call!186500 (regTwo!18006 (h!39829 (exprs!3207 c!7184)))) EmptyLang!8747))))

(declare-fun b!2878769 () Bool)

(declare-fun e!1821481 () Regex!8747)

(assert (=> b!2878769 (= e!1821480 e!1821481)))

(declare-fun c!467037 () Bool)

(assert (=> b!2878769 (= c!467037 ((_ is ElementMatch!8747) (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878770 () Bool)

(assert (=> b!2878770 (= e!1821481 (ite (= (head!6354 (v!34547 lt!1019141)) (c!466810 (h!39829 (exprs!3207 c!7184)))) EmptyExpr!8747 EmptyLang!8747))))

(declare-fun b!2878771 () Bool)

(declare-fun call!186502 () Regex!8747)

(assert (=> b!2878771 (= e!1821478 (Concat!14068 call!186502 (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878772 () Bool)

(assert (=> b!2878772 (= e!1821477 (Union!8747 (Concat!14068 call!186500 (regTwo!18006 (h!39829 (exprs!3207 c!7184)))) call!186501))))

(declare-fun b!2878773 () Bool)

(assert (=> b!2878773 (= c!467035 ((_ is Union!8747) (h!39829 (exprs!3207 c!7184))))))

(assert (=> b!2878773 (= e!1821481 e!1821479)))

(declare-fun bm!186495 () Bool)

(assert (=> bm!186495 (= call!186499 (derivativeStep!2330 (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (head!6354 (v!34547 lt!1019141))))))

(declare-fun bm!186496 () Bool)

(assert (=> bm!186496 (= call!186502 call!186499)))

(declare-fun bm!186497 () Bool)

(assert (=> bm!186497 (= call!186500 call!186502)))

(declare-fun b!2878774 () Bool)

(declare-fun c!467034 () Bool)

(assert (=> b!2878774 (= c!467034 (nullable!2697 (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))

(assert (=> b!2878774 (= e!1821478 e!1821477)))

(assert (= (and d!832333 c!467038) b!2878766))

(assert (= (and d!832333 (not c!467038)) b!2878769))

(assert (= (and b!2878769 c!467037) b!2878770))

(assert (= (and b!2878769 (not c!467037)) b!2878773))

(assert (= (and b!2878773 c!467035) b!2878765))

(assert (= (and b!2878773 (not c!467035)) b!2878767))

(assert (= (and b!2878767 c!467036) b!2878771))

(assert (= (and b!2878767 (not c!467036)) b!2878774))

(assert (= (and b!2878774 c!467034) b!2878772))

(assert (= (and b!2878774 (not c!467034)) b!2878768))

(assert (= (or b!2878772 b!2878768) bm!186497))

(assert (= (or b!2878771 bm!186497) bm!186496))

(assert (= (or b!2878765 bm!186496) bm!186495))

(assert (= (or b!2878765 b!2878772) bm!186494))

(assert (=> bm!186494 m!3295583))

(declare-fun m!3296033 () Bool)

(assert (=> bm!186494 m!3296033))

(declare-fun m!3296035 () Bool)

(assert (=> d!832333 m!3296035))

(assert (=> d!832333 m!3295593))

(assert (=> bm!186495 m!3295583))

(declare-fun m!3296037 () Bool)

(assert (=> bm!186495 m!3296037))

(assert (=> b!2878774 m!3295983))

(assert (=> b!2878321 d!832333))

(declare-fun d!832335 () Bool)

(assert (=> d!832335 (= (head!6354 (v!34547 lt!1019141)) (h!39828 (v!34547 lt!1019141)))))

(assert (=> b!2878321 d!832335))

(assert (=> b!2878321 d!832327))

(declare-fun d!832337 () Bool)

(assert (=> d!832337 (= (isEmpty!18737 (tail!4579 (get!10347 lt!1019141))) ((_ is Nil!34408) (tail!4579 (get!10347 lt!1019141))))))

(assert (=> b!2878340 d!832337))

(assert (=> b!2878340 d!832309))

(assert (=> b!2878341 d!832337))

(assert (=> b!2878341 d!832309))

(declare-fun d!832339 () Bool)

(assert (=> d!832339 (= (get!10347 (getLanguageWitness!445 lt!1019143)) (v!34547 (getLanguageWitness!445 lt!1019143)))))

(assert (=> d!832177 d!832339))

(declare-fun d!832341 () Bool)

(declare-fun c!467039 () Bool)

(assert (=> d!832341 (= c!467039 (isEmpty!18737 (get!10347 (getLanguageWitness!445 lt!1019143))))))

(declare-fun e!1821482 () Bool)

(assert (=> d!832341 (= (matchZipper!489 (store ((as const (Array Context!5414 Bool)) false) lt!1019143 true) (get!10347 (getLanguageWitness!445 lt!1019143))) e!1821482)))

(declare-fun b!2878775 () Bool)

(assert (=> b!2878775 (= e!1821482 (nullableZipper!725 (store ((as const (Array Context!5414 Bool)) false) lt!1019143 true)))))

(declare-fun b!2878776 () Bool)

(assert (=> b!2878776 (= e!1821482 (matchZipper!489 (derivationStepZipper!481 (store ((as const (Array Context!5414 Bool)) false) lt!1019143 true) (head!6354 (get!10347 (getLanguageWitness!445 lt!1019143)))) (tail!4579 (get!10347 (getLanguageWitness!445 lt!1019143)))))))

(assert (= (and d!832341 c!467039) b!2878775))

(assert (= (and d!832341 (not c!467039)) b!2878776))

(assert (=> d!832341 m!3295727))

(declare-fun m!3296039 () Bool)

(assert (=> d!832341 m!3296039))

(assert (=> b!2878775 m!3295545))

(declare-fun m!3296041 () Bool)

(assert (=> b!2878775 m!3296041))

(assert (=> b!2878776 m!3295727))

(declare-fun m!3296043 () Bool)

(assert (=> b!2878776 m!3296043))

(assert (=> b!2878776 m!3295545))

(assert (=> b!2878776 m!3296043))

(declare-fun m!3296045 () Bool)

(assert (=> b!2878776 m!3296045))

(assert (=> b!2878776 m!3295727))

(declare-fun m!3296047 () Bool)

(assert (=> b!2878776 m!3296047))

(assert (=> b!2878776 m!3296045))

(assert (=> b!2878776 m!3296047))

(declare-fun m!3296049 () Bool)

(assert (=> b!2878776 m!3296049))

(assert (=> d!832177 d!832341))

(declare-fun bs!523068 () Bool)

(declare-fun d!832343 () Bool)

(assert (= bs!523068 (and d!832343 d!832185)))

(declare-fun lambda!107416 () Int)

(assert (=> bs!523068 (not (= lambda!107416 lambda!107394))))

(declare-fun bs!523069 () Bool)

(assert (= bs!523069 (and d!832343 d!832259)))

(assert (=> bs!523069 (not (= lambda!107416 lambda!107405))))

(declare-fun bs!523070 () Bool)

(assert (= bs!523070 (and d!832343 d!832181)))

(assert (=> bs!523070 (= lambda!107416 lambda!107390)))

(declare-fun bs!523071 () Bool)

(assert (= bs!523071 (and d!832343 d!832183)))

(assert (=> bs!523071 (= lambda!107416 lambda!107393)))

(declare-fun bs!523072 () Bool)

(assert (= bs!523072 (and d!832343 d!832137)))

(assert (=> bs!523072 (not (= lambda!107416 lambda!107387))))

(assert (=> d!832343 (= (lostCause!839 lt!1019143) (exists!1182 (exprs!3207 lt!1019143) lambda!107416))))

(declare-fun bs!523073 () Bool)

(assert (= bs!523073 d!832343))

(declare-fun m!3296051 () Bool)

(assert (=> bs!523073 m!3296051))

(assert (=> d!832177 d!832343))

(assert (=> d!832177 d!832181))

(declare-fun d!832345 () Bool)

(assert (=> d!832345 (matchZipper!489 (store ((as const (Array Context!5414 Bool)) false) lt!1019143 true) (get!10347 (getLanguageWitness!445 lt!1019143)))))

(assert (=> d!832345 true))

(declare-fun _$31!172 () Unit!47995)

(assert (=> d!832345 (= (choose!17024 lt!1019143) _$31!172)))

(declare-fun bs!523074 () Bool)

(assert (= bs!523074 d!832345))

(assert (=> bs!523074 m!3295545))

(assert (=> bs!523074 m!3295565))

(assert (=> bs!523074 m!3295565))

(assert (=> bs!523074 m!3295727))

(assert (=> bs!523074 m!3295545))

(assert (=> bs!523074 m!3295727))

(assert (=> bs!523074 m!3295731))

(assert (=> d!832177 d!832345))

(declare-fun d!832347 () Bool)

(declare-fun res!1193358 () Bool)

(declare-fun e!1821487 () Bool)

(assert (=> d!832347 (=> res!1193358 e!1821487)))

(assert (=> d!832347 (= res!1193358 ((_ is Nil!34409) (exprs!3207 lt!1019144)))))

(assert (=> d!832347 (= (forall!7091 (exprs!3207 lt!1019144) lambda!107387) e!1821487)))

(declare-fun b!2878781 () Bool)

(declare-fun e!1821488 () Bool)

(assert (=> b!2878781 (= e!1821487 e!1821488)))

(declare-fun res!1193359 () Bool)

(assert (=> b!2878781 (=> (not res!1193359) (not e!1821488))))

(declare-fun dynLambda!14329 (Int Regex!8747) Bool)

(assert (=> b!2878781 (= res!1193359 (dynLambda!14329 lambda!107387 (h!39829 (exprs!3207 lt!1019144))))))

(declare-fun b!2878782 () Bool)

(assert (=> b!2878782 (= e!1821488 (forall!7091 (t!233576 (exprs!3207 lt!1019144)) lambda!107387))))

(assert (= (and d!832347 (not res!1193358)) b!2878781))

(assert (= (and b!2878781 res!1193359) b!2878782))

(declare-fun b_lambda!86227 () Bool)

(assert (=> (not b_lambda!86227) (not b!2878781)))

(declare-fun m!3296053 () Bool)

(assert (=> b!2878781 m!3296053))

(declare-fun m!3296055 () Bool)

(assert (=> b!2878782 m!3296055))

(assert (=> d!832137 d!832347))

(assert (=> b!2878320 d!832261))

(declare-fun lt!1019248 () List!34532)

(declare-fun b!2878786 () Bool)

(declare-fun e!1821490 () Bool)

(assert (=> b!2878786 (= e!1821490 (or (not (= (v!34547 lt!1019210) Nil!34408)) (= lt!1019248 (v!34547 lt!1019209))))))

(declare-fun b!2878784 () Bool)

(declare-fun e!1821489 () List!34532)

(assert (=> b!2878784 (= e!1821489 (Cons!34408 (h!39828 (v!34547 lt!1019209)) (++!8183 (t!233575 (v!34547 lt!1019209)) (v!34547 lt!1019210))))))

(declare-fun d!832349 () Bool)

(assert (=> d!832349 e!1821490))

(declare-fun res!1193361 () Bool)

(assert (=> d!832349 (=> (not res!1193361) (not e!1821490))))

(assert (=> d!832349 (= res!1193361 (= (content!4711 lt!1019248) ((_ map or) (content!4711 (v!34547 lt!1019209)) (content!4711 (v!34547 lt!1019210)))))))

(assert (=> d!832349 (= lt!1019248 e!1821489)))

(declare-fun c!467041 () Bool)

(assert (=> d!832349 (= c!467041 ((_ is Nil!34408) (v!34547 lt!1019209)))))

(assert (=> d!832349 (= (++!8183 (v!34547 lt!1019209) (v!34547 lt!1019210)) lt!1019248)))

(declare-fun b!2878783 () Bool)

(assert (=> b!2878783 (= e!1821489 (v!34547 lt!1019210))))

(declare-fun b!2878785 () Bool)

(declare-fun res!1193360 () Bool)

(assert (=> b!2878785 (=> (not res!1193360) (not e!1821490))))

(assert (=> b!2878785 (= res!1193360 (= (size!26330 lt!1019248) (+ (size!26330 (v!34547 lt!1019209)) (size!26330 (v!34547 lt!1019210)))))))

(assert (= (and d!832349 c!467041) b!2878783))

(assert (= (and d!832349 (not c!467041)) b!2878784))

(assert (= (and d!832349 res!1193361) b!2878785))

(assert (= (and b!2878785 res!1193360) b!2878786))

(declare-fun m!3296057 () Bool)

(assert (=> b!2878784 m!3296057))

(declare-fun m!3296059 () Bool)

(assert (=> d!832349 m!3296059))

(declare-fun m!3296061 () Bool)

(assert (=> d!832349 m!3296061))

(declare-fun m!3296063 () Bool)

(assert (=> d!832349 m!3296063))

(declare-fun m!3296065 () Bool)

(assert (=> b!2878785 m!3296065))

(declare-fun m!3296067 () Bool)

(assert (=> b!2878785 m!3296067))

(declare-fun m!3296069 () Bool)

(assert (=> b!2878785 m!3296069))

(assert (=> b!2878398 d!832349))

(declare-fun bs!523075 () Bool)

(declare-fun d!832351 () Bool)

(assert (= bs!523075 (and d!832351 d!832185)))

(declare-fun lambda!107417 () Int)

(assert (=> bs!523075 (not (= lambda!107417 lambda!107394))))

(declare-fun bs!523076 () Bool)

(assert (= bs!523076 (and d!832351 d!832259)))

(assert (=> bs!523076 (= (= lambda!107393 lambda!107390) (= lambda!107417 lambda!107405))))

(declare-fun bs!523077 () Bool)

(assert (= bs!523077 (and d!832351 d!832181)))

(assert (=> bs!523077 (not (= lambda!107417 lambda!107390))))

(declare-fun bs!523078 () Bool)

(assert (= bs!523078 (and d!832351 d!832183)))

(assert (=> bs!523078 (not (= lambda!107417 lambda!107393))))

(declare-fun bs!523079 () Bool)

(assert (= bs!523079 (and d!832351 d!832137)))

(assert (=> bs!523079 (not (= lambda!107417 lambda!107387))))

(declare-fun bs!523080 () Bool)

(assert (= bs!523080 (and d!832351 d!832343)))

(assert (=> bs!523080 (not (= lambda!107417 lambda!107416))))

(assert (=> d!832351 true))

(assert (=> d!832351 (< (dynLambda!14327 order!18145 lambda!107393) (dynLambda!14327 order!18145 lambda!107417))))

(assert (=> d!832351 (= (exists!1182 (exprs!3207 c!7184) lambda!107393) (not (forall!7091 (exprs!3207 c!7184) lambda!107417)))))

(declare-fun bs!523081 () Bool)

(assert (= bs!523081 d!832351))

(declare-fun m!3296071 () Bool)

(assert (=> bs!523081 m!3296071))

(assert (=> d!832183 d!832351))

(assert (=> d!832133 d!832255))

(declare-fun d!832353 () Bool)

(declare-fun c!467042 () Bool)

(assert (=> d!832353 (= c!467042 (isEmpty!18737 (tail!4579 (get!10347 lt!1019148))))))

(declare-fun e!1821491 () Bool)

(assert (=> d!832353 (= (matchZipper!489 (derivationStepZipper!481 lt!1019145 (head!6354 (get!10347 lt!1019148))) (tail!4579 (get!10347 lt!1019148))) e!1821491)))

(declare-fun b!2878787 () Bool)

(assert (=> b!2878787 (= e!1821491 (nullableZipper!725 (derivationStepZipper!481 lt!1019145 (head!6354 (get!10347 lt!1019148)))))))

(declare-fun b!2878788 () Bool)

(assert (=> b!2878788 (= e!1821491 (matchZipper!489 (derivationStepZipper!481 (derivationStepZipper!481 lt!1019145 (head!6354 (get!10347 lt!1019148))) (head!6354 (tail!4579 (get!10347 lt!1019148)))) (tail!4579 (tail!4579 (get!10347 lt!1019148)))))))

(assert (= (and d!832353 c!467042) b!2878787))

(assert (= (and d!832353 (not c!467042)) b!2878788))

(assert (=> d!832353 m!3295705))

(declare-fun m!3296073 () Bool)

(assert (=> d!832353 m!3296073))

(assert (=> b!2878787 m!3295703))

(declare-fun m!3296075 () Bool)

(assert (=> b!2878787 m!3296075))

(assert (=> b!2878788 m!3295705))

(declare-fun m!3296077 () Bool)

(assert (=> b!2878788 m!3296077))

(assert (=> b!2878788 m!3295703))

(assert (=> b!2878788 m!3296077))

(declare-fun m!3296079 () Bool)

(assert (=> b!2878788 m!3296079))

(assert (=> b!2878788 m!3295705))

(declare-fun m!3296081 () Bool)

(assert (=> b!2878788 m!3296081))

(assert (=> b!2878788 m!3296079))

(assert (=> b!2878788 m!3296081))

(declare-fun m!3296083 () Bool)

(assert (=> b!2878788 m!3296083))

(assert (=> b!2878332 d!832353))

(declare-fun bs!523082 () Bool)

(declare-fun d!832355 () Bool)

(assert (= bs!523082 (and d!832355 d!832315)))

(declare-fun lambda!107418 () Int)

(assert (=> bs!523082 (= (= (head!6354 (get!10347 lt!1019148)) (head!6354 (v!34547 lt!1019148))) (= lambda!107418 lambda!107415))))

(assert (=> d!832355 true))

(assert (=> d!832355 (= (derivationStepZipper!481 lt!1019145 (head!6354 (get!10347 lt!1019148))) (flatMap!227 lt!1019145 lambda!107418))))

(declare-fun bs!523083 () Bool)

(assert (= bs!523083 d!832355))

(declare-fun m!3296085 () Bool)

(assert (=> bs!523083 m!3296085))

(assert (=> b!2878332 d!832355))

(declare-fun d!832357 () Bool)

(assert (=> d!832357 (= (head!6354 (get!10347 lt!1019148)) (h!39828 (get!10347 lt!1019148)))))

(assert (=> b!2878332 d!832357))

(declare-fun d!832359 () Bool)

(assert (=> d!832359 (= (tail!4579 (get!10347 lt!1019148)) (t!233575 (get!10347 lt!1019148)))))

(assert (=> b!2878332 d!832359))

(declare-fun bs!523084 () Bool)

(declare-fun d!832361 () Bool)

(assert (= bs!523084 (and d!832361 d!832185)))

(declare-fun lambda!107419 () Int)

(assert (=> bs!523084 (not (= lambda!107419 lambda!107394))))

(declare-fun bs!523085 () Bool)

(assert (= bs!523085 (and d!832361 d!832259)))

(assert (=> bs!523085 (not (= lambda!107419 lambda!107405))))

(declare-fun bs!523086 () Bool)

(assert (= bs!523086 (and d!832361 d!832181)))

(assert (=> bs!523086 (= lambda!107419 lambda!107390)))

(declare-fun bs!523087 () Bool)

(assert (= bs!523087 (and d!832361 d!832183)))

(assert (=> bs!523087 (= lambda!107419 lambda!107393)))

(declare-fun bs!523088 () Bool)

(assert (= bs!523088 (and d!832361 d!832137)))

(assert (=> bs!523088 (not (= lambda!107419 lambda!107387))))

(declare-fun bs!523089 () Bool)

(assert (= bs!523089 (and d!832361 d!832343)))

(assert (=> bs!523089 (= lambda!107419 lambda!107416)))

(declare-fun bs!523090 () Bool)

(assert (= bs!523090 (and d!832361 d!832351)))

(assert (=> bs!523090 (not (= lambda!107419 lambda!107417))))

(declare-fun b!2878789 () Bool)

(declare-fun e!1821492 () Option!6422)

(declare-fun e!1821493 () Option!6422)

(assert (=> b!2878789 (= e!1821492 e!1821493)))

(declare-fun lt!1019250 () Option!6422)

(assert (=> b!2878789 (= lt!1019250 (getLanguageWitness!446 (h!39829 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))))))))

(declare-fun c!467045 () Bool)

(assert (=> b!2878789 (= c!467045 ((_ is Some!6421) lt!1019250))))

(declare-fun lt!1019249 () Option!6422)

(assert (=> d!832361 (= (isEmpty!18738 lt!1019249) (exists!1182 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))) lambda!107419))))

(assert (=> d!832361 (= lt!1019249 e!1821492)))

(declare-fun c!467043 () Bool)

(assert (=> d!832361 (= c!467043 ((_ is Cons!34409) (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143))))))))

(assert (=> d!832361 (= (getLanguageWitness!445 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))) lt!1019249)))

(declare-fun b!2878790 () Bool)

(declare-fun e!1821494 () Option!6422)

(declare-fun lt!1019251 () Option!6422)

(assert (=> b!2878790 (= e!1821494 (Some!6421 (++!8183 (v!34547 lt!1019250) (v!34547 lt!1019251))))))

(declare-fun b!2878791 () Bool)

(assert (=> b!2878791 (= e!1821493 None!6421)))

(declare-fun b!2878792 () Bool)

(assert (=> b!2878792 (= e!1821492 (Some!6421 Nil!34408))))

(declare-fun b!2878793 () Bool)

(declare-fun c!467044 () Bool)

(assert (=> b!2878793 (= c!467044 ((_ is Some!6421) lt!1019251))))

(assert (=> b!2878793 (= lt!1019251 (getLanguageWitness!445 (Context!5415 (t!233576 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143))))))))))

(assert (=> b!2878793 (= e!1821493 e!1821494)))

(declare-fun b!2878794 () Bool)

(assert (=> b!2878794 (= e!1821494 None!6421)))

(assert (= (and d!832361 c!467043) b!2878789))

(assert (= (and d!832361 (not c!467043)) b!2878792))

(assert (= (and b!2878789 c!467045) b!2878793))

(assert (= (and b!2878789 (not c!467045)) b!2878791))

(assert (= (and b!2878793 c!467044) b!2878790))

(assert (= (and b!2878793 (not c!467044)) b!2878794))

(declare-fun m!3296087 () Bool)

(assert (=> b!2878789 m!3296087))

(declare-fun m!3296089 () Bool)

(assert (=> d!832361 m!3296089))

(declare-fun m!3296091 () Bool)

(assert (=> d!832361 m!3296091))

(declare-fun m!3296093 () Bool)

(assert (=> b!2878790 m!3296093))

(declare-fun m!3296095 () Bool)

(assert (=> b!2878793 m!3296095))

(assert (=> b!2878363 d!832361))

(assert (=> b!2878326 d!832335))

(declare-fun d!832363 () Bool)

(declare-fun c!467046 () Bool)

(assert (=> d!832363 (= c!467046 ((_ is EmptyExpr!8747) (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun e!1821499 () Option!6422)

(assert (=> d!832363 (= (getLanguageWitness!446 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) e!1821499)))

(declare-fun b!2878795 () Bool)

(declare-fun e!1821497 () Option!6422)

(assert (=> b!2878795 (= e!1821497 None!6421)))

(declare-fun b!2878796 () Bool)

(declare-fun e!1821495 () Option!6422)

(declare-fun lt!1019252 () Option!6422)

(declare-fun lt!1019253 () Option!6422)

(assert (=> b!2878796 (= e!1821495 (Some!6421 (++!8183 (v!34547 lt!1019252) (v!34547 lt!1019253))))))

(declare-fun b!2878797 () Bool)

(declare-fun e!1821502 () Option!6422)

(declare-fun call!186503 () Option!6422)

(assert (=> b!2878797 (= e!1821502 call!186503)))

(declare-fun b!2878798 () Bool)

(assert (=> b!2878798 (= e!1821499 (Some!6421 Nil!34408))))

(declare-fun b!2878799 () Bool)

(assert (=> b!2878799 (= e!1821495 None!6421)))

(declare-fun b!2878800 () Bool)

(declare-fun e!1821501 () Option!6422)

(assert (=> b!2878800 (= e!1821501 e!1821502)))

(declare-fun lt!1019254 () Option!6422)

(declare-fun call!186504 () Option!6422)

(assert (=> b!2878800 (= lt!1019254 call!186504)))

(declare-fun c!467053 () Bool)

(assert (=> b!2878800 (= c!467053 ((_ is Some!6421) lt!1019254))))

(declare-fun b!2878801 () Bool)

(assert (=> b!2878801 (= e!1821502 lt!1019254)))

(declare-fun c!467050 () Bool)

(declare-fun bm!186498 () Bool)

(assert (=> bm!186498 (= call!186503 (getLanguageWitness!446 (ite c!467050 (regTwo!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2878802 () Bool)

(declare-fun e!1821500 () Option!6422)

(declare-fun e!1821496 () Option!6422)

(assert (=> b!2878802 (= e!1821500 e!1821496)))

(declare-fun c!467047 () Bool)

(assert (=> b!2878802 (= c!467047 ((_ is Star!8747) (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2878803 () Bool)

(declare-fun c!467052 () Bool)

(assert (=> b!2878803 (= c!467052 ((_ is Some!6421) lt!1019253))))

(assert (=> b!2878803 (= lt!1019253 call!186503)))

(assert (=> b!2878803 (= e!1821497 e!1821495)))

(declare-fun b!2878804 () Bool)

(declare-fun e!1821498 () Option!6422)

(assert (=> b!2878804 (= e!1821498 None!6421)))

(declare-fun bm!186499 () Bool)

(assert (=> bm!186499 (= call!186504 (getLanguageWitness!446 (ite c!467050 (regOne!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2878805 () Bool)

(assert (=> b!2878805 (= e!1821496 (Some!6421 Nil!34408))))

(declare-fun b!2878806 () Bool)

(assert (=> b!2878806 (= e!1821501 e!1821497)))

(assert (=> b!2878806 (= lt!1019252 call!186504)))

(declare-fun c!467049 () Bool)

(assert (=> b!2878806 (= c!467049 ((_ is Some!6421) lt!1019252))))

(declare-fun b!2878807 () Bool)

(assert (=> b!2878807 (= e!1821499 e!1821498)))

(declare-fun c!467051 () Bool)

(assert (=> b!2878807 (= c!467051 ((_ is EmptyLang!8747) (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2878808 () Bool)

(declare-fun c!467048 () Bool)

(assert (=> b!2878808 (= c!467048 ((_ is ElementMatch!8747) (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))

(assert (=> b!2878808 (= e!1821498 e!1821500)))

(declare-fun b!2878809 () Bool)

(assert (=> b!2878809 (= c!467050 ((_ is Union!8747) (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))

(assert (=> b!2878809 (= e!1821496 e!1821501)))

(declare-fun b!2878810 () Bool)

(assert (=> b!2878810 (= e!1821500 (Some!6421 (Cons!34408 (c!466810 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) Nil!34408)))))

(assert (= (and d!832363 c!467046) b!2878798))

(assert (= (and d!832363 (not c!467046)) b!2878807))

(assert (= (and b!2878807 c!467051) b!2878804))

(assert (= (and b!2878807 (not c!467051)) b!2878808))

(assert (= (and b!2878808 c!467048) b!2878810))

(assert (= (and b!2878808 (not c!467048)) b!2878802))

(assert (= (and b!2878802 c!467047) b!2878805))

(assert (= (and b!2878802 (not c!467047)) b!2878809))

(assert (= (and b!2878809 c!467050) b!2878800))

(assert (= (and b!2878809 (not c!467050)) b!2878806))

(assert (= (and b!2878800 c!467053) b!2878801))

(assert (= (and b!2878800 (not c!467053)) b!2878797))

(assert (= (and b!2878806 c!467049) b!2878803))

(assert (= (and b!2878806 (not c!467049)) b!2878795))

(assert (= (and b!2878803 c!467052) b!2878796))

(assert (= (and b!2878803 (not c!467052)) b!2878799))

(assert (= (or b!2878797 b!2878803) bm!186498))

(assert (= (or b!2878800 b!2878806) bm!186499))

(declare-fun m!3296097 () Bool)

(assert (=> b!2878796 m!3296097))

(declare-fun m!3296099 () Bool)

(assert (=> bm!186498 m!3296099))

(declare-fun m!3296101 () Bool)

(assert (=> bm!186499 m!3296101))

(assert (=> bm!186432 d!832363))

(assert (=> b!2878327 d!832335))

(declare-fun d!832365 () Bool)

(declare-fun lambda!107422 () Int)

(declare-fun exists!1184 ((InoxSet Context!5414) Int) Bool)

(assert (=> d!832365 (= (nullableZipper!725 lt!1019145) (exists!1184 lt!1019145 lambda!107422))))

(declare-fun bs!523091 () Bool)

(assert (= bs!523091 d!832365))

(declare-fun m!3296103 () Bool)

(assert (=> bs!523091 m!3296103))

(assert (=> b!2878331 d!832365))

(assert (=> d!832167 d!832255))

(assert (=> d!832167 d!832217))

(assert (=> b!2878325 d!832325))

(assert (=> b!2878325 d!832327))

(assert (=> d!832135 d!832167))

(assert (=> d!832135 d!832133))

(declare-fun d!832367 () Bool)

(assert (=> d!832367 (= (matchR!3747 (h!39829 (exprs!3207 c!7184)) (v!34547 lt!1019141)) (matchZipper!489 lt!1019147 (v!34547 lt!1019141)))))

(assert (=> d!832367 true))

(declare-fun _$44!1308 () Unit!47995)

(assert (=> d!832367 (= (choose!17022 lt!1019147 (Cons!34410 lt!1019144 Nil!34410) (h!39829 (exprs!3207 c!7184)) (v!34547 lt!1019141)) _$44!1308)))

(declare-fun bs!523092 () Bool)

(assert (= bs!523092 d!832367))

(assert (=> bs!523092 m!3295543))

(assert (=> bs!523092 m!3295535))

(assert (=> d!832135 d!832367))

(assert (=> d!832135 d!832217))

(assert (=> d!832175 d!832311))

(assert (=> d!832175 d!832217))

(declare-fun d!832369 () Bool)

(declare-fun res!1193362 () Bool)

(declare-fun e!1821503 () Bool)

(assert (=> d!832369 (=> res!1193362 e!1821503)))

(assert (=> d!832369 (= res!1193362 ((_ is Nil!34409) (exprs!3207 c!7184)))))

(assert (=> d!832369 (= (forall!7091 (exprs!3207 c!7184) lambda!107394) e!1821503)))

(declare-fun b!2878811 () Bool)

(declare-fun e!1821504 () Bool)

(assert (=> b!2878811 (= e!1821503 e!1821504)))

(declare-fun res!1193363 () Bool)

(assert (=> b!2878811 (=> (not res!1193363) (not e!1821504))))

(assert (=> b!2878811 (= res!1193363 (dynLambda!14329 lambda!107394 (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878812 () Bool)

(assert (=> b!2878812 (= e!1821504 (forall!7091 (t!233576 (exprs!3207 c!7184)) lambda!107394))))

(assert (= (and d!832369 (not res!1193362)) b!2878811))

(assert (= (and b!2878811 res!1193363) b!2878812))

(declare-fun b_lambda!86229 () Bool)

(assert (=> (not b_lambda!86229) (not b!2878811)))

(declare-fun m!3296105 () Bool)

(assert (=> b!2878811 m!3296105))

(declare-fun m!3296107 () Bool)

(assert (=> b!2878812 m!3296107))

(assert (=> d!832185 d!832369))

(assert (=> b!2878148 d!832365))

(declare-fun d!832371 () Bool)

(assert (=> d!832371 (= (isEmpty!18737 (v!34547 lt!1019148)) ((_ is Nil!34408) (v!34547 lt!1019148)))))

(assert (=> d!832129 d!832371))

(declare-fun d!832373 () Bool)

(declare-fun c!467056 () Bool)

(assert (=> d!832373 (= c!467056 (isEmpty!18737 (tail!4579 (v!34547 lt!1019141))))))

(declare-fun e!1821505 () Bool)

(assert (=> d!832373 (= (matchZipper!489 (derivationStepZipper!481 lt!1019147 (head!6354 (v!34547 lt!1019141))) (tail!4579 (v!34547 lt!1019141))) e!1821505)))

(declare-fun b!2878813 () Bool)

(assert (=> b!2878813 (= e!1821505 (nullableZipper!725 (derivationStepZipper!481 lt!1019147 (head!6354 (v!34547 lt!1019141)))))))

(declare-fun b!2878814 () Bool)

(assert (=> b!2878814 (= e!1821505 (matchZipper!489 (derivationStepZipper!481 (derivationStepZipper!481 lt!1019147 (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141)))) (tail!4579 (tail!4579 (v!34547 lt!1019141)))))))

(assert (= (and d!832373 c!467056) b!2878813))

(assert (= (and d!832373 (not c!467056)) b!2878814))

(assert (=> d!832373 m!3295587))

(assert (=> d!832373 m!3295693))

(assert (=> b!2878813 m!3295585))

(declare-fun m!3296109 () Bool)

(assert (=> b!2878813 m!3296109))

(assert (=> b!2878814 m!3295587))

(assert (=> b!2878814 m!3296019))

(assert (=> b!2878814 m!3295585))

(assert (=> b!2878814 m!3296019))

(declare-fun m!3296111 () Bool)

(assert (=> b!2878814 m!3296111))

(assert (=> b!2878814 m!3295587))

(assert (=> b!2878814 m!3296023))

(assert (=> b!2878814 m!3296111))

(assert (=> b!2878814 m!3296023))

(declare-fun m!3296113 () Bool)

(assert (=> b!2878814 m!3296113))

(assert (=> b!2878151 d!832373))

(declare-fun bs!523093 () Bool)

(declare-fun d!832375 () Bool)

(assert (= bs!523093 (and d!832375 d!832315)))

(declare-fun lambda!107423 () Int)

(assert (=> bs!523093 (= (= (head!6354 (v!34547 lt!1019141)) (head!6354 (v!34547 lt!1019148))) (= lambda!107423 lambda!107415))))

(declare-fun bs!523094 () Bool)

(assert (= bs!523094 (and d!832375 d!832355)))

(assert (=> bs!523094 (= (= (head!6354 (v!34547 lt!1019141)) (head!6354 (get!10347 lt!1019148))) (= lambda!107423 lambda!107418))))

(assert (=> d!832375 true))

(assert (=> d!832375 (= (derivationStepZipper!481 lt!1019147 (head!6354 (v!34547 lt!1019141))) (flatMap!227 lt!1019147 lambda!107423))))

(declare-fun bs!523095 () Bool)

(assert (= bs!523095 d!832375))

(declare-fun m!3296115 () Bool)

(assert (=> bs!523095 m!3296115))

(assert (=> b!2878151 d!832375))

(assert (=> b!2878151 d!832335))

(assert (=> b!2878151 d!832327))

(declare-fun bs!523096 () Bool)

(declare-fun d!832377 () Bool)

(assert (= bs!523096 (and d!832377 d!832365)))

(declare-fun lambda!107424 () Int)

(assert (=> bs!523096 (= lambda!107424 lambda!107422)))

(assert (=> d!832377 (= (nullableZipper!725 lt!1019147) (exists!1184 lt!1019147 lambda!107424))))

(declare-fun bs!523097 () Bool)

(assert (= bs!523097 d!832377))

(declare-fun m!3296117 () Bool)

(assert (=> bs!523097 m!3296117))

(assert (=> b!2878150 d!832377))

(declare-fun d!832379 () Bool)

(declare-fun c!467057 () Bool)

(assert (=> d!832379 (= c!467057 ((_ is EmptyExpr!8747) (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun e!1821510 () Option!6422)

(assert (=> d!832379 (= (getLanguageWitness!446 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) e!1821510)))

(declare-fun b!2878815 () Bool)

(declare-fun e!1821508 () Option!6422)

(assert (=> b!2878815 (= e!1821508 None!6421)))

(declare-fun b!2878816 () Bool)

(declare-fun e!1821506 () Option!6422)

(declare-fun lt!1019255 () Option!6422)

(declare-fun lt!1019256 () Option!6422)

(assert (=> b!2878816 (= e!1821506 (Some!6421 (++!8183 (v!34547 lt!1019255) (v!34547 lt!1019256))))))

(declare-fun b!2878817 () Bool)

(declare-fun e!1821513 () Option!6422)

(declare-fun call!186505 () Option!6422)

(assert (=> b!2878817 (= e!1821513 call!186505)))

(declare-fun b!2878818 () Bool)

(assert (=> b!2878818 (= e!1821510 (Some!6421 Nil!34408))))

(declare-fun b!2878819 () Bool)

(assert (=> b!2878819 (= e!1821506 None!6421)))

(declare-fun b!2878820 () Bool)

(declare-fun e!1821512 () Option!6422)

(assert (=> b!2878820 (= e!1821512 e!1821513)))

(declare-fun lt!1019257 () Option!6422)

(declare-fun call!186506 () Option!6422)

(assert (=> b!2878820 (= lt!1019257 call!186506)))

(declare-fun c!467064 () Bool)

(assert (=> b!2878820 (= c!467064 ((_ is Some!6421) lt!1019257))))

(declare-fun b!2878821 () Bool)

(assert (=> b!2878821 (= e!1821513 lt!1019257)))

(declare-fun bm!186500 () Bool)

(declare-fun c!467061 () Bool)

(assert (=> bm!186500 (= call!186505 (getLanguageWitness!446 (ite c!467061 (regTwo!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2878822 () Bool)

(declare-fun e!1821511 () Option!6422)

(declare-fun e!1821507 () Option!6422)

(assert (=> b!2878822 (= e!1821511 e!1821507)))

(declare-fun c!467058 () Bool)

(assert (=> b!2878822 (= c!467058 ((_ is Star!8747) (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2878823 () Bool)

(declare-fun c!467063 () Bool)

(assert (=> b!2878823 (= c!467063 ((_ is Some!6421) lt!1019256))))

(assert (=> b!2878823 (= lt!1019256 call!186505)))

(assert (=> b!2878823 (= e!1821508 e!1821506)))

(declare-fun b!2878824 () Bool)

(declare-fun e!1821509 () Option!6422)

(assert (=> b!2878824 (= e!1821509 None!6421)))

(declare-fun bm!186501 () Bool)

(assert (=> bm!186501 (= call!186506 (getLanguageWitness!446 (ite c!467061 (regOne!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2878825 () Bool)

(assert (=> b!2878825 (= e!1821507 (Some!6421 Nil!34408))))

(declare-fun b!2878826 () Bool)

(assert (=> b!2878826 (= e!1821512 e!1821508)))

(assert (=> b!2878826 (= lt!1019255 call!186506)))

(declare-fun c!467060 () Bool)

(assert (=> b!2878826 (= c!467060 ((_ is Some!6421) lt!1019255))))

(declare-fun b!2878827 () Bool)

(assert (=> b!2878827 (= e!1821510 e!1821509)))

(declare-fun c!467062 () Bool)

(assert (=> b!2878827 (= c!467062 ((_ is EmptyLang!8747) (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2878828 () Bool)

(declare-fun c!467059 () Bool)

(assert (=> b!2878828 (= c!467059 ((_ is ElementMatch!8747) (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))

(assert (=> b!2878828 (= e!1821509 e!1821511)))

(declare-fun b!2878829 () Bool)

(assert (=> b!2878829 (= c!467061 ((_ is Union!8747) (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))

(assert (=> b!2878829 (= e!1821507 e!1821512)))

(declare-fun b!2878830 () Bool)

(assert (=> b!2878830 (= e!1821511 (Some!6421 (Cons!34408 (c!466810 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) Nil!34408)))))

(assert (= (and d!832379 c!467057) b!2878818))

(assert (= (and d!832379 (not c!467057)) b!2878827))

(assert (= (and b!2878827 c!467062) b!2878824))

(assert (= (and b!2878827 (not c!467062)) b!2878828))

(assert (= (and b!2878828 c!467059) b!2878830))

(assert (= (and b!2878828 (not c!467059)) b!2878822))

(assert (= (and b!2878822 c!467058) b!2878825))

(assert (= (and b!2878822 (not c!467058)) b!2878829))

(assert (= (and b!2878829 c!467061) b!2878820))

(assert (= (and b!2878829 (not c!467061)) b!2878826))

(assert (= (and b!2878820 c!467064) b!2878821))

(assert (= (and b!2878820 (not c!467064)) b!2878817))

(assert (= (and b!2878826 c!467060) b!2878823))

(assert (= (and b!2878826 (not c!467060)) b!2878815))

(assert (= (and b!2878823 c!467063) b!2878816))

(assert (= (and b!2878823 (not c!467063)) b!2878819))

(assert (= (or b!2878817 b!2878823) bm!186500))

(assert (= (or b!2878820 b!2878826) bm!186501))

(declare-fun m!3296119 () Bool)

(assert (=> b!2878816 m!3296119))

(declare-fun m!3296121 () Bool)

(assert (=> bm!186500 m!3296121))

(declare-fun m!3296123 () Bool)

(assert (=> bm!186501 m!3296123))

(assert (=> bm!186433 d!832379))

(declare-fun b!2878841 () Bool)

(declare-fun e!1821516 () Bool)

(declare-fun tp_is_empty!15091 () Bool)

(assert (=> b!2878841 (= e!1821516 tp_is_empty!15091)))

(declare-fun b!2878844 () Bool)

(declare-fun tp!923985 () Bool)

(declare-fun tp!923988 () Bool)

(assert (=> b!2878844 (= e!1821516 (and tp!923985 tp!923988))))

(declare-fun b!2878843 () Bool)

(declare-fun tp!923987 () Bool)

(assert (=> b!2878843 (= e!1821516 tp!923987)))

(declare-fun b!2878842 () Bool)

(declare-fun tp!923986 () Bool)

(declare-fun tp!923984 () Bool)

(assert (=> b!2878842 (= e!1821516 (and tp!923986 tp!923984))))

(assert (=> b!2878417 (= tp!923955 e!1821516)))

(assert (= (and b!2878417 ((_ is ElementMatch!8747) (h!39829 (exprs!3207 c!7184)))) b!2878841))

(assert (= (and b!2878417 ((_ is Concat!14068) (h!39829 (exprs!3207 c!7184)))) b!2878842))

(assert (= (and b!2878417 ((_ is Star!8747) (h!39829 (exprs!3207 c!7184)))) b!2878843))

(assert (= (and b!2878417 ((_ is Union!8747) (h!39829 (exprs!3207 c!7184)))) b!2878844))

(declare-fun b!2878845 () Bool)

(declare-fun e!1821517 () Bool)

(declare-fun tp!923989 () Bool)

(declare-fun tp!923990 () Bool)

(assert (=> b!2878845 (= e!1821517 (and tp!923989 tp!923990))))

(assert (=> b!2878417 (= tp!923956 e!1821517)))

(assert (= (and b!2878417 ((_ is Cons!34409) (t!233576 (exprs!3207 c!7184)))) b!2878845))

(declare-fun b_lambda!86231 () Bool)

(assert (= b_lambda!86229 (or d!832185 b_lambda!86231)))

(declare-fun bs!523098 () Bool)

(declare-fun d!832381 () Bool)

(assert (= bs!523098 (and d!832381 d!832185)))

(assert (=> bs!523098 (= (dynLambda!14329 lambda!107394 (h!39829 (exprs!3207 c!7184))) (validRegex!3525 (h!39829 (exprs!3207 c!7184))))))

(assert (=> bs!523098 m!3295593))

(assert (=> b!2878811 d!832381))

(declare-fun b_lambda!86233 () Bool)

(assert (= b_lambda!86227 (or d!832137 b_lambda!86233)))

(declare-fun bs!523099 () Bool)

(declare-fun d!832383 () Bool)

(assert (= bs!523099 (and d!832383 d!832137)))

(assert (=> bs!523099 (= (dynLambda!14329 lambda!107387 (h!39829 (exprs!3207 lt!1019144))) (validRegex!3525 (h!39829 (exprs!3207 lt!1019144))))))

(declare-fun m!3296125 () Bool)

(assert (=> bs!523099 m!3296125))

(assert (=> b!2878781 d!832383))

(check-sat (not b!2878581) (not d!832333) (not b!2878571) (not d!832331) (not d!832373) (not bm!186498) (not b!2878790) (not b_lambda!86231) (not b!2878718) (not d!832353) (not b!2878603) (not b!2878575) (not bm!186501) (not b!2878785) (not d!832259) (not b!2878733) (not b!2878788) (not d!832375) (not b!2878598) (not b!2878813) (not bm!186468) (not b!2878719) (not b!2878580) (not d!832377) (not d!832313) (not d!832345) (not d!832315) (not b!2878579) (not b!2878816) (not d!832261) (not b!2878782) (not b!2878787) (not b!2878842) (not bm!186469) (not d!832271) (not b!2878758) (not b!2878760) (not b!2878761) (not d!832341) (not b!2878732) (not b!2878843) (not b!2878793) (not d!832323) (not b!2878814) (not d!832365) (not bs!523099) (not d!832235) (not b!2878759) (not bm!186491) (not b!2878776) (not b!2878576) (not d!832275) (not d!832355) tp_is_empty!15091 (not bm!186492) (not b!2878602) (not bs!523098) (not bm!186467) (not d!832343) (not b!2878775) (not b!2878597) (not d!832349) (not b!2878582) (not bm!186494) (not b!2878754) (not b!2878774) (not bm!186465) (not bm!186487) (not bm!186493) (not b!2878755) (not b!2878784) (not d!832367) (not bm!186495) (not bm!186488) (not b!2878720) (not d!832361) (not b!2878736) (not b!2878844) (not b!2878604) (not d!832245) (not b!2878789) (not bm!186499) (not d!832351) (not bm!186500) (not b_lambda!86233) (not b!2878796) (not b!2878601) (not b!2878845) (not b!2878812))
(check-sat)
(get-model)

(declare-fun b!2878847 () Bool)

(declare-fun e!1821521 () Bool)

(declare-fun call!186508 () Bool)

(assert (=> b!2878847 (= e!1821521 call!186508)))

(declare-fun b!2878848 () Bool)

(declare-fun e!1821522 () Bool)

(declare-fun e!1821524 () Bool)

(assert (=> b!2878848 (= e!1821522 e!1821524)))

(declare-fun c!467066 () Bool)

(assert (=> b!2878848 (= c!467066 ((_ is Union!8747) lt!1019239))))

(declare-fun b!2878849 () Bool)

(declare-fun e!1821518 () Bool)

(declare-fun e!1821520 () Bool)

(assert (=> b!2878849 (= e!1821518 e!1821520)))

(declare-fun res!1193368 () Bool)

(assert (=> b!2878849 (=> (not res!1193368) (not e!1821520))))

(assert (=> b!2878849 (= res!1193368 call!186508)))

(declare-fun b!2878850 () Bool)

(declare-fun res!1193367 () Bool)

(assert (=> b!2878850 (=> res!1193367 e!1821518)))

(assert (=> b!2878850 (= res!1193367 (not ((_ is Concat!14068) lt!1019239)))))

(assert (=> b!2878850 (= e!1821524 e!1821518)))

(declare-fun bm!186502 () Bool)

(assert (=> bm!186502 (= call!186508 (validRegex!3525 (ite c!467066 (regTwo!18007 lt!1019239) (regOne!18006 lt!1019239))))))

(declare-fun b!2878851 () Bool)

(declare-fun res!1193366 () Bool)

(assert (=> b!2878851 (=> (not res!1193366) (not e!1821521))))

(declare-fun call!186507 () Bool)

(assert (=> b!2878851 (= res!1193366 call!186507)))

(assert (=> b!2878851 (= e!1821524 e!1821521)))

(declare-fun b!2878846 () Bool)

(declare-fun e!1821523 () Bool)

(assert (=> b!2878846 (= e!1821523 e!1821522)))

(declare-fun c!467065 () Bool)

(assert (=> b!2878846 (= c!467065 ((_ is Star!8747) lt!1019239))))

(declare-fun d!832385 () Bool)

(declare-fun res!1193364 () Bool)

(assert (=> d!832385 (=> res!1193364 e!1821523)))

(assert (=> d!832385 (= res!1193364 ((_ is ElementMatch!8747) lt!1019239))))

(assert (=> d!832385 (= (validRegex!3525 lt!1019239) e!1821523)))

(declare-fun bm!186503 () Bool)

(declare-fun call!186509 () Bool)

(assert (=> bm!186503 (= call!186507 call!186509)))

(declare-fun b!2878852 () Bool)

(assert (=> b!2878852 (= e!1821520 call!186507)))

(declare-fun b!2878853 () Bool)

(declare-fun e!1821519 () Bool)

(assert (=> b!2878853 (= e!1821519 call!186509)))

(declare-fun bm!186504 () Bool)

(assert (=> bm!186504 (= call!186509 (validRegex!3525 (ite c!467065 (reg!9076 lt!1019239) (ite c!467066 (regOne!18007 lt!1019239) (regTwo!18006 lt!1019239)))))))

(declare-fun b!2878854 () Bool)

(assert (=> b!2878854 (= e!1821522 e!1821519)))

(declare-fun res!1193365 () Bool)

(assert (=> b!2878854 (= res!1193365 (not (nullable!2697 (reg!9076 lt!1019239))))))

(assert (=> b!2878854 (=> (not res!1193365) (not e!1821519))))

(assert (= (and d!832385 (not res!1193364)) b!2878846))

(assert (= (and b!2878846 c!467065) b!2878854))

(assert (= (and b!2878846 (not c!467065)) b!2878848))

(assert (= (and b!2878854 res!1193365) b!2878853))

(assert (= (and b!2878848 c!467066) b!2878851))

(assert (= (and b!2878848 (not c!467066)) b!2878850))

(assert (= (and b!2878851 res!1193366) b!2878847))

(assert (= (and b!2878850 (not res!1193367)) b!2878849))

(assert (= (and b!2878849 res!1193368) b!2878852))

(assert (= (or b!2878847 b!2878849) bm!186502))

(assert (= (or b!2878851 b!2878852) bm!186503))

(assert (= (or b!2878853 bm!186503) bm!186504))

(declare-fun m!3296127 () Bool)

(assert (=> bm!186502 m!3296127))

(declare-fun m!3296129 () Bool)

(assert (=> bm!186504 m!3296129))

(declare-fun m!3296131 () Bool)

(assert (=> b!2878854 m!3296131))

(assert (=> d!832275 d!832385))

(assert (=> d!832275 d!832217))

(declare-fun d!832387 () Bool)

(assert (=> d!832387 (= (isEmpty!18737 (tail!4579 (v!34547 lt!1019148))) ((_ is Nil!34408) (tail!4579 (v!34547 lt!1019148))))))

(assert (=> d!832313 d!832387))

(declare-fun d!832389 () Bool)

(declare-fun c!467067 () Bool)

(assert (=> d!832389 (= c!467067 (isEmpty!18737 (tail!4579 (tail!4579 (v!34547 lt!1019141)))))))

(declare-fun e!1821525 () Bool)

(assert (=> d!832389 (= (matchZipper!489 (derivationStepZipper!481 (derivationStepZipper!481 lt!1019147 (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141)))) (tail!4579 (tail!4579 (v!34547 lt!1019141)))) e!1821525)))

(declare-fun b!2878855 () Bool)

(assert (=> b!2878855 (= e!1821525 (nullableZipper!725 (derivationStepZipper!481 (derivationStepZipper!481 lt!1019147 (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141))))))))

(declare-fun b!2878856 () Bool)

(assert (=> b!2878856 (= e!1821525 (matchZipper!489 (derivationStepZipper!481 (derivationStepZipper!481 (derivationStepZipper!481 lt!1019147 (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141)))) (head!6354 (tail!4579 (tail!4579 (v!34547 lt!1019141))))) (tail!4579 (tail!4579 (tail!4579 (v!34547 lt!1019141))))))))

(assert (= (and d!832389 c!467067) b!2878855))

(assert (= (and d!832389 (not c!467067)) b!2878856))

(assert (=> d!832389 m!3296023))

(assert (=> d!832389 m!3296025))

(assert (=> b!2878855 m!3296111))

(declare-fun m!3296133 () Bool)

(assert (=> b!2878855 m!3296133))

(assert (=> b!2878856 m!3296023))

(declare-fun m!3296135 () Bool)

(assert (=> b!2878856 m!3296135))

(assert (=> b!2878856 m!3296111))

(assert (=> b!2878856 m!3296135))

(declare-fun m!3296137 () Bool)

(assert (=> b!2878856 m!3296137))

(assert (=> b!2878856 m!3296023))

(declare-fun m!3296139 () Bool)

(assert (=> b!2878856 m!3296139))

(assert (=> b!2878856 m!3296137))

(assert (=> b!2878856 m!3296139))

(declare-fun m!3296141 () Bool)

(assert (=> b!2878856 m!3296141))

(assert (=> b!2878814 d!832389))

(declare-fun bs!523100 () Bool)

(declare-fun d!832391 () Bool)

(assert (= bs!523100 (and d!832391 d!832315)))

(declare-fun lambda!107425 () Int)

(assert (=> bs!523100 (= (= (head!6354 (tail!4579 (v!34547 lt!1019141))) (head!6354 (v!34547 lt!1019148))) (= lambda!107425 lambda!107415))))

(declare-fun bs!523101 () Bool)

(assert (= bs!523101 (and d!832391 d!832355)))

(assert (=> bs!523101 (= (= (head!6354 (tail!4579 (v!34547 lt!1019141))) (head!6354 (get!10347 lt!1019148))) (= lambda!107425 lambda!107418))))

(declare-fun bs!523102 () Bool)

(assert (= bs!523102 (and d!832391 d!832375)))

(assert (=> bs!523102 (= (= (head!6354 (tail!4579 (v!34547 lt!1019141))) (head!6354 (v!34547 lt!1019141))) (= lambda!107425 lambda!107423))))

(assert (=> d!832391 true))

(assert (=> d!832391 (= (derivationStepZipper!481 (derivationStepZipper!481 lt!1019147 (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141)))) (flatMap!227 (derivationStepZipper!481 lt!1019147 (head!6354 (v!34547 lt!1019141))) lambda!107425))))

(declare-fun bs!523103 () Bool)

(assert (= bs!523103 d!832391))

(assert (=> bs!523103 m!3295585))

(declare-fun m!3296143 () Bool)

(assert (=> bs!523103 m!3296143))

(assert (=> b!2878814 d!832391))

(declare-fun d!832393 () Bool)

(assert (=> d!832393 (= (head!6354 (tail!4579 (v!34547 lt!1019141))) (h!39828 (tail!4579 (v!34547 lt!1019141))))))

(assert (=> b!2878814 d!832393))

(declare-fun d!832395 () Bool)

(assert (=> d!832395 (= (tail!4579 (tail!4579 (v!34547 lt!1019141))) (t!233575 (tail!4579 (v!34547 lt!1019141))))))

(assert (=> b!2878814 d!832395))

(assert (=> d!832271 d!832337))

(declare-fun b!2878858 () Bool)

(declare-fun e!1821529 () Bool)

(declare-fun call!186511 () Bool)

(assert (=> b!2878858 (= e!1821529 call!186511)))

(declare-fun b!2878859 () Bool)

(declare-fun e!1821530 () Bool)

(declare-fun e!1821532 () Bool)

(assert (=> b!2878859 (= e!1821530 e!1821532)))

(declare-fun c!467069 () Bool)

(assert (=> b!2878859 (= c!467069 ((_ is Union!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))))))

(declare-fun b!2878860 () Bool)

(declare-fun e!1821526 () Bool)

(declare-fun e!1821528 () Bool)

(assert (=> b!2878860 (= e!1821526 e!1821528)))

(declare-fun res!1193373 () Bool)

(assert (=> b!2878860 (=> (not res!1193373) (not e!1821528))))

(assert (=> b!2878860 (= res!1193373 call!186511)))

(declare-fun b!2878861 () Bool)

(declare-fun res!1193372 () Bool)

(assert (=> b!2878861 (=> res!1193372 e!1821526)))

(assert (=> b!2878861 (= res!1193372 (not ((_ is Concat!14068) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))))))))

(assert (=> b!2878861 (= e!1821532 e!1821526)))

(declare-fun bm!186505 () Bool)

(assert (=> bm!186505 (= call!186511 (validRegex!3525 (ite c!467069 (regTwo!18007 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))) (regOne!18006 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))))))))

(declare-fun b!2878862 () Bool)

(declare-fun res!1193371 () Bool)

(assert (=> b!2878862 (=> (not res!1193371) (not e!1821529))))

(declare-fun call!186510 () Bool)

(assert (=> b!2878862 (= res!1193371 call!186510)))

(assert (=> b!2878862 (= e!1821532 e!1821529)))

(declare-fun b!2878857 () Bool)

(declare-fun e!1821531 () Bool)

(assert (=> b!2878857 (= e!1821531 e!1821530)))

(declare-fun c!467068 () Bool)

(assert (=> b!2878857 (= c!467068 ((_ is Star!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))))))

(declare-fun d!832397 () Bool)

(declare-fun res!1193369 () Bool)

(assert (=> d!832397 (=> res!1193369 e!1821531)))

(assert (=> d!832397 (= res!1193369 ((_ is ElementMatch!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))))))

(assert (=> d!832397 (= (validRegex!3525 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))) e!1821531)))

(declare-fun bm!186506 () Bool)

(declare-fun call!186512 () Bool)

(assert (=> bm!186506 (= call!186510 call!186512)))

(declare-fun b!2878863 () Bool)

(assert (=> b!2878863 (= e!1821528 call!186510)))

(declare-fun b!2878864 () Bool)

(declare-fun e!1821527 () Bool)

(assert (=> b!2878864 (= e!1821527 call!186512)))

(declare-fun bm!186507 () Bool)

(assert (=> bm!186507 (= call!186512 (validRegex!3525 (ite c!467068 (reg!9076 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))) (ite c!467069 (regOne!18007 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))) (regTwo!18006 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))))))))))

(declare-fun b!2878865 () Bool)

(assert (=> b!2878865 (= e!1821530 e!1821527)))

(declare-fun res!1193370 () Bool)

(assert (=> b!2878865 (= res!1193370 (not (nullable!2697 (reg!9076 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))))))))

(assert (=> b!2878865 (=> (not res!1193370) (not e!1821527))))

(assert (= (and d!832397 (not res!1193369)) b!2878857))

(assert (= (and b!2878857 c!467068) b!2878865))

(assert (= (and b!2878857 (not c!467068)) b!2878859))

(assert (= (and b!2878865 res!1193370) b!2878864))

(assert (= (and b!2878859 c!467069) b!2878862))

(assert (= (and b!2878859 (not c!467069)) b!2878861))

(assert (= (and b!2878862 res!1193371) b!2878858))

(assert (= (and b!2878861 (not res!1193372)) b!2878860))

(assert (= (and b!2878860 res!1193373) b!2878863))

(assert (= (or b!2878858 b!2878860) bm!186505))

(assert (= (or b!2878862 b!2878863) bm!186506))

(assert (= (or b!2878864 bm!186506) bm!186507))

(declare-fun m!3296145 () Bool)

(assert (=> bm!186505 m!3296145))

(declare-fun m!3296147 () Bool)

(assert (=> bm!186507 m!3296147))

(declare-fun m!3296149 () Bool)

(assert (=> b!2878865 m!3296149))

(assert (=> d!832271 d!832397))

(declare-fun b!2878880 () Bool)

(declare-fun e!1821550 () Bool)

(declare-fun e!1821549 () Bool)

(assert (=> b!2878880 (= e!1821550 e!1821549)))

(declare-fun res!1193385 () Bool)

(declare-fun call!186517 () Bool)

(assert (=> b!2878880 (= res!1193385 call!186517)))

(assert (=> b!2878880 (=> (not res!1193385) (not e!1821549))))

(declare-fun b!2878881 () Bool)

(declare-fun e!1821548 () Bool)

(assert (=> b!2878881 (= e!1821550 e!1821548)))

(declare-fun res!1193388 () Bool)

(assert (=> b!2878881 (= res!1193388 call!186517)))

(assert (=> b!2878881 (=> res!1193388 e!1821548)))

(declare-fun d!832399 () Bool)

(declare-fun res!1193384 () Bool)

(declare-fun e!1821547 () Bool)

(assert (=> d!832399 (=> res!1193384 e!1821547)))

(assert (=> d!832399 (= res!1193384 ((_ is EmptyExpr!8747) (h!39829 (exprs!3207 c!7184))))))

(assert (=> d!832399 (= (nullableFct!824 (h!39829 (exprs!3207 c!7184))) e!1821547)))

(declare-fun b!2878882 () Bool)

(declare-fun e!1821545 () Bool)

(assert (=> b!2878882 (= e!1821547 e!1821545)))

(declare-fun res!1193386 () Bool)

(assert (=> b!2878882 (=> (not res!1193386) (not e!1821545))))

(assert (=> b!2878882 (= res!1193386 (and (not ((_ is EmptyLang!8747) (h!39829 (exprs!3207 c!7184)))) (not ((_ is ElementMatch!8747) (h!39829 (exprs!3207 c!7184))))))))

(declare-fun bm!186512 () Bool)

(declare-fun c!467072 () Bool)

(assert (=> bm!186512 (= call!186517 (nullable!2697 (ite c!467072 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2878883 () Bool)

(declare-fun call!186518 () Bool)

(assert (=> b!2878883 (= e!1821548 call!186518)))

(declare-fun b!2878884 () Bool)

(declare-fun e!1821546 () Bool)

(assert (=> b!2878884 (= e!1821546 e!1821550)))

(assert (=> b!2878884 (= c!467072 ((_ is Union!8747) (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2878885 () Bool)

(assert (=> b!2878885 (= e!1821549 call!186518)))

(declare-fun bm!186513 () Bool)

(assert (=> bm!186513 (= call!186518 (nullable!2697 (ite c!467072 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2878886 () Bool)

(assert (=> b!2878886 (= e!1821545 e!1821546)))

(declare-fun res!1193387 () Bool)

(assert (=> b!2878886 (=> res!1193387 e!1821546)))

(assert (=> b!2878886 (= res!1193387 ((_ is Star!8747) (h!39829 (exprs!3207 c!7184))))))

(assert (= (and d!832399 (not res!1193384)) b!2878882))

(assert (= (and b!2878882 res!1193386) b!2878886))

(assert (= (and b!2878886 (not res!1193387)) b!2878884))

(assert (= (and b!2878884 c!467072) b!2878881))

(assert (= (and b!2878884 (not c!467072)) b!2878880))

(assert (= (and b!2878881 (not res!1193388)) b!2878883))

(assert (= (and b!2878880 res!1193385) b!2878885))

(assert (= (or b!2878881 b!2878880) bm!186512))

(assert (= (or b!2878883 b!2878885) bm!186513))

(declare-fun m!3296151 () Bool)

(assert (=> bm!186512 m!3296151))

(declare-fun m!3296153 () Bool)

(assert (=> bm!186513 m!3296153))

(assert (=> d!832261 d!832399))

(declare-fun d!832401 () Bool)

(assert (=> d!832401 (= (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))) (h!39828 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))))))

(assert (=> b!2878582 d!832401))

(declare-fun lt!1019258 () List!34532)

(declare-fun e!1821552 () Bool)

(declare-fun b!2878890 () Bool)

(assert (=> b!2878890 (= e!1821552 (or (not (= (v!34547 lt!1019244) Nil!34408)) (= lt!1019258 (v!34547 lt!1019243))))))

(declare-fun b!2878888 () Bool)

(declare-fun e!1821551 () List!34532)

(assert (=> b!2878888 (= e!1821551 (Cons!34408 (h!39828 (v!34547 lt!1019243)) (++!8183 (t!233575 (v!34547 lt!1019243)) (v!34547 lt!1019244))))))

(declare-fun d!832403 () Bool)

(assert (=> d!832403 e!1821552))

(declare-fun res!1193390 () Bool)

(assert (=> d!832403 (=> (not res!1193390) (not e!1821552))))

(assert (=> d!832403 (= res!1193390 (= (content!4711 lt!1019258) ((_ map or) (content!4711 (v!34547 lt!1019243)) (content!4711 (v!34547 lt!1019244)))))))

(assert (=> d!832403 (= lt!1019258 e!1821551)))

(declare-fun c!467073 () Bool)

(assert (=> d!832403 (= c!467073 ((_ is Nil!34408) (v!34547 lt!1019243)))))

(assert (=> d!832403 (= (++!8183 (v!34547 lt!1019243) (v!34547 lt!1019244)) lt!1019258)))

(declare-fun b!2878887 () Bool)

(assert (=> b!2878887 (= e!1821551 (v!34547 lt!1019244))))

(declare-fun b!2878889 () Bool)

(declare-fun res!1193389 () Bool)

(assert (=> b!2878889 (=> (not res!1193389) (not e!1821552))))

(assert (=> b!2878889 (= res!1193389 (= (size!26330 lt!1019258) (+ (size!26330 (v!34547 lt!1019243)) (size!26330 (v!34547 lt!1019244)))))))

(assert (= (and d!832403 c!467073) b!2878887))

(assert (= (and d!832403 (not c!467073)) b!2878888))

(assert (= (and d!832403 res!1193390) b!2878889))

(assert (= (and b!2878889 res!1193389) b!2878890))

(declare-fun m!3296155 () Bool)

(assert (=> b!2878888 m!3296155))

(declare-fun m!3296157 () Bool)

(assert (=> d!832403 m!3296157))

(declare-fun m!3296159 () Bool)

(assert (=> d!832403 m!3296159))

(declare-fun m!3296161 () Bool)

(assert (=> d!832403 m!3296161))

(declare-fun m!3296163 () Bool)

(assert (=> b!2878889 m!3296163))

(declare-fun m!3296165 () Bool)

(assert (=> b!2878889 m!3296165))

(declare-fun m!3296167 () Bool)

(assert (=> b!2878889 m!3296167))

(assert (=> b!2878736 d!832403))

(assert (=> d!832373 d!832325))

(declare-fun d!832405 () Bool)

(assert (=> d!832405 (= (isEmpty!18737 (tail!4579 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))) ((_ is Nil!34408) (tail!4579 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))))))

(assert (=> b!2878580 d!832405))

(declare-fun d!832407 () Bool)

(assert (=> d!832407 (= (tail!4579 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))) (t!233575 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))))))

(assert (=> b!2878580 d!832407))

(declare-fun d!832409 () Bool)

(declare-fun c!467074 () Bool)

(assert (=> d!832409 (= c!467074 ((_ is EmptyExpr!8747) (ite c!467050 (regTwo!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun e!1821557 () Option!6422)

(assert (=> d!832409 (= (getLanguageWitness!446 (ite c!467050 (regTwo!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))) e!1821557)))

(declare-fun b!2878891 () Bool)

(declare-fun e!1821555 () Option!6422)

(assert (=> b!2878891 (= e!1821555 None!6421)))

(declare-fun b!2878892 () Bool)

(declare-fun e!1821553 () Option!6422)

(declare-fun lt!1019259 () Option!6422)

(declare-fun lt!1019260 () Option!6422)

(assert (=> b!2878892 (= e!1821553 (Some!6421 (++!8183 (v!34547 lt!1019259) (v!34547 lt!1019260))))))

(declare-fun b!2878893 () Bool)

(declare-fun e!1821560 () Option!6422)

(declare-fun call!186519 () Option!6422)

(assert (=> b!2878893 (= e!1821560 call!186519)))

(declare-fun b!2878894 () Bool)

(assert (=> b!2878894 (= e!1821557 (Some!6421 Nil!34408))))

(declare-fun b!2878895 () Bool)

(assert (=> b!2878895 (= e!1821553 None!6421)))

(declare-fun b!2878896 () Bool)

(declare-fun e!1821559 () Option!6422)

(assert (=> b!2878896 (= e!1821559 e!1821560)))

(declare-fun lt!1019261 () Option!6422)

(declare-fun call!186520 () Option!6422)

(assert (=> b!2878896 (= lt!1019261 call!186520)))

(declare-fun c!467081 () Bool)

(assert (=> b!2878896 (= c!467081 ((_ is Some!6421) lt!1019261))))

(declare-fun b!2878897 () Bool)

(assert (=> b!2878897 (= e!1821560 lt!1019261)))

(declare-fun c!467078 () Bool)

(declare-fun bm!186514 () Bool)

(assert (=> bm!186514 (= call!186519 (getLanguageWitness!446 (ite c!467078 (regTwo!18007 (ite c!467050 (regTwo!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))) (regTwo!18006 (ite c!467050 (regTwo!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))))

(declare-fun b!2878898 () Bool)

(declare-fun e!1821558 () Option!6422)

(declare-fun e!1821554 () Option!6422)

(assert (=> b!2878898 (= e!1821558 e!1821554)))

(declare-fun c!467075 () Bool)

(assert (=> b!2878898 (= c!467075 ((_ is Star!8747) (ite c!467050 (regTwo!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2878899 () Bool)

(declare-fun c!467080 () Bool)

(assert (=> b!2878899 (= c!467080 ((_ is Some!6421) lt!1019260))))

(assert (=> b!2878899 (= lt!1019260 call!186519)))

(assert (=> b!2878899 (= e!1821555 e!1821553)))

(declare-fun b!2878900 () Bool)

(declare-fun e!1821556 () Option!6422)

(assert (=> b!2878900 (= e!1821556 None!6421)))

(declare-fun bm!186515 () Bool)

(assert (=> bm!186515 (= call!186520 (getLanguageWitness!446 (ite c!467078 (regOne!18007 (ite c!467050 (regTwo!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))) (regOne!18006 (ite c!467050 (regTwo!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))))

(declare-fun b!2878901 () Bool)

(assert (=> b!2878901 (= e!1821554 (Some!6421 Nil!34408))))

(declare-fun b!2878902 () Bool)

(assert (=> b!2878902 (= e!1821559 e!1821555)))

(assert (=> b!2878902 (= lt!1019259 call!186520)))

(declare-fun c!467077 () Bool)

(assert (=> b!2878902 (= c!467077 ((_ is Some!6421) lt!1019259))))

(declare-fun b!2878903 () Bool)

(assert (=> b!2878903 (= e!1821557 e!1821556)))

(declare-fun c!467079 () Bool)

(assert (=> b!2878903 (= c!467079 ((_ is EmptyLang!8747) (ite c!467050 (regTwo!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun c!467076 () Bool)

(declare-fun b!2878904 () Bool)

(assert (=> b!2878904 (= c!467076 ((_ is ElementMatch!8747) (ite c!467050 (regTwo!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))

(assert (=> b!2878904 (= e!1821556 e!1821558)))

(declare-fun b!2878905 () Bool)

(assert (=> b!2878905 (= c!467078 ((_ is Union!8747) (ite c!467050 (regTwo!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))

(assert (=> b!2878905 (= e!1821554 e!1821559)))

(declare-fun b!2878906 () Bool)

(assert (=> b!2878906 (= e!1821558 (Some!6421 (Cons!34408 (c!466810 (ite c!467050 (regTwo!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))) Nil!34408)))))

(assert (= (and d!832409 c!467074) b!2878894))

(assert (= (and d!832409 (not c!467074)) b!2878903))

(assert (= (and b!2878903 c!467079) b!2878900))

(assert (= (and b!2878903 (not c!467079)) b!2878904))

(assert (= (and b!2878904 c!467076) b!2878906))

(assert (= (and b!2878904 (not c!467076)) b!2878898))

(assert (= (and b!2878898 c!467075) b!2878901))

(assert (= (and b!2878898 (not c!467075)) b!2878905))

(assert (= (and b!2878905 c!467078) b!2878896))

(assert (= (and b!2878905 (not c!467078)) b!2878902))

(assert (= (and b!2878896 c!467081) b!2878897))

(assert (= (and b!2878896 (not c!467081)) b!2878893))

(assert (= (and b!2878902 c!467077) b!2878899))

(assert (= (and b!2878902 (not c!467077)) b!2878891))

(assert (= (and b!2878899 c!467080) b!2878892))

(assert (= (and b!2878899 (not c!467080)) b!2878895))

(assert (= (or b!2878893 b!2878899) bm!186514))

(assert (= (or b!2878896 b!2878902) bm!186515))

(declare-fun m!3296169 () Bool)

(assert (=> b!2878892 m!3296169))

(declare-fun m!3296171 () Bool)

(assert (=> bm!186514 m!3296171))

(declare-fun m!3296173 () Bool)

(assert (=> bm!186515 m!3296173))

(assert (=> bm!186498 d!832409))

(declare-fun b!2878907 () Bool)

(declare-fun res!1193394 () Bool)

(declare-fun e!1821561 () Bool)

(assert (=> b!2878907 (=> res!1193394 e!1821561)))

(declare-fun e!1821565 () Bool)

(assert (=> b!2878907 (= res!1193394 e!1821565)))

(declare-fun res!1193392 () Bool)

(assert (=> b!2878907 (=> (not res!1193392) (not e!1821565))))

(declare-fun lt!1019262 () Bool)

(assert (=> b!2878907 (= res!1193392 lt!1019262)))

(declare-fun b!2878909 () Bool)

(declare-fun res!1193393 () Bool)

(assert (=> b!2878909 (=> (not res!1193393) (not e!1821565))))

(declare-fun call!186521 () Bool)

(assert (=> b!2878909 (= res!1193393 (not call!186521))))

(declare-fun bm!186516 () Bool)

(assert (=> bm!186516 (= call!186521 (isEmpty!18737 (tail!4579 (tail!4579 (v!34547 lt!1019141)))))))

(declare-fun b!2878910 () Bool)

(declare-fun e!1821563 () Bool)

(assert (=> b!2878910 (= e!1821563 (nullable!2697 (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141))))))))

(declare-fun b!2878911 () Bool)

(assert (=> b!2878911 (= e!1821563 (matchR!3747 (derivativeStep!2330 (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141)))) (head!6354 (tail!4579 (tail!4579 (v!34547 lt!1019141))))) (tail!4579 (tail!4579 (tail!4579 (v!34547 lt!1019141))))))))

(declare-fun b!2878912 () Bool)

(declare-fun e!1821566 () Bool)

(assert (=> b!2878912 (= e!1821566 (not lt!1019262))))

(declare-fun b!2878913 () Bool)

(declare-fun res!1193397 () Bool)

(assert (=> b!2878913 (=> res!1193397 e!1821561)))

(assert (=> b!2878913 (= res!1193397 (not ((_ is ElementMatch!8747) (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141)))))))))

(assert (=> b!2878913 (= e!1821566 e!1821561)))

(declare-fun b!2878914 () Bool)

(declare-fun res!1193398 () Bool)

(declare-fun e!1821567 () Bool)

(assert (=> b!2878914 (=> res!1193398 e!1821567)))

(assert (=> b!2878914 (= res!1193398 (not (isEmpty!18737 (tail!4579 (tail!4579 (tail!4579 (v!34547 lt!1019141)))))))))

(declare-fun b!2878915 () Bool)

(declare-fun res!1193396 () Bool)

(assert (=> b!2878915 (=> (not res!1193396) (not e!1821565))))

(assert (=> b!2878915 (= res!1193396 (isEmpty!18737 (tail!4579 (tail!4579 (tail!4579 (v!34547 lt!1019141))))))))

(declare-fun b!2878916 () Bool)

(assert (=> b!2878916 (= e!1821565 (= (head!6354 (tail!4579 (tail!4579 (v!34547 lt!1019141)))) (c!466810 (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141)))))))))

(declare-fun b!2878917 () Bool)

(assert (=> b!2878917 (= e!1821567 (not (= (head!6354 (tail!4579 (tail!4579 (v!34547 lt!1019141)))) (c!466810 (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141))))))))))

(declare-fun b!2878918 () Bool)

(declare-fun e!1821564 () Bool)

(assert (=> b!2878918 (= e!1821564 e!1821567)))

(declare-fun res!1193391 () Bool)

(assert (=> b!2878918 (=> res!1193391 e!1821567)))

(assert (=> b!2878918 (= res!1193391 call!186521)))

(declare-fun b!2878908 () Bool)

(declare-fun e!1821562 () Bool)

(assert (=> b!2878908 (= e!1821562 (= lt!1019262 call!186521))))

(declare-fun d!832411 () Bool)

(assert (=> d!832411 e!1821562))

(declare-fun c!467082 () Bool)

(assert (=> d!832411 (= c!467082 ((_ is EmptyExpr!8747) (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141))))))))

(assert (=> d!832411 (= lt!1019262 e!1821563)))

(declare-fun c!467084 () Bool)

(assert (=> d!832411 (= c!467084 (isEmpty!18737 (tail!4579 (tail!4579 (v!34547 lt!1019141)))))))

(assert (=> d!832411 (validRegex!3525 (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141)))))))

(assert (=> d!832411 (= (matchR!3747 (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141)))) (tail!4579 (tail!4579 (v!34547 lt!1019141)))) lt!1019262)))

(declare-fun b!2878919 () Bool)

(assert (=> b!2878919 (= e!1821561 e!1821564)))

(declare-fun res!1193395 () Bool)

(assert (=> b!2878919 (=> (not res!1193395) (not e!1821564))))

(assert (=> b!2878919 (= res!1193395 (not lt!1019262))))

(declare-fun b!2878920 () Bool)

(assert (=> b!2878920 (= e!1821562 e!1821566)))

(declare-fun c!467083 () Bool)

(assert (=> b!2878920 (= c!467083 ((_ is EmptyLang!8747) (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141))))))))

(assert (= (and d!832411 c!467084) b!2878910))

(assert (= (and d!832411 (not c!467084)) b!2878911))

(assert (= (and d!832411 c!467082) b!2878908))

(assert (= (and d!832411 (not c!467082)) b!2878920))

(assert (= (and b!2878920 c!467083) b!2878912))

(assert (= (and b!2878920 (not c!467083)) b!2878913))

(assert (= (and b!2878913 (not res!1193397)) b!2878907))

(assert (= (and b!2878907 res!1193392) b!2878909))

(assert (= (and b!2878909 res!1193393) b!2878915))

(assert (= (and b!2878915 res!1193396) b!2878916))

(assert (= (and b!2878907 (not res!1193394)) b!2878919))

(assert (= (and b!2878919 res!1193395) b!2878918))

(assert (= (and b!2878918 (not res!1193391)) b!2878914))

(assert (= (and b!2878914 (not res!1193398)) b!2878917))

(assert (= (or b!2878908 b!2878909 b!2878918) bm!186516))

(assert (=> b!2878917 m!3296023))

(assert (=> b!2878917 m!3296135))

(assert (=> b!2878910 m!3296027))

(declare-fun m!3296175 () Bool)

(assert (=> b!2878910 m!3296175))

(assert (=> b!2878916 m!3296023))

(assert (=> b!2878916 m!3296135))

(assert (=> b!2878915 m!3296023))

(assert (=> b!2878915 m!3296139))

(assert (=> b!2878915 m!3296139))

(declare-fun m!3296177 () Bool)

(assert (=> b!2878915 m!3296177))

(assert (=> bm!186516 m!3296023))

(assert (=> bm!186516 m!3296025))

(assert (=> b!2878911 m!3296023))

(assert (=> b!2878911 m!3296135))

(assert (=> b!2878911 m!3296027))

(assert (=> b!2878911 m!3296135))

(declare-fun m!3296179 () Bool)

(assert (=> b!2878911 m!3296179))

(assert (=> b!2878911 m!3296023))

(assert (=> b!2878911 m!3296139))

(assert (=> b!2878911 m!3296179))

(assert (=> b!2878911 m!3296139))

(declare-fun m!3296181 () Bool)

(assert (=> b!2878911 m!3296181))

(assert (=> b!2878914 m!3296023))

(assert (=> b!2878914 m!3296139))

(assert (=> b!2878914 m!3296139))

(assert (=> b!2878914 m!3296177))

(assert (=> d!832411 m!3296023))

(assert (=> d!832411 m!3296025))

(assert (=> d!832411 m!3296027))

(declare-fun m!3296183 () Bool)

(assert (=> d!832411 m!3296183))

(assert (=> b!2878755 d!832411))

(declare-fun call!186524 () Regex!8747)

(declare-fun c!467086 () Bool)

(declare-fun bm!186517 () Bool)

(assert (=> bm!186517 (= call!186524 (derivativeStep!2330 (ite c!467086 (regTwo!18007 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))) (regTwo!18006 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))))) (head!6354 (tail!4579 (v!34547 lt!1019141)))))))

(declare-fun b!2878921 () Bool)

(declare-fun e!1821570 () Regex!8747)

(declare-fun call!186522 () Regex!8747)

(assert (=> b!2878921 (= e!1821570 (Union!8747 call!186522 call!186524))))

(declare-fun b!2878922 () Bool)

(declare-fun e!1821571 () Regex!8747)

(assert (=> b!2878922 (= e!1821571 EmptyLang!8747)))

(declare-fun d!832413 () Bool)

(declare-fun lt!1019263 () Regex!8747)

(assert (=> d!832413 (validRegex!3525 lt!1019263)))

(assert (=> d!832413 (= lt!1019263 e!1821571)))

(declare-fun c!467089 () Bool)

(assert (=> d!832413 (= c!467089 (or ((_ is EmptyExpr!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))) ((_ is EmptyLang!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))))))))

(assert (=> d!832413 (validRegex!3525 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))))))

(assert (=> d!832413 (= (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))) (head!6354 (tail!4579 (v!34547 lt!1019141)))) lt!1019263)))

(declare-fun b!2878923 () Bool)

(declare-fun e!1821569 () Regex!8747)

(assert (=> b!2878923 (= e!1821570 e!1821569)))

(declare-fun c!467087 () Bool)

(assert (=> b!2878923 (= c!467087 ((_ is Star!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))))))

(declare-fun e!1821568 () Regex!8747)

(declare-fun call!186523 () Regex!8747)

(declare-fun b!2878924 () Bool)

(assert (=> b!2878924 (= e!1821568 (Union!8747 (Concat!14068 call!186523 (regTwo!18006 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))))) EmptyLang!8747))))

(declare-fun b!2878925 () Bool)

(declare-fun e!1821572 () Regex!8747)

(assert (=> b!2878925 (= e!1821571 e!1821572)))

(declare-fun c!467088 () Bool)

(assert (=> b!2878925 (= c!467088 ((_ is ElementMatch!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))))))

(declare-fun b!2878926 () Bool)

(assert (=> b!2878926 (= e!1821572 (ite (= (head!6354 (tail!4579 (v!34547 lt!1019141))) (c!466810 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))))) EmptyExpr!8747 EmptyLang!8747))))

(declare-fun call!186525 () Regex!8747)

(declare-fun b!2878927 () Bool)

(assert (=> b!2878927 (= e!1821569 (Concat!14068 call!186525 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))))))

(declare-fun b!2878928 () Bool)

(assert (=> b!2878928 (= e!1821568 (Union!8747 (Concat!14068 call!186523 (regTwo!18006 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))))) call!186524))))

(declare-fun b!2878929 () Bool)

(assert (=> b!2878929 (= c!467086 ((_ is Union!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))))))

(assert (=> b!2878929 (= e!1821572 e!1821570)))

(declare-fun bm!186518 () Bool)

(assert (=> bm!186518 (= call!186522 (derivativeStep!2330 (ite c!467086 (regOne!18007 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))) (ite c!467087 (reg!9076 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))) (regOne!18006 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))))) (head!6354 (tail!4579 (v!34547 lt!1019141)))))))

(declare-fun bm!186519 () Bool)

(assert (=> bm!186519 (= call!186525 call!186522)))

(declare-fun bm!186520 () Bool)

(assert (=> bm!186520 (= call!186523 call!186525)))

(declare-fun b!2878930 () Bool)

(declare-fun c!467085 () Bool)

(assert (=> b!2878930 (= c!467085 (nullable!2697 (regOne!18006 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))))))))

(assert (=> b!2878930 (= e!1821569 e!1821568)))

(assert (= (and d!832413 c!467089) b!2878922))

(assert (= (and d!832413 (not c!467089)) b!2878925))

(assert (= (and b!2878925 c!467088) b!2878926))

(assert (= (and b!2878925 (not c!467088)) b!2878929))

(assert (= (and b!2878929 c!467086) b!2878921))

(assert (= (and b!2878929 (not c!467086)) b!2878923))

(assert (= (and b!2878923 c!467087) b!2878927))

(assert (= (and b!2878923 (not c!467087)) b!2878930))

(assert (= (and b!2878930 c!467085) b!2878928))

(assert (= (and b!2878930 (not c!467085)) b!2878924))

(assert (= (or b!2878928 b!2878924) bm!186520))

(assert (= (or b!2878927 bm!186520) bm!186519))

(assert (= (or b!2878921 bm!186519) bm!186518))

(assert (= (or b!2878921 b!2878928) bm!186517))

(assert (=> bm!186517 m!3296019))

(declare-fun m!3296185 () Bool)

(assert (=> bm!186517 m!3296185))

(declare-fun m!3296187 () Bool)

(assert (=> d!832413 m!3296187))

(assert (=> d!832413 m!3295695))

(assert (=> d!832413 m!3296031))

(assert (=> bm!186518 m!3296019))

(declare-fun m!3296189 () Bool)

(assert (=> bm!186518 m!3296189))

(declare-fun m!3296191 () Bool)

(assert (=> b!2878930 m!3296191))

(assert (=> b!2878755 d!832413))

(assert (=> b!2878755 d!832393))

(assert (=> b!2878755 d!832395))

(declare-fun b!2878934 () Bool)

(declare-fun lt!1019264 () List!34532)

(declare-fun e!1821574 () Bool)

(assert (=> b!2878934 (= e!1821574 (or (not (= (v!34547 lt!1019256) Nil!34408)) (= lt!1019264 (v!34547 lt!1019255))))))

(declare-fun b!2878932 () Bool)

(declare-fun e!1821573 () List!34532)

(assert (=> b!2878932 (= e!1821573 (Cons!34408 (h!39828 (v!34547 lt!1019255)) (++!8183 (t!233575 (v!34547 lt!1019255)) (v!34547 lt!1019256))))))

(declare-fun d!832415 () Bool)

(assert (=> d!832415 e!1821574))

(declare-fun res!1193400 () Bool)

(assert (=> d!832415 (=> (not res!1193400) (not e!1821574))))

(assert (=> d!832415 (= res!1193400 (= (content!4711 lt!1019264) ((_ map or) (content!4711 (v!34547 lt!1019255)) (content!4711 (v!34547 lt!1019256)))))))

(assert (=> d!832415 (= lt!1019264 e!1821573)))

(declare-fun c!467090 () Bool)

(assert (=> d!832415 (= c!467090 ((_ is Nil!34408) (v!34547 lt!1019255)))))

(assert (=> d!832415 (= (++!8183 (v!34547 lt!1019255) (v!34547 lt!1019256)) lt!1019264)))

(declare-fun b!2878931 () Bool)

(assert (=> b!2878931 (= e!1821573 (v!34547 lt!1019256))))

(declare-fun b!2878933 () Bool)

(declare-fun res!1193399 () Bool)

(assert (=> b!2878933 (=> (not res!1193399) (not e!1821574))))

(assert (=> b!2878933 (= res!1193399 (= (size!26330 lt!1019264) (+ (size!26330 (v!34547 lt!1019255)) (size!26330 (v!34547 lt!1019256)))))))

(assert (= (and d!832415 c!467090) b!2878931))

(assert (= (and d!832415 (not c!467090)) b!2878932))

(assert (= (and d!832415 res!1193400) b!2878933))

(assert (= (and b!2878933 res!1193399) b!2878934))

(declare-fun m!3296193 () Bool)

(assert (=> b!2878932 m!3296193))

(declare-fun m!3296195 () Bool)

(assert (=> d!832415 m!3296195))

(declare-fun m!3296197 () Bool)

(assert (=> d!832415 m!3296197))

(declare-fun m!3296199 () Bool)

(assert (=> d!832415 m!3296199))

(declare-fun m!3296201 () Bool)

(assert (=> b!2878933 m!3296201))

(declare-fun m!3296203 () Bool)

(assert (=> b!2878933 m!3296203))

(declare-fun m!3296205 () Bool)

(assert (=> b!2878933 m!3296205))

(assert (=> b!2878816 d!832415))

(declare-fun b!2878936 () Bool)

(declare-fun e!1821578 () Bool)

(declare-fun call!186527 () Bool)

(assert (=> b!2878936 (= e!1821578 call!186527)))

(declare-fun b!2878937 () Bool)

(declare-fun e!1821579 () Bool)

(declare-fun e!1821581 () Bool)

(assert (=> b!2878937 (= e!1821579 e!1821581)))

(declare-fun c!467092 () Bool)

(assert (=> b!2878937 (= c!467092 ((_ is Union!8747) (ite c!466962 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2878938 () Bool)

(declare-fun e!1821575 () Bool)

(declare-fun e!1821577 () Bool)

(assert (=> b!2878938 (= e!1821575 e!1821577)))

(declare-fun res!1193405 () Bool)

(assert (=> b!2878938 (=> (not res!1193405) (not e!1821577))))

(assert (=> b!2878938 (= res!1193405 call!186527)))

(declare-fun b!2878939 () Bool)

(declare-fun res!1193404 () Bool)

(assert (=> b!2878939 (=> res!1193404 e!1821575)))

(assert (=> b!2878939 (= res!1193404 (not ((_ is Concat!14068) (ite c!466962 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))))

(assert (=> b!2878939 (= e!1821581 e!1821575)))

(declare-fun bm!186521 () Bool)

(assert (=> bm!186521 (= call!186527 (validRegex!3525 (ite c!467092 (regTwo!18007 (ite c!466962 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466962 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2878940 () Bool)

(declare-fun res!1193403 () Bool)

(assert (=> b!2878940 (=> (not res!1193403) (not e!1821578))))

(declare-fun call!186526 () Bool)

(assert (=> b!2878940 (= res!1193403 call!186526)))

(assert (=> b!2878940 (= e!1821581 e!1821578)))

(declare-fun b!2878935 () Bool)

(declare-fun e!1821580 () Bool)

(assert (=> b!2878935 (= e!1821580 e!1821579)))

(declare-fun c!467091 () Bool)

(assert (=> b!2878935 (= c!467091 ((_ is Star!8747) (ite c!466962 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun d!832417 () Bool)

(declare-fun res!1193401 () Bool)

(assert (=> d!832417 (=> res!1193401 e!1821580)))

(assert (=> d!832417 (= res!1193401 ((_ is ElementMatch!8747) (ite c!466962 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))

(assert (=> d!832417 (= (validRegex!3525 (ite c!466962 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) e!1821580)))

(declare-fun bm!186522 () Bool)

(declare-fun call!186528 () Bool)

(assert (=> bm!186522 (= call!186526 call!186528)))

(declare-fun b!2878941 () Bool)

(assert (=> b!2878941 (= e!1821577 call!186526)))

(declare-fun b!2878942 () Bool)

(declare-fun e!1821576 () Bool)

(assert (=> b!2878942 (= e!1821576 call!186528)))

(declare-fun bm!186523 () Bool)

(assert (=> bm!186523 (= call!186528 (validRegex!3525 (ite c!467091 (reg!9076 (ite c!466962 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (ite c!467092 (regOne!18007 (ite c!466962 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466962 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))))))

(declare-fun b!2878943 () Bool)

(assert (=> b!2878943 (= e!1821579 e!1821576)))

(declare-fun res!1193402 () Bool)

(assert (=> b!2878943 (= res!1193402 (not (nullable!2697 (reg!9076 (ite c!466962 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(assert (=> b!2878943 (=> (not res!1193402) (not e!1821576))))

(assert (= (and d!832417 (not res!1193401)) b!2878935))

(assert (= (and b!2878935 c!467091) b!2878943))

(assert (= (and b!2878935 (not c!467091)) b!2878937))

(assert (= (and b!2878943 res!1193402) b!2878942))

(assert (= (and b!2878937 c!467092) b!2878940))

(assert (= (and b!2878937 (not c!467092)) b!2878939))

(assert (= (and b!2878940 res!1193403) b!2878936))

(assert (= (and b!2878939 (not res!1193404)) b!2878938))

(assert (= (and b!2878938 res!1193405) b!2878941))

(assert (= (or b!2878936 b!2878938) bm!186521))

(assert (= (or b!2878940 b!2878941) bm!186522))

(assert (= (or b!2878942 bm!186522) bm!186523))

(declare-fun m!3296207 () Bool)

(assert (=> bm!186521 m!3296207))

(declare-fun m!3296209 () Bool)

(assert (=> bm!186523 m!3296209))

(declare-fun m!3296211 () Bool)

(assert (=> b!2878943 m!3296211))

(assert (=> bm!186465 d!832417))

(declare-fun d!832419 () Bool)

(assert (=> d!832419 (= (nullable!2697 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))) (nullableFct!824 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))))))

(declare-fun bs!523104 () Bool)

(assert (= bs!523104 d!832419))

(assert (=> bs!523104 m!3295723))

(declare-fun m!3296213 () Bool)

(assert (=> bs!523104 m!3296213))

(assert (=> b!2878597 d!832419))

(assert (=> bm!186493 d!832325))

(declare-fun d!832421 () Bool)

(declare-fun c!467093 () Bool)

(assert (=> d!832421 (= c!467093 ((_ is EmptyExpr!8747) (ite c!467050 (regOne!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun e!1821586 () Option!6422)

(assert (=> d!832421 (= (getLanguageWitness!446 (ite c!467050 (regOne!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))) e!1821586)))

(declare-fun b!2878944 () Bool)

(declare-fun e!1821584 () Option!6422)

(assert (=> b!2878944 (= e!1821584 None!6421)))

(declare-fun b!2878945 () Bool)

(declare-fun e!1821582 () Option!6422)

(declare-fun lt!1019265 () Option!6422)

(declare-fun lt!1019266 () Option!6422)

(assert (=> b!2878945 (= e!1821582 (Some!6421 (++!8183 (v!34547 lt!1019265) (v!34547 lt!1019266))))))

(declare-fun b!2878946 () Bool)

(declare-fun e!1821589 () Option!6422)

(declare-fun call!186529 () Option!6422)

(assert (=> b!2878946 (= e!1821589 call!186529)))

(declare-fun b!2878947 () Bool)

(assert (=> b!2878947 (= e!1821586 (Some!6421 Nil!34408))))

(declare-fun b!2878948 () Bool)

(assert (=> b!2878948 (= e!1821582 None!6421)))

(declare-fun b!2878949 () Bool)

(declare-fun e!1821588 () Option!6422)

(assert (=> b!2878949 (= e!1821588 e!1821589)))

(declare-fun lt!1019267 () Option!6422)

(declare-fun call!186530 () Option!6422)

(assert (=> b!2878949 (= lt!1019267 call!186530)))

(declare-fun c!467100 () Bool)

(assert (=> b!2878949 (= c!467100 ((_ is Some!6421) lt!1019267))))

(declare-fun b!2878950 () Bool)

(assert (=> b!2878950 (= e!1821589 lt!1019267)))

(declare-fun bm!186524 () Bool)

(declare-fun c!467097 () Bool)

(assert (=> bm!186524 (= call!186529 (getLanguageWitness!446 (ite c!467097 (regTwo!18007 (ite c!467050 (regOne!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))) (regTwo!18006 (ite c!467050 (regOne!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))))

(declare-fun b!2878951 () Bool)

(declare-fun e!1821587 () Option!6422)

(declare-fun e!1821583 () Option!6422)

(assert (=> b!2878951 (= e!1821587 e!1821583)))

(declare-fun c!467094 () Bool)

(assert (=> b!2878951 (= c!467094 ((_ is Star!8747) (ite c!467050 (regOne!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2878952 () Bool)

(declare-fun c!467099 () Bool)

(assert (=> b!2878952 (= c!467099 ((_ is Some!6421) lt!1019266))))

(assert (=> b!2878952 (= lt!1019266 call!186529)))

(assert (=> b!2878952 (= e!1821584 e!1821582)))

(declare-fun b!2878953 () Bool)

(declare-fun e!1821585 () Option!6422)

(assert (=> b!2878953 (= e!1821585 None!6421)))

(declare-fun bm!186525 () Bool)

(assert (=> bm!186525 (= call!186530 (getLanguageWitness!446 (ite c!467097 (regOne!18007 (ite c!467050 (regOne!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))) (regOne!18006 (ite c!467050 (regOne!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))))

(declare-fun b!2878954 () Bool)

(assert (=> b!2878954 (= e!1821583 (Some!6421 Nil!34408))))

(declare-fun b!2878955 () Bool)

(assert (=> b!2878955 (= e!1821588 e!1821584)))

(assert (=> b!2878955 (= lt!1019265 call!186530)))

(declare-fun c!467096 () Bool)

(assert (=> b!2878955 (= c!467096 ((_ is Some!6421) lt!1019265))))

(declare-fun b!2878956 () Bool)

(assert (=> b!2878956 (= e!1821586 e!1821585)))

(declare-fun c!467098 () Bool)

(assert (=> b!2878956 (= c!467098 ((_ is EmptyLang!8747) (ite c!467050 (regOne!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2878957 () Bool)

(declare-fun c!467095 () Bool)

(assert (=> b!2878957 (= c!467095 ((_ is ElementMatch!8747) (ite c!467050 (regOne!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))

(assert (=> b!2878957 (= e!1821585 e!1821587)))

(declare-fun b!2878958 () Bool)

(assert (=> b!2878958 (= c!467097 ((_ is Union!8747) (ite c!467050 (regOne!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))

(assert (=> b!2878958 (= e!1821583 e!1821588)))

(declare-fun b!2878959 () Bool)

(assert (=> b!2878959 (= e!1821587 (Some!6421 (Cons!34408 (c!466810 (ite c!467050 (regOne!18007 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))) Nil!34408)))))

(assert (= (and d!832421 c!467093) b!2878947))

(assert (= (and d!832421 (not c!467093)) b!2878956))

(assert (= (and b!2878956 c!467098) b!2878953))

(assert (= (and b!2878956 (not c!467098)) b!2878957))

(assert (= (and b!2878957 c!467095) b!2878959))

(assert (= (and b!2878957 (not c!467095)) b!2878951))

(assert (= (and b!2878951 c!467094) b!2878954))

(assert (= (and b!2878951 (not c!467094)) b!2878958))

(assert (= (and b!2878958 c!467097) b!2878949))

(assert (= (and b!2878958 (not c!467097)) b!2878955))

(assert (= (and b!2878949 c!467100) b!2878950))

(assert (= (and b!2878949 (not c!467100)) b!2878946))

(assert (= (and b!2878955 c!467096) b!2878952))

(assert (= (and b!2878955 (not c!467096)) b!2878944))

(assert (= (and b!2878952 c!467099) b!2878945))

(assert (= (and b!2878952 (not c!467099)) b!2878948))

(assert (= (or b!2878946 b!2878952) bm!186524))

(assert (= (or b!2878949 b!2878955) bm!186525))

(declare-fun m!3296215 () Bool)

(assert (=> b!2878945 m!3296215))

(declare-fun m!3296217 () Bool)

(assert (=> bm!186524 m!3296217))

(declare-fun m!3296219 () Bool)

(assert (=> bm!186525 m!3296219))

(assert (=> bm!186499 d!832421))

(declare-fun e!1821591 () Bool)

(declare-fun b!2878963 () Bool)

(declare-fun lt!1019268 () List!34532)

(assert (=> b!2878963 (= e!1821591 (or (not (= (v!34547 lt!1019210) Nil!34408)) (= lt!1019268 (t!233575 (v!34547 lt!1019209)))))))

(declare-fun b!2878961 () Bool)

(declare-fun e!1821590 () List!34532)

(assert (=> b!2878961 (= e!1821590 (Cons!34408 (h!39828 (t!233575 (v!34547 lt!1019209))) (++!8183 (t!233575 (t!233575 (v!34547 lt!1019209))) (v!34547 lt!1019210))))))

(declare-fun d!832423 () Bool)

(assert (=> d!832423 e!1821591))

(declare-fun res!1193407 () Bool)

(assert (=> d!832423 (=> (not res!1193407) (not e!1821591))))

(assert (=> d!832423 (= res!1193407 (= (content!4711 lt!1019268) ((_ map or) (content!4711 (t!233575 (v!34547 lt!1019209))) (content!4711 (v!34547 lt!1019210)))))))

(assert (=> d!832423 (= lt!1019268 e!1821590)))

(declare-fun c!467101 () Bool)

(assert (=> d!832423 (= c!467101 ((_ is Nil!34408) (t!233575 (v!34547 lt!1019209))))))

(assert (=> d!832423 (= (++!8183 (t!233575 (v!34547 lt!1019209)) (v!34547 lt!1019210)) lt!1019268)))

(declare-fun b!2878960 () Bool)

(assert (=> b!2878960 (= e!1821590 (v!34547 lt!1019210))))

(declare-fun b!2878962 () Bool)

(declare-fun res!1193406 () Bool)

(assert (=> b!2878962 (=> (not res!1193406) (not e!1821591))))

(assert (=> b!2878962 (= res!1193406 (= (size!26330 lt!1019268) (+ (size!26330 (t!233575 (v!34547 lt!1019209))) (size!26330 (v!34547 lt!1019210)))))))

(assert (= (and d!832423 c!467101) b!2878960))

(assert (= (and d!832423 (not c!467101)) b!2878961))

(assert (= (and d!832423 res!1193407) b!2878962))

(assert (= (and b!2878962 res!1193406) b!2878963))

(declare-fun m!3296221 () Bool)

(assert (=> b!2878961 m!3296221))

(declare-fun m!3296223 () Bool)

(assert (=> d!832423 m!3296223))

(declare-fun m!3296225 () Bool)

(assert (=> d!832423 m!3296225))

(assert (=> d!832423 m!3296063))

(declare-fun m!3296227 () Bool)

(assert (=> b!2878962 m!3296227))

(declare-fun m!3296229 () Bool)

(assert (=> b!2878962 m!3296229))

(assert (=> b!2878962 m!3296069))

(assert (=> b!2878784 d!832423))

(declare-fun d!832425 () Bool)

(declare-fun res!1193408 () Bool)

(declare-fun e!1821592 () Bool)

(assert (=> d!832425 (=> res!1193408 e!1821592)))

(assert (=> d!832425 (= res!1193408 ((_ is Nil!34409) (exprs!3207 lt!1019143)))))

(assert (=> d!832425 (= (forall!7091 (exprs!3207 lt!1019143) lambda!107405) e!1821592)))

(declare-fun b!2878964 () Bool)

(declare-fun e!1821593 () Bool)

(assert (=> b!2878964 (= e!1821592 e!1821593)))

(declare-fun res!1193409 () Bool)

(assert (=> b!2878964 (=> (not res!1193409) (not e!1821593))))

(assert (=> b!2878964 (= res!1193409 (dynLambda!14329 lambda!107405 (h!39829 (exprs!3207 lt!1019143))))))

(declare-fun b!2878965 () Bool)

(assert (=> b!2878965 (= e!1821593 (forall!7091 (t!233576 (exprs!3207 lt!1019143)) lambda!107405))))

(assert (= (and d!832425 (not res!1193408)) b!2878964))

(assert (= (and b!2878964 res!1193409) b!2878965))

(declare-fun b_lambda!86235 () Bool)

(assert (=> (not b_lambda!86235) (not b!2878964)))

(declare-fun m!3296231 () Bool)

(assert (=> b!2878964 m!3296231))

(declare-fun m!3296233 () Bool)

(assert (=> b!2878965 m!3296233))

(assert (=> d!832259 d!832425))

(declare-fun d!832427 () Bool)

(declare-fun c!467102 () Bool)

(assert (=> d!832427 (= c!467102 ((_ is EmptyExpr!8747) (ite c!467027 (regTwo!18007 (h!39829 (exprs!3207 lt!1019143))) (regTwo!18006 (h!39829 (exprs!3207 lt!1019143))))))))

(declare-fun e!1821598 () Option!6422)

(assert (=> d!832427 (= (getLanguageWitness!446 (ite c!467027 (regTwo!18007 (h!39829 (exprs!3207 lt!1019143))) (regTwo!18006 (h!39829 (exprs!3207 lt!1019143))))) e!1821598)))

(declare-fun b!2878966 () Bool)

(declare-fun e!1821596 () Option!6422)

(assert (=> b!2878966 (= e!1821596 None!6421)))

(declare-fun b!2878967 () Bool)

(declare-fun e!1821594 () Option!6422)

(declare-fun lt!1019269 () Option!6422)

(declare-fun lt!1019270 () Option!6422)

(assert (=> b!2878967 (= e!1821594 (Some!6421 (++!8183 (v!34547 lt!1019269) (v!34547 lt!1019270))))))

(declare-fun b!2878968 () Bool)

(declare-fun e!1821601 () Option!6422)

(declare-fun call!186531 () Option!6422)

(assert (=> b!2878968 (= e!1821601 call!186531)))

(declare-fun b!2878969 () Bool)

(assert (=> b!2878969 (= e!1821598 (Some!6421 Nil!34408))))

(declare-fun b!2878970 () Bool)

(assert (=> b!2878970 (= e!1821594 None!6421)))

(declare-fun b!2878971 () Bool)

(declare-fun e!1821600 () Option!6422)

(assert (=> b!2878971 (= e!1821600 e!1821601)))

(declare-fun lt!1019271 () Option!6422)

(declare-fun call!186532 () Option!6422)

(assert (=> b!2878971 (= lt!1019271 call!186532)))

(declare-fun c!467109 () Bool)

(assert (=> b!2878971 (= c!467109 ((_ is Some!6421) lt!1019271))))

(declare-fun b!2878972 () Bool)

(assert (=> b!2878972 (= e!1821601 lt!1019271)))

(declare-fun c!467106 () Bool)

(declare-fun bm!186526 () Bool)

(assert (=> bm!186526 (= call!186531 (getLanguageWitness!446 (ite c!467106 (regTwo!18007 (ite c!467027 (regTwo!18007 (h!39829 (exprs!3207 lt!1019143))) (regTwo!18006 (h!39829 (exprs!3207 lt!1019143))))) (regTwo!18006 (ite c!467027 (regTwo!18007 (h!39829 (exprs!3207 lt!1019143))) (regTwo!18006 (h!39829 (exprs!3207 lt!1019143))))))))))

(declare-fun b!2878973 () Bool)

(declare-fun e!1821599 () Option!6422)

(declare-fun e!1821595 () Option!6422)

(assert (=> b!2878973 (= e!1821599 e!1821595)))

(declare-fun c!467103 () Bool)

(assert (=> b!2878973 (= c!467103 ((_ is Star!8747) (ite c!467027 (regTwo!18007 (h!39829 (exprs!3207 lt!1019143))) (regTwo!18006 (h!39829 (exprs!3207 lt!1019143))))))))

(declare-fun b!2878974 () Bool)

(declare-fun c!467108 () Bool)

(assert (=> b!2878974 (= c!467108 ((_ is Some!6421) lt!1019270))))

(assert (=> b!2878974 (= lt!1019270 call!186531)))

(assert (=> b!2878974 (= e!1821596 e!1821594)))

(declare-fun b!2878975 () Bool)

(declare-fun e!1821597 () Option!6422)

(assert (=> b!2878975 (= e!1821597 None!6421)))

(declare-fun bm!186527 () Bool)

(assert (=> bm!186527 (= call!186532 (getLanguageWitness!446 (ite c!467106 (regOne!18007 (ite c!467027 (regTwo!18007 (h!39829 (exprs!3207 lt!1019143))) (regTwo!18006 (h!39829 (exprs!3207 lt!1019143))))) (regOne!18006 (ite c!467027 (regTwo!18007 (h!39829 (exprs!3207 lt!1019143))) (regTwo!18006 (h!39829 (exprs!3207 lt!1019143))))))))))

(declare-fun b!2878976 () Bool)

(assert (=> b!2878976 (= e!1821595 (Some!6421 Nil!34408))))

(declare-fun b!2878977 () Bool)

(assert (=> b!2878977 (= e!1821600 e!1821596)))

(assert (=> b!2878977 (= lt!1019269 call!186532)))

(declare-fun c!467105 () Bool)

(assert (=> b!2878977 (= c!467105 ((_ is Some!6421) lt!1019269))))

(declare-fun b!2878978 () Bool)

(assert (=> b!2878978 (= e!1821598 e!1821597)))

(declare-fun c!467107 () Bool)

(assert (=> b!2878978 (= c!467107 ((_ is EmptyLang!8747) (ite c!467027 (regTwo!18007 (h!39829 (exprs!3207 lt!1019143))) (regTwo!18006 (h!39829 (exprs!3207 lt!1019143))))))))

(declare-fun b!2878979 () Bool)

(declare-fun c!467104 () Bool)

(assert (=> b!2878979 (= c!467104 ((_ is ElementMatch!8747) (ite c!467027 (regTwo!18007 (h!39829 (exprs!3207 lt!1019143))) (regTwo!18006 (h!39829 (exprs!3207 lt!1019143))))))))

(assert (=> b!2878979 (= e!1821597 e!1821599)))

(declare-fun b!2878980 () Bool)

(assert (=> b!2878980 (= c!467106 ((_ is Union!8747) (ite c!467027 (regTwo!18007 (h!39829 (exprs!3207 lt!1019143))) (regTwo!18006 (h!39829 (exprs!3207 lt!1019143))))))))

(assert (=> b!2878980 (= e!1821595 e!1821600)))

(declare-fun b!2878981 () Bool)

(assert (=> b!2878981 (= e!1821599 (Some!6421 (Cons!34408 (c!466810 (ite c!467027 (regTwo!18007 (h!39829 (exprs!3207 lt!1019143))) (regTwo!18006 (h!39829 (exprs!3207 lt!1019143))))) Nil!34408)))))

(assert (= (and d!832427 c!467102) b!2878969))

(assert (= (and d!832427 (not c!467102)) b!2878978))

(assert (= (and b!2878978 c!467107) b!2878975))

(assert (= (and b!2878978 (not c!467107)) b!2878979))

(assert (= (and b!2878979 c!467104) b!2878981))

(assert (= (and b!2878979 (not c!467104)) b!2878973))

(assert (= (and b!2878973 c!467103) b!2878976))

(assert (= (and b!2878973 (not c!467103)) b!2878980))

(assert (= (and b!2878980 c!467106) b!2878971))

(assert (= (and b!2878980 (not c!467106)) b!2878977))

(assert (= (and b!2878971 c!467109) b!2878972))

(assert (= (and b!2878971 (not c!467109)) b!2878968))

(assert (= (and b!2878977 c!467105) b!2878974))

(assert (= (and b!2878977 (not c!467105)) b!2878966))

(assert (= (and b!2878974 c!467108) b!2878967))

(assert (= (and b!2878974 (not c!467108)) b!2878970))

(assert (= (or b!2878968 b!2878974) bm!186526))

(assert (= (or b!2878971 b!2878977) bm!186527))

(declare-fun m!3296235 () Bool)

(assert (=> b!2878967 m!3296235))

(declare-fun m!3296237 () Bool)

(assert (=> bm!186526 m!3296237))

(declare-fun m!3296239 () Bool)

(assert (=> bm!186527 m!3296239))

(assert (=> bm!186491 d!832427))

(declare-fun d!832429 () Bool)

(declare-fun c!467110 () Bool)

(assert (=> d!832429 (= c!467110 (isEmpty!18737 (tail!4579 (tail!4579 (v!34547 lt!1019148)))))))

(declare-fun e!1821602 () Bool)

(assert (=> d!832429 (= (matchZipper!489 (derivationStepZipper!481 (derivationStepZipper!481 lt!1019145 (head!6354 (v!34547 lt!1019148))) (head!6354 (tail!4579 (v!34547 lt!1019148)))) (tail!4579 (tail!4579 (v!34547 lt!1019148)))) e!1821602)))

(declare-fun b!2878982 () Bool)

(assert (=> b!2878982 (= e!1821602 (nullableZipper!725 (derivationStepZipper!481 (derivationStepZipper!481 lt!1019145 (head!6354 (v!34547 lt!1019148))) (head!6354 (tail!4579 (v!34547 lt!1019148))))))))

(declare-fun b!2878983 () Bool)

(assert (=> b!2878983 (= e!1821602 (matchZipper!489 (derivationStepZipper!481 (derivationStepZipper!481 (derivationStepZipper!481 lt!1019145 (head!6354 (v!34547 lt!1019148))) (head!6354 (tail!4579 (v!34547 lt!1019148)))) (head!6354 (tail!4579 (tail!4579 (v!34547 lt!1019148))))) (tail!4579 (tail!4579 (tail!4579 (v!34547 lt!1019148))))))))

(assert (= (and d!832429 c!467110) b!2878982))

(assert (= (and d!832429 (not c!467110)) b!2878983))

(assert (=> d!832429 m!3295993))

(declare-fun m!3296241 () Bool)

(assert (=> d!832429 m!3296241))

(assert (=> b!2878982 m!3295991))

(declare-fun m!3296243 () Bool)

(assert (=> b!2878982 m!3296243))

(assert (=> b!2878983 m!3295993))

(declare-fun m!3296245 () Bool)

(assert (=> b!2878983 m!3296245))

(assert (=> b!2878983 m!3295991))

(assert (=> b!2878983 m!3296245))

(declare-fun m!3296247 () Bool)

(assert (=> b!2878983 m!3296247))

(assert (=> b!2878983 m!3295993))

(declare-fun m!3296249 () Bool)

(assert (=> b!2878983 m!3296249))

(assert (=> b!2878983 m!3296247))

(assert (=> b!2878983 m!3296249))

(declare-fun m!3296251 () Bool)

(assert (=> b!2878983 m!3296251))

(assert (=> b!2878720 d!832429))

(declare-fun bs!523105 () Bool)

(declare-fun d!832431 () Bool)

(assert (= bs!523105 (and d!832431 d!832315)))

(declare-fun lambda!107426 () Int)

(assert (=> bs!523105 (= (= (head!6354 (tail!4579 (v!34547 lt!1019148))) (head!6354 (v!34547 lt!1019148))) (= lambda!107426 lambda!107415))))

(declare-fun bs!523106 () Bool)

(assert (= bs!523106 (and d!832431 d!832355)))

(assert (=> bs!523106 (= (= (head!6354 (tail!4579 (v!34547 lt!1019148))) (head!6354 (get!10347 lt!1019148))) (= lambda!107426 lambda!107418))))

(declare-fun bs!523107 () Bool)

(assert (= bs!523107 (and d!832431 d!832375)))

(assert (=> bs!523107 (= (= (head!6354 (tail!4579 (v!34547 lt!1019148))) (head!6354 (v!34547 lt!1019141))) (= lambda!107426 lambda!107423))))

(declare-fun bs!523108 () Bool)

(assert (= bs!523108 (and d!832431 d!832391)))

(assert (=> bs!523108 (= (= (head!6354 (tail!4579 (v!34547 lt!1019148))) (head!6354 (tail!4579 (v!34547 lt!1019141)))) (= lambda!107426 lambda!107425))))

(assert (=> d!832431 true))

(assert (=> d!832431 (= (derivationStepZipper!481 (derivationStepZipper!481 lt!1019145 (head!6354 (v!34547 lt!1019148))) (head!6354 (tail!4579 (v!34547 lt!1019148)))) (flatMap!227 (derivationStepZipper!481 lt!1019145 (head!6354 (v!34547 lt!1019148))) lambda!107426))))

(declare-fun bs!523109 () Bool)

(assert (= bs!523109 d!832431))

(assert (=> bs!523109 m!3295573))

(declare-fun m!3296253 () Bool)

(assert (=> bs!523109 m!3296253))

(assert (=> b!2878720 d!832431))

(declare-fun d!832433 () Bool)

(assert (=> d!832433 (= (head!6354 (tail!4579 (v!34547 lt!1019148))) (h!39828 (tail!4579 (v!34547 lt!1019148))))))

(assert (=> b!2878720 d!832433))

(declare-fun d!832435 () Bool)

(assert (=> d!832435 (= (tail!4579 (tail!4579 (v!34547 lt!1019148))) (t!233575 (tail!4579 (v!34547 lt!1019148))))))

(assert (=> b!2878720 d!832435))

(assert (=> b!2878760 d!832393))

(declare-fun d!832437 () Bool)

(assert (=> d!832437 (= (head!6354 (tail!4579 (get!10347 lt!1019141))) (h!39828 (tail!4579 (get!10347 lt!1019141))))))

(assert (=> b!2878604 d!832437))

(declare-fun d!832439 () Bool)

(assert (=> d!832439 (= (isEmpty!18737 (tail!4579 (get!10347 lt!1019148))) ((_ is Nil!34408) (tail!4579 (get!10347 lt!1019148))))))

(assert (=> d!832353 d!832439))

(declare-fun d!832441 () Bool)

(assert (=> d!832441 (= (isEmpty!18737 (tail!4579 (tail!4579 (v!34547 lt!1019141)))) ((_ is Nil!34408) (tail!4579 (tail!4579 (v!34547 lt!1019141)))))))

(assert (=> b!2878758 d!832441))

(assert (=> b!2878758 d!832395))

(declare-fun d!832443 () Bool)

(declare-fun res!1193410 () Bool)

(declare-fun e!1821603 () Bool)

(assert (=> d!832443 (=> res!1193410 e!1821603)))

(assert (=> d!832443 (= res!1193410 ((_ is Nil!34409) (t!233576 (exprs!3207 lt!1019144))))))

(assert (=> d!832443 (= (forall!7091 (t!233576 (exprs!3207 lt!1019144)) lambda!107387) e!1821603)))

(declare-fun b!2878984 () Bool)

(declare-fun e!1821604 () Bool)

(assert (=> b!2878984 (= e!1821603 e!1821604)))

(declare-fun res!1193411 () Bool)

(assert (=> b!2878984 (=> (not res!1193411) (not e!1821604))))

(assert (=> b!2878984 (= res!1193411 (dynLambda!14329 lambda!107387 (h!39829 (t!233576 (exprs!3207 lt!1019144)))))))

(declare-fun b!2878985 () Bool)

(assert (=> b!2878985 (= e!1821604 (forall!7091 (t!233576 (t!233576 (exprs!3207 lt!1019144))) lambda!107387))))

(assert (= (and d!832443 (not res!1193410)) b!2878984))

(assert (= (and b!2878984 res!1193411) b!2878985))

(declare-fun b_lambda!86237 () Bool)

(assert (=> (not b_lambda!86237) (not b!2878984)))

(declare-fun m!3296255 () Bool)

(assert (=> b!2878984 m!3296255))

(declare-fun m!3296257 () Bool)

(assert (=> b!2878985 m!3296257))

(assert (=> b!2878782 d!832443))

(declare-fun d!832445 () Bool)

(declare-fun choose!17025 ((InoxSet Context!5414) Int) (InoxSet Context!5414))

(assert (=> d!832445 (= (flatMap!227 lt!1019145 lambda!107418) (choose!17025 lt!1019145 lambda!107418))))

(declare-fun bs!523110 () Bool)

(assert (= bs!523110 d!832445))

(declare-fun m!3296259 () Bool)

(assert (=> bs!523110 m!3296259))

(assert (=> d!832355 d!832445))

(declare-fun d!832447 () Bool)

(declare-fun res!1193412 () Bool)

(declare-fun e!1821605 () Bool)

(assert (=> d!832447 (=> res!1193412 e!1821605)))

(assert (=> d!832447 (= res!1193412 ((_ is Nil!34409) (t!233576 (exprs!3207 c!7184))))))

(assert (=> d!832447 (= (forall!7091 (t!233576 (exprs!3207 c!7184)) lambda!107394) e!1821605)))

(declare-fun b!2878986 () Bool)

(declare-fun e!1821606 () Bool)

(assert (=> b!2878986 (= e!1821605 e!1821606)))

(declare-fun res!1193413 () Bool)

(assert (=> b!2878986 (=> (not res!1193413) (not e!1821606))))

(assert (=> b!2878986 (= res!1193413 (dynLambda!14329 lambda!107394 (h!39829 (t!233576 (exprs!3207 c!7184)))))))

(declare-fun b!2878987 () Bool)

(assert (=> b!2878987 (= e!1821606 (forall!7091 (t!233576 (t!233576 (exprs!3207 c!7184))) lambda!107394))))

(assert (= (and d!832447 (not res!1193412)) b!2878986))

(assert (= (and b!2878986 res!1193413) b!2878987))

(declare-fun b_lambda!86239 () Bool)

(assert (=> (not b_lambda!86239) (not b!2878986)))

(declare-fun m!3296261 () Bool)

(assert (=> b!2878986 m!3296261))

(declare-fun m!3296263 () Bool)

(assert (=> b!2878987 m!3296263))

(assert (=> b!2878812 d!832447))

(declare-fun b!2878989 () Bool)

(declare-fun e!1821610 () Bool)

(declare-fun call!186534 () Bool)

(assert (=> b!2878989 (= e!1821610 call!186534)))

(declare-fun b!2878990 () Bool)

(declare-fun e!1821611 () Bool)

(declare-fun e!1821613 () Bool)

(assert (=> b!2878990 (= e!1821611 e!1821613)))

(declare-fun c!467112 () Bool)

(assert (=> b!2878990 (= c!467112 ((_ is Union!8747) (ite c!466961 (reg!9076 (h!39829 (exprs!3207 c!7184))) (ite c!466962 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))))))

(declare-fun b!2878991 () Bool)

(declare-fun e!1821607 () Bool)

(declare-fun e!1821609 () Bool)

(assert (=> b!2878991 (= e!1821607 e!1821609)))

(declare-fun res!1193418 () Bool)

(assert (=> b!2878991 (=> (not res!1193418) (not e!1821609))))

(assert (=> b!2878991 (= res!1193418 call!186534)))

(declare-fun b!2878992 () Bool)

(declare-fun res!1193417 () Bool)

(assert (=> b!2878992 (=> res!1193417 e!1821607)))

(assert (=> b!2878992 (= res!1193417 (not ((_ is Concat!14068) (ite c!466961 (reg!9076 (h!39829 (exprs!3207 c!7184))) (ite c!466962 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))

(assert (=> b!2878992 (= e!1821613 e!1821607)))

(declare-fun bm!186528 () Bool)

(assert (=> bm!186528 (= call!186534 (validRegex!3525 (ite c!467112 (regTwo!18007 (ite c!466961 (reg!9076 (h!39829 (exprs!3207 c!7184))) (ite c!466962 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))) (regOne!18006 (ite c!466961 (reg!9076 (h!39829 (exprs!3207 c!7184))) (ite c!466962 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))))))))

(declare-fun b!2878993 () Bool)

(declare-fun res!1193416 () Bool)

(assert (=> b!2878993 (=> (not res!1193416) (not e!1821610))))

(declare-fun call!186533 () Bool)

(assert (=> b!2878993 (= res!1193416 call!186533)))

(assert (=> b!2878993 (= e!1821613 e!1821610)))

(declare-fun b!2878988 () Bool)

(declare-fun e!1821612 () Bool)

(assert (=> b!2878988 (= e!1821612 e!1821611)))

(declare-fun c!467111 () Bool)

(assert (=> b!2878988 (= c!467111 ((_ is Star!8747) (ite c!466961 (reg!9076 (h!39829 (exprs!3207 c!7184))) (ite c!466962 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))))))

(declare-fun d!832449 () Bool)

(declare-fun res!1193414 () Bool)

(assert (=> d!832449 (=> res!1193414 e!1821612)))

(assert (=> d!832449 (= res!1193414 ((_ is ElementMatch!8747) (ite c!466961 (reg!9076 (h!39829 (exprs!3207 c!7184))) (ite c!466962 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))))))

(assert (=> d!832449 (= (validRegex!3525 (ite c!466961 (reg!9076 (h!39829 (exprs!3207 c!7184))) (ite c!466962 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))) e!1821612)))

(declare-fun bm!186529 () Bool)

(declare-fun call!186535 () Bool)

(assert (=> bm!186529 (= call!186533 call!186535)))

(declare-fun b!2878994 () Bool)

(assert (=> b!2878994 (= e!1821609 call!186533)))

(declare-fun b!2878995 () Bool)

(declare-fun e!1821608 () Bool)

(assert (=> b!2878995 (= e!1821608 call!186535)))

(declare-fun bm!186530 () Bool)

(assert (=> bm!186530 (= call!186535 (validRegex!3525 (ite c!467111 (reg!9076 (ite c!466961 (reg!9076 (h!39829 (exprs!3207 c!7184))) (ite c!466962 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))) (ite c!467112 (regOne!18007 (ite c!466961 (reg!9076 (h!39829 (exprs!3207 c!7184))) (ite c!466962 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))) (regTwo!18006 (ite c!466961 (reg!9076 (h!39829 (exprs!3207 c!7184))) (ite c!466962 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))))))

(declare-fun b!2878996 () Bool)

(assert (=> b!2878996 (= e!1821611 e!1821608)))

(declare-fun res!1193415 () Bool)

(assert (=> b!2878996 (= res!1193415 (not (nullable!2697 (reg!9076 (ite c!466961 (reg!9076 (h!39829 (exprs!3207 c!7184))) (ite c!466962 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))))))))

(assert (=> b!2878996 (=> (not res!1193415) (not e!1821608))))

(assert (= (and d!832449 (not res!1193414)) b!2878988))

(assert (= (and b!2878988 c!467111) b!2878996))

(assert (= (and b!2878988 (not c!467111)) b!2878990))

(assert (= (and b!2878996 res!1193415) b!2878995))

(assert (= (and b!2878990 c!467112) b!2878993))

(assert (= (and b!2878990 (not c!467112)) b!2878992))

(assert (= (and b!2878993 res!1193416) b!2878989))

(assert (= (and b!2878992 (not res!1193417)) b!2878991))

(assert (= (and b!2878991 res!1193418) b!2878994))

(assert (= (or b!2878989 b!2878991) bm!186528))

(assert (= (or b!2878993 b!2878994) bm!186529))

(assert (= (or b!2878995 bm!186529) bm!186530))

(declare-fun m!3296265 () Bool)

(assert (=> bm!186528 m!3296265))

(declare-fun m!3296267 () Bool)

(assert (=> bm!186530 m!3296267))

(declare-fun m!3296269 () Bool)

(assert (=> b!2878996 m!3296269))

(assert (=> bm!186467 d!832449))

(declare-fun d!832451 () Bool)

(assert (=> d!832451 (= (isEmpty!18737 (tail!4579 (tail!4579 (get!10347 lt!1019141)))) ((_ is Nil!34408) (tail!4579 (tail!4579 (get!10347 lt!1019141)))))))

(assert (=> b!2878602 d!832451))

(declare-fun d!832453 () Bool)

(assert (=> d!832453 (= (tail!4579 (tail!4579 (get!10347 lt!1019141))) (t!233575 (tail!4579 (get!10347 lt!1019141))))))

(assert (=> b!2878602 d!832453))

(declare-fun d!832455 () Bool)

(declare-fun c!467113 () Bool)

(assert (=> d!832455 (= c!467113 ((_ is EmptyExpr!8747) (h!39829 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))))))))

(declare-fun e!1821618 () Option!6422)

(assert (=> d!832455 (= (getLanguageWitness!446 (h!39829 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))))) e!1821618)))

(declare-fun b!2878997 () Bool)

(declare-fun e!1821616 () Option!6422)

(assert (=> b!2878997 (= e!1821616 None!6421)))

(declare-fun b!2878998 () Bool)

(declare-fun e!1821614 () Option!6422)

(declare-fun lt!1019272 () Option!6422)

(declare-fun lt!1019273 () Option!6422)

(assert (=> b!2878998 (= e!1821614 (Some!6421 (++!8183 (v!34547 lt!1019272) (v!34547 lt!1019273))))))

(declare-fun b!2878999 () Bool)

(declare-fun e!1821621 () Option!6422)

(declare-fun call!186536 () Option!6422)

(assert (=> b!2878999 (= e!1821621 call!186536)))

(declare-fun b!2879000 () Bool)

(assert (=> b!2879000 (= e!1821618 (Some!6421 Nil!34408))))

(declare-fun b!2879001 () Bool)

(assert (=> b!2879001 (= e!1821614 None!6421)))

(declare-fun b!2879002 () Bool)

(declare-fun e!1821620 () Option!6422)

(assert (=> b!2879002 (= e!1821620 e!1821621)))

(declare-fun lt!1019274 () Option!6422)

(declare-fun call!186537 () Option!6422)

(assert (=> b!2879002 (= lt!1019274 call!186537)))

(declare-fun c!467120 () Bool)

(assert (=> b!2879002 (= c!467120 ((_ is Some!6421) lt!1019274))))

(declare-fun b!2879003 () Bool)

(assert (=> b!2879003 (= e!1821621 lt!1019274)))

(declare-fun bm!186531 () Bool)

(declare-fun c!467117 () Bool)

(assert (=> bm!186531 (= call!186536 (getLanguageWitness!446 (ite c!467117 (regTwo!18007 (h!39829 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))))) (regTwo!18006 (h!39829 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))))))))))

(declare-fun b!2879004 () Bool)

(declare-fun e!1821619 () Option!6422)

(declare-fun e!1821615 () Option!6422)

(assert (=> b!2879004 (= e!1821619 e!1821615)))

(declare-fun c!467114 () Bool)

(assert (=> b!2879004 (= c!467114 ((_ is Star!8747) (h!39829 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))))))))

(declare-fun b!2879005 () Bool)

(declare-fun c!467119 () Bool)

(assert (=> b!2879005 (= c!467119 ((_ is Some!6421) lt!1019273))))

(assert (=> b!2879005 (= lt!1019273 call!186536)))

(assert (=> b!2879005 (= e!1821616 e!1821614)))

(declare-fun b!2879006 () Bool)

(declare-fun e!1821617 () Option!6422)

(assert (=> b!2879006 (= e!1821617 None!6421)))

(declare-fun bm!186532 () Bool)

(assert (=> bm!186532 (= call!186537 (getLanguageWitness!446 (ite c!467117 (regOne!18007 (h!39829 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))))) (regOne!18006 (h!39829 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))))))))))

(declare-fun b!2879007 () Bool)

(assert (=> b!2879007 (= e!1821615 (Some!6421 Nil!34408))))

(declare-fun b!2879008 () Bool)

(assert (=> b!2879008 (= e!1821620 e!1821616)))

(assert (=> b!2879008 (= lt!1019272 call!186537)))

(declare-fun c!467116 () Bool)

(assert (=> b!2879008 (= c!467116 ((_ is Some!6421) lt!1019272))))

(declare-fun b!2879009 () Bool)

(assert (=> b!2879009 (= e!1821618 e!1821617)))

(declare-fun c!467118 () Bool)

(assert (=> b!2879009 (= c!467118 ((_ is EmptyLang!8747) (h!39829 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))))))))

(declare-fun b!2879010 () Bool)

(declare-fun c!467115 () Bool)

(assert (=> b!2879010 (= c!467115 ((_ is ElementMatch!8747) (h!39829 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))))))))

(assert (=> b!2879010 (= e!1821617 e!1821619)))

(declare-fun b!2879011 () Bool)

(assert (=> b!2879011 (= c!467117 ((_ is Union!8747) (h!39829 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))))))))

(assert (=> b!2879011 (= e!1821615 e!1821620)))

(declare-fun b!2879012 () Bool)

(assert (=> b!2879012 (= e!1821619 (Some!6421 (Cons!34408 (c!466810 (h!39829 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))))) Nil!34408)))))

(assert (= (and d!832455 c!467113) b!2879000))

(assert (= (and d!832455 (not c!467113)) b!2879009))

(assert (= (and b!2879009 c!467118) b!2879006))

(assert (= (and b!2879009 (not c!467118)) b!2879010))

(assert (= (and b!2879010 c!467115) b!2879012))

(assert (= (and b!2879010 (not c!467115)) b!2879004))

(assert (= (and b!2879004 c!467114) b!2879007))

(assert (= (and b!2879004 (not c!467114)) b!2879011))

(assert (= (and b!2879011 c!467117) b!2879002))

(assert (= (and b!2879011 (not c!467117)) b!2879008))

(assert (= (and b!2879002 c!467120) b!2879003))

(assert (= (and b!2879002 (not c!467120)) b!2878999))

(assert (= (and b!2879008 c!467116) b!2879005))

(assert (= (and b!2879008 (not c!467116)) b!2878997))

(assert (= (and b!2879005 c!467119) b!2878998))

(assert (= (and b!2879005 (not c!467119)) b!2879001))

(assert (= (or b!2878999 b!2879005) bm!186531))

(assert (= (or b!2879002 b!2879008) bm!186532))

(declare-fun m!3296271 () Bool)

(assert (=> b!2878998 m!3296271))

(declare-fun m!3296273 () Bool)

(assert (=> bm!186531 m!3296273))

(declare-fun m!3296275 () Bool)

(assert (=> bm!186532 m!3296275))

(assert (=> b!2878789 d!832455))

(declare-fun d!832457 () Bool)

(declare-fun c!467123 () Bool)

(assert (=> d!832457 (= c!467123 ((_ is Nil!34408) lt!1019248))))

(declare-fun e!1821624 () (InoxSet C!17676))

(assert (=> d!832457 (= (content!4711 lt!1019248) e!1821624)))

(declare-fun b!2879017 () Bool)

(assert (=> b!2879017 (= e!1821624 ((as const (Array C!17676 Bool)) false))))

(declare-fun b!2879018 () Bool)

(assert (=> b!2879018 (= e!1821624 ((_ map or) (store ((as const (Array C!17676 Bool)) false) (h!39828 lt!1019248) true) (content!4711 (t!233575 lt!1019248))))))

(assert (= (and d!832457 c!467123) b!2879017))

(assert (= (and d!832457 (not c!467123)) b!2879018))

(declare-fun m!3296277 () Bool)

(assert (=> b!2879018 m!3296277))

(declare-fun m!3296279 () Bool)

(assert (=> b!2879018 m!3296279))

(assert (=> d!832349 d!832457))

(declare-fun d!832459 () Bool)

(declare-fun c!467124 () Bool)

(assert (=> d!832459 (= c!467124 ((_ is Nil!34408) (v!34547 lt!1019209)))))

(declare-fun e!1821625 () (InoxSet C!17676))

(assert (=> d!832459 (= (content!4711 (v!34547 lt!1019209)) e!1821625)))

(declare-fun b!2879019 () Bool)

(assert (=> b!2879019 (= e!1821625 ((as const (Array C!17676 Bool)) false))))

(declare-fun b!2879020 () Bool)

(assert (=> b!2879020 (= e!1821625 ((_ map or) (store ((as const (Array C!17676 Bool)) false) (h!39828 (v!34547 lt!1019209)) true) (content!4711 (t!233575 (v!34547 lt!1019209)))))))

(assert (= (and d!832459 c!467124) b!2879019))

(assert (= (and d!832459 (not c!467124)) b!2879020))

(declare-fun m!3296281 () Bool)

(assert (=> b!2879020 m!3296281))

(assert (=> b!2879020 m!3296225))

(assert (=> d!832349 d!832459))

(declare-fun d!832461 () Bool)

(declare-fun c!467125 () Bool)

(assert (=> d!832461 (= c!467125 ((_ is Nil!34408) (v!34547 lt!1019210)))))

(declare-fun e!1821626 () (InoxSet C!17676))

(assert (=> d!832461 (= (content!4711 (v!34547 lt!1019210)) e!1821626)))

(declare-fun b!2879021 () Bool)

(assert (=> b!2879021 (= e!1821626 ((as const (Array C!17676 Bool)) false))))

(declare-fun b!2879022 () Bool)

(assert (=> b!2879022 (= e!1821626 ((_ map or) (store ((as const (Array C!17676 Bool)) false) (h!39828 (v!34547 lt!1019210)) true) (content!4711 (t!233575 (v!34547 lt!1019210)))))))

(assert (= (and d!832461 c!467125) b!2879021))

(assert (= (and d!832461 (not c!467125)) b!2879022))

(declare-fun m!3296283 () Bool)

(assert (=> b!2879022 m!3296283))

(declare-fun m!3296285 () Bool)

(assert (=> b!2879022 m!3296285))

(assert (=> d!832349 d!832461))

(declare-fun bs!523111 () Bool)

(declare-fun d!832463 () Bool)

(assert (= bs!523111 (and d!832463 d!832365)))

(declare-fun lambda!107427 () Int)

(assert (=> bs!523111 (= lambda!107427 lambda!107422)))

(declare-fun bs!523112 () Bool)

(assert (= bs!523112 (and d!832463 d!832377)))

(assert (=> bs!523112 (= lambda!107427 lambda!107424)))

(assert (=> d!832463 (= (nullableZipper!725 (derivationStepZipper!481 lt!1019145 (head!6354 (get!10347 lt!1019148)))) (exists!1184 (derivationStepZipper!481 lt!1019145 (head!6354 (get!10347 lt!1019148))) lambda!107427))))

(declare-fun bs!523113 () Bool)

(assert (= bs!523113 d!832463))

(assert (=> bs!523113 m!3295703))

(declare-fun m!3296287 () Bool)

(assert (=> bs!523113 m!3296287))

(assert (=> b!2878787 d!832463))

(declare-fun d!832465 () Bool)

(declare-fun lt!1019277 () Int)

(assert (=> d!832465 (>= lt!1019277 0)))

(declare-fun e!1821629 () Int)

(assert (=> d!832465 (= lt!1019277 e!1821629)))

(declare-fun c!467128 () Bool)

(assert (=> d!832465 (= c!467128 ((_ is Nil!34408) lt!1019242))))

(assert (=> d!832465 (= (size!26330 lt!1019242) lt!1019277)))

(declare-fun b!2879027 () Bool)

(assert (=> b!2879027 (= e!1821629 0)))

(declare-fun b!2879028 () Bool)

(assert (=> b!2879028 (= e!1821629 (+ 1 (size!26330 (t!233575 lt!1019242))))))

(assert (= (and d!832465 c!467128) b!2879027))

(assert (= (and d!832465 (not c!467128)) b!2879028))

(declare-fun m!3296289 () Bool)

(assert (=> b!2879028 m!3296289))

(assert (=> b!2878733 d!832465))

(declare-fun d!832467 () Bool)

(declare-fun lt!1019278 () Int)

(assert (=> d!832467 (>= lt!1019278 0)))

(declare-fun e!1821630 () Int)

(assert (=> d!832467 (= lt!1019278 e!1821630)))

(declare-fun c!467129 () Bool)

(assert (=> d!832467 (= c!467129 ((_ is Nil!34408) (v!34547 lt!1019201)))))

(assert (=> d!832467 (= (size!26330 (v!34547 lt!1019201)) lt!1019278)))

(declare-fun b!2879029 () Bool)

(assert (=> b!2879029 (= e!1821630 0)))

(declare-fun b!2879030 () Bool)

(assert (=> b!2879030 (= e!1821630 (+ 1 (size!26330 (t!233575 (v!34547 lt!1019201)))))))

(assert (= (and d!832467 c!467129) b!2879029))

(assert (= (and d!832467 (not c!467129)) b!2879030))

(declare-fun m!3296291 () Bool)

(assert (=> b!2879030 m!3296291))

(assert (=> b!2878733 d!832467))

(declare-fun d!832469 () Bool)

(declare-fun lt!1019279 () Int)

(assert (=> d!832469 (>= lt!1019279 0)))

(declare-fun e!1821631 () Int)

(assert (=> d!832469 (= lt!1019279 e!1821631)))

(declare-fun c!467130 () Bool)

(assert (=> d!832469 (= c!467130 ((_ is Nil!34408) (v!34547 lt!1019202)))))

(assert (=> d!832469 (= (size!26330 (v!34547 lt!1019202)) lt!1019279)))

(declare-fun b!2879031 () Bool)

(assert (=> b!2879031 (= e!1821631 0)))

(declare-fun b!2879032 () Bool)

(assert (=> b!2879032 (= e!1821631 (+ 1 (size!26330 (t!233575 (v!34547 lt!1019202)))))))

(assert (= (and d!832469 c!467130) b!2879031))

(assert (= (and d!832469 (not c!467130)) b!2879032))

(declare-fun m!3296293 () Bool)

(assert (=> b!2879032 m!3296293))

(assert (=> b!2878733 d!832469))

(declare-fun b!2879033 () Bool)

(declare-fun res!1193422 () Bool)

(declare-fun e!1821632 () Bool)

(assert (=> b!2879033 (=> res!1193422 e!1821632)))

(declare-fun e!1821636 () Bool)

(assert (=> b!2879033 (= res!1193422 e!1821636)))

(declare-fun res!1193420 () Bool)

(assert (=> b!2879033 (=> (not res!1193420) (not e!1821636))))

(declare-fun lt!1019280 () Bool)

(assert (=> b!2879033 (= res!1193420 lt!1019280)))

(declare-fun b!2879035 () Bool)

(declare-fun res!1193421 () Bool)

(assert (=> b!2879035 (=> (not res!1193421) (not e!1821636))))

(declare-fun call!186538 () Bool)

(assert (=> b!2879035 (= res!1193421 (not call!186538))))

(declare-fun bm!186533 () Bool)

(assert (=> bm!186533 (= call!186538 (isEmpty!18737 (tail!4579 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))))))

(declare-fun b!2879036 () Bool)

(declare-fun e!1821634 () Bool)

(assert (=> b!2879036 (= e!1821634 (nullable!2697 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2879037 () Bool)

(assert (=> b!2879037 (= e!1821634 (matchR!3747 (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))) (head!6354 (tail!4579 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))))) (tail!4579 (tail!4579 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2879038 () Bool)

(declare-fun e!1821637 () Bool)

(assert (=> b!2879038 (= e!1821637 (not lt!1019280))))

(declare-fun b!2879039 () Bool)

(declare-fun res!1193425 () Bool)

(assert (=> b!2879039 (=> res!1193425 e!1821632)))

(assert (=> b!2879039 (= res!1193425 (not ((_ is ElementMatch!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))))))))

(assert (=> b!2879039 (= e!1821637 e!1821632)))

(declare-fun b!2879040 () Bool)

(declare-fun res!1193426 () Bool)

(declare-fun e!1821638 () Bool)

(assert (=> b!2879040 (=> res!1193426 e!1821638)))

(assert (=> b!2879040 (= res!1193426 (not (isEmpty!18737 (tail!4579 (tail!4579 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))))))))

(declare-fun b!2879041 () Bool)

(declare-fun res!1193424 () Bool)

(assert (=> b!2879041 (=> (not res!1193424) (not e!1821636))))

(assert (=> b!2879041 (= res!1193424 (isEmpty!18737 (tail!4579 (tail!4579 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2879042 () Bool)

(assert (=> b!2879042 (= e!1821636 (= (head!6354 (tail!4579 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))) (c!466810 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))))))))

(declare-fun b!2879043 () Bool)

(assert (=> b!2879043 (= e!1821638 (not (= (head!6354 (tail!4579 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))) (c!466810 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))))))))))

(declare-fun b!2879044 () Bool)

(declare-fun e!1821635 () Bool)

(assert (=> b!2879044 (= e!1821635 e!1821638)))

(declare-fun res!1193419 () Bool)

(assert (=> b!2879044 (=> res!1193419 e!1821638)))

(assert (=> b!2879044 (= res!1193419 call!186538)))

(declare-fun b!2879034 () Bool)

(declare-fun e!1821633 () Bool)

(assert (=> b!2879034 (= e!1821633 (= lt!1019280 call!186538))))

(declare-fun d!832471 () Bool)

(assert (=> d!832471 e!1821633))

(declare-fun c!467131 () Bool)

(assert (=> d!832471 (= c!467131 ((_ is EmptyExpr!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))))))))

(assert (=> d!832471 (= lt!1019280 e!1821634)))

(declare-fun c!467133 () Bool)

(assert (=> d!832471 (= c!467133 (isEmpty!18737 (tail!4579 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))))))

(assert (=> d!832471 (validRegex!3525 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))))))

(assert (=> d!832471 (= (matchR!3747 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))) (tail!4579 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))) lt!1019280)))

(declare-fun b!2879045 () Bool)

(assert (=> b!2879045 (= e!1821632 e!1821635)))

(declare-fun res!1193423 () Bool)

(assert (=> b!2879045 (=> (not res!1193423) (not e!1821635))))

(assert (=> b!2879045 (= res!1193423 (not lt!1019280))))

(declare-fun b!2879046 () Bool)

(assert (=> b!2879046 (= e!1821633 e!1821637)))

(declare-fun c!467132 () Bool)

(assert (=> b!2879046 (= c!467132 ((_ is EmptyLang!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))))))))

(assert (= (and d!832471 c!467133) b!2879036))

(assert (= (and d!832471 (not c!467133)) b!2879037))

(assert (= (and d!832471 c!467131) b!2879034))

(assert (= (and d!832471 (not c!467131)) b!2879046))

(assert (= (and b!2879046 c!467132) b!2879038))

(assert (= (and b!2879046 (not c!467132)) b!2879039))

(assert (= (and b!2879039 (not res!1193425)) b!2879033))

(assert (= (and b!2879033 res!1193420) b!2879035))

(assert (= (and b!2879035 res!1193421) b!2879041))

(assert (= (and b!2879041 res!1193424) b!2879042))

(assert (= (and b!2879033 (not res!1193422)) b!2879045))

(assert (= (and b!2879045 res!1193423) b!2879044))

(assert (= (and b!2879044 (not res!1193419)) b!2879040))

(assert (= (and b!2879040 (not res!1193426)) b!2879043))

(assert (= (or b!2879034 b!2879035 b!2879044) bm!186533))

(assert (=> b!2879043 m!3295867))

(declare-fun m!3296295 () Bool)

(assert (=> b!2879043 m!3296295))

(assert (=> b!2879036 m!3295877))

(declare-fun m!3296297 () Bool)

(assert (=> b!2879036 m!3296297))

(assert (=> b!2879042 m!3295867))

(assert (=> b!2879042 m!3296295))

(assert (=> b!2879041 m!3295867))

(declare-fun m!3296299 () Bool)

(assert (=> b!2879041 m!3296299))

(assert (=> b!2879041 m!3296299))

(declare-fun m!3296301 () Bool)

(assert (=> b!2879041 m!3296301))

(assert (=> bm!186533 m!3295867))

(assert (=> bm!186533 m!3295869))

(assert (=> b!2879037 m!3295867))

(assert (=> b!2879037 m!3296295))

(assert (=> b!2879037 m!3295877))

(assert (=> b!2879037 m!3296295))

(declare-fun m!3296303 () Bool)

(assert (=> b!2879037 m!3296303))

(assert (=> b!2879037 m!3295867))

(assert (=> b!2879037 m!3296299))

(assert (=> b!2879037 m!3296303))

(assert (=> b!2879037 m!3296299))

(declare-fun m!3296305 () Bool)

(assert (=> b!2879037 m!3296305))

(assert (=> b!2879040 m!3295867))

(assert (=> b!2879040 m!3296299))

(assert (=> b!2879040 m!3296299))

(assert (=> b!2879040 m!3296301))

(assert (=> d!832471 m!3295867))

(assert (=> d!832471 m!3295869))

(assert (=> d!832471 m!3295877))

(declare-fun m!3296307 () Bool)

(assert (=> d!832471 m!3296307))

(assert (=> b!2878576 d!832471))

(declare-fun bm!186534 () Bool)

(declare-fun call!186541 () Regex!8747)

(declare-fun c!467135 () Bool)

(assert (=> bm!186534 (= call!186541 (derivativeStep!2330 (ite c!467135 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))) (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))))))

(declare-fun b!2879047 () Bool)

(declare-fun e!1821641 () Regex!8747)

(declare-fun call!186539 () Regex!8747)

(assert (=> b!2879047 (= e!1821641 (Union!8747 call!186539 call!186541))))

(declare-fun b!2879048 () Bool)

(declare-fun e!1821642 () Regex!8747)

(assert (=> b!2879048 (= e!1821642 EmptyLang!8747)))

(declare-fun d!832473 () Bool)

(declare-fun lt!1019281 () Regex!8747)

(assert (=> d!832473 (validRegex!3525 lt!1019281)))

(assert (=> d!832473 (= lt!1019281 e!1821642)))

(declare-fun c!467138 () Bool)

(assert (=> d!832473 (= c!467138 (or ((_ is EmptyExpr!8747) (h!39829 (exprs!3207 c!7184))) ((_ is EmptyLang!8747) (h!39829 (exprs!3207 c!7184)))))))

(assert (=> d!832473 (validRegex!3525 (h!39829 (exprs!3207 c!7184)))))

(assert (=> d!832473 (= (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))) lt!1019281)))

(declare-fun b!2879049 () Bool)

(declare-fun e!1821640 () Regex!8747)

(assert (=> b!2879049 (= e!1821641 e!1821640)))

(declare-fun c!467136 () Bool)

(assert (=> b!2879049 (= c!467136 ((_ is Star!8747) (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2879050 () Bool)

(declare-fun e!1821639 () Regex!8747)

(declare-fun call!186540 () Regex!8747)

(assert (=> b!2879050 (= e!1821639 (Union!8747 (Concat!14068 call!186540 (regTwo!18006 (h!39829 (exprs!3207 c!7184)))) EmptyLang!8747))))

(declare-fun b!2879051 () Bool)

(declare-fun e!1821643 () Regex!8747)

(assert (=> b!2879051 (= e!1821642 e!1821643)))

(declare-fun c!467137 () Bool)

(assert (=> b!2879051 (= c!467137 ((_ is ElementMatch!8747) (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2879052 () Bool)

(assert (=> b!2879052 (= e!1821643 (ite (= (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))) (c!466810 (h!39829 (exprs!3207 c!7184)))) EmptyExpr!8747 EmptyLang!8747))))

(declare-fun b!2879053 () Bool)

(declare-fun call!186542 () Regex!8747)

(assert (=> b!2879053 (= e!1821640 (Concat!14068 call!186542 (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2879054 () Bool)

(assert (=> b!2879054 (= e!1821639 (Union!8747 (Concat!14068 call!186540 (regTwo!18006 (h!39829 (exprs!3207 c!7184)))) call!186541))))

(declare-fun b!2879055 () Bool)

(assert (=> b!2879055 (= c!467135 ((_ is Union!8747) (h!39829 (exprs!3207 c!7184))))))

(assert (=> b!2879055 (= e!1821643 e!1821641)))

(declare-fun bm!186535 () Bool)

(assert (=> bm!186535 (= call!186539 (derivativeStep!2330 (ite c!467135 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467136 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (head!6354 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184)))))))))

(declare-fun bm!186536 () Bool)

(assert (=> bm!186536 (= call!186542 call!186539)))

(declare-fun bm!186537 () Bool)

(assert (=> bm!186537 (= call!186540 call!186542)))

(declare-fun b!2879056 () Bool)

(declare-fun c!467134 () Bool)

(assert (=> b!2879056 (= c!467134 (nullable!2697 (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))

(assert (=> b!2879056 (= e!1821640 e!1821639)))

(assert (= (and d!832473 c!467138) b!2879048))

(assert (= (and d!832473 (not c!467138)) b!2879051))

(assert (= (and b!2879051 c!467137) b!2879052))

(assert (= (and b!2879051 (not c!467137)) b!2879055))

(assert (= (and b!2879055 c!467135) b!2879047))

(assert (= (and b!2879055 (not c!467135)) b!2879049))

(assert (= (and b!2879049 c!467136) b!2879053))

(assert (= (and b!2879049 (not c!467136)) b!2879056))

(assert (= (and b!2879056 c!467134) b!2879054))

(assert (= (and b!2879056 (not c!467134)) b!2879050))

(assert (= (or b!2879054 b!2879050) bm!186537))

(assert (= (or b!2879053 bm!186537) bm!186536))

(assert (= (or b!2879047 bm!186536) bm!186535))

(assert (= (or b!2879047 b!2879054) bm!186534))

(assert (=> bm!186534 m!3295861))

(declare-fun m!3296309 () Bool)

(assert (=> bm!186534 m!3296309))

(declare-fun m!3296311 () Bool)

(assert (=> d!832473 m!3296311))

(assert (=> d!832473 m!3295593))

(assert (=> bm!186535 m!3295861))

(declare-fun m!3296313 () Bool)

(assert (=> bm!186535 m!3296313))

(assert (=> b!2879056 m!3295983))

(assert (=> b!2878576 d!832473))

(assert (=> b!2878576 d!832401))

(assert (=> b!2878576 d!832407))

(declare-fun call!186545 () Regex!8747)

(declare-fun bm!186538 () Bool)

(declare-fun c!467140 () Bool)

(assert (=> bm!186538 (= call!186545 (derivativeStep!2330 (ite c!467140 (regTwo!18007 (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))) (regTwo!18006 (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) (head!6354 (v!34547 lt!1019141))))))

(declare-fun b!2879057 () Bool)

(declare-fun e!1821646 () Regex!8747)

(declare-fun call!186543 () Regex!8747)

(assert (=> b!2879057 (= e!1821646 (Union!8747 call!186543 call!186545))))

(declare-fun b!2879058 () Bool)

(declare-fun e!1821647 () Regex!8747)

(assert (=> b!2879058 (= e!1821647 EmptyLang!8747)))

(declare-fun d!832475 () Bool)

(declare-fun lt!1019282 () Regex!8747)

(assert (=> d!832475 (validRegex!3525 lt!1019282)))

(assert (=> d!832475 (= lt!1019282 e!1821647)))

(declare-fun c!467143 () Bool)

(assert (=> d!832475 (= c!467143 (or ((_ is EmptyExpr!8747) (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))) ((_ is EmptyLang!8747) (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(assert (=> d!832475 (validRegex!3525 (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))

(assert (=> d!832475 (= (derivativeStep!2330 (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (head!6354 (v!34547 lt!1019141))) lt!1019282)))

(declare-fun b!2879059 () Bool)

(declare-fun e!1821645 () Regex!8747)

(assert (=> b!2879059 (= e!1821646 e!1821645)))

(declare-fun c!467141 () Bool)

(assert (=> b!2879059 (= c!467141 ((_ is Star!8747) (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))))

(declare-fun call!186544 () Regex!8747)

(declare-fun b!2879060 () Bool)

(declare-fun e!1821644 () Regex!8747)

(assert (=> b!2879060 (= e!1821644 (Union!8747 (Concat!14068 call!186544 (regTwo!18006 (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) EmptyLang!8747))))

(declare-fun b!2879061 () Bool)

(declare-fun e!1821648 () Regex!8747)

(assert (=> b!2879061 (= e!1821647 e!1821648)))

(declare-fun c!467142 () Bool)

(assert (=> b!2879061 (= c!467142 ((_ is ElementMatch!8747) (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))))

(declare-fun b!2879062 () Bool)

(assert (=> b!2879062 (= e!1821648 (ite (= (head!6354 (v!34547 lt!1019141)) (c!466810 (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) EmptyExpr!8747 EmptyLang!8747))))

(declare-fun b!2879063 () Bool)

(declare-fun call!186546 () Regex!8747)

(assert (=> b!2879063 (= e!1821645 (Concat!14068 call!186546 (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))))

(declare-fun b!2879064 () Bool)

(assert (=> b!2879064 (= e!1821644 (Union!8747 (Concat!14068 call!186544 (regTwo!18006 (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) call!186545))))

(declare-fun b!2879065 () Bool)

(assert (=> b!2879065 (= c!467140 ((_ is Union!8747) (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))))

(assert (=> b!2879065 (= e!1821648 e!1821646)))

(declare-fun bm!186539 () Bool)

(assert (=> bm!186539 (= call!186543 (derivativeStep!2330 (ite c!467140 (regOne!18007 (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))) (ite c!467141 (reg!9076 (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))) (regOne!18006 (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))) (head!6354 (v!34547 lt!1019141))))))

(declare-fun bm!186540 () Bool)

(assert (=> bm!186540 (= call!186546 call!186543)))

(declare-fun bm!186541 () Bool)

(assert (=> bm!186541 (= call!186544 call!186546)))

(declare-fun c!467139 () Bool)

(declare-fun b!2879066 () Bool)

(assert (=> b!2879066 (= c!467139 (nullable!2697 (regOne!18006 (ite c!467035 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467036 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(assert (=> b!2879066 (= e!1821645 e!1821644)))

(assert (= (and d!832475 c!467143) b!2879058))

(assert (= (and d!832475 (not c!467143)) b!2879061))

(assert (= (and b!2879061 c!467142) b!2879062))

(assert (= (and b!2879061 (not c!467142)) b!2879065))

(assert (= (and b!2879065 c!467140) b!2879057))

(assert (= (and b!2879065 (not c!467140)) b!2879059))

(assert (= (and b!2879059 c!467141) b!2879063))

(assert (= (and b!2879059 (not c!467141)) b!2879066))

(assert (= (and b!2879066 c!467139) b!2879064))

(assert (= (and b!2879066 (not c!467139)) b!2879060))

(assert (= (or b!2879064 b!2879060) bm!186541))

(assert (= (or b!2879063 bm!186541) bm!186540))

(assert (= (or b!2879057 bm!186540) bm!186539))

(assert (= (or b!2879057 b!2879064) bm!186538))

(assert (=> bm!186538 m!3295583))

(declare-fun m!3296315 () Bool)

(assert (=> bm!186538 m!3296315))

(declare-fun m!3296317 () Bool)

(assert (=> d!832475 m!3296317))

(declare-fun m!3296319 () Bool)

(assert (=> d!832475 m!3296319))

(assert (=> bm!186539 m!3295583))

(declare-fun m!3296321 () Bool)

(assert (=> bm!186539 m!3296321))

(declare-fun m!3296323 () Bool)

(assert (=> b!2879066 m!3296323))

(assert (=> bm!186495 d!832475))

(declare-fun bs!523114 () Bool)

(declare-fun d!832477 () Bool)

(assert (= bs!523114 (and d!832477 d!832365)))

(declare-fun lambda!107428 () Int)

(assert (=> bs!523114 (= lambda!107428 lambda!107422)))

(declare-fun bs!523115 () Bool)

(assert (= bs!523115 (and d!832477 d!832377)))

(assert (=> bs!523115 (= lambda!107428 lambda!107424)))

(declare-fun bs!523116 () Bool)

(assert (= bs!523116 (and d!832477 d!832463)))

(assert (=> bs!523116 (= lambda!107428 lambda!107427)))

(assert (=> d!832477 (= (nullableZipper!725 (store ((as const (Array Context!5414 Bool)) false) lt!1019143 true)) (exists!1184 (store ((as const (Array Context!5414 Bool)) false) lt!1019143 true) lambda!107428))))

(declare-fun bs!523117 () Bool)

(assert (= bs!523117 d!832477))

(assert (=> bs!523117 m!3295545))

(declare-fun m!3296325 () Bool)

(assert (=> bs!523117 m!3296325))

(assert (=> b!2878775 d!832477))

(declare-fun bs!523118 () Bool)

(declare-fun d!832479 () Bool)

(assert (= bs!523118 (and d!832479 d!832185)))

(declare-fun lambda!107429 () Int)

(assert (=> bs!523118 (not (= lambda!107429 lambda!107394))))

(declare-fun bs!523119 () Bool)

(assert (= bs!523119 (and d!832479 d!832259)))

(assert (=> bs!523119 (not (= lambda!107429 lambda!107405))))

(declare-fun bs!523120 () Bool)

(assert (= bs!523120 (and d!832479 d!832181)))

(assert (=> bs!523120 (= lambda!107429 lambda!107390)))

(declare-fun bs!523121 () Bool)

(assert (= bs!523121 (and d!832479 d!832183)))

(assert (=> bs!523121 (= lambda!107429 lambda!107393)))

(declare-fun bs!523122 () Bool)

(assert (= bs!523122 (and d!832479 d!832137)))

(assert (=> bs!523122 (not (= lambda!107429 lambda!107387))))

(declare-fun bs!523123 () Bool)

(assert (= bs!523123 (and d!832479 d!832343)))

(assert (=> bs!523123 (= lambda!107429 lambda!107416)))

(declare-fun bs!523124 () Bool)

(assert (= bs!523124 (and d!832479 d!832361)))

(assert (=> bs!523124 (= lambda!107429 lambda!107419)))

(declare-fun bs!523125 () Bool)

(assert (= bs!523125 (and d!832479 d!832351)))

(assert (=> bs!523125 (not (= lambda!107429 lambda!107417))))

(declare-fun b!2879067 () Bool)

(declare-fun e!1821649 () Option!6422)

(declare-fun e!1821650 () Option!6422)

(assert (=> b!2879067 (= e!1821649 e!1821650)))

(declare-fun lt!1019284 () Option!6422)

(assert (=> b!2879067 (= lt!1019284 (getLanguageWitness!446 (h!39829 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143))))))))))))

(declare-fun c!467146 () Bool)

(assert (=> b!2879067 (= c!467146 ((_ is Some!6421) lt!1019284))))

(declare-fun lt!1019283 () Option!6422)

(assert (=> d!832479 (= (isEmpty!18738 lt!1019283) (exists!1182 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143))))))) lambda!107429))))

(assert (=> d!832479 (= lt!1019283 e!1821649)))

(declare-fun c!467144 () Bool)

(assert (=> d!832479 (= c!467144 ((_ is Cons!34409) (exprs!3207 (Context!5415 (t!233576 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))))))))))

(assert (=> d!832479 (= (getLanguageWitness!445 (Context!5415 (t!233576 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143))))))) lt!1019283)))

(declare-fun b!2879068 () Bool)

(declare-fun e!1821651 () Option!6422)

(declare-fun lt!1019285 () Option!6422)

(assert (=> b!2879068 (= e!1821651 (Some!6421 (++!8183 (v!34547 lt!1019284) (v!34547 lt!1019285))))))

(declare-fun b!2879069 () Bool)

(assert (=> b!2879069 (= e!1821650 None!6421)))

(declare-fun b!2879070 () Bool)

(assert (=> b!2879070 (= e!1821649 (Some!6421 Nil!34408))))

(declare-fun b!2879071 () Bool)

(declare-fun c!467145 () Bool)

(assert (=> b!2879071 (= c!467145 ((_ is Some!6421) lt!1019285))))

(assert (=> b!2879071 (= lt!1019285 (getLanguageWitness!445 (Context!5415 (t!233576 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))))))))))))

(assert (=> b!2879071 (= e!1821650 e!1821651)))

(declare-fun b!2879072 () Bool)

(assert (=> b!2879072 (= e!1821651 None!6421)))

(assert (= (and d!832479 c!467144) b!2879067))

(assert (= (and d!832479 (not c!467144)) b!2879070))

(assert (= (and b!2879067 c!467146) b!2879071))

(assert (= (and b!2879067 (not c!467146)) b!2879069))

(assert (= (and b!2879071 c!467145) b!2879068))

(assert (= (and b!2879071 (not c!467145)) b!2879072))

(declare-fun m!3296327 () Bool)

(assert (=> b!2879067 m!3296327))

(declare-fun m!3296329 () Bool)

(assert (=> d!832479 m!3296329))

(declare-fun m!3296331 () Bool)

(assert (=> d!832479 m!3296331))

(declare-fun m!3296333 () Bool)

(assert (=> b!2879068 m!3296333))

(declare-fun m!3296335 () Bool)

(assert (=> b!2879071 m!3296335))

(assert (=> b!2878793 d!832479))

(declare-fun b!2879074 () Bool)

(declare-fun e!1821655 () Bool)

(declare-fun call!186548 () Bool)

(assert (=> b!2879074 (= e!1821655 call!186548)))

(declare-fun b!2879075 () Bool)

(declare-fun e!1821656 () Bool)

(declare-fun e!1821658 () Bool)

(assert (=> b!2879075 (= e!1821656 e!1821658)))

(declare-fun c!467148 () Bool)

(assert (=> b!2879075 (= c!467148 ((_ is Union!8747) (h!39829 (exprs!3207 lt!1019144))))))

(declare-fun b!2879076 () Bool)

(declare-fun e!1821652 () Bool)

(declare-fun e!1821654 () Bool)

(assert (=> b!2879076 (= e!1821652 e!1821654)))

(declare-fun res!1193431 () Bool)

(assert (=> b!2879076 (=> (not res!1193431) (not e!1821654))))

(assert (=> b!2879076 (= res!1193431 call!186548)))

(declare-fun b!2879077 () Bool)

(declare-fun res!1193430 () Bool)

(assert (=> b!2879077 (=> res!1193430 e!1821652)))

(assert (=> b!2879077 (= res!1193430 (not ((_ is Concat!14068) (h!39829 (exprs!3207 lt!1019144)))))))

(assert (=> b!2879077 (= e!1821658 e!1821652)))

(declare-fun bm!186542 () Bool)

(assert (=> bm!186542 (= call!186548 (validRegex!3525 (ite c!467148 (regTwo!18007 (h!39829 (exprs!3207 lt!1019144))) (regOne!18006 (h!39829 (exprs!3207 lt!1019144))))))))

(declare-fun b!2879078 () Bool)

(declare-fun res!1193429 () Bool)

(assert (=> b!2879078 (=> (not res!1193429) (not e!1821655))))

(declare-fun call!186547 () Bool)

(assert (=> b!2879078 (= res!1193429 call!186547)))

(assert (=> b!2879078 (= e!1821658 e!1821655)))

(declare-fun b!2879073 () Bool)

(declare-fun e!1821657 () Bool)

(assert (=> b!2879073 (= e!1821657 e!1821656)))

(declare-fun c!467147 () Bool)

(assert (=> b!2879073 (= c!467147 ((_ is Star!8747) (h!39829 (exprs!3207 lt!1019144))))))

(declare-fun d!832481 () Bool)

(declare-fun res!1193427 () Bool)

(assert (=> d!832481 (=> res!1193427 e!1821657)))

(assert (=> d!832481 (= res!1193427 ((_ is ElementMatch!8747) (h!39829 (exprs!3207 lt!1019144))))))

(assert (=> d!832481 (= (validRegex!3525 (h!39829 (exprs!3207 lt!1019144))) e!1821657)))

(declare-fun bm!186543 () Bool)

(declare-fun call!186549 () Bool)

(assert (=> bm!186543 (= call!186547 call!186549)))

(declare-fun b!2879079 () Bool)

(assert (=> b!2879079 (= e!1821654 call!186547)))

(declare-fun b!2879080 () Bool)

(declare-fun e!1821653 () Bool)

(assert (=> b!2879080 (= e!1821653 call!186549)))

(declare-fun bm!186544 () Bool)

(assert (=> bm!186544 (= call!186549 (validRegex!3525 (ite c!467147 (reg!9076 (h!39829 (exprs!3207 lt!1019144))) (ite c!467148 (regOne!18007 (h!39829 (exprs!3207 lt!1019144))) (regTwo!18006 (h!39829 (exprs!3207 lt!1019144)))))))))

(declare-fun b!2879081 () Bool)

(assert (=> b!2879081 (= e!1821656 e!1821653)))

(declare-fun res!1193428 () Bool)

(assert (=> b!2879081 (= res!1193428 (not (nullable!2697 (reg!9076 (h!39829 (exprs!3207 lt!1019144))))))))

(assert (=> b!2879081 (=> (not res!1193428) (not e!1821653))))

(assert (= (and d!832481 (not res!1193427)) b!2879073))

(assert (= (and b!2879073 c!467147) b!2879081))

(assert (= (and b!2879073 (not c!467147)) b!2879075))

(assert (= (and b!2879081 res!1193428) b!2879080))

(assert (= (and b!2879075 c!467148) b!2879078))

(assert (= (and b!2879075 (not c!467148)) b!2879077))

(assert (= (and b!2879078 res!1193429) b!2879074))

(assert (= (and b!2879077 (not res!1193430)) b!2879076))

(assert (= (and b!2879076 res!1193431) b!2879079))

(assert (= (or b!2879074 b!2879076) bm!186542))

(assert (= (or b!2879078 b!2879079) bm!186543))

(assert (= (or b!2879080 bm!186543) bm!186544))

(declare-fun m!3296337 () Bool)

(assert (=> bm!186542 m!3296337))

(declare-fun m!3296339 () Bool)

(assert (=> bm!186544 m!3296339))

(declare-fun m!3296341 () Bool)

(assert (=> b!2879081 m!3296341))

(assert (=> bs!523099 d!832481))

(declare-fun d!832483 () Bool)

(assert (=> d!832483 (= (isEmpty!18737 (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))) ((_ is Nil!34408) (get!10347 (getLanguageWitness!446 (h!39829 (exprs!3207 c!7184))))))))

(assert (=> bm!186468 d!832483))

(declare-fun lt!1019286 () List!34532)

(declare-fun b!2879085 () Bool)

(declare-fun e!1821660 () Bool)

(assert (=> b!2879085 (= e!1821660 (or (not (= (v!34547 lt!1019253) Nil!34408)) (= lt!1019286 (v!34547 lt!1019252))))))

(declare-fun b!2879083 () Bool)

(declare-fun e!1821659 () List!34532)

(assert (=> b!2879083 (= e!1821659 (Cons!34408 (h!39828 (v!34547 lt!1019252)) (++!8183 (t!233575 (v!34547 lt!1019252)) (v!34547 lt!1019253))))))

(declare-fun d!832485 () Bool)

(assert (=> d!832485 e!1821660))

(declare-fun res!1193433 () Bool)

(assert (=> d!832485 (=> (not res!1193433) (not e!1821660))))

(assert (=> d!832485 (= res!1193433 (= (content!4711 lt!1019286) ((_ map or) (content!4711 (v!34547 lt!1019252)) (content!4711 (v!34547 lt!1019253)))))))

(assert (=> d!832485 (= lt!1019286 e!1821659)))

(declare-fun c!467149 () Bool)

(assert (=> d!832485 (= c!467149 ((_ is Nil!34408) (v!34547 lt!1019252)))))

(assert (=> d!832485 (= (++!8183 (v!34547 lt!1019252) (v!34547 lt!1019253)) lt!1019286)))

(declare-fun b!2879082 () Bool)

(assert (=> b!2879082 (= e!1821659 (v!34547 lt!1019253))))

(declare-fun b!2879084 () Bool)

(declare-fun res!1193432 () Bool)

(assert (=> b!2879084 (=> (not res!1193432) (not e!1821660))))

(assert (=> b!2879084 (= res!1193432 (= (size!26330 lt!1019286) (+ (size!26330 (v!34547 lt!1019252)) (size!26330 (v!34547 lt!1019253)))))))

(assert (= (and d!832485 c!467149) b!2879082))

(assert (= (and d!832485 (not c!467149)) b!2879083))

(assert (= (and d!832485 res!1193433) b!2879084))

(assert (= (and b!2879084 res!1193432) b!2879085))

(declare-fun m!3296343 () Bool)

(assert (=> b!2879083 m!3296343))

(declare-fun m!3296345 () Bool)

(assert (=> d!832485 m!3296345))

(declare-fun m!3296347 () Bool)

(assert (=> d!832485 m!3296347))

(declare-fun m!3296349 () Bool)

(assert (=> d!832485 m!3296349))

(declare-fun m!3296351 () Bool)

(assert (=> b!2879084 m!3296351))

(declare-fun m!3296353 () Bool)

(assert (=> b!2879084 m!3296353))

(declare-fun m!3296355 () Bool)

(assert (=> b!2879084 m!3296355))

(assert (=> b!2878796 d!832485))

(assert (=> d!832331 d!832325))

(declare-fun b!2879087 () Bool)

(declare-fun e!1821664 () Bool)

(declare-fun call!186551 () Bool)

(assert (=> b!2879087 (= e!1821664 call!186551)))

(declare-fun b!2879088 () Bool)

(declare-fun e!1821665 () Bool)

(declare-fun e!1821667 () Bool)

(assert (=> b!2879088 (= e!1821665 e!1821667)))

(declare-fun c!467151 () Bool)

(assert (=> b!2879088 (= c!467151 ((_ is Union!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))))))

(declare-fun b!2879089 () Bool)

(declare-fun e!1821661 () Bool)

(declare-fun e!1821663 () Bool)

(assert (=> b!2879089 (= e!1821661 e!1821663)))

(declare-fun res!1193438 () Bool)

(assert (=> b!2879089 (=> (not res!1193438) (not e!1821663))))

(assert (=> b!2879089 (= res!1193438 call!186551)))

(declare-fun b!2879090 () Bool)

(declare-fun res!1193437 () Bool)

(assert (=> b!2879090 (=> res!1193437 e!1821661)))

(assert (=> b!2879090 (= res!1193437 (not ((_ is Concat!14068) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))))))))

(assert (=> b!2879090 (= e!1821667 e!1821661)))

(declare-fun bm!186545 () Bool)

(assert (=> bm!186545 (= call!186551 (validRegex!3525 (ite c!467151 (regTwo!18007 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))) (regOne!18006 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))))))))

(declare-fun b!2879091 () Bool)

(declare-fun res!1193436 () Bool)

(assert (=> b!2879091 (=> (not res!1193436) (not e!1821664))))

(declare-fun call!186550 () Bool)

(assert (=> b!2879091 (= res!1193436 call!186550)))

(assert (=> b!2879091 (= e!1821667 e!1821664)))

(declare-fun b!2879086 () Bool)

(declare-fun e!1821666 () Bool)

(assert (=> b!2879086 (= e!1821666 e!1821665)))

(declare-fun c!467150 () Bool)

(assert (=> b!2879086 (= c!467150 ((_ is Star!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))))))

(declare-fun d!832487 () Bool)

(declare-fun res!1193434 () Bool)

(assert (=> d!832487 (=> res!1193434 e!1821666)))

(assert (=> d!832487 (= res!1193434 ((_ is ElementMatch!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))))))

(assert (=> d!832487 (= (validRegex!3525 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))) e!1821666)))

(declare-fun bm!186546 () Bool)

(declare-fun call!186552 () Bool)

(assert (=> bm!186546 (= call!186550 call!186552)))

(declare-fun b!2879092 () Bool)

(assert (=> b!2879092 (= e!1821663 call!186550)))

(declare-fun b!2879093 () Bool)

(declare-fun e!1821662 () Bool)

(assert (=> b!2879093 (= e!1821662 call!186552)))

(declare-fun bm!186547 () Bool)

(assert (=> bm!186547 (= call!186552 (validRegex!3525 (ite c!467150 (reg!9076 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))) (ite c!467151 (regOne!18007 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))) (regTwo!18006 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141))))))))))

(declare-fun b!2879094 () Bool)

(assert (=> b!2879094 (= e!1821665 e!1821662)))

(declare-fun res!1193435 () Bool)

(assert (=> b!2879094 (= res!1193435 (not (nullable!2697 (reg!9076 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))))))))

(assert (=> b!2879094 (=> (not res!1193435) (not e!1821662))))

(assert (= (and d!832487 (not res!1193434)) b!2879086))

(assert (= (and b!2879086 c!467150) b!2879094))

(assert (= (and b!2879086 (not c!467150)) b!2879088))

(assert (= (and b!2879094 res!1193435) b!2879093))

(assert (= (and b!2879088 c!467151) b!2879091))

(assert (= (and b!2879088 (not c!467151)) b!2879090))

(assert (= (and b!2879091 res!1193436) b!2879087))

(assert (= (and b!2879090 (not res!1193437)) b!2879089))

(assert (= (and b!2879089 res!1193438) b!2879092))

(assert (= (or b!2879087 b!2879089) bm!186545))

(assert (= (or b!2879091 b!2879092) bm!186546))

(assert (= (or b!2879093 bm!186546) bm!186547))

(declare-fun m!3296357 () Bool)

(assert (=> bm!186545 m!3296357))

(declare-fun m!3296359 () Bool)

(assert (=> bm!186547 m!3296359))

(declare-fun m!3296361 () Bool)

(assert (=> b!2879094 m!3296361))

(assert (=> d!832331 d!832487))

(declare-fun d!832489 () Bool)

(declare-fun res!1193439 () Bool)

(declare-fun e!1821668 () Bool)

(assert (=> d!832489 (=> res!1193439 e!1821668)))

(assert (=> d!832489 (= res!1193439 ((_ is Nil!34409) (exprs!3207 c!7184)))))

(assert (=> d!832489 (= (forall!7091 (exprs!3207 c!7184) lambda!107417) e!1821668)))

(declare-fun b!2879095 () Bool)

(declare-fun e!1821669 () Bool)

(assert (=> b!2879095 (= e!1821668 e!1821669)))

(declare-fun res!1193440 () Bool)

(assert (=> b!2879095 (=> (not res!1193440) (not e!1821669))))

(assert (=> b!2879095 (= res!1193440 (dynLambda!14329 lambda!107417 (h!39829 (exprs!3207 c!7184))))))

(declare-fun b!2879096 () Bool)

(assert (=> b!2879096 (= e!1821669 (forall!7091 (t!233576 (exprs!3207 c!7184)) lambda!107417))))

(assert (= (and d!832489 (not res!1193439)) b!2879095))

(assert (= (and b!2879095 res!1193440) b!2879096))

(declare-fun b_lambda!86241 () Bool)

(assert (=> (not b_lambda!86241) (not b!2879095)))

(declare-fun m!3296363 () Bool)

(assert (=> b!2879095 m!3296363))

(declare-fun m!3296365 () Bool)

(assert (=> b!2879096 m!3296365))

(assert (=> d!832351 d!832489))

(assert (=> b!2878581 d!832401))

(declare-fun bs!523126 () Bool)

(declare-fun d!832491 () Bool)

(assert (= bs!523126 (and d!832491 d!832365)))

(declare-fun lambda!107430 () Int)

(assert (=> bs!523126 (= lambda!107430 lambda!107422)))

(declare-fun bs!523127 () Bool)

(assert (= bs!523127 (and d!832491 d!832377)))

(assert (=> bs!523127 (= lambda!107430 lambda!107424)))

(declare-fun bs!523128 () Bool)

(assert (= bs!523128 (and d!832491 d!832463)))

(assert (=> bs!523128 (= lambda!107430 lambda!107427)))

(declare-fun bs!523129 () Bool)

(assert (= bs!523129 (and d!832491 d!832477)))

(assert (=> bs!523129 (= lambda!107430 lambda!107428)))

(assert (=> d!832491 (= (nullableZipper!725 (derivationStepZipper!481 lt!1019147 (head!6354 (v!34547 lt!1019141)))) (exists!1184 (derivationStepZipper!481 lt!1019147 (head!6354 (v!34547 lt!1019141))) lambda!107430))))

(declare-fun bs!523130 () Bool)

(assert (= bs!523130 d!832491))

(assert (=> bs!523130 m!3295585))

(declare-fun m!3296367 () Bool)

(assert (=> bs!523130 m!3296367))

(assert (=> b!2878813 d!832491))

(declare-fun d!832493 () Bool)

(assert (=> d!832493 (= (isEmpty!18738 lt!1019249) (not ((_ is Some!6421) lt!1019249)))))

(assert (=> d!832361 d!832493))

(declare-fun bs!523131 () Bool)

(declare-fun d!832495 () Bool)

(assert (= bs!523131 (and d!832495 d!832185)))

(declare-fun lambda!107431 () Int)

(assert (=> bs!523131 (not (= lambda!107431 lambda!107394))))

(declare-fun bs!523132 () Bool)

(assert (= bs!523132 (and d!832495 d!832259)))

(assert (=> bs!523132 (= (= lambda!107419 lambda!107390) (= lambda!107431 lambda!107405))))

(declare-fun bs!523133 () Bool)

(assert (= bs!523133 (and d!832495 d!832181)))

(assert (=> bs!523133 (not (= lambda!107431 lambda!107390))))

(declare-fun bs!523134 () Bool)

(assert (= bs!523134 (and d!832495 d!832183)))

(assert (=> bs!523134 (not (= lambda!107431 lambda!107393))))

(declare-fun bs!523135 () Bool)

(assert (= bs!523135 (and d!832495 d!832137)))

(assert (=> bs!523135 (not (= lambda!107431 lambda!107387))))

(declare-fun bs!523136 () Bool)

(assert (= bs!523136 (and d!832495 d!832343)))

(assert (=> bs!523136 (not (= lambda!107431 lambda!107416))))

(declare-fun bs!523137 () Bool)

(assert (= bs!523137 (and d!832495 d!832361)))

(assert (=> bs!523137 (not (= lambda!107431 lambda!107419))))

(declare-fun bs!523138 () Bool)

(assert (= bs!523138 (and d!832495 d!832479)))

(assert (=> bs!523138 (not (= lambda!107431 lambda!107429))))

(declare-fun bs!523139 () Bool)

(assert (= bs!523139 (and d!832495 d!832351)))

(assert (=> bs!523139 (= (= lambda!107419 lambda!107393) (= lambda!107431 lambda!107417))))

(assert (=> d!832495 true))

(assert (=> d!832495 (< (dynLambda!14327 order!18145 lambda!107419) (dynLambda!14327 order!18145 lambda!107431))))

(assert (=> d!832495 (= (exists!1182 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))) lambda!107419) (not (forall!7091 (exprs!3207 (Context!5415 (t!233576 (exprs!3207 lt!1019143)))) lambda!107431)))))

(declare-fun bs!523140 () Bool)

(assert (= bs!523140 d!832495))

(declare-fun m!3296369 () Bool)

(assert (=> bs!523140 m!3296369))

(assert (=> d!832361 d!832495))

(assert (=> b!2878579 d!832405))

(assert (=> b!2878579 d!832407))

(declare-fun bm!186548 () Bool)

(declare-fun c!467153 () Bool)

(declare-fun call!186555 () Regex!8747)

(assert (=> bm!186548 (= call!186555 (derivativeStep!2330 (ite c!467153 (regTwo!18007 (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))) (regTwo!18006 (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) (head!6354 (get!10347 lt!1019141))))))

(declare-fun b!2879097 () Bool)

(declare-fun e!1821672 () Regex!8747)

(declare-fun call!186553 () Regex!8747)

(assert (=> b!2879097 (= e!1821672 (Union!8747 call!186553 call!186555))))

(declare-fun b!2879098 () Bool)

(declare-fun e!1821673 () Regex!8747)

(assert (=> b!2879098 (= e!1821673 EmptyLang!8747)))

(declare-fun d!832497 () Bool)

(declare-fun lt!1019287 () Regex!8747)

(assert (=> d!832497 (validRegex!3525 lt!1019287)))

(assert (=> d!832497 (= lt!1019287 e!1821673)))

(declare-fun c!467156 () Bool)

(assert (=> d!832497 (= c!467156 (or ((_ is EmptyExpr!8747) (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))) ((_ is EmptyLang!8747) (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(assert (=> d!832497 (validRegex!3525 (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))

(assert (=> d!832497 (= (derivativeStep!2330 (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (head!6354 (get!10347 lt!1019141))) lt!1019287)))

(declare-fun b!2879099 () Bool)

(declare-fun e!1821671 () Regex!8747)

(assert (=> b!2879099 (= e!1821672 e!1821671)))

(declare-fun c!467154 () Bool)

(assert (=> b!2879099 (= c!467154 ((_ is Star!8747) (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))))

(declare-fun b!2879100 () Bool)

(declare-fun call!186554 () Regex!8747)

(declare-fun e!1821670 () Regex!8747)

(assert (=> b!2879100 (= e!1821670 (Union!8747 (Concat!14068 call!186554 (regTwo!18006 (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) EmptyLang!8747))))

(declare-fun b!2879101 () Bool)

(declare-fun e!1821674 () Regex!8747)

(assert (=> b!2879101 (= e!1821673 e!1821674)))

(declare-fun c!467155 () Bool)

(assert (=> b!2879101 (= c!467155 ((_ is ElementMatch!8747) (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))))

(declare-fun b!2879102 () Bool)

(assert (=> b!2879102 (= e!1821674 (ite (= (head!6354 (get!10347 lt!1019141)) (c!466810 (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) EmptyExpr!8747 EmptyLang!8747))))

(declare-fun call!186556 () Regex!8747)

(declare-fun b!2879103 () Bool)

(assert (=> b!2879103 (= e!1821671 (Concat!14068 call!186556 (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))))

(declare-fun b!2879104 () Bool)

(assert (=> b!2879104 (= e!1821670 (Union!8747 (Concat!14068 call!186554 (regTwo!18006 (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) call!186555))))

(declare-fun b!2879105 () Bool)

(assert (=> b!2879105 (= c!467153 ((_ is Union!8747) (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))))

(assert (=> b!2879105 (= e!1821674 e!1821672)))

(declare-fun bm!186549 () Bool)

(assert (=> bm!186549 (= call!186553 (derivativeStep!2330 (ite c!467153 (regOne!18007 (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))) (ite c!467154 (reg!9076 (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))) (regOne!18006 (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))) (head!6354 (get!10347 lt!1019141))))))

(declare-fun bm!186550 () Bool)

(assert (=> bm!186550 (= call!186556 call!186553)))

(declare-fun bm!186551 () Bool)

(assert (=> bm!186551 (= call!186554 call!186556)))

(declare-fun b!2879106 () Bool)

(declare-fun c!467152 () Bool)

(assert (=> b!2879106 (= c!467152 (nullable!2697 (regOne!18006 (ite c!467013 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (ite c!467014 (reg!9076 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(assert (=> b!2879106 (= e!1821671 e!1821670)))

(assert (= (and d!832497 c!467156) b!2879098))

(assert (= (and d!832497 (not c!467156)) b!2879101))

(assert (= (and b!2879101 c!467155) b!2879102))

(assert (= (and b!2879101 (not c!467155)) b!2879105))

(assert (= (and b!2879105 c!467153) b!2879097))

(assert (= (and b!2879105 (not c!467153)) b!2879099))

(assert (= (and b!2879099 c!467154) b!2879103))

(assert (= (and b!2879099 (not c!467154)) b!2879106))

(assert (= (and b!2879106 c!467152) b!2879104))

(assert (= (and b!2879106 (not c!467152)) b!2879100))

(assert (= (or b!2879104 b!2879100) bm!186551))

(assert (= (or b!2879103 bm!186551) bm!186550))

(assert (= (or b!2879097 bm!186550) bm!186549))

(assert (= (or b!2879097 b!2879104) bm!186548))

(assert (=> bm!186548 m!3295715))

(declare-fun m!3296371 () Bool)

(assert (=> bm!186548 m!3296371))

(declare-fun m!3296373 () Bool)

(assert (=> d!832497 m!3296373))

(declare-fun m!3296375 () Bool)

(assert (=> d!832497 m!3296375))

(assert (=> bm!186549 m!3295715))

(declare-fun m!3296377 () Bool)

(assert (=> bm!186549 m!3296377))

(declare-fun m!3296379 () Bool)

(assert (=> b!2879106 m!3296379))

(assert (=> bm!186488 d!832497))

(declare-fun bs!523141 () Bool)

(declare-fun d!832499 () Bool)

(assert (= bs!523141 (and d!832499 d!832185)))

(declare-fun lambda!107432 () Int)

(assert (=> bs!523141 (not (= lambda!107432 lambda!107394))))

(declare-fun bs!523142 () Bool)

(assert (= bs!523142 (and d!832499 d!832259)))

(assert (=> bs!523142 (= (= lambda!107416 lambda!107390) (= lambda!107432 lambda!107405))))

(declare-fun bs!523143 () Bool)

(assert (= bs!523143 (and d!832499 d!832181)))

(assert (=> bs!523143 (not (= lambda!107432 lambda!107390))))

(declare-fun bs!523144 () Bool)

(assert (= bs!523144 (and d!832499 d!832183)))

(assert (=> bs!523144 (not (= lambda!107432 lambda!107393))))

(declare-fun bs!523145 () Bool)

(assert (= bs!523145 (and d!832499 d!832137)))

(assert (=> bs!523145 (not (= lambda!107432 lambda!107387))))

(declare-fun bs!523146 () Bool)

(assert (= bs!523146 (and d!832499 d!832495)))

(assert (=> bs!523146 (= (= lambda!107416 lambda!107419) (= lambda!107432 lambda!107431))))

(declare-fun bs!523147 () Bool)

(assert (= bs!523147 (and d!832499 d!832343)))

(assert (=> bs!523147 (not (= lambda!107432 lambda!107416))))

(declare-fun bs!523148 () Bool)

(assert (= bs!523148 (and d!832499 d!832361)))

(assert (=> bs!523148 (not (= lambda!107432 lambda!107419))))

(declare-fun bs!523149 () Bool)

(assert (= bs!523149 (and d!832499 d!832479)))

(assert (=> bs!523149 (not (= lambda!107432 lambda!107429))))

(declare-fun bs!523150 () Bool)

(assert (= bs!523150 (and d!832499 d!832351)))

(assert (=> bs!523150 (= (= lambda!107416 lambda!107393) (= lambda!107432 lambda!107417))))

(assert (=> d!832499 true))

(assert (=> d!832499 (< (dynLambda!14327 order!18145 lambda!107416) (dynLambda!14327 order!18145 lambda!107432))))

(assert (=> d!832499 (= (exists!1182 (exprs!3207 lt!1019143) lambda!107416) (not (forall!7091 (exprs!3207 lt!1019143) lambda!107432)))))

(declare-fun bs!523151 () Bool)

(assert (= bs!523151 d!832499))

(declare-fun m!3296381 () Bool)

(assert (=> bs!523151 m!3296381))

(assert (=> d!832343 d!832499))

(declare-fun d!832501 () Bool)

(declare-fun c!467157 () Bool)

(assert (=> d!832501 (= c!467157 ((_ is Nil!34408) lt!1019242))))

(declare-fun e!1821675 () (InoxSet C!17676))

(assert (=> d!832501 (= (content!4711 lt!1019242) e!1821675)))

(declare-fun b!2879107 () Bool)

(assert (=> b!2879107 (= e!1821675 ((as const (Array C!17676 Bool)) false))))

(declare-fun b!2879108 () Bool)

(assert (=> b!2879108 (= e!1821675 ((_ map or) (store ((as const (Array C!17676 Bool)) false) (h!39828 lt!1019242) true) (content!4711 (t!233575 lt!1019242))))))

(assert (= (and d!832501 c!467157) b!2879107))

(assert (= (and d!832501 (not c!467157)) b!2879108))

(declare-fun m!3296383 () Bool)

(assert (=> b!2879108 m!3296383))

(declare-fun m!3296385 () Bool)

(assert (=> b!2879108 m!3296385))

(assert (=> d!832323 d!832501))

(declare-fun d!832503 () Bool)

(declare-fun c!467158 () Bool)

(assert (=> d!832503 (= c!467158 ((_ is Nil!34408) (v!34547 lt!1019201)))))

(declare-fun e!1821676 () (InoxSet C!17676))

(assert (=> d!832503 (= (content!4711 (v!34547 lt!1019201)) e!1821676)))

(declare-fun b!2879109 () Bool)

(assert (=> b!2879109 (= e!1821676 ((as const (Array C!17676 Bool)) false))))

(declare-fun b!2879110 () Bool)

(assert (=> b!2879110 (= e!1821676 ((_ map or) (store ((as const (Array C!17676 Bool)) false) (h!39828 (v!34547 lt!1019201)) true) (content!4711 (t!233575 (v!34547 lt!1019201)))))))

(assert (= (and d!832503 c!467158) b!2879109))

(assert (= (and d!832503 (not c!467158)) b!2879110))

(declare-fun m!3296387 () Bool)

(assert (=> b!2879110 m!3296387))

(declare-fun m!3296389 () Bool)

(assert (=> b!2879110 m!3296389))

(assert (=> d!832323 d!832503))

(declare-fun d!832505 () Bool)

(declare-fun c!467159 () Bool)

(assert (=> d!832505 (= c!467159 ((_ is Nil!34408) (v!34547 lt!1019202)))))

(declare-fun e!1821677 () (InoxSet C!17676))

(assert (=> d!832505 (= (content!4711 (v!34547 lt!1019202)) e!1821677)))

(declare-fun b!2879111 () Bool)

(assert (=> b!2879111 (= e!1821677 ((as const (Array C!17676 Bool)) false))))

(declare-fun b!2879112 () Bool)

(assert (=> b!2879112 (= e!1821677 ((_ map or) (store ((as const (Array C!17676 Bool)) false) (h!39828 (v!34547 lt!1019202)) true) (content!4711 (t!233575 (v!34547 lt!1019202)))))))

(assert (= (and d!832505 c!467159) b!2879111))

(assert (= (and d!832505 (not c!467159)) b!2879112))

(declare-fun m!3296391 () Bool)

(assert (=> b!2879112 m!3296391))

(declare-fun m!3296393 () Bool)

(assert (=> b!2879112 m!3296393))

(assert (=> d!832323 d!832505))

(declare-fun bs!523152 () Bool)

(declare-fun d!832507 () Bool)

(assert (= bs!523152 (and d!832507 d!832463)))

(declare-fun lambda!107433 () Int)

(assert (=> bs!523152 (= lambda!107433 lambda!107427)))

(declare-fun bs!523153 () Bool)

(assert (= bs!523153 (and d!832507 d!832491)))

(assert (=> bs!523153 (= lambda!107433 lambda!107430)))

(declare-fun bs!523154 () Bool)

(assert (= bs!523154 (and d!832507 d!832365)))

(assert (=> bs!523154 (= lambda!107433 lambda!107422)))

(declare-fun bs!523155 () Bool)

(assert (= bs!523155 (and d!832507 d!832477)))

(assert (=> bs!523155 (= lambda!107433 lambda!107428)))

(declare-fun bs!523156 () Bool)

(assert (= bs!523156 (and d!832507 d!832377)))

(assert (=> bs!523156 (= lambda!107433 lambda!107424)))

(assert (=> d!832507 (= (nullableZipper!725 (derivationStepZipper!481 lt!1019145 (head!6354 (v!34547 lt!1019148)))) (exists!1184 (derivationStepZipper!481 lt!1019145 (head!6354 (v!34547 lt!1019148))) lambda!107433))))

(declare-fun bs!523157 () Bool)

(assert (= bs!523157 d!832507))

(assert (=> bs!523157 m!3295573))

(declare-fun m!3296395 () Bool)

(assert (=> bs!523157 m!3296395))

(assert (=> b!2878719 d!832507))

(declare-fun b!2879113 () Bool)

(declare-fun res!1193444 () Bool)

(declare-fun e!1821678 () Bool)

(assert (=> b!2879113 (=> res!1193444 e!1821678)))

(declare-fun e!1821682 () Bool)

(assert (=> b!2879113 (= res!1193444 e!1821682)))

(declare-fun res!1193442 () Bool)

(assert (=> b!2879113 (=> (not res!1193442) (not e!1821682))))

(declare-fun lt!1019288 () Bool)

(assert (=> b!2879113 (= res!1193442 lt!1019288)))

(declare-fun b!2879115 () Bool)

(declare-fun res!1193443 () Bool)

(assert (=> b!2879115 (=> (not res!1193443) (not e!1821682))))

(declare-fun call!186557 () Bool)

(assert (=> b!2879115 (= res!1193443 (not call!186557))))

(declare-fun bm!186552 () Bool)

(assert (=> bm!186552 (= call!186557 (isEmpty!18737 (tail!4579 (tail!4579 (get!10347 lt!1019141)))))))

(declare-fun b!2879116 () Bool)

(declare-fun e!1821680 () Bool)

(assert (=> b!2879116 (= e!1821680 (nullable!2697 (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))) (head!6354 (tail!4579 (get!10347 lt!1019141))))))))

(declare-fun b!2879117 () Bool)

(assert (=> b!2879117 (= e!1821680 (matchR!3747 (derivativeStep!2330 (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))) (head!6354 (tail!4579 (get!10347 lt!1019141)))) (head!6354 (tail!4579 (tail!4579 (get!10347 lt!1019141))))) (tail!4579 (tail!4579 (tail!4579 (get!10347 lt!1019141))))))))

(declare-fun b!2879118 () Bool)

(declare-fun e!1821683 () Bool)

(assert (=> b!2879118 (= e!1821683 (not lt!1019288))))

(declare-fun b!2879119 () Bool)

(declare-fun res!1193447 () Bool)

(assert (=> b!2879119 (=> res!1193447 e!1821678)))

(assert (=> b!2879119 (= res!1193447 (not ((_ is ElementMatch!8747) (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))) (head!6354 (tail!4579 (get!10347 lt!1019141)))))))))

(assert (=> b!2879119 (= e!1821683 e!1821678)))

(declare-fun b!2879120 () Bool)

(declare-fun res!1193448 () Bool)

(declare-fun e!1821684 () Bool)

(assert (=> b!2879120 (=> res!1193448 e!1821684)))

(assert (=> b!2879120 (= res!1193448 (not (isEmpty!18737 (tail!4579 (tail!4579 (tail!4579 (get!10347 lt!1019141)))))))))

(declare-fun b!2879121 () Bool)

(declare-fun res!1193446 () Bool)

(assert (=> b!2879121 (=> (not res!1193446) (not e!1821682))))

(assert (=> b!2879121 (= res!1193446 (isEmpty!18737 (tail!4579 (tail!4579 (tail!4579 (get!10347 lt!1019141))))))))

(declare-fun b!2879122 () Bool)

(assert (=> b!2879122 (= e!1821682 (= (head!6354 (tail!4579 (tail!4579 (get!10347 lt!1019141)))) (c!466810 (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))) (head!6354 (tail!4579 (get!10347 lt!1019141)))))))))

(declare-fun b!2879123 () Bool)

(assert (=> b!2879123 (= e!1821684 (not (= (head!6354 (tail!4579 (tail!4579 (get!10347 lt!1019141)))) (c!466810 (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))) (head!6354 (tail!4579 (get!10347 lt!1019141))))))))))

(declare-fun b!2879124 () Bool)

(declare-fun e!1821681 () Bool)

(assert (=> b!2879124 (= e!1821681 e!1821684)))

(declare-fun res!1193441 () Bool)

(assert (=> b!2879124 (=> res!1193441 e!1821684)))

(assert (=> b!2879124 (= res!1193441 call!186557)))

(declare-fun b!2879114 () Bool)

(declare-fun e!1821679 () Bool)

(assert (=> b!2879114 (= e!1821679 (= lt!1019288 call!186557))))

(declare-fun d!832509 () Bool)

(assert (=> d!832509 e!1821679))

(declare-fun c!467160 () Bool)

(assert (=> d!832509 (= c!467160 ((_ is EmptyExpr!8747) (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))) (head!6354 (tail!4579 (get!10347 lt!1019141))))))))

(assert (=> d!832509 (= lt!1019288 e!1821680)))

(declare-fun c!467162 () Bool)

(assert (=> d!832509 (= c!467162 (isEmpty!18737 (tail!4579 (tail!4579 (get!10347 lt!1019141)))))))

(assert (=> d!832509 (validRegex!3525 (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))) (head!6354 (tail!4579 (get!10347 lt!1019141)))))))

(assert (=> d!832509 (= (matchR!3747 (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))) (head!6354 (tail!4579 (get!10347 lt!1019141)))) (tail!4579 (tail!4579 (get!10347 lt!1019141)))) lt!1019288)))

(declare-fun b!2879125 () Bool)

(assert (=> b!2879125 (= e!1821678 e!1821681)))

(declare-fun res!1193445 () Bool)

(assert (=> b!2879125 (=> (not res!1193445) (not e!1821681))))

(assert (=> b!2879125 (= res!1193445 (not lt!1019288))))

(declare-fun b!2879126 () Bool)

(assert (=> b!2879126 (= e!1821679 e!1821683)))

(declare-fun c!467161 () Bool)

(assert (=> b!2879126 (= c!467161 ((_ is EmptyLang!8747) (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))) (head!6354 (tail!4579 (get!10347 lt!1019141))))))))

(assert (= (and d!832509 c!467162) b!2879116))

(assert (= (and d!832509 (not c!467162)) b!2879117))

(assert (= (and d!832509 c!467160) b!2879114))

(assert (= (and d!832509 (not c!467160)) b!2879126))

(assert (= (and b!2879126 c!467161) b!2879118))

(assert (= (and b!2879126 (not c!467161)) b!2879119))

(assert (= (and b!2879119 (not res!1193447)) b!2879113))

(assert (= (and b!2879113 res!1193442) b!2879115))

(assert (= (and b!2879115 res!1193443) b!2879121))

(assert (= (and b!2879121 res!1193446) b!2879122))

(assert (= (and b!2879113 (not res!1193444)) b!2879125))

(assert (= (and b!2879125 res!1193445) b!2879124))

(assert (= (and b!2879124 (not res!1193441)) b!2879120))

(assert (= (and b!2879120 (not res!1193448)) b!2879123))

(assert (= (or b!2879114 b!2879115 b!2879124) bm!186552))

(assert (=> b!2879123 m!3295909))

(declare-fun m!3296397 () Bool)

(assert (=> b!2879123 m!3296397))

(assert (=> b!2879116 m!3295913))

(declare-fun m!3296399 () Bool)

(assert (=> b!2879116 m!3296399))

(assert (=> b!2879122 m!3295909))

(assert (=> b!2879122 m!3296397))

(assert (=> b!2879121 m!3295909))

(declare-fun m!3296401 () Bool)

(assert (=> b!2879121 m!3296401))

(assert (=> b!2879121 m!3296401))

(declare-fun m!3296403 () Bool)

(assert (=> b!2879121 m!3296403))

(assert (=> bm!186552 m!3295909))

(assert (=> bm!186552 m!3295911))

(assert (=> b!2879117 m!3295909))

(assert (=> b!2879117 m!3296397))

(assert (=> b!2879117 m!3295913))

(assert (=> b!2879117 m!3296397))

(declare-fun m!3296405 () Bool)

(assert (=> b!2879117 m!3296405))

(assert (=> b!2879117 m!3295909))

(assert (=> b!2879117 m!3296401))

(assert (=> b!2879117 m!3296405))

(assert (=> b!2879117 m!3296401))

(declare-fun m!3296407 () Bool)

(assert (=> b!2879117 m!3296407))

(assert (=> b!2879120 m!3295909))

(assert (=> b!2879120 m!3296401))

(assert (=> b!2879120 m!3296401))

(assert (=> b!2879120 m!3296403))

(assert (=> d!832509 m!3295909))

(assert (=> d!832509 m!3295911))

(assert (=> d!832509 m!3295913))

(declare-fun m!3296409 () Bool)

(assert (=> d!832509 m!3296409))

(assert (=> b!2878598 d!832509))

(declare-fun bm!186553 () Bool)

(declare-fun call!186560 () Regex!8747)

(declare-fun c!467164 () Bool)

(assert (=> bm!186553 (= call!186560 (derivativeStep!2330 (ite c!467164 (regTwo!18007 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))) (regTwo!18006 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))))) (head!6354 (tail!4579 (get!10347 lt!1019141)))))))

(declare-fun b!2879127 () Bool)

(declare-fun e!1821687 () Regex!8747)

(declare-fun call!186558 () Regex!8747)

(assert (=> b!2879127 (= e!1821687 (Union!8747 call!186558 call!186560))))

(declare-fun b!2879128 () Bool)

(declare-fun e!1821688 () Regex!8747)

(assert (=> b!2879128 (= e!1821688 EmptyLang!8747)))

(declare-fun d!832511 () Bool)

(declare-fun lt!1019289 () Regex!8747)

(assert (=> d!832511 (validRegex!3525 lt!1019289)))

(assert (=> d!832511 (= lt!1019289 e!1821688)))

(declare-fun c!467167 () Bool)

(assert (=> d!832511 (= c!467167 (or ((_ is EmptyExpr!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))) ((_ is EmptyLang!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))))))))

(assert (=> d!832511 (validRegex!3525 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))))))

(assert (=> d!832511 (= (derivativeStep!2330 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))) (head!6354 (tail!4579 (get!10347 lt!1019141)))) lt!1019289)))

(declare-fun b!2879129 () Bool)

(declare-fun e!1821686 () Regex!8747)

(assert (=> b!2879129 (= e!1821687 e!1821686)))

(declare-fun c!467165 () Bool)

(assert (=> b!2879129 (= c!467165 ((_ is Star!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))))))

(declare-fun e!1821685 () Regex!8747)

(declare-fun b!2879130 () Bool)

(declare-fun call!186559 () Regex!8747)

(assert (=> b!2879130 (= e!1821685 (Union!8747 (Concat!14068 call!186559 (regTwo!18006 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))))) EmptyLang!8747))))

(declare-fun b!2879131 () Bool)

(declare-fun e!1821689 () Regex!8747)

(assert (=> b!2879131 (= e!1821688 e!1821689)))

(declare-fun c!467166 () Bool)

(assert (=> b!2879131 (= c!467166 ((_ is ElementMatch!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))))))

(declare-fun b!2879132 () Bool)

(assert (=> b!2879132 (= e!1821689 (ite (= (head!6354 (tail!4579 (get!10347 lt!1019141))) (c!466810 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))))) EmptyExpr!8747 EmptyLang!8747))))

(declare-fun call!186561 () Regex!8747)

(declare-fun b!2879133 () Bool)

(assert (=> b!2879133 (= e!1821686 (Concat!14068 call!186561 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))))))

(declare-fun b!2879134 () Bool)

(assert (=> b!2879134 (= e!1821685 (Union!8747 (Concat!14068 call!186559 (regTwo!18006 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))))) call!186560))))

(declare-fun b!2879135 () Bool)

(assert (=> b!2879135 (= c!467164 ((_ is Union!8747) (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))))))

(assert (=> b!2879135 (= e!1821689 e!1821687)))

(declare-fun bm!186554 () Bool)

(assert (=> bm!186554 (= call!186558 (derivativeStep!2330 (ite c!467164 (regOne!18007 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))) (ite c!467165 (reg!9076 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))) (regOne!18006 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141)))))) (head!6354 (tail!4579 (get!10347 lt!1019141)))))))

(declare-fun bm!186555 () Bool)

(assert (=> bm!186555 (= call!186561 call!186558)))

(declare-fun bm!186556 () Bool)

(assert (=> bm!186556 (= call!186559 call!186561)))

(declare-fun b!2879136 () Bool)

(declare-fun c!467163 () Bool)

(assert (=> b!2879136 (= c!467163 (nullable!2697 (regOne!18006 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (get!10347 lt!1019141))))))))

(assert (=> b!2879136 (= e!1821686 e!1821685)))

(assert (= (and d!832511 c!467167) b!2879128))

(assert (= (and d!832511 (not c!467167)) b!2879131))

(assert (= (and b!2879131 c!467166) b!2879132))

(assert (= (and b!2879131 (not c!467166)) b!2879135))

(assert (= (and b!2879135 c!467164) b!2879127))

(assert (= (and b!2879135 (not c!467164)) b!2879129))

(assert (= (and b!2879129 c!467165) b!2879133))

(assert (= (and b!2879129 (not c!467165)) b!2879136))

(assert (= (and b!2879136 c!467163) b!2879134))

(assert (= (and b!2879136 (not c!467163)) b!2879130))

(assert (= (or b!2879134 b!2879130) bm!186556))

(assert (= (or b!2879133 bm!186556) bm!186555))

(assert (= (or b!2879127 bm!186555) bm!186554))

(assert (= (or b!2879127 b!2879134) bm!186553))

(assert (=> bm!186553 m!3295905))

(declare-fun m!3296411 () Bool)

(assert (=> bm!186553 m!3296411))

(declare-fun m!3296413 () Bool)

(assert (=> d!832511 m!3296413))

(assert (=> d!832511 m!3295723))

(assert (=> d!832511 m!3295917))

(assert (=> bm!186554 m!3295905))

(declare-fun m!3296415 () Bool)

(assert (=> bm!186554 m!3296415))

(declare-fun m!3296417 () Bool)

(assert (=> b!2879136 m!3296417))

(assert (=> b!2878598 d!832511))

(assert (=> b!2878598 d!832437))

(assert (=> b!2878598 d!832453))

(assert (=> bm!186469 d!832337))

(declare-fun d!832513 () Bool)

(assert (=> d!832513 (= (nullable!2697 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))) (nullableFct!824 (derivativeStep!2330 (h!39829 (exprs!3207 c!7184)) (head!6354 (v!34547 lt!1019141)))))))

(declare-fun bs!523158 () Bool)

(assert (= bs!523158 d!832513))

(assert (=> bs!523158 m!3295695))

(declare-fun m!3296419 () Bool)

(assert (=> bs!523158 m!3296419))

(assert (=> b!2878754 d!832513))

(declare-fun d!832515 () Bool)

(declare-fun lt!1019290 () Int)

(assert (=> d!832515 (>= lt!1019290 0)))

(declare-fun e!1821690 () Int)

(assert (=> d!832515 (= lt!1019290 e!1821690)))

(declare-fun c!467168 () Bool)

(assert (=> d!832515 (= c!467168 ((_ is Nil!34408) lt!1019248))))

(assert (=> d!832515 (= (size!26330 lt!1019248) lt!1019290)))

(declare-fun b!2879137 () Bool)

(assert (=> b!2879137 (= e!1821690 0)))

(declare-fun b!2879138 () Bool)

(assert (=> b!2879138 (= e!1821690 (+ 1 (size!26330 (t!233575 lt!1019248))))))

(assert (= (and d!832515 c!467168) b!2879137))

(assert (= (and d!832515 (not c!467168)) b!2879138))

(declare-fun m!3296421 () Bool)

(assert (=> b!2879138 m!3296421))

(assert (=> b!2878785 d!832515))

(declare-fun d!832517 () Bool)

(declare-fun lt!1019291 () Int)

(assert (=> d!832517 (>= lt!1019291 0)))

(declare-fun e!1821691 () Int)

(assert (=> d!832517 (= lt!1019291 e!1821691)))

(declare-fun c!467169 () Bool)

(assert (=> d!832517 (= c!467169 ((_ is Nil!34408) (v!34547 lt!1019209)))))

(assert (=> d!832517 (= (size!26330 (v!34547 lt!1019209)) lt!1019291)))

(declare-fun b!2879139 () Bool)

(assert (=> b!2879139 (= e!1821691 0)))

(declare-fun b!2879140 () Bool)

(assert (=> b!2879140 (= e!1821691 (+ 1 (size!26330 (t!233575 (v!34547 lt!1019209)))))))

(assert (= (and d!832517 c!467169) b!2879139))

(assert (= (and d!832517 (not c!467169)) b!2879140))

(assert (=> b!2879140 m!3296229))

(assert (=> b!2878785 d!832517))

(declare-fun d!832519 () Bool)

(declare-fun lt!1019292 () Int)

(assert (=> d!832519 (>= lt!1019292 0)))

(declare-fun e!1821692 () Int)

(assert (=> d!832519 (= lt!1019292 e!1821692)))

(declare-fun c!467170 () Bool)

(assert (=> d!832519 (= c!467170 ((_ is Nil!34408) (v!34547 lt!1019210)))))

(assert (=> d!832519 (= (size!26330 (v!34547 lt!1019210)) lt!1019292)))

(declare-fun b!2879141 () Bool)

(assert (=> b!2879141 (= e!1821692 0)))

(declare-fun b!2879142 () Bool)

(assert (=> b!2879142 (= e!1821692 (+ 1 (size!26330 (t!233575 (v!34547 lt!1019210)))))))

(assert (= (and d!832519 c!467170) b!2879141))

(assert (= (and d!832519 (not c!467170)) b!2879142))

(declare-fun m!3296423 () Bool)

(assert (=> b!2879142 m!3296423))

(assert (=> b!2878785 d!832519))

(declare-fun bm!186557 () Bool)

(declare-fun call!186564 () Regex!8747)

(declare-fun c!467172 () Bool)

(assert (=> bm!186557 (= call!186564 (derivativeStep!2330 (ite c!467172 (regTwo!18007 (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))) (head!6354 (v!34547 lt!1019141))))))

(declare-fun b!2879143 () Bool)

(declare-fun e!1821695 () Regex!8747)

(declare-fun call!186562 () Regex!8747)

(assert (=> b!2879143 (= e!1821695 (Union!8747 call!186562 call!186564))))

(declare-fun b!2879144 () Bool)

(declare-fun e!1821696 () Regex!8747)

(assert (=> b!2879144 (= e!1821696 EmptyLang!8747)))

(declare-fun d!832521 () Bool)

(declare-fun lt!1019293 () Regex!8747)

(assert (=> d!832521 (validRegex!3525 lt!1019293)))

(assert (=> d!832521 (= lt!1019293 e!1821696)))

(declare-fun c!467175 () Bool)

(assert (=> d!832521 (= c!467175 (or ((_ is EmptyExpr!8747) (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) ((_ is EmptyLang!8747) (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))))))

(assert (=> d!832521 (validRegex!3525 (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))))

(assert (=> d!832521 (= (derivativeStep!2330 (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))) (head!6354 (v!34547 lt!1019141))) lt!1019293)))

(declare-fun b!2879145 () Bool)

(declare-fun e!1821694 () Regex!8747)

(assert (=> b!2879145 (= e!1821695 e!1821694)))

(declare-fun c!467173 () Bool)

(assert (=> b!2879145 (= c!467173 ((_ is Star!8747) (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2879146 () Bool)

(declare-fun call!186563 () Regex!8747)

(declare-fun e!1821693 () Regex!8747)

(assert (=> b!2879146 (= e!1821693 (Union!8747 (Concat!14068 call!186563 (regTwo!18006 (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))) EmptyLang!8747))))

(declare-fun b!2879147 () Bool)

(declare-fun e!1821697 () Regex!8747)

(assert (=> b!2879147 (= e!1821696 e!1821697)))

(declare-fun c!467174 () Bool)

(assert (=> b!2879147 (= c!467174 ((_ is ElementMatch!8747) (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2879148 () Bool)

(assert (=> b!2879148 (= e!1821697 (ite (= (head!6354 (v!34547 lt!1019141)) (c!466810 (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))) EmptyExpr!8747 EmptyLang!8747))))

(declare-fun call!186565 () Regex!8747)

(declare-fun b!2879149 () Bool)

(assert (=> b!2879149 (= e!1821694 (Concat!14068 call!186565 (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2879150 () Bool)

(assert (=> b!2879150 (= e!1821693 (Union!8747 (Concat!14068 call!186563 (regTwo!18006 (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))) call!186564))))

(declare-fun b!2879151 () Bool)

(assert (=> b!2879151 (= c!467172 ((_ is Union!8747) (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))

(assert (=> b!2879151 (= e!1821697 e!1821695)))

(declare-fun bm!186558 () Bool)

(assert (=> bm!186558 (= call!186562 (derivativeStep!2330 (ite c!467172 (regOne!18007 (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (ite c!467173 (reg!9076 (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))) (head!6354 (v!34547 lt!1019141))))))

(declare-fun bm!186559 () Bool)

(assert (=> bm!186559 (= call!186565 call!186562)))

(declare-fun bm!186560 () Bool)

(assert (=> bm!186560 (= call!186563 call!186565)))

(declare-fun b!2879152 () Bool)

(declare-fun c!467171 () Bool)

(assert (=> b!2879152 (= c!467171 (nullable!2697 (regOne!18006 (ite c!467035 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))))))

(assert (=> b!2879152 (= e!1821694 e!1821693)))

(assert (= (and d!832521 c!467175) b!2879144))

(assert (= (and d!832521 (not c!467175)) b!2879147))

(assert (= (and b!2879147 c!467174) b!2879148))

(assert (= (and b!2879147 (not c!467174)) b!2879151))

(assert (= (and b!2879151 c!467172) b!2879143))

(assert (= (and b!2879151 (not c!467172)) b!2879145))

(assert (= (and b!2879145 c!467173) b!2879149))

(assert (= (and b!2879145 (not c!467173)) b!2879152))

(assert (= (and b!2879152 c!467171) b!2879150))

(assert (= (and b!2879152 (not c!467171)) b!2879146))

(assert (= (or b!2879150 b!2879146) bm!186560))

(assert (= (or b!2879149 bm!186560) bm!186559))

(assert (= (or b!2879143 bm!186559) bm!186558))

(assert (= (or b!2879143 b!2879150) bm!186557))

(assert (=> bm!186557 m!3295583))

(declare-fun m!3296425 () Bool)

(assert (=> bm!186557 m!3296425))

(declare-fun m!3296427 () Bool)

(assert (=> d!832521 m!3296427))

(declare-fun m!3296429 () Bool)

(assert (=> d!832521 m!3296429))

(assert (=> bm!186558 m!3295583))

(declare-fun m!3296431 () Bool)

(assert (=> bm!186558 m!3296431))

(declare-fun m!3296433 () Bool)

(assert (=> b!2879152 m!3296433))

(assert (=> bm!186494 d!832521))

(assert (=> b!2878761 d!832393))

(declare-fun d!832523 () Bool)

(declare-fun c!467176 () Bool)

(assert (=> d!832523 (= c!467176 ((_ is EmptyExpr!8747) (ite c!467061 (regTwo!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun e!1821702 () Option!6422)

(assert (=> d!832523 (= (getLanguageWitness!446 (ite c!467061 (regTwo!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) e!1821702)))

(declare-fun b!2879153 () Bool)

(declare-fun e!1821700 () Option!6422)

(assert (=> b!2879153 (= e!1821700 None!6421)))

(declare-fun b!2879154 () Bool)

(declare-fun e!1821698 () Option!6422)

(declare-fun lt!1019294 () Option!6422)

(declare-fun lt!1019295 () Option!6422)

(assert (=> b!2879154 (= e!1821698 (Some!6421 (++!8183 (v!34547 lt!1019294) (v!34547 lt!1019295))))))

(declare-fun b!2879155 () Bool)

(declare-fun e!1821705 () Option!6422)

(declare-fun call!186566 () Option!6422)

(assert (=> b!2879155 (= e!1821705 call!186566)))

(declare-fun b!2879156 () Bool)

(assert (=> b!2879156 (= e!1821702 (Some!6421 Nil!34408))))

(declare-fun b!2879157 () Bool)

(assert (=> b!2879157 (= e!1821698 None!6421)))

(declare-fun b!2879158 () Bool)

(declare-fun e!1821704 () Option!6422)

(assert (=> b!2879158 (= e!1821704 e!1821705)))

(declare-fun lt!1019296 () Option!6422)

(declare-fun call!186567 () Option!6422)

(assert (=> b!2879158 (= lt!1019296 call!186567)))

(declare-fun c!467183 () Bool)

(assert (=> b!2879158 (= c!467183 ((_ is Some!6421) lt!1019296))))

(declare-fun b!2879159 () Bool)

(assert (=> b!2879159 (= e!1821705 lt!1019296)))

(declare-fun c!467180 () Bool)

(declare-fun bm!186561 () Bool)

(assert (=> bm!186561 (= call!186566 (getLanguageWitness!446 (ite c!467180 (regTwo!18007 (ite c!467061 (regTwo!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) (regTwo!18006 (ite c!467061 (regTwo!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))))

(declare-fun b!2879160 () Bool)

(declare-fun e!1821703 () Option!6422)

(declare-fun e!1821699 () Option!6422)

(assert (=> b!2879160 (= e!1821703 e!1821699)))

(declare-fun c!467177 () Bool)

(assert (=> b!2879160 (= c!467177 ((_ is Star!8747) (ite c!467061 (regTwo!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2879161 () Bool)

(declare-fun c!467182 () Bool)

(assert (=> b!2879161 (= c!467182 ((_ is Some!6421) lt!1019295))))

(assert (=> b!2879161 (= lt!1019295 call!186566)))

(assert (=> b!2879161 (= e!1821700 e!1821698)))

(declare-fun b!2879162 () Bool)

(declare-fun e!1821701 () Option!6422)

(assert (=> b!2879162 (= e!1821701 None!6421)))

(declare-fun bm!186562 () Bool)

(assert (=> bm!186562 (= call!186567 (getLanguageWitness!446 (ite c!467180 (regOne!18007 (ite c!467061 (regTwo!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) (regOne!18006 (ite c!467061 (regTwo!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))))

(declare-fun b!2879163 () Bool)

(assert (=> b!2879163 (= e!1821699 (Some!6421 Nil!34408))))

(declare-fun b!2879164 () Bool)

(assert (=> b!2879164 (= e!1821704 e!1821700)))

(assert (=> b!2879164 (= lt!1019294 call!186567)))

(declare-fun c!467179 () Bool)

(assert (=> b!2879164 (= c!467179 ((_ is Some!6421) lt!1019294))))

(declare-fun b!2879165 () Bool)

(assert (=> b!2879165 (= e!1821702 e!1821701)))

(declare-fun c!467181 () Bool)

(assert (=> b!2879165 (= c!467181 ((_ is EmptyLang!8747) (ite c!467061 (regTwo!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2879166 () Bool)

(declare-fun c!467178 () Bool)

(assert (=> b!2879166 (= c!467178 ((_ is ElementMatch!8747) (ite c!467061 (regTwo!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(assert (=> b!2879166 (= e!1821701 e!1821703)))

(declare-fun b!2879167 () Bool)

(assert (=> b!2879167 (= c!467180 ((_ is Union!8747) (ite c!467061 (regTwo!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(assert (=> b!2879167 (= e!1821699 e!1821704)))

(declare-fun b!2879168 () Bool)

(assert (=> b!2879168 (= e!1821703 (Some!6421 (Cons!34408 (c!466810 (ite c!467061 (regTwo!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) Nil!34408)))))

(assert (= (and d!832523 c!467176) b!2879156))

(assert (= (and d!832523 (not c!467176)) b!2879165))

(assert (= (and b!2879165 c!467181) b!2879162))

(assert (= (and b!2879165 (not c!467181)) b!2879166))

(assert (= (and b!2879166 c!467178) b!2879168))

(assert (= (and b!2879166 (not c!467178)) b!2879160))

(assert (= (and b!2879160 c!467177) b!2879163))

(assert (= (and b!2879160 (not c!467177)) b!2879167))

(assert (= (and b!2879167 c!467180) b!2879158))

(assert (= (and b!2879167 (not c!467180)) b!2879164))

(assert (= (and b!2879158 c!467183) b!2879159))

(assert (= (and b!2879158 (not c!467183)) b!2879155))

(assert (= (and b!2879164 c!467179) b!2879161))

(assert (= (and b!2879164 (not c!467179)) b!2879153))

(assert (= (and b!2879161 c!467182) b!2879154))

(assert (= (and b!2879161 (not c!467182)) b!2879157))

(assert (= (or b!2879155 b!2879161) bm!186561))

(assert (= (or b!2879158 b!2879164) bm!186562))

(declare-fun m!3296435 () Bool)

(assert (=> b!2879154 m!3296435))

(declare-fun m!3296437 () Bool)

(assert (=> bm!186561 m!3296437))

(declare-fun m!3296439 () Bool)

(assert (=> bm!186562 m!3296439))

(assert (=> bm!186500 d!832523))

(assert (=> d!832245 d!832235))

(assert (=> d!832245 d!832233))

(assert (=> d!832245 d!832187))

(declare-fun d!832525 () Bool)

(assert (=> d!832525 (= (isEmpty!18737 (get!10347 (getLanguageWitness!445 lt!1019143))) ((_ is Nil!34408) (get!10347 (getLanguageWitness!445 lt!1019143))))))

(assert (=> d!832341 d!832525))

(assert (=> d!832367 d!832167))

(assert (=> d!832367 d!832133))

(assert (=> bs!523098 d!832217))

(assert (=> d!832235 d!832483))

(assert (=> d!832235 d!832217))

(declare-fun d!832527 () Bool)

(assert (=> d!832527 (= (nullable!2697 (regOne!18006 (h!39829 (exprs!3207 c!7184)))) (nullableFct!824 (regOne!18006 (h!39829 (exprs!3207 c!7184)))))))

(declare-fun bs!523159 () Bool)

(assert (= bs!523159 d!832527))

(declare-fun m!3296441 () Bool)

(assert (=> bs!523159 m!3296441))

(assert (=> b!2878718 d!832527))

(declare-fun d!832529 () Bool)

(assert (=> d!832529 (= (nullable!2697 (reg!9076 (h!39829 (exprs!3207 c!7184)))) (nullableFct!824 (reg!9076 (h!39829 (exprs!3207 c!7184)))))))

(declare-fun bs!523160 () Bool)

(assert (= bs!523160 d!832529))

(declare-fun m!3296443 () Bool)

(assert (=> bs!523160 m!3296443))

(assert (=> b!2878571 d!832529))

(assert (=> b!2878603 d!832437))

(declare-fun d!832531 () Bool)

(declare-fun c!467184 () Bool)

(assert (=> d!832531 (= c!467184 ((_ is EmptyExpr!8747) (ite c!467027 (regOne!18007 (h!39829 (exprs!3207 lt!1019143))) (regOne!18006 (h!39829 (exprs!3207 lt!1019143))))))))

(declare-fun e!1821710 () Option!6422)

(assert (=> d!832531 (= (getLanguageWitness!446 (ite c!467027 (regOne!18007 (h!39829 (exprs!3207 lt!1019143))) (regOne!18006 (h!39829 (exprs!3207 lt!1019143))))) e!1821710)))

(declare-fun b!2879169 () Bool)

(declare-fun e!1821708 () Option!6422)

(assert (=> b!2879169 (= e!1821708 None!6421)))

(declare-fun b!2879170 () Bool)

(declare-fun e!1821706 () Option!6422)

(declare-fun lt!1019297 () Option!6422)

(declare-fun lt!1019298 () Option!6422)

(assert (=> b!2879170 (= e!1821706 (Some!6421 (++!8183 (v!34547 lt!1019297) (v!34547 lt!1019298))))))

(declare-fun b!2879171 () Bool)

(declare-fun e!1821713 () Option!6422)

(declare-fun call!186568 () Option!6422)

(assert (=> b!2879171 (= e!1821713 call!186568)))

(declare-fun b!2879172 () Bool)

(assert (=> b!2879172 (= e!1821710 (Some!6421 Nil!34408))))

(declare-fun b!2879173 () Bool)

(assert (=> b!2879173 (= e!1821706 None!6421)))

(declare-fun b!2879174 () Bool)

(declare-fun e!1821712 () Option!6422)

(assert (=> b!2879174 (= e!1821712 e!1821713)))

(declare-fun lt!1019299 () Option!6422)

(declare-fun call!186569 () Option!6422)

(assert (=> b!2879174 (= lt!1019299 call!186569)))

(declare-fun c!467191 () Bool)

(assert (=> b!2879174 (= c!467191 ((_ is Some!6421) lt!1019299))))

(declare-fun b!2879175 () Bool)

(assert (=> b!2879175 (= e!1821713 lt!1019299)))

(declare-fun c!467188 () Bool)

(declare-fun bm!186563 () Bool)

(assert (=> bm!186563 (= call!186568 (getLanguageWitness!446 (ite c!467188 (regTwo!18007 (ite c!467027 (regOne!18007 (h!39829 (exprs!3207 lt!1019143))) (regOne!18006 (h!39829 (exprs!3207 lt!1019143))))) (regTwo!18006 (ite c!467027 (regOne!18007 (h!39829 (exprs!3207 lt!1019143))) (regOne!18006 (h!39829 (exprs!3207 lt!1019143))))))))))

(declare-fun b!2879176 () Bool)

(declare-fun e!1821711 () Option!6422)

(declare-fun e!1821707 () Option!6422)

(assert (=> b!2879176 (= e!1821711 e!1821707)))

(declare-fun c!467185 () Bool)

(assert (=> b!2879176 (= c!467185 ((_ is Star!8747) (ite c!467027 (regOne!18007 (h!39829 (exprs!3207 lt!1019143))) (regOne!18006 (h!39829 (exprs!3207 lt!1019143))))))))

(declare-fun b!2879177 () Bool)

(declare-fun c!467190 () Bool)

(assert (=> b!2879177 (= c!467190 ((_ is Some!6421) lt!1019298))))

(assert (=> b!2879177 (= lt!1019298 call!186568)))

(assert (=> b!2879177 (= e!1821708 e!1821706)))

(declare-fun b!2879178 () Bool)

(declare-fun e!1821709 () Option!6422)

(assert (=> b!2879178 (= e!1821709 None!6421)))

(declare-fun bm!186564 () Bool)

(assert (=> bm!186564 (= call!186569 (getLanguageWitness!446 (ite c!467188 (regOne!18007 (ite c!467027 (regOne!18007 (h!39829 (exprs!3207 lt!1019143))) (regOne!18006 (h!39829 (exprs!3207 lt!1019143))))) (regOne!18006 (ite c!467027 (regOne!18007 (h!39829 (exprs!3207 lt!1019143))) (regOne!18006 (h!39829 (exprs!3207 lt!1019143))))))))))

(declare-fun b!2879179 () Bool)

(assert (=> b!2879179 (= e!1821707 (Some!6421 Nil!34408))))

(declare-fun b!2879180 () Bool)

(assert (=> b!2879180 (= e!1821712 e!1821708)))

(assert (=> b!2879180 (= lt!1019297 call!186569)))

(declare-fun c!467187 () Bool)

(assert (=> b!2879180 (= c!467187 ((_ is Some!6421) lt!1019297))))

(declare-fun b!2879181 () Bool)

(assert (=> b!2879181 (= e!1821710 e!1821709)))

(declare-fun c!467189 () Bool)

(assert (=> b!2879181 (= c!467189 ((_ is EmptyLang!8747) (ite c!467027 (regOne!18007 (h!39829 (exprs!3207 lt!1019143))) (regOne!18006 (h!39829 (exprs!3207 lt!1019143))))))))

(declare-fun b!2879182 () Bool)

(declare-fun c!467186 () Bool)

(assert (=> b!2879182 (= c!467186 ((_ is ElementMatch!8747) (ite c!467027 (regOne!18007 (h!39829 (exprs!3207 lt!1019143))) (regOne!18006 (h!39829 (exprs!3207 lt!1019143))))))))

(assert (=> b!2879182 (= e!1821709 e!1821711)))

(declare-fun b!2879183 () Bool)

(assert (=> b!2879183 (= c!467188 ((_ is Union!8747) (ite c!467027 (regOne!18007 (h!39829 (exprs!3207 lt!1019143))) (regOne!18006 (h!39829 (exprs!3207 lt!1019143))))))))

(assert (=> b!2879183 (= e!1821707 e!1821712)))

(declare-fun b!2879184 () Bool)

(assert (=> b!2879184 (= e!1821711 (Some!6421 (Cons!34408 (c!466810 (ite c!467027 (regOne!18007 (h!39829 (exprs!3207 lt!1019143))) (regOne!18006 (h!39829 (exprs!3207 lt!1019143))))) Nil!34408)))))

(assert (= (and d!832531 c!467184) b!2879172))

(assert (= (and d!832531 (not c!467184)) b!2879181))

(assert (= (and b!2879181 c!467189) b!2879178))

(assert (= (and b!2879181 (not c!467189)) b!2879182))

(assert (= (and b!2879182 c!467186) b!2879184))

(assert (= (and b!2879182 (not c!467186)) b!2879176))

(assert (= (and b!2879176 c!467185) b!2879179))

(assert (= (and b!2879176 (not c!467185)) b!2879183))

(assert (= (and b!2879183 c!467188) b!2879174))

(assert (= (and b!2879183 (not c!467188)) b!2879180))

(assert (= (and b!2879174 c!467191) b!2879175))

(assert (= (and b!2879174 (not c!467191)) b!2879171))

(assert (= (and b!2879180 c!467187) b!2879177))

(assert (= (and b!2879180 (not c!467187)) b!2879169))

(assert (= (and b!2879177 c!467190) b!2879170))

(assert (= (and b!2879177 (not c!467190)) b!2879173))

(assert (= (or b!2879171 b!2879177) bm!186563))

(assert (= (or b!2879174 b!2879180) bm!186564))

(declare-fun m!3296445 () Bool)

(assert (=> b!2879170 m!3296445))

(declare-fun m!3296447 () Bool)

(assert (=> bm!186563 m!3296447))

(declare-fun m!3296449 () Bool)

(assert (=> bm!186564 m!3296449))

(assert (=> bm!186492 d!832531))

(assert (=> b!2878601 d!832451))

(assert (=> b!2878601 d!832453))

(declare-fun lt!1019300 () List!34532)

(declare-fun e!1821715 () Bool)

(declare-fun b!2879188 () Bool)

(assert (=> b!2879188 (= e!1821715 (or (not (= (v!34547 lt!1019251) Nil!34408)) (= lt!1019300 (v!34547 lt!1019250))))))

(declare-fun b!2879186 () Bool)

(declare-fun e!1821714 () List!34532)

(assert (=> b!2879186 (= e!1821714 (Cons!34408 (h!39828 (v!34547 lt!1019250)) (++!8183 (t!233575 (v!34547 lt!1019250)) (v!34547 lt!1019251))))))

(declare-fun d!832533 () Bool)

(assert (=> d!832533 e!1821715))

(declare-fun res!1193450 () Bool)

(assert (=> d!832533 (=> (not res!1193450) (not e!1821715))))

(assert (=> d!832533 (= res!1193450 (= (content!4711 lt!1019300) ((_ map or) (content!4711 (v!34547 lt!1019250)) (content!4711 (v!34547 lt!1019251)))))))

(assert (=> d!832533 (= lt!1019300 e!1821714)))

(declare-fun c!467192 () Bool)

(assert (=> d!832533 (= c!467192 ((_ is Nil!34408) (v!34547 lt!1019250)))))

(assert (=> d!832533 (= (++!8183 (v!34547 lt!1019250) (v!34547 lt!1019251)) lt!1019300)))

(declare-fun b!2879185 () Bool)

(assert (=> b!2879185 (= e!1821714 (v!34547 lt!1019251))))

(declare-fun b!2879187 () Bool)

(declare-fun res!1193449 () Bool)

(assert (=> b!2879187 (=> (not res!1193449) (not e!1821715))))

(assert (=> b!2879187 (= res!1193449 (= (size!26330 lt!1019300) (+ (size!26330 (v!34547 lt!1019250)) (size!26330 (v!34547 lt!1019251)))))))

(assert (= (and d!832533 c!467192) b!2879185))

(assert (= (and d!832533 (not c!467192)) b!2879186))

(assert (= (and d!832533 res!1193450) b!2879187))

(assert (= (and b!2879187 res!1193449) b!2879188))

(declare-fun m!3296451 () Bool)

(assert (=> b!2879186 m!3296451))

(declare-fun m!3296453 () Bool)

(assert (=> d!832533 m!3296453))

(declare-fun m!3296455 () Bool)

(assert (=> d!832533 m!3296455))

(declare-fun m!3296457 () Bool)

(assert (=> d!832533 m!3296457))

(declare-fun m!3296459 () Bool)

(assert (=> b!2879187 m!3296459))

(declare-fun m!3296461 () Bool)

(assert (=> b!2879187 m!3296461))

(declare-fun m!3296463 () Bool)

(assert (=> b!2879187 m!3296463))

(assert (=> b!2878790 d!832533))

(declare-fun d!832535 () Bool)

(assert (=> d!832535 (= (flatMap!227 lt!1019147 lambda!107423) (choose!17025 lt!1019147 lambda!107423))))

(declare-fun bs!523161 () Bool)

(assert (= bs!523161 d!832535))

(declare-fun m!3296465 () Bool)

(assert (=> bs!523161 m!3296465))

(assert (=> d!832375 d!832535))

(assert (=> b!2878759 d!832441))

(assert (=> b!2878759 d!832395))

(declare-fun b!2879190 () Bool)

(declare-fun e!1821719 () Bool)

(declare-fun call!186571 () Bool)

(assert (=> b!2879190 (= e!1821719 call!186571)))

(declare-fun b!2879191 () Bool)

(declare-fun e!1821720 () Bool)

(declare-fun e!1821722 () Bool)

(assert (=> b!2879191 (= e!1821720 e!1821722)))

(declare-fun c!467194 () Bool)

(assert (=> b!2879191 (= c!467194 ((_ is Union!8747) lt!1019247))))

(declare-fun b!2879192 () Bool)

(declare-fun e!1821716 () Bool)

(declare-fun e!1821718 () Bool)

(assert (=> b!2879192 (= e!1821716 e!1821718)))

(declare-fun res!1193455 () Bool)

(assert (=> b!2879192 (=> (not res!1193455) (not e!1821718))))

(assert (=> b!2879192 (= res!1193455 call!186571)))

(declare-fun b!2879193 () Bool)

(declare-fun res!1193454 () Bool)

(assert (=> b!2879193 (=> res!1193454 e!1821716)))

(assert (=> b!2879193 (= res!1193454 (not ((_ is Concat!14068) lt!1019247)))))

(assert (=> b!2879193 (= e!1821722 e!1821716)))

(declare-fun bm!186565 () Bool)

(assert (=> bm!186565 (= call!186571 (validRegex!3525 (ite c!467194 (regTwo!18007 lt!1019247) (regOne!18006 lt!1019247))))))

(declare-fun b!2879194 () Bool)

(declare-fun res!1193453 () Bool)

(assert (=> b!2879194 (=> (not res!1193453) (not e!1821719))))

(declare-fun call!186570 () Bool)

(assert (=> b!2879194 (= res!1193453 call!186570)))

(assert (=> b!2879194 (= e!1821722 e!1821719)))

(declare-fun b!2879189 () Bool)

(declare-fun e!1821721 () Bool)

(assert (=> b!2879189 (= e!1821721 e!1821720)))

(declare-fun c!467193 () Bool)

(assert (=> b!2879189 (= c!467193 ((_ is Star!8747) lt!1019247))))

(declare-fun d!832537 () Bool)

(declare-fun res!1193451 () Bool)

(assert (=> d!832537 (=> res!1193451 e!1821721)))

(assert (=> d!832537 (= res!1193451 ((_ is ElementMatch!8747) lt!1019247))))

(assert (=> d!832537 (= (validRegex!3525 lt!1019247) e!1821721)))

(declare-fun bm!186566 () Bool)

(declare-fun call!186572 () Bool)

(assert (=> bm!186566 (= call!186570 call!186572)))

(declare-fun b!2879195 () Bool)

(assert (=> b!2879195 (= e!1821718 call!186570)))

(declare-fun b!2879196 () Bool)

(declare-fun e!1821717 () Bool)

(assert (=> b!2879196 (= e!1821717 call!186572)))

(declare-fun bm!186567 () Bool)

(assert (=> bm!186567 (= call!186572 (validRegex!3525 (ite c!467193 (reg!9076 lt!1019247) (ite c!467194 (regOne!18007 lt!1019247) (regTwo!18006 lt!1019247)))))))

(declare-fun b!2879197 () Bool)

(assert (=> b!2879197 (= e!1821720 e!1821717)))

(declare-fun res!1193452 () Bool)

(assert (=> b!2879197 (= res!1193452 (not (nullable!2697 (reg!9076 lt!1019247))))))

(assert (=> b!2879197 (=> (not res!1193452) (not e!1821717))))

(assert (= (and d!832537 (not res!1193451)) b!2879189))

(assert (= (and b!2879189 c!467193) b!2879197))

(assert (= (and b!2879189 (not c!467193)) b!2879191))

(assert (= (and b!2879197 res!1193452) b!2879196))

(assert (= (and b!2879191 c!467194) b!2879194))

(assert (= (and b!2879191 (not c!467194)) b!2879193))

(assert (= (and b!2879194 res!1193453) b!2879190))

(assert (= (and b!2879193 (not res!1193454)) b!2879192))

(assert (= (and b!2879192 res!1193455) b!2879195))

(assert (= (or b!2879190 b!2879192) bm!186565))

(assert (= (or b!2879194 b!2879195) bm!186566))

(assert (= (or b!2879196 bm!186566) bm!186567))

(declare-fun m!3296467 () Bool)

(assert (=> bm!186565 m!3296467))

(declare-fun m!3296469 () Bool)

(assert (=> bm!186567 m!3296469))

(declare-fun m!3296471 () Bool)

(assert (=> b!2879197 m!3296471))

(assert (=> d!832333 d!832537))

(assert (=> d!832333 d!832217))

(declare-fun d!832539 () Bool)

(declare-fun c!467195 () Bool)

(assert (=> d!832539 (= c!467195 (isEmpty!18737 (tail!4579 (tail!4579 (get!10347 lt!1019148)))))))

(declare-fun e!1821723 () Bool)

(assert (=> d!832539 (= (matchZipper!489 (derivationStepZipper!481 (derivationStepZipper!481 lt!1019145 (head!6354 (get!10347 lt!1019148))) (head!6354 (tail!4579 (get!10347 lt!1019148)))) (tail!4579 (tail!4579 (get!10347 lt!1019148)))) e!1821723)))

(declare-fun b!2879198 () Bool)

(assert (=> b!2879198 (= e!1821723 (nullableZipper!725 (derivationStepZipper!481 (derivationStepZipper!481 lt!1019145 (head!6354 (get!10347 lt!1019148))) (head!6354 (tail!4579 (get!10347 lt!1019148))))))))

(declare-fun b!2879199 () Bool)

(assert (=> b!2879199 (= e!1821723 (matchZipper!489 (derivationStepZipper!481 (derivationStepZipper!481 (derivationStepZipper!481 lt!1019145 (head!6354 (get!10347 lt!1019148))) (head!6354 (tail!4579 (get!10347 lt!1019148)))) (head!6354 (tail!4579 (tail!4579 (get!10347 lt!1019148))))) (tail!4579 (tail!4579 (tail!4579 (get!10347 lt!1019148))))))))

(assert (= (and d!832539 c!467195) b!2879198))

(assert (= (and d!832539 (not c!467195)) b!2879199))

(assert (=> d!832539 m!3296081))

(declare-fun m!3296473 () Bool)

(assert (=> d!832539 m!3296473))

(assert (=> b!2879198 m!3296079))

(declare-fun m!3296475 () Bool)

(assert (=> b!2879198 m!3296475))

(assert (=> b!2879199 m!3296081))

(declare-fun m!3296477 () Bool)

(assert (=> b!2879199 m!3296477))

(assert (=> b!2879199 m!3296079))

(assert (=> b!2879199 m!3296477))

(declare-fun m!3296479 () Bool)

(assert (=> b!2879199 m!3296479))

(assert (=> b!2879199 m!3296081))

(declare-fun m!3296481 () Bool)

(assert (=> b!2879199 m!3296481))

(assert (=> b!2879199 m!3296479))

(assert (=> b!2879199 m!3296481))

(declare-fun m!3296483 () Bool)

(assert (=> b!2879199 m!3296483))

(assert (=> b!2878788 d!832539))

(declare-fun bs!523162 () Bool)

(declare-fun d!832541 () Bool)

(assert (= bs!523162 (and d!832541 d!832315)))

(declare-fun lambda!107434 () Int)

(assert (=> bs!523162 (= (= (head!6354 (tail!4579 (get!10347 lt!1019148))) (head!6354 (v!34547 lt!1019148))) (= lambda!107434 lambda!107415))))

(declare-fun bs!523163 () Bool)

(assert (= bs!523163 (and d!832541 d!832375)))

(assert (=> bs!523163 (= (= (head!6354 (tail!4579 (get!10347 lt!1019148))) (head!6354 (v!34547 lt!1019141))) (= lambda!107434 lambda!107423))))

(declare-fun bs!523164 () Bool)

(assert (= bs!523164 (and d!832541 d!832391)))

(assert (=> bs!523164 (= (= (head!6354 (tail!4579 (get!10347 lt!1019148))) (head!6354 (tail!4579 (v!34547 lt!1019141)))) (= lambda!107434 lambda!107425))))

(declare-fun bs!523165 () Bool)

(assert (= bs!523165 (and d!832541 d!832431)))

(assert (=> bs!523165 (= (= (head!6354 (tail!4579 (get!10347 lt!1019148))) (head!6354 (tail!4579 (v!34547 lt!1019148)))) (= lambda!107434 lambda!107426))))

(declare-fun bs!523166 () Bool)

(assert (= bs!523166 (and d!832541 d!832355)))

(assert (=> bs!523166 (= (= (head!6354 (tail!4579 (get!10347 lt!1019148))) (head!6354 (get!10347 lt!1019148))) (= lambda!107434 lambda!107418))))

(assert (=> d!832541 true))

(assert (=> d!832541 (= (derivationStepZipper!481 (derivationStepZipper!481 lt!1019145 (head!6354 (get!10347 lt!1019148))) (head!6354 (tail!4579 (get!10347 lt!1019148)))) (flatMap!227 (derivationStepZipper!481 lt!1019145 (head!6354 (get!10347 lt!1019148))) lambda!107434))))

(declare-fun bs!523167 () Bool)

(assert (= bs!523167 d!832541))

(assert (=> bs!523167 m!3295703))

(declare-fun m!3296485 () Bool)

(assert (=> bs!523167 m!3296485))

(assert (=> b!2878788 d!832541))

(declare-fun d!832543 () Bool)

(assert (=> d!832543 (= (head!6354 (tail!4579 (get!10347 lt!1019148))) (h!39828 (tail!4579 (get!10347 lt!1019148))))))

(assert (=> b!2878788 d!832543))

(declare-fun d!832545 () Bool)

(assert (=> d!832545 (= (tail!4579 (tail!4579 (get!10347 lt!1019148))) (t!233575 (tail!4579 (get!10347 lt!1019148))))))

(assert (=> b!2878788 d!832545))

(assert (=> b!2878774 d!832527))

(declare-fun d!832547 () Bool)

(assert (=> d!832547 (= (flatMap!227 lt!1019145 lambda!107415) (choose!17025 lt!1019145 lambda!107415))))

(declare-fun bs!523168 () Bool)

(assert (= bs!523168 d!832547))

(declare-fun m!3296487 () Bool)

(assert (=> bs!523168 m!3296487))

(assert (=> d!832315 d!832547))

(assert (=> d!832345 d!832341))

(assert (=> d!832345 d!832339))

(assert (=> d!832345 d!832181))

(declare-fun d!832549 () Bool)

(declare-fun lt!1019303 () Bool)

(declare-fun exists!1185 (List!34534 Int) Bool)

(declare-fun toList!2029 ((InoxSet Context!5414)) List!34534)

(assert (=> d!832549 (= lt!1019303 (exists!1185 (toList!2029 lt!1019147) lambda!107424))))

(declare-fun choose!17027 ((InoxSet Context!5414) Int) Bool)

(assert (=> d!832549 (= lt!1019303 (choose!17027 lt!1019147 lambda!107424))))

(assert (=> d!832549 (= (exists!1184 lt!1019147 lambda!107424) lt!1019303)))

(declare-fun bs!523169 () Bool)

(assert (= bs!523169 d!832549))

(declare-fun m!3296489 () Bool)

(assert (=> bs!523169 m!3296489))

(assert (=> bs!523169 m!3296489))

(declare-fun m!3296491 () Bool)

(assert (=> bs!523169 m!3296491))

(declare-fun m!3296493 () Bool)

(assert (=> bs!523169 m!3296493))

(assert (=> d!832377 d!832549))

(declare-fun e!1821725 () Bool)

(declare-fun lt!1019304 () List!34532)

(declare-fun b!2879203 () Bool)

(assert (=> b!2879203 (= e!1821725 (or (not (= (v!34547 lt!1019202) Nil!34408)) (= lt!1019304 (t!233575 (v!34547 lt!1019201)))))))

(declare-fun b!2879201 () Bool)

(declare-fun e!1821724 () List!34532)

(assert (=> b!2879201 (= e!1821724 (Cons!34408 (h!39828 (t!233575 (v!34547 lt!1019201))) (++!8183 (t!233575 (t!233575 (v!34547 lt!1019201))) (v!34547 lt!1019202))))))

(declare-fun d!832551 () Bool)

(assert (=> d!832551 e!1821725))

(declare-fun res!1193457 () Bool)

(assert (=> d!832551 (=> (not res!1193457) (not e!1821725))))

(assert (=> d!832551 (= res!1193457 (= (content!4711 lt!1019304) ((_ map or) (content!4711 (t!233575 (v!34547 lt!1019201))) (content!4711 (v!34547 lt!1019202)))))))

(assert (=> d!832551 (= lt!1019304 e!1821724)))

(declare-fun c!467196 () Bool)

(assert (=> d!832551 (= c!467196 ((_ is Nil!34408) (t!233575 (v!34547 lt!1019201))))))

(assert (=> d!832551 (= (++!8183 (t!233575 (v!34547 lt!1019201)) (v!34547 lt!1019202)) lt!1019304)))

(declare-fun b!2879200 () Bool)

(assert (=> b!2879200 (= e!1821724 (v!34547 lt!1019202))))

(declare-fun b!2879202 () Bool)

(declare-fun res!1193456 () Bool)

(assert (=> b!2879202 (=> (not res!1193456) (not e!1821725))))

(assert (=> b!2879202 (= res!1193456 (= (size!26330 lt!1019304) (+ (size!26330 (t!233575 (v!34547 lt!1019201))) (size!26330 (v!34547 lt!1019202)))))))

(assert (= (and d!832551 c!467196) b!2879200))

(assert (= (and d!832551 (not c!467196)) b!2879201))

(assert (= (and d!832551 res!1193457) b!2879202))

(assert (= (and b!2879202 res!1193456) b!2879203))

(declare-fun m!3296495 () Bool)

(assert (=> b!2879201 m!3296495))

(declare-fun m!3296497 () Bool)

(assert (=> d!832551 m!3296497))

(assert (=> d!832551 m!3296389))

(assert (=> d!832551 m!3296005))

(declare-fun m!3296499 () Bool)

(assert (=> b!2879202 m!3296499))

(assert (=> b!2879202 m!3296291))

(assert (=> b!2879202 m!3296011))

(assert (=> b!2878732 d!832551))

(declare-fun call!186575 () Regex!8747)

(declare-fun c!467198 () Bool)

(declare-fun bm!186568 () Bool)

(assert (=> bm!186568 (= call!186575 (derivativeStep!2330 (ite c!467198 (regTwo!18007 (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regTwo!18006 (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))) (head!6354 (get!10347 lt!1019141))))))

(declare-fun b!2879204 () Bool)

(declare-fun e!1821728 () Regex!8747)

(declare-fun call!186573 () Regex!8747)

(assert (=> b!2879204 (= e!1821728 (Union!8747 call!186573 call!186575))))

(declare-fun b!2879205 () Bool)

(declare-fun e!1821729 () Regex!8747)

(assert (=> b!2879205 (= e!1821729 EmptyLang!8747)))

(declare-fun d!832553 () Bool)

(declare-fun lt!1019305 () Regex!8747)

(assert (=> d!832553 (validRegex!3525 lt!1019305)))

(assert (=> d!832553 (= lt!1019305 e!1821729)))

(declare-fun c!467201 () Bool)

(assert (=> d!832553 (= c!467201 (or ((_ is EmptyExpr!8747) (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) ((_ is EmptyLang!8747) (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))))))

(assert (=> d!832553 (validRegex!3525 (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))))

(assert (=> d!832553 (= (derivativeStep!2330 (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))) (head!6354 (get!10347 lt!1019141))) lt!1019305)))

(declare-fun b!2879206 () Bool)

(declare-fun e!1821727 () Regex!8747)

(assert (=> b!2879206 (= e!1821728 e!1821727)))

(declare-fun c!467199 () Bool)

(assert (=> b!2879206 (= c!467199 ((_ is Star!8747) (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun e!1821726 () Regex!8747)

(declare-fun b!2879207 () Bool)

(declare-fun call!186574 () Regex!8747)

(assert (=> b!2879207 (= e!1821726 (Union!8747 (Concat!14068 call!186574 (regTwo!18006 (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))) EmptyLang!8747))))

(declare-fun b!2879208 () Bool)

(declare-fun e!1821730 () Regex!8747)

(assert (=> b!2879208 (= e!1821729 e!1821730)))

(declare-fun c!467200 () Bool)

(assert (=> b!2879208 (= c!467200 ((_ is ElementMatch!8747) (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2879209 () Bool)

(assert (=> b!2879209 (= e!1821730 (ite (= (head!6354 (get!10347 lt!1019141)) (c!466810 (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))) EmptyExpr!8747 EmptyLang!8747))))

(declare-fun call!186576 () Regex!8747)

(declare-fun b!2879210 () Bool)

(assert (=> b!2879210 (= e!1821727 (Concat!14068 call!186576 (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))

(declare-fun b!2879211 () Bool)

(assert (=> b!2879211 (= e!1821726 (Union!8747 (Concat!14068 call!186574 (regTwo!18006 (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))) call!186575))))

(declare-fun b!2879212 () Bool)

(assert (=> b!2879212 (= c!467198 ((_ is Union!8747) (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))))

(assert (=> b!2879212 (= e!1821730 e!1821728)))

(declare-fun bm!186569 () Bool)

(assert (=> bm!186569 (= call!186573 (derivativeStep!2330 (ite c!467198 (regOne!18007 (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (ite c!467199 (reg!9076 (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))))) (head!6354 (get!10347 lt!1019141))))))

(declare-fun bm!186570 () Bool)

(assert (=> bm!186570 (= call!186576 call!186573)))

(declare-fun bm!186571 () Bool)

(assert (=> bm!186571 (= call!186574 call!186576)))

(declare-fun b!2879213 () Bool)

(declare-fun c!467197 () Bool)

(assert (=> b!2879213 (= c!467197 (nullable!2697 (regOne!18006 (ite c!467013 (regTwo!18007 (h!39829 (exprs!3207 c!7184))) (regTwo!18006 (h!39829 (exprs!3207 c!7184)))))))))

(assert (=> b!2879213 (= e!1821727 e!1821726)))

(assert (= (and d!832553 c!467201) b!2879205))

(assert (= (and d!832553 (not c!467201)) b!2879208))

(assert (= (and b!2879208 c!467200) b!2879209))

(assert (= (and b!2879208 (not c!467200)) b!2879212))

(assert (= (and b!2879212 c!467198) b!2879204))

(assert (= (and b!2879212 (not c!467198)) b!2879206))

(assert (= (and b!2879206 c!467199) b!2879210))

(assert (= (and b!2879206 (not c!467199)) b!2879213))

(assert (= (and b!2879213 c!467197) b!2879211))

(assert (= (and b!2879213 (not c!467197)) b!2879207))

(assert (= (or b!2879211 b!2879207) bm!186571))

(assert (= (or b!2879210 bm!186571) bm!186570))

(assert (= (or b!2879204 bm!186570) bm!186569))

(assert (= (or b!2879204 b!2879211) bm!186568))

(assert (=> bm!186568 m!3295715))

(declare-fun m!3296501 () Bool)

(assert (=> bm!186568 m!3296501))

(declare-fun m!3296503 () Bool)

(assert (=> d!832553 m!3296503))

(declare-fun m!3296505 () Bool)

(assert (=> d!832553 m!3296505))

(assert (=> bm!186569 m!3295715))

(declare-fun m!3296507 () Bool)

(assert (=> bm!186569 m!3296507))

(declare-fun m!3296509 () Bool)

(assert (=> b!2879213 m!3296509))

(assert (=> bm!186487 d!832553))

(declare-fun d!832555 () Bool)

(declare-fun lt!1019306 () Bool)

(assert (=> d!832555 (= lt!1019306 (exists!1185 (toList!2029 lt!1019145) lambda!107422))))

(assert (=> d!832555 (= lt!1019306 (choose!17027 lt!1019145 lambda!107422))))

(assert (=> d!832555 (= (exists!1184 lt!1019145 lambda!107422) lt!1019306)))

(declare-fun bs!523170 () Bool)

(assert (= bs!523170 d!832555))

(declare-fun m!3296511 () Bool)

(assert (=> bs!523170 m!3296511))

(assert (=> bs!523170 m!3296511))

(declare-fun m!3296513 () Bool)

(assert (=> bs!523170 m!3296513))

(declare-fun m!3296515 () Bool)

(assert (=> bs!523170 m!3296515))

(assert (=> d!832365 d!832555))

(assert (=> b!2878575 d!832261))

(declare-fun d!832557 () Bool)

(declare-fun c!467202 () Bool)

(assert (=> d!832557 (= c!467202 ((_ is EmptyExpr!8747) (ite c!467061 (regOne!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun e!1821735 () Option!6422)

(assert (=> d!832557 (= (getLanguageWitness!446 (ite c!467061 (regOne!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) e!1821735)))

(declare-fun b!2879214 () Bool)

(declare-fun e!1821733 () Option!6422)

(assert (=> b!2879214 (= e!1821733 None!6421)))

(declare-fun b!2879215 () Bool)

(declare-fun e!1821731 () Option!6422)

(declare-fun lt!1019307 () Option!6422)

(declare-fun lt!1019308 () Option!6422)

(assert (=> b!2879215 (= e!1821731 (Some!6421 (++!8183 (v!34547 lt!1019307) (v!34547 lt!1019308))))))

(declare-fun b!2879216 () Bool)

(declare-fun e!1821738 () Option!6422)

(declare-fun call!186577 () Option!6422)

(assert (=> b!2879216 (= e!1821738 call!186577)))

(declare-fun b!2879217 () Bool)

(assert (=> b!2879217 (= e!1821735 (Some!6421 Nil!34408))))

(declare-fun b!2879218 () Bool)

(assert (=> b!2879218 (= e!1821731 None!6421)))

(declare-fun b!2879219 () Bool)

(declare-fun e!1821737 () Option!6422)

(assert (=> b!2879219 (= e!1821737 e!1821738)))

(declare-fun lt!1019309 () Option!6422)

(declare-fun call!186578 () Option!6422)

(assert (=> b!2879219 (= lt!1019309 call!186578)))

(declare-fun c!467209 () Bool)

(assert (=> b!2879219 (= c!467209 ((_ is Some!6421) lt!1019309))))

(declare-fun b!2879220 () Bool)

(assert (=> b!2879220 (= e!1821738 lt!1019309)))

(declare-fun bm!186572 () Bool)

(declare-fun c!467206 () Bool)

(assert (=> bm!186572 (= call!186577 (getLanguageWitness!446 (ite c!467206 (regTwo!18007 (ite c!467061 (regOne!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) (regTwo!18006 (ite c!467061 (regOne!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))))

(declare-fun b!2879221 () Bool)

(declare-fun e!1821736 () Option!6422)

(declare-fun e!1821732 () Option!6422)

(assert (=> b!2879221 (= e!1821736 e!1821732)))

(declare-fun c!467203 () Bool)

(assert (=> b!2879221 (= c!467203 ((_ is Star!8747) (ite c!467061 (regOne!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2879222 () Bool)

(declare-fun c!467208 () Bool)

(assert (=> b!2879222 (= c!467208 ((_ is Some!6421) lt!1019308))))

(assert (=> b!2879222 (= lt!1019308 call!186577)))

(assert (=> b!2879222 (= e!1821733 e!1821731)))

(declare-fun b!2879223 () Bool)

(declare-fun e!1821734 () Option!6422)

(assert (=> b!2879223 (= e!1821734 None!6421)))

(declare-fun bm!186573 () Bool)

(assert (=> bm!186573 (= call!186578 (getLanguageWitness!446 (ite c!467206 (regOne!18007 (ite c!467061 (regOne!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) (regOne!18006 (ite c!467061 (regOne!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))))

(declare-fun b!2879224 () Bool)

(assert (=> b!2879224 (= e!1821732 (Some!6421 Nil!34408))))

(declare-fun b!2879225 () Bool)

(assert (=> b!2879225 (= e!1821737 e!1821733)))

(assert (=> b!2879225 (= lt!1019307 call!186578)))

(declare-fun c!467205 () Bool)

(assert (=> b!2879225 (= c!467205 ((_ is Some!6421) lt!1019307))))

(declare-fun b!2879226 () Bool)

(assert (=> b!2879226 (= e!1821735 e!1821734)))

(declare-fun c!467207 () Bool)

(assert (=> b!2879226 (= c!467207 ((_ is EmptyLang!8747) (ite c!467061 (regOne!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(declare-fun b!2879227 () Bool)

(declare-fun c!467204 () Bool)

(assert (=> b!2879227 (= c!467204 ((_ is ElementMatch!8747) (ite c!467061 (regOne!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(assert (=> b!2879227 (= e!1821734 e!1821736)))

(declare-fun b!2879228 () Bool)

(assert (=> b!2879228 (= c!467206 ((_ is Union!8747) (ite c!467061 (regOne!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))))))

(assert (=> b!2879228 (= e!1821732 e!1821737)))

(declare-fun b!2879229 () Bool)

(assert (=> b!2879229 (= e!1821736 (Some!6421 (Cons!34408 (c!466810 (ite c!467061 (regOne!18007 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) (regOne!18006 (ite c!466911 (regOne!18007 (h!39829 (exprs!3207 c!7184))) (regOne!18006 (h!39829 (exprs!3207 c!7184))))))) Nil!34408)))))

(assert (= (and d!832557 c!467202) b!2879217))

(assert (= (and d!832557 (not c!467202)) b!2879226))

(assert (= (and b!2879226 c!467207) b!2879223))

(assert (= (and b!2879226 (not c!467207)) b!2879227))

(assert (= (and b!2879227 c!467204) b!2879229))

(assert (= (and b!2879227 (not c!467204)) b!2879221))

(assert (= (and b!2879221 c!467203) b!2879224))

(assert (= (and b!2879221 (not c!467203)) b!2879228))

(assert (= (and b!2879228 c!467206) b!2879219))

(assert (= (and b!2879228 (not c!467206)) b!2879225))

(assert (= (and b!2879219 c!467209) b!2879220))

(assert (= (and b!2879219 (not c!467209)) b!2879216))

(assert (= (and b!2879225 c!467205) b!2879222))

(assert (= (and b!2879225 (not c!467205)) b!2879214))

(assert (= (and b!2879222 c!467208) b!2879215))

(assert (= (and b!2879222 (not c!467208)) b!2879218))

(assert (= (or b!2879216 b!2879222) bm!186572))

(assert (= (or b!2879219 b!2879225) bm!186573))

(declare-fun m!3296517 () Bool)

(assert (=> b!2879215 m!3296517))

(declare-fun m!3296519 () Bool)

(assert (=> bm!186572 m!3296519))

(declare-fun m!3296521 () Bool)

(assert (=> bm!186573 m!3296521))

(assert (=> bm!186501 d!832557))

(declare-fun d!832559 () Bool)

(declare-fun c!467210 () Bool)

(assert (=> d!832559 (= c!467210 (isEmpty!18737 (tail!4579 (get!10347 (getLanguageWitness!445 lt!1019143)))))))

(declare-fun e!1821739 () Bool)

(assert (=> d!832559 (= (matchZipper!489 (derivationStepZipper!481 (store ((as const (Array Context!5414 Bool)) false) lt!1019143 true) (head!6354 (get!10347 (getLanguageWitness!445 lt!1019143)))) (tail!4579 (get!10347 (getLanguageWitness!445 lt!1019143)))) e!1821739)))

(declare-fun b!2879230 () Bool)

(assert (=> b!2879230 (= e!1821739 (nullableZipper!725 (derivationStepZipper!481 (store ((as const (Array Context!5414 Bool)) false) lt!1019143 true) (head!6354 (get!10347 (getLanguageWitness!445 lt!1019143))))))))

(declare-fun b!2879231 () Bool)

(assert (=> b!2879231 (= e!1821739 (matchZipper!489 (derivationStepZipper!481 (derivationStepZipper!481 (store ((as const (Array Context!5414 Bool)) false) lt!1019143 true) (head!6354 (get!10347 (getLanguageWitness!445 lt!1019143)))) (head!6354 (tail!4579 (get!10347 (getLanguageWitness!445 lt!1019143))))) (tail!4579 (tail!4579 (get!10347 (getLanguageWitness!445 lt!1019143))))))))

(assert (= (and d!832559 c!467210) b!2879230))

(assert (= (and d!832559 (not c!467210)) b!2879231))

(assert (=> d!832559 m!3296047))

(declare-fun m!3296523 () Bool)

(assert (=> d!832559 m!3296523))

(assert (=> b!2879230 m!3296045))

(declare-fun m!3296525 () Bool)

(assert (=> b!2879230 m!3296525))

(assert (=> b!2879231 m!3296047))

(declare-fun m!3296527 () Bool)

(assert (=> b!2879231 m!3296527))

(assert (=> b!2879231 m!3296045))

(assert (=> b!2879231 m!3296527))

(declare-fun m!3296529 () Bool)

(assert (=> b!2879231 m!3296529))

(assert (=> b!2879231 m!3296047))

(declare-fun m!3296531 () Bool)

(assert (=> b!2879231 m!3296531))

(assert (=> b!2879231 m!3296529))

(assert (=> b!2879231 m!3296531))

(declare-fun m!3296533 () Bool)

(assert (=> b!2879231 m!3296533))

(assert (=> b!2878776 d!832559))

(declare-fun bs!523171 () Bool)

(declare-fun d!832561 () Bool)

(assert (= bs!523171 (and d!832561 d!832315)))

(declare-fun lambda!107435 () Int)

(assert (=> bs!523171 (= (= (head!6354 (get!10347 (getLanguageWitness!445 lt!1019143))) (head!6354 (v!34547 lt!1019148))) (= lambda!107435 lambda!107415))))

(declare-fun bs!523172 () Bool)

(assert (= bs!523172 (and d!832561 d!832375)))

(assert (=> bs!523172 (= (= (head!6354 (get!10347 (getLanguageWitness!445 lt!1019143))) (head!6354 (v!34547 lt!1019141))) (= lambda!107435 lambda!107423))))

(declare-fun bs!523173 () Bool)

(assert (= bs!523173 (and d!832561 d!832391)))

(assert (=> bs!523173 (= (= (head!6354 (get!10347 (getLanguageWitness!445 lt!1019143))) (head!6354 (tail!4579 (v!34547 lt!1019141)))) (= lambda!107435 lambda!107425))))

(declare-fun bs!523174 () Bool)

(assert (= bs!523174 (and d!832561 d!832431)))

(assert (=> bs!523174 (= (= (head!6354 (get!10347 (getLanguageWitness!445 lt!1019143))) (head!6354 (tail!4579 (v!34547 lt!1019148)))) (= lambda!107435 lambda!107426))))

(declare-fun bs!523175 () Bool)

(assert (= bs!523175 (and d!832561 d!832541)))

(assert (=> bs!523175 (= (= (head!6354 (get!10347 (getLanguageWitness!445 lt!1019143))) (head!6354 (tail!4579 (get!10347 lt!1019148)))) (= lambda!107435 lambda!107434))))

(declare-fun bs!523176 () Bool)

(assert (= bs!523176 (and d!832561 d!832355)))

(assert (=> bs!523176 (= (= (head!6354 (get!10347 (getLanguageWitness!445 lt!1019143))) (head!6354 (get!10347 lt!1019148))) (= lambda!107435 lambda!107418))))

(assert (=> d!832561 true))

(assert (=> d!832561 (= (derivationStepZipper!481 (store ((as const (Array Context!5414 Bool)) false) lt!1019143 true) (head!6354 (get!10347 (getLanguageWitness!445 lt!1019143)))) (flatMap!227 (store ((as const (Array Context!5414 Bool)) false) lt!1019143 true) lambda!107435))))

(declare-fun bs!523177 () Bool)

(assert (= bs!523177 d!832561))

(assert (=> bs!523177 m!3295545))

(declare-fun m!3296535 () Bool)

(assert (=> bs!523177 m!3296535))

(assert (=> b!2878776 d!832561))

(declare-fun d!832563 () Bool)

(assert (=> d!832563 (= (head!6354 (get!10347 (getLanguageWitness!445 lt!1019143))) (h!39828 (get!10347 (getLanguageWitness!445 lt!1019143))))))

(assert (=> b!2878776 d!832563))

(declare-fun d!832565 () Bool)

(assert (=> d!832565 (= (tail!4579 (get!10347 (getLanguageWitness!445 lt!1019143))) (t!233575 (get!10347 (getLanguageWitness!445 lt!1019143))))))

(assert (=> b!2878776 d!832565))

(declare-fun b!2879232 () Bool)

(declare-fun e!1821740 () Bool)

(assert (=> b!2879232 (= e!1821740 tp_is_empty!15091)))

(declare-fun b!2879235 () Bool)

(declare-fun tp!923992 () Bool)

(declare-fun tp!923995 () Bool)

(assert (=> b!2879235 (= e!1821740 (and tp!923992 tp!923995))))

(declare-fun b!2879234 () Bool)

(declare-fun tp!923994 () Bool)

(assert (=> b!2879234 (= e!1821740 tp!923994)))

(declare-fun b!2879233 () Bool)

(declare-fun tp!923993 () Bool)

(declare-fun tp!923991 () Bool)

(assert (=> b!2879233 (= e!1821740 (and tp!923993 tp!923991))))

(assert (=> b!2878843 (= tp!923987 e!1821740)))

(assert (= (and b!2878843 ((_ is ElementMatch!8747) (reg!9076 (h!39829 (exprs!3207 c!7184))))) b!2879232))

(assert (= (and b!2878843 ((_ is Concat!14068) (reg!9076 (h!39829 (exprs!3207 c!7184))))) b!2879233))

(assert (= (and b!2878843 ((_ is Star!8747) (reg!9076 (h!39829 (exprs!3207 c!7184))))) b!2879234))

(assert (= (and b!2878843 ((_ is Union!8747) (reg!9076 (h!39829 (exprs!3207 c!7184))))) b!2879235))

(declare-fun b!2879236 () Bool)

(declare-fun e!1821741 () Bool)

(assert (=> b!2879236 (= e!1821741 tp_is_empty!15091)))

(declare-fun b!2879239 () Bool)

(declare-fun tp!923997 () Bool)

(declare-fun tp!924000 () Bool)

(assert (=> b!2879239 (= e!1821741 (and tp!923997 tp!924000))))

(declare-fun b!2879238 () Bool)

(declare-fun tp!923999 () Bool)

(assert (=> b!2879238 (= e!1821741 tp!923999)))

(declare-fun b!2879237 () Bool)

(declare-fun tp!923998 () Bool)

(declare-fun tp!923996 () Bool)

(assert (=> b!2879237 (= e!1821741 (and tp!923998 tp!923996))))

(assert (=> b!2878845 (= tp!923989 e!1821741)))

(assert (= (and b!2878845 ((_ is ElementMatch!8747) (h!39829 (t!233576 (exprs!3207 c!7184))))) b!2879236))

(assert (= (and b!2878845 ((_ is Concat!14068) (h!39829 (t!233576 (exprs!3207 c!7184))))) b!2879237))

(assert (= (and b!2878845 ((_ is Star!8747) (h!39829 (t!233576 (exprs!3207 c!7184))))) b!2879238))

(assert (= (and b!2878845 ((_ is Union!8747) (h!39829 (t!233576 (exprs!3207 c!7184))))) b!2879239))

(declare-fun b!2879240 () Bool)

(declare-fun e!1821742 () Bool)

(declare-fun tp!924001 () Bool)

(declare-fun tp!924002 () Bool)

(assert (=> b!2879240 (= e!1821742 (and tp!924001 tp!924002))))

(assert (=> b!2878845 (= tp!923990 e!1821742)))

(assert (= (and b!2878845 ((_ is Cons!34409) (t!233576 (t!233576 (exprs!3207 c!7184))))) b!2879240))

(declare-fun b!2879241 () Bool)

(declare-fun e!1821743 () Bool)

(assert (=> b!2879241 (= e!1821743 tp_is_empty!15091)))

(declare-fun b!2879244 () Bool)

(declare-fun tp!924004 () Bool)

(declare-fun tp!924007 () Bool)

(assert (=> b!2879244 (= e!1821743 (and tp!924004 tp!924007))))

(declare-fun b!2879243 () Bool)

(declare-fun tp!924006 () Bool)

(assert (=> b!2879243 (= e!1821743 tp!924006)))

(declare-fun b!2879242 () Bool)

(declare-fun tp!924005 () Bool)

(declare-fun tp!924003 () Bool)

(assert (=> b!2879242 (= e!1821743 (and tp!924005 tp!924003))))

(assert (=> b!2878844 (= tp!923985 e!1821743)))

(assert (= (and b!2878844 ((_ is ElementMatch!8747) (regOne!18007 (h!39829 (exprs!3207 c!7184))))) b!2879241))

(assert (= (and b!2878844 ((_ is Concat!14068) (regOne!18007 (h!39829 (exprs!3207 c!7184))))) b!2879242))

(assert (= (and b!2878844 ((_ is Star!8747) (regOne!18007 (h!39829 (exprs!3207 c!7184))))) b!2879243))

(assert (= (and b!2878844 ((_ is Union!8747) (regOne!18007 (h!39829 (exprs!3207 c!7184))))) b!2879244))

(declare-fun b!2879245 () Bool)

(declare-fun e!1821744 () Bool)

(assert (=> b!2879245 (= e!1821744 tp_is_empty!15091)))

(declare-fun b!2879248 () Bool)

(declare-fun tp!924009 () Bool)

(declare-fun tp!924012 () Bool)

(assert (=> b!2879248 (= e!1821744 (and tp!924009 tp!924012))))

(declare-fun b!2879247 () Bool)

(declare-fun tp!924011 () Bool)

(assert (=> b!2879247 (= e!1821744 tp!924011)))

(declare-fun b!2879246 () Bool)

(declare-fun tp!924010 () Bool)

(declare-fun tp!924008 () Bool)

(assert (=> b!2879246 (= e!1821744 (and tp!924010 tp!924008))))

(assert (=> b!2878844 (= tp!923988 e!1821744)))

(assert (= (and b!2878844 ((_ is ElementMatch!8747) (regTwo!18007 (h!39829 (exprs!3207 c!7184))))) b!2879245))

(assert (= (and b!2878844 ((_ is Concat!14068) (regTwo!18007 (h!39829 (exprs!3207 c!7184))))) b!2879246))

(assert (= (and b!2878844 ((_ is Star!8747) (regTwo!18007 (h!39829 (exprs!3207 c!7184))))) b!2879247))

(assert (= (and b!2878844 ((_ is Union!8747) (regTwo!18007 (h!39829 (exprs!3207 c!7184))))) b!2879248))

(declare-fun b!2879249 () Bool)

(declare-fun e!1821745 () Bool)

(assert (=> b!2879249 (= e!1821745 tp_is_empty!15091)))

(declare-fun b!2879252 () Bool)

(declare-fun tp!924014 () Bool)

(declare-fun tp!924017 () Bool)

(assert (=> b!2879252 (= e!1821745 (and tp!924014 tp!924017))))

(declare-fun b!2879251 () Bool)

(declare-fun tp!924016 () Bool)

(assert (=> b!2879251 (= e!1821745 tp!924016)))

(declare-fun b!2879250 () Bool)

(declare-fun tp!924015 () Bool)

(declare-fun tp!924013 () Bool)

(assert (=> b!2879250 (= e!1821745 (and tp!924015 tp!924013))))

(assert (=> b!2878842 (= tp!923986 e!1821745)))

(assert (= (and b!2878842 ((_ is ElementMatch!8747) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) b!2879249))

(assert (= (and b!2878842 ((_ is Concat!14068) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) b!2879250))

(assert (= (and b!2878842 ((_ is Star!8747) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) b!2879251))

(assert (= (and b!2878842 ((_ is Union!8747) (regOne!18006 (h!39829 (exprs!3207 c!7184))))) b!2879252))

(declare-fun b!2879253 () Bool)

(declare-fun e!1821746 () Bool)

(assert (=> b!2879253 (= e!1821746 tp_is_empty!15091)))

(declare-fun b!2879256 () Bool)

(declare-fun tp!924019 () Bool)

(declare-fun tp!924022 () Bool)

(assert (=> b!2879256 (= e!1821746 (and tp!924019 tp!924022))))

(declare-fun b!2879255 () Bool)

(declare-fun tp!924021 () Bool)

(assert (=> b!2879255 (= e!1821746 tp!924021)))

(declare-fun b!2879254 () Bool)

(declare-fun tp!924020 () Bool)

(declare-fun tp!924018 () Bool)

(assert (=> b!2879254 (= e!1821746 (and tp!924020 tp!924018))))

(assert (=> b!2878842 (= tp!923984 e!1821746)))

(assert (= (and b!2878842 ((_ is ElementMatch!8747) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) b!2879253))

(assert (= (and b!2878842 ((_ is Concat!14068) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) b!2879254))

(assert (= (and b!2878842 ((_ is Star!8747) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) b!2879255))

(assert (= (and b!2878842 ((_ is Union!8747) (regTwo!18006 (h!39829 (exprs!3207 c!7184))))) b!2879256))

(declare-fun b_lambda!86243 () Bool)

(assert (= b_lambda!86239 (or d!832185 b_lambda!86243)))

(declare-fun bs!523178 () Bool)

(declare-fun d!832567 () Bool)

(assert (= bs!523178 (and d!832567 d!832185)))

(assert (=> bs!523178 (= (dynLambda!14329 lambda!107394 (h!39829 (t!233576 (exprs!3207 c!7184)))) (validRegex!3525 (h!39829 (t!233576 (exprs!3207 c!7184)))))))

(declare-fun m!3296537 () Bool)

(assert (=> bs!523178 m!3296537))

(assert (=> b!2878986 d!832567))

(declare-fun b_lambda!86245 () Bool)

(assert (= b_lambda!86235 (or d!832259 b_lambda!86245)))

(declare-fun bs!523179 () Bool)

(declare-fun d!832569 () Bool)

(assert (= bs!523179 (and d!832569 d!832259)))

(assert (=> bs!523179 (= (dynLambda!14329 lambda!107405 (h!39829 (exprs!3207 lt!1019143))) (not (dynLambda!14329 lambda!107390 (h!39829 (exprs!3207 lt!1019143)))))))

(declare-fun b_lambda!86251 () Bool)

(assert (=> (not b_lambda!86251) (not bs!523179)))

(declare-fun m!3296539 () Bool)

(assert (=> bs!523179 m!3296539))

(assert (=> b!2878964 d!832569))

(declare-fun b_lambda!86247 () Bool)

(assert (= b_lambda!86241 (or d!832351 b_lambda!86247)))

(declare-fun bs!523180 () Bool)

(declare-fun d!832571 () Bool)

(assert (= bs!523180 (and d!832571 d!832351)))

(assert (=> bs!523180 (= (dynLambda!14329 lambda!107417 (h!39829 (exprs!3207 c!7184))) (not (dynLambda!14329 lambda!107393 (h!39829 (exprs!3207 c!7184)))))))

(declare-fun b_lambda!86253 () Bool)

(assert (=> (not b_lambda!86253) (not bs!523180)))

(declare-fun m!3296541 () Bool)

(assert (=> bs!523180 m!3296541))

(assert (=> b!2879095 d!832571))

(declare-fun b_lambda!86249 () Bool)

(assert (= b_lambda!86237 (or d!832137 b_lambda!86249)))

(declare-fun bs!523181 () Bool)

(declare-fun d!832573 () Bool)

(assert (= bs!523181 (and d!832573 d!832137)))

(assert (=> bs!523181 (= (dynLambda!14329 lambda!107387 (h!39829 (t!233576 (exprs!3207 lt!1019144)))) (validRegex!3525 (h!39829 (t!233576 (exprs!3207 lt!1019144)))))))

(declare-fun m!3296543 () Bool)

(assert (=> bs!523181 m!3296543))

(assert (=> b!2878984 d!832573))

(check-sat (not b!2878982) (not bm!186553) (not d!832411) (not bm!186545) (not bm!186524) (not b_lambda!86231) (not b!2879030) (not bm!186563) (not b!2879252) (not bm!186535) (not b!2878930) (not b!2879243) (not b!2879037) (not b!2878892) (not b!2878916) (not b!2879254) (not d!832485) (not d!832477) (not bm!186564) (not b!2879186) (not bm!186533) (not bm!186517) (not b!2878917) (not bm!186557) (not b!2879112) (not d!832533) (not b!2878933) (not b!2878911) (not bs!523178) (not b!2879238) (not bm!186513) (not b!2879028) (not d!832475) (not b!2879233) (not b!2879032) (not b!2879140) (not d!832529) (not bm!186523) (not b!2879237) (not d!832415) (not b!2878961) (not bm!186502) (not b!2878855) (not d!832511) (not bm!186521) (not bm!186565) (not b_lambda!86245) (not b!2879084) (not d!832527) (not b!2879202) (not b!2879043) (not b!2879154) (not bm!186507) (not b!2879246) (not bm!186544) (not d!832419) (not b!2878945) (not bm!186504) (not b!2879116) (not b!2879066) (not b!2879199) (not d!832445) (not b!2879152) (not b!2878856) (not bm!186549) (not b!2879242) (not d!832463) (not d!832535) (not b!2878889) (not b!2879136) (not bm!186528) (not d!832547) (not b!2879248) (not b!2879081) (not d!832559) (not b!2879255) (not d!832391) (not b!2879251) (not b!2878962) (not b!2879036) (not d!832513) (not b!2879170) (not bm!186534) (not d!832473) (not d!832491) (not b!2878998) (not b!2879020) (not b!2879215) (not b!2879231) (not b!2879123) (not bm!186518) (not bm!186505) (not b!2879094) (not b!2878983) (not d!832471) tp_is_empty!15091 (not bm!186568) (not bm!186526) (not b!2879230) (not bm!186567) (not b!2879122) (not b!2879250) (not b!2878865) (not d!832423) (not b!2879106) (not d!832555) (not bm!186531) (not b!2879022) (not b!2878987) (not b!2879018) (not d!832403) (not b!2879201) (not b!2879068) (not b!2878910) (not b!2879142) (not d!832549) (not bm!186562) (not bm!186558) (not b!2879138) (not b_lambda!86251) (not bm!186538) (not b!2879240) (not d!832479) (not b!2878996) (not bm!186572) (not bm!186527) (not b!2879110) (not bm!186512) (not b!2879198) (not b_lambda!86253) (not b!2879108) (not b!2879120) (not bs!523181) (not b!2879247) (not b!2879117) (not b!2879121) (not b!2879256) (not d!832429) (not b_lambda!86247) (not b!2878985) (not b!2878943) (not bm!186554) (not b!2878888) (not d!832539) (not d!832499) (not bm!186561) (not b!2878932) (not bm!186542) (not b!2879235) (not d!832507) (not b!2879040) (not d!832521) (not b!2878965) (not d!832551) (not b!2879213) (not d!832431) (not bm!186514) (not b!2878915) (not d!832389) (not bm!186525) (not bm!186539) (not b_lambda!86243) (not b!2879041) (not b!2879067) (not bm!186532) (not bm!186569) (not bm!186547) (not d!832495) (not bm!186548) (not b!2879096) (not b_lambda!86249) (not b!2879197) (not bm!186552) (not b!2878967) (not b!2878914) (not b!2879083) (not bm!186530) (not b!2879187) (not b!2879071) (not d!832541) (not bm!186515) (not d!832413) (not d!832497) (not d!832561) (not b_lambda!86233) (not b!2879042) (not b!2879234) (not bm!186516) (not d!832509) (not d!832553) (not b!2879244) (not b!2879056) (not bm!186573) (not b!2879239) (not b!2878854))
(check-sat)
