; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663288 () Bool)

(assert start!663288)

(declare-fun b!6873471 () Bool)

(declare-fun e!4142982 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33688 0))(
  ( (C!33689 (val!26546 Int)) )
))
(declare-datatypes ((Regex!16709 0))(
  ( (ElementMatch!16709 (c!1279123 C!33688)) (Concat!25554 (regOne!33930 Regex!16709) (regTwo!33930 Regex!16709)) (EmptyExpr!16709) (Star!16709 (reg!17038 Regex!16709)) (EmptyLang!16709) (Union!16709 (regOne!33931 Regex!16709) (regTwo!33931 Regex!16709)) )
))
(declare-datatypes ((List!66426 0))(
  ( (Nil!66302) (Cons!66302 (h!72750 Regex!16709) (t!380169 List!66426)) )
))
(declare-datatypes ((Context!12186 0))(
  ( (Context!12187 (exprs!6593 List!66426)) )
))
(declare-fun z!1189 () (InoxSet Context!12186))

(assert (=> b!6873471 (= e!4142982 (= z!1189 ((as const (Array Context!12186 Bool)) false)))))

(declare-fun b!6873472 () Bool)

(declare-fun e!4142987 () Bool)

(declare-fun tp!1887761 () Bool)

(declare-fun tp!1887759 () Bool)

(assert (=> b!6873472 (= e!4142987 (and tp!1887761 tp!1887759))))

(declare-fun b!6873473 () Bool)

(declare-fun tp!1887755 () Bool)

(assert (=> b!6873473 (= e!4142987 tp!1887755)))

(declare-fun b!6873474 () Bool)

(declare-fun e!4142983 () Bool)

(declare-fun tp!1887758 () Bool)

(assert (=> b!6873474 (= e!4142983 tp!1887758)))

(declare-fun res!2803142 () Bool)

(declare-fun e!4142988 () Bool)

(assert (=> start!663288 (=> (not res!2803142) (not e!4142988))))

(declare-fun r!7292 () Regex!16709)

(declare-fun validRegex!8445 (Regex!16709) Bool)

(assert (=> start!663288 (= res!2803142 (validRegex!8445 r!7292))))

(assert (=> start!663288 e!4142988))

(assert (=> start!663288 e!4142987))

(declare-fun condSetEmpty!47283 () Bool)

(assert (=> start!663288 (= condSetEmpty!47283 (= z!1189 ((as const (Array Context!12186 Bool)) false)))))

(declare-fun setRes!47283 () Bool)

(assert (=> start!663288 setRes!47283))

(declare-fun e!4142984 () Bool)

(assert (=> start!663288 e!4142984))

(declare-fun e!4142985 () Bool)

(assert (=> start!663288 e!4142985))

(declare-fun setIsEmpty!47283 () Bool)

(assert (=> setIsEmpty!47283 setRes!47283))

(declare-fun b!6873475 () Bool)

(declare-fun res!2803143 () Bool)

(assert (=> b!6873475 (=> res!2803143 e!4142982)))

(declare-datatypes ((List!66427 0))(
  ( (Nil!66303) (Cons!66303 (h!72751 Context!12186) (t!380170 List!66427)) )
))
(declare-fun zl!343 () List!66427)

(get-info :version)

(assert (=> b!6873475 (= res!2803143 ((_ is Cons!66303) zl!343))))

(declare-fun b!6873476 () Bool)

(declare-fun tp!1887762 () Bool)

(declare-fun tp!1887760 () Bool)

(assert (=> b!6873476 (= e!4142987 (and tp!1887762 tp!1887760))))

(declare-fun b!6873477 () Bool)

(assert (=> b!6873477 (= e!4142988 (not e!4142982))))

(declare-fun res!2803139 () Bool)

(assert (=> b!6873477 (=> res!2803139 e!4142982)))

(declare-fun e!4142981 () Bool)

(assert (=> b!6873477 (= res!2803139 e!4142981)))

(declare-fun res!2803138 () Bool)

(assert (=> b!6873477 (=> (not res!2803138) (not e!4142981))))

(assert (=> b!6873477 (= res!2803138 ((_ is Cons!66303) zl!343))))

(declare-datatypes ((List!66428 0))(
  ( (Nil!66304) (Cons!66304 (h!72752 C!33688) (t!380171 List!66428)) )
))
(declare-fun s!2326 () List!66428)

(declare-fun matchR!8892 (Regex!16709 List!66428) Bool)

(declare-fun matchRSpec!3810 (Regex!16709 List!66428) Bool)

(assert (=> b!6873477 (= (matchR!8892 r!7292 s!2326) (matchRSpec!3810 r!7292 s!2326))))

(declare-datatypes ((Unit!160202 0))(
  ( (Unit!160203) )
))
(declare-fun lt!2458918 () Unit!160202)

(declare-fun mainMatchTheorem!3810 (Regex!16709 List!66428) Unit!160202)

(assert (=> b!6873477 (= lt!2458918 (mainMatchTheorem!3810 r!7292 s!2326))))

(declare-fun b!6873478 () Bool)

(declare-fun tp_is_empty!42671 () Bool)

(assert (=> b!6873478 (= e!4142987 tp_is_empty!42671)))

(declare-fun b!6873479 () Bool)

(declare-fun tp!1887756 () Bool)

(assert (=> b!6873479 (= e!4142985 (and tp_is_empty!42671 tp!1887756))))

(declare-fun e!4142986 () Bool)

(declare-fun b!6873480 () Bool)

(declare-fun tp!1887754 () Bool)

(declare-fun inv!85019 (Context!12186) Bool)

(assert (=> b!6873480 (= e!4142984 (and (inv!85019 (h!72751 zl!343)) e!4142986 tp!1887754))))

(declare-fun b!6873481 () Bool)

(declare-fun res!2803141 () Bool)

(assert (=> b!6873481 (=> (not res!2803141) (not e!4142988))))

(declare-fun unfocusZipper!2451 (List!66427) Regex!16709)

(assert (=> b!6873481 (= res!2803141 (= r!7292 (unfocusZipper!2451 zl!343)))))

(declare-fun setElem!47283 () Context!12186)

(declare-fun tp!1887763 () Bool)

(declare-fun setNonEmpty!47283 () Bool)

(assert (=> setNonEmpty!47283 (= setRes!47283 (and tp!1887763 (inv!85019 setElem!47283) e!4142983))))

(declare-fun setRest!47283 () (InoxSet Context!12186))

(assert (=> setNonEmpty!47283 (= z!1189 ((_ map or) (store ((as const (Array Context!12186 Bool)) false) setElem!47283 true) setRest!47283))))

(declare-fun b!6873482 () Bool)

(declare-fun res!2803140 () Bool)

(assert (=> b!6873482 (=> res!2803140 e!4142982)))

(declare-fun isEmptyLang!2029 (Regex!16709) Bool)

(assert (=> b!6873482 (= res!2803140 (not (isEmptyLang!2029 r!7292)))))

(declare-fun b!6873483 () Bool)

(declare-fun res!2803144 () Bool)

(assert (=> b!6873483 (=> (not res!2803144) (not e!4142988))))

(declare-fun toList!10493 ((InoxSet Context!12186)) List!66427)

(assert (=> b!6873483 (= res!2803144 (= (toList!10493 z!1189) zl!343))))

(declare-fun b!6873484 () Bool)

(declare-fun isEmpty!38647 (List!66427) Bool)

(assert (=> b!6873484 (= e!4142981 (isEmpty!38647 (t!380170 zl!343)))))

(declare-fun b!6873485 () Bool)

(declare-fun tp!1887757 () Bool)

(assert (=> b!6873485 (= e!4142986 tp!1887757)))

(assert (= (and start!663288 res!2803142) b!6873483))

(assert (= (and b!6873483 res!2803144) b!6873481))

(assert (= (and b!6873481 res!2803141) b!6873477))

(assert (= (and b!6873477 res!2803138) b!6873484))

(assert (= (and b!6873477 (not res!2803139)) b!6873475))

(assert (= (and b!6873475 (not res!2803143)) b!6873482))

(assert (= (and b!6873482 (not res!2803140)) b!6873471))

(assert (= (and start!663288 ((_ is ElementMatch!16709) r!7292)) b!6873478))

(assert (= (and start!663288 ((_ is Concat!25554) r!7292)) b!6873476))

(assert (= (and start!663288 ((_ is Star!16709) r!7292)) b!6873473))

(assert (= (and start!663288 ((_ is Union!16709) r!7292)) b!6873472))

(assert (= (and start!663288 condSetEmpty!47283) setIsEmpty!47283))

(assert (= (and start!663288 (not condSetEmpty!47283)) setNonEmpty!47283))

(assert (= setNonEmpty!47283 b!6873474))

(assert (= b!6873480 b!6873485))

(assert (= (and start!663288 ((_ is Cons!66303) zl!343)) b!6873480))

(assert (= (and start!663288 ((_ is Cons!66304) s!2326)) b!6873479))

(declare-fun m!7603152 () Bool)

(assert (=> start!663288 m!7603152))

(declare-fun m!7603154 () Bool)

(assert (=> b!6873481 m!7603154))

(declare-fun m!7603156 () Bool)

(assert (=> b!6873482 m!7603156))

(declare-fun m!7603158 () Bool)

(assert (=> b!6873477 m!7603158))

(declare-fun m!7603160 () Bool)

(assert (=> b!6873477 m!7603160))

(declare-fun m!7603162 () Bool)

(assert (=> b!6873477 m!7603162))

(declare-fun m!7603164 () Bool)

(assert (=> b!6873480 m!7603164))

(declare-fun m!7603166 () Bool)

(assert (=> setNonEmpty!47283 m!7603166))

(declare-fun m!7603168 () Bool)

(assert (=> b!6873483 m!7603168))

(declare-fun m!7603170 () Bool)

(assert (=> b!6873484 m!7603170))

(check-sat (not setNonEmpty!47283) (not b!6873479) (not b!6873485) (not start!663288) (not b!6873483) (not b!6873482) (not b!6873473) (not b!6873472) (not b!6873474) tp_is_empty!42671 (not b!6873480) (not b!6873481) (not b!6873484) (not b!6873477) (not b!6873476))
(check-sat)
(get-model)

(declare-fun b!6873514 () Bool)

(declare-fun e!4143004 () Bool)

(declare-fun e!4143005 () Bool)

(assert (=> b!6873514 (= e!4143004 e!4143005)))

(declare-fun res!2803167 () Bool)

(assert (=> b!6873514 (=> res!2803167 e!4143005)))

(declare-fun call!625994 () Bool)

(assert (=> b!6873514 (= res!2803167 call!625994)))

(declare-fun d!2158920 () Bool)

(declare-fun e!4143006 () Bool)

(assert (=> d!2158920 e!4143006))

(declare-fun c!1279132 () Bool)

(assert (=> d!2158920 (= c!1279132 ((_ is EmptyExpr!16709) r!7292))))

(declare-fun lt!2458921 () Bool)

(declare-fun e!4143007 () Bool)

(assert (=> d!2158920 (= lt!2458921 e!4143007)))

(declare-fun c!1279131 () Bool)

(declare-fun isEmpty!38649 (List!66428) Bool)

(assert (=> d!2158920 (= c!1279131 (isEmpty!38649 s!2326))))

(assert (=> d!2158920 (validRegex!8445 r!7292)))

(assert (=> d!2158920 (= (matchR!8892 r!7292 s!2326) lt!2458921)))

(declare-fun b!6873515 () Bool)

(declare-fun res!2803161 () Bool)

(assert (=> b!6873515 (=> res!2803161 e!4143005)))

(declare-fun tail!12845 (List!66428) List!66428)

(assert (=> b!6873515 (= res!2803161 (not (isEmpty!38649 (tail!12845 s!2326))))))

(declare-fun b!6873516 () Bool)

(declare-fun res!2803168 () Bool)

(declare-fun e!4143008 () Bool)

(assert (=> b!6873516 (=> res!2803168 e!4143008)))

(declare-fun e!4143009 () Bool)

(assert (=> b!6873516 (= res!2803168 e!4143009)))

(declare-fun res!2803165 () Bool)

(assert (=> b!6873516 (=> (not res!2803165) (not e!4143009))))

(assert (=> b!6873516 (= res!2803165 lt!2458921)))

(declare-fun b!6873517 () Bool)

(assert (=> b!6873517 (= e!4143006 (= lt!2458921 call!625994))))

(declare-fun b!6873518 () Bool)

(assert (=> b!6873518 (= e!4143008 e!4143004)))

(declare-fun res!2803166 () Bool)

(assert (=> b!6873518 (=> (not res!2803166) (not e!4143004))))

(assert (=> b!6873518 (= res!2803166 (not lt!2458921))))

(declare-fun b!6873519 () Bool)

(declare-fun res!2803162 () Bool)

(assert (=> b!6873519 (=> (not res!2803162) (not e!4143009))))

(assert (=> b!6873519 (= res!2803162 (not call!625994))))

(declare-fun b!6873520 () Bool)

(declare-fun derivativeStep!5346 (Regex!16709 C!33688) Regex!16709)

(declare-fun head!13793 (List!66428) C!33688)

(assert (=> b!6873520 (= e!4143007 (matchR!8892 (derivativeStep!5346 r!7292 (head!13793 s!2326)) (tail!12845 s!2326)))))

(declare-fun b!6873521 () Bool)

(assert (=> b!6873521 (= e!4143009 (= (head!13793 s!2326) (c!1279123 r!7292)))))

(declare-fun b!6873522 () Bool)

(declare-fun nullable!6664 (Regex!16709) Bool)

(assert (=> b!6873522 (= e!4143007 (nullable!6664 r!7292))))

(declare-fun b!6873523 () Bool)

(assert (=> b!6873523 (= e!4143005 (not (= (head!13793 s!2326) (c!1279123 r!7292))))))

(declare-fun b!6873524 () Bool)

(declare-fun e!4143003 () Bool)

(assert (=> b!6873524 (= e!4143006 e!4143003)))

(declare-fun c!1279130 () Bool)

(assert (=> b!6873524 (= c!1279130 ((_ is EmptyLang!16709) r!7292))))

(declare-fun b!6873525 () Bool)

(declare-fun res!2803164 () Bool)

(assert (=> b!6873525 (=> res!2803164 e!4143008)))

(assert (=> b!6873525 (= res!2803164 (not ((_ is ElementMatch!16709) r!7292)))))

(assert (=> b!6873525 (= e!4143003 e!4143008)))

(declare-fun b!6873526 () Bool)

(assert (=> b!6873526 (= e!4143003 (not lt!2458921))))

(declare-fun bm!625989 () Bool)

(assert (=> bm!625989 (= call!625994 (isEmpty!38649 s!2326))))

(declare-fun b!6873527 () Bool)

(declare-fun res!2803163 () Bool)

(assert (=> b!6873527 (=> (not res!2803163) (not e!4143009))))

(assert (=> b!6873527 (= res!2803163 (isEmpty!38649 (tail!12845 s!2326)))))

(assert (= (and d!2158920 c!1279131) b!6873522))

(assert (= (and d!2158920 (not c!1279131)) b!6873520))

(assert (= (and d!2158920 c!1279132) b!6873517))

(assert (= (and d!2158920 (not c!1279132)) b!6873524))

(assert (= (and b!6873524 c!1279130) b!6873526))

(assert (= (and b!6873524 (not c!1279130)) b!6873525))

(assert (= (and b!6873525 (not res!2803164)) b!6873516))

(assert (= (and b!6873516 res!2803165) b!6873519))

(assert (= (and b!6873519 res!2803162) b!6873527))

(assert (= (and b!6873527 res!2803163) b!6873521))

(assert (= (and b!6873516 (not res!2803168)) b!6873518))

(assert (= (and b!6873518 res!2803166) b!6873514))

(assert (= (and b!6873514 (not res!2803167)) b!6873515))

(assert (= (and b!6873515 (not res!2803161)) b!6873523))

(assert (= (or b!6873517 b!6873514 b!6873519) bm!625989))

(declare-fun m!7603172 () Bool)

(assert (=> d!2158920 m!7603172))

(assert (=> d!2158920 m!7603152))

(declare-fun m!7603174 () Bool)

(assert (=> b!6873522 m!7603174))

(declare-fun m!7603176 () Bool)

(assert (=> b!6873527 m!7603176))

(assert (=> b!6873527 m!7603176))

(declare-fun m!7603178 () Bool)

(assert (=> b!6873527 m!7603178))

(declare-fun m!7603180 () Bool)

(assert (=> b!6873523 m!7603180))

(assert (=> b!6873521 m!7603180))

(assert (=> bm!625989 m!7603172))

(assert (=> b!6873515 m!7603176))

(assert (=> b!6873515 m!7603176))

(assert (=> b!6873515 m!7603178))

(assert (=> b!6873520 m!7603180))

(assert (=> b!6873520 m!7603180))

(declare-fun m!7603182 () Bool)

(assert (=> b!6873520 m!7603182))

(assert (=> b!6873520 m!7603176))

(assert (=> b!6873520 m!7603182))

(assert (=> b!6873520 m!7603176))

(declare-fun m!7603184 () Bool)

(assert (=> b!6873520 m!7603184))

(assert (=> b!6873477 d!2158920))

(declare-fun b!6873733 () Bool)

(assert (=> b!6873733 true))

(assert (=> b!6873733 true))

(declare-fun bs!1837530 () Bool)

(declare-fun b!6873737 () Bool)

(assert (= bs!1837530 (and b!6873737 b!6873733)))

(declare-fun lambda!389087 () Int)

(declare-fun lambda!389086 () Int)

(assert (=> bs!1837530 (not (= lambda!389087 lambda!389086))))

(assert (=> b!6873737 true))

(assert (=> b!6873737 true))

(declare-fun e!4143126 () Bool)

(declare-fun call!626017 () Bool)

(assert (=> b!6873733 (= e!4143126 call!626017)))

(declare-fun c!1279169 () Bool)

(declare-fun bm!626012 () Bool)

(declare-fun Exists!3763 (Int) Bool)

(assert (=> bm!626012 (= call!626017 (Exists!3763 (ite c!1279169 lambda!389086 lambda!389087)))))

(declare-fun b!6873734 () Bool)

(declare-fun c!1279168 () Bool)

(assert (=> b!6873734 (= c!1279168 ((_ is ElementMatch!16709) r!7292))))

(declare-fun e!4143121 () Bool)

(declare-fun e!4143125 () Bool)

(assert (=> b!6873734 (= e!4143121 e!4143125)))

(declare-fun bm!626013 () Bool)

(declare-fun call!626018 () Bool)

(assert (=> bm!626013 (= call!626018 (isEmpty!38649 s!2326))))

(declare-fun b!6873736 () Bool)

(declare-fun e!4143123 () Bool)

(declare-fun e!4143124 () Bool)

(assert (=> b!6873736 (= e!4143123 e!4143124)))

(assert (=> b!6873736 (= c!1279169 ((_ is Star!16709) r!7292))))

(assert (=> b!6873737 (= e!4143124 call!626017)))

(declare-fun b!6873738 () Bool)

(assert (=> b!6873738 (= e!4143125 (= s!2326 (Cons!66304 (c!1279123 r!7292) Nil!66304)))))

(declare-fun b!6873739 () Bool)

(declare-fun e!4143127 () Bool)

(assert (=> b!6873739 (= e!4143123 e!4143127)))

(declare-fun res!2803248 () Bool)

