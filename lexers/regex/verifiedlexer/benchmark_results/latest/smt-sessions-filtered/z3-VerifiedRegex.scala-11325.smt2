; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!597608 () Bool)

(assert start!597608)

(declare-fun b!5836232 () Bool)

(declare-fun res!2459019 () Bool)

(declare-fun e!3580135 () Bool)

(assert (=> b!5836232 (=> res!2459019 e!3580135)))

(declare-datatypes ((C!32064 0))(
  ( (C!32065 (val!25734 Int)) )
))
(declare-datatypes ((Regex!15897 0))(
  ( (ElementMatch!15897 (c!1033997 C!32064)) (Concat!24742 (regOne!32306 Regex!15897) (regTwo!32306 Regex!15897)) (EmptyExpr!15897) (Star!15897 (reg!16226 Regex!15897)) (EmptyLang!15897) (Union!15897 (regOne!32307 Regex!15897) (regTwo!32307 Regex!15897)) )
))
(declare-fun r!7292 () Regex!15897)

(declare-datatypes ((List!63990 0))(
  ( (Nil!63866) (Cons!63866 (h!70314 Regex!15897) (t!377345 List!63990)) )
))
(declare-datatypes ((Context!10562 0))(
  ( (Context!10563 (exprs!5781 List!63990)) )
))
(declare-datatypes ((List!63991 0))(
  ( (Nil!63867) (Cons!63867 (h!70315 Context!10562) (t!377346 List!63991)) )
))
(declare-fun zl!343 () List!63991)

(declare-fun generalisedConcat!1494 (List!63990) Regex!15897)

(assert (=> b!5836232 (= res!2459019 (not (= r!7292 (generalisedConcat!1494 (exprs!5781 (h!70315 zl!343))))))))

(declare-fun tp!1613627 () Bool)

(declare-fun b!5836233 () Bool)

(declare-fun e!3580136 () Bool)

(declare-fun e!3580138 () Bool)

(declare-fun inv!82989 (Context!10562) Bool)

(assert (=> b!5836233 (= e!3580136 (and (inv!82989 (h!70315 zl!343)) e!3580138 tp!1613627))))

(declare-fun setIsEmpty!39508 () Bool)

(declare-fun setRes!39508 () Bool)

(assert (=> setIsEmpty!39508 setRes!39508))

(declare-fun b!5836234 () Bool)

(declare-fun e!3580133 () Bool)

(declare-fun tp!1613631 () Bool)

(assert (=> b!5836234 (= e!3580133 tp!1613631)))

(declare-fun tp!1613623 () Bool)

(declare-fun setElem!39508 () Context!10562)

(declare-fun setNonEmpty!39508 () Bool)

(assert (=> setNonEmpty!39508 (= setRes!39508 (and tp!1613623 (inv!82989 setElem!39508) e!3580133))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10562))

(declare-fun setRest!39508 () (InoxSet Context!10562))

(assert (=> setNonEmpty!39508 (= z!1189 ((_ map or) (store ((as const (Array Context!10562 Bool)) false) setElem!39508 true) setRest!39508))))

(declare-fun b!5836235 () Bool)

(declare-fun res!2459021 () Bool)

(declare-fun e!3580139 () Bool)

(assert (=> b!5836235 (=> (not res!2459021) (not e!3580139))))

(declare-fun toList!9681 ((InoxSet Context!10562)) List!63991)

(assert (=> b!5836235 (= res!2459021 (= (toList!9681 z!1189) zl!343))))

(declare-fun b!5836236 () Bool)

(declare-fun e!3580134 () Bool)

(declare-fun tp_is_empty!41047 () Bool)

(declare-fun tp!1613626 () Bool)

(assert (=> b!5836236 (= e!3580134 (and tp_is_empty!41047 tp!1613626))))

(declare-fun b!5836237 () Bool)

(declare-fun tp!1613624 () Bool)

(assert (=> b!5836237 (= e!3580138 tp!1613624)))

(declare-fun b!5836238 () Bool)

(declare-fun res!2459016 () Bool)

(assert (=> b!5836238 (=> res!2459016 e!3580135)))

(get-info :version)

(assert (=> b!5836238 (= res!2459016 (not ((_ is Cons!63866) (exprs!5781 (h!70315 zl!343)))))))

(declare-fun b!5836239 () Bool)

(declare-fun e!3580137 () Bool)

(declare-fun tp!1613629 () Bool)

(declare-fun tp!1613632 () Bool)

(assert (=> b!5836239 (= e!3580137 (and tp!1613629 tp!1613632))))

(declare-fun b!5836240 () Bool)

(declare-fun res!2459022 () Bool)

(assert (=> b!5836240 (=> res!2459022 e!3580135)))

(declare-fun generalisedUnion!1741 (List!63990) Regex!15897)

(declare-fun unfocusZipperList!1318 (List!63991) List!63990)

(assert (=> b!5836240 (= res!2459022 (not (= r!7292 (generalisedUnion!1741 (unfocusZipperList!1318 zl!343)))))))

(declare-fun res!2459020 () Bool)

(assert (=> start!597608 (=> (not res!2459020) (not e!3580139))))

(declare-fun validRegex!7633 (Regex!15897) Bool)

(assert (=> start!597608 (= res!2459020 (validRegex!7633 r!7292))))

(assert (=> start!597608 e!3580139))

(assert (=> start!597608 e!3580137))

(declare-fun condSetEmpty!39508 () Bool)

(assert (=> start!597608 (= condSetEmpty!39508 (= z!1189 ((as const (Array Context!10562 Bool)) false)))))

(assert (=> start!597608 setRes!39508))

(assert (=> start!597608 e!3580136))

(assert (=> start!597608 e!3580134))

(declare-fun b!5836241 () Bool)

(declare-fun tp!1613625 () Bool)

(declare-fun tp!1613628 () Bool)

(assert (=> b!5836241 (= e!3580137 (and tp!1613625 tp!1613628))))

(declare-fun b!5836242 () Bool)

(declare-fun tp!1613630 () Bool)

(assert (=> b!5836242 (= e!3580137 tp!1613630)))

(declare-fun b!5836243 () Bool)

(declare-fun res!2459018 () Bool)

(assert (=> b!5836243 (=> res!2459018 e!3580135)))

(assert (=> b!5836243 (= res!2459018 (or ((_ is EmptyExpr!15897) r!7292) ((_ is EmptyLang!15897) r!7292) ((_ is ElementMatch!15897) r!7292) (not ((_ is Union!15897) r!7292))))))

(declare-fun b!5836244 () Bool)

(assert (=> b!5836244 (= e!3580139 (not e!3580135))))

(declare-fun res!2459014 () Bool)

(assert (=> b!5836244 (=> res!2459014 e!3580135)))

(assert (=> b!5836244 (= res!2459014 (not ((_ is Cons!63867) zl!343)))))

(declare-datatypes ((List!63992 0))(
  ( (Nil!63868) (Cons!63868 (h!70316 C!32064) (t!377347 List!63992)) )
))
(declare-fun s!2326 () List!63992)

(declare-fun matchR!8080 (Regex!15897 List!63992) Bool)

(declare-fun matchRSpec!2998 (Regex!15897 List!63992) Bool)

(assert (=> b!5836244 (= (matchR!8080 r!7292 s!2326) (matchRSpec!2998 r!7292 s!2326))))

(declare-datatypes ((Unit!157065 0))(
  ( (Unit!157066) )
))
(declare-fun lt!2303260 () Unit!157065)

(declare-fun mainMatchTheorem!2998 (Regex!15897 List!63992) Unit!157065)

(assert (=> b!5836244 (= lt!2303260 (mainMatchTheorem!2998 r!7292 s!2326))))

(declare-fun b!5836245 () Bool)

(assert (=> b!5836245 (= e!3580137 tp_is_empty!41047)))

(declare-fun b!5836246 () Bool)

(declare-fun res!2459015 () Bool)

(assert (=> b!5836246 (=> (not res!2459015) (not e!3580139))))

(declare-fun unfocusZipper!1639 (List!63991) Regex!15897)

