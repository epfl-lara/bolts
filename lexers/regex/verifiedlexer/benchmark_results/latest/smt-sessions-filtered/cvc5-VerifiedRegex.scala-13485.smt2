; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727978 () Bool)

(assert start!727978)

(declare-fun b!7520559 () Bool)

(declare-fun res!3014594 () Bool)

(declare-fun e!4483187 () Bool)

(assert (=> b!7520559 (=> (not res!3014594) (not e!4483187))))

(declare-datatypes ((C!39854 0))(
  ( (C!39855 (val!30367 Int)) )
))
(declare-datatypes ((Regex!19764 0))(
  ( (ElementMatch!19764 (c!1389522 C!39854)) (Concat!28609 (regOne!40040 Regex!19764) (regTwo!40040 Regex!19764)) (EmptyExpr!19764) (Star!19764 (reg!20093 Regex!19764)) (EmptyLang!19764) (Union!19764 (regOne!40041 Regex!19764) (regTwo!40041 Regex!19764)) )
))
(declare-datatypes ((List!72675 0))(
  ( (Nil!72551) (Cons!72551 (h!78999 Regex!19764) (t!387376 List!72675)) )
))
(declare-datatypes ((Context!17032 0))(
  ( (Context!17033 (exprs!9016 List!72675)) )
))
(declare-fun context!41 () Context!17032)

(assert (=> b!7520559 (= res!3014594 (is-Cons!72551 (exprs!9016 context!41)))))

(declare-fun res!3014593 () Bool)

(assert (=> start!727978 (=> (not res!3014593) (not e!4483187))))

(declare-fun e!4483186 () Bool)

(assert (=> start!727978 (= res!3014593 e!4483186)))

(declare-fun res!3014592 () Bool)

(assert (=> start!727978 (=> res!3014592 e!4483186)))

(assert (=> start!727978 (= res!3014592 (not (is-Cons!72551 (exprs!9016 context!41))))))

(assert (=> start!727978 e!4483187))

(declare-fun e!4483188 () Bool)

(declare-fun inv!92704 (Context!17032) Bool)

(assert (=> start!727978 (and (inv!92704 context!41) e!4483188)))

(declare-fun b!7520561 () Bool)

(declare-fun tp!2184349 () Bool)

(assert (=> b!7520561 (= e!4483188 tp!2184349)))

(declare-fun b!7520558 () Bool)

(declare-fun nullable!8600 (Regex!19764) Bool)

(assert (=> b!7520558 (= e!4483186 (not (nullable!8600 (h!78999 (exprs!9016 context!41)))))))

(declare-fun b!7520560 () Bool)

(declare-fun validRegex!10197 (Regex!19764) Bool)

(assert (=> b!7520560 (= e!4483187 (not (validRegex!10197 (h!78999 (exprs!9016 context!41)))))))

(assert (= (and start!727978 (not res!3014592)) b!7520558))

(assert (= (and start!727978 res!3014593) b!7520559))

(assert (= (and b!7520559 res!3014594) b!7520560))

(assert (= start!727978 b!7520561))

(declare-fun m!8100082 () Bool)

(assert (=> start!727978 m!8100082))

(declare-fun m!8100084 () Bool)

(assert (=> b!7520558 m!8100084))

(declare-fun m!8100086 () Bool)

(assert (=> b!7520560 m!8100086))

(push 1)

(assert (not b!7520560))

(assert (not start!727978))

(assert (not b!7520558))

(assert (not b!7520561))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7520592 () Bool)

(declare-fun e!4483212 () Bool)

(declare-fun call!689602 () Bool)

(assert (=> b!7520592 (= e!4483212 call!689602)))

(declare-fun bm!689596 () Bool)

(declare-fun call!689603 () Bool)

(declare-fun c!1389528 () Bool)

(assert (=> bm!689596 (= call!689603 (validRegex!10197 (ite c!1389528 (regOne!40041 (h!78999 (exprs!9016 context!41))) (regOne!40040 (h!78999 (exprs!9016 context!41))))))))

(declare-fun d!2308910 () Bool)

(declare-fun res!3014618 () Bool)

(declare-fun e!4483218 () Bool)

