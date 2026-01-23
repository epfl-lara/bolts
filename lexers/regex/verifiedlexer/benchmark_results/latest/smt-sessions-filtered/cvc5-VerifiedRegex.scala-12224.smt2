; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!688814 () Bool)

(assert start!688814)

(declare-fun b!7081129 () Bool)

(assert (=> b!7081129 true))

(declare-fun b!7081133 () Bool)

(assert (=> b!7081133 true))

(declare-fun b!7081135 () Bool)

(assert (=> b!7081135 true))

(declare-fun res!2892602 () Bool)

(declare-fun e!4257128 () Bool)

(assert (=> start!688814 (=> (not res!2892602) (not e!4257128))))

(declare-datatypes ((C!35658 0))(
  ( (C!35659 (val!27531 Int)) )
))
(declare-datatypes ((Regex!17694 0))(
  ( (ElementMatch!17694 (c!1321643 C!35658)) (Concat!26539 (regOne!35900 Regex!17694) (regTwo!35900 Regex!17694)) (EmptyExpr!17694) (Star!17694 (reg!18023 Regex!17694)) (EmptyLang!17694) (Union!17694 (regOne!35901 Regex!17694) (regTwo!35901 Regex!17694)) )
))
(declare-datatypes ((List!68608 0))(
  ( (Nil!68484) (Cons!68484 (h!74932 Regex!17694) (t!382393 List!68608)) )
))
(declare-datatypes ((Context!13380 0))(
  ( (Context!13381 (exprs!7190 List!68608)) )
))
(declare-fun lt!2552596 () (Set Context!13380))

(declare-datatypes ((List!68609 0))(
  ( (Nil!68485) (Cons!68485 (h!74933 C!35658) (t!382394 List!68609)) )
))
(declare-fun s!7408 () List!68609)

(declare-fun matchZipper!3234 ((Set Context!13380) List!68609) Bool)

(assert (=> start!688814 (= res!2892602 (matchZipper!3234 lt!2552596 s!7408))))

(declare-fun z1!570 () (Set Context!13380))

(declare-fun ct2!306 () Context!13380)

(declare-fun appendTo!815 ((Set Context!13380) Context!13380) (Set Context!13380))

(assert (=> start!688814 (= lt!2552596 (appendTo!815 z1!570 ct2!306))))

(assert (=> start!688814 e!4257128))

(declare-fun condSetEmpty!50512 () Bool)

(assert (=> start!688814 (= condSetEmpty!50512 (= z1!570 (as set.empty (Set Context!13380))))))

(declare-fun setRes!50512 () Bool)

(assert (=> start!688814 setRes!50512))

(declare-fun e!4257129 () Bool)

(declare-fun inv!87095 (Context!13380) Bool)

(assert (=> start!688814 (and (inv!87095 ct2!306) e!4257129)))

(declare-fun e!4257123 () Bool)

(assert (=> start!688814 e!4257123))

(declare-fun b!7081123 () Bool)

(declare-fun tp!1943545 () Bool)

(assert (=> b!7081123 (= e!4257129 tp!1943545)))

(declare-fun b!7081124 () Bool)

(declare-fun e!4257131 () Bool)

(declare-fun e!4257130 () Bool)

(assert (=> b!7081124 (= e!4257131 e!4257130)))

(declare-fun res!2892598 () Bool)

(assert (=> b!7081124 (=> res!2892598 e!4257130)))

(declare-fun lt!2552604 () Bool)

(assert (=> b!7081124 (= res!2892598 (not lt!2552604))))

(assert (=> b!7081124 (= lt!2552604 true)))

(declare-fun lt!2552594 () (Set Context!13380))

(assert (=> b!7081124 (= lt!2552604 (matchZipper!3234 lt!2552594 Nil!68485))))

(declare-datatypes ((Unit!162099 0))(
  ( (Unit!162100) )
))
(declare-fun lt!2552591 () Unit!162099)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!25 ((Set Context!13380) List!68609) Unit!162099)

(assert (=> b!7081124 (= lt!2552591 (lemmaZipperOfEmptyContextMatchesEmptyString!25 lt!2552594 Nil!68485))))

(declare-fun lt!2552595 () Context!13380)

(assert (=> b!7081124 (= lt!2552594 (set.insert lt!2552595 (as set.empty (Set Context!13380))))))

(declare-fun b!7081125 () Bool)

(declare-fun tp_is_empty!44613 () Bool)

(declare-fun tp!1943547 () Bool)

(assert (=> b!7081125 (= e!4257123 (and tp_is_empty!44613 tp!1943547))))

(declare-fun b!7081126 () Bool)

(declare-fun e!4257125 () Bool)

(assert (=> b!7081126 (= e!4257125 e!4257131)))

(declare-fun res!2892593 () Bool)

(assert (=> b!7081126 (=> res!2892593 e!4257131)))

(declare-fun lt!2552598 () Context!13380)

(assert (=> b!7081126 (= res!2892593 (not (= lt!2552598 ct2!306)))))

(declare-fun lambda!427922 () Int)

(declare-fun lt!2552597 () Unit!162099)

(declare-fun lemmaConcatPreservesForall!1005 (List!68608 List!68608 Int) Unit!162099)

(assert (=> b!7081126 (= lt!2552597 (lemmaConcatPreservesForall!1005 (exprs!7190 lt!2552595) (exprs!7190 ct2!306) lambda!427922))))

(declare-fun b!7081127 () Bool)

(declare-fun res!2892601 () Bool)

(assert (=> b!7081127 (=> (not res!2892601) (not e!4257128))))

(assert (=> b!7081127 (= res!2892601 (is-Cons!68485 s!7408))))

(declare-fun b!7081128 () Bool)

(declare-fun res!2892599 () Bool)

(assert (=> b!7081128 (=> res!2892599 e!4257131)))

(assert (=> b!7081128 (= res!2892599 (not (matchZipper!3234 (set.insert ct2!306 (as set.empty (Set Context!13380))) s!7408)))))

(declare-fun e!4257127 () Bool)

(assert (=> b!7081129 (= e!4257128 (not e!4257127))))

(declare-fun res!2892597 () Bool)

(assert (=> b!7081129 (=> res!2892597 e!4257127)))

(declare-fun lt!2552600 () (Set Context!13380))

(assert (=> b!7081129 (= res!2892597 (not (matchZipper!3234 lt!2552600 s!7408)))))

(declare-fun lt!2552592 () Context!13380)

(assert (=> b!7081129 (= lt!2552600 (set.insert lt!2552592 (as set.empty (Set Context!13380))))))

(declare-fun lambda!427920 () Int)

(declare-fun getWitness!1823 ((Set Context!13380) Int) Context!13380)

(assert (=> b!7081129 (= lt!2552592 (getWitness!1823 lt!2552596 lambda!427920))))