(assert (=> b!5836246 (= res!2459015 (= r!7292 (unfocusZipper!1639 zl!343)))))

(declare-fun b!5836247 () Bool)

(declare-fun res!2459017 () Bool)

(assert (=> b!5836247 (=> res!2459017 e!3580135)))

(declare-fun isEmpty!35732 (List!63991) Bool)

(assert (=> b!5836247 (= res!2459017 (not (isEmpty!35732 (t!377346 zl!343))))))

(declare-fun b!5836248 () Bool)

(assert (=> b!5836248 (= e!3580135 (validRegex!7633 (regOne!32307 r!7292)))))

(assert (= (and start!597608 res!2459020) b!5836235))

(assert (= (and b!5836235 res!2459021) b!5836246))

(assert (= (and b!5836246 res!2459015) b!5836244))

(assert (= (and b!5836244 (not res!2459014)) b!5836247))

(assert (= (and b!5836247 (not res!2459017)) b!5836232))

(assert (= (and b!5836232 (not res!2459019)) b!5836238))

(assert (= (and b!5836238 (not res!2459016)) b!5836240))

(assert (= (and b!5836240 (not res!2459022)) b!5836243))

(assert (= (and b!5836243 (not res!2459018)) b!5836248))

(assert (= (and start!597608 ((_ is ElementMatch!15897) r!7292)) b!5836245))

(assert (= (and start!597608 ((_ is Concat!24742) r!7292)) b!5836241))

(assert (= (and start!597608 ((_ is Star!15897) r!7292)) b!5836242))

(assert (= (and start!597608 ((_ is Union!15897) r!7292)) b!5836239))

(assert (= (and start!597608 condSetEmpty!39508) setIsEmpty!39508))

(assert (= (and start!597608 (not condSetEmpty!39508)) setNonEmpty!39508))

(assert (= setNonEmpty!39508 b!5836234))

(assert (= b!5836233 b!5836237))

(assert (= (and start!597608 ((_ is Cons!63867) zl!343)) b!5836233))

(assert (= (and start!597608 ((_ is Cons!63868) s!2326)) b!5836236))

(declare-fun m!6762798 () Bool)

(assert (=> start!597608 m!6762798))

(declare-fun m!6762800 () Bool)

(assert (=> b!5836233 m!6762800))

(declare-fun m!6762802 () Bool)

(assert (=> b!5836244 m!6762802))

(declare-fun m!6762804 () Bool)

(assert (=> b!5836244 m!6762804))

(declare-fun m!6762806 () Bool)

(assert (=> b!5836244 m!6762806))

(declare-fun m!6762808 () Bool)

(assert (=> b!5836246 m!6762808))

(declare-fun m!6762810 () Bool)

(assert (=> b!5836248 m!6762810))

(declare-fun m!6762812 () Bool)

(assert (=> b!5836240 m!6762812))

(assert (=> b!5836240 m!6762812))

(declare-fun m!6762814 () Bool)

(assert (=> b!5836240 m!6762814))

(declare-fun m!6762816 () Bool)

(assert (=> b!5836247 m!6762816))

(declare-fun m!6762818 () Bool)

(assert (=> b!5836232 m!6762818))

(declare-fun m!6762820 () Bool)

(assert (=> setNonEmpty!39508 m!6762820))

(declare-fun m!6762822 () Bool)

(assert (=> b!5836235 m!6762822))

(check-sat (not start!597608) (not b!5836246) tp_is_empty!41047 (not b!5836233) (not b!5836248) (not b!5836239) (not b!5836236) (not b!5836232) (not setNonEmpty!39508) (not b!5836244) (not b!5836240) (not b!5836237) (not b!5836242) (not b!5836247) (not b!5836234) (not b!5836241) (not b!5836235))
(check-sat)
(get-model)

(declare-fun d!1834416 () Bool)

(declare-fun lambda!319280 () Int)

(declare-fun forall!14988 (List!63990 Int) Bool)

(assert (=> d!1834416 (= (inv!82989 (h!70315 zl!343)) (forall!14988 (exprs!5781 (h!70315 zl!343)) lambda!319280))))

(declare-fun bs!1375392 () Bool)

(assert (= bs!1375392 d!1834416))

(declare-fun m!6762866 () Bool)

(assert (=> bs!1375392 m!6762866))

(assert (=> b!5836233 d!1834416))

(declare-fun d!1834428 () Bool)

(assert (=> d!1834428 (= (isEmpty!35732 (t!377346 zl!343)) ((_ is Nil!63867) (t!377346 zl!343)))))

(assert (=> b!5836247 d!1834428))

(declare-fun b!5836422 () Bool)

(declare-fun e!3580247 () Bool)

(declare-fun e!3580248 () Bool)

(assert (=> b!5836422 (= e!3580247 e!3580248)))

(declare-fun c!1034043 () Bool)

(assert (=> b!5836422 (= c!1034043 ((_ is Union!15897) (regOne!32307 r!7292)))))

(declare-fun d!1834430 () Bool)

(declare-fun res!2459106 () Bool)

(declare-fun e!3580250 () Bool)

(assert (=> d!1834430 (=> res!2459106 e!3580250)))

(assert (=> d!1834430 (= res!2459106 ((_ is ElementMatch!15897) (regOne!32307 r!7292)))))

(assert (=> d!1834430 (= (validRegex!7633 (regOne!32307 r!7292)) e!3580250)))

(declare-fun b!5836423 () Bool)

(declare-fun res!2459103 () Bool)

(declare-fun e!3580251 () Bool)

(assert (=> b!5836423 (=> (not res!2459103) (not e!3580251))))

(declare-fun call!455801 () Bool)

(assert (=> b!5836423 (= res!2459103 call!455801)))

(assert (=> b!5836423 (= e!3580248 e!3580251)))

(declare-fun b!5836424 () Bool)

(declare-fun e!3580249 () Bool)

(declare-fun call!455800 () Bool)

(assert (=> b!5836424 (= e!3580249 call!455800)))

(declare-fun c!1034044 () Bool)

(declare-fun call!455802 () Bool)

(declare-fun bm!455795 () Bool)

(assert (=> bm!455795 (= call!455802 (validRegex!7633 (ite c!1034044 (reg!16226 (regOne!32307 r!7292)) (ite c!1034043 (regOne!32307 (regOne!32307 r!7292)) (regOne!32306 (regOne!32307 r!7292))))))))

(declare-fun bm!455796 () Bool)

(assert (=> bm!455796 (= call!455800 (validRegex!7633 (ite c!1034043 (regTwo!32307 (regOne!32307 r!7292)) (regTwo!32306 (regOne!32307 r!7292)))))))

(declare-fun b!5836425 () Bool)

(declare-fun e!3580246 () Bool)

(assert (=> b!5836425 (= e!3580247 e!3580246)))

(declare-fun res!2459104 () Bool)

(declare-fun nullable!5899 (Regex!15897) Bool)

(assert (=> b!5836425 (= res!2459104 (not (nullable!5899 (reg!16226 (regOne!32307 r!7292)))))))

(assert (=> b!5836425 (=> (not res!2459104) (not e!3580246))))

(declare-fun b!5836426 () Bool)

(assert (=> b!5836426 (= e!3580251 call!455800)))

(declare-fun b!5836427 () Bool)

(assert (=> b!5836427 (= e!3580250 e!3580247)))

(assert (=> b!5836427 (= c!1034044 ((_ is Star!15897) (regOne!32307 r!7292)))))

(declare-fun b!5836428 () Bool)

(assert (=> b!5836428 (= e!3580246 call!455802)))

(declare-fun bm!455797 () Bool)

(assert (=> bm!455797 (= call!455801 call!455802)))

(declare-fun b!5836429 () Bool)

(declare-fun e!3580252 () Bool)

(assert (=> b!5836429 (= e!3580252 e!3580249)))

(declare-fun res!2459102 () Bool)

(assert (=> b!5836429 (=> (not res!2459102) (not e!3580249))))

(assert (=> b!5836429 (= res!2459102 call!455801)))

