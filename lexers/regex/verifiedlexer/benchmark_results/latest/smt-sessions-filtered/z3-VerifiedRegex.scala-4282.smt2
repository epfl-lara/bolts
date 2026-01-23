; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230076 () Bool)

(assert start!230076)

(declare-fun b!2329216 () Bool)

(declare-fun e!1492389 () Bool)

(declare-datatypes ((B!1841 0))(
  ( (B!1842 (val!8054 Int)) )
))
(declare-datatypes ((List!27918 0))(
  ( (Nil!27820) (Cons!27820 (h!33221 B!1841) (t!207688 List!27918)) )
))
(declare-fun l!3834 () List!27918)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s!1517 () (InoxSet B!1841))

(declare-fun content!3764 (List!27918) (InoxSet B!1841))

(declare-fun tail!3343 (List!27918) List!27918)

(declare-fun head!5074 (List!27918) B!1841)

(assert (=> b!2329216 (= e!1492389 (not (= (content!3764 (tail!3343 l!3834)) ((_ map and) s!1517 ((_ map not) (store ((as const (Array B!1841 Bool)) false) (head!5074 l!3834) true))))))))

(declare-fun b!2329217 () Bool)

(declare-fun e!1492388 () Bool)

(declare-fun tp_is_empty!10941 () Bool)

(declare-fun tp!738163 () Bool)

(assert (=> b!2329217 (= e!1492388 (and tp_is_empty!10941 tp!738163))))

(declare-fun res!994485 () Bool)

(assert (=> start!230076 (=> (not res!994485) (not e!1492389))))

(declare-fun noDuplicate!317 (List!27918) Bool)

(assert (=> start!230076 (= res!994485 (noDuplicate!317 l!3834))))

(assert (=> start!230076 e!1492389))

(assert (=> start!230076 e!1492388))

(declare-fun condSetEmpty!20926 () Bool)

(assert (=> start!230076 (= condSetEmpty!20926 (= s!1517 ((as const (Array B!1841 Bool)) false)))))

(declare-fun setRes!20926 () Bool)

(assert (=> start!230076 setRes!20926))

(declare-fun b!2329218 () Bool)

(declare-fun res!994484 () Bool)

(assert (=> b!2329218 (=> (not res!994484) (not e!1492389))))

(declare-fun toList!1413 ((InoxSet B!1841)) List!27918)

(assert (=> b!2329218 (= res!994484 (= (toList!1413 s!1517) l!3834))))

(declare-fun setNonEmpty!20926 () Bool)

(declare-fun tp!738162 () Bool)

(assert (=> setNonEmpty!20926 (= setRes!20926 (and tp!738162 tp_is_empty!10941))))

(declare-fun setElem!20926 () B!1841)

(declare-fun setRest!20926 () (InoxSet B!1841))

(assert (=> setNonEmpty!20926 (= s!1517 ((_ map or) (store ((as const (Array B!1841 Bool)) false) setElem!20926 true) setRest!20926))))

(declare-fun setIsEmpty!20926 () Bool)

(assert (=> setIsEmpty!20926 setRes!20926))

(declare-fun b!2329219 () Bool)

(declare-fun res!994486 () Bool)

(assert (=> b!2329219 (=> (not res!994486) (not e!1492389))))

(declare-fun isEmpty!15844 (List!27918) Bool)

(assert (=> b!2329219 (= res!994486 (not (isEmpty!15844 l!3834)))))

(assert (= (and start!230076 res!994485) b!2329218))

(assert (= (and b!2329218 res!994484) b!2329219))

(assert (= (and b!2329219 res!994486) b!2329216))

(get-info :version)

(assert (= (and start!230076 ((_ is Cons!27820) l!3834)) b!2329217))

(assert (= (and start!230076 condSetEmpty!20926) setIsEmpty!20926))

(assert (= (and start!230076 (not condSetEmpty!20926)) setNonEmpty!20926))

(declare-fun m!2759459 () Bool)

(assert (=> b!2329216 m!2759459))

(assert (=> b!2329216 m!2759459))

(declare-fun m!2759461 () Bool)

(assert (=> b!2329216 m!2759461))

(declare-fun m!2759463 () Bool)

(assert (=> b!2329216 m!2759463))