(declare-datatypes ((List!68610 0))(
  ( (Nil!68486) (Cons!68486 (h!74934 Context!13380) (t!382395 List!68610)) )
))
(declare-fun lt!2552601 () List!68610)

(declare-fun exists!3778 (List!68610 Int) Bool)

(assert (=> b!7081129 (exists!3778 lt!2552601 lambda!427920)))

(declare-fun lt!2552605 () Unit!162099)

(declare-fun lemmaZipperMatchesExistsMatchingContext!615 (List!68610 List!68609) Unit!162099)

(assert (=> b!7081129 (= lt!2552605 (lemmaZipperMatchesExistsMatchingContext!615 lt!2552601 s!7408))))

(declare-fun toList!11035 ((Set Context!13380)) List!68610)

(assert (=> b!7081129 (= lt!2552601 (toList!11035 lt!2552596))))

(declare-fun b!7081130 () Bool)

(declare-fun res!2892595 () Bool)

(assert (=> b!7081130 (=> res!2892595 e!4257125)))

(assert (=> b!7081130 (= res!2892595 (is-Cons!68484 (exprs!7190 lt!2552595)))))

(declare-fun b!7081131 () Bool)

(declare-fun e!4257124 () Bool)

(declare-fun tp!1943548 () Bool)

(assert (=> b!7081131 (= e!4257124 tp!1943548)))

(declare-fun b!7081132 () Bool)

(declare-fun ++!15857 (List!68609 List!68609) List!68609)

(assert (=> b!7081132 (= e!4257130 (= (++!15857 Nil!68485 s!7408) s!7408))))

(declare-fun setIsEmpty!50512 () Bool)

(assert (=> setIsEmpty!50512 setRes!50512))

(declare-fun e!4257126 () Bool)

(assert (=> b!7081133 (= e!4257127 e!4257126)))

(declare-fun res!2892600 () Bool)

(assert (=> b!7081133 (=> res!2892600 e!4257126)))

(assert (=> b!7081133 (= res!2892600 (or (not (= lt!2552598 lt!2552592)) (not (set.member lt!2552595 z1!570))))))

(declare-fun ++!15858 (List!68608 List!68608) List!68608)

(assert (=> b!7081133 (= lt!2552598 (Context!13381 (++!15858 (exprs!7190 lt!2552595) (exprs!7190 ct2!306))))))

(declare-fun lt!2552603 () Unit!162099)

(assert (=> b!7081133 (= lt!2552603 (lemmaConcatPreservesForall!1005 (exprs!7190 lt!2552595) (exprs!7190 ct2!306) lambda!427922))))

(declare-fun lambda!427921 () Int)

(declare-fun mapPost2!523 ((Set Context!13380) Int Context!13380) Context!13380)

(assert (=> b!7081133 (= lt!2552595 (mapPost2!523 z1!570 lambda!427921 lt!2552592))))

(declare-fun b!7081134 () Bool)

(declare-fun res!2892596 () Bool)

(assert (=> b!7081134 (=> res!2892596 e!4257127)))

(assert (=> b!7081134 (= res!2892596 (not (set.member lt!2552592 lt!2552596)))))

(declare-fun setElem!50512 () Context!13380)

(declare-fun setNonEmpty!50512 () Bool)

(declare-fun tp!1943546 () Bool)

(assert (=> setNonEmpty!50512 (= setRes!50512 (and tp!1943546 (inv!87095 setElem!50512) e!4257124))))

(declare-fun setRest!50512 () (Set Context!13380))

(assert (=> setNonEmpty!50512 (= z1!570 (set.union (set.insert setElem!50512 (as set.empty (Set Context!13380))) setRest!50512))))

(declare-fun e!4257132 () Bool)

(assert (=> b!7081135 (= e!4257132 e!4257125)))

(declare-fun res!2892594 () Bool)

(assert (=> b!7081135 (=> res!2892594 e!4257125)))

(declare-fun lt!2552593 () (Set Context!13380))

(declare-fun lt!2552606 () (Set Context!13380))

(declare-fun derivationStepZipper!3144 ((Set Context!13380) C!35658) (Set Context!13380))

(assert (=> b!7081135 (= res!2892594 (not (= (derivationStepZipper!3144 lt!2552593 (h!74933 s!7408)) lt!2552606)))))

(declare-fun lambda!427923 () Int)

(declare-fun flatMap!2620 ((Set Context!13380) Int) (Set Context!13380))

(declare-fun derivationStepZipperUp!2278 (Context!13380 C!35658) (Set Context!13380))

(assert (=> b!7081135 (= (flatMap!2620 lt!2552593 lambda!427923) (derivationStepZipperUp!2278 lt!2552598 (h!74933 s!7408)))))

(declare-fun lt!2552607 () Unit!162099)

(declare-fun lemmaFlatMapOnSingletonSet!2129 ((Set Context!13380) Context!13380 Int) Unit!162099)

(assert (=> b!7081135 (= lt!2552607 (lemmaFlatMapOnSingletonSet!2129 lt!2552593 lt!2552598 lambda!427923))))

(assert (=> b!7081135 (= lt!2552606 (derivationStepZipperUp!2278 lt!2552598 (h!74933 s!7408)))))

(declare-fun lt!2552599 () Unit!162099)

(assert (=> b!7081135 (= lt!2552599 (lemmaConcatPreservesForall!1005 (exprs!7190 lt!2552595) (exprs!7190 ct2!306) lambda!427922))))

(declare-fun b!7081136 () Bool)

(assert (=> b!7081136 (= e!4257126 e!4257132)))

(declare-fun res!2892603 () Bool)

(assert (=> b!7081136 (=> res!2892603 e!4257132)))

(assert (=> b!7081136 (= res!2892603 (not (= lt!2552593 lt!2552600)))))

(assert (=> b!7081136 (= lt!2552593 (set.insert lt!2552598 (as set.empty (Set Context!13380))))))

(declare-fun lt!2552602 () Unit!162099)

(assert (=> b!7081136 (= lt!2552602 (lemmaConcatPreservesForall!1005 (exprs!7190 lt!2552595) (exprs!7190 ct2!306) lambda!427922))))

(assert (= (and start!688814 res!2892602) b!7081127))

(assert (= (and b!7081127 res!2892601) b!7081129))

(assert (= (and b!7081129 (not res!2892597)) b!7081134))

(assert (= (and b!7081134 (not res!2892596)) b!7081133))

(assert (= (and b!7081133 (not res!2892600)) b!7081136))

(assert (= (and b!7081136 (not res!2892603)) b!7081135))

(assert (= (and b!7081135 (not res!2892594)) b!7081130))

(assert (= (and b!7081130 (not res!2892595)) b!7081126))

(assert (= (and b!7081126 (not res!2892593)) b!7081128))

(assert (= (and b!7081128 (not res!2892599)) b!7081124))