(assert (=> b!6873739 (= res!2803248 (matchRSpec!3810 (regOne!33931 r!7292) s!2326))))

(assert (=> b!6873739 (=> res!2803248 e!4143127)))

(declare-fun b!6873740 () Bool)

(declare-fun e!4143122 () Bool)

(assert (=> b!6873740 (= e!4143122 call!626018)))

(declare-fun b!6873741 () Bool)

(declare-fun res!2803246 () Bool)

(assert (=> b!6873741 (=> res!2803246 e!4143126)))

(assert (=> b!6873741 (= res!2803246 call!626018)))

(assert (=> b!6873741 (= e!4143124 e!4143126)))

(declare-fun d!2158924 () Bool)

(declare-fun c!1279171 () Bool)

(assert (=> d!2158924 (= c!1279171 ((_ is EmptyExpr!16709) r!7292))))

(assert (=> d!2158924 (= (matchRSpec!3810 r!7292 s!2326) e!4143122)))

(declare-fun b!6873735 () Bool)

(declare-fun c!1279170 () Bool)

(assert (=> b!6873735 (= c!1279170 ((_ is Union!16709) r!7292))))

(assert (=> b!6873735 (= e!4143125 e!4143123)))

(declare-fun b!6873742 () Bool)

(assert (=> b!6873742 (= e!4143127 (matchRSpec!3810 (regTwo!33931 r!7292) s!2326))))

(declare-fun b!6873743 () Bool)

(assert (=> b!6873743 (= e!4143122 e!4143121)))

(declare-fun res!2803247 () Bool)

(assert (=> b!6873743 (= res!2803247 (not ((_ is EmptyLang!16709) r!7292)))))

(assert (=> b!6873743 (=> (not res!2803247) (not e!4143121))))

(assert (= (and d!2158924 c!1279171) b!6873740))

(assert (= (and d!2158924 (not c!1279171)) b!6873743))

(assert (= (and b!6873743 res!2803247) b!6873734))

(assert (= (and b!6873734 c!1279168) b!6873738))

(assert (= (and b!6873734 (not c!1279168)) b!6873735))

(assert (= (and b!6873735 c!1279170) b!6873739))

(assert (= (and b!6873735 (not c!1279170)) b!6873736))

(assert (= (and b!6873739 (not res!2803248)) b!6873742))

(assert (= (and b!6873736 c!1279169) b!6873741))

(assert (= (and b!6873736 (not c!1279169)) b!6873737))

(assert (= (and b!6873741 (not res!2803246)) b!6873733))

(assert (= (or b!6873733 b!6873737) bm!626012))

(assert (= (or b!6873740 b!6873741) bm!626013))

(declare-fun m!7603234 () Bool)

(assert (=> bm!626012 m!7603234))

(assert (=> bm!626013 m!7603172))

(declare-fun m!7603236 () Bool)

(assert (=> b!6873739 m!7603236))

(declare-fun m!7603238 () Bool)

(assert (=> b!6873742 m!7603238))

(assert (=> b!6873477 d!2158924))

(declare-fun d!2158944 () Bool)

(assert (=> d!2158944 (= (matchR!8892 r!7292 s!2326) (matchRSpec!3810 r!7292 s!2326))))

(declare-fun lt!2458936 () Unit!160202)

(declare-fun choose!51220 (Regex!16709 List!66428) Unit!160202)

(assert (=> d!2158944 (= lt!2458936 (choose!51220 r!7292 s!2326))))

(assert (=> d!2158944 (validRegex!8445 r!7292)))

(assert (=> d!2158944 (= (mainMatchTheorem!3810 r!7292 s!2326) lt!2458936)))

(declare-fun bs!1837531 () Bool)

(assert (= bs!1837531 d!2158944))

(assert (=> bs!1837531 m!7603158))

(assert (=> bs!1837531 m!7603160))

(declare-fun m!7603240 () Bool)

(assert (=> bs!1837531 m!7603240))

(assert (=> bs!1837531 m!7603152))

(assert (=> b!6873477 d!2158944))

(declare-fun b!6873766 () Bool)

(declare-fun e!4143146 () Bool)

(declare-fun call!626026 () Bool)

(assert (=> b!6873766 (= e!4143146 call!626026)))

(declare-fun b!6873767 () Bool)

(declare-fun e!4143143 () Bool)

(assert (=> b!6873767 (= e!4143143 call!626026)))

(declare-fun b!6873768 () Bool)

(declare-fun e!4143148 () Bool)

(declare-fun call!626027 () Bool)

(assert (=> b!6873768 (= e!4143148 call!626027)))

(declare-fun b!6873769 () Bool)

(declare-fun e!4143145 () Bool)

(assert (=> b!6873769 (= e!4143145 e!4143146)))

(declare-fun res!2803261 () Bool)

(assert (=> b!6873769 (=> (not res!2803261) (not e!4143146))))

(declare-fun call!626025 () Bool)

(assert (=> b!6873769 (= res!2803261 call!626025)))

(declare-fun b!6873770 () Bool)

(declare-fun e!4143142 () Bool)

(declare-fun e!4143144 () Bool)

(assert (=> b!6873770 (= e!4143142 e!4143144)))

(declare-fun c!1279177 () Bool)

(assert (=> b!6873770 (= c!1279177 ((_ is Union!16709) r!7292))))

(declare-fun bm!626021 () Bool)

(assert (=> bm!626021 (= call!626026 call!626027)))

(declare-fun b!6873771 () Bool)

(declare-fun e!4143147 () Bool)

(assert (=> b!6873771 (= e!4143147 e!4143142)))

(declare-fun c!1279176 () Bool)

(assert (=> b!6873771 (= c!1279176 ((_ is Star!16709) r!7292))))

(declare-fun bm!626022 () Bool)

(assert (=> bm!626022 (= call!626025 (validRegex!8445 (ite c!1279177 (regOne!33931 r!7292) (regOne!33930 r!7292))))))

(declare-fun b!6873772 () Bool)

(declare-fun res!2803263 () Bool)

(assert (=> b!6873772 (=> (not res!2803263) (not e!4143143))))

(assert (=> b!6873772 (= res!2803263 call!626025)))

(assert (=> b!6873772 (= e!4143144 e!4143143)))

(declare-fun bm!626020 () Bool)

(assert (=> bm!626020 (= call!626027 (validRegex!8445 (ite c!1279176 (reg!17038 r!7292) (ite c!1279177 (regTwo!33931 r!7292) (regTwo!33930 r!7292)))))))

(declare-fun d!2158946 () Bool)

(declare-fun res!2803260 () Bool)

(assert (=> d!2158946 (=> res!2803260 e!4143147)))

(assert (=> d!2158946 (= res!2803260 ((_ is ElementMatch!16709) r!7292))))

(assert (=> d!2158946 (= (validRegex!8445 r!7292) e!4143147)))

(declare-fun b!6873773 () Bool)

(assert (=> b!6873773 (= e!4143142 e!4143148)))

(declare-fun res!2803262 () Bool)

(assert (=> b!6873773 (= res!2803262 (not (nullable!6664 (reg!17038 r!7292))))))

(assert (=> b!6873773 (=> (not res!2803262) (not e!4143148))))

(declare-fun b!6873774 () Bool)

(declare-fun res!2803259 () Bool)

(assert (=> b!6873774 (=> res!2803259 e!4143145)))

(assert (=> b!6873774 (= res!2803259 (not ((_ is Concat!25554) r!7292)))))

(assert (=> b!6873774 (= e!4143144 e!4143145)))

(assert (= (and d!2158946 (not res!2803260)) b!6873771))

(assert (= (and b!6873771 c!1279176) b!6873773))

(assert (= (and b!6873771 (not c!1279176)) b!6873770))

(assert (= (and b!6873773 res!2803262) b!6873768))

(assert (= (and b!6873770 c!1279177) b!6873772))

(assert (= (and b!6873770 (not c!1279177)) b!6873774))

(assert (= (and b!6873772 res!2803263) b!6873767))

(assert (= (and b!6873774 (not res!2803259)) b!6873769))

(assert (= (and b!6873769 res!2803261) b!6873766))

(assert (= (or b!6873767 b!6873766) bm!626021))

(assert (= (or b!6873772 b!6873769) bm!626022))

(assert (= (or b!6873768 bm!626021) bm!626020))

(declare-fun m!7603242 () Bool)

(assert (=> bm!626022 m!7603242))

(declare-fun m!7603244 () Bool)

(assert (=> bm!626020 m!7603244))

(declare-fun m!7603246 () Bool)

(assert (=> b!6873773 m!7603246))

(assert (=> start!663288 d!2158946))

(declare-fun d!2158948 () Bool)

(declare-fun lambda!389090 () Int)

(declare-fun forall!15908 (List!66426 Int) Bool)

(assert (=> d!2158948 (= (inv!85019 setElem!47283) (forall!15908 (exprs!6593 setElem!47283) lambda!389090))))

(declare-fun bs!1837532 () Bool)

(assert (= bs!1837532 d!2158948))

(declare-fun m!7603248 () Bool)

(assert (=> bs!1837532 m!7603248))

(assert (=> setNonEmpty!47283 d!2158948))

(declare-fun d!2158950 () Bool)

(declare-fun lt!2458939 () Regex!16709)

(assert (=> d!2158950 (validRegex!8445 lt!2458939)))

(declare-fun generalisedUnion!2538 (List!66426) Regex!16709)

(declare-fun unfocusZipperList!2126 (List!66427) List!66426)

(assert (=> d!2158950 (= lt!2458939 (generalisedUnion!2538 (unfocusZipperList!2126 zl!343)))))

(assert (=> d!2158950 (= (unfocusZipper!2451 zl!343) lt!2458939)))

(declare-fun bs!1837533 () Bool)

(assert (= bs!1837533 d!2158950))

(declare-fun m!7603250 () Bool)

(assert (=> bs!1837533 m!7603250))

(declare-fun m!7603252 () Bool)

(assert (=> bs!1837533 m!7603252))

(assert (=> bs!1837533 m!7603252))

(declare-fun m!7603254 () Bool)

(assert (=> bs!1837533 m!7603254))

(assert (=> b!6873481 d!2158950))

(declare-fun d!2158952 () Bool)

(assert (=> d!2158952 (= (isEmpty!38647 (t!380170 zl!343)) ((_ is Nil!66303) (t!380170 zl!343)))))

(assert (=> b!6873484 d!2158952))

(declare-fun bs!1837534 () Bool)

(declare-fun d!2158954 () Bool)

(assert (= bs!1837534 (and d!2158954 d!2158948)))

(declare-fun lambda!389091 () Int)

(assert (=> bs!1837534 (= lambda!389091 lambda!389090)))

(assert (=> d!2158954 (= (inv!85019 (h!72751 zl!343)) (forall!15908 (exprs!6593 (h!72751 zl!343)) lambda!389091))))

(declare-fun bs!1837535 () Bool)

(assert (= bs!1837535 d!2158954))

(declare-fun m!7603256 () Bool)

(assert (=> bs!1837535 m!7603256))

(assert (=> b!6873480 d!2158954))

(declare-fun d!2158956 () Bool)

(declare-fun e!4143151 () Bool)

(assert (=> d!2158956 e!4143151))

(declare-fun res!2803266 () Bool)

(assert (=> d!2158956 (=> (not res!2803266) (not e!4143151))))

(declare-fun lt!2458942 () List!66427)

(declare-fun noDuplicate!2466 (List!66427) Bool)

(assert (=> d!2158956 (= res!2803266 (noDuplicate!2466 lt!2458942))))

(declare-fun choose!51221 ((InoxSet Context!12186)) List!66427)

(assert (=> d!2158956 (= lt!2458942 (choose!51221 z!1189))))

(assert (=> d!2158956 (= (toList!10493 z!1189) lt!2458942)))

(declare-fun b!6873777 () Bool)

(declare-fun content!13018 (List!66427) (InoxSet Context!12186))

(assert (=> b!6873777 (= e!4143151 (= (content!13018 lt!2458942) z!1189))))

(assert (= (and d!2158956 res!2803266) b!6873777))

(declare-fun m!7603258 () Bool)

(assert (=> d!2158956 m!7603258))

(declare-fun m!7603260 () Bool)

(assert (=> d!2158956 m!7603260))

(declare-fun m!7603262 () Bool)

(assert (=> b!6873777 m!7603262))

(assert (=> b!6873483 d!2158956))

(declare-fun d!2158958 () Bool)

(assert (=> d!2158958 (= (isEmptyLang!2029 r!7292) ((_ is EmptyLang!16709) r!7292))))

(assert (=> b!6873482 d!2158958))

(declare-fun b!6873789 () Bool)

(declare-fun e!4143154 () Bool)

(declare-fun tp!1887833 () Bool)

(declare-fun tp!1887834 () Bool)

(assert (=> b!6873789 (= e!4143154 (and tp!1887833 tp!1887834))))

(declare-fun b!6873788 () Bool)

(assert (=> b!6873788 (= e!4143154 tp_is_empty!42671)))

(declare-fun b!6873790 () Bool)

(declare-fun tp!1887836 () Bool)

(assert (=> b!6873790 (= e!4143154 tp!1887836)))

(declare-fun b!6873791 () Bool)

(declare-fun tp!1887832 () Bool)

(declare-fun tp!1887835 () Bool)

(assert (=> b!6873791 (= e!4143154 (and tp!1887832 tp!1887835))))

(assert (=> b!6873473 (= tp!1887755 e!4143154)))

(assert (= (and b!6873473 ((_ is ElementMatch!16709) (reg!17038 r!7292))) b!6873788))

(assert (= (and b!6873473 ((_ is Concat!25554) (reg!17038 r!7292))) b!6873789))

(assert (= (and b!6873473 ((_ is Star!16709) (reg!17038 r!7292))) b!6873790))

(assert (= (and b!6873473 ((_ is Union!16709) (reg!17038 r!7292))) b!6873791))

(declare-fun b!6873793 () Bool)

(declare-fun e!4143155 () Bool)

(declare-fun tp!1887838 () Bool)

(declare-fun tp!1887839 () Bool)

(assert (=> b!6873793 (= e!4143155 (and tp!1887838 tp!1887839))))

(declare-fun b!6873792 () Bool)

(assert (=> b!6873792 (= e!4143155 tp_is_empty!42671)))

(declare-fun b!6873794 () Bool)

(declare-fun tp!1887841 () Bool)

(assert (=> b!6873794 (= e!4143155 tp!1887841)))

(declare-fun b!6873795 () Bool)

(declare-fun tp!1887837 () Bool)

(declare-fun tp!1887840 () Bool)

(assert (=> b!6873795 (= e!4143155 (and tp!1887837 tp!1887840))))

(assert (=> b!6873472 (= tp!1887761 e!4143155)))

(assert (= (and b!6873472 ((_ is ElementMatch!16709) (regOne!33931 r!7292))) b!6873792))

(assert (= (and b!6873472 ((_ is Concat!25554) (regOne!33931 r!7292))) b!6873793))

(assert (= (and b!6873472 ((_ is Star!16709) (regOne!33931 r!7292))) b!6873794))

(assert (= (and b!6873472 ((_ is Union!16709) (regOne!33931 r!7292))) b!6873795))

(declare-fun b!6873797 () Bool)

(declare-fun e!4143156 () Bool)

(declare-fun tp!1887843 () Bool)

(declare-fun tp!1887844 () Bool)

(assert (=> b!6873797 (= e!4143156 (and tp!1887843 tp!1887844))))

(declare-fun b!6873796 () Bool)

(assert (=> b!6873796 (= e!4143156 tp_is_empty!42671)))

(declare-fun b!6873798 () Bool)

(declare-fun tp!1887846 () Bool)

(assert (=> b!6873798 (= e!4143156 tp!1887846)))

(declare-fun b!6873799 () Bool)

(declare-fun tp!1887842 () Bool)

(declare-fun tp!1887845 () Bool)

(assert (=> b!6873799 (= e!4143156 (and tp!1887842 tp!1887845))))

(assert (=> b!6873472 (= tp!1887759 e!4143156)))

(assert (= (and b!6873472 ((_ is ElementMatch!16709) (regTwo!33931 r!7292))) b!6873796))

(assert (= (and b!6873472 ((_ is Concat!25554) (regTwo!33931 r!7292))) b!6873797))

(assert (= (and b!6873472 ((_ is Star!16709) (regTwo!33931 r!7292))) b!6873798))

(assert (= (and b!6873472 ((_ is Union!16709) (regTwo!33931 r!7292))) b!6873799))

(declare-fun condSetEmpty!47289 () Bool)

(assert (=> setNonEmpty!47283 (= condSetEmpty!47289 (= setRest!47283 ((as const (Array Context!12186 Bool)) false)))))

(declare-fun setRes!47289 () Bool)

(assert (=> setNonEmpty!47283 (= tp!1887763 setRes!47289)))

(declare-fun setIsEmpty!47289 () Bool)

(assert (=> setIsEmpty!47289 setRes!47289))

(declare-fun tp!1887852 () Bool)

(declare-fun e!4143159 () Bool)

(declare-fun setElem!47289 () Context!12186)

(declare-fun setNonEmpty!47289 () Bool)

(assert (=> setNonEmpty!47289 (= setRes!47289 (and tp!1887852 (inv!85019 setElem!47289) e!4143159))))

(declare-fun setRest!47289 () (InoxSet Context!12186))

(assert (=> setNonEmpty!47289 (= setRest!47283 ((_ map or) (store ((as const (Array Context!12186 Bool)) false) setElem!47289 true) setRest!47289))))

(declare-fun b!6873804 () Bool)

(declare-fun tp!1887851 () Bool)

(assert (=> b!6873804 (= e!4143159 tp!1887851)))

(assert (= (and setNonEmpty!47283 condSetEmpty!47289) setIsEmpty!47289))

(assert (= (and setNonEmpty!47283 (not condSetEmpty!47289)) setNonEmpty!47289))

(assert (= setNonEmpty!47289 b!6873804))

(declare-fun m!7603264 () Bool)

(assert (=> setNonEmpty!47289 m!7603264))

(declare-fun b!6873806 () Bool)

(declare-fun e!4143160 () Bool)

(declare-fun tp!1887854 () Bool)

(declare-fun tp!1887855 () Bool)

(assert (=> b!6873806 (= e!4143160 (and tp!1887854 tp!1887855))))

(declare-fun b!6873805 () Bool)

(assert (=> b!6873805 (= e!4143160 tp_is_empty!42671)))

(declare-fun b!6873807 () Bool)

(declare-fun tp!1887857 () Bool)

(assert (=> b!6873807 (= e!4143160 tp!1887857)))

(declare-fun b!6873808 () Bool)

(declare-fun tp!1887853 () Bool)

(declare-fun tp!1887856 () Bool)

(assert (=> b!6873808 (= e!4143160 (and tp!1887853 tp!1887856))))

(assert (=> b!6873476 (= tp!1887762 e!4143160)))

(assert (= (and b!6873476 ((_ is ElementMatch!16709) (regOne!33930 r!7292))) b!6873805))

(assert (= (and b!6873476 ((_ is Concat!25554) (regOne!33930 r!7292))) b!6873806))

(assert (= (and b!6873476 ((_ is Star!16709) (regOne!33930 r!7292))) b!6873807))

(assert (= (and b!6873476 ((_ is Union!16709) (regOne!33930 r!7292))) b!6873808))

(declare-fun b!6873810 () Bool)