(assert (=> b!2329216 m!2759463))

(declare-fun m!2759465 () Bool)

(assert (=> b!2329216 m!2759465))

(declare-fun m!2759467 () Bool)

(assert (=> start!230076 m!2759467))

(declare-fun m!2759469 () Bool)

(assert (=> b!2329218 m!2759469))

(declare-fun m!2759471 () Bool)

(assert (=> b!2329219 m!2759471))

(check-sat tp_is_empty!10941 (not start!230076) (not b!2329218) (not b!2329219) (not setNonEmpty!20926) (not b!2329217) (not b!2329216))
(check-sat)
(get-model)

(declare-fun d!689517 () Bool)

(declare-fun e!1492392 () Bool)

(assert (=> d!689517 e!1492392))

(declare-fun res!994489 () Bool)

(assert (=> d!689517 (=> (not res!994489) (not e!1492392))))

(declare-fun lt!862084 () List!27918)

(assert (=> d!689517 (= res!994489 (noDuplicate!317 lt!862084))))

(declare-fun choose!13625 ((InoxSet B!1841)) List!27918)

(assert (=> d!689517 (= lt!862084 (choose!13625 s!1517))))

(assert (=> d!689517 (= (toList!1413 s!1517) lt!862084)))

(declare-fun b!2329222 () Bool)

(assert (=> b!2329222 (= e!1492392 (= (content!3764 lt!862084) s!1517))))

(assert (= (and d!689517 res!994489) b!2329222))

(declare-fun m!2759473 () Bool)

(assert (=> d!689517 m!2759473))

(declare-fun m!2759475 () Bool)

(assert (=> d!689517 m!2759475))

(declare-fun m!2759477 () Bool)

(assert (=> b!2329222 m!2759477))

(assert (=> b!2329218 d!689517))

(declare-fun d!689521 () Bool)

(assert (=> d!689521 (= (isEmpty!15844 l!3834) ((_ is Nil!27820) l!3834))))

(assert (=> b!2329219 d!689521))

(declare-fun d!689523 () Bool)

(declare-fun res!994501 () Bool)

(declare-fun e!1492404 () Bool)

(assert (=> d!689523 (=> res!994501 e!1492404)))

(assert (=> d!689523 (= res!994501 ((_ is Nil!27820) l!3834))))

(assert (=> d!689523 (= (noDuplicate!317 l!3834) e!1492404)))

(declare-fun b!2329234 () Bool)

(declare-fun e!1492405 () Bool)

(assert (=> b!2329234 (= e!1492404 e!1492405)))

(declare-fun res!994502 () Bool)

(assert (=> b!2329234 (=> (not res!994502) (not e!1492405))))

(declare-fun contains!4810 (List!27918 B!1841) Bool)

(assert (=> b!2329234 (= res!994502 (not (contains!4810 (t!207688 l!3834) (h!33221 l!3834))))))

(declare-fun b!2329235 () Bool)

(assert (=> b!2329235 (= e!1492405 (noDuplicate!317 (t!207688 l!3834)))))

(assert (= (and d!689523 (not res!994501)) b!2329234))

(assert (= (and b!2329234 res!994502) b!2329235))

(declare-fun m!2759485 () Bool)

(assert (=> b!2329234 m!2759485))

(declare-fun m!2759487 () Bool)

(assert (=> b!2329235 m!2759487))

(assert (=> start!230076 d!689523))

(declare-fun d!689527 () Bool)

(declare-fun c!369964 () Bool)

(assert (=> d!689527 (= c!369964 ((_ is Nil!27820) (tail!3343 l!3834)))))

(declare-fun e!1492412 () (InoxSet B!1841))

(assert (=> d!689527 (= (content!3764 (tail!3343 l!3834)) e!1492412)))

(declare-fun b!2329246 () Bool)

(assert (=> b!2329246 (= e!1492412 ((as const (Array B!1841 Bool)) false))))

(declare-fun b!2329247 () Bool)

(assert (=> b!2329247 (= e!1492412 ((_ map or) (store ((as const (Array B!1841 Bool)) false) (h!33221 (tail!3343 l!3834)) true) (content!3764 (t!207688 (tail!3343 l!3834)))))))