(assert (= (and b!7081124 (not res!2892598)) b!7081132))

(assert (= (and start!688814 condSetEmpty!50512) setIsEmpty!50512))

(assert (= (and start!688814 (not condSetEmpty!50512)) setNonEmpty!50512))

(assert (= setNonEmpty!50512 b!7081131))

(assert (= start!688814 b!7081123))

(assert (= (and start!688814 (is-Cons!68485 s!7408)) b!7081125))

(declare-fun m!7812080 () Bool)

(assert (=> b!7081128 m!7812080))

(assert (=> b!7081128 m!7812080))

(declare-fun m!7812082 () Bool)

(assert (=> b!7081128 m!7812082))

(declare-fun m!7812084 () Bool)

(assert (=> b!7081126 m!7812084))

(declare-fun m!7812086 () Bool)

(assert (=> setNonEmpty!50512 m!7812086))

(declare-fun m!7812088 () Bool)

(assert (=> b!7081124 m!7812088))

(declare-fun m!7812090 () Bool)

(assert (=> b!7081124 m!7812090))

(declare-fun m!7812092 () Bool)

(assert (=> b!7081124 m!7812092))

(declare-fun m!7812094 () Bool)

(assert (=> b!7081136 m!7812094))

(assert (=> b!7081136 m!7812084))

(declare-fun m!7812096 () Bool)

(assert (=> b!7081133 m!7812096))

(declare-fun m!7812098 () Bool)

(assert (=> b!7081133 m!7812098))

(assert (=> b!7081133 m!7812084))

(declare-fun m!7812100 () Bool)

(assert (=> b!7081133 m!7812100))

(declare-fun m!7812102 () Bool)

(assert (=> start!688814 m!7812102))

(declare-fun m!7812104 () Bool)

(assert (=> start!688814 m!7812104))

(declare-fun m!7812106 () Bool)

(assert (=> start!688814 m!7812106))

(declare-fun m!7812108 () Bool)

(assert (=> b!7081134 m!7812108))

(declare-fun m!7812110 () Bool)

(assert (=> b!7081132 m!7812110))

(declare-fun m!7812112 () Bool)

(assert (=> b!7081129 m!7812112))

(declare-fun m!7812114 () Bool)

(assert (=> b!7081129 m!7812114))

(declare-fun m!7812116 () Bool)

(assert (=> b!7081129 m!7812116))

(declare-fun m!7812118 () Bool)

(assert (=> b!7081129 m!7812118))

(declare-fun m!7812120 () Bool)

(assert (=> b!7081129 m!7812120))

(declare-fun m!7812122 () Bool)

(assert (=> b!7081129 m!7812122))

(assert (=> b!7081135 m!7812084))

(declare-fun m!7812124 () Bool)

(assert (=> b!7081135 m!7812124))

(declare-fun m!7812126 () Bool)

(assert (=> b!7081135 m!7812126))

(declare-fun m!7812128 () Bool)

(assert (=> b!7081135 m!7812128))

(declare-fun m!7812130 () Bool)

(assert (=> b!7081135 m!7812130))

(push 1)

(assert (not b!7081131))

(assert (not b!7081135))

(assert (not b!7081123))

(assert (not b!7081124))

(assert (not b!7081126))

(assert (not b!7081125))

(assert tp_is_empty!44613)

(assert (not b!7081132))

(assert (not b!7081136))

(assert (not start!688814))

(assert (not b!7081133))

(assert (not b!7081128))

(assert (not setNonEmpty!50512))

(assert (not b!7081129))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1882147 () Bool)

(declare-fun d!2214799 () Bool)

(assert (= bs!1882147 (and d!2214799 b!7081129)))

(declare-fun lambda!427948 () Int)

(assert (=> bs!1882147 (= lambda!427948 lambda!427920)))

(assert (=> d!2214799 true))

(assert (=> d!2214799 (exists!3778 lt!2552601 lambda!427948)))

(declare-fun lt!2552663 () Unit!162099)

(declare-fun choose!54480 (List!68610 List!68609) Unit!162099)

(assert (=> d!2214799 (= lt!2552663 (choose!54480 lt!2552601 s!7408))))

(declare-fun content!13878 (List!68610) (Set Context!13380))

(assert (=> d!2214799 (matchZipper!3234 (content!13878 lt!2552601) s!7408)))

(assert (=> d!2214799 (= (lemmaZipperMatchesExistsMatchingContext!615 lt!2552601 s!7408) lt!2552663)))

(declare-fun bs!1882148 () Bool)

(assert (= bs!1882148 d!2214799))

(declare-fun m!7812184 () Bool)

(assert (=> bs!1882148 m!7812184))

(declare-fun m!7812186 () Bool)

(assert (=> bs!1882148 m!7812186))

(declare-fun m!7812188 () Bool)

(assert (=> bs!1882148 m!7812188))

(assert (=> bs!1882148 m!7812188))

(declare-fun m!7812190 () Bool)

(assert (=> bs!1882148 m!7812190))

(assert (=> b!7081129 d!2214799))

(declare-fun d!2214801 () Bool)

(declare-fun e!4257165 () Bool)

(assert (=> d!2214801 e!4257165))

(declare-fun res!2892641 () Bool)

(assert (=> d!2214801 (=> (not res!2892641) (not e!4257165))))

(declare-fun lt!2552666 () List!68610)

(declare-fun noDuplicate!2756 (List!68610) Bool)

(assert (=> d!2214801 (= res!2892641 (noDuplicate!2756 lt!2552666))))

(declare-fun choose!54481 ((Set Context!13380)) List!68610)

(assert (=> d!2214801 (= lt!2552666 (choose!54481 lt!2552596))))

(assert (=> d!2214801 (= (toList!11035 lt!2552596) lt!2552666)))

(declare-fun b!7081193 () Bool)

(assert (=> b!7081193 (= e!4257165 (= (content!13878 lt!2552666) lt!2552596))))

(assert (= (and d!2214801 res!2892641) b!7081193))

(declare-fun m!7812192 () Bool)

(assert (=> d!2214801 m!7812192))

(declare-fun m!7812194 () Bool)

(assert (=> d!2214801 m!7812194))

(declare-fun m!7812196 () Bool)

(assert (=> b!7081193 m!7812196))

(assert (=> b!7081129 d!2214801))

(declare-fun d!2214803 () Bool)

(declare-fun e!4257168 () Bool)

(assert (=> d!2214803 e!4257168))

(declare-fun res!2892644 () Bool)

(assert (=> d!2214803 (=> (not res!2892644) (not e!4257168))))

(declare-fun lt!2552669 () Context!13380)

(declare-fun dynLambda!27910 (Int Context!13380) Bool)

(assert (=> d!2214803 (= res!2892644 (dynLambda!27910 lambda!427920 lt!2552669))))