(declare-fun e!4143161 () Bool)

(declare-fun tp!1887859 () Bool)

(declare-fun tp!1887860 () Bool)

(assert (=> b!6873810 (= e!4143161 (and tp!1887859 tp!1887860))))

(declare-fun b!6873809 () Bool)

(assert (=> b!6873809 (= e!4143161 tp_is_empty!42671)))

(declare-fun b!6873811 () Bool)

(declare-fun tp!1887862 () Bool)

(assert (=> b!6873811 (= e!4143161 tp!1887862)))

(declare-fun b!6873812 () Bool)

(declare-fun tp!1887858 () Bool)

(declare-fun tp!1887861 () Bool)

(assert (=> b!6873812 (= e!4143161 (and tp!1887858 tp!1887861))))

(assert (=> b!6873476 (= tp!1887760 e!4143161)))

(assert (= (and b!6873476 ((_ is ElementMatch!16709) (regTwo!33930 r!7292))) b!6873809))

(assert (= (and b!6873476 ((_ is Concat!25554) (regTwo!33930 r!7292))) b!6873810))

(assert (= (and b!6873476 ((_ is Star!16709) (regTwo!33930 r!7292))) b!6873811))

(assert (= (and b!6873476 ((_ is Union!16709) (regTwo!33930 r!7292))) b!6873812))

(declare-fun b!6873817 () Bool)

(declare-fun e!4143164 () Bool)

(declare-fun tp!1887867 () Bool)

(declare-fun tp!1887868 () Bool)

(assert (=> b!6873817 (= e!4143164 (and tp!1887867 tp!1887868))))

(assert (=> b!6873485 (= tp!1887757 e!4143164)))

(assert (= (and b!6873485 ((_ is Cons!66302) (exprs!6593 (h!72751 zl!343)))) b!6873817))

(declare-fun b!6873825 () Bool)

(declare-fun e!4143170 () Bool)

(declare-fun tp!1887873 () Bool)

(assert (=> b!6873825 (= e!4143170 tp!1887873)))

(declare-fun b!6873824 () Bool)

(declare-fun tp!1887874 () Bool)

(declare-fun e!4143169 () Bool)

(assert (=> b!6873824 (= e!4143169 (and (inv!85019 (h!72751 (t!380170 zl!343))) e!4143170 tp!1887874))))

(assert (=> b!6873480 (= tp!1887754 e!4143169)))

(assert (= b!6873824 b!6873825))

(assert (= (and b!6873480 ((_ is Cons!66303) (t!380170 zl!343))) b!6873824))

(declare-fun m!7603266 () Bool)

(assert (=> b!6873824 m!7603266))

(declare-fun b!6873830 () Bool)

(declare-fun e!4143173 () Bool)

(declare-fun tp!1887877 () Bool)

(assert (=> b!6873830 (= e!4143173 (and tp_is_empty!42671 tp!1887877))))

(assert (=> b!6873479 (= tp!1887756 e!4143173)))

(assert (= (and b!6873479 ((_ is Cons!66304) (t!380171 s!2326))) b!6873830))

(declare-fun b!6873831 () Bool)

(declare-fun e!4143174 () Bool)

(declare-fun tp!1887878 () Bool)

(declare-fun tp!1887879 () Bool)

(assert (=> b!6873831 (= e!4143174 (and tp!1887878 tp!1887879))))

(assert (=> b!6873474 (= tp!1887758 e!4143174)))

(assert (= (and b!6873474 ((_ is Cons!66302) (exprs!6593 setElem!47283))) b!6873831))

(check-sat (not b!6873804) (not b!6873799) (not b!6873742) (not bm!626020) (not b!6873812) (not b!6873795) (not b!6873810) (not b!6873523) (not b!6873791) (not b!6873808) (not b!6873520) (not d!2158920) tp_is_empty!42671 (not d!2158950) (not bm!626022) (not b!6873830) (not b!6873777) (not d!2158956) (not setNonEmpty!47289) (not b!6873807) (not d!2158944) (not b!6873811) (not bm!626013) (not bm!625989) (not b!6873798) (not b!6873797) (not b!6873521) (not b!6873527) (not d!2158948) (not b!6873790) (not d!2158954) (not b!6873739) (not b!6873789) (not b!6873522) (not b!6873825) (not b!6873831) (not b!6873793) (not b!6873515) (not bm!626012) (not b!6873824) (not b!6873806) (not b!6873794) (not b!6873817) (not b!6873773))
(check-sat)
(get-model)

(declare-fun d!2158972 () Bool)

(assert (=> d!2158972 (= (isEmpty!38649 (tail!12845 s!2326)) ((_ is Nil!66304) (tail!12845 s!2326)))))

(assert (=> b!6873527 d!2158972))

(declare-fun d!2158974 () Bool)

(assert (=> d!2158974 (= (tail!12845 s!2326) (t!380171 s!2326))))

(assert (=> b!6873527 d!2158974))

(declare-fun b!6873843 () Bool)

(declare-fun e!4143186 () Bool)

(declare-fun call!626031 () Bool)

(assert (=> b!6873843 (= e!4143186 call!626031)))

(declare-fun b!6873844 () Bool)

(declare-fun e!4143183 () Bool)

(assert (=> b!6873844 (= e!4143183 call!626031)))

(declare-fun b!6873845 () Bool)

(declare-fun e!4143188 () Bool)

(declare-fun call!626032 () Bool)

(assert (=> b!6873845 (= e!4143188 call!626032)))

(declare-fun b!6873846 () Bool)

(declare-fun e!4143185 () Bool)

(assert (=> b!6873846 (= e!4143185 e!4143186)))

(declare-fun res!2803272 () Bool)

(assert (=> b!6873846 (=> (not res!2803272) (not e!4143186))))

(declare-fun call!626030 () Bool)

(assert (=> b!6873846 (= res!2803272 call!626030)))

(declare-fun b!6873847 () Bool)

(declare-fun e!4143182 () Bool)

(declare-fun e!4143184 () Bool)

(assert (=> b!6873847 (= e!4143182 e!4143184)))

(declare-fun c!1279183 () Bool)

(assert (=> b!6873847 (= c!1279183 ((_ is Union!16709) (ite c!1279176 (reg!17038 r!7292) (ite c!1279177 (regTwo!33931 r!7292) (regTwo!33930 r!7292)))))))

(declare-fun bm!626026 () Bool)

(assert (=> bm!626026 (= call!626031 call!626032)))

(declare-fun b!6873848 () Bool)

(declare-fun e!4143187 () Bool)

(assert (=> b!6873848 (= e!4143187 e!4143182)))

(declare-fun c!1279182 () Bool)

(assert (=> b!6873848 (= c!1279182 ((_ is Star!16709) (ite c!1279176 (reg!17038 r!7292) (ite c!1279177 (regTwo!33931 r!7292) (regTwo!33930 r!7292)))))))

(declare-fun bm!626027 () Bool)

(assert (=> bm!626027 (= call!626030 (validRegex!8445 (ite c!1279183 (regOne!33931 (ite c!1279176 (reg!17038 r!7292) (ite c!1279177 (regTwo!33931 r!7292) (regTwo!33930 r!7292)))) (regOne!33930 (ite c!1279176 (reg!17038 r!7292) (ite c!1279177 (regTwo!33931 r!7292) (regTwo!33930 r!7292)))))))))

(declare-fun b!6873849 () Bool)

(declare-fun res!2803274 () Bool)

(assert (=> b!6873849 (=> (not res!2803274) (not e!4143183))))

(assert (=> b!6873849 (= res!2803274 call!626030)))

(assert (=> b!6873849 (= e!4143184 e!4143183)))

(declare-fun bm!626025 () Bool)

(assert (=> bm!626025 (= call!626032 (validRegex!8445 (ite c!1279182 (reg!17038 (ite c!1279176 (reg!17038 r!7292) (ite c!1279177 (regTwo!33931 r!7292) (regTwo!33930 r!7292)))) (ite c!1279183 (regTwo!33931 (ite c!1279176 (reg!17038 r!7292) (ite c!1279177 (regTwo!33931 r!7292) (regTwo!33930 r!7292)))) (regTwo!33930 (ite c!1279176 (reg!17038 r!7292) (ite c!1279177 (regTwo!33931 r!7292) (regTwo!33930 r!7292))))))))))

(declare-fun d!2158976 () Bool)

(declare-fun res!2803271 () Bool)

(assert (=> d!2158976 (=> res!2803271 e!4143187)))

(assert (=> d!2158976 (= res!2803271 ((_ is ElementMatch!16709) (ite c!1279176 (reg!17038 r!7292) (ite c!1279177 (regTwo!33931 r!7292) (regTwo!33930 r!7292)))))))

(assert (=> d!2158976 (= (validRegex!8445 (ite c!1279176 (reg!17038 r!7292) (ite c!1279177 (regTwo!33931 r!7292) (regTwo!33930 r!7292)))) e!4143187)))

(declare-fun b!6873850 () Bool)

(assert (=> b!6873850 (= e!4143182 e!4143188)))

(declare-fun res!2803273 () Bool)

(assert (=> b!6873850 (= res!2803273 (not (nullable!6664 (reg!17038 (ite c!1279176 (reg!17038 r!7292) (ite c!1279177 (regTwo!33931 r!7292) (regTwo!33930 r!7292)))))))))

(assert (=> b!6873850 (=> (not res!2803273) (not e!4143188))))

(declare-fun b!6873851 () Bool)

(declare-fun res!2803270 () Bool)

(assert (=> b!6873851 (=> res!2803270 e!4143185)))

(assert (=> b!6873851 (= res!2803270 (not ((_ is Concat!25554) (ite c!1279176 (reg!17038 r!7292) (ite c!1279177 (regTwo!33931 r!7292) (regTwo!33930 r!7292))))))))

(assert (=> b!6873851 (= e!4143184 e!4143185)))

(assert (= (and d!2158976 (not res!2803271)) b!6873848))

(assert (= (and b!6873848 c!1279182) b!6873850))

(assert (= (and b!6873848 (not c!1279182)) b!6873847))

(assert (= (and b!6873850 res!2803273) b!6873845))

(assert (= (and b!6873847 c!1279183) b!6873849))

(assert (= (and b!6873847 (not c!1279183)) b!6873851))

(assert (= (and b!6873849 res!2803274) b!6873844))

(assert (= (and b!6873851 (not res!2803270)) b!6873846))

(assert (= (and b!6873846 res!2803272) b!6873843))

(assert (= (or b!6873844 b!6873843) bm!626026))

(assert (= (or b!6873849 b!6873846) bm!626027))

(assert (= (or b!6873845 bm!626026) bm!626025))

(declare-fun m!7603278 () Bool)

(assert (=> bm!626027 m!7603278))

(declare-fun m!7603280 () Bool)

(assert (=> bm!626025 m!7603280))

(declare-fun m!7603282 () Bool)

(assert (=> b!6873850 m!7603282))

(assert (=> bm!626020 d!2158976))

(declare-fun bs!1837548 () Bool)

(declare-fun d!2158982 () Bool)

(assert (= bs!1837548 (and d!2158982 d!2158948)))

(declare-fun lambda!389096 () Int)

(assert (=> bs!1837548 (= lambda!389096 lambda!389090)))

(declare-fun bs!1837549 () Bool)

(assert (= bs!1837549 (and d!2158982 d!2158954)))

(assert (=> bs!1837549 (= lambda!389096 lambda!389091)))

(assert (=> d!2158982 (= (inv!85019 setElem!47289) (forall!15908 (exprs!6593 setElem!47289) lambda!389096))))

(declare-fun bs!1837550 () Bool)

(assert (= bs!1837550 d!2158982))

(declare-fun m!7603284 () Bool)

(assert (=> bs!1837550 m!7603284))

(assert (=> setNonEmpty!47289 d!2158982))

(declare-fun bs!1837552 () Bool)

(declare-fun d!2158984 () Bool)

(assert (= bs!1837552 (and d!2158984 d!2158948)))

(declare-fun lambda!389097 () Int)

(assert (=> bs!1837552 (= lambda!389097 lambda!389090)))

(declare-fun bs!1837553 () Bool)

(assert (= bs!1837553 (and d!2158984 d!2158954)))

(assert (=> bs!1837553 (= lambda!389097 lambda!389091)))

(declare-fun bs!1837554 () Bool)

(assert (= bs!1837554 (and d!2158984 d!2158982)))

(assert (=> bs!1837554 (= lambda!389097 lambda!389096)))

(assert (=> d!2158984 (= (inv!85019 (h!72751 (t!380170 zl!343))) (forall!15908 (exprs!6593 (h!72751 (t!380170 zl!343))) lambda!389097))))

(declare-fun bs!1837555 () Bool)

(assert (= bs!1837555 d!2158984))

(declare-fun m!7603288 () Bool)

(assert (=> bs!1837555 m!7603288))

(assert (=> b!6873824 d!2158984))

(declare-fun d!2158988 () Bool)

(assert (=> d!2158988 (= (isEmpty!38649 s!2326) ((_ is Nil!66304) s!2326))))

(assert (=> bm!625989 d!2158988))

(assert (=> bm!626013 d!2158988))

(declare-fun d!2158990 () Bool)

(declare-fun res!2803285 () Bool)

(declare-fun e!4143199 () Bool)

(assert (=> d!2158990 (=> res!2803285 e!4143199)))

(assert (=> d!2158990 (= res!2803285 ((_ is Nil!66303) lt!2458942))))

(assert (=> d!2158990 (= (noDuplicate!2466 lt!2458942) e!4143199)))

(declare-fun b!6873862 () Bool)

(declare-fun e!4143200 () Bool)

(assert (=> b!6873862 (= e!4143199 e!4143200)))

(declare-fun res!2803286 () Bool)

(assert (=> b!6873862 (=> (not res!2803286) (not e!4143200))))

(declare-fun contains!20366 (List!66427 Context!12186) Bool)

(assert (=> b!6873862 (= res!2803286 (not (contains!20366 (t!380170 lt!2458942) (h!72751 lt!2458942))))))

(declare-fun b!6873863 () Bool)

(assert (=> b!6873863 (= e!4143200 (noDuplicate!2466 (t!380170 lt!2458942)))))

(assert (= (and d!2158990 (not res!2803285)) b!6873862))

(assert (= (and b!6873862 res!2803286) b!6873863))

(declare-fun m!7603294 () Bool)

(assert (=> b!6873862 m!7603294))

(declare-fun m!7603296 () Bool)

(assert (=> b!6873863 m!7603296))

(assert (=> d!2158956 d!2158990))

(declare-fun d!2158994 () Bool)

(declare-fun e!4143223 () Bool)

(assert (=> d!2158994 e!4143223))

(declare-fun res!2803303 () Bool)

(assert (=> d!2158994 (=> (not res!2803303) (not e!4143223))))

(declare-fun res!2803302 () List!66427)

(assert (=> d!2158994 (= res!2803303 (noDuplicate!2466 res!2803302))))

(declare-fun e!4143225 () Bool)

(assert (=> d!2158994 e!4143225))

(assert (=> d!2158994 (= (choose!51221 z!1189) res!2803302)))

(declare-fun b!6873889 () Bool)

(declare-fun e!4143224 () Bool)

(declare-fun tp!1887890 () Bool)

(assert (=> b!6873889 (= e!4143224 tp!1887890)))

(declare-fun tp!1887891 () Bool)

(declare-fun b!6873888 () Bool)

(assert (=> b!6873888 (= e!4143225 (and (inv!85019 (h!72751 res!2803302)) e!4143224 tp!1887891))))

(declare-fun b!6873890 () Bool)

(assert (=> b!6873890 (= e!4143223 (= (content!13018 res!2803302) z!1189))))

(assert (= b!6873888 b!6873889))

(assert (= (and d!2158994 ((_ is Cons!66303) res!2803302)) b!6873888))

(assert (= (and d!2158994 res!2803303) b!6873890))

(declare-fun m!7603304 () Bool)

(assert (=> d!2158994 m!7603304))

(declare-fun m!7603306 () Bool)

(assert (=> b!6873888 m!7603306))

(declare-fun m!7603308 () Bool)

(assert (=> b!6873890 m!7603308))

(assert (=> d!2158956 d!2158994))

(declare-fun d!2158998 () Bool)

(declare-fun nullableFct!2534 (Regex!16709) Bool)

(assert (=> d!2158998 (= (nullable!6664 (reg!17038 r!7292)) (nullableFct!2534 (reg!17038 r!7292)))))

(declare-fun bs!1837556 () Bool)

(assert (= bs!1837556 d!2158998))

(declare-fun m!7603316 () Bool)

(assert (=> bs!1837556 m!7603316))

(assert (=> b!6873773 d!2158998))

(assert (=> b!6873515 d!2158972))

(assert (=> b!6873515 d!2158974))

(declare-fun d!2159002 () Bool)

(declare-fun choose!51222 (Int) Bool)

(assert (=> d!2159002 (= (Exists!3763 (ite c!1279169 lambda!389086 lambda!389087)) (choose!51222 (ite c!1279169 lambda!389086 lambda!389087)))))

(declare-fun bs!1837557 () Bool)

(assert (= bs!1837557 d!2159002))

(declare-fun m!7603318 () Bool)

(assert (=> bs!1837557 m!7603318))

(assert (=> bm!626012 d!2159002))

(declare-fun d!2159004 () Bool)

(declare-fun res!2803314 () Bool)

(declare-fun e!4143236 () Bool)

(assert (=> d!2159004 (=> res!2803314 e!4143236)))

(assert (=> d!2159004 (= res!2803314 ((_ is Nil!66302) (exprs!6593 setElem!47283)))))

(assert (=> d!2159004 (= (forall!15908 (exprs!6593 setElem!47283) lambda!389090) e!4143236)))

(declare-fun b!6873901 () Bool)

(declare-fun e!4143237 () Bool)

(assert (=> b!6873901 (= e!4143236 e!4143237)))

(declare-fun res!2803315 () Bool)

(assert (=> b!6873901 (=> (not res!2803315) (not e!4143237))))

(declare-fun dynLambda!26547 (Int Regex!16709) Bool)

(assert (=> b!6873901 (= res!2803315 (dynLambda!26547 lambda!389090 (h!72750 (exprs!6593 setElem!47283))))))

(declare-fun b!6873902 () Bool)

(assert (=> b!6873902 (= e!4143237 (forall!15908 (t!380169 (exprs!6593 setElem!47283)) lambda!389090))))

(assert (= (and d!2159004 (not res!2803314)) b!6873901))

(assert (= (and b!6873901 res!2803315) b!6873902))

(declare-fun b_lambda!260141 () Bool)

(assert (=> (not b_lambda!260141) (not b!6873901)))

(declare-fun m!7603324 () Bool)

(assert (=> b!6873901 m!7603324))

(declare-fun m!7603326 () Bool)

(assert (=> b!6873902 m!7603326))

(assert (=> d!2158948 d!2159004))

(declare-fun d!2159008 () Bool)

(assert (=> d!2159008 (= (head!13793 s!2326) (h!72752 s!2326))))

(assert (=> b!6873523 d!2159008))

(declare-fun b!6873903 () Bool)

(declare-fun e!4143242 () Bool)

(declare-fun call!626037 () Bool)

(assert (=> b!6873903 (= e!4143242 call!626037)))

(declare-fun b!6873904 () Bool)

(declare-fun e!4143239 () Bool)

(assert (=> b!6873904 (= e!4143239 call!626037)))