(declare-fun b!5836430 () Bool)

(declare-fun res!2459105 () Bool)

(assert (=> b!5836430 (=> res!2459105 e!3580252)))

(assert (=> b!5836430 (= res!2459105 (not ((_ is Concat!24742) (regOne!32307 r!7292))))))

(assert (=> b!5836430 (= e!3580248 e!3580252)))

(assert (= (and d!1834430 (not res!2459106)) b!5836427))

(assert (= (and b!5836427 c!1034044) b!5836425))

(assert (= (and b!5836427 (not c!1034044)) b!5836422))

(assert (= (and b!5836425 res!2459104) b!5836428))

(assert (= (and b!5836422 c!1034043) b!5836423))

(assert (= (and b!5836422 (not c!1034043)) b!5836430))

(assert (= (and b!5836423 res!2459103) b!5836426))

(assert (= (and b!5836430 (not res!2459105)) b!5836429))

(assert (= (and b!5836429 res!2459102) b!5836424))

(assert (= (or b!5836426 b!5836424) bm!455796))

(assert (= (or b!5836423 b!5836429) bm!455797))

(assert (= (or b!5836428 bm!455797) bm!455795))

(declare-fun m!6762886 () Bool)

(assert (=> bm!455795 m!6762886))

(declare-fun m!6762888 () Bool)

(assert (=> bm!455796 m!6762888))

(declare-fun m!6762890 () Bool)

(assert (=> b!5836425 m!6762890))

(assert (=> b!5836248 d!1834430))

(declare-fun b!5836493 () Bool)

(declare-fun e!3580288 () Bool)

(declare-fun lt!2303280 () Bool)

(assert (=> b!5836493 (= e!3580288 (not lt!2303280))))

(declare-fun b!5836494 () Bool)

(declare-fun e!3580292 () Bool)

(declare-fun e!3580290 () Bool)

(assert (=> b!5836494 (= e!3580292 e!3580290)))

(declare-fun res!2459130 () Bool)

(assert (=> b!5836494 (=> res!2459130 e!3580290)))

(declare-fun call!455805 () Bool)

(assert (=> b!5836494 (= res!2459130 call!455805)))

(declare-fun b!5836495 () Bool)

(declare-fun res!2459132 () Bool)

(declare-fun e!3580293 () Bool)

(assert (=> b!5836495 (=> (not res!2459132) (not e!3580293))))

(declare-fun isEmpty!35735 (List!63992) Bool)

(declare-fun tail!11441 (List!63992) List!63992)

(assert (=> b!5836495 (= res!2459132 (isEmpty!35735 (tail!11441 s!2326)))))

(declare-fun d!1834444 () Bool)

(declare-fun e!3580291 () Bool)

(assert (=> d!1834444 e!3580291))

(declare-fun c!1034067 () Bool)

(assert (=> d!1834444 (= c!1034067 ((_ is EmptyExpr!15897) r!7292))))

(declare-fun e!3580287 () Bool)

(assert (=> d!1834444 (= lt!2303280 e!3580287)))

(declare-fun c!1034066 () Bool)

(assert (=> d!1834444 (= c!1034066 (isEmpty!35735 s!2326))))

(assert (=> d!1834444 (validRegex!7633 r!7292)))

(assert (=> d!1834444 (= (matchR!8080 r!7292 s!2326) lt!2303280)))

(declare-fun b!5836496 () Bool)

(declare-fun head!12356 (List!63992) C!32064)

(assert (=> b!5836496 (= e!3580290 (not (= (head!12356 s!2326) (c!1033997 r!7292))))))

(declare-fun b!5836497 () Bool)

(assert (=> b!5836497 (= e!3580291 e!3580288)))

(declare-fun c!1034065 () Bool)

(assert (=> b!5836497 (= c!1034065 ((_ is EmptyLang!15897) r!7292))))

(declare-fun b!5836498 () Bool)

(declare-fun res!2459134 () Bool)

(declare-fun e!3580289 () Bool)

(assert (=> b!5836498 (=> res!2459134 e!3580289)))

(assert (=> b!5836498 (= res!2459134 (not ((_ is ElementMatch!15897) r!7292)))))

(assert (=> b!5836498 (= e!3580288 e!3580289)))

(declare-fun b!5836499 () Bool)

(declare-fun derivativeStep!4639 (Regex!15897 C!32064) Regex!15897)

(assert (=> b!5836499 (= e!3580287 (matchR!8080 (derivativeStep!4639 r!7292 (head!12356 s!2326)) (tail!11441 s!2326)))))

(declare-fun b!5836500 () Bool)

(declare-fun res!2459129 () Bool)

(assert (=> b!5836500 (=> res!2459129 e!3580290)))

(assert (=> b!5836500 (= res!2459129 (not (isEmpty!35735 (tail!11441 s!2326))))))

(declare-fun b!5836501 () Bool)

(declare-fun res!2459135 () Bool)

(assert (=> b!5836501 (=> res!2459135 e!3580289)))

(assert (=> b!5836501 (= res!2459135 e!3580293)))

(declare-fun res!2459131 () Bool)

(assert (=> b!5836501 (=> (not res!2459131) (not e!3580293))))

(assert (=> b!5836501 (= res!2459131 lt!2303280)))

(declare-fun b!5836502 () Bool)

(assert (=> b!5836502 (= e!3580291 (= lt!2303280 call!455805))))

(declare-fun b!5836503 () Bool)

(assert (=> b!5836503 (= e!3580289 e!3580292)))

(declare-fun res!2459133 () Bool)

(assert (=> b!5836503 (=> (not res!2459133) (not e!3580292))))

(assert (=> b!5836503 (= res!2459133 (not lt!2303280))))

(declare-fun b!5836504 () Bool)

(declare-fun res!2459136 () Bool)

(assert (=> b!5836504 (=> (not res!2459136) (not e!3580293))))

(assert (=> b!5836504 (= res!2459136 (not call!455805))))

(declare-fun bm!455800 () Bool)

(assert (=> bm!455800 (= call!455805 (isEmpty!35735 s!2326))))

(declare-fun b!5836505 () Bool)

(assert (=> b!5836505 (= e!3580293 (= (head!12356 s!2326) (c!1033997 r!7292)))))

(declare-fun b!5836506 () Bool)

(assert (=> b!5836506 (= e!3580287 (nullable!5899 r!7292))))

(assert (= (and d!1834444 c!1034066) b!5836506))

(assert (= (and d!1834444 (not c!1034066)) b!5836499))

(assert (= (and d!1834444 c!1034067) b!5836502))

(assert (= (and d!1834444 (not c!1034067)) b!5836497))

(assert (= (and b!5836497 c!1034065) b!5836493))

(assert (= (and b!5836497 (not c!1034065)) b!5836498))

(assert (= (and b!5836498 (not res!2459134)) b!5836501))

(assert (= (and b!5836501 res!2459131) b!5836504))

(assert (= (and b!5836504 res!2459136) b!5836495))

(assert (= (and b!5836495 res!2459132) b!5836505))

(assert (= (and b!5836501 (not res!2459135)) b!5836503))

(assert (= (and b!5836503 res!2459133) b!5836494))

(assert (= (and b!5836494 (not res!2459130)) b!5836500))

(assert (= (and b!5836500 (not res!2459129)) b!5836496))

(assert (= (or b!5836502 b!5836494 b!5836504) bm!455800))

(declare-fun m!6762912 () Bool)

(assert (=> b!5836505 m!6762912))

(declare-fun m!6762914 () Bool)

(assert (=> b!5836495 m!6762914))

(assert (=> b!5836495 m!6762914))

(declare-fun m!6762916 () Bool)

(assert (=> b!5836495 m!6762916))

(declare-fun m!6762918 () Bool)

(assert (=> b!5836506 m!6762918))

(declare-fun m!6762920 () Bool)

(assert (=> bm!455800 m!6762920))

(assert (=> d!1834444 m!6762920))

(assert (=> d!1834444 m!6762798))

(assert (=> b!5836500 m!6762914))

(assert (=> b!5836500 m!6762914))