(assert (=> d!2308910 (=> res!3014618 e!4483218)))

(assert (=> d!2308910 (= res!3014618 (is-ElementMatch!19764 (h!78999 (exprs!9016 context!41))))))

(assert (=> d!2308910 (= (validRegex!10197 (h!78999 (exprs!9016 context!41))) e!4483218)))

(declare-fun bm!689597 () Bool)

(declare-fun call!689601 () Bool)

(assert (=> bm!689597 (= call!689602 call!689601)))

(declare-fun bm!689598 () Bool)

(declare-fun c!1389529 () Bool)

(assert (=> bm!689598 (= call!689601 (validRegex!10197 (ite c!1389529 (reg!20093 (h!78999 (exprs!9016 context!41))) (ite c!1389528 (regTwo!40041 (h!78999 (exprs!9016 context!41))) (regTwo!40040 (h!78999 (exprs!9016 context!41)))))))))

(declare-fun b!7520593 () Bool)

(declare-fun e!4483216 () Bool)

(assert (=> b!7520593 (= e!4483216 call!689602)))

(declare-fun b!7520594 () Bool)

(declare-fun e!4483214 () Bool)

(assert (=> b!7520594 (= e!4483214 e!4483212)))

(declare-fun res!3014616 () Bool)

(assert (=> b!7520594 (=> (not res!3014616) (not e!4483212))))

(assert (=> b!7520594 (= res!3014616 call!689603)))

(declare-fun b!7520595 () Bool)

(declare-fun e!4483217 () Bool)

(assert (=> b!7520595 (= e!4483217 call!689601)))

(declare-fun b!7520596 () Bool)

(declare-fun e!4483215 () Bool)

(assert (=> b!7520596 (= e!4483218 e!4483215)))

(assert (=> b!7520596 (= c!1389529 (is-Star!19764 (h!78999 (exprs!9016 context!41))))))

(declare-fun b!7520597 () Bool)

(declare-fun res!3014617 () Bool)

(assert (=> b!7520597 (=> res!3014617 e!4483214)))

(assert (=> b!7520597 (= res!3014617 (not (is-Concat!28609 (h!78999 (exprs!9016 context!41)))))))

(declare-fun e!4483213 () Bool)

(assert (=> b!7520597 (= e!4483213 e!4483214)))

(declare-fun b!7520598 () Bool)

(declare-fun res!3014615 () Bool)

(assert (=> b!7520598 (=> (not res!3014615) (not e!4483216))))

(assert (=> b!7520598 (= res!3014615 call!689603)))

(assert (=> b!7520598 (= e!4483213 e!4483216)))

(declare-fun b!7520599 () Bool)

(assert (=> b!7520599 (= e!4483215 e!4483217)))

(declare-fun res!3014614 () Bool)

(assert (=> b!7520599 (= res!3014614 (not (nullable!8600 (reg!20093 (h!78999 (exprs!9016 context!41))))))))

(assert (=> b!7520599 (=> (not res!3014614) (not e!4483217))))

(declare-fun b!7520600 () Bool)

(assert (=> b!7520600 (= e!4483215 e!4483213)))

(assert (=> b!7520600 (= c!1389528 (is-Union!19764 (h!78999 (exprs!9016 context!41))))))

(assert (= (and d!2308910 (not res!3014618)) b!7520596))

(assert (= (and b!7520596 c!1389529) b!7520599))

(assert (= (and b!7520596 (not c!1389529)) b!7520600))

(assert (= (and b!7520599 res!3014614) b!7520595))

(assert (= (and b!7520600 c!1389528) b!7520598))

(assert (= (and b!7520600 (not c!1389528)) b!7520597))

(assert (= (and b!7520598 res!3014615) b!7520593))

(assert (= (and b!7520597 (not res!3014617)) b!7520594))

(assert (= (and b!7520594 res!3014616) b!7520592))

(assert (= (or b!7520598 b!7520594) bm!689596))

(assert (= (or b!7520593 b!7520592) bm!689597))

(assert (= (or b!7520595 bm!689597) bm!689598))

(declare-fun m!8100096 () Bool)

(assert (=> bm!689596 m!8100096))

(declare-fun m!8100098 () Bool)