(declare-fun b!6873905 () Bool)

(declare-fun e!4143244 () Bool)

(declare-fun call!626038 () Bool)

(assert (=> b!6873905 (= e!4143244 call!626038)))

(declare-fun b!6873906 () Bool)

(declare-fun e!4143241 () Bool)

(assert (=> b!6873906 (= e!4143241 e!4143242)))

(declare-fun res!2803318 () Bool)

(assert (=> b!6873906 (=> (not res!2803318) (not e!4143242))))

(declare-fun call!626036 () Bool)

(assert (=> b!6873906 (= res!2803318 call!626036)))

(declare-fun b!6873907 () Bool)

(declare-fun e!4143238 () Bool)

(declare-fun e!4143240 () Bool)

(assert (=> b!6873907 (= e!4143238 e!4143240)))

(declare-fun c!1279187 () Bool)

(assert (=> b!6873907 (= c!1279187 ((_ is Union!16709) (ite c!1279177 (regOne!33931 r!7292) (regOne!33930 r!7292))))))

(declare-fun bm!626032 () Bool)

(assert (=> bm!626032 (= call!626037 call!626038)))

(declare-fun b!6873908 () Bool)

(declare-fun e!4143243 () Bool)

(assert (=> b!6873908 (= e!4143243 e!4143238)))

(declare-fun c!1279186 () Bool)

(assert (=> b!6873908 (= c!1279186 ((_ is Star!16709) (ite c!1279177 (regOne!33931 r!7292) (regOne!33930 r!7292))))))

(declare-fun bm!626033 () Bool)

(assert (=> bm!626033 (= call!626036 (validRegex!8445 (ite c!1279187 (regOne!33931 (ite c!1279177 (regOne!33931 r!7292) (regOne!33930 r!7292))) (regOne!33930 (ite c!1279177 (regOne!33931 r!7292) (regOne!33930 r!7292))))))))

(declare-fun b!6873909 () Bool)

(declare-fun res!2803320 () Bool)

(assert (=> b!6873909 (=> (not res!2803320) (not e!4143239))))

(assert (=> b!6873909 (= res!2803320 call!626036)))

(assert (=> b!6873909 (= e!4143240 e!4143239)))

(declare-fun bm!626031 () Bool)

(assert (=> bm!626031 (= call!626038 (validRegex!8445 (ite c!1279186 (reg!17038 (ite c!1279177 (regOne!33931 r!7292) (regOne!33930 r!7292))) (ite c!1279187 (regTwo!33931 (ite c!1279177 (regOne!33931 r!7292) (regOne!33930 r!7292))) (regTwo!33930 (ite c!1279177 (regOne!33931 r!7292) (regOne!33930 r!7292)))))))))

(declare-fun d!2159010 () Bool)

(declare-fun res!2803317 () Bool)

(assert (=> d!2159010 (=> res!2803317 e!4143243)))

(assert (=> d!2159010 (= res!2803317 ((_ is ElementMatch!16709) (ite c!1279177 (regOne!33931 r!7292) (regOne!33930 r!7292))))))

(assert (=> d!2159010 (= (validRegex!8445 (ite c!1279177 (regOne!33931 r!7292) (regOne!33930 r!7292))) e!4143243)))

(declare-fun b!6873910 () Bool)

(assert (=> b!6873910 (= e!4143238 e!4143244)))

(declare-fun res!2803319 () Bool)

(assert (=> b!6873910 (= res!2803319 (not (nullable!6664 (reg!17038 (ite c!1279177 (regOne!33931 r!7292) (regOne!33930 r!7292))))))))

(assert (=> b!6873910 (=> (not res!2803319) (not e!4143244))))

(declare-fun b!6873911 () Bool)

(declare-fun res!2803316 () Bool)

(assert (=> b!6873911 (=> res!2803316 e!4143241)))

(assert (=> b!6873911 (= res!2803316 (not ((_ is Concat!25554) (ite c!1279177 (regOne!33931 r!7292) (regOne!33930 r!7292)))))))

(assert (=> b!6873911 (= e!4143240 e!4143241)))

(assert (= (and d!2159010 (not res!2803317)) b!6873908))

(assert (= (and b!6873908 c!1279186) b!6873910))

(assert (= (and b!6873908 (not c!1279186)) b!6873907))

(assert (= (and b!6873910 res!2803319) b!6873905))

(assert (= (and b!6873907 c!1279187) b!6873909))

(assert (= (and b!6873907 (not c!1279187)) b!6873911))

(assert (= (and b!6873909 res!2803320) b!6873904))

(assert (= (and b!6873911 (not res!2803316)) b!6873906))

(assert (= (and b!6873906 res!2803318) b!6873903))

(assert (= (or b!6873904 b!6873903) bm!626032))

(assert (= (or b!6873909 b!6873906) bm!626033))

(assert (= (or b!6873905 bm!626032) bm!626031))

(declare-fun m!7603328 () Bool)

(assert (=> bm!626033 m!7603328))

(declare-fun m!7603330 () Bool)

(assert (=> bm!626031 m!7603330))

(declare-fun m!7603332 () Bool)

(assert (=> b!6873910 m!7603332))

(assert (=> bm!626022 d!2159010))

(declare-fun d!2159012 () Bool)

(assert (=> d!2159012 (= (nullable!6664 r!7292) (nullableFct!2534 r!7292))))

(declare-fun bs!1837558 () Bool)

(assert (= bs!1837558 d!2159012))

(declare-fun m!7603334 () Bool)

(assert (=> bs!1837558 m!7603334))

(assert (=> b!6873522 d!2159012))

(declare-fun bs!1837561 () Bool)

(declare-fun b!6873912 () Bool)

(assert (= bs!1837561 (and b!6873912 b!6873733)))

(declare-fun lambda!389098 () Int)

(assert (=> bs!1837561 (= (and (= (reg!17038 (regTwo!33931 r!7292)) (reg!17038 r!7292)) (= (regTwo!33931 r!7292) r!7292)) (= lambda!389098 lambda!389086))))

(declare-fun bs!1837562 () Bool)

(assert (= bs!1837562 (and b!6873912 b!6873737)))

(assert (=> bs!1837562 (not (= lambda!389098 lambda!389087))))

(assert (=> b!6873912 true))

(assert (=> b!6873912 true))

(declare-fun bs!1837563 () Bool)

(declare-fun b!6873916 () Bool)

(assert (= bs!1837563 (and b!6873916 b!6873733)))

(declare-fun lambda!389099 () Int)

(assert (=> bs!1837563 (not (= lambda!389099 lambda!389086))))

(declare-fun bs!1837564 () Bool)

(assert (= bs!1837564 (and b!6873916 b!6873737)))

(assert (=> bs!1837564 (= (and (= (regOne!33930 (regTwo!33931 r!7292)) (regOne!33930 r!7292)) (= (regTwo!33930 (regTwo!33931 r!7292)) (regTwo!33930 r!7292))) (= lambda!389099 lambda!389087))))

(declare-fun bs!1837565 () Bool)

(assert (= bs!1837565 (and b!6873916 b!6873912)))

(assert (=> bs!1837565 (not (= lambda!389099 lambda!389098))))

(assert (=> b!6873916 true))

(assert (=> b!6873916 true))

(declare-fun e!4143250 () Bool)

(declare-fun call!626039 () Bool)

(assert (=> b!6873912 (= e!4143250 call!626039)))

(declare-fun bm!626034 () Bool)

(declare-fun c!1279189 () Bool)

(assert (=> bm!626034 (= call!626039 (Exists!3763 (ite c!1279189 lambda!389098 lambda!389099)))))

(declare-fun b!6873913 () Bool)

(declare-fun c!1279188 () Bool)

(assert (=> b!6873913 (= c!1279188 ((_ is ElementMatch!16709) (regTwo!33931 r!7292)))))

(declare-fun e!4143245 () Bool)

(declare-fun e!4143249 () Bool)

(assert (=> b!6873913 (= e!4143245 e!4143249)))

(declare-fun bm!626035 () Bool)

(declare-fun call!626040 () Bool)

(assert (=> bm!626035 (= call!626040 (isEmpty!38649 s!2326))))

(declare-fun b!6873915 () Bool)

(declare-fun e!4143247 () Bool)

(declare-fun e!4143248 () Bool)

(assert (=> b!6873915 (= e!4143247 e!4143248)))

(assert (=> b!6873915 (= c!1279189 ((_ is Star!16709) (regTwo!33931 r!7292)))))

(assert (=> b!6873916 (= e!4143248 call!626039)))

(declare-fun b!6873917 () Bool)

(assert (=> b!6873917 (= e!4143249 (= s!2326 (Cons!66304 (c!1279123 (regTwo!33931 r!7292)) Nil!66304)))))

(declare-fun b!6873918 () Bool)

(declare-fun e!4143251 () Bool)

(assert (=> b!6873918 (= e!4143247 e!4143251)))

(declare-fun res!2803323 () Bool)

(assert (=> b!6873918 (= res!2803323 (matchRSpec!3810 (regOne!33931 (regTwo!33931 r!7292)) s!2326))))

(assert (=> b!6873918 (=> res!2803323 e!4143251)))

(declare-fun b!6873919 () Bool)

(declare-fun e!4143246 () Bool)

(assert (=> b!6873919 (= e!4143246 call!626040)))

(declare-fun b!6873920 () Bool)

(declare-fun res!2803321 () Bool)

(assert (=> b!6873920 (=> res!2803321 e!4143250)))

(assert (=> b!6873920 (= res!2803321 call!626040)))

(assert (=> b!6873920 (= e!4143248 e!4143250)))

(declare-fun d!2159014 () Bool)

(declare-fun c!1279191 () Bool)

(assert (=> d!2159014 (= c!1279191 ((_ is EmptyExpr!16709) (regTwo!33931 r!7292)))))

(assert (=> d!2159014 (= (matchRSpec!3810 (regTwo!33931 r!7292) s!2326) e!4143246)))

(declare-fun b!6873914 () Bool)

(declare-fun c!1279190 () Bool)

(assert (=> b!6873914 (= c!1279190 ((_ is Union!16709) (regTwo!33931 r!7292)))))

(assert (=> b!6873914 (= e!4143249 e!4143247)))

(declare-fun b!6873921 () Bool)

(assert (=> b!6873921 (= e!4143251 (matchRSpec!3810 (regTwo!33931 (regTwo!33931 r!7292)) s!2326))))

(declare-fun b!6873922 () Bool)

(assert (=> b!6873922 (= e!4143246 e!4143245)))

(declare-fun res!2803322 () Bool)

(assert (=> b!6873922 (= res!2803322 (not ((_ is EmptyLang!16709) (regTwo!33931 r!7292))))))

(assert (=> b!6873922 (=> (not res!2803322) (not e!4143245))))

(assert (= (and d!2159014 c!1279191) b!6873919))

(assert (= (and d!2159014 (not c!1279191)) b!6873922))

(assert (= (and b!6873922 res!2803322) b!6873913))

(assert (= (and b!6873913 c!1279188) b!6873917))

(assert (= (and b!6873913 (not c!1279188)) b!6873914))

(assert (= (and b!6873914 c!1279190) b!6873918))

(assert (= (and b!6873914 (not c!1279190)) b!6873915))

(assert (= (and b!6873918 (not res!2803323)) b!6873921))

(assert (= (and b!6873915 c!1279189) b!6873920))

(assert (= (and b!6873915 (not c!1279189)) b!6873916))

(assert (= (and b!6873920 (not res!2803321)) b!6873912))

(assert (= (or b!6873912 b!6873916) bm!626034))

(assert (= (or b!6873919 b!6873920) bm!626035))

(declare-fun m!7603344 () Bool)

(assert (=> bm!626034 m!7603344))

(assert (=> bm!626035 m!7603172))

(declare-fun m!7603346 () Bool)

(assert (=> b!6873918 m!7603346))

(declare-fun m!7603348 () Bool)

(assert (=> b!6873921 m!7603348))

(assert (=> b!6873742 d!2159014))

(declare-fun b!6873932 () Bool)

(declare-fun e!4143263 () Bool)

(declare-fun call!626045 () Bool)

(assert (=> b!6873932 (= e!4143263 call!626045)))

(declare-fun b!6873933 () Bool)

(declare-fun e!4143260 () Bool)

(assert (=> b!6873933 (= e!4143260 call!626045)))

(declare-fun b!6873934 () Bool)

(declare-fun e!4143265 () Bool)

(declare-fun call!626046 () Bool)

(assert (=> b!6873934 (= e!4143265 call!626046)))

(declare-fun b!6873935 () Bool)

(declare-fun e!4143262 () Bool)

(assert (=> b!6873935 (= e!4143262 e!4143263)))

(declare-fun res!2803331 () Bool)

(assert (=> b!6873935 (=> (not res!2803331) (not e!4143263))))

(declare-fun call!626044 () Bool)

(assert (=> b!6873935 (= res!2803331 call!626044)))

(declare-fun b!6873936 () Bool)

(declare-fun e!4143259 () Bool)

(declare-fun e!4143261 () Bool)

(assert (=> b!6873936 (= e!4143259 e!4143261)))

(declare-fun c!1279195 () Bool)

(assert (=> b!6873936 (= c!1279195 ((_ is Union!16709) lt!2458939))))

(declare-fun bm!626040 () Bool)

(assert (=> bm!626040 (= call!626045 call!626046)))

(declare-fun b!6873937 () Bool)

(declare-fun e!4143264 () Bool)

(assert (=> b!6873937 (= e!4143264 e!4143259)))

(declare-fun c!1279194 () Bool)

(assert (=> b!6873937 (= c!1279194 ((_ is Star!16709) lt!2458939))))

(declare-fun bm!626041 () Bool)

(assert (=> bm!626041 (= call!626044 (validRegex!8445 (ite c!1279195 (regOne!33931 lt!2458939) (regOne!33930 lt!2458939))))))

(declare-fun b!6873938 () Bool)

(declare-fun res!2803333 () Bool)

(assert (=> b!6873938 (=> (not res!2803333) (not e!4143260))))

(assert (=> b!6873938 (= res!2803333 call!626044)))

(assert (=> b!6873938 (= e!4143261 e!4143260)))

(declare-fun bm!626039 () Bool)

(assert (=> bm!626039 (= call!626046 (validRegex!8445 (ite c!1279194 (reg!17038 lt!2458939) (ite c!1279195 (regTwo!33931 lt!2458939) (regTwo!33930 lt!2458939)))))))

(declare-fun d!2159022 () Bool)

(declare-fun res!2803330 () Bool)

(assert (=> d!2159022 (=> res!2803330 e!4143264)))

(assert (=> d!2159022 (= res!2803330 ((_ is ElementMatch!16709) lt!2458939))))

(assert (=> d!2159022 (= (validRegex!8445 lt!2458939) e!4143264)))

(declare-fun b!6873939 () Bool)

(assert (=> b!6873939 (= e!4143259 e!4143265)))

(declare-fun res!2803332 () Bool)

(assert (=> b!6873939 (= res!2803332 (not (nullable!6664 (reg!17038 lt!2458939))))))

(assert (=> b!6873939 (=> (not res!2803332) (not e!4143265))))

(declare-fun b!6873940 () Bool)

(declare-fun res!2803329 () Bool)

(assert (=> b!6873940 (=> res!2803329 e!4143262)))

(assert (=> b!6873940 (= res!2803329 (not ((_ is Concat!25554) lt!2458939)))))

(assert (=> b!6873940 (= e!4143261 e!4143262)))

(assert (= (and d!2159022 (not res!2803330)) b!6873937))

(assert (= (and b!6873937 c!1279194) b!6873939))

(assert (= (and b!6873937 (not c!1279194)) b!6873936))

(assert (= (and b!6873939 res!2803332) b!6873934))

(assert (= (and b!6873936 c!1279195) b!6873938))

(assert (= (and b!6873936 (not c!1279195)) b!6873940))

(assert (= (and b!6873938 res!2803333) b!6873933))

(assert (= (and b!6873940 (not res!2803329)) b!6873935))

(assert (= (and b!6873935 res!2803331) b!6873932))

(assert (= (or b!6873933 b!6873932) bm!626040))

(assert (= (or b!6873938 b!6873935) bm!626041))

(assert (= (or b!6873934 bm!626040) bm!626039))

(declare-fun m!7603350 () Bool)

(assert (=> bm!626041 m!7603350))

(declare-fun m!7603352 () Bool)

(assert (=> bm!626039 m!7603352))

(declare-fun m!7603354 () Bool)

(assert (=> b!6873939 m!7603354))

(assert (=> d!2158950 d!2159022))

(declare-fun bs!1837570 () Bool)

(declare-fun d!2159024 () Bool)

(assert (= bs!1837570 (and d!2159024 d!2158948)))

(declare-fun lambda!389105 () Int)

(assert (=> bs!1837570 (= lambda!389105 lambda!389090)))

(declare-fun bs!1837571 () Bool)

(assert (= bs!1837571 (and d!2159024 d!2158954)))

(assert (=> bs!1837571 (= lambda!389105 lambda!389091)))

(declare-fun bs!1837572 () Bool)

(assert (= bs!1837572 (and d!2159024 d!2158982)))

(assert (=> bs!1837572 (= lambda!389105 lambda!389096)))

(declare-fun bs!1837573 () Bool)

(assert (= bs!1837573 (and d!2159024 d!2158984)))

(assert (=> bs!1837573 (= lambda!389105 lambda!389097)))

(declare-fun e!4143298 () Bool)

(assert (=> d!2159024 e!4143298))

(declare-fun res!2803345 () Bool)

(assert (=> d!2159024 (=> (not res!2803345) (not e!4143298))))

(declare-fun lt!2458948 () Regex!16709)

(assert (=> d!2159024 (= res!2803345 (validRegex!8445 lt!2458948))))

(declare-fun e!4143300 () Regex!16709)

(assert (=> d!2159024 (= lt!2458948 e!4143300)))

(declare-fun c!1279219 () Bool)

(declare-fun e!4143297 () Bool)

(assert (=> d!2159024 (= c!1279219 e!4143297)))

(declare-fun res!2803344 () Bool)

(assert (=> d!2159024 (=> (not res!2803344) (not e!4143297))))

(assert (=> d!2159024 (= res!2803344 ((_ is Cons!66302) (unfocusZipperList!2126 zl!343)))))

(assert (=> d!2159024 (forall!15908 (unfocusZipperList!2126 zl!343) lambda!389105)))

(assert (=> d!2159024 (= (generalisedUnion!2538 (unfocusZipperList!2126 zl!343)) lt!2458948)))

(declare-fun b!6873991 () Bool)

(declare-fun e!4143296 () Regex!16709)

(assert (=> b!6873991 (= e!4143300 e!4143296)))

(declare-fun c!1279217 () Bool)

(assert (=> b!6873991 (= c!1279217 ((_ is Cons!66302) (unfocusZipperList!2126 zl!343)))))

(declare-fun b!6873992 () Bool)

(declare-fun e!4143301 () Bool)

(assert (=> b!6873992 (= e!4143298 e!4143301)))

(declare-fun c!1279216 () Bool)

(declare-fun isEmpty!38651 (List!66426) Bool)

(assert (=> b!6873992 (= c!1279216 (isEmpty!38651 (unfocusZipperList!2126 zl!343)))))

(declare-fun b!6873993 () Bool)

(assert (=> b!6873993 (= e!4143296 EmptyLang!16709)))