(assert (=> b!5836500 m!6762916))

(assert (=> b!5836496 m!6762912))

(assert (=> b!5836499 m!6762912))

(assert (=> b!5836499 m!6762912))

(declare-fun m!6762922 () Bool)

(assert (=> b!5836499 m!6762922))

(assert (=> b!5836499 m!6762914))

(assert (=> b!5836499 m!6762922))

(assert (=> b!5836499 m!6762914))

(declare-fun m!6762924 () Bool)

(assert (=> b!5836499 m!6762924))

(assert (=> b!5836244 d!1834444))

(declare-fun b!5836602 () Bool)

(assert (=> b!5836602 true))

(assert (=> b!5836602 true))

(declare-fun bs!1375406 () Bool)

(declare-fun b!5836599 () Bool)

(assert (= bs!1375406 (and b!5836599 b!5836602)))

(declare-fun lambda!319296 () Int)

(declare-fun lambda!319295 () Int)

(assert (=> bs!1375406 (not (= lambda!319296 lambda!319295))))

(assert (=> b!5836599 true))

(assert (=> b!5836599 true))

(declare-fun d!1834448 () Bool)

(declare-fun c!1034077 () Bool)

(assert (=> d!1834448 (= c!1034077 ((_ is EmptyExpr!15897) r!7292))))

(declare-fun e!3580339 () Bool)

(assert (=> d!1834448 (= (matchRSpec!2998 r!7292 s!2326) e!3580339)))

(declare-fun b!5836598 () Bool)

(declare-fun c!1034078 () Bool)

(assert (=> b!5836598 (= c!1034078 ((_ is ElementMatch!15897) r!7292))))

(declare-fun e!3580340 () Bool)

(declare-fun e!3580345 () Bool)

(assert (=> b!5836598 (= e!3580340 e!3580345)))

(declare-fun bm!455805 () Bool)

(declare-fun call!455811 () Bool)

(declare-fun c!1034079 () Bool)

(declare-fun Exists!2973 (Int) Bool)

(assert (=> bm!455805 (= call!455811 (Exists!2973 (ite c!1034079 lambda!319295 lambda!319296)))))

(declare-fun bm!455806 () Bool)

(declare-fun call!455810 () Bool)

(assert (=> bm!455806 (= call!455810 (isEmpty!35735 s!2326))))

(declare-fun e!3580342 () Bool)

(assert (=> b!5836599 (= e!3580342 call!455811)))

(declare-fun b!5836600 () Bool)

(declare-fun c!1034080 () Bool)

(assert (=> b!5836600 (= c!1034080 ((_ is Union!15897) r!7292))))

(declare-fun e!3580344 () Bool)

(assert (=> b!5836600 (= e!3580345 e!3580344)))

(declare-fun b!5836601 () Bool)

(assert (=> b!5836601 (= e!3580345 (= s!2326 (Cons!63868 (c!1033997 r!7292) Nil!63868)))))

(declare-fun e!3580341 () Bool)

(assert (=> b!5836602 (= e!3580341 call!455811)))

(declare-fun b!5836603 () Bool)

(assert (=> b!5836603 (= e!3580339 e!3580340)))

(declare-fun res!2459157 () Bool)

(assert (=> b!5836603 (= res!2459157 (not ((_ is EmptyLang!15897) r!7292)))))

(assert (=> b!5836603 (=> (not res!2459157) (not e!3580340))))

(declare-fun b!5836604 () Bool)

(assert (=> b!5836604 (= e!3580339 call!455810)))

(declare-fun b!5836605 () Bool)

(declare-fun e!3580343 () Bool)

(assert (=> b!5836605 (= e!3580343 (matchRSpec!2998 (regTwo!32307 r!7292) s!2326))))

(declare-fun b!5836606 () Bool)

(assert (=> b!5836606 (= e!3580344 e!3580343)))

(declare-fun res!2459156 () Bool)

(assert (=> b!5836606 (= res!2459156 (matchRSpec!2998 (regOne!32307 r!7292) s!2326))))

(assert (=> b!5836606 (=> res!2459156 e!3580343)))

(declare-fun b!5836607 () Bool)

(declare-fun res!2459158 () Bool)

(assert (=> b!5836607 (=> res!2459158 e!3580341)))

(assert (=> b!5836607 (= res!2459158 call!455810)))

(assert (=> b!5836607 (= e!3580342 e!3580341)))

(declare-fun b!5836608 () Bool)

(assert (=> b!5836608 (= e!3580344 e!3580342)))

(assert (=> b!5836608 (= c!1034079 ((_ is Star!15897) r!7292))))

(assert (= (and d!1834448 c!1034077) b!5836604))

(assert (= (and d!1834448 (not c!1034077)) b!5836603))

(assert (= (and b!5836603 res!2459157) b!5836598))

(assert (= (and b!5836598 c!1034078) b!5836601))

(assert (= (and b!5836598 (not c!1034078)) b!5836600))

(assert (= (and b!5836600 c!1034080) b!5836606))

(assert (= (and b!5836600 (not c!1034080)) b!5836608))

(assert (= (and b!5836606 (not res!2459156)) b!5836605))

(assert (= (and b!5836608 c!1034079) b!5836607))

(assert (= (and b!5836608 (not c!1034079)) b!5836599))

(assert (= (and b!5836607 (not res!2459158)) b!5836602))

(assert (= (or b!5836602 b!5836599) bm!455805))

(assert (= (or b!5836604 b!5836607) bm!455806))

(declare-fun m!6762940 () Bool)

(assert (=> bm!455805 m!6762940))

(assert (=> bm!455806 m!6762920))

(declare-fun m!6762942 () Bool)

(assert (=> b!5836605 m!6762942))

(declare-fun m!6762944 () Bool)

(assert (=> b!5836606 m!6762944))

(assert (=> b!5836244 d!1834448))

(declare-fun d!1834452 () Bool)

(assert (=> d!1834452 (= (matchR!8080 r!7292 s!2326) (matchRSpec!2998 r!7292 s!2326))))

(declare-fun lt!2303287 () Unit!157065)

(declare-fun choose!44317 (Regex!15897 List!63992) Unit!157065)

(assert (=> d!1834452 (= lt!2303287 (choose!44317 r!7292 s!2326))))

(assert (=> d!1834452 (validRegex!7633 r!7292)))

(assert (=> d!1834452 (= (mainMatchTheorem!2998 r!7292 s!2326) lt!2303287)))

(declare-fun bs!1375407 () Bool)

(assert (= bs!1375407 d!1834452))

(assert (=> bs!1375407 m!6762802))

(assert (=> bs!1375407 m!6762804))

(declare-fun m!6762946 () Bool)

(assert (=> bs!1375407 m!6762946))

(assert (=> bs!1375407 m!6762798))

(assert (=> b!5836244 d!1834452))

(declare-fun bs!1375408 () Bool)

(declare-fun d!1834454 () Bool)

(assert (= bs!1375408 (and d!1834454 d!1834416)))

(declare-fun lambda!319297 () Int)

(assert (=> bs!1375408 (= lambda!319297 lambda!319280)))

(assert (=> d!1834454 (= (inv!82989 setElem!39508) (forall!14988 (exprs!5781 setElem!39508) lambda!319297))))

(declare-fun bs!1375409 () Bool)

(assert (= bs!1375409 d!1834454))

(declare-fun m!6762948 () Bool)

(assert (=> bs!1375409 m!6762948))

(assert (=> setNonEmpty!39508 d!1834454))

(declare-fun bs!1375410 () Bool)

(declare-fun d!1834456 () Bool)

(assert (= bs!1375410 (and d!1834456 d!1834416)))

(declare-fun lambda!319300 () Int)

(assert (=> bs!1375410 (= lambda!319300 lambda!319280)))

(declare-fun bs!1375411 () Bool)

(assert (= bs!1375411 (and d!1834456 d!1834454)))

(assert (=> bs!1375411 (= lambda!319300 lambda!319297)))

(declare-fun b!5836633 () Bool)

(declare-fun e!3580361 () Regex!15897)