(declare-fun getWitness!1825 (List!68610 Int) Context!13380)

(assert (=> d!2214803 (= lt!2552669 (getWitness!1825 (toList!11035 lt!2552596) lambda!427920))))

(declare-fun exists!3780 ((Set Context!13380) Int) Bool)

(assert (=> d!2214803 (exists!3780 lt!2552596 lambda!427920)))

(assert (=> d!2214803 (= (getWitness!1823 lt!2552596 lambda!427920) lt!2552669)))

(declare-fun b!7081196 () Bool)

(assert (=> b!7081196 (= e!4257168 (set.member lt!2552669 lt!2552596))))

(assert (= (and d!2214803 res!2892644) b!7081196))

(declare-fun b_lambda!270561 () Bool)

(assert (=> (not b_lambda!270561) (not d!2214803)))

(declare-fun m!7812198 () Bool)

(assert (=> d!2214803 m!7812198))

(assert (=> d!2214803 m!7812118))

(assert (=> d!2214803 m!7812118))

(declare-fun m!7812200 () Bool)

(assert (=> d!2214803 m!7812200))

(declare-fun m!7812202 () Bool)

(assert (=> d!2214803 m!7812202))

(declare-fun m!7812204 () Bool)

(assert (=> b!7081196 m!7812204))

(assert (=> b!7081129 d!2214803))

(declare-fun d!2214805 () Bool)

(declare-fun c!1321657 () Bool)

(declare-fun isEmpty!39975 (List!68609) Bool)

(assert (=> d!2214805 (= c!1321657 (isEmpty!39975 s!7408))))

(declare-fun e!4257171 () Bool)

(assert (=> d!2214805 (= (matchZipper!3234 lt!2552600 s!7408) e!4257171)))

(declare-fun b!7081201 () Bool)

(declare-fun nullableZipper!2728 ((Set Context!13380)) Bool)

(assert (=> b!7081201 (= e!4257171 (nullableZipper!2728 lt!2552600))))

(declare-fun b!7081202 () Bool)

(declare-fun head!14437 (List!68609) C!35658)

(declare-fun tail!13900 (List!68609) List!68609)

(assert (=> b!7081202 (= e!4257171 (matchZipper!3234 (derivationStepZipper!3144 lt!2552600 (head!14437 s!7408)) (tail!13900 s!7408)))))

(assert (= (and d!2214805 c!1321657) b!7081201))

(assert (= (and d!2214805 (not c!1321657)) b!7081202))

(declare-fun m!7812206 () Bool)

(assert (=> d!2214805 m!7812206))

(declare-fun m!7812208 () Bool)

(assert (=> b!7081201 m!7812208))

(declare-fun m!7812210 () Bool)

(assert (=> b!7081202 m!7812210))

(assert (=> b!7081202 m!7812210))

(declare-fun m!7812212 () Bool)

(assert (=> b!7081202 m!7812212))

(declare-fun m!7812214 () Bool)

(assert (=> b!7081202 m!7812214))

(assert (=> b!7081202 m!7812212))

(assert (=> b!7081202 m!7812214))

(declare-fun m!7812216 () Bool)

(assert (=> b!7081202 m!7812216))

(assert (=> b!7081129 d!2214805))

(declare-fun bs!1882149 () Bool)

(declare-fun d!2214809 () Bool)

(assert (= bs!1882149 (and d!2214809 b!7081129)))

(declare-fun lambda!427951 () Int)

(assert (=> bs!1882149 (not (= lambda!427951 lambda!427920))))

(declare-fun bs!1882150 () Bool)

(assert (= bs!1882150 (and d!2214809 d!2214799)))

(assert (=> bs!1882150 (not (= lambda!427951 lambda!427948))))

(assert (=> d!2214809 true))

(declare-fun order!28471 () Int)

(declare-fun dynLambda!27911 (Int Int) Int)

(assert (=> d!2214809 (< (dynLambda!27911 order!28471 lambda!427920) (dynLambda!27911 order!28471 lambda!427951))))

(declare-fun forall!16653 (List!68610 Int) Bool)

(assert (=> d!2214809 (= (exists!3778 lt!2552601 lambda!427920) (not (forall!16653 lt!2552601 lambda!427951)))))

(declare-fun bs!1882151 () Bool)

(assert (= bs!1882151 d!2214809))

(declare-fun m!7812218 () Bool)

(assert (=> bs!1882151 m!7812218))

(assert (=> b!7081129 d!2214809))

(declare-fun d!2214811 () Bool)

(declare-fun e!4257176 () Bool)

(assert (=> d!2214811 e!4257176))

(declare-fun res!2892649 () Bool)

(assert (=> d!2214811 (=> (not res!2892649) (not e!4257176))))

(declare-fun lt!2552675 () List!68608)

(declare-fun content!13879 (List!68608) (Set Regex!17694))

(assert (=> d!2214811 (= res!2892649 (= (content!13879 lt!2552675) (set.union (content!13879 (exprs!7190 lt!2552595)) (content!13879 (exprs!7190 ct2!306)))))))

(declare-fun e!4257177 () List!68608)

(assert (=> d!2214811 (= lt!2552675 e!4257177)))

(declare-fun c!1321660 () Bool)

(assert (=> d!2214811 (= c!1321660 (is-Nil!68484 (exprs!7190 lt!2552595)))))

(assert (=> d!2214811 (= (++!15858 (exprs!7190 lt!2552595) (exprs!7190 ct2!306)) lt!2552675)))

(declare-fun b!7081214 () Bool)

(assert (=> b!7081214 (= e!4257177 (Cons!68484 (h!74932 (exprs!7190 lt!2552595)) (++!15858 (t!382393 (exprs!7190 lt!2552595)) (exprs!7190 ct2!306))))))

(declare-fun b!7081216 () Bool)

(assert (=> b!7081216 (= e!4257176 (or (not (= (exprs!7190 ct2!306) Nil!68484)) (= lt!2552675 (exprs!7190 lt!2552595))))))

(declare-fun b!7081213 () Bool)

(assert (=> b!7081213 (= e!4257177 (exprs!7190 ct2!306))))

(declare-fun b!7081215 () Bool)

(declare-fun res!2892650 () Bool)

(assert (=> b!7081215 (=> (not res!2892650) (not e!4257176))))

(declare-fun size!41261 (List!68608) Int)

(assert (=> b!7081215 (= res!2892650 (= (size!41261 lt!2552675) (+ (size!41261 (exprs!7190 lt!2552595)) (size!41261 (exprs!7190 ct2!306)))))))

(assert (= (and d!2214811 c!1321660) b!7081213))

(assert (= (and d!2214811 (not c!1321660)) b!7081214))

(assert (= (and d!2214811 res!2892649) b!7081215))

(assert (= (and b!7081215 res!2892650) b!7081216))

(declare-fun m!7812222 () Bool)