(declare-fun b!6873994 () Bool)

(declare-fun e!4143299 () Bool)

(assert (=> b!6873994 (= e!4143301 e!4143299)))

(declare-fun c!1279218 () Bool)

(declare-fun tail!12847 (List!66426) List!66426)

(assert (=> b!6873994 (= c!1279218 (isEmpty!38651 (tail!12847 (unfocusZipperList!2126 zl!343))))))

(declare-fun b!6873995 () Bool)

(assert (=> b!6873995 (= e!4143300 (h!72750 (unfocusZipperList!2126 zl!343)))))

(declare-fun b!6873996 () Bool)

(assert (=> b!6873996 (= e!4143301 (isEmptyLang!2029 lt!2458948))))

(declare-fun b!6873997 () Bool)

(declare-fun isUnion!1459 (Regex!16709) Bool)

(assert (=> b!6873997 (= e!4143299 (isUnion!1459 lt!2458948))))

(declare-fun b!6873998 () Bool)

(assert (=> b!6873998 (= e!4143297 (isEmpty!38651 (t!380169 (unfocusZipperList!2126 zl!343))))))

(declare-fun b!6873999 () Bool)

(assert (=> b!6873999 (= e!4143296 (Union!16709 (h!72750 (unfocusZipperList!2126 zl!343)) (generalisedUnion!2538 (t!380169 (unfocusZipperList!2126 zl!343)))))))

(declare-fun b!6874000 () Bool)

(declare-fun head!13795 (List!66426) Regex!16709)

(assert (=> b!6874000 (= e!4143299 (= lt!2458948 (head!13795 (unfocusZipperList!2126 zl!343))))))

(assert (= (and d!2159024 res!2803344) b!6873998))

(assert (= (and d!2159024 c!1279219) b!6873995))

(assert (= (and d!2159024 (not c!1279219)) b!6873991))

(assert (= (and b!6873991 c!1279217) b!6873999))

(assert (= (and b!6873991 (not c!1279217)) b!6873993))

(assert (= (and d!2159024 res!2803345) b!6873992))

(assert (= (and b!6873992 c!1279216) b!6873996))

(assert (= (and b!6873992 (not c!1279216)) b!6873994))

(assert (= (and b!6873994 c!1279218) b!6874000))

(assert (= (and b!6873994 (not c!1279218)) b!6873997))

(declare-fun m!7603376 () Bool)

(assert (=> b!6873996 m!7603376))

(assert (=> b!6873992 m!7603252))

(declare-fun m!7603378 () Bool)

(assert (=> b!6873992 m!7603378))

(declare-fun m!7603380 () Bool)

(assert (=> b!6873999 m!7603380))

(declare-fun m!7603382 () Bool)

(assert (=> d!2159024 m!7603382))

(assert (=> d!2159024 m!7603252))

(declare-fun m!7603384 () Bool)

(assert (=> d!2159024 m!7603384))

(assert (=> b!6874000 m!7603252))

(declare-fun m!7603386 () Bool)

(assert (=> b!6874000 m!7603386))

(assert (=> b!6873994 m!7603252))

(declare-fun m!7603388 () Bool)

(assert (=> b!6873994 m!7603388))

(assert (=> b!6873994 m!7603388))

(declare-fun m!7603390 () Bool)

(assert (=> b!6873994 m!7603390))

(declare-fun m!7603392 () Bool)

(assert (=> b!6873997 m!7603392))

(declare-fun m!7603394 () Bool)

(assert (=> b!6873998 m!7603394))

(assert (=> d!2158950 d!2159024))

(declare-fun bs!1837579 () Bool)

(declare-fun d!2159028 () Bool)

(assert (= bs!1837579 (and d!2159028 d!2159024)))

(declare-fun lambda!389111 () Int)

(assert (=> bs!1837579 (= lambda!389111 lambda!389105)))

(declare-fun bs!1837580 () Bool)

(assert (= bs!1837580 (and d!2159028 d!2158984)))

(assert (=> bs!1837580 (= lambda!389111 lambda!389097)))

(declare-fun bs!1837581 () Bool)

(assert (= bs!1837581 (and d!2159028 d!2158982)))

(assert (=> bs!1837581 (= lambda!389111 lambda!389096)))

(declare-fun bs!1837582 () Bool)

(assert (= bs!1837582 (and d!2159028 d!2158954)))

(assert (=> bs!1837582 (= lambda!389111 lambda!389091)))

(declare-fun bs!1837583 () Bool)

(assert (= bs!1837583 (and d!2159028 d!2158948)))

(assert (=> bs!1837583 (= lambda!389111 lambda!389090)))

(declare-fun lt!2458954 () List!66426)

(assert (=> d!2159028 (forall!15908 lt!2458954 lambda!389111)))

(declare-fun e!4143309 () List!66426)

(assert (=> d!2159028 (= lt!2458954 e!4143309)))

(declare-fun c!1279227 () Bool)

(assert (=> d!2159028 (= c!1279227 ((_ is Cons!66303) zl!343))))

(assert (=> d!2159028 (= (unfocusZipperList!2126 zl!343) lt!2458954)))

(declare-fun b!6874015 () Bool)

(declare-fun generalisedConcat!2297 (List!66426) Regex!16709)

(assert (=> b!6874015 (= e!4143309 (Cons!66302 (generalisedConcat!2297 (exprs!6593 (h!72751 zl!343))) (unfocusZipperList!2126 (t!380170 zl!343))))))

(declare-fun b!6874016 () Bool)

(assert (=> b!6874016 (= e!4143309 Nil!66302)))

(assert (= (and d!2159028 c!1279227) b!6874015))

(assert (= (and d!2159028 (not c!1279227)) b!6874016))

(declare-fun m!7603406 () Bool)

(assert (=> d!2159028 m!7603406))

(declare-fun m!7603408 () Bool)

(assert (=> b!6874015 m!7603408))

(declare-fun m!7603410 () Bool)

(assert (=> b!6874015 m!7603410))

(assert (=> d!2158950 d!2159028))

(assert (=> b!6873521 d!2159008))

(declare-fun b!6874030 () Bool)

(declare-fun e!4143319 () Bool)

(declare-fun e!4143320 () Bool)

(assert (=> b!6874030 (= e!4143319 e!4143320)))

(declare-fun res!2803355 () Bool)

(assert (=> b!6874030 (=> res!2803355 e!4143320)))

(declare-fun call!626049 () Bool)

(assert (=> b!6874030 (= res!2803355 call!626049)))

(declare-fun d!2159034 () Bool)

(declare-fun e!4143321 () Bool)

(assert (=> d!2159034 e!4143321))

(declare-fun c!1279235 () Bool)

(assert (=> d!2159034 (= c!1279235 ((_ is EmptyExpr!16709) (derivativeStep!5346 r!7292 (head!13793 s!2326))))))

(declare-fun lt!2458955 () Bool)

(declare-fun e!4143322 () Bool)

(assert (=> d!2159034 (= lt!2458955 e!4143322)))

(declare-fun c!1279234 () Bool)

(assert (=> d!2159034 (= c!1279234 (isEmpty!38649 (tail!12845 s!2326)))))

(assert (=> d!2159034 (validRegex!8445 (derivativeStep!5346 r!7292 (head!13793 s!2326)))))

(assert (=> d!2159034 (= (matchR!8892 (derivativeStep!5346 r!7292 (head!13793 s!2326)) (tail!12845 s!2326)) lt!2458955)))

(declare-fun b!6874031 () Bool)

(declare-fun res!2803349 () Bool)

(assert (=> b!6874031 (=> res!2803349 e!4143320)))

(assert (=> b!6874031 (= res!2803349 (not (isEmpty!38649 (tail!12845 (tail!12845 s!2326)))))))

(declare-fun b!6874032 () Bool)

(declare-fun res!2803356 () Bool)

(declare-fun e!4143323 () Bool)

(assert (=> b!6874032 (=> res!2803356 e!4143323)))

(declare-fun e!4143324 () Bool)

(assert (=> b!6874032 (= res!2803356 e!4143324)))

(declare-fun res!2803353 () Bool)

(assert (=> b!6874032 (=> (not res!2803353) (not e!4143324))))

(assert (=> b!6874032 (= res!2803353 lt!2458955)))

(declare-fun b!6874033 () Bool)

(assert (=> b!6874033 (= e!4143321 (= lt!2458955 call!626049))))

(declare-fun b!6874034 () Bool)

(assert (=> b!6874034 (= e!4143323 e!4143319)))

(declare-fun res!2803354 () Bool)

(assert (=> b!6874034 (=> (not res!2803354) (not e!4143319))))

(assert (=> b!6874034 (= res!2803354 (not lt!2458955))))

(declare-fun b!6874035 () Bool)

(declare-fun res!2803350 () Bool)

(assert (=> b!6874035 (=> (not res!2803350) (not e!4143324))))

(assert (=> b!6874035 (= res!2803350 (not call!626049))))

(declare-fun b!6874036 () Bool)

(assert (=> b!6874036 (= e!4143322 (matchR!8892 (derivativeStep!5346 (derivativeStep!5346 r!7292 (head!13793 s!2326)) (head!13793 (tail!12845 s!2326))) (tail!12845 (tail!12845 s!2326))))))

(declare-fun b!6874037 () Bool)

(assert (=> b!6874037 (= e!4143324 (= (head!13793 (tail!12845 s!2326)) (c!1279123 (derivativeStep!5346 r!7292 (head!13793 s!2326)))))))

(declare-fun b!6874038 () Bool)

(assert (=> b!6874038 (= e!4143322 (nullable!6664 (derivativeStep!5346 r!7292 (head!13793 s!2326))))))

(declare-fun b!6874039 () Bool)

(assert (=> b!6874039 (= e!4143320 (not (= (head!13793 (tail!12845 s!2326)) (c!1279123 (derivativeStep!5346 r!7292 (head!13793 s!2326))))))))

(declare-fun b!6874040 () Bool)

(declare-fun e!4143318 () Bool)

(assert (=> b!6874040 (= e!4143321 e!4143318)))

(declare-fun c!1279233 () Bool)

(assert (=> b!6874040 (= c!1279233 ((_ is EmptyLang!16709) (derivativeStep!5346 r!7292 (head!13793 s!2326))))))

(declare-fun b!6874041 () Bool)

(declare-fun res!2803352 () Bool)

(assert (=> b!6874041 (=> res!2803352 e!4143323)))

(assert (=> b!6874041 (= res!2803352 (not ((_ is ElementMatch!16709) (derivativeStep!5346 r!7292 (head!13793 s!2326)))))))

(assert (=> b!6874041 (= e!4143318 e!4143323)))

(declare-fun b!6874042 () Bool)

(assert (=> b!6874042 (= e!4143318 (not lt!2458955))))

(declare-fun bm!626044 () Bool)

(assert (=> bm!626044 (= call!626049 (isEmpty!38649 (tail!12845 s!2326)))))

(declare-fun b!6874043 () Bool)

(declare-fun res!2803351 () Bool)

(assert (=> b!6874043 (=> (not res!2803351) (not e!4143324))))

(assert (=> b!6874043 (= res!2803351 (isEmpty!38649 (tail!12845 (tail!12845 s!2326))))))

(assert (= (and d!2159034 c!1279234) b!6874038))

(assert (= (and d!2159034 (not c!1279234)) b!6874036))

(assert (= (and d!2159034 c!1279235) b!6874033))

(assert (= (and d!2159034 (not c!1279235)) b!6874040))

(assert (= (and b!6874040 c!1279233) b!6874042))

(assert (= (and b!6874040 (not c!1279233)) b!6874041))

(assert (= (and b!6874041 (not res!2803352)) b!6874032))

(assert (= (and b!6874032 res!2803353) b!6874035))

(assert (= (and b!6874035 res!2803350) b!6874043))

(assert (= (and b!6874043 res!2803351) b!6874037))

(assert (= (and b!6874032 (not res!2803356)) b!6874034))

(assert (= (and b!6874034 res!2803354) b!6874030))

(assert (= (and b!6874030 (not res!2803355)) b!6874031))

(assert (= (and b!6874031 (not res!2803349)) b!6874039))

(assert (= (or b!6874033 b!6874030 b!6874035) bm!626044))

(assert (=> d!2159034 m!7603176))

(assert (=> d!2159034 m!7603178))

(assert (=> d!2159034 m!7603182))

(declare-fun m!7603412 () Bool)

(assert (=> d!2159034 m!7603412))

(assert (=> b!6874038 m!7603182))

(declare-fun m!7603414 () Bool)

(assert (=> b!6874038 m!7603414))

(assert (=> b!6874043 m!7603176))

(declare-fun m!7603416 () Bool)

(assert (=> b!6874043 m!7603416))

(assert (=> b!6874043 m!7603416))

(declare-fun m!7603418 () Bool)

(assert (=> b!6874043 m!7603418))

(assert (=> b!6874039 m!7603176))

(declare-fun m!7603420 () Bool)

(assert (=> b!6874039 m!7603420))

(assert (=> b!6874037 m!7603176))

(assert (=> b!6874037 m!7603420))

(assert (=> bm!626044 m!7603176))

(assert (=> bm!626044 m!7603178))

(assert (=> b!6874031 m!7603176))

(assert (=> b!6874031 m!7603416))

(assert (=> b!6874031 m!7603416))

(assert (=> b!6874031 m!7603418))

(assert (=> b!6874036 m!7603176))

(assert (=> b!6874036 m!7603420))

(assert (=> b!6874036 m!7603182))

(assert (=> b!6874036 m!7603420))

(declare-fun m!7603422 () Bool)

(assert (=> b!6874036 m!7603422))

(assert (=> b!6874036 m!7603176))

(assert (=> b!6874036 m!7603416))

(assert (=> b!6874036 m!7603422))

(assert (=> b!6874036 m!7603416))

(declare-fun m!7603424 () Bool)

(assert (=> b!6874036 m!7603424))

(assert (=> b!6873520 d!2159034))

(declare-fun b!6874109 () Bool)

(declare-fun e!4143364 () Regex!16709)

(assert (=> b!6874109 (= e!4143364 EmptyLang!16709)))

(declare-fun bm!626063 () Bool)

(declare-fun call!626071 () Regex!16709)

(declare-fun call!626070 () Regex!16709)

(assert (=> bm!626063 (= call!626071 call!626070)))

(declare-fun b!6874110 () Bool)

(declare-fun e!4143361 () Regex!16709)

(assert (=> b!6874110 (= e!4143361 (ite (= (head!13793 s!2326) (c!1279123 r!7292)) EmptyExpr!16709 EmptyLang!16709))))

(declare-fun bm!626064 () Bool)

(declare-fun call!626068 () Regex!16709)

(assert (=> bm!626064 (= call!626068 call!626071)))

(declare-fun c!1279262 () Bool)

(declare-fun bm!626065 () Bool)

(declare-fun call!626069 () Regex!16709)

(assert (=> bm!626065 (= call!626069 (derivativeStep!5346 (ite c!1279262 (regOne!33931 r!7292) (regOne!33930 r!7292)) (head!13793 s!2326)))))

(declare-fun d!2159036 () Bool)

(declare-fun lt!2458961 () Regex!16709)

(assert (=> d!2159036 (validRegex!8445 lt!2458961)))

(assert (=> d!2159036 (= lt!2458961 e!4143364)))

(declare-fun c!1279261 () Bool)

(assert (=> d!2159036 (= c!1279261 (or ((_ is EmptyExpr!16709) r!7292) ((_ is EmptyLang!16709) r!7292)))))

(assert (=> d!2159036 (validRegex!8445 r!7292)))

(assert (=> d!2159036 (= (derivativeStep!5346 r!7292 (head!13793 s!2326)) lt!2458961)))

(declare-fun b!6874111 () Bool)

(assert (=> b!6874111 (= e!4143364 e!4143361)))

(declare-fun c!1279264 () Bool)

(assert (=> b!6874111 (= c!1279264 ((_ is ElementMatch!16709) r!7292))))

(declare-fun b!6874112 () Bool)

(declare-fun e!4143363 () Regex!16709)

(assert (=> b!6874112 (= e!4143363 (Union!16709 call!626069 call!626070))))

(declare-fun b!6874113 () Bool)

(declare-fun c!1279263 () Bool)

(assert (=> b!6874113 (= c!1279263 (nullable!6664 (regOne!33930 r!7292)))))

(declare-fun e!4143365 () Regex!16709)

(declare-fun e!4143362 () Regex!16709)

(assert (=> b!6874113 (= e!4143365 e!4143362)))

(declare-fun b!6874114 () Bool)

(assert (=> b!6874114 (= e!4143365 (Concat!25554 call!626071 r!7292))))

(declare-fun b!6874115 () Bool)

(assert (=> b!6874115 (= c!1279262 ((_ is Union!16709) r!7292))))

(assert (=> b!6874115 (= e!4143361 e!4143363)))

(declare-fun b!6874116 () Bool)

(assert (=> b!6874116 (= e!4143362 (Union!16709 (Concat!25554 call!626068 (regTwo!33930 r!7292)) EmptyLang!16709))))

(declare-fun b!6874117 () Bool)

(assert (=> b!6874117 (= e!4143362 (Union!16709 (Concat!25554 call!626069 (regTwo!33930 r!7292)) call!626068))))

(declare-fun c!1279265 () Bool)

(declare-fun bm!626066 () Bool)

(assert (=> bm!626066 (= call!626070 (derivativeStep!5346 (ite c!1279262 (regTwo!33931 r!7292) (ite c!1279265 (reg!17038 r!7292) (ite c!1279263 (regTwo!33930 r!7292) (regOne!33930 r!7292)))) (head!13793 s!2326)))))

(declare-fun b!6874118 () Bool)

(assert (=> b!6874118 (= e!4143363 e!4143365)))

(assert (=> b!6874118 (= c!1279265 ((_ is Star!16709) r!7292))))

(assert (= (and d!2159036 c!1279261) b!6874109))

(assert (= (and d!2159036 (not c!1279261)) b!6874111))

(assert (= (and b!6874111 c!1279264) b!6874110))

(assert (= (and b!6874111 (not c!1279264)) b!6874115))

(assert (= (and b!6874115 c!1279262) b!6874112))

(assert (= (and b!6874115 (not c!1279262)) b!6874118))

(assert (= (and b!6874118 c!1279265) b!6874114))

(assert (= (and b!6874118 (not c!1279265)) b!6874113))

(assert (= (and b!6874113 c!1279263) b!6874117))

(assert (= (and b!6874113 (not c!1279263)) b!6874116))

(assert (= (or b!6874117 b!6874116) bm!626064))

(assert (= (or b!6874114 bm!626064) bm!626063))

(assert (= (or b!6874112 bm!626063) bm!626066))

(assert (= (or b!6874112 b!6874117) bm!626065))

(assert (=> bm!626065 m!7603180))

(declare-fun m!7603458 () Bool)

(assert (=> bm!626065 m!7603458))

(declare-fun m!7603460 () Bool)

(assert (=> d!2159036 m!7603460))

(assert (=> d!2159036 m!7603152))

(declare-fun m!7603462 () Bool)

(assert (=> b!6874113 m!7603462))

(assert (=> bm!626066 m!7603180))

(declare-fun m!7603464 () Bool)

(assert (=> bm!626066 m!7603464))

(assert (=> b!6873520 d!2159036))

(assert (=> b!6873520 d!2159008))

(assert (=> b!6873520 d!2158974))