(assert (= (and d!689527 c!369964) b!2329246))

(assert (= (and d!689527 (not c!369964)) b!2329247))

(declare-fun m!2759493 () Bool)

(assert (=> b!2329247 m!2759493))

(declare-fun m!2759495 () Bool)

(assert (=> b!2329247 m!2759495))

(assert (=> b!2329216 d!689527))

(declare-fun d!689531 () Bool)

(assert (=> d!689531 (= (tail!3343 l!3834) (t!207688 l!3834))))

(assert (=> b!2329216 d!689531))

(declare-fun d!689533 () Bool)

(assert (=> d!689533 (= (head!5074 l!3834) (h!33221 l!3834))))

(assert (=> b!2329216 d!689533))

(declare-fun b!2329254 () Bool)

(declare-fun e!1492416 () Bool)

(declare-fun tp!738166 () Bool)

(assert (=> b!2329254 (= e!1492416 (and tp_is_empty!10941 tp!738166))))

(assert (=> b!2329217 (= tp!738163 e!1492416)))

(assert (= (and b!2329217 ((_ is Cons!27820) (t!207688 l!3834))) b!2329254))

(declare-fun condSetEmpty!20929 () Bool)

(assert (=> setNonEmpty!20926 (= condSetEmpty!20929 (= setRest!20926 ((as const (Array B!1841 Bool)) false)))))

(declare-fun setRes!20929 () Bool)

(assert (=> setNonEmpty!20926 (= tp!738162 setRes!20929)))

(declare-fun setIsEmpty!20929 () Bool)

(assert (=> setIsEmpty!20929 setRes!20929))

(declare-fun setNonEmpty!20929 () Bool)

(declare-fun tp!738169 () Bool)

(assert (=> setNonEmpty!20929 (= setRes!20929 (and tp!738169 tp_is_empty!10941))))

(declare-fun setElem!20929 () B!1841)

(declare-fun setRest!20929 () (InoxSet B!1841))

(assert (=> setNonEmpty!20929 (= setRest!20926 ((_ map or) (store ((as const (Array B!1841 Bool)) false) setElem!20929 true) setRest!20929))))

(assert (= (and setNonEmpty!20926 condSetEmpty!20929) setIsEmpty!20929))

(assert (= (and setNonEmpty!20926 (not condSetEmpty!20929)) setNonEmpty!20929))

(check-sat tp_is_empty!10941 (not setNonEmpty!20929) (not b!2329222) (not d!689517) (not b!2329234) (not b!2329254) (not b!2329247) (not b!2329235))
(check-sat)
(get-model)

(declare-fun d!689541 () Bool)

(declare-fun res!994505 () Bool)

(declare-fun e!1492420 () Bool)

(assert (=> d!689541 (=> res!994505 e!1492420)))

(assert (=> d!689541 (= res!994505 ((_ is Nil!27820) (t!207688 l!3834)))))

(assert (=> d!689541 (= (noDuplicate!317 (t!207688 l!3834)) e!1492420)))

(declare-fun b!2329264 () Bool)

(declare-fun e!1492421 () Bool)

(assert (=> b!2329264 (= e!1492420 e!1492421)))

(declare-fun res!994506 () Bool)

(assert (=> b!2329264 (=> (not res!994506) (not e!1492421))))

(assert (=> b!2329264 (= res!994506 (not (contains!4810 (t!207688 (t!207688 l!3834)) (h!33221 (t!207688 l!3834)))))))

(declare-fun b!2329265 () Bool)

(assert (=> b!2329265 (= e!1492421 (noDuplicate!317 (t!207688 (t!207688 l!3834))))))

(assert (= (and d!689541 (not res!994505)) b!2329264))

(assert (= (and b!2329264 res!994506) b!2329265))

(declare-fun m!2759501 () Bool)

(assert (=> b!2329264 m!2759501))

(declare-fun m!2759503 () Bool)

(assert (=> b!2329265 m!2759503))

(assert (=> b!2329235 d!689541))

(declare-fun d!689543 () Bool)

(declare-fun res!994507 () Bool)

(declare-fun e!1492422 () Bool)

(assert (=> d!689543 (=> res!994507 e!1492422)))