(assert (=> b!5836633 (= e!3580361 EmptyLang!15897)))

(declare-fun b!5836634 () Bool)

(declare-fun e!3580362 () Bool)

(declare-fun lt!2303290 () Regex!15897)

(declare-fun isEmptyLang!1344 (Regex!15897) Bool)

(assert (=> b!5836634 (= e!3580362 (isEmptyLang!1344 lt!2303290))))

(declare-fun b!5836635 () Bool)

(declare-fun e!3580360 () Bool)

(declare-fun isUnion!774 (Regex!15897) Bool)

(assert (=> b!5836635 (= e!3580360 (isUnion!774 lt!2303290))))

(declare-fun b!5836636 () Bool)

(declare-fun e!3580358 () Bool)

(assert (=> b!5836636 (= e!3580358 e!3580362)))

(declare-fun c!1034092 () Bool)

(declare-fun isEmpty!35736 (List!63990) Bool)

(assert (=> b!5836636 (= c!1034092 (isEmpty!35736 (unfocusZipperList!1318 zl!343)))))

(declare-fun b!5836637 () Bool)

(declare-fun e!3580363 () Regex!15897)

(assert (=> b!5836637 (= e!3580363 e!3580361)))

(declare-fun c!1034090 () Bool)

(assert (=> b!5836637 (= c!1034090 ((_ is Cons!63866) (unfocusZipperList!1318 zl!343)))))

(declare-fun b!5836638 () Bool)

(assert (=> b!5836638 (= e!3580362 e!3580360)))

(declare-fun c!1034091 () Bool)

(declare-fun tail!11442 (List!63990) List!63990)

(assert (=> b!5836638 (= c!1034091 (isEmpty!35736 (tail!11442 (unfocusZipperList!1318 zl!343))))))

(assert (=> d!1834456 e!3580358))

(declare-fun res!2459163 () Bool)

(assert (=> d!1834456 (=> (not res!2459163) (not e!3580358))))

(assert (=> d!1834456 (= res!2459163 (validRegex!7633 lt!2303290))))

(assert (=> d!1834456 (= lt!2303290 e!3580363)))

(declare-fun c!1034089 () Bool)

(declare-fun e!3580359 () Bool)

(assert (=> d!1834456 (= c!1034089 e!3580359)))

(declare-fun res!2459164 () Bool)

(assert (=> d!1834456 (=> (not res!2459164) (not e!3580359))))

(assert (=> d!1834456 (= res!2459164 ((_ is Cons!63866) (unfocusZipperList!1318 zl!343)))))

(assert (=> d!1834456 (forall!14988 (unfocusZipperList!1318 zl!343) lambda!319300)))

(assert (=> d!1834456 (= (generalisedUnion!1741 (unfocusZipperList!1318 zl!343)) lt!2303290)))

(declare-fun b!5836639 () Bool)

(assert (=> b!5836639 (= e!3580359 (isEmpty!35736 (t!377345 (unfocusZipperList!1318 zl!343))))))

(declare-fun b!5836640 () Bool)

(assert (=> b!5836640 (= e!3580361 (Union!15897 (h!70314 (unfocusZipperList!1318 zl!343)) (generalisedUnion!1741 (t!377345 (unfocusZipperList!1318 zl!343)))))))

(declare-fun b!5836641 () Bool)

(declare-fun head!12357 (List!63990) Regex!15897)

(assert (=> b!5836641 (= e!3580360 (= lt!2303290 (head!12357 (unfocusZipperList!1318 zl!343))))))

(declare-fun b!5836642 () Bool)

(assert (=> b!5836642 (= e!3580363 (h!70314 (unfocusZipperList!1318 zl!343)))))

(assert (= (and d!1834456 res!2459164) b!5836639))

(assert (= (and d!1834456 c!1034089) b!5836642))

(assert (= (and d!1834456 (not c!1034089)) b!5836637))

(assert (= (and b!5836637 c!1034090) b!5836640))

(assert (= (and b!5836637 (not c!1034090)) b!5836633))

(assert (= (and d!1834456 res!2459163) b!5836636))

(assert (= (and b!5836636 c!1034092) b!5836634))

(assert (= (and b!5836636 (not c!1034092)) b!5836638))

(assert (= (and b!5836638 c!1034091) b!5836641))

(assert (= (and b!5836638 (not c!1034091)) b!5836635))

(declare-fun m!6762950 () Bool)

(assert (=> b!5836640 m!6762950))

(declare-fun m!6762952 () Bool)

(assert (=> d!1834456 m!6762952))

(assert (=> d!1834456 m!6762812))

(declare-fun m!6762954 () Bool)

(assert (=> d!1834456 m!6762954))

(assert (=> b!5836641 m!6762812))

(declare-fun m!6762956 () Bool)

(assert (=> b!5836641 m!6762956))

(assert (=> b!5836636 m!6762812))

(declare-fun m!6762958 () Bool)

(assert (=> b!5836636 m!6762958))

(declare-fun m!6762960 () Bool)

(assert (=> b!5836634 m!6762960))

(declare-fun m!6762962 () Bool)

(assert (=> b!5836635 m!6762962))

(declare-fun m!6762964 () Bool)

(assert (=> b!5836639 m!6762964))

(assert (=> b!5836638 m!6762812))

(declare-fun m!6762966 () Bool)

(assert (=> b!5836638 m!6762966))

(assert (=> b!5836638 m!6762966))

(declare-fun m!6762968 () Bool)

(assert (=> b!5836638 m!6762968))

(assert (=> b!5836240 d!1834456))

(declare-fun bs!1375412 () Bool)

(declare-fun d!1834458 () Bool)

(assert (= bs!1375412 (and d!1834458 d!1834416)))

(declare-fun lambda!319303 () Int)

(assert (=> bs!1375412 (= lambda!319303 lambda!319280)))

(declare-fun bs!1375413 () Bool)

(assert (= bs!1375413 (and d!1834458 d!1834454)))

(assert (=> bs!1375413 (= lambda!319303 lambda!319297)))

(declare-fun bs!1375414 () Bool)

(assert (= bs!1375414 (and d!1834458 d!1834456)))

(assert (=> bs!1375414 (= lambda!319303 lambda!319300)))

(declare-fun lt!2303293 () List!63990)

(assert (=> d!1834458 (forall!14988 lt!2303293 lambda!319303)))

(declare-fun e!3580366 () List!63990)

(assert (=> d!1834458 (= lt!2303293 e!3580366)))

(declare-fun c!1034095 () Bool)

(assert (=> d!1834458 (= c!1034095 ((_ is Cons!63867) zl!343))))

(assert (=> d!1834458 (= (unfocusZipperList!1318 zl!343) lt!2303293)))

(declare-fun b!5836647 () Bool)

(assert (=> b!5836647 (= e!3580366 (Cons!63866 (generalisedConcat!1494 (exprs!5781 (h!70315 zl!343))) (unfocusZipperList!1318 (t!377346 zl!343))))))

(declare-fun b!5836648 () Bool)

(assert (=> b!5836648 (= e!3580366 Nil!63866)))

(assert (= (and d!1834458 c!1034095) b!5836647))

(assert (= (and d!1834458 (not c!1034095)) b!5836648))

(declare-fun m!6762970 () Bool)

(assert (=> d!1834458 m!6762970))

(assert (=> b!5836647 m!6762818))

(declare-fun m!6762972 () Bool)

(assert (=> b!5836647 m!6762972))

(assert (=> b!5836240 d!1834458))

(declare-fun b!5836649 () Bool)

(declare-fun e!3580368 () Bool)

(declare-fun e!3580369 () Bool)

(assert (=> b!5836649 (= e!3580368 e!3580369)))

(declare-fun c!1034096 () Bool)

(assert (=> b!5836649 (= c!1034096 ((_ is Union!15897) r!7292))))

(declare-fun d!1834460 () Bool)

(declare-fun res!2459169 () Bool)

(declare-fun e!3580371 () Bool)

(assert (=> d!1834460 (=> res!2459169 e!3580371)))