(declare-fun d!2159048 () Bool)

(declare-fun res!2803372 () Bool)

(declare-fun e!4143366 () Bool)

(assert (=> d!2159048 (=> res!2803372 e!4143366)))

(assert (=> d!2159048 (= res!2803372 ((_ is Nil!66302) (exprs!6593 (h!72751 zl!343))))))

(assert (=> d!2159048 (= (forall!15908 (exprs!6593 (h!72751 zl!343)) lambda!389091) e!4143366)))

(declare-fun b!6874119 () Bool)

(declare-fun e!4143367 () Bool)

(assert (=> b!6874119 (= e!4143366 e!4143367)))

(declare-fun res!2803373 () Bool)

(assert (=> b!6874119 (=> (not res!2803373) (not e!4143367))))

(assert (=> b!6874119 (= res!2803373 (dynLambda!26547 lambda!389091 (h!72750 (exprs!6593 (h!72751 zl!343)))))))

(declare-fun b!6874120 () Bool)

(assert (=> b!6874120 (= e!4143367 (forall!15908 (t!380169 (exprs!6593 (h!72751 zl!343))) lambda!389091))))

(assert (= (and d!2159048 (not res!2803372)) b!6874119))

(assert (= (and b!6874119 res!2803373) b!6874120))

(declare-fun b_lambda!260145 () Bool)

(assert (=> (not b_lambda!260145) (not b!6874119)))

(declare-fun m!7603466 () Bool)

(assert (=> b!6874119 m!7603466))

(declare-fun m!7603468 () Bool)

(assert (=> b!6874120 m!7603468))

(assert (=> d!2158954 d!2159048))

(declare-fun d!2159050 () Bool)

(declare-fun c!1279268 () Bool)

(assert (=> d!2159050 (= c!1279268 ((_ is Nil!66303) lt!2458942))))

(declare-fun e!4143370 () (InoxSet Context!12186))

(assert (=> d!2159050 (= (content!13018 lt!2458942) e!4143370)))

(declare-fun b!6874125 () Bool)

(assert (=> b!6874125 (= e!4143370 ((as const (Array Context!12186 Bool)) false))))

(declare-fun b!6874126 () Bool)

(assert (=> b!6874126 (= e!4143370 ((_ map or) (store ((as const (Array Context!12186 Bool)) false) (h!72751 lt!2458942) true) (content!13018 (t!380170 lt!2458942))))))

(assert (= (and d!2159050 c!1279268) b!6874125))

(assert (= (and d!2159050 (not c!1279268)) b!6874126))

(declare-fun m!7603470 () Bool)

(assert (=> b!6874126 m!7603470))

(declare-fun m!7603472 () Bool)

(assert (=> b!6874126 m!7603472))

(assert (=> b!6873777 d!2159050))

(declare-fun bs!1837594 () Bool)

(declare-fun b!6874127 () Bool)

(assert (= bs!1837594 (and b!6874127 b!6873733)))

(declare-fun lambda!389114 () Int)

(assert (=> bs!1837594 (= (and (= (reg!17038 (regOne!33931 r!7292)) (reg!17038 r!7292)) (= (regOne!33931 r!7292) r!7292)) (= lambda!389114 lambda!389086))))

(declare-fun bs!1837595 () Bool)

(assert (= bs!1837595 (and b!6874127 b!6873737)))

(assert (=> bs!1837595 (not (= lambda!389114 lambda!389087))))

(declare-fun bs!1837596 () Bool)

(assert (= bs!1837596 (and b!6874127 b!6873912)))

(assert (=> bs!1837596 (= (and (= (reg!17038 (regOne!33931 r!7292)) (reg!17038 (regTwo!33931 r!7292))) (= (regOne!33931 r!7292) (regTwo!33931 r!7292))) (= lambda!389114 lambda!389098))))

(declare-fun bs!1837597 () Bool)

(assert (= bs!1837597 (and b!6874127 b!6873916)))

(assert (=> bs!1837597 (not (= lambda!389114 lambda!389099))))

(assert (=> b!6874127 true))

(assert (=> b!6874127 true))

(declare-fun bs!1837598 () Bool)

(declare-fun b!6874131 () Bool)

(assert (= bs!1837598 (and b!6874131 b!6873916)))

(declare-fun lambda!389115 () Int)

(assert (=> bs!1837598 (= (and (= (regOne!33930 (regOne!33931 r!7292)) (regOne!33930 (regTwo!33931 r!7292))) (= (regTwo!33930 (regOne!33931 r!7292)) (regTwo!33930 (regTwo!33931 r!7292)))) (= lambda!389115 lambda!389099))))

(declare-fun bs!1837599 () Bool)

(assert (= bs!1837599 (and b!6874131 b!6873737)))

(assert (=> bs!1837599 (= (and (= (regOne!33930 (regOne!33931 r!7292)) (regOne!33930 r!7292)) (= (regTwo!33930 (regOne!33931 r!7292)) (regTwo!33930 r!7292))) (= lambda!389115 lambda!389087))))

(declare-fun bs!1837600 () Bool)

(assert (= bs!1837600 (and b!6874131 b!6873912)))

(assert (=> bs!1837600 (not (= lambda!389115 lambda!389098))))

(declare-fun bs!1837601 () Bool)

(assert (= bs!1837601 (and b!6874131 b!6874127)))

(assert (=> bs!1837601 (not (= lambda!389115 lambda!389114))))

(declare-fun bs!1837602 () Bool)

(assert (= bs!1837602 (and b!6874131 b!6873733)))

(assert (=> bs!1837602 (not (= lambda!389115 lambda!389086))))

(assert (=> b!6874131 true))

(assert (=> b!6874131 true))

(declare-fun e!4143376 () Bool)

(declare-fun call!626074 () Bool)

(assert (=> b!6874127 (= e!4143376 call!626074)))

(declare-fun bm!626069 () Bool)

(declare-fun c!1279270 () Bool)

(assert (=> bm!626069 (= call!626074 (Exists!3763 (ite c!1279270 lambda!389114 lambda!389115)))))

(declare-fun b!6874128 () Bool)

(declare-fun c!1279269 () Bool)

(assert (=> b!6874128 (= c!1279269 ((_ is ElementMatch!16709) (regOne!33931 r!7292)))))

(declare-fun e!4143371 () Bool)

(declare-fun e!4143375 () Bool)

(assert (=> b!6874128 (= e!4143371 e!4143375)))

(declare-fun bm!626070 () Bool)

(declare-fun call!626075 () Bool)

(assert (=> bm!626070 (= call!626075 (isEmpty!38649 s!2326))))

(declare-fun b!6874130 () Bool)

(declare-fun e!4143373 () Bool)

(declare-fun e!4143374 () Bool)

(assert (=> b!6874130 (= e!4143373 e!4143374)))

(assert (=> b!6874130 (= c!1279270 ((_ is Star!16709) (regOne!33931 r!7292)))))

(assert (=> b!6874131 (= e!4143374 call!626074)))

(declare-fun b!6874132 () Bool)

(assert (=> b!6874132 (= e!4143375 (= s!2326 (Cons!66304 (c!1279123 (regOne!33931 r!7292)) Nil!66304)))))

(declare-fun b!6874133 () Bool)

(declare-fun e!4143377 () Bool)

(assert (=> b!6874133 (= e!4143373 e!4143377)))

(declare-fun res!2803376 () Bool)

(assert (=> b!6874133 (= res!2803376 (matchRSpec!3810 (regOne!33931 (regOne!33931 r!7292)) s!2326))))

(assert (=> b!6874133 (=> res!2803376 e!4143377)))

(declare-fun b!6874134 () Bool)

(declare-fun e!4143372 () Bool)

(assert (=> b!6874134 (= e!4143372 call!626075)))

(declare-fun b!6874135 () Bool)

(declare-fun res!2803374 () Bool)

(assert (=> b!6874135 (=> res!2803374 e!4143376)))

(assert (=> b!6874135 (= res!2803374 call!626075)))

(assert (=> b!6874135 (= e!4143374 e!4143376)))

(declare-fun d!2159052 () Bool)

(declare-fun c!1279272 () Bool)

(assert (=> d!2159052 (= c!1279272 ((_ is EmptyExpr!16709) (regOne!33931 r!7292)))))

(assert (=> d!2159052 (= (matchRSpec!3810 (regOne!33931 r!7292) s!2326) e!4143372)))

(declare-fun b!6874129 () Bool)

(declare-fun c!1279271 () Bool)

(assert (=> b!6874129 (= c!1279271 ((_ is Union!16709) (regOne!33931 r!7292)))))

(assert (=> b!6874129 (= e!4143375 e!4143373)))

(declare-fun b!6874136 () Bool)

(assert (=> b!6874136 (= e!4143377 (matchRSpec!3810 (regTwo!33931 (regOne!33931 r!7292)) s!2326))))

(declare-fun b!6874137 () Bool)

(assert (=> b!6874137 (= e!4143372 e!4143371)))

(declare-fun res!2803375 () Bool)

(assert (=> b!6874137 (= res!2803375 (not ((_ is EmptyLang!16709) (regOne!33931 r!7292))))))

(assert (=> b!6874137 (=> (not res!2803375) (not e!4143371))))

(assert (= (and d!2159052 c!1279272) b!6874134))

(assert (= (and d!2159052 (not c!1279272)) b!6874137))

(assert (= (and b!6874137 res!2803375) b!6874128))

(assert (= (and b!6874128 c!1279269) b!6874132))

(assert (= (and b!6874128 (not c!1279269)) b!6874129))

(assert (= (and b!6874129 c!1279271) b!6874133))

(assert (= (and b!6874129 (not c!1279271)) b!6874130))

(assert (= (and b!6874133 (not res!2803376)) b!6874136))

(assert (= (and b!6874130 c!1279270) b!6874135))

(assert (= (and b!6874130 (not c!1279270)) b!6874131))

(assert (= (and b!6874135 (not res!2803374)) b!6874127))

(assert (= (or b!6874127 b!6874131) bm!626069))

(assert (= (or b!6874134 b!6874135) bm!626070))

(declare-fun m!7603484 () Bool)

(assert (=> bm!626069 m!7603484))

(assert (=> bm!626070 m!7603172))

(declare-fun m!7603486 () Bool)

(assert (=> b!6874133 m!7603486))

(declare-fun m!7603488 () Bool)

(assert (=> b!6874136 m!7603488))

(assert (=> b!6873739 d!2159052))

(assert (=> d!2158920 d!2158988))

(assert (=> d!2158920 d!2158946))

(assert (=> d!2158944 d!2158920))

(assert (=> d!2158944 d!2158924))

(declare-fun d!2159054 () Bool)

(assert (=> d!2159054 (= (matchR!8892 r!7292 s!2326) (matchRSpec!3810 r!7292 s!2326))))

(assert (=> d!2159054 true))

(declare-fun _$88!5738 () Unit!160202)

(assert (=> d!2159054 (= (choose!51220 r!7292 s!2326) _$88!5738)))

(declare-fun bs!1837603 () Bool)

(assert (= bs!1837603 d!2159054))

(assert (=> bs!1837603 m!7603158))

(assert (=> bs!1837603 m!7603160))

(assert (=> d!2158944 d!2159054))

(assert (=> d!2158944 d!2158946))

(declare-fun b!6874226 () Bool)

(declare-fun e!4143407 () Bool)

(declare-fun tp!1887991 () Bool)

(declare-fun tp!1887992 () Bool)

(assert (=> b!6874226 (= e!4143407 (and tp!1887991 tp!1887992))))

(assert (=> b!6873804 (= tp!1887851 e!4143407)))

(assert (= (and b!6873804 ((_ is Cons!66302) (exprs!6593 setElem!47289))) b!6874226))

(declare-fun b!6874228 () Bool)

(declare-fun e!4143409 () Bool)

(declare-fun tp!1887995 () Bool)

(declare-fun tp!1887996 () Bool)

(assert (=> b!6874228 (= e!4143409 (and tp!1887995 tp!1887996))))

(assert (=> b!6873825 (= tp!1887873 e!4143409)))

(assert (= (and b!6873825 ((_ is Cons!66302) (exprs!6593 (h!72751 (t!380170 zl!343))))) b!6874228))

(declare-fun b!6874234 () Bool)

(declare-fun e!4143411 () Bool)

(declare-fun tp!1888003 () Bool)

(declare-fun tp!1888004 () Bool)

(assert (=> b!6874234 (= e!4143411 (and tp!1888003 tp!1888004))))

(declare-fun b!6874233 () Bool)

(assert (=> b!6874233 (= e!4143411 tp_is_empty!42671)))

(declare-fun b!6874235 () Bool)

(declare-fun tp!1888006 () Bool)

(assert (=> b!6874235 (= e!4143411 tp!1888006)))

(declare-fun b!6874236 () Bool)

(declare-fun tp!1888002 () Bool)

(declare-fun tp!1888005 () Bool)

(assert (=> b!6874236 (= e!4143411 (and tp!1888002 tp!1888005))))

(assert (=> b!6873812 (= tp!1887858 e!4143411)))

(assert (= (and b!6873812 ((_ is ElementMatch!16709) (regOne!33931 (regTwo!33930 r!7292)))) b!6874233))

(assert (= (and b!6873812 ((_ is Concat!25554) (regOne!33931 (regTwo!33930 r!7292)))) b!6874234))

(assert (= (and b!6873812 ((_ is Star!16709) (regOne!33931 (regTwo!33930 r!7292)))) b!6874235))

(assert (= (and b!6873812 ((_ is Union!16709) (regOne!33931 (regTwo!33930 r!7292)))) b!6874236))

(declare-fun b!6874242 () Bool)

(declare-fun e!4143413 () Bool)

(declare-fun tp!1888013 () Bool)

(declare-fun tp!1888014 () Bool)

(assert (=> b!6874242 (= e!4143413 (and tp!1888013 tp!1888014))))

(declare-fun b!6874241 () Bool)

(assert (=> b!6874241 (= e!4143413 tp_is_empty!42671)))

(declare-fun b!6874243 () Bool)

(declare-fun tp!1888016 () Bool)

(assert (=> b!6874243 (= e!4143413 tp!1888016)))

(declare-fun b!6874244 () Bool)

(declare-fun tp!1888012 () Bool)

(declare-fun tp!1888015 () Bool)

(assert (=> b!6874244 (= e!4143413 (and tp!1888012 tp!1888015))))

(assert (=> b!6873812 (= tp!1887861 e!4143413)))

(assert (= (and b!6873812 ((_ is ElementMatch!16709) (regTwo!33931 (regTwo!33930 r!7292)))) b!6874241))

(assert (= (and b!6873812 ((_ is Concat!25554) (regTwo!33931 (regTwo!33930 r!7292)))) b!6874242))

(assert (= (and b!6873812 ((_ is Star!16709) (regTwo!33931 (regTwo!33930 r!7292)))) b!6874243))

(assert (= (and b!6873812 ((_ is Union!16709) (regTwo!33931 (regTwo!33930 r!7292)))) b!6874244))

(declare-fun condSetEmpty!47291 () Bool)

(assert (=> setNonEmpty!47289 (= condSetEmpty!47291 (= setRest!47289 ((as const (Array Context!12186 Bool)) false)))))

(declare-fun setRes!47291 () Bool)

(assert (=> setNonEmpty!47289 (= tp!1887852 setRes!47291)))

(declare-fun setIsEmpty!47291 () Bool)

(assert (=> setIsEmpty!47291 setRes!47291))

(declare-fun setNonEmpty!47291 () Bool)

(declare-fun e!4143415 () Bool)

(declare-fun tp!1888023 () Bool)

(declare-fun setElem!47291 () Context!12186)

(assert (=> setNonEmpty!47291 (= setRes!47291 (and tp!1888023 (inv!85019 setElem!47291) e!4143415))))

(declare-fun setRest!47291 () (InoxSet Context!12186))

(assert (=> setNonEmpty!47291 (= setRest!47289 ((_ map or) (store ((as const (Array Context!12186 Bool)) false) setElem!47291 true) setRest!47291))))

(declare-fun b!6874249 () Bool)

(declare-fun tp!1888022 () Bool)

(assert (=> b!6874249 (= e!4143415 tp!1888022)))

(assert (= (and setNonEmpty!47289 condSetEmpty!47291) setIsEmpty!47291))

(assert (= (and setNonEmpty!47289 (not condSetEmpty!47291)) setNonEmpty!47291))

(assert (= setNonEmpty!47291 b!6874249))

(declare-fun m!7603492 () Bool)

(assert (=> setNonEmpty!47291 m!7603492))

(declare-fun b!6874255 () Bool)

(declare-fun e!4143418 () Bool)

(declare-fun tp!1888029 () Bool)

(assert (=> b!6874255 (= e!4143418 tp!1888029)))

(declare-fun tp!1888030 () Bool)

(declare-fun b!6874254 () Bool)

(declare-fun e!4143417 () Bool)

(assert (=> b!6874254 (= e!4143417 (and (inv!85019 (h!72751 (t!380170 (t!380170 zl!343)))) e!4143418 tp!1888030))))

(assert (=> b!6873824 (= tp!1887874 e!4143417)))

(assert (= b!6874254 b!6874255))

(assert (= (and b!6873824 ((_ is Cons!66303) (t!380170 (t!380170 zl!343)))) b!6874254))

(declare-fun m!7603494 () Bool)

(assert (=> b!6874254 m!7603494))

(declare-fun b!6874261 () Bool)

(declare-fun e!4143420 () Bool)

(declare-fun tp!1888037 () Bool)

(declare-fun tp!1888038 () Bool)

(assert (=> b!6874261 (= e!4143420 (and tp!1888037 tp!1888038))))

(declare-fun b!6874260 () Bool)

(assert (=> b!6874260 (= e!4143420 tp_is_empty!42671)))

(declare-fun b!6874262 () Bool)

(declare-fun tp!1888040 () Bool)

(assert (=> b!6874262 (= e!4143420 tp!1888040)))

(declare-fun b!6874263 () Bool)

(declare-fun tp!1888036 () Bool)

(declare-fun tp!1888039 () Bool)

(assert (=> b!6874263 (= e!4143420 (and tp!1888036 tp!1888039))))

(assert (=> b!6873810 (= tp!1887859 e!4143420)))

(assert (= (and b!6873810 ((_ is ElementMatch!16709) (regOne!33930 (regTwo!33930 r!7292)))) b!6874260))

(assert (= (and b!6873810 ((_ is Concat!25554) (regOne!33930 (regTwo!33930 r!7292)))) b!6874261))

(assert (= (and b!6873810 ((_ is Star!16709) (regOne!33930 (regTwo!33930 r!7292)))) b!6874262))

(assert (= (and b!6873810 ((_ is Union!16709) (regOne!33930 (regTwo!33930 r!7292)))) b!6874263))

(declare-fun b!6874273 () Bool)

(declare-fun e!4143423 () Bool)

(declare-fun tp!1888049 () Bool)

(declare-fun tp!1888050 () Bool)

(assert (=> b!6874273 (= e!4143423 (and tp!1888049 tp!1888050))))

(declare-fun b!6874268 () Bool)

(assert (=> b!6874268 (= e!4143423 tp_is_empty!42671)))

(declare-fun b!6874274 () Bool)

(declare-fun tp!1888052 () Bool)

(assert (=> b!6874274 (= e!4143423 tp!1888052)))

(declare-fun b!6874275 () Bool)

(declare-fun tp!1888048 () Bool)