(assert (=> d!2214811 m!7812222))

(declare-fun m!7812226 () Bool)

(assert (=> d!2214811 m!7812226))

(declare-fun m!7812228 () Bool)

(assert (=> d!2214811 m!7812228))

(declare-fun m!7812230 () Bool)

(assert (=> b!7081214 m!7812230))

(declare-fun m!7812234 () Bool)

(assert (=> b!7081215 m!7812234))

(declare-fun m!7812236 () Bool)

(assert (=> b!7081215 m!7812236))

(declare-fun m!7812238 () Bool)

(assert (=> b!7081215 m!7812238))

(assert (=> b!7081133 d!2214811))

(declare-fun d!2214815 () Bool)

(declare-fun forall!16654 (List!68608 Int) Bool)

(assert (=> d!2214815 (forall!16654 (++!15858 (exprs!7190 lt!2552595) (exprs!7190 ct2!306)) lambda!427922)))

(declare-fun lt!2552678 () Unit!162099)

(declare-fun choose!54482 (List!68608 List!68608 Int) Unit!162099)

(assert (=> d!2214815 (= lt!2552678 (choose!54482 (exprs!7190 lt!2552595) (exprs!7190 ct2!306) lambda!427922))))

(assert (=> d!2214815 (forall!16654 (exprs!7190 lt!2552595) lambda!427922)))

(assert (=> d!2214815 (= (lemmaConcatPreservesForall!1005 (exprs!7190 lt!2552595) (exprs!7190 ct2!306) lambda!427922) lt!2552678)))

(declare-fun bs!1882153 () Bool)

(assert (= bs!1882153 d!2214815))

(assert (=> bs!1882153 m!7812098))

(assert (=> bs!1882153 m!7812098))

(declare-fun m!7812240 () Bool)

(assert (=> bs!1882153 m!7812240))

(declare-fun m!7812242 () Bool)

(assert (=> bs!1882153 m!7812242))

(declare-fun m!7812244 () Bool)

(assert (=> bs!1882153 m!7812244))

(assert (=> b!7081133 d!2214815))

(declare-fun d!2214817 () Bool)

(declare-fun e!4257180 () Bool)

(assert (=> d!2214817 e!4257180))

(declare-fun res!2892653 () Bool)

(assert (=> d!2214817 (=> (not res!2892653) (not e!4257180))))

(declare-fun lt!2552681 () Context!13380)

(declare-fun dynLambda!27912 (Int Context!13380) Context!13380)

(assert (=> d!2214817 (= res!2892653 (= lt!2552592 (dynLambda!27912 lambda!427921 lt!2552681)))))

(declare-fun choose!54483 ((Set Context!13380) Int Context!13380) Context!13380)

(assert (=> d!2214817 (= lt!2552681 (choose!54483 z1!570 lambda!427921 lt!2552592))))

(declare-fun map!16044 ((Set Context!13380) Int) (Set Context!13380))

(assert (=> d!2214817 (set.member lt!2552592 (map!16044 z1!570 lambda!427921))))

(assert (=> d!2214817 (= (mapPost2!523 z1!570 lambda!427921 lt!2552592) lt!2552681)))

(declare-fun b!7081220 () Bool)

(assert (=> b!7081220 (= e!4257180 (set.member lt!2552681 z1!570))))

(assert (= (and d!2214817 res!2892653) b!7081220))

(declare-fun b_lambda!270563 () Bool)

(assert (=> (not b_lambda!270563) (not d!2214817)))

(declare-fun m!7812248 () Bool)

(assert (=> d!2214817 m!7812248))

(declare-fun m!7812250 () Bool)

(assert (=> d!2214817 m!7812250))

(declare-fun m!7812252 () Bool)

(assert (=> d!2214817 m!7812252))

(declare-fun m!7812254 () Bool)

(assert (=> d!2214817 m!7812254))

(declare-fun m!7812256 () Bool)

(assert (=> b!7081220 m!7812256))

(assert (=> b!7081133 d!2214817))

(declare-fun d!2214821 () Bool)

(declare-fun c!1321661 () Bool)

(assert (=> d!2214821 (= c!1321661 (isEmpty!39975 Nil!68485))))

(declare-fun e!4257181 () Bool)

(assert (=> d!2214821 (= (matchZipper!3234 lt!2552594 Nil!68485) e!4257181)))

(declare-fun b!7081221 () Bool)

(assert (=> b!7081221 (= e!4257181 (nullableZipper!2728 lt!2552594))))

(declare-fun b!7081222 () Bool)

(assert (=> b!7081222 (= e!4257181 (matchZipper!3234 (derivationStepZipper!3144 lt!2552594 (head!14437 Nil!68485)) (tail!13900 Nil!68485)))))

(assert (= (and d!2214821 c!1321661) b!7081221))

(assert (= (and d!2214821 (not c!1321661)) b!7081222))

(declare-fun m!7812258 () Bool)

(assert (=> d!2214821 m!7812258))

(declare-fun m!7812260 () Bool)

(assert (=> b!7081221 m!7812260))

(declare-fun m!7812262 () Bool)

(assert (=> b!7081222 m!7812262))

(assert (=> b!7081222 m!7812262))

(declare-fun m!7812264 () Bool)

(assert (=> b!7081222 m!7812264))

(declare-fun m!7812266 () Bool)

(assert (=> b!7081222 m!7812266))

(assert (=> b!7081222 m!7812264))

(assert (=> b!7081222 m!7812266))

(declare-fun m!7812268 () Bool)

(assert (=> b!7081222 m!7812268))

(assert (=> b!7081124 d!2214821))

(declare-fun d!2214823 () Bool)

(assert (=> d!2214823 (= (matchZipper!3234 lt!2552594 Nil!68485) (isEmpty!39975 Nil!68485))))

(declare-fun lt!2552684 () Unit!162099)

(declare-fun choose!54484 ((Set Context!13380) List!68609) Unit!162099)

(assert (=> d!2214823 (= lt!2552684 (choose!54484 lt!2552594 Nil!68485))))

(assert (=> d!2214823 (= lt!2552594 (set.singleton (Context!13381 Nil!68484)))))

(assert (=> d!2214823 (= (lemmaZipperOfEmptyContextMatchesEmptyString!25 lt!2552594 Nil!68485) lt!2552684)))

(declare-fun bs!1882157 () Bool)

(assert (= bs!1882157 d!2214823))

(assert (=> bs!1882157 m!7812088))

(assert (=> bs!1882157 m!7812258))

(declare-fun m!7812272 () Bool)

(assert (=> bs!1882157 m!7812272))

(assert (=> b!7081124 d!2214823))

(assert (=> b!7081136 d!2214815))

(declare-fun d!2214827 () Bool)

(declare-fun c!1321664 () Bool)

(assert (=> d!2214827 (= c!1321664 (isEmpty!39975 s!7408))))