(assert (=> d!1834460 (= res!2459169 ((_ is ElementMatch!15897) r!7292))))

(assert (=> d!1834460 (= (validRegex!7633 r!7292) e!3580371)))

(declare-fun b!5836650 () Bool)

(declare-fun res!2459166 () Bool)

(declare-fun e!3580372 () Bool)

(assert (=> b!5836650 (=> (not res!2459166) (not e!3580372))))

(declare-fun call!455813 () Bool)

(assert (=> b!5836650 (= res!2459166 call!455813)))

(assert (=> b!5836650 (= e!3580369 e!3580372)))

(declare-fun b!5836651 () Bool)

(declare-fun e!3580370 () Bool)

(declare-fun call!455812 () Bool)

(assert (=> b!5836651 (= e!3580370 call!455812)))

(declare-fun call!455814 () Bool)

(declare-fun bm!455807 () Bool)

(declare-fun c!1034097 () Bool)

(assert (=> bm!455807 (= call!455814 (validRegex!7633 (ite c!1034097 (reg!16226 r!7292) (ite c!1034096 (regOne!32307 r!7292) (regOne!32306 r!7292)))))))

(declare-fun bm!455808 () Bool)

(assert (=> bm!455808 (= call!455812 (validRegex!7633 (ite c!1034096 (regTwo!32307 r!7292) (regTwo!32306 r!7292))))))

(declare-fun b!5836652 () Bool)

(declare-fun e!3580367 () Bool)

(assert (=> b!5836652 (= e!3580368 e!3580367)))

(declare-fun res!2459167 () Bool)

(assert (=> b!5836652 (= res!2459167 (not (nullable!5899 (reg!16226 r!7292))))))

(assert (=> b!5836652 (=> (not res!2459167) (not e!3580367))))

(declare-fun b!5836653 () Bool)

(assert (=> b!5836653 (= e!3580372 call!455812)))

(declare-fun b!5836654 () Bool)

(assert (=> b!5836654 (= e!3580371 e!3580368)))

(assert (=> b!5836654 (= c!1034097 ((_ is Star!15897) r!7292))))

(declare-fun b!5836655 () Bool)

(assert (=> b!5836655 (= e!3580367 call!455814)))

(declare-fun bm!455809 () Bool)

(assert (=> bm!455809 (= call!455813 call!455814)))

(declare-fun b!5836656 () Bool)

(declare-fun e!3580373 () Bool)

(assert (=> b!5836656 (= e!3580373 e!3580370)))

(declare-fun res!2459165 () Bool)

(assert (=> b!5836656 (=> (not res!2459165) (not e!3580370))))

(assert (=> b!5836656 (= res!2459165 call!455813)))

(declare-fun b!5836657 () Bool)

(declare-fun res!2459168 () Bool)

(assert (=> b!5836657 (=> res!2459168 e!3580373)))

(assert (=> b!5836657 (= res!2459168 (not ((_ is Concat!24742) r!7292)))))

(assert (=> b!5836657 (= e!3580369 e!3580373)))

(assert (= (and d!1834460 (not res!2459169)) b!5836654))

(assert (= (and b!5836654 c!1034097) b!5836652))

(assert (= (and b!5836654 (not c!1034097)) b!5836649))

(assert (= (and b!5836652 res!2459167) b!5836655))

(assert (= (and b!5836649 c!1034096) b!5836650))

(assert (= (and b!5836649 (not c!1034096)) b!5836657))

(assert (= (and b!5836650 res!2459166) b!5836653))

(assert (= (and b!5836657 (not res!2459168)) b!5836656))

(assert (= (and b!5836656 res!2459165) b!5836651))

(assert (= (or b!5836653 b!5836651) bm!455808))

(assert (= (or b!5836650 b!5836656) bm!455809))

(assert (= (or b!5836655 bm!455809) bm!455807))

(declare-fun m!6762974 () Bool)

(assert (=> bm!455807 m!6762974))

(declare-fun m!6762976 () Bool)

(assert (=> bm!455808 m!6762976))

(declare-fun m!6762978 () Bool)

(assert (=> b!5836652 m!6762978))

(assert (=> start!597608 d!1834460))

(declare-fun bs!1375415 () Bool)

(declare-fun d!1834462 () Bool)

(assert (= bs!1375415 (and d!1834462 d!1834416)))

(declare-fun lambda!319306 () Int)

(assert (=> bs!1375415 (= lambda!319306 lambda!319280)))

(declare-fun bs!1375416 () Bool)

(assert (= bs!1375416 (and d!1834462 d!1834454)))

(assert (=> bs!1375416 (= lambda!319306 lambda!319297)))

(declare-fun bs!1375417 () Bool)

(assert (= bs!1375417 (and d!1834462 d!1834456)))

(assert (=> bs!1375417 (= lambda!319306 lambda!319300)))

(declare-fun bs!1375418 () Bool)

(assert (= bs!1375418 (and d!1834462 d!1834458)))

(assert (=> bs!1375418 (= lambda!319306 lambda!319303)))

(declare-fun b!5836678 () Bool)

(declare-fun e!3580391 () Regex!15897)

(assert (=> b!5836678 (= e!3580391 (Concat!24742 (h!70314 (exprs!5781 (h!70315 zl!343))) (generalisedConcat!1494 (t!377345 (exprs!5781 (h!70315 zl!343))))))))

(declare-fun b!5836679 () Bool)

(declare-fun e!3580388 () Bool)

(declare-fun lt!2303296 () Regex!15897)

(declare-fun isConcat!859 (Regex!15897) Bool)

(assert (=> b!5836679 (= e!3580388 (isConcat!859 lt!2303296))))

(declare-fun e!3580390 () Bool)

(assert (=> d!1834462 e!3580390))

(declare-fun res!2459175 () Bool)

(assert (=> d!1834462 (=> (not res!2459175) (not e!3580390))))

(assert (=> d!1834462 (= res!2459175 (validRegex!7633 lt!2303296))))

(declare-fun e!3580387 () Regex!15897)

(assert (=> d!1834462 (= lt!2303296 e!3580387)))

(declare-fun c!1034107 () Bool)

(declare-fun e!3580386 () Bool)

(assert (=> d!1834462 (= c!1034107 e!3580386)))

(declare-fun res!2459174 () Bool)

(assert (=> d!1834462 (=> (not res!2459174) (not e!3580386))))

(assert (=> d!1834462 (= res!2459174 ((_ is Cons!63866) (exprs!5781 (h!70315 zl!343))))))

(assert (=> d!1834462 (forall!14988 (exprs!5781 (h!70315 zl!343)) lambda!319306)))

(assert (=> d!1834462 (= (generalisedConcat!1494 (exprs!5781 (h!70315 zl!343))) lt!2303296)))

(declare-fun b!5836680 () Bool)

(declare-fun e!3580389 () Bool)

(assert (=> b!5836680 (= e!3580390 e!3580389)))

(declare-fun c!1034109 () Bool)

(assert (=> b!5836680 (= c!1034109 (isEmpty!35736 (exprs!5781 (h!70315 zl!343))))))

(declare-fun b!5836681 () Bool)

(assert (=> b!5836681 (= e!3580386 (isEmpty!35736 (t!377345 (exprs!5781 (h!70315 zl!343)))))))

(declare-fun b!5836682 () Bool)

(declare-fun isEmptyExpr!1336 (Regex!15897) Bool)

(assert (=> b!5836682 (= e!3580389 (isEmptyExpr!1336 lt!2303296))))

(declare-fun b!5836683 () Bool)

(assert (=> b!5836683 (= e!3580388 (= lt!2303296 (head!12357 (exprs!5781 (h!70315 zl!343)))))))

(declare-fun b!5836684 () Bool)

(assert (=> b!5836684 (= e!3580387 e!3580391)))

(declare-fun c!1034108 () Bool)

(assert (=> b!5836684 (= c!1034108 ((_ is Cons!63866) (exprs!5781 (h!70315 zl!343))))))

(declare-fun b!5836685 () Bool)

(assert (=> b!5836685 (= e!3580391 EmptyExpr!15897)))