(declare-fun tp!1888051 () Bool)

(assert (=> b!6874275 (= e!4143423 (and tp!1888048 tp!1888051))))

(assert (=> b!6873810 (= tp!1887860 e!4143423)))

(assert (= (and b!6873810 ((_ is ElementMatch!16709) (regTwo!33930 (regTwo!33930 r!7292)))) b!6874268))

(assert (= (and b!6873810 ((_ is Concat!25554) (regTwo!33930 (regTwo!33930 r!7292)))) b!6874273))

(assert (= (and b!6873810 ((_ is Star!16709) (regTwo!33930 (regTwo!33930 r!7292)))) b!6874274))

(assert (= (and b!6873810 ((_ is Union!16709) (regTwo!33930 (regTwo!33930 r!7292)))) b!6874275))

(declare-fun b!6874278 () Bool)

(declare-fun e!4143425 () Bool)

(declare-fun tp!1888059 () Bool)

(declare-fun tp!1888060 () Bool)

(assert (=> b!6874278 (= e!4143425 (and tp!1888059 tp!1888060))))

(declare-fun b!6874277 () Bool)

(assert (=> b!6874277 (= e!4143425 tp_is_empty!42671)))

(declare-fun b!6874279 () Bool)

(declare-fun tp!1888062 () Bool)

(assert (=> b!6874279 (= e!4143425 tp!1888062)))

(declare-fun b!6874280 () Bool)

(declare-fun tp!1888058 () Bool)

(declare-fun tp!1888061 () Bool)

(assert (=> b!6874280 (= e!4143425 (and tp!1888058 tp!1888061))))

(assert (=> b!6873811 (= tp!1887862 e!4143425)))

(assert (= (and b!6873811 ((_ is ElementMatch!16709) (reg!17038 (regTwo!33930 r!7292)))) b!6874277))

(assert (= (and b!6873811 ((_ is Concat!25554) (reg!17038 (regTwo!33930 r!7292)))) b!6874278))

(assert (= (and b!6873811 ((_ is Star!16709) (reg!17038 (regTwo!33930 r!7292)))) b!6874279))

(assert (= (and b!6873811 ((_ is Union!16709) (reg!17038 (regTwo!33930 r!7292)))) b!6874280))

(declare-fun b!6874286 () Bool)

(declare-fun e!4143427 () Bool)

(declare-fun tp!1888069 () Bool)

(declare-fun tp!1888070 () Bool)

(assert (=> b!6874286 (= e!4143427 (and tp!1888069 tp!1888070))))

(declare-fun b!6874285 () Bool)

(assert (=> b!6874285 (= e!4143427 tp_is_empty!42671)))

(declare-fun b!6874287 () Bool)

(declare-fun tp!1888072 () Bool)

(assert (=> b!6874287 (= e!4143427 tp!1888072)))

(declare-fun b!6874288 () Bool)

(declare-fun tp!1888068 () Bool)

(declare-fun tp!1888071 () Bool)

(assert (=> b!6874288 (= e!4143427 (and tp!1888068 tp!1888071))))

(assert (=> b!6873831 (= tp!1887878 e!4143427)))

(assert (= (and b!6873831 ((_ is ElementMatch!16709) (h!72750 (exprs!6593 setElem!47283)))) b!6874285))

(assert (= (and b!6873831 ((_ is Concat!25554) (h!72750 (exprs!6593 setElem!47283)))) b!6874286))

(assert (= (and b!6873831 ((_ is Star!16709) (h!72750 (exprs!6593 setElem!47283)))) b!6874287))

(assert (= (and b!6873831 ((_ is Union!16709) (h!72750 (exprs!6593 setElem!47283)))) b!6874288))

(declare-fun b!6874293 () Bool)

(declare-fun e!4143429 () Bool)

(declare-fun tp!1888078 () Bool)

(declare-fun tp!1888079 () Bool)

(assert (=> b!6874293 (= e!4143429 (and tp!1888078 tp!1888079))))

(assert (=> b!6873831 (= tp!1887879 e!4143429)))

(assert (= (and b!6873831 ((_ is Cons!66302) (t!380169 (exprs!6593 setElem!47283)))) b!6874293))

(declare-fun b!6874295 () Bool)

(declare-fun e!4143430 () Bool)

(declare-fun tp!1888081 () Bool)

(declare-fun tp!1888082 () Bool)

(assert (=> b!6874295 (= e!4143430 (and tp!1888081 tp!1888082))))

(declare-fun b!6874294 () Bool)

(assert (=> b!6874294 (= e!4143430 tp_is_empty!42671)))

(declare-fun b!6874296 () Bool)

(declare-fun tp!1888084 () Bool)

(assert (=> b!6874296 (= e!4143430 tp!1888084)))

(declare-fun b!6874297 () Bool)

(declare-fun tp!1888080 () Bool)

(declare-fun tp!1888083 () Bool)

(assert (=> b!6874297 (= e!4143430 (and tp!1888080 tp!1888083))))

(assert (=> b!6873817 (= tp!1887867 e!4143430)))

(assert (= (and b!6873817 ((_ is ElementMatch!16709) (h!72750 (exprs!6593 (h!72751 zl!343))))) b!6874294))

(assert (= (and b!6873817 ((_ is Concat!25554) (h!72750 (exprs!6593 (h!72751 zl!343))))) b!6874295))

(assert (= (and b!6873817 ((_ is Star!16709) (h!72750 (exprs!6593 (h!72751 zl!343))))) b!6874296))

(assert (= (and b!6873817 ((_ is Union!16709) (h!72750 (exprs!6593 (h!72751 zl!343))))) b!6874297))

(declare-fun b!6874298 () Bool)

(declare-fun e!4143431 () Bool)

(declare-fun tp!1888085 () Bool)

(declare-fun tp!1888086 () Bool)

(assert (=> b!6874298 (= e!4143431 (and tp!1888085 tp!1888086))))

(assert (=> b!6873817 (= tp!1887868 e!4143431)))

(assert (= (and b!6873817 ((_ is Cons!66302) (t!380169 (exprs!6593 (h!72751 zl!343))))) b!6874298))

(declare-fun b!6874300 () Bool)

(declare-fun e!4143432 () Bool)

(declare-fun tp!1888088 () Bool)

(declare-fun tp!1888089 () Bool)

(assert (=> b!6874300 (= e!4143432 (and tp!1888088 tp!1888089))))

(declare-fun b!6874299 () Bool)

(assert (=> b!6874299 (= e!4143432 tp_is_empty!42671)))

(declare-fun b!6874301 () Bool)

(declare-fun tp!1888091 () Bool)

(assert (=> b!6874301 (= e!4143432 tp!1888091)))

(declare-fun b!6874302 () Bool)

(declare-fun tp!1888087 () Bool)

(declare-fun tp!1888090 () Bool)

(assert (=> b!6874302 (= e!4143432 (and tp!1888087 tp!1888090))))

(assert (=> b!6873795 (= tp!1887837 e!4143432)))

(assert (= (and b!6873795 ((_ is ElementMatch!16709) (regOne!33931 (regOne!33931 r!7292)))) b!6874299))

(assert (= (and b!6873795 ((_ is Concat!25554) (regOne!33931 (regOne!33931 r!7292)))) b!6874300))

(assert (= (and b!6873795 ((_ is Star!16709) (regOne!33931 (regOne!33931 r!7292)))) b!6874301))

(assert (= (and b!6873795 ((_ is Union!16709) (regOne!33931 (regOne!33931 r!7292)))) b!6874302))

(declare-fun b!6874304 () Bool)

(declare-fun e!4143433 () Bool)

(declare-fun tp!1888093 () Bool)

(declare-fun tp!1888094 () Bool)

(assert (=> b!6874304 (= e!4143433 (and tp!1888093 tp!1888094))))

(declare-fun b!6874303 () Bool)

(assert (=> b!6874303 (= e!4143433 tp_is_empty!42671)))

(declare-fun b!6874305 () Bool)

(declare-fun tp!1888096 () Bool)

(assert (=> b!6874305 (= e!4143433 tp!1888096)))

(declare-fun b!6874306 () Bool)

(declare-fun tp!1888092 () Bool)

(declare-fun tp!1888095 () Bool)

(assert (=> b!6874306 (= e!4143433 (and tp!1888092 tp!1888095))))

(assert (=> b!6873795 (= tp!1887840 e!4143433)))

(assert (= (and b!6873795 ((_ is ElementMatch!16709) (regTwo!33931 (regOne!33931 r!7292)))) b!6874303))

(assert (= (and b!6873795 ((_ is Concat!25554) (regTwo!33931 (regOne!33931 r!7292)))) b!6874304))

(assert (= (and b!6873795 ((_ is Star!16709) (regTwo!33931 (regOne!33931 r!7292)))) b!6874305))

(assert (= (and b!6873795 ((_ is Union!16709) (regTwo!33931 (regOne!33931 r!7292)))) b!6874306))

(declare-fun b!6874308 () Bool)

(declare-fun e!4143434 () Bool)

(declare-fun tp!1888098 () Bool)

(declare-fun tp!1888099 () Bool)

(assert (=> b!6874308 (= e!4143434 (and tp!1888098 tp!1888099))))

(declare-fun b!6874307 () Bool)

(assert (=> b!6874307 (= e!4143434 tp_is_empty!42671)))

(declare-fun b!6874309 () Bool)

(declare-fun tp!1888101 () Bool)

(assert (=> b!6874309 (= e!4143434 tp!1888101)))

(declare-fun b!6874310 () Bool)

(declare-fun tp!1888097 () Bool)

(declare-fun tp!1888100 () Bool)

(assert (=> b!6874310 (= e!4143434 (and tp!1888097 tp!1888100))))

(assert (=> b!6873798 (= tp!1887846 e!4143434)))

(assert (= (and b!6873798 ((_ is ElementMatch!16709) (reg!17038 (regTwo!33931 r!7292)))) b!6874307))

(assert (= (and b!6873798 ((_ is Concat!25554) (reg!17038 (regTwo!33931 r!7292)))) b!6874308))

(assert (= (and b!6873798 ((_ is Star!16709) (reg!17038 (regTwo!33931 r!7292)))) b!6874309))

(assert (= (and b!6873798 ((_ is Union!16709) (reg!17038 (regTwo!33931 r!7292)))) b!6874310))

(declare-fun b!6874312 () Bool)

(declare-fun e!4143435 () Bool)

(declare-fun tp!1888103 () Bool)

(declare-fun tp!1888104 () Bool)

(assert (=> b!6874312 (= e!4143435 (and tp!1888103 tp!1888104))))

(declare-fun b!6874311 () Bool)

(assert (=> b!6874311 (= e!4143435 tp_is_empty!42671)))

(declare-fun b!6874313 () Bool)

(declare-fun tp!1888106 () Bool)

(assert (=> b!6874313 (= e!4143435 tp!1888106)))

(declare-fun b!6874314 () Bool)

(declare-fun tp!1888102 () Bool)

(declare-fun tp!1888105 () Bool)

(assert (=> b!6874314 (= e!4143435 (and tp!1888102 tp!1888105))))

(assert (=> b!6873789 (= tp!1887833 e!4143435)))

(assert (= (and b!6873789 ((_ is ElementMatch!16709) (regOne!33930 (reg!17038 r!7292)))) b!6874311))

(assert (= (and b!6873789 ((_ is Concat!25554) (regOne!33930 (reg!17038 r!7292)))) b!6874312))

(assert (= (and b!6873789 ((_ is Star!16709) (regOne!33930 (reg!17038 r!7292)))) b!6874313))

(assert (= (and b!6873789 ((_ is Union!16709) (regOne!33930 (reg!17038 r!7292)))) b!6874314))

(declare-fun b!6874316 () Bool)

(declare-fun e!4143436 () Bool)

(declare-fun tp!1888108 () Bool)

(declare-fun tp!1888109 () Bool)

(assert (=> b!6874316 (= e!4143436 (and tp!1888108 tp!1888109))))

(declare-fun b!6874315 () Bool)

(assert (=> b!6874315 (= e!4143436 tp_is_empty!42671)))

(declare-fun b!6874317 () Bool)

(declare-fun tp!1888111 () Bool)

(assert (=> b!6874317 (= e!4143436 tp!1888111)))

(declare-fun b!6874318 () Bool)

(declare-fun tp!1888107 () Bool)

(declare-fun tp!1888110 () Bool)

(assert (=> b!6874318 (= e!4143436 (and tp!1888107 tp!1888110))))

(assert (=> b!6873789 (= tp!1887834 e!4143436)))

(assert (= (and b!6873789 ((_ is ElementMatch!16709) (regTwo!33930 (reg!17038 r!7292)))) b!6874315))

(assert (= (and b!6873789 ((_ is Concat!25554) (regTwo!33930 (reg!17038 r!7292)))) b!6874316))

(assert (= (and b!6873789 ((_ is Star!16709) (regTwo!33930 (reg!17038 r!7292)))) b!6874317))

(assert (= (and b!6873789 ((_ is Union!16709) (regTwo!33930 (reg!17038 r!7292)))) b!6874318))

(declare-fun b!6874320 () Bool)

(declare-fun e!4143437 () Bool)

(declare-fun tp!1888113 () Bool)

(declare-fun tp!1888114 () Bool)

(assert (=> b!6874320 (= e!4143437 (and tp!1888113 tp!1888114))))

(declare-fun b!6874319 () Bool)

(assert (=> b!6874319 (= e!4143437 tp_is_empty!42671)))

(declare-fun b!6874321 () Bool)

(declare-fun tp!1888116 () Bool)

(assert (=> b!6874321 (= e!4143437 tp!1888116)))

(declare-fun b!6874322 () Bool)

(declare-fun tp!1888112 () Bool)

(declare-fun tp!1888115 () Bool)

(assert (=> b!6874322 (= e!4143437 (and tp!1888112 tp!1888115))))

(assert (=> b!6873797 (= tp!1887843 e!4143437)))

(assert (= (and b!6873797 ((_ is ElementMatch!16709) (regOne!33930 (regTwo!33931 r!7292)))) b!6874319))

(assert (= (and b!6873797 ((_ is Concat!25554) (regOne!33930 (regTwo!33931 r!7292)))) b!6874320))

(assert (= (and b!6873797 ((_ is Star!16709) (regOne!33930 (regTwo!33931 r!7292)))) b!6874321))

(assert (= (and b!6873797 ((_ is Union!16709) (regOne!33930 (regTwo!33931 r!7292)))) b!6874322))

(declare-fun b!6874324 () Bool)

(declare-fun e!4143438 () Bool)

(declare-fun tp!1888118 () Bool)

(declare-fun tp!1888119 () Bool)

(assert (=> b!6874324 (= e!4143438 (and tp!1888118 tp!1888119))))

(declare-fun b!6874323 () Bool)

(assert (=> b!6874323 (= e!4143438 tp_is_empty!42671)))

(declare-fun b!6874325 () Bool)

(declare-fun tp!1888121 () Bool)

(assert (=> b!6874325 (= e!4143438 tp!1888121)))

(declare-fun b!6874326 () Bool)

(declare-fun tp!1888117 () Bool)

(declare-fun tp!1888120 () Bool)

(assert (=> b!6874326 (= e!4143438 (and tp!1888117 tp!1888120))))

(assert (=> b!6873797 (= tp!1887844 e!4143438)))

(assert (= (and b!6873797 ((_ is ElementMatch!16709) (regTwo!33930 (regTwo!33931 r!7292)))) b!6874323))

(assert (= (and b!6873797 ((_ is Concat!25554) (regTwo!33930 (regTwo!33931 r!7292)))) b!6874324))

(assert (= (and b!6873797 ((_ is Star!16709) (regTwo!33930 (regTwo!33931 r!7292)))) b!6874325))

(assert (= (and b!6873797 ((_ is Union!16709) (regTwo!33930 (regTwo!33931 r!7292)))) b!6874326))

(declare-fun b!6874328 () Bool)

(declare-fun e!4143439 () Bool)

(declare-fun tp!1888123 () Bool)

(declare-fun tp!1888124 () Bool)

(assert (=> b!6874328 (= e!4143439 (and tp!1888123 tp!1888124))))

(declare-fun b!6874327 () Bool)

(assert (=> b!6874327 (= e!4143439 tp_is_empty!42671)))

(declare-fun b!6874329 () Bool)

(declare-fun tp!1888126 () Bool)

(assert (=> b!6874329 (= e!4143439 tp!1888126)))

(declare-fun b!6874330 () Bool)

(declare-fun tp!1888122 () Bool)

(declare-fun tp!1888125 () Bool)

(assert (=> b!6874330 (= e!4143439 (and tp!1888122 tp!1888125))))

(assert (=> b!6873807 (= tp!1887857 e!4143439)))

(assert (= (and b!6873807 ((_ is ElementMatch!16709) (reg!17038 (regOne!33930 r!7292)))) b!6874327))

(assert (= (and b!6873807 ((_ is Concat!25554) (reg!17038 (regOne!33930 r!7292)))) b!6874328))

(assert (= (and b!6873807 ((_ is Star!16709) (reg!17038 (regOne!33930 r!7292)))) b!6874329))

(assert (= (and b!6873807 ((_ is Union!16709) (reg!17038 (regOne!33930 r!7292)))) b!6874330))

(declare-fun b!6874332 () Bool)

(declare-fun e!4143440 () Bool)

(declare-fun tp!1888128 () Bool)

(declare-fun tp!1888129 () Bool)

(assert (=> b!6874332 (= e!4143440 (and tp!1888128 tp!1888129))))

(declare-fun b!6874331 () Bool)

(assert (=> b!6874331 (= e!4143440 tp_is_empty!42671)))

(declare-fun b!6874333 () Bool)

(declare-fun tp!1888131 () Bool)

(assert (=> b!6874333 (= e!4143440 tp!1888131)))

(declare-fun b!6874334 () Bool)

(declare-fun tp!1888127 () Bool)

(declare-fun tp!1888130 () Bool)

(assert (=> b!6874334 (= e!4143440 (and tp!1888127 tp!1888130))))

(assert (=> b!6873806 (= tp!1887854 e!4143440)))

(assert (= (and b!6873806 ((_ is ElementMatch!16709) (regOne!33930 (regOne!33930 r!7292)))) b!6874331))

(assert (= (and b!6873806 ((_ is Concat!25554) (regOne!33930 (regOne!33930 r!7292)))) b!6874332))

(assert (= (and b!6873806 ((_ is Star!16709) (regOne!33930 (regOne!33930 r!7292)))) b!6874333))

(assert (= (and b!6873806 ((_ is Union!16709) (regOne!33930 (regOne!33930 r!7292)))) b!6874334))

(declare-fun b!6874336 () Bool)

(declare-fun e!4143441 () Bool)

(declare-fun tp!1888133 () Bool)

(declare-fun tp!1888134 () Bool)

(assert (=> b!6874336 (= e!4143441 (and tp!1888133 tp!1888134))))

(declare-fun b!6874335 () Bool)

(assert (=> b!6874335 (= e!4143441 tp_is_empty!42671)))

(declare-fun b!6874337 () Bool)

(declare-fun tp!1888136 () Bool)

(assert (=> b!6874337 (= e!4143441 tp!1888136)))

(declare-fun b!6874338 () Bool)

(declare-fun tp!1888132 () Bool)

(declare-fun tp!1888135 () Bool)

(assert (=> b!6874338 (= e!4143441 (and tp!1888132 tp!1888135))))