(declare-fun e!4257182 () Bool)

(assert (=> d!2214827 (= (matchZipper!3234 (set.insert ct2!306 (as set.empty (Set Context!13380))) s!7408) e!4257182)))

(declare-fun b!7081223 () Bool)

(assert (=> b!7081223 (= e!4257182 (nullableZipper!2728 (set.insert ct2!306 (as set.empty (Set Context!13380)))))))

(declare-fun b!7081224 () Bool)

(assert (=> b!7081224 (= e!4257182 (matchZipper!3234 (derivationStepZipper!3144 (set.insert ct2!306 (as set.empty (Set Context!13380))) (head!14437 s!7408)) (tail!13900 s!7408)))))

(assert (= (and d!2214827 c!1321664) b!7081223))

(assert (= (and d!2214827 (not c!1321664)) b!7081224))

(assert (=> d!2214827 m!7812206))

(assert (=> b!7081223 m!7812080))

(declare-fun m!7812274 () Bool)

(assert (=> b!7081223 m!7812274))

(assert (=> b!7081224 m!7812210))

(assert (=> b!7081224 m!7812080))

(assert (=> b!7081224 m!7812210))

(declare-fun m!7812276 () Bool)

(assert (=> b!7081224 m!7812276))

(assert (=> b!7081224 m!7812214))

(assert (=> b!7081224 m!7812276))

(assert (=> b!7081224 m!7812214))

(declare-fun m!7812278 () Bool)

(assert (=> b!7081224 m!7812278))

(assert (=> b!7081128 d!2214827))

(declare-fun bs!1882160 () Bool)

(declare-fun d!2214829 () Bool)

(assert (= bs!1882160 (and d!2214829 b!7081135)))

(declare-fun lambda!427960 () Int)

(assert (=> bs!1882160 (= lambda!427960 lambda!427923)))

(assert (=> d!2214829 true))

(assert (=> d!2214829 (= (derivationStepZipper!3144 lt!2552593 (h!74933 s!7408)) (flatMap!2620 lt!2552593 lambda!427960))))

(declare-fun bs!1882161 () Bool)

(assert (= bs!1882161 d!2214829))

(declare-fun m!7812282 () Bool)

(assert (=> bs!1882161 m!7812282))

(assert (=> b!7081135 d!2214829))

(declare-fun b!7081243 () Bool)

(declare-fun e!4257193 () (Set Context!13380))

(declare-fun call!643598 () (Set Context!13380))

(assert (=> b!7081243 (= e!4257193 call!643598)))

(declare-fun b!7081244 () Bool)

(assert (=> b!7081244 (= e!4257193 (as set.empty (Set Context!13380)))))

(declare-fun b!7081245 () Bool)

(declare-fun e!4257192 () (Set Context!13380))

(assert (=> b!7081245 (= e!4257192 (set.union call!643598 (derivationStepZipperUp!2278 (Context!13381 (t!382393 (exprs!7190 lt!2552598))) (h!74933 s!7408))))))

(declare-fun d!2214833 () Bool)

(declare-fun c!1321673 () Bool)

(declare-fun e!4257191 () Bool)

(assert (=> d!2214833 (= c!1321673 e!4257191)))

(declare-fun res!2892656 () Bool)

(assert (=> d!2214833 (=> (not res!2892656) (not e!4257191))))

(assert (=> d!2214833 (= res!2892656 (is-Cons!68484 (exprs!7190 lt!2552598)))))

(assert (=> d!2214833 (= (derivationStepZipperUp!2278 lt!2552598 (h!74933 s!7408)) e!4257192)))

(declare-fun bm!643593 () Bool)

(declare-fun derivationStepZipperDown!2323 (Regex!17694 Context!13380 C!35658) (Set Context!13380))

(assert (=> bm!643593 (= call!643598 (derivationStepZipperDown!2323 (h!74932 (exprs!7190 lt!2552598)) (Context!13381 (t!382393 (exprs!7190 lt!2552598))) (h!74933 s!7408)))))

(declare-fun b!7081246 () Bool)

(assert (=> b!7081246 (= e!4257192 e!4257193)))

(declare-fun c!1321674 () Bool)

(assert (=> b!7081246 (= c!1321674 (is-Cons!68484 (exprs!7190 lt!2552598)))))

(declare-fun b!7081247 () Bool)

(declare-fun nullable!7372 (Regex!17694) Bool)

(assert (=> b!7081247 (= e!4257191 (nullable!7372 (h!74932 (exprs!7190 lt!2552598))))))

(assert (= (and d!2214833 res!2892656) b!7081247))

(assert (= (and d!2214833 c!1321673) b!7081245))

(assert (= (and d!2214833 (not c!1321673)) b!7081246))

(assert (= (and b!7081246 c!1321674) b!7081243))

(assert (= (and b!7081246 (not c!1321674)) b!7081244))

(assert (= (or b!7081245 b!7081243) bm!643593))

(declare-fun m!7812284 () Bool)

(assert (=> b!7081245 m!7812284))

(declare-fun m!7812286 () Bool)

(assert (=> bm!643593 m!7812286))

(declare-fun m!7812288 () Bool)

(assert (=> b!7081247 m!7812288))

(assert (=> b!7081135 d!2214833))

(assert (=> b!7081135 d!2214815))

(declare-fun d!2214835 () Bool)

(declare-fun choose!54485 ((Set Context!13380) Int) (Set Context!13380))

(assert (=> d!2214835 (= (flatMap!2620 lt!2552593 lambda!427923) (choose!54485 lt!2552593 lambda!427923))))

(declare-fun bs!1882162 () Bool)

(assert (= bs!1882162 d!2214835))

(declare-fun m!7812290 () Bool)

(assert (=> bs!1882162 m!7812290))

(assert (=> b!7081135 d!2214835))

(declare-fun d!2214837 () Bool)

(declare-fun dynLambda!27913 (Int Context!13380) (Set Context!13380))

(assert (=> d!2214837 (= (flatMap!2620 lt!2552593 lambda!427923) (dynLambda!27913 lambda!427923 lt!2552598))))

(declare-fun lt!2552687 () Unit!162099)

(declare-fun choose!54486 ((Set Context!13380) Context!13380 Int) Unit!162099)

(assert (=> d!2214837 (= lt!2552687 (choose!54486 lt!2552593 lt!2552598 lambda!427923))))

(assert (=> d!2214837 (= lt!2552593 (set.insert lt!2552598 (as set.empty (Set Context!13380))))))

(assert (=> d!2214837 (= (lemmaFlatMapOnSingletonSet!2129 lt!2552593 lt!2552598 lambda!427923) lt!2552687)))

(declare-fun b_lambda!270565 () Bool)

(assert (=> (not b_lambda!270565) (not d!2214837)))

(declare-fun bs!1882163 () Bool)