(declare-fun b!5836686 () Bool)

(assert (=> b!5836686 (= e!3580387 (h!70314 (exprs!5781 (h!70315 zl!343))))))

(declare-fun b!5836687 () Bool)

(assert (=> b!5836687 (= e!3580389 e!3580388)))

(declare-fun c!1034106 () Bool)

(assert (=> b!5836687 (= c!1034106 (isEmpty!35736 (tail!11442 (exprs!5781 (h!70315 zl!343)))))))

(assert (= (and d!1834462 res!2459174) b!5836681))

(assert (= (and d!1834462 c!1034107) b!5836686))

(assert (= (and d!1834462 (not c!1034107)) b!5836684))

(assert (= (and b!5836684 c!1034108) b!5836678))

(assert (= (and b!5836684 (not c!1034108)) b!5836685))

(assert (= (and d!1834462 res!2459175) b!5836680))

(assert (= (and b!5836680 c!1034109) b!5836682))

(assert (= (and b!5836680 (not c!1034109)) b!5836687))

(assert (= (and b!5836687 c!1034106) b!5836683))

(assert (= (and b!5836687 (not c!1034106)) b!5836679))

(declare-fun m!6762980 () Bool)

(assert (=> b!5836678 m!6762980))

(declare-fun m!6762982 () Bool)

(assert (=> b!5836680 m!6762982))

(declare-fun m!6762984 () Bool)

(assert (=> d!1834462 m!6762984))

(declare-fun m!6762986 () Bool)

(assert (=> d!1834462 m!6762986))

(declare-fun m!6762988 () Bool)

(assert (=> b!5836683 m!6762988))

(declare-fun m!6762990 () Bool)

(assert (=> b!5836679 m!6762990))

(declare-fun m!6762992 () Bool)

(assert (=> b!5836682 m!6762992))

(declare-fun m!6762994 () Bool)

(assert (=> b!5836687 m!6762994))

(assert (=> b!5836687 m!6762994))

(declare-fun m!6762996 () Bool)

(assert (=> b!5836687 m!6762996))

(declare-fun m!6762998 () Bool)

(assert (=> b!5836681 m!6762998))

(assert (=> b!5836232 d!1834462))

(declare-fun d!1834464 () Bool)

(declare-fun lt!2303299 () Regex!15897)

(assert (=> d!1834464 (validRegex!7633 lt!2303299)))

(assert (=> d!1834464 (= lt!2303299 (generalisedUnion!1741 (unfocusZipperList!1318 zl!343)))))

(assert (=> d!1834464 (= (unfocusZipper!1639 zl!343) lt!2303299)))

(declare-fun bs!1375419 () Bool)

(assert (= bs!1375419 d!1834464))

(declare-fun m!6763000 () Bool)

(assert (=> bs!1375419 m!6763000))

(assert (=> bs!1375419 m!6762812))

(assert (=> bs!1375419 m!6762812))

(assert (=> bs!1375419 m!6762814))

(assert (=> b!5836246 d!1834464))

(declare-fun d!1834466 () Bool)

(declare-fun e!3580394 () Bool)

(assert (=> d!1834466 e!3580394))

(declare-fun res!2459178 () Bool)

(assert (=> d!1834466 (=> (not res!2459178) (not e!3580394))))

(declare-fun lt!2303302 () List!63991)

(declare-fun noDuplicate!1766 (List!63991) Bool)

(assert (=> d!1834466 (= res!2459178 (noDuplicate!1766 lt!2303302))))

(declare-fun choose!44319 ((InoxSet Context!10562)) List!63991)

(assert (=> d!1834466 (= lt!2303302 (choose!44319 z!1189))))

(assert (=> d!1834466 (= (toList!9681 z!1189) lt!2303302)))

(declare-fun b!5836690 () Bool)

(declare-fun content!11731 (List!63991) (InoxSet Context!10562))

(assert (=> b!5836690 (= e!3580394 (= (content!11731 lt!2303302) z!1189))))

(assert (= (and d!1834466 res!2459178) b!5836690))

(declare-fun m!6763002 () Bool)

(assert (=> d!1834466 m!6763002))

(declare-fun m!6763004 () Bool)

(assert (=> d!1834466 m!6763004))

(declare-fun m!6763006 () Bool)

(assert (=> b!5836690 m!6763006))

(assert (=> b!5836235 d!1834466))

(declare-fun b!5836704 () Bool)

(declare-fun e!3580397 () Bool)

(declare-fun tp!1613702 () Bool)

(declare-fun tp!1613704 () Bool)

(assert (=> b!5836704 (= e!3580397 (and tp!1613702 tp!1613704))))

(declare-fun b!5836702 () Bool)

(declare-fun tp!1613701 () Bool)

(declare-fun tp!1613703 () Bool)

(assert (=> b!5836702 (= e!3580397 (and tp!1613701 tp!1613703))))

(assert (=> b!5836242 (= tp!1613630 e!3580397)))

(declare-fun b!5836703 () Bool)

(declare-fun tp!1613705 () Bool)

(assert (=> b!5836703 (= e!3580397 tp!1613705)))

(declare-fun b!5836701 () Bool)

(assert (=> b!5836701 (= e!3580397 tp_is_empty!41047)))

(assert (= (and b!5836242 ((_ is ElementMatch!15897) (reg!16226 r!7292))) b!5836701))

(assert (= (and b!5836242 ((_ is Concat!24742) (reg!16226 r!7292))) b!5836702))

(assert (= (and b!5836242 ((_ is Star!15897) (reg!16226 r!7292))) b!5836703))

(assert (= (and b!5836242 ((_ is Union!15897) (reg!16226 r!7292))) b!5836704))

(declare-fun b!5836712 () Bool)

(declare-fun e!3580403 () Bool)

(declare-fun tp!1613710 () Bool)

(assert (=> b!5836712 (= e!3580403 tp!1613710)))

(declare-fun e!3580402 () Bool)

(declare-fun b!5836711 () Bool)

(declare-fun tp!1613711 () Bool)

(assert (=> b!5836711 (= e!3580402 (and (inv!82989 (h!70315 (t!377346 zl!343))) e!3580403 tp!1613711))))

(assert (=> b!5836233 (= tp!1613627 e!3580402)))

(assert (= b!5836711 b!5836712))

(assert (= (and b!5836233 ((_ is Cons!63867) (t!377346 zl!343))) b!5836711))

(declare-fun m!6763008 () Bool)

(assert (=> b!5836711 m!6763008))

(declare-fun b!5836717 () Bool)

(declare-fun e!3580406 () Bool)

(declare-fun tp!1613716 () Bool)

(declare-fun tp!1613717 () Bool)

(assert (=> b!5836717 (= e!3580406 (and tp!1613716 tp!1613717))))

(assert (=> b!5836237 (= tp!1613624 e!3580406)))

(assert (= (and b!5836237 ((_ is Cons!63866) (exprs!5781 (h!70315 zl!343)))) b!5836717))

(declare-fun b!5836718 () Bool)

(declare-fun e!3580407 () Bool)

(declare-fun tp!1613718 () Bool)

(declare-fun tp!1613719 () Bool)

(assert (=> b!5836718 (= e!3580407 (and tp!1613718 tp!1613719))))

(assert (=> b!5836234 (= tp!1613631 e!3580407)))

(assert (= (and b!5836234 ((_ is Cons!63866) (exprs!5781 setElem!39508))) b!5836718))

(declare-fun condSetEmpty!39514 () Bool)

(assert (=> setNonEmpty!39508 (= condSetEmpty!39514 (= setRest!39508 ((as const (Array Context!10562 Bool)) false)))))

(declare-fun setRes!39514 () Bool)

(assert (=> setNonEmpty!39508 (= tp!1613623 setRes!39514)))

(declare-fun setIsEmpty!39514 () Bool)

(assert (=> setIsEmpty!39514 setRes!39514))

(declare-fun tp!1613724 () Bool)

(declare-fun setNonEmpty!39514 () Bool)

(declare-fun setElem!39514 () Context!10562)

(declare-fun e!3580410 () Bool)