(assert (=> bm!689598 m!8100098))

(declare-fun m!8100100 () Bool)

(assert (=> b!7520599 m!8100100))

(assert (=> b!7520560 d!2308910))

(declare-fun d!2308916 () Bool)

(declare-fun lambda!466400 () Int)

(declare-fun forall!18405 (List!72675 Int) Bool)

(assert (=> d!2308916 (= (inv!92704 context!41) (forall!18405 (exprs!9016 context!41) lambda!466400))))

(declare-fun bs!1939619 () Bool)

(assert (= bs!1939619 d!2308916))

(declare-fun m!8100108 () Bool)

(assert (=> bs!1939619 m!8100108))

(assert (=> start!727978 d!2308916))

(declare-fun d!2308920 () Bool)

(declare-fun nullableFct!3437 (Regex!19764) Bool)

(assert (=> d!2308920 (= (nullable!8600 (h!78999 (exprs!9016 context!41))) (nullableFct!3437 (h!78999 (exprs!9016 context!41))))))

(declare-fun bs!1939620 () Bool)

(assert (= bs!1939620 d!2308920))

(declare-fun m!8100110 () Bool)

(assert (=> bs!1939620 m!8100110))

(assert (=> b!7520558 d!2308920))

(declare-fun b!7520632 () Bool)

(declare-fun e!4483242 () Bool)

(declare-fun tp!2184357 () Bool)

(declare-fun tp!2184358 () Bool)

(assert (=> b!7520632 (= e!4483242 (and tp!2184357 tp!2184358))))

(assert (=> b!7520561 (= tp!2184349 e!4483242)))

(assert (= (and b!7520561 (is-Cons!72551 (exprs!9016 context!41))) b!7520632))

(push 1)

(assert (not b!7520632))

(assert (not d!2308916))

(assert (not d!2308920))

(assert (not b!7520599))

(assert (not bm!689598))