(assert (=> d!689543 (= res!994507 ((_ is Nil!27820) lt!862084))))

(assert (=> d!689543 (= (noDuplicate!317 lt!862084) e!1492422)))

(declare-fun b!2329266 () Bool)

(declare-fun e!1492423 () Bool)

(assert (=> b!2329266 (= e!1492422 e!1492423)))

(declare-fun res!994508 () Bool)

(assert (=> b!2329266 (=> (not res!994508) (not e!1492423))))

(assert (=> b!2329266 (= res!994508 (not (contains!4810 (t!207688 lt!862084) (h!33221 lt!862084))))))

(declare-fun b!2329267 () Bool)

(assert (=> b!2329267 (= e!1492423 (noDuplicate!317 (t!207688 lt!862084)))))

(assert (= (and d!689543 (not res!994507)) b!2329266))

(assert (= (and b!2329266 res!994508) b!2329267))

(declare-fun m!2759505 () Bool)

(assert (=> b!2329266 m!2759505))

(declare-fun m!2759507 () Bool)

(assert (=> b!2329267 m!2759507))

(assert (=> d!689517 d!689543))

(declare-fun d!689545 () Bool)

(declare-fun e!1492428 () Bool)

(assert (=> d!689545 e!1492428))

(declare-fun res!994513 () Bool)

(assert (=> d!689545 (=> (not res!994513) (not e!1492428))))

(declare-fun res!994514 () List!27918)

(assert (=> d!689545 (= res!994513 (noDuplicate!317 res!994514))))

(declare-fun e!1492429 () Bool)

(assert (=> d!689545 e!1492429))

(assert (=> d!689545 (= (choose!13625 s!1517) res!994514)))

(declare-fun b!2329272 () Bool)

(declare-fun tp!738178 () Bool)

(assert (=> b!2329272 (= e!1492429 (and tp_is_empty!10941 tp!738178))))

(declare-fun b!2329273 () Bool)

(assert (=> b!2329273 (= e!1492428 (= (content!3764 res!994514) s!1517))))

(assert (= (and d!689545 ((_ is Cons!27820) res!994514)) b!2329272))

(assert (= (and d!689545 res!994513) b!2329273))

(declare-fun m!2759509 () Bool)

(assert (=> d!689545 m!2759509))

(declare-fun m!2759511 () Bool)

(assert (=> b!2329273 m!2759511))

(assert (=> d!689517 d!689545))

(declare-fun d!689547 () Bool)

(declare-fun c!369966 () Bool)

(assert (=> d!689547 (= c!369966 ((_ is Nil!27820) (t!207688 (tail!3343 l!3834))))))

(declare-fun e!1492430 () (InoxSet B!1841))

(assert (=> d!689547 (= (content!3764 (t!207688 (tail!3343 l!3834))) e!1492430)))

(declare-fun b!2329274 () Bool)

(assert (=> b!2329274 (= e!1492430 ((as const (Array B!1841 Bool)) false))))

(declare-fun b!2329275 () Bool)

(assert (=> b!2329275 (= e!1492430 ((_ map or) (store ((as const (Array B!1841 Bool)) false) (h!33221 (t!207688 (tail!3343 l!3834))) true) (content!3764 (t!207688 (t!207688 (tail!3343 l!3834))))))))

(assert (= (and d!689547 c!369966) b!2329274))

(assert (= (and d!689547 (not c!369966)) b!2329275))

(declare-fun m!2759513 () Bool)

(assert (=> b!2329275 m!2759513))

(declare-fun m!2759515 () Bool)

(assert (=> b!2329275 m!2759515))

(assert (=> b!2329247 d!689547))

(declare-fun d!689549 () Bool)

(declare-fun c!369967 () Bool)

(assert (=> d!689549 (= c!369967 ((_ is Nil!27820) lt!862084))))

(declare-fun e!1492431 () (InoxSet B!1841))

(assert (=> d!689549 (= (content!3764 lt!862084) e!1492431)))

(declare-fun b!2329276 () Bool)

(assert (=> b!2329276 (= e!1492431 ((as const (Array B!1841 Bool)) false))))

(declare-fun b!2329277 () Bool)