(assert (=> b!6873806 (= tp!1887855 e!4143441)))

(assert (= (and b!6873806 ((_ is ElementMatch!16709) (regTwo!33930 (regOne!33930 r!7292)))) b!6874335))

(assert (= (and b!6873806 ((_ is Concat!25554) (regTwo!33930 (regOne!33930 r!7292)))) b!6874336))

(assert (= (and b!6873806 ((_ is Star!16709) (regTwo!33930 (regOne!33930 r!7292)))) b!6874337))

(assert (= (and b!6873806 ((_ is Union!16709) (regTwo!33930 (regOne!33930 r!7292)))) b!6874338))

(declare-fun b!6874340 () Bool)

(declare-fun e!4143442 () Bool)

(declare-fun tp!1888138 () Bool)

(declare-fun tp!1888139 () Bool)

(assert (=> b!6874340 (= e!4143442 (and tp!1888138 tp!1888139))))

(declare-fun b!6874339 () Bool)

(assert (=> b!6874339 (= e!4143442 tp_is_empty!42671)))

(declare-fun b!6874341 () Bool)

(declare-fun tp!1888141 () Bool)

(assert (=> b!6874341 (= e!4143442 tp!1888141)))

(declare-fun b!6874342 () Bool)

(declare-fun tp!1888137 () Bool)

(declare-fun tp!1888140 () Bool)

(assert (=> b!6874342 (= e!4143442 (and tp!1888137 tp!1888140))))

(assert (=> b!6873791 (= tp!1887832 e!4143442)))

(assert (= (and b!6873791 ((_ is ElementMatch!16709) (regOne!33931 (reg!17038 r!7292)))) b!6874339))

(assert (= (and b!6873791 ((_ is Concat!25554) (regOne!33931 (reg!17038 r!7292)))) b!6874340))

(assert (= (and b!6873791 ((_ is Star!16709) (regOne!33931 (reg!17038 r!7292)))) b!6874341))

(assert (= (and b!6873791 ((_ is Union!16709) (regOne!33931 (reg!17038 r!7292)))) b!6874342))

(declare-fun b!6874344 () Bool)

(declare-fun e!4143443 () Bool)

(declare-fun tp!1888143 () Bool)

(declare-fun tp!1888144 () Bool)

(assert (=> b!6874344 (= e!4143443 (and tp!1888143 tp!1888144))))

(declare-fun b!6874343 () Bool)

(assert (=> b!6874343 (= e!4143443 tp_is_empty!42671)))

(declare-fun b!6874345 () Bool)

(declare-fun tp!1888146 () Bool)

(assert (=> b!6874345 (= e!4143443 tp!1888146)))

(declare-fun b!6874346 () Bool)

(declare-fun tp!1888142 () Bool)

(declare-fun tp!1888145 () Bool)

(assert (=> b!6874346 (= e!4143443 (and tp!1888142 tp!1888145))))

(assert (=> b!6873791 (= tp!1887835 e!4143443)))

(assert (= (and b!6873791 ((_ is ElementMatch!16709) (regTwo!33931 (reg!17038 r!7292)))) b!6874343))

(assert (= (and b!6873791 ((_ is Concat!25554) (regTwo!33931 (reg!17038 r!7292)))) b!6874344))

(assert (= (and b!6873791 ((_ is Star!16709) (regTwo!33931 (reg!17038 r!7292)))) b!6874345))

(assert (= (and b!6873791 ((_ is Union!16709) (regTwo!33931 (reg!17038 r!7292)))) b!6874346))

(declare-fun b!6874348 () Bool)

(declare-fun e!4143444 () Bool)

(declare-fun tp!1888148 () Bool)

(declare-fun tp!1888149 () Bool)

(assert (=> b!6874348 (= e!4143444 (and tp!1888148 tp!1888149))))

(declare-fun b!6874347 () Bool)

(assert (=> b!6874347 (= e!4143444 tp_is_empty!42671)))

(declare-fun b!6874349 () Bool)

(declare-fun tp!1888151 () Bool)

(assert (=> b!6874349 (= e!4143444 tp!1888151)))

(declare-fun b!6874350 () Bool)

(declare-fun tp!1888147 () Bool)

(declare-fun tp!1888150 () Bool)

(assert (=> b!6874350 (= e!4143444 (and tp!1888147 tp!1888150))))

(assert (=> b!6873790 (= tp!1887836 e!4143444)))

(assert (= (and b!6873790 ((_ is ElementMatch!16709) (reg!17038 (reg!17038 r!7292)))) b!6874347))

(assert (= (and b!6873790 ((_ is Concat!25554) (reg!17038 (reg!17038 r!7292)))) b!6874348))

(assert (= (and b!6873790 ((_ is Star!16709) (reg!17038 (reg!17038 r!7292)))) b!6874349))

(assert (= (and b!6873790 ((_ is Union!16709) (reg!17038 (reg!17038 r!7292)))) b!6874350))

(declare-fun b!6874352 () Bool)

(declare-fun e!4143445 () Bool)

(declare-fun tp!1888153 () Bool)

(declare-fun tp!1888154 () Bool)

(assert (=> b!6874352 (= e!4143445 (and tp!1888153 tp!1888154))))

(declare-fun b!6874351 () Bool)

(assert (=> b!6874351 (= e!4143445 tp_is_empty!42671)))

(declare-fun b!6874353 () Bool)

(declare-fun tp!1888156 () Bool)

(assert (=> b!6874353 (= e!4143445 tp!1888156)))

(declare-fun b!6874354 () Bool)

(declare-fun tp!1888152 () Bool)

(declare-fun tp!1888155 () Bool)

(assert (=> b!6874354 (= e!4143445 (and tp!1888152 tp!1888155))))

(assert (=> b!6873799 (= tp!1887842 e!4143445)))

(assert (= (and b!6873799 ((_ is ElementMatch!16709) (regOne!33931 (regTwo!33931 r!7292)))) b!6874351))

(assert (= (and b!6873799 ((_ is Concat!25554) (regOne!33931 (regTwo!33931 r!7292)))) b!6874352))

(assert (= (and b!6873799 ((_ is Star!16709) (regOne!33931 (regTwo!33931 r!7292)))) b!6874353))

(assert (= (and b!6873799 ((_ is Union!16709) (regOne!33931 (regTwo!33931 r!7292)))) b!6874354))

(declare-fun b!6874356 () Bool)

(declare-fun e!4143446 () Bool)

(declare-fun tp!1888158 () Bool)

(declare-fun tp!1888159 () Bool)

(assert (=> b!6874356 (= e!4143446 (and tp!1888158 tp!1888159))))

(declare-fun b!6874355 () Bool)

(assert (=> b!6874355 (= e!4143446 tp_is_empty!42671)))

(declare-fun b!6874357 () Bool)

(declare-fun tp!1888161 () Bool)

(assert (=> b!6874357 (= e!4143446 tp!1888161)))

(declare-fun b!6874358 () Bool)

(declare-fun tp!1888157 () Bool)

(declare-fun tp!1888160 () Bool)

(assert (=> b!6874358 (= e!4143446 (and tp!1888157 tp!1888160))))

(assert (=> b!6873799 (= tp!1887845 e!4143446)))

(assert (= (and b!6873799 ((_ is ElementMatch!16709) (regTwo!33931 (regTwo!33931 r!7292)))) b!6874355))

(assert (= (and b!6873799 ((_ is Concat!25554) (regTwo!33931 (regTwo!33931 r!7292)))) b!6874356))

(assert (= (and b!6873799 ((_ is Star!16709) (regTwo!33931 (regTwo!33931 r!7292)))) b!6874357))

(assert (= (and b!6873799 ((_ is Union!16709) (regTwo!33931 (regTwo!33931 r!7292)))) b!6874358))

(declare-fun b!6874360 () Bool)

(declare-fun e!4143447 () Bool)

(declare-fun tp!1888163 () Bool)

(declare-fun tp!1888164 () Bool)

(assert (=> b!6874360 (= e!4143447 (and tp!1888163 tp!1888164))))

(declare-fun b!6874359 () Bool)

(assert (=> b!6874359 (= e!4143447 tp_is_empty!42671)))

(declare-fun b!6874361 () Bool)

(declare-fun tp!1888166 () Bool)

(assert (=> b!6874361 (= e!4143447 tp!1888166)))

(declare-fun b!6874362 () Bool)

(declare-fun tp!1888162 () Bool)

(declare-fun tp!1888165 () Bool)

(assert (=> b!6874362 (= e!4143447 (and tp!1888162 tp!1888165))))

(assert (=> b!6873793 (= tp!1887838 e!4143447)))

(assert (= (and b!6873793 ((_ is ElementMatch!16709) (regOne!33930 (regOne!33931 r!7292)))) b!6874359))

(assert (= (and b!6873793 ((_ is Concat!25554) (regOne!33930 (regOne!33931 r!7292)))) b!6874360))

(assert (= (and b!6873793 ((_ is Star!16709) (regOne!33930 (regOne!33931 r!7292)))) b!6874361))

(assert (= (and b!6873793 ((_ is Union!16709) (regOne!33930 (regOne!33931 r!7292)))) b!6874362))

(declare-fun b!6874364 () Bool)

(declare-fun e!4143448 () Bool)

(declare-fun tp!1888168 () Bool)

(declare-fun tp!1888169 () Bool)

(assert (=> b!6874364 (= e!4143448 (and tp!1888168 tp!1888169))))

(declare-fun b!6874363 () Bool)

(assert (=> b!6874363 (= e!4143448 tp_is_empty!42671)))

(declare-fun b!6874365 () Bool)

(declare-fun tp!1888171 () Bool)

(assert (=> b!6874365 (= e!4143448 tp!1888171)))

(declare-fun b!6874366 () Bool)

(declare-fun tp!1888167 () Bool)

(declare-fun tp!1888170 () Bool)

(assert (=> b!6874366 (= e!4143448 (and tp!1888167 tp!1888170))))

(assert (=> b!6873793 (= tp!1887839 e!4143448)))

(assert (= (and b!6873793 ((_ is ElementMatch!16709) (regTwo!33930 (regOne!33931 r!7292)))) b!6874363))

(assert (= (and b!6873793 ((_ is Concat!25554) (regTwo!33930 (regOne!33931 r!7292)))) b!6874364))

(assert (= (and b!6873793 ((_ is Star!16709) (regTwo!33930 (regOne!33931 r!7292)))) b!6874365))

(assert (= (and b!6873793 ((_ is Union!16709) (regTwo!33930 (regOne!33931 r!7292)))) b!6874366))

(declare-fun b!6874368 () Bool)

(declare-fun e!4143449 () Bool)

(declare-fun tp!1888173 () Bool)

(declare-fun tp!1888174 () Bool)

(assert (=> b!6874368 (= e!4143449 (and tp!1888173 tp!1888174))))

(declare-fun b!6874367 () Bool)

(assert (=> b!6874367 (= e!4143449 tp_is_empty!42671)))

(declare-fun b!6874369 () Bool)

(declare-fun tp!1888176 () Bool)

(assert (=> b!6874369 (= e!4143449 tp!1888176)))

(declare-fun b!6874370 () Bool)

(declare-fun tp!1888172 () Bool)

(declare-fun tp!1888175 () Bool)

(assert (=> b!6874370 (= e!4143449 (and tp!1888172 tp!1888175))))

(assert (=> b!6873794 (= tp!1887841 e!4143449)))

(assert (= (and b!6873794 ((_ is ElementMatch!16709) (reg!17038 (regOne!33931 r!7292)))) b!6874367))

(assert (= (and b!6873794 ((_ is Concat!25554) (reg!17038 (regOne!33931 r!7292)))) b!6874368))

(assert (= (and b!6873794 ((_ is Star!16709) (reg!17038 (regOne!33931 r!7292)))) b!6874369))

(assert (= (and b!6873794 ((_ is Union!16709) (reg!17038 (regOne!33931 r!7292)))) b!6874370))

(declare-fun b!6874371 () Bool)

(declare-fun e!4143450 () Bool)

(declare-fun tp!1888177 () Bool)

(assert (=> b!6874371 (= e!4143450 (and tp_is_empty!42671 tp!1888177))))

(assert (=> b!6873830 (= tp!1887877 e!4143450)))

(assert (= (and b!6873830 ((_ is Cons!66304) (t!380171 (t!380171 s!2326)))) b!6874371))

(declare-fun b!6874373 () Bool)

(declare-fun e!4143451 () Bool)

(declare-fun tp!1888179 () Bool)

(declare-fun tp!1888180 () Bool)

(assert (=> b!6874373 (= e!4143451 (and tp!1888179 tp!1888180))))

(declare-fun b!6874372 () Bool)

(assert (=> b!6874372 (= e!4143451 tp_is_empty!42671)))

(declare-fun b!6874374 () Bool)

(declare-fun tp!1888182 () Bool)

(assert (=> b!6874374 (= e!4143451 tp!1888182)))

(declare-fun b!6874375 () Bool)

(declare-fun tp!1888178 () Bool)

(declare-fun tp!1888181 () Bool)

(assert (=> b!6874375 (= e!4143451 (and tp!1888178 tp!1888181))))

(assert (=> b!6873808 (= tp!1887853 e!4143451)))

(assert (= (and b!6873808 ((_ is ElementMatch!16709) (regOne!33931 (regOne!33930 r!7292)))) b!6874372))

(assert (= (and b!6873808 ((_ is Concat!25554) (regOne!33931 (regOne!33930 r!7292)))) b!6874373))

(assert (= (and b!6873808 ((_ is Star!16709) (regOne!33931 (regOne!33930 r!7292)))) b!6874374))

(assert (= (and b!6873808 ((_ is Union!16709) (regOne!33931 (regOne!33930 r!7292)))) b!6874375))

(declare-fun b!6874377 () Bool)

(declare-fun e!4143452 () Bool)

(declare-fun tp!1888184 () Bool)

(declare-fun tp!1888185 () Bool)

(assert (=> b!6874377 (= e!4143452 (and tp!1888184 tp!1888185))))

(declare-fun b!6874376 () Bool)

(assert (=> b!6874376 (= e!4143452 tp_is_empty!42671)))

(declare-fun b!6874378 () Bool)

(declare-fun tp!1888187 () Bool)

(assert (=> b!6874378 (= e!4143452 tp!1888187)))

(declare-fun b!6874379 () Bool)

(declare-fun tp!1888183 () Bool)

(declare-fun tp!1888186 () Bool)

(assert (=> b!6874379 (= e!4143452 (and tp!1888183 tp!1888186))))

(assert (=> b!6873808 (= tp!1887856 e!4143452)))

(assert (= (and b!6873808 ((_ is ElementMatch!16709) (regTwo!33931 (regOne!33930 r!7292)))) b!6874376))

(assert (= (and b!6873808 ((_ is Concat!25554) (regTwo!33931 (regOne!33930 r!7292)))) b!6874377))

(assert (= (and b!6873808 ((_ is Star!16709) (regTwo!33931 (regOne!33930 r!7292)))) b!6874378))

(assert (= (and b!6873808 ((_ is Union!16709) (regTwo!33931 (regOne!33930 r!7292)))) b!6874379))

(declare-fun b_lambda!260151 () Bool)

(assert (= b_lambda!260145 (or d!2158954 b_lambda!260151)))

(declare-fun bs!1837606 () Bool)

(declare-fun d!2159060 () Bool)

(assert (= bs!1837606 (and d!2159060 d!2158954)))

(assert (=> bs!1837606 (= (dynLambda!26547 lambda!389091 (h!72750 (exprs!6593 (h!72751 zl!343)))) (validRegex!8445 (h!72750 (exprs!6593 (h!72751 zl!343)))))))

(declare-fun m!7603500 () Bool)

(assert (=> bs!1837606 m!7603500))

(assert (=> b!6874119 d!2159060))

(declare-fun b_lambda!260153 () Bool)

(assert (= b_lambda!260141 (or d!2158948 b_lambda!260153)))

(declare-fun bs!1837607 () Bool)

(declare-fun d!2159062 () Bool)

(assert (= bs!1837607 (and d!2159062 d!2158948)))

(assert (=> bs!1837607 (= (dynLambda!26547 lambda!389090 (h!72750 (exprs!6593 setElem!47283))) (validRegex!8445 (h!72750 (exprs!6593 setElem!47283))))))

(declare-fun m!7603502 () Bool)

(assert (=> bs!1837607 m!7603502))

(assert (=> b!6873901 d!2159062))

(check-sat (not b!6874358) (not b!6874279) (not bm!626031) (not b!6873999) (not b!6874332) (not b!6874320) (not bm!626041) (not b!6874364) (not b_lambda!260151) (not b!6874234) (not bm!626069) tp_is_empty!42671 (not b!6874378) (not b!6873862) (not b!6874360) (not b!6873994) (not b!6874261) (not b!6874344) (not b!6873939) (not b!6874373) (not b!6874322) (not b!6874301) (not b!6874368) (not b!6874365) (not b!6874338) (not b!6874287) (not b!6874345) (not bm!626027) (not bm!626034) (not b!6873921) (not d!2159054) (not b!6873863) (not b!6874015) (not b!6874120) (not b!6873996) (not b!6874361) (not setNonEmpty!47291) (not b!6874249) (not b!6874316) (not b!6874043) (not b!6874342) (not d!2159034) (not b!6874321) (not b!6874113) (not b!6874377) (not b!6874356) (not b!6874369) (not b!6874346) (not b!6874341) (not b!6874352) (not b!6874275) (not b!6873997) (not b!6874326) (not b!6873850) (not b!6874254) (not b!6874038) (not bs!1837607) (not b!6874298) (not bm!626035) (not b!6874313) (not b!6874243) (not bm!626065) (not b!6874262) (not b!6874348) (not b!6874278) (not d!2159024) (not b!6874133) (not d!2159028) (not b!6874375) (not b!6873888) (not b!6874242) (not b!6874295) (not b!6873998) (not b!6874039) (not b!6874297) (not bs!1837606) (not b!6874228) (not b!6874036) (not b!6874308) (not b!6874296) (not b!6874000) (not b!6874354) (not bm!626066) (not b!6873902) (not b!6874325) (not b!6874274) (not b!6874302) (not b!6874031) (not b!6874310) (not b!6874366) (not b!6874312) (not b!6874236) (not b!6874288) (not b!6874314) (not b!6874353) (not b!6873910) (not b!6874235) (not b!6874340) (not d!2159036) (not b!6873889) (not d!2158998) (not d!2158984) (not bm!626039) (not b!6874304) (not b!6874300) (not bm!626025) (not b!6874318) (not b!6874293) (not bm!626070) (not b!6874330) (not b!6873918) (not b!6874328) (not b!6874280) (not b!6874309) (not b!6873992) (not b!6874357) (not b!6874370) (not d!2159002) (not bm!626044) (not d!2158994) (not b!6874255) (not b!6873890) (not b!6874286) (not b!6874324) (not b!6874371) (not b!6874317) (not b!6874329) (not b_lambda!260153) (not b!6874379) (not b!6874374) (not b!6874333) (not b!6874136) (not b!6874226) (not b!6874336) (not b!6874362) (not b!6874126) (not d!2159012) (not b!6874306) (not b!6874350) (not d!2158982) (not b!6874337) (not bm!626033) (not b!6874334) (not b!6874349) (not b!6874273) (not b!6874263) (not b!6874037) (not b!6874244) (not b!6874305))
(check-sat)