(assert (= bs!1882163 d!2214837))

(assert (=> bs!1882163 m!7812130))

(declare-fun m!7812292 () Bool)

(assert (=> bs!1882163 m!7812292))

(declare-fun m!7812294 () Bool)

(assert (=> bs!1882163 m!7812294))

(assert (=> bs!1882163 m!7812094))

(assert (=> b!7081135 d!2214837))

(assert (=> b!7081126 d!2214815))

(declare-fun d!2214839 () Bool)

(declare-fun c!1321677 () Bool)

(assert (=> d!2214839 (= c!1321677 (isEmpty!39975 s!7408))))

(declare-fun e!4257198 () Bool)

(assert (=> d!2214839 (= (matchZipper!3234 lt!2552596 s!7408) e!4257198)))

(declare-fun b!7081254 () Bool)

(assert (=> b!7081254 (= e!4257198 (nullableZipper!2728 lt!2552596))))

(declare-fun b!7081255 () Bool)

(assert (=> b!7081255 (= e!4257198 (matchZipper!3234 (derivationStepZipper!3144 lt!2552596 (head!14437 s!7408)) (tail!13900 s!7408)))))

(assert (= (and d!2214839 c!1321677) b!7081254))

(assert (= (and d!2214839 (not c!1321677)) b!7081255))

(assert (=> d!2214839 m!7812206))

(declare-fun m!7812296 () Bool)

(assert (=> b!7081254 m!7812296))

(assert (=> b!7081255 m!7812210))

(assert (=> b!7081255 m!7812210))

(declare-fun m!7812298 () Bool)

(assert (=> b!7081255 m!7812298))

(assert (=> b!7081255 m!7812214))

(assert (=> b!7081255 m!7812298))

(assert (=> b!7081255 m!7812214))

(declare-fun m!7812300 () Bool)

(assert (=> b!7081255 m!7812300))

(assert (=> start!688814 d!2214839))

(declare-fun bs!1882164 () Bool)

(declare-fun d!2214841 () Bool)

(assert (= bs!1882164 (and d!2214841 b!7081133)))

(declare-fun lambda!427965 () Int)

(assert (=> bs!1882164 (= lambda!427965 lambda!427921)))

(assert (=> d!2214841 true))

(assert (=> d!2214841 (= (appendTo!815 z1!570 ct2!306) (map!16044 z1!570 lambda!427965))))

(declare-fun bs!1882165 () Bool)

(assert (= bs!1882165 d!2214841))

(declare-fun m!7812308 () Bool)

(assert (=> bs!1882165 m!7812308))

(assert (=> start!688814 d!2214841))

(declare-fun bs!1882166 () Bool)

(declare-fun d!2214845 () Bool)

(assert (= bs!1882166 (and d!2214845 b!7081133)))

(declare-fun lambda!427968 () Int)

(assert (=> bs!1882166 (= lambda!427968 lambda!427922)))

(assert (=> d!2214845 (= (inv!87095 ct2!306) (forall!16654 (exprs!7190 ct2!306) lambda!427968))))

(declare-fun bs!1882167 () Bool)

(assert (= bs!1882167 d!2214845))

(declare-fun m!7812310 () Bool)

(assert (=> bs!1882167 m!7812310))

(assert (=> start!688814 d!2214845))

(declare-fun b!7081270 () Bool)

(declare-fun e!4257207 () List!68609)

(assert (=> b!7081270 (= e!4257207 (Cons!68485 (h!74933 Nil!68485) (++!15857 (t!382394 Nil!68485) s!7408)))))

(declare-fun b!7081269 () Bool)

(assert (=> b!7081269 (= e!4257207 s!7408)))

(declare-fun b!7081272 () Bool)

(declare-fun e!4257206 () Bool)

(declare-fun lt!2552695 () List!68609)

(assert (=> b!7081272 (= e!4257206 (or (not (= s!7408 Nil!68485)) (= lt!2552695 Nil!68485)))))

(declare-fun b!7081271 () Bool)

(declare-fun res!2892664 () Bool)

(assert (=> b!7081271 (=> (not res!2892664) (not e!4257206))))

(declare-fun size!41262 (List!68609) Int)

(assert (=> b!7081271 (= res!2892664 (= (size!41262 lt!2552695) (+ (size!41262 Nil!68485) (size!41262 s!7408))))))

(declare-fun d!2214847 () Bool)

(assert (=> d!2214847 e!4257206))

(declare-fun res!2892665 () Bool)

(assert (=> d!2214847 (=> (not res!2892665) (not e!4257206))))

(declare-fun content!13880 (List!68609) (Set C!35658))

(assert (=> d!2214847 (= res!2892665 (= (content!13880 lt!2552695) (set.union (content!13880 Nil!68485) (content!13880 s!7408))))))

(assert (=> d!2214847 (= lt!2552695 e!4257207)))

(declare-fun c!1321683 () Bool)

(assert (=> d!2214847 (= c!1321683 (is-Nil!68485 Nil!68485))))

(assert (=> d!2214847 (= (++!15857 Nil!68485 s!7408) lt!2552695)))

(assert (= (and d!2214847 c!1321683) b!7081269))

(assert (= (and d!2214847 (not c!1321683)) b!7081270))

(assert (= (and d!2214847 res!2892665) b!7081271))

(assert (= (and b!7081271 res!2892664) b!7081272))

(declare-fun m!7812316 () Bool)

(assert (=> b!7081270 m!7812316))

(declare-fun m!7812318 () Bool)

(assert (=> b!7081271 m!7812318))

(declare-fun m!7812320 () Bool)

(assert (=> b!7081271 m!7812320))

(declare-fun m!7812322 () Bool)

(assert (=> b!7081271 m!7812322))

(declare-fun m!7812324 () Bool)

(assert (=> d!2214847 m!7812324))

(declare-fun m!7812326 () Bool)

(assert (=> d!2214847 m!7812326))

(declare-fun m!7812328 () Bool)

(assert (=> d!2214847 m!7812328))

(assert (=> b!7081132 d!2214847))

(declare-fun bs!1882169 () Bool)

(declare-fun d!2214851 () Bool)

(assert (= bs!1882169 (and d!2214851 b!7081133)))

(declare-fun lambda!427969 () Int)

(assert (=> bs!1882169 (= lambda!427969 lambda!427922)))

(declare-fun bs!1882170 () Bool)

(assert (= bs!1882170 (and d!2214851 d!2214845)))

(assert (=> bs!1882170 (= lambda!427969 lambda!427968)))

(assert (=> d!2214851 (= (inv!87095 setElem!50512) (forall!16654 (exprs!7190 setElem!50512) lambda!427969))))

(declare-fun bs!1882171 () Bool)

(assert (= bs!1882171 d!2214851))

(declare-fun m!7812330 () Bool)

(assert (=> bs!1882171 m!7812330))