(assert (=> b!2329277 (= e!1492431 ((_ map or) (store ((as const (Array B!1841 Bool)) false) (h!33221 lt!862084) true) (content!3764 (t!207688 lt!862084))))))

(assert (= (and d!689549 c!369967) b!2329276))

(assert (= (and d!689549 (not c!369967)) b!2329277))

(declare-fun m!2759517 () Bool)

(assert (=> b!2329277 m!2759517))

(declare-fun m!2759519 () Bool)

(assert (=> b!2329277 m!2759519))

(assert (=> b!2329222 d!689549))

(declare-fun d!689551 () Bool)

(declare-fun lt!862090 () Bool)

(assert (=> d!689551 (= lt!862090 (select (content!3764 (t!207688 l!3834)) (h!33221 l!3834)))))

(declare-fun e!1492436 () Bool)

(assert (=> d!689551 (= lt!862090 e!1492436)))

(declare-fun res!994519 () Bool)

(assert (=> d!689551 (=> (not res!994519) (not e!1492436))))

(assert (=> d!689551 (= res!994519 ((_ is Cons!27820) (t!207688 l!3834)))))

(assert (=> d!689551 (= (contains!4810 (t!207688 l!3834) (h!33221 l!3834)) lt!862090)))

(declare-fun b!2329282 () Bool)

(declare-fun e!1492437 () Bool)

(assert (=> b!2329282 (= e!1492436 e!1492437)))

(declare-fun res!994520 () Bool)

(assert (=> b!2329282 (=> res!994520 e!1492437)))

(assert (=> b!2329282 (= res!994520 (= (h!33221 (t!207688 l!3834)) (h!33221 l!3834)))))

(declare-fun b!2329283 () Bool)

(assert (=> b!2329283 (= e!1492437 (contains!4810 (t!207688 (t!207688 l!3834)) (h!33221 l!3834)))))

(assert (= (and d!689551 res!994519) b!2329282))

(assert (= (and b!2329282 (not res!994520)) b!2329283))

(declare-fun m!2759521 () Bool)

(assert (=> d!689551 m!2759521))

(declare-fun m!2759523 () Bool)

(assert (=> d!689551 m!2759523))

(declare-fun m!2759525 () Bool)

(assert (=> b!2329283 m!2759525))

(assert (=> b!2329234 d!689551))

(declare-fun condSetEmpty!20933 () Bool)

(assert (=> setNonEmpty!20929 (= condSetEmpty!20933 (= setRest!20929 ((as const (Array B!1841 Bool)) false)))))

(declare-fun setRes!20933 () Bool)

(assert (=> setNonEmpty!20929 (= tp!738169 setRes!20933)))

(declare-fun setIsEmpty!20933 () Bool)

(assert (=> setIsEmpty!20933 setRes!20933))

(declare-fun setNonEmpty!20933 () Bool)

(declare-fun tp!738179 () Bool)

(assert (=> setNonEmpty!20933 (= setRes!20933 (and tp!738179 tp_is_empty!10941))))

(declare-fun setElem!20933 () B!1841)

(declare-fun setRest!20933 () (InoxSet B!1841))

(assert (=> setNonEmpty!20933 (= setRest!20929 ((_ map or) (store ((as const (Array B!1841 Bool)) false) setElem!20933 true) setRest!20933))))

(assert (= (and setNonEmpty!20929 condSetEmpty!20933) setIsEmpty!20933))

(assert (= (and setNonEmpty!20929 (not condSetEmpty!20933)) setNonEmpty!20933))

(declare-fun b!2329284 () Bool)

(declare-fun e!1492438 () Bool)

(declare-fun tp!738180 () Bool)

(assert (=> b!2329284 (= e!1492438 (and tp_is_empty!10941 tp!738180))))

(assert (=> b!2329254 (= tp!738166 e!1492438)))

(assert (= (and b!2329254 ((_ is Cons!27820) (t!207688 (t!207688 l!3834)))) b!2329284))

(check-sat tp_is_empty!10941 (not b!2329283) (not b!2329273) (not setNonEmpty!20933) (not b!2329272) (not b!2329277) (not b!2329267) (not b!2329266) (not b!2329265) (not d!689551) (not b!2329284) (not b!2329264) (not d!689545) (not b!2329275))
(check-sat)