(assert (=> setNonEmpty!39514 (= setRes!39514 (and tp!1613724 (inv!82989 setElem!39514) e!3580410))))

(declare-fun setRest!39514 () (InoxSet Context!10562))

(assert (=> setNonEmpty!39514 (= setRest!39508 ((_ map or) (store ((as const (Array Context!10562 Bool)) false) setElem!39514 true) setRest!39514))))

(declare-fun b!5836723 () Bool)

(declare-fun tp!1613725 () Bool)

(assert (=> b!5836723 (= e!3580410 tp!1613725)))

(assert (= (and setNonEmpty!39508 condSetEmpty!39514) setIsEmpty!39514))

(assert (= (and setNonEmpty!39508 (not condSetEmpty!39514)) setNonEmpty!39514))

(assert (= setNonEmpty!39514 b!5836723))

(declare-fun m!6763010 () Bool)

(assert (=> setNonEmpty!39514 m!6763010))

(declare-fun b!5836727 () Bool)

(declare-fun e!3580411 () Bool)

(declare-fun tp!1613727 () Bool)

(declare-fun tp!1613729 () Bool)

(assert (=> b!5836727 (= e!3580411 (and tp!1613727 tp!1613729))))

(declare-fun b!5836725 () Bool)

(declare-fun tp!1613726 () Bool)

(declare-fun tp!1613728 () Bool)

(assert (=> b!5836725 (= e!3580411 (and tp!1613726 tp!1613728))))

(assert (=> b!5836239 (= tp!1613629 e!3580411)))

(declare-fun b!5836726 () Bool)

(declare-fun tp!1613730 () Bool)

(assert (=> b!5836726 (= e!3580411 tp!1613730)))

(declare-fun b!5836724 () Bool)

(assert (=> b!5836724 (= e!3580411 tp_is_empty!41047)))

(assert (= (and b!5836239 ((_ is ElementMatch!15897) (regOne!32307 r!7292))) b!5836724))

(assert (= (and b!5836239 ((_ is Concat!24742) (regOne!32307 r!7292))) b!5836725))

(assert (= (and b!5836239 ((_ is Star!15897) (regOne!32307 r!7292))) b!5836726))

(assert (= (and b!5836239 ((_ is Union!15897) (regOne!32307 r!7292))) b!5836727))

(declare-fun b!5836731 () Bool)

(declare-fun e!3580412 () Bool)

(declare-fun tp!1613732 () Bool)

(declare-fun tp!1613734 () Bool)

(assert (=> b!5836731 (= e!3580412 (and tp!1613732 tp!1613734))))

(declare-fun b!5836729 () Bool)

(declare-fun tp!1613731 () Bool)

(declare-fun tp!1613733 () Bool)

(assert (=> b!5836729 (= e!3580412 (and tp!1613731 tp!1613733))))

(assert (=> b!5836239 (= tp!1613632 e!3580412)))

(declare-fun b!5836730 () Bool)

(declare-fun tp!1613735 () Bool)

(assert (=> b!5836730 (= e!3580412 tp!1613735)))

(declare-fun b!5836728 () Bool)

(assert (=> b!5836728 (= e!3580412 tp_is_empty!41047)))

(assert (= (and b!5836239 ((_ is ElementMatch!15897) (regTwo!32307 r!7292))) b!5836728))

(assert (= (and b!5836239 ((_ is Concat!24742) (regTwo!32307 r!7292))) b!5836729))

(assert (= (and b!5836239 ((_ is Star!15897) (regTwo!32307 r!7292))) b!5836730))

(assert (= (and b!5836239 ((_ is Union!15897) (regTwo!32307 r!7292))) b!5836731))

(declare-fun b!5836736 () Bool)

(declare-fun e!3580415 () Bool)

(declare-fun tp!1613738 () Bool)

(assert (=> b!5836736 (= e!3580415 (and tp_is_empty!41047 tp!1613738))))

(assert (=> b!5836236 (= tp!1613626 e!3580415)))

(assert (= (and b!5836236 ((_ is Cons!63868) (t!377347 s!2326))) b!5836736))

(declare-fun b!5836740 () Bool)

(declare-fun e!3580416 () Bool)

(declare-fun tp!1613740 () Bool)

(declare-fun tp!1613742 () Bool)

(assert (=> b!5836740 (= e!3580416 (and tp!1613740 tp!1613742))))

(declare-fun b!5836738 () Bool)

(declare-fun tp!1613739 () Bool)

(declare-fun tp!1613741 () Bool)

(assert (=> b!5836738 (= e!3580416 (and tp!1613739 tp!1613741))))

(assert (=> b!5836241 (= tp!1613625 e!3580416)))

(declare-fun b!5836739 () Bool)

(declare-fun tp!1613743 () Bool)

(assert (=> b!5836739 (= e!3580416 tp!1613743)))

(declare-fun b!5836737 () Bool)

(assert (=> b!5836737 (= e!3580416 tp_is_empty!41047)))

(assert (= (and b!5836241 ((_ is ElementMatch!15897) (regOne!32306 r!7292))) b!5836737))

(assert (= (and b!5836241 ((_ is Concat!24742) (regOne!32306 r!7292))) b!5836738))

(assert (= (and b!5836241 ((_ is Star!15897) (regOne!32306 r!7292))) b!5836739))

(assert (= (and b!5836241 ((_ is Union!15897) (regOne!32306 r!7292))) b!5836740))

(declare-fun b!5836744 () Bool)

(declare-fun e!3580417 () Bool)

(declare-fun tp!1613745 () Bool)

(declare-fun tp!1613747 () Bool)

(assert (=> b!5836744 (= e!3580417 (and tp!1613745 tp!1613747))))

(declare-fun b!5836742 () Bool)

(declare-fun tp!1613744 () Bool)

(declare-fun tp!1613746 () Bool)

(assert (=> b!5836742 (= e!3580417 (and tp!1613744 tp!1613746))))

(assert (=> b!5836241 (= tp!1613628 e!3580417)))

(declare-fun b!5836743 () Bool)

(declare-fun tp!1613748 () Bool)

(assert (=> b!5836743 (= e!3580417 tp!1613748)))

(declare-fun b!5836741 () Bool)

(assert (=> b!5836741 (= e!3580417 tp_is_empty!41047)))

(assert (= (and b!5836241 ((_ is ElementMatch!15897) (regTwo!32306 r!7292))) b!5836741))

(assert (= (and b!5836241 ((_ is Concat!24742) (regTwo!32306 r!7292))) b!5836742))

(assert (= (and b!5836241 ((_ is Star!15897) (regTwo!32306 r!7292))) b!5836743))

(assert (= (and b!5836241 ((_ is Union!15897) (regTwo!32306 r!7292))) b!5836744))

(check-sat (not b!5836496) (not b!5836718) (not b!5836731) (not b!5836736) (not b!5836712) (not b!5836725) (not b!5836605) (not bm!455805) (not b!5836711) (not d!1834416) (not b!5836681) (not setNonEmpty!39514) (not b!5836635) (not b!5836744) (not b!5836678) (not b!5836704) (not d!1834462) (not b!5836634) (not b!5836638) (not bm!455808) (not b!5836639) (not b!5836738) (not d!1834444) (not bm!455795) (not b!5836499) (not b!5836425) (not b!5836683) (not b!5836500) (not b!5836702) (not b!5836739) (not b!5836717) (not bm!455807) (not b!5836703) tp_is_empty!41047 (not b!5836723) (not d!1834464) (not d!1834456) (not b!5836505) (not b!5836636) (not b!5836687) (not b!5836727) (not b!5836652) (not b!5836742) (not bm!455796) (not b!5836729) (not b!5836506) (not b!5836680) (not b!5836740) (not bm!455800) (not bm!455806) (not b!5836606) (not d!1834466) (not b!5836641) (not b!5836679) (not b!5836726) (not b!5836682) (not b!5836647) (not b!5836690) (not b!5836730) (not b!5836743) (not b!5836495) (not d!1834452) (not d!1834454) (not d!1834458) (not b!5836640))
(check-sat)