(assert (=> setNonEmpty!50512 d!2214851))

(declare-fun b!7081277 () Bool)

(declare-fun e!4257210 () Bool)

(declare-fun tp!1943565 () Bool)

(declare-fun tp!1943566 () Bool)

(assert (=> b!7081277 (= e!4257210 (and tp!1943565 tp!1943566))))

(assert (=> b!7081123 (= tp!1943545 e!4257210)))

(assert (= (and b!7081123 (is-Cons!68484 (exprs!7190 ct2!306))) b!7081277))

(declare-fun b!7081282 () Bool)

(declare-fun e!4257213 () Bool)

(declare-fun tp!1943569 () Bool)

(assert (=> b!7081282 (= e!4257213 (and tp_is_empty!44613 tp!1943569))))

(assert (=> b!7081125 (= tp!1943547 e!4257213)))

(assert (= (and b!7081125 (is-Cons!68485 (t!382394 s!7408))) b!7081282))

(declare-fun b!7081283 () Bool)

(declare-fun e!4257214 () Bool)

(declare-fun tp!1943570 () Bool)

(declare-fun tp!1943571 () Bool)

(assert (=> b!7081283 (= e!4257214 (and tp!1943570 tp!1943571))))

(assert (=> b!7081131 (= tp!1943548 e!4257214)))

(assert (= (and b!7081131 (is-Cons!68484 (exprs!7190 setElem!50512))) b!7081283))

(declare-fun condSetEmpty!50518 () Bool)

(assert (=> setNonEmpty!50512 (= condSetEmpty!50518 (= setRest!50512 (as set.empty (Set Context!13380))))))

(declare-fun setRes!50518 () Bool)

(assert (=> setNonEmpty!50512 (= tp!1943546 setRes!50518)))

(declare-fun setIsEmpty!50518 () Bool)

(assert (=> setIsEmpty!50518 setRes!50518))

(declare-fun e!4257217 () Bool)

(declare-fun setElem!50518 () Context!13380)

(declare-fun setNonEmpty!50518 () Bool)

(declare-fun tp!1943576 () Bool)

(assert (=> setNonEmpty!50518 (= setRes!50518 (and tp!1943576 (inv!87095 setElem!50518) e!4257217))))

(declare-fun setRest!50518 () (Set Context!13380))

(assert (=> setNonEmpty!50518 (= setRest!50512 (set.union (set.insert setElem!50518 (as set.empty (Set Context!13380))) setRest!50518))))

(declare-fun b!7081288 () Bool)

(declare-fun tp!1943577 () Bool)

(assert (=> b!7081288 (= e!4257217 tp!1943577)))

(assert (= (and setNonEmpty!50512 condSetEmpty!50518) setIsEmpty!50518))

(assert (= (and setNonEmpty!50512 (not condSetEmpty!50518)) setNonEmpty!50518))

(assert (= setNonEmpty!50518 b!7081288))

(declare-fun m!7812332 () Bool)

(assert (=> setNonEmpty!50518 m!7812332))

(declare-fun b_lambda!270569 () Bool)

(assert (= b_lambda!270561 (or b!7081129 b_lambda!270569)))

(declare-fun bs!1882172 () Bool)

(declare-fun d!2214853 () Bool)

(assert (= bs!1882172 (and d!2214853 b!7081129)))

(assert (=> bs!1882172 (= (dynLambda!27910 lambda!427920 lt!2552669) (matchZipper!3234 (set.insert lt!2552669 (as set.empty (Set Context!13380))) s!7408))))

(declare-fun m!7812334 () Bool)

(assert (=> bs!1882172 m!7812334))

(assert (=> bs!1882172 m!7812334))

(declare-fun m!7812336 () Bool)

(assert (=> bs!1882172 m!7812336))

(assert (=> d!2214803 d!2214853))

(declare-fun b_lambda!270571 () Bool)

(assert (= b_lambda!270563 (or b!7081133 b_lambda!270571)))

(declare-fun bs!1882173 () Bool)

(declare-fun d!2214855 () Bool)

(assert (= bs!1882173 (and d!2214855 b!7081133)))

(declare-fun lt!2552696 () Unit!162099)

(assert (=> bs!1882173 (= lt!2552696 (lemmaConcatPreservesForall!1005 (exprs!7190 lt!2552681) (exprs!7190 ct2!306) lambda!427922))))

(assert (=> bs!1882173 (= (dynLambda!27912 lambda!427921 lt!2552681) (Context!13381 (++!15858 (exprs!7190 lt!2552681) (exprs!7190 ct2!306))))))

(declare-fun m!7812338 () Bool)

(assert (=> bs!1882173 m!7812338))

(declare-fun m!7812340 () Bool)

(assert (=> bs!1882173 m!7812340))

(assert (=> d!2214817 d!2214855))

(declare-fun b_lambda!270573 () Bool)

(assert (= b_lambda!270565 (or b!7081135 b_lambda!270573)))

(declare-fun bs!1882174 () Bool)

(declare-fun d!2214857 () Bool)

(assert (= bs!1882174 (and d!2214857 b!7081135)))

(assert (=> bs!1882174 (= (dynLambda!27913 lambda!427923 lt!2552598) (derivationStepZipperUp!2278 lt!2552598 (h!74933 s!7408)))))

(assert (=> bs!1882174 m!7812128))

(assert (=> d!2214837 d!2214857))

(push 1)

(assert (not d!2214845))

(assert (not b!7081255))

(assert (not b!7081215))

(assert (not d!2214839))

(assert (not b_lambda!270571))

(assert (not b!7081271))

(assert (not d!2214801))

(assert (not d!2214799))

(assert (not b_lambda!270569))

(assert (not d!2214835))

(assert (not b!7081193))

(assert (not b!7081224))

(assert (not d!2214811))

(assert (not d!2214815))

(assert (not b!7081283))

(assert (not b!7081223))

(assert (not d!2214837))

(assert (not b!7081221))

(assert (not b!7081254))

(assert (not setNonEmpty!50518))

(assert (not bs!1882172))

(assert (not b!7081282))

(assert (not d!2214847))

(assert (not d!2214827))

(assert (not d!2214803))

(assert (not d!2214821))

(assert (not bs!1882173))

(assert (not d!2214817))

(assert (not d!2214805))

(assert (not b!7081214))

(assert (not d!2214841))

(assert (not b!7081245))

(assert (not b!7081222))

(assert (not d!2214829))

(assert tp_is_empty!44613)

(assert (not bs!1882174))

(assert (not b!7081247))

(assert (not b_lambda!270573))

(assert (not b!7081201))

(assert (not b!7081277))

(assert (not b!7081288))

(assert (not d!2214851))

(assert (not b!7081202))

(assert (not bm!643593))

(assert (not d!2214823))

(assert (not b!7081270))

(assert (not d!2214809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