(assert (not bm!689596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2308922 () Bool)

(assert (=> d!2308922 (= (nullable!8600 (reg!20093 (h!78999 (exprs!9016 context!41)))) (nullableFct!3437 (reg!20093 (h!78999 (exprs!9016 context!41)))))))

(declare-fun bs!1939621 () Bool)

(assert (= bs!1939621 d!2308922))

(declare-fun m!8100112 () Bool)

(assert (=> bs!1939621 m!8100112))

(assert (=> b!7520599 d!2308922))

(declare-fun d!2308924 () Bool)

(declare-fun res!3014646 () Bool)

(declare-fun e!4483255 () Bool)

(assert (=> d!2308924 (=> res!3014646 e!4483255)))

(assert (=> d!2308924 (= res!3014646 (is-EmptyExpr!19764 (h!78999 (exprs!9016 context!41))))))

(assert (=> d!2308924 (= (nullableFct!3437 (h!78999 (exprs!9016 context!41))) e!4483255)))

(declare-fun bm!689612 () Bool)

(declare-fun call!689617 () Bool)

(declare-fun c!1389538 () Bool)

(assert (=> bm!689612 (= call!689617 (nullable!8600 (ite c!1389538 (regOne!40041 (h!78999 (exprs!9016 context!41))) (regTwo!40040 (h!78999 (exprs!9016 context!41))))))))

(declare-fun b!7520647 () Bool)

(declare-fun e!4483259 () Bool)

(declare-fun e!4483257 () Bool)

(assert (=> b!7520647 (= e!4483259 e!4483257)))

(declare-fun res!3014644 () Bool)

(assert (=> b!7520647 (=> res!3014644 e!4483257)))

(assert (=> b!7520647 (= res!3014644 (is-Star!19764 (h!78999 (exprs!9016 context!41))))))

(declare-fun b!7520648 () Bool)

(assert (=> b!7520648 (= e!4483255 e!4483259)))

(declare-fun res!3014645 () Bool)

(assert (=> b!7520648 (=> (not res!3014645) (not e!4483259))))

(assert (=> b!7520648 (= res!3014645 (and (not (is-EmptyLang!19764 (h!78999 (exprs!9016 context!41)))) (not (is-ElementMatch!19764 (h!78999 (exprs!9016 context!41))))))))

(declare-fun b!7520649 () Bool)

(declare-fun e!4483258 () Bool)

(declare-fun e!4483260 () Bool)

(assert (=> b!7520649 (= e!4483258 e!4483260)))

(declare-fun res!3014648 () Bool)

(declare-fun call!689618 () Bool)

(assert (=> b!7520649 (= res!3014648 call!689618)))

(assert (=> b!7520649 (=> (not res!3014648) (not e!4483260))))

(declare-fun b!7520650 () Bool)

(declare-fun e!4483256 () Bool)

(assert (=> b!7520650 (= e!4483258 e!4483256)))

(declare-fun res!3014647 () Bool)

(assert (=> b!7520650 (= res!3014647 call!689617)))

(assert (=> b!7520650 (=> res!3014647 e!4483256)))

(declare-fun b!7520651 () Bool)

(assert (=> b!7520651 (= e!4483256 call!689618)))

(declare-fun bm!689613 () Bool)

(assert (=> bm!689613 (= call!689618 (nullable!8600 (ite c!1389538 (regTwo!40041 (h!78999 (exprs!9016 context!41))) (regOne!40040 (h!78999 (exprs!9016 context!41))))))))

(declare-fun b!7520652 () Bool)

(assert (=> b!7520652 (= e!4483260 call!689617)))

(declare-fun b!7520653 () Bool)

(assert (=> b!7520653 (= e!4483257 e!4483258)))

(assert (=> b!7520653 (= c!1389538 (is-Union!19764 (h!78999 (exprs!9016 context!41))))))

(assert (= (and d!2308924 (not res!3014646)) b!7520648))

(assert (= (and b!7520648 res!3014645) b!7520647))

(assert (= (and b!7520647 (not res!3014644)) b!7520653))

(assert (= (and b!7520653 c!1389538) b!7520650))

(assert (= (and b!7520653 (not c!1389538)) b!7520649))

(assert (= (and b!7520650 (not res!3014647)) b!7520651))

(assert (= (and b!7520649 res!3014648) b!7520652))

(assert (= (or b!7520651 b!7520649) bm!689613))

(assert (= (or b!7520650 b!7520652) bm!689612))

(declare-fun m!8100114 () Bool)

(assert (=> bm!689612 m!8100114))

(declare-fun m!8100116 () Bool)

(assert (=> bm!689613 m!8100116))

(assert (=> d!2308920 d!2308924))

(declare-fun b!7520654 () Bool)

(declare-fun e!4483261 () Bool)

(declare-fun call!689620 () Bool)

(assert (=> b!7520654 (= e!4483261 call!689620)))

(declare-fun bm!689614 () Bool)

(declare-fun call!689621 () Bool)

(declare-fun c!1389539 () Bool)

(assert (=> bm!689614 (= call!689621 (validRegex!10197 (ite c!1389539 (regOne!40041 (ite c!1389528 (regOne!40041 (h!78999 (exprs!9016 context!41))) (regOne!40040 (h!78999 (exprs!9016 context!41))))) (regOne!40040 (ite c!1389528 (regOne!40041 (h!78999 (exprs!9016 context!41))) (regOne!40040 (h!78999 (exprs!9016 context!41))))))))))

(declare-fun d!2308926 () Bool)

(declare-fun res!3014653 () Bool)

(declare-fun e!4483267 () Bool)

(assert (=> d!2308926 (=> res!3014653 e!4483267)))

(assert (=> d!2308926 (= res!3014653 (is-ElementMatch!19764 (ite c!1389528 (regOne!40041 (h!78999 (exprs!9016 context!41))) (regOne!40040 (h!78999 (exprs!9016 context!41))))))))

(assert (=> d!2308926 (= (validRegex!10197 (ite c!1389528 (regOne!40041 (h!78999 (exprs!9016 context!41))) (regOne!40040 (h!78999 (exprs!9016 context!41))))) e!4483267)))

(declare-fun bm!689615 () Bool)

(declare-fun call!689619 () Bool)

(assert (=> bm!689615 (= call!689620 call!689619)))

(declare-fun c!1389540 () Bool)

(declare-fun bm!689616 () Bool)

(assert (=> bm!689616 (= call!689619 (validRegex!10197 (ite c!1389540 (reg!20093 (ite c!1389528 (regOne!40041 (h!78999 (exprs!9016 context!41))) (regOne!40040 (h!78999 (exprs!9016 context!41))))) (ite c!1389539 (regTwo!40041 (ite c!1389528 (regOne!40041 (h!78999 (exprs!9016 context!41))) (regOne!40040 (h!78999 (exprs!9016 context!41))))) (regTwo!40040 (ite c!1389528 (regOne!40041 (h!78999 (exprs!9016 context!41))) (regOne!40040 (h!78999 (exprs!9016 context!41)))))))))))

(declare-fun b!7520655 () Bool)

(declare-fun e!4483265 () Bool)

(assert (=> b!7520655 (= e!4483265 call!689620)))

(declare-fun b!7520656 () Bool)

(declare-fun e!4483263 () Bool)

(assert (=> b!7520656 (= e!4483263 e!4483261)))

(declare-fun res!3014651 () Bool)

(assert (=> b!7520656 (=> (not res!3014651) (not e!4483261))))

(assert (=> b!7520656 (= res!3014651 call!689621)))

(declare-fun b!7520657 () Bool)

(declare-fun e!4483266 () Bool)

(assert (=> b!7520657 (= e!4483266 call!689619)))

(declare-fun b!7520658 () Bool)

(declare-fun e!4483264 () Bool)

(assert (=> b!7520658 (= e!4483267 e!4483264)))

(assert (=> b!7520658 (= c!1389540 (is-Star!19764 (ite c!1389528 (regOne!40041 (h!78999 (exprs!9016 context!41))) (regOne!40040 (h!78999 (exprs!9016 context!41))))))))

(declare-fun b!7520659 () Bool)

(declare-fun res!3014652 () Bool)

(assert (=> b!7520659 (=> res!3014652 e!4483263)))

(assert (=> b!7520659 (= res!3014652 (not (is-Concat!28609 (ite c!1389528 (regOne!40041 (h!78999 (exprs!9016 context!41))) (regOne!40040 (h!78999 (exprs!9016 context!41)))))))))

(declare-fun e!4483262 () Bool)

(assert (=> b!7520659 (= e!4483262 e!4483263)))

(declare-fun b!7520660 () Bool)

(declare-fun res!3014650 () Bool)

(assert (=> b!7520660 (=> (not res!3014650) (not e!4483265))))

(assert (=> b!7520660 (= res!3014650 call!689621)))

(assert (=> b!7520660 (= e!4483262 e!4483265)))

(declare-fun b!7520661 () Bool)

(assert (=> b!7520661 (= e!4483264 e!4483266)))

(declare-fun res!3014649 () Bool)

(assert (=> b!7520661 (= res!3014649 (not (nullable!8600 (reg!20093 (ite c!1389528 (regOne!40041 (h!78999 (exprs!9016 context!41))) (regOne!40040 (h!78999 (exprs!9016 context!41))))))))))

(assert (=> b!7520661 (=> (not res!3014649) (not e!4483266))))

(declare-fun b!7520662 () Bool)

(assert (=> b!7520662 (= e!4483264 e!4483262)))

(assert (=> b!7520662 (= c!1389539 (is-Union!19764 (ite c!1389528 (regOne!40041 (h!78999 (exprs!9016 context!41))) (regOne!40040 (h!78999 (exprs!9016 context!41))))))))

(assert (= (and d!2308926 (not res!3014653)) b!7520658))

(assert (= (and b!7520658 c!1389540) b!7520661))

(assert (= (and b!7520658 (not c!1389540)) b!7520662))

(assert (= (and b!7520661 res!3014649) b!7520657))

(assert (= (and b!7520662 c!1389539) b!7520660))

(assert (= (and b!7520662 (not c!1389539)) b!7520659))

(assert (= (and b!7520660 res!3014650) b!7520655))

(assert (= (and b!7520659 (not res!3014652)) b!7520656))

(assert (= (and b!7520656 res!3014651) b!7520654))

(assert (= (or b!7520660 b!7520656) bm!689614))

(assert (= (or b!7520655 b!7520654) bm!689615))

(assert (= (or b!7520657 bm!689615) bm!689616))

(declare-fun m!8100118 () Bool)

(assert (=> bm!689614 m!8100118))

(declare-fun m!8100120 () Bool)

(assert (=> bm!689616 m!8100120))

(declare-fun m!8100122 () Bool)

(assert (=> b!7520661 m!8100122))

(assert (=> bm!689596 d!2308926))

(declare-fun b!7520663 () Bool)

(declare-fun e!4483268 () Bool)

(declare-fun call!689623 () Bool)

(assert (=> b!7520663 (= e!4483268 call!689623)))

(declare-fun c!1389541 () Bool)

(declare-fun call!689624 () Bool)

(declare-fun bm!689617 () Bool)

(assert (=> bm!689617 (= call!689624 (validRegex!10197 (ite c!1389541 (regOne!40041 (ite c!1389529 (reg!20093 (h!78999 (exprs!9016 context!41))) (ite c!1389528 (regTwo!40041 (h!78999 (exprs!9016 context!41))) (regTwo!40040 (h!78999 (exprs!9016 context!41)))))) (regOne!40040 (ite c!1389529 (reg!20093 (h!78999 (exprs!9016 context!41))) (ite c!1389528 (regTwo!40041 (h!78999 (exprs!9016 context!41))) (regTwo!40040 (h!78999 (exprs!9016 context!41)))))))))))

(declare-fun d!2308928 () Bool)

(declare-fun res!3014658 () Bool)

(declare-fun e!4483274 () Bool)

(assert (=> d!2308928 (=> res!3014658 e!4483274)))

(assert (=> d!2308928 (= res!3014658 (is-ElementMatch!19764 (ite c!1389529 (reg!20093 (h!78999 (exprs!9016 context!41))) (ite c!1389528 (regTwo!40041 (h!78999 (exprs!9016 context!41))) (regTwo!40040 (h!78999 (exprs!9016 context!41)))))))))

(assert (=> d!2308928 (= (validRegex!10197 (ite c!1389529 (reg!20093 (h!78999 (exprs!9016 context!41))) (ite c!1389528 (regTwo!40041 (h!78999 (exprs!9016 context!41))) (regTwo!40040 (h!78999 (exprs!9016 context!41)))))) e!4483274)))

(declare-fun bm!689618 () Bool)

(declare-fun call!689622 () Bool)

(assert (=> bm!689618 (= call!689623 call!689622)))

(declare-fun c!1389542 () Bool)

(declare-fun bm!689619 () Bool)

(assert (=> bm!689619 (= call!689622 (validRegex!10197 (ite c!1389542 (reg!20093 (ite c!1389529 (reg!20093 (h!78999 (exprs!9016 context!41))) (ite c!1389528 (regTwo!40041 (h!78999 (exprs!9016 context!41))) (regTwo!40040 (h!78999 (exprs!9016 context!41)))))) (ite c!1389541 (regTwo!40041 (ite c!1389529 (reg!20093 (h!78999 (exprs!9016 context!41))) (ite c!1389528 (regTwo!40041 (h!78999 (exprs!9016 context!41))) (regTwo!40040 (h!78999 (exprs!9016 context!41)))))) (regTwo!40040 (ite c!1389529 (reg!20093 (h!78999 (exprs!9016 context!41))) (ite c!1389528 (regTwo!40041 (h!78999 (exprs!9016 context!41))) (regTwo!40040 (h!78999 (exprs!9016 context!41))))))))))))

(declare-fun b!7520664 () Bool)

(declare-fun e!4483272 () Bool)

(assert (=> b!7520664 (= e!4483272 call!689623)))

(declare-fun b!7520665 () Bool)

(declare-fun e!4483270 () Bool)

(assert (=> b!7520665 (= e!4483270 e!4483268)))

(declare-fun res!3014656 () Bool)

(assert (=> b!7520665 (=> (not res!3014656) (not e!4483268))))

(assert (=> b!7520665 (= res!3014656 call!689624)))

(declare-fun b!7520666 () Bool)

(declare-fun e!4483273 () Bool)

(assert (=> b!7520666 (= e!4483273 call!689622)))

(declare-fun b!7520667 () Bool)

(declare-fun e!4483271 () Bool)

(assert (=> b!7520667 (= e!4483274 e!4483271)))

(assert (=> b!7520667 (= c!1389542 (is-Star!19764 (ite c!1389529 (reg!20093 (h!78999 (exprs!9016 context!41))) (ite c!1389528 (regTwo!40041 (h!78999 (exprs!9016 context!41))) (regTwo!40040 (h!78999 (exprs!9016 context!41)))))))))

(declare-fun b!7520668 () Bool)

(declare-fun res!3014657 () Bool)

(assert (=> b!7520668 (=> res!3014657 e!4483270)))

(assert (=> b!7520668 (= res!3014657 (not (is-Concat!28609 (ite c!1389529 (reg!20093 (h!78999 (exprs!9016 context!41))) (ite c!1389528 (regTwo!40041 (h!78999 (exprs!9016 context!41))) (regTwo!40040 (h!78999 (exprs!9016 context!41))))))))))

(declare-fun e!4483269 () Bool)

(assert (=> b!7520668 (= e!4483269 e!4483270)))

(declare-fun b!7520669 () Bool)

(declare-fun res!3014655 () Bool)

(assert (=> b!7520669 (=> (not res!3014655) (not e!4483272))))

(assert (=> b!7520669 (= res!3014655 call!689624)))

(assert (=> b!7520669 (= e!4483269 e!4483272)))

(declare-fun b!7520670 () Bool)

(assert (=> b!7520670 (= e!4483271 e!4483273)))

(declare-fun res!3014654 () Bool)

(assert (=> b!7520670 (= res!3014654 (not (nullable!8600 (reg!20093 (ite c!1389529 (reg!20093 (h!78999 (exprs!9016 context!41))) (ite c!1389528 (regTwo!40041 (h!78999 (exprs!9016 context!41))) (regTwo!40040 (h!78999 (exprs!9016 context!41)))))))))))

(assert (=> b!7520670 (=> (not res!3014654) (not e!4483273))))

(declare-fun b!7520671 () Bool)

(assert (=> b!7520671 (= e!4483271 e!4483269)))

(assert (=> b!7520671 (= c!1389541 (is-Union!19764 (ite c!1389529 (reg!20093 (h!78999 (exprs!9016 context!41))) (ite c!1389528 (regTwo!40041 (h!78999 (exprs!9016 context!41))) (regTwo!40040 (h!78999 (exprs!9016 context!41)))))))))

(assert (= (and d!2308928 (not res!3014658)) b!7520667))

(assert (= (and b!7520667 c!1389542) b!7520670))

(assert (= (and b!7520667 (not c!1389542)) b!7520671))

(assert (= (and b!7520670 res!3014654) b!7520666))

(assert (= (and b!7520671 c!1389541) b!7520669))

(assert (= (and b!7520671 (not c!1389541)) b!7520668))

(assert (= (and b!7520669 res!3014655) b!7520664))

(assert (= (and b!7520668 (not res!3014657)) b!7520665))

(assert (= (and b!7520665 res!3014656) b!7520663))

(assert (= (or b!7520669 b!7520665) bm!689617))

(assert (= (or b!7520664 b!7520663) bm!689618))

(assert (= (or b!7520666 bm!689618) bm!689619))

(declare-fun m!8100124 () Bool)

(assert (=> bm!689617 m!8100124))

(declare-fun m!8100126 () Bool)

(assert (=> bm!689619 m!8100126))

(declare-fun m!8100128 () Bool)

(assert (=> b!7520670 m!8100128))

(assert (=> bm!689598 d!2308928))

(declare-fun d!2308930 () Bool)

(declare-fun res!3014663 () Bool)

(declare-fun e!4483279 () Bool)

(assert (=> d!2308930 (=> res!3014663 e!4483279)))

(assert (=> d!2308930 (= res!3014663 (is-Nil!72551 (exprs!9016 context!41)))))

(assert (=> d!2308930 (= (forall!18405 (exprs!9016 context!41) lambda!466400) e!4483279)))

(declare-fun b!7520676 () Bool)

(declare-fun e!4483280 () Bool)

(assert (=> b!7520676 (= e!4483279 e!4483280)))

(declare-fun res!3014664 () Bool)

(assert (=> b!7520676 (=> (not res!3014664) (not e!4483280))))

(declare-fun dynLambda!29887 (Int Regex!19764) Bool)

(assert (=> b!7520676 (= res!3014664 (dynLambda!29887 lambda!466400 (h!78999 (exprs!9016 context!41))))))

(declare-fun b!7520677 () Bool)

(assert (=> b!7520677 (= e!4483280 (forall!18405 (t!387376 (exprs!9016 context!41)) lambda!466400))))

(assert (= (and d!2308930 (not res!3014663)) b!7520676))

(assert (= (and b!7520676 res!3014664) b!7520677))

(declare-fun b_lambda!288823 () Bool)

(assert (=> (not b_lambda!288823) (not b!7520676)))

(declare-fun m!8100130 () Bool)

(assert (=> b!7520676 m!8100130))

(declare-fun m!8100132 () Bool)

(assert (=> b!7520677 m!8100132))

(assert (=> d!2308916 d!2308930))

(declare-fun b!7520691 () Bool)

(declare-fun e!4483283 () Bool)

(declare-fun tp!2184370 () Bool)

(declare-fun tp!2184371 () Bool)

(assert (=> b!7520691 (= e!4483283 (and tp!2184370 tp!2184371))))

(declare-fun b!7520688 () Bool)

(declare-fun tp_is_empty!49893 () Bool)

(assert (=> b!7520688 (= e!4483283 tp_is_empty!49893)))

(declare-fun b!7520690 () Bool)

(declare-fun tp!2184369 () Bool)

(assert (=> b!7520690 (= e!4483283 tp!2184369)))

(declare-fun b!7520689 () Bool)

(declare-fun tp!2184372 () Bool)

(declare-fun tp!2184373 () Bool)

(assert (=> b!7520689 (= e!4483283 (and tp!2184372 tp!2184373))))

(assert (=> b!7520632 (= tp!2184357 e!4483283)))

(assert (= (and b!7520632 (is-ElementMatch!19764 (h!78999 (exprs!9016 context!41)))) b!7520688))

(assert (= (and b!7520632 (is-Concat!28609 (h!78999 (exprs!9016 context!41)))) b!7520689))

(assert (= (and b!7520632 (is-Star!19764 (h!78999 (exprs!9016 context!41)))) b!7520690))

(assert (= (and b!7520632 (is-Union!19764 (h!78999 (exprs!9016 context!41)))) b!7520691))

(declare-fun b!7520692 () Bool)

(declare-fun e!4483284 () Bool)

(declare-fun tp!2184374 () Bool)

(declare-fun tp!2184375 () Bool)

(assert (=> b!7520692 (= e!4483284 (and tp!2184374 tp!2184375))))

(assert (=> b!7520632 (= tp!2184358 e!4483284)))

(assert (= (and b!7520632 (is-Cons!72551 (t!387376 (exprs!9016 context!41)))) b!7520692))

(declare-fun b_lambda!288825 () Bool)

(assert (= b_lambda!288823 (or d!2308916 b_lambda!288825)))

(declare-fun bs!1939622 () Bool)

(declare-fun d!2308932 () Bool)

(assert (= bs!1939622 (and d!2308932 d!2308916)))

(assert (=> bs!1939622 (= (dynLambda!29887 lambda!466400 (h!78999 (exprs!9016 context!41))) (validRegex!10197 (h!78999 (exprs!9016 context!41))))))

(assert (=> bs!1939622 m!8100086))

(assert (=> b!7520676 d!2308932))

(push 1)

(assert (not bm!689619))

(assert (not b!7520689))

(assert (not bm!689613))

(assert (not b!7520692))

(assert (not b!7520691))

(assert (not b!7520670))

(assert (not bm!689617))

(assert (not d!2308922))

(assert (not b!7520677))

(assert (not bs!1939622))

(assert (not bm!689612))

(assert (not b_lambda!288825))

(assert (not bm!689616))

(assert (not b!7520661))

(assert (not bm!689614))

(assert tp_is_empty!49893)

(assert (not b!7520690))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

