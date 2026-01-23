; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720480 () Bool)

(assert start!720480)

(declare-fun b!7385517 () Bool)

(declare-fun res!2978507 () Bool)

(declare-fun e!4420765 () Bool)

(assert (=> b!7385517 (=> (not res!2978507) (not e!4420765))))

(declare-datatypes ((C!38998 0))(
  ( (C!38999 (val!29873 Int)) )
))
(declare-datatypes ((Regex!19362 0))(
  ( (ElementMatch!19362 (c!1372762 C!38998)) (Concat!28207 (regOne!39236 Regex!19362) (regTwo!39236 Regex!19362)) (EmptyExpr!19362) (Star!19362 (reg!19691 Regex!19362)) (EmptyLang!19362) (Union!19362 (regOne!39237 Regex!19362) (regTwo!39237 Regex!19362)) )
))
(declare-datatypes ((List!71888 0))(
  ( (Nil!71764) (Cons!71764 (h!78212 Regex!19362) (t!386439 List!71888)) )
))
(declare-datatypes ((Context!16604 0))(
  ( (Context!16605 (exprs!8802 List!71888)) )
))
(declare-fun c!10532 () Context!16604)

(declare-fun a!2228 () C!38998)

(declare-fun head!15108 (List!71888) Regex!19362)

(assert (=> b!7385517 (= res!2978507 (= (head!15108 (exprs!8802 c!10532)) (ElementMatch!19362 a!2228)))))

(declare-fun b!7385518 () Bool)

(declare-fun res!2978511 () Bool)

(assert (=> b!7385518 (=> (not res!2978511) (not e!4420765))))

(declare-fun isEmpty!41002 (List!71888) Bool)

(declare-fun tail!14769 (List!71888) List!71888)

(assert (=> b!7385518 (= res!2978511 (isEmpty!41002 (tail!14769 (exprs!8802 c!10532))))))

(declare-fun b!7385519 () Bool)

(declare-fun res!2978510 () Bool)

(assert (=> b!7385519 (=> (not res!2978510) (not e!4420765))))

(declare-datatypes ((List!71889 0))(
  ( (Nil!71765) (Cons!71765 (h!78213 C!38998) (t!386440 List!71889)) )
))
(declare-fun s!7927 () List!71889)

(assert (=> b!7385519 (= res!2978510 (and (is-Cons!71765 s!7927) (= (h!78213 s!7927) a!2228)))))

(declare-fun b!7385520 () Bool)

(declare-fun e!4420764 () Bool)

(declare-fun tp!2101254 () Bool)

(assert (=> b!7385520 (= e!4420764 tp!2101254)))

(declare-fun tp!2101257 () Bool)

(declare-fun setRes!55881 () Bool)

(declare-fun e!4420766 () Bool)

(declare-fun setNonEmpty!55881 () Bool)

(declare-fun setElem!55881 () Context!16604)

(declare-fun inv!91767 (Context!16604) Bool)

(assert (=> setNonEmpty!55881 (= setRes!55881 (and tp!2101257 (inv!91767 setElem!55881) e!4420766))))

(declare-fun z!3451 () (Set Context!16604))

(declare-fun setRest!55881 () (Set Context!16604))

(assert (=> setNonEmpty!55881 (= z!3451 (set.union (set.insert setElem!55881 (as set.empty (Set Context!16604))) setRest!55881))))

(declare-fun b!7385521 () Bool)

(declare-fun e!4420763 () Bool)

(declare-fun tp_is_empty!48987 () Bool)

(declare-fun tp!2101256 () Bool)

(assert (=> b!7385521 (= e!4420763 (and tp_is_empty!48987 tp!2101256))))

(declare-fun b!7385522 () Bool)

(declare-fun tp!2101255 () Bool)

(assert (=> b!7385522 (= e!4420766 tp!2101255)))

(declare-fun res!2978508 () Bool)

(assert (=> start!720480 (=> (not res!2978508) (not e!4420765))))

(assert (=> start!720480 (= res!2978508 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16604)))))))

(assert (=> start!720480 e!4420765))

(declare-fun condSetEmpty!55881 () Bool)

(assert (=> start!720480 (= condSetEmpty!55881 (= z!3451 (as set.empty (Set Context!16604))))))

(assert (=> start!720480 setRes!55881))

(assert (=> start!720480 (and (inv!91767 c!10532) e!4420764)))

(assert (=> start!720480 tp_is_empty!48987))

(assert (=> start!720480 e!4420763))

(declare-fun setIsEmpty!55881 () Bool)

(assert (=> setIsEmpty!55881 setRes!55881))

(declare-fun b!7385523 () Bool)

(declare-fun derivationStepZipperUp!2768 (Context!16604 C!38998) (Set Context!16604))

(declare-fun head!15109 (List!71889) C!38998)

(assert (=> b!7385523 (= e!4420765 (not (= (derivationStepZipperUp!2768 c!10532 (head!15109 s!7927)) (set.singleton (Context!16605 Nil!71764)))))))

(declare-fun b!7385524 () Bool)

(declare-fun res!2978509 () Bool)

(assert (=> b!7385524 (=> (not res!2978509) (not e!4420765))))

(assert (=> b!7385524 (= res!2978509 (not (isEmpty!41002 (exprs!8802 c!10532))))))

(assert (= (and start!720480 res!2978508) b!7385524))

(assert (= (and b!7385524 res!2978509) b!7385517))

(assert (= (and b!7385517 res!2978507) b!7385518))

(assert (= (and b!7385518 res!2978511) b!7385519))

(assert (= (and b!7385519 res!2978510) b!7385523))

(assert (= (and start!720480 condSetEmpty!55881) setIsEmpty!55881))

(assert (= (and start!720480 (not condSetEmpty!55881)) setNonEmpty!55881))

(assert (= setNonEmpty!55881 b!7385522))

(assert (= start!720480 b!7385520))

(assert (= (and start!720480 (is-Cons!71765 s!7927)) b!7385521))

(declare-fun m!8033978 () Bool)

(assert (=> b!7385518 m!8033978))

(assert (=> b!7385518 m!8033978))

(declare-fun m!8033980 () Bool)

(assert (=> b!7385518 m!8033980))

(declare-fun m!8033982 () Bool)

(assert (=> start!720480 m!8033982))

(declare-fun m!8033984 () Bool)

(assert (=> start!720480 m!8033984))

(declare-fun m!8033986 () Bool)

(assert (=> b!7385517 m!8033986))

(declare-fun m!8033988 () Bool)

(assert (=> b!7385523 m!8033988))

(assert (=> b!7385523 m!8033988))

(declare-fun m!8033990 () Bool)

(assert (=> b!7385523 m!8033990))

(declare-fun m!8033992 () Bool)

(assert (=> b!7385524 m!8033992))

(declare-fun m!8033994 () Bool)

(assert (=> setNonEmpty!55881 m!8033994))

(push 1)

(assert (not b!7385521))

(assert (not setNonEmpty!55881))

(assert (not b!7385523))

(assert (not b!7385518))

(assert (not b!7385522))

(assert (not b!7385520))

(assert (not start!720480))

(assert (not b!7385517))

(assert (not b!7385524))

(assert tp_is_empty!48987)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2286463 () Bool)

(declare-fun lambda!458902 () Int)

(declare-fun forall!18144 (List!71888 Int) Bool)

(assert (=> d!2286463 (= (inv!91767 c!10532) (forall!18144 (exprs!8802 c!10532) lambda!458902))))

(declare-fun bs!1921932 () Bool)

(assert (= bs!1921932 d!2286463))

(declare-fun m!8034016 () Bool)

(assert (=> bs!1921932 m!8034016))

(assert (=> start!720480 d!2286463))

(declare-fun bs!1921933 () Bool)

(declare-fun d!2286467 () Bool)

(assert (= bs!1921933 (and d!2286467 d!2286463)))

(declare-fun lambda!458903 () Int)

(assert (=> bs!1921933 (= lambda!458903 lambda!458902)))

(assert (=> d!2286467 (= (inv!91767 setElem!55881) (forall!18144 (exprs!8802 setElem!55881) lambda!458903))))

(declare-fun bs!1921934 () Bool)

(assert (= bs!1921934 d!2286467))

(declare-fun m!8034018 () Bool)

(assert (=> bs!1921934 m!8034018))

(assert (=> setNonEmpty!55881 d!2286467))

(declare-fun d!2286469 () Bool)

(assert (=> d!2286469 (= (isEmpty!41002 (exprs!8802 c!10532)) (is-Nil!71764 (exprs!8802 c!10532)))))

(assert (=> b!7385524 d!2286469))

(declare-fun b!7385559 () Bool)

(declare-fun e!4420785 () Bool)

(declare-fun nullable!8416 (Regex!19362) Bool)

(assert (=> b!7385559 (= e!4420785 (nullable!8416 (h!78212 (exprs!8802 c!10532))))))

(declare-fun call!679797 () (Set Context!16604))

(declare-fun e!4420787 () (Set Context!16604))

(declare-fun b!7385560 () Bool)

(assert (=> b!7385560 (= e!4420787 (set.union call!679797 (derivationStepZipperUp!2768 (Context!16605 (t!386439 (exprs!8802 c!10532))) (head!15109 s!7927))))))

(declare-fun b!7385561 () Bool)

(declare-fun e!4420786 () (Set Context!16604))

(assert (=> b!7385561 (= e!4420786 (as set.empty (Set Context!16604)))))

(declare-fun b!7385562 () Bool)

(assert (=> b!7385562 (= e!4420787 e!4420786)))

(declare-fun c!1372768 () Bool)

(assert (=> b!7385562 (= c!1372768 (is-Cons!71764 (exprs!8802 c!10532)))))

(declare-fun b!7385563 () Bool)

(assert (=> b!7385563 (= e!4420786 call!679797)))

(declare-fun d!2286473 () Bool)

(declare-fun c!1372769 () Bool)

(assert (=> d!2286473 (= c!1372769 e!4420785)))

(declare-fun res!2978529 () Bool)

(assert (=> d!2286473 (=> (not res!2978529) (not e!4420785))))

(assert (=> d!2286473 (= res!2978529 (is-Cons!71764 (exprs!8802 c!10532)))))

(assert (=> d!2286473 (= (derivationStepZipperUp!2768 c!10532 (head!15109 s!7927)) e!4420787)))

(declare-fun bm!679792 () Bool)

(declare-fun derivationStepZipperDown!3168 (Regex!19362 Context!16604 C!38998) (Set Context!16604))

(assert (=> bm!679792 (= call!679797 (derivationStepZipperDown!3168 (h!78212 (exprs!8802 c!10532)) (Context!16605 (t!386439 (exprs!8802 c!10532))) (head!15109 s!7927)))))

(assert (= (and d!2286473 res!2978529) b!7385559))

(assert (= (and d!2286473 c!1372769) b!7385560))

(assert (= (and d!2286473 (not c!1372769)) b!7385562))

(assert (= (and b!7385562 c!1372768) b!7385563))

(assert (= (and b!7385562 (not c!1372768)) b!7385561))

(assert (= (or b!7385560 b!7385563) bm!679792))

(declare-fun m!8034020 () Bool)

(assert (=> b!7385559 m!8034020))

(assert (=> b!7385560 m!8033988))

(declare-fun m!8034022 () Bool)

(assert (=> b!7385560 m!8034022))

(assert (=> bm!679792 m!8033988))

(declare-fun m!8034024 () Bool)

(assert (=> bm!679792 m!8034024))

(assert (=> b!7385523 d!2286473))

(declare-fun d!2286479 () Bool)

(assert (=> d!2286479 (= (head!15109 s!7927) (h!78213 s!7927))))

(assert (=> b!7385523 d!2286479))

(declare-fun d!2286481 () Bool)

(assert (=> d!2286481 (= (isEmpty!41002 (tail!14769 (exprs!8802 c!10532))) (is-Nil!71764 (tail!14769 (exprs!8802 c!10532))))))

(assert (=> b!7385518 d!2286481))

(declare-fun d!2286483 () Bool)

(assert (=> d!2286483 (= (tail!14769 (exprs!8802 c!10532)) (t!386439 (exprs!8802 c!10532)))))

(assert (=> b!7385518 d!2286483))

(declare-fun d!2286485 () Bool)

(assert (=> d!2286485 (= (head!15108 (exprs!8802 c!10532)) (h!78212 (exprs!8802 c!10532)))))

(assert (=> b!7385517 d!2286485))

(declare-fun b!7385578 () Bool)

(declare-fun e!4420796 () Bool)

(declare-fun tp!2101274 () Bool)

(declare-fun tp!2101275 () Bool)

(assert (=> b!7385578 (= e!4420796 (and tp!2101274 tp!2101275))))

(assert (=> b!7385520 (= tp!2101254 e!4420796)))

(assert (= (and b!7385520 (is-Cons!71764 (exprs!8802 c!10532))) b!7385578))

(declare-fun condSetEmpty!55887 () Bool)

(assert (=> setNonEmpty!55881 (= condSetEmpty!55887 (= setRest!55881 (as set.empty (Set Context!16604))))))

(declare-fun setRes!55887 () Bool)

(assert (=> setNonEmpty!55881 (= tp!2101257 setRes!55887)))

(declare-fun setIsEmpty!55887 () Bool)

(assert (=> setIsEmpty!55887 setRes!55887))

(declare-fun setNonEmpty!55887 () Bool)

(declare-fun tp!2101281 () Bool)

(declare-fun setElem!55887 () Context!16604)

(declare-fun e!4420799 () Bool)

(assert (=> setNonEmpty!55887 (= setRes!55887 (and tp!2101281 (inv!91767 setElem!55887) e!4420799))))

(declare-fun setRest!55887 () (Set Context!16604))

(assert (=> setNonEmpty!55887 (= setRest!55881 (set.union (set.insert setElem!55887 (as set.empty (Set Context!16604))) setRest!55887))))

(declare-fun b!7385583 () Bool)

(declare-fun tp!2101280 () Bool)

(assert (=> b!7385583 (= e!4420799 tp!2101280)))

(assert (= (and setNonEmpty!55881 condSetEmpty!55887) setIsEmpty!55887))

(assert (= (and setNonEmpty!55881 (not condSetEmpty!55887)) setNonEmpty!55887))

(assert (= setNonEmpty!55887 b!7385583))

(declare-fun m!8034026 () Bool)

(assert (=> setNonEmpty!55887 m!8034026))

(declare-fun b!7385584 () Bool)

(declare-fun e!4420800 () Bool)

(declare-fun tp!2101282 () Bool)

(declare-fun tp!2101283 () Bool)

(assert (=> b!7385584 (= e!4420800 (and tp!2101282 tp!2101283))))

(assert (=> b!7385522 (= tp!2101255 e!4420800)))

(assert (= (and b!7385522 (is-Cons!71764 (exprs!8802 setElem!55881))) b!7385584))

(declare-fun b!7385589 () Bool)

(declare-fun e!4420803 () Bool)

(declare-fun tp!2101286 () Bool)

(assert (=> b!7385589 (= e!4420803 (and tp_is_empty!48987 tp!2101286))))

(assert (=> b!7385521 (= tp!2101256 e!4420803)))

(assert (= (and b!7385521 (is-Cons!71765 (t!386440 s!7927))) b!7385589))

(push 1)

(assert (not b!7385559))

(assert (not b!7385589))

(assert (not b!7385560))

(assert (not setNonEmpty!55887))

(assert (not bm!679792))

(assert (not d!2286463))

(assert tp_is_empty!48987)

(assert (not b!7385583))

(assert (not b!7385578))

(assert (not d!2286467))

(assert (not b!7385584))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1921937 () Bool)

(declare-fun d!2286493 () Bool)

(assert (= bs!1921937 (and d!2286493 d!2286463)))

(declare-fun lambda!458905 () Int)

(assert (=> bs!1921937 (= lambda!458905 lambda!458902)))

(declare-fun bs!1921938 () Bool)

(assert (= bs!1921938 (and d!2286493 d!2286467)))

(assert (=> bs!1921938 (= lambda!458905 lambda!458903)))

(assert (=> d!2286493 (= (inv!91767 setElem!55887) (forall!18144 (exprs!8802 setElem!55887) lambda!458905))))

(declare-fun bs!1921939 () Bool)

(assert (= bs!1921939 d!2286493))

(declare-fun m!8034038 () Bool)

(assert (=> bs!1921939 m!8034038))

(assert (=> setNonEmpty!55887 d!2286493))

(declare-fun d!2286495 () Bool)

(declare-fun res!2978537 () Bool)

(declare-fun e!4420821 () Bool)

(assert (=> d!2286495 (=> res!2978537 e!4420821)))

(assert (=> d!2286495 (= res!2978537 (is-Nil!71764 (exprs!8802 setElem!55881)))))

(assert (=> d!2286495 (= (forall!18144 (exprs!8802 setElem!55881) lambda!458903) e!4420821)))

(declare-fun b!7385615 () Bool)

(declare-fun e!4420822 () Bool)

(assert (=> b!7385615 (= e!4420821 e!4420822)))

(declare-fun res!2978538 () Bool)

(assert (=> b!7385615 (=> (not res!2978538) (not e!4420822))))

(declare-fun dynLambda!29552 (Int Regex!19362) Bool)

(assert (=> b!7385615 (= res!2978538 (dynLambda!29552 lambda!458903 (h!78212 (exprs!8802 setElem!55881))))))

(declare-fun b!7385616 () Bool)

(assert (=> b!7385616 (= e!4420822 (forall!18144 (t!386439 (exprs!8802 setElem!55881)) lambda!458903))))

(assert (= (and d!2286495 (not res!2978537)) b!7385615))

(assert (= (and b!7385615 res!2978538) b!7385616))

(declare-fun b_lambda!284947 () Bool)

(assert (=> (not b_lambda!284947) (not b!7385615)))

(declare-fun m!8034040 () Bool)

(assert (=> b!7385615 m!8034040))

(declare-fun m!8034042 () Bool)

(assert (=> b!7385616 m!8034042))

(assert (=> d!2286467 d!2286495))

(declare-fun c!1372786 () Bool)

(declare-fun bm!679808 () Bool)

(declare-fun call!679815 () (Set Context!16604))

(declare-fun call!679817 () List!71888)

(assert (=> bm!679808 (= call!679815 (derivationStepZipperDown!3168 (ite c!1372786 (regTwo!39237 (h!78212 (exprs!8802 c!10532))) (regOne!39236 (h!78212 (exprs!8802 c!10532)))) (ite c!1372786 (Context!16605 (t!386439 (exprs!8802 c!10532))) (Context!16605 call!679817)) (head!15109 s!7927)))))

(declare-fun bm!679809 () Bool)

(declare-fun call!679813 () (Set Context!16604))

(declare-fun call!679816 () (Set Context!16604))

(assert (=> bm!679809 (= call!679813 call!679816)))

(declare-fun b!7385640 () Bool)

(declare-fun c!1372787 () Bool)

(assert (=> b!7385640 (= c!1372787 (is-Star!19362 (h!78212 (exprs!8802 c!10532))))))

(declare-fun e!4420835 () (Set Context!16604))

(declare-fun e!4420836 () (Set Context!16604))

(assert (=> b!7385640 (= e!4420835 e!4420836)))

(declare-fun b!7385641 () Bool)

(declare-fun e!4420839 () (Set Context!16604))

(declare-fun e!4420837 () (Set Context!16604))

(assert (=> b!7385641 (= e!4420839 e!4420837)))

(assert (=> b!7385641 (= c!1372786 (is-Union!19362 (h!78212 (exprs!8802 c!10532))))))

(declare-fun b!7385642 () Bool)

(declare-fun e!4420838 () (Set Context!16604))

(assert (=> b!7385642 (= e!4420838 e!4420835)))

(declare-fun c!1372789 () Bool)

(assert (=> b!7385642 (= c!1372789 (is-Concat!28207 (h!78212 (exprs!8802 c!10532))))))

(declare-fun b!7385643 () Bool)

(declare-fun e!4420840 () Bool)

(assert (=> b!7385643 (= e!4420840 (nullable!8416 (regOne!39236 (h!78212 (exprs!8802 c!10532)))))))

(declare-fun call!679814 () List!71888)

(declare-fun bm!679810 () Bool)

(declare-fun call!679818 () (Set Context!16604))

(declare-fun c!1372790 () Bool)

(assert (=> bm!679810 (= call!679818 (derivationStepZipperDown!3168 (ite c!1372786 (regOne!39237 (h!78212 (exprs!8802 c!10532))) (ite c!1372790 (regTwo!39236 (h!78212 (exprs!8802 c!10532))) (ite c!1372789 (regOne!39236 (h!78212 (exprs!8802 c!10532))) (reg!19691 (h!78212 (exprs!8802 c!10532)))))) (ite (or c!1372786 c!1372790) (Context!16605 (t!386439 (exprs!8802 c!10532))) (Context!16605 call!679814)) (head!15109 s!7927)))))

(declare-fun b!7385644 () Bool)

(assert (=> b!7385644 (= e!4420836 (as set.empty (Set Context!16604)))))

(declare-fun b!7385645 () Bool)

(assert (=> b!7385645 (= e!4420835 call!679813)))

(declare-fun bm!679811 () Bool)

(assert (=> bm!679811 (= call!679814 call!679817)))

(declare-fun b!7385646 () Bool)

(assert (=> b!7385646 (= e!4420837 (set.union call!679818 call!679815))))

(declare-fun d!2286497 () Bool)

(declare-fun c!1372788 () Bool)

(assert (=> d!2286497 (= c!1372788 (and (is-ElementMatch!19362 (h!78212 (exprs!8802 c!10532))) (= (c!1372762 (h!78212 (exprs!8802 c!10532))) (head!15109 s!7927))))))

(assert (=> d!2286497 (= (derivationStepZipperDown!3168 (h!78212 (exprs!8802 c!10532)) (Context!16605 (t!386439 (exprs!8802 c!10532))) (head!15109 s!7927)) e!4420839)))

(declare-fun b!7385639 () Bool)

(assert (=> b!7385639 (= c!1372790 e!4420840)))

(declare-fun res!2978541 () Bool)

(assert (=> b!7385639 (=> (not res!2978541) (not e!4420840))))

(assert (=> b!7385639 (= res!2978541 (is-Concat!28207 (h!78212 (exprs!8802 c!10532))))))

(assert (=> b!7385639 (= e!4420837 e!4420838)))

(declare-fun bm!679812 () Bool)

(assert (=> bm!679812 (= call!679816 call!679818)))

(declare-fun b!7385647 () Bool)

(assert (=> b!7385647 (= e!4420838 (set.union call!679815 call!679816))))

(declare-fun bm!679813 () Bool)

(declare-fun $colon$colon!3319 (List!71888 Regex!19362) List!71888)

(assert (=> bm!679813 (= call!679817 ($colon$colon!3319 (exprs!8802 (Context!16605 (t!386439 (exprs!8802 c!10532)))) (ite (or c!1372790 c!1372789) (regTwo!39236 (h!78212 (exprs!8802 c!10532))) (h!78212 (exprs!8802 c!10532)))))))

(declare-fun b!7385648 () Bool)

(assert (=> b!7385648 (= e!4420839 (set.insert (Context!16605 (t!386439 (exprs!8802 c!10532))) (as set.empty (Set Context!16604))))))

(declare-fun b!7385649 () Bool)

(assert (=> b!7385649 (= e!4420836 call!679813)))

(assert (= (and d!2286497 c!1372788) b!7385648))

(assert (= (and d!2286497 (not c!1372788)) b!7385641))

(assert (= (and b!7385641 c!1372786) b!7385646))

(assert (= (and b!7385641 (not c!1372786)) b!7385639))

(assert (= (and b!7385639 res!2978541) b!7385643))

(assert (= (and b!7385639 c!1372790) b!7385647))

(assert (= (and b!7385639 (not c!1372790)) b!7385642))

(assert (= (and b!7385642 c!1372789) b!7385645))

(assert (= (and b!7385642 (not c!1372789)) b!7385640))

(assert (= (and b!7385640 c!1372787) b!7385649))

(assert (= (and b!7385640 (not c!1372787)) b!7385644))

(assert (= (or b!7385645 b!7385649) bm!679811))

(assert (= (or b!7385645 b!7385649) bm!679809))

(assert (= (or b!7385647 bm!679811) bm!679813))

(assert (= (or b!7385647 bm!679809) bm!679812))

(assert (= (or b!7385646 bm!679812) bm!679810))

(assert (= (or b!7385646 b!7385647) bm!679808))

(assert (=> bm!679808 m!8033988))

(declare-fun m!8034044 () Bool)

(assert (=> bm!679808 m!8034044))

(declare-fun m!8034046 () Bool)

(assert (=> b!7385648 m!8034046))

(declare-fun m!8034048 () Bool)

(assert (=> b!7385643 m!8034048))

(declare-fun m!8034050 () Bool)

(assert (=> bm!679813 m!8034050))

(assert (=> bm!679810 m!8033988))

(declare-fun m!8034052 () Bool)

(assert (=> bm!679810 m!8034052))

(assert (=> bm!679792 d!2286497))

(declare-fun d!2286499 () Bool)

(declare-fun nullableFct!3381 (Regex!19362) Bool)

(assert (=> d!2286499 (= (nullable!8416 (h!78212 (exprs!8802 c!10532))) (nullableFct!3381 (h!78212 (exprs!8802 c!10532))))))

(declare-fun bs!1921940 () Bool)

(assert (= bs!1921940 d!2286499))

(declare-fun m!8034054 () Bool)

(assert (=> bs!1921940 m!8034054))

(assert (=> b!7385559 d!2286499))

(declare-fun d!2286501 () Bool)

(declare-fun res!2978542 () Bool)

(declare-fun e!4420841 () Bool)

(assert (=> d!2286501 (=> res!2978542 e!4420841)))

(assert (=> d!2286501 (= res!2978542 (is-Nil!71764 (exprs!8802 c!10532)))))

(assert (=> d!2286501 (= (forall!18144 (exprs!8802 c!10532) lambda!458902) e!4420841)))

(declare-fun b!7385650 () Bool)

(declare-fun e!4420842 () Bool)

(assert (=> b!7385650 (= e!4420841 e!4420842)))

(declare-fun res!2978543 () Bool)

(assert (=> b!7385650 (=> (not res!2978543) (not e!4420842))))

(assert (=> b!7385650 (= res!2978543 (dynLambda!29552 lambda!458902 (h!78212 (exprs!8802 c!10532))))))

(declare-fun b!7385651 () Bool)

(assert (=> b!7385651 (= e!4420842 (forall!18144 (t!386439 (exprs!8802 c!10532)) lambda!458902))))

(assert (= (and d!2286501 (not res!2978542)) b!7385650))

(assert (= (and b!7385650 res!2978543) b!7385651))

(declare-fun b_lambda!284949 () Bool)

(assert (=> (not b_lambda!284949) (not b!7385650)))

(declare-fun m!8034056 () Bool)

(assert (=> b!7385650 m!8034056))

(declare-fun m!8034058 () Bool)

(assert (=> b!7385651 m!8034058))

(assert (=> d!2286463 d!2286501))

(declare-fun b!7385652 () Bool)

(declare-fun e!4420843 () Bool)

(assert (=> b!7385652 (= e!4420843 (nullable!8416 (h!78212 (exprs!8802 (Context!16605 (t!386439 (exprs!8802 c!10532)))))))))

(declare-fun b!7385653 () Bool)

(declare-fun e!4420845 () (Set Context!16604))

(declare-fun call!679819 () (Set Context!16604))

(assert (=> b!7385653 (= e!4420845 (set.union call!679819 (derivationStepZipperUp!2768 (Context!16605 (t!386439 (exprs!8802 (Context!16605 (t!386439 (exprs!8802 c!10532)))))) (head!15109 s!7927))))))

(declare-fun b!7385654 () Bool)

(declare-fun e!4420844 () (Set Context!16604))

(assert (=> b!7385654 (= e!4420844 (as set.empty (Set Context!16604)))))

(declare-fun b!7385655 () Bool)

(assert (=> b!7385655 (= e!4420845 e!4420844)))

(declare-fun c!1372791 () Bool)

(assert (=> b!7385655 (= c!1372791 (is-Cons!71764 (exprs!8802 (Context!16605 (t!386439 (exprs!8802 c!10532))))))))

(declare-fun b!7385656 () Bool)

(assert (=> b!7385656 (= e!4420844 call!679819)))

(declare-fun d!2286503 () Bool)

(declare-fun c!1372792 () Bool)

(assert (=> d!2286503 (= c!1372792 e!4420843)))

(declare-fun res!2978544 () Bool)

(assert (=> d!2286503 (=> (not res!2978544) (not e!4420843))))

(assert (=> d!2286503 (= res!2978544 (is-Cons!71764 (exprs!8802 (Context!16605 (t!386439 (exprs!8802 c!10532))))))))

(assert (=> d!2286503 (= (derivationStepZipperUp!2768 (Context!16605 (t!386439 (exprs!8802 c!10532))) (head!15109 s!7927)) e!4420845)))

(declare-fun bm!679814 () Bool)

(assert (=> bm!679814 (= call!679819 (derivationStepZipperDown!3168 (h!78212 (exprs!8802 (Context!16605 (t!386439 (exprs!8802 c!10532))))) (Context!16605 (t!386439 (exprs!8802 (Context!16605 (t!386439 (exprs!8802 c!10532)))))) (head!15109 s!7927)))))

(assert (= (and d!2286503 res!2978544) b!7385652))

(assert (= (and d!2286503 c!1372792) b!7385653))

(assert (= (and d!2286503 (not c!1372792)) b!7385655))

(assert (= (and b!7385655 c!1372791) b!7385656))

(assert (= (and b!7385655 (not c!1372791)) b!7385654))

(assert (= (or b!7385653 b!7385656) bm!679814))

(declare-fun m!8034060 () Bool)

(assert (=> b!7385652 m!8034060))

(assert (=> b!7385653 m!8033988))

(declare-fun m!8034062 () Bool)

(assert (=> b!7385653 m!8034062))

(assert (=> bm!679814 m!8033988))

(declare-fun m!8034064 () Bool)

(assert (=> bm!679814 m!8034064))

(assert (=> b!7385560 d!2286503))

(declare-fun condSetEmpty!55891 () Bool)

(assert (=> setNonEmpty!55887 (= condSetEmpty!55891 (= setRest!55887 (as set.empty (Set Context!16604))))))

(declare-fun setRes!55891 () Bool)

(assert (=> setNonEmpty!55887 (= tp!2101281 setRes!55891)))

(declare-fun setIsEmpty!55891 () Bool)

(assert (=> setIsEmpty!55891 setRes!55891))

(declare-fun setElem!55891 () Context!16604)

(declare-fun tp!2101305 () Bool)

(declare-fun e!4420846 () Bool)

(declare-fun setNonEmpty!55891 () Bool)

(assert (=> setNonEmpty!55891 (= setRes!55891 (and tp!2101305 (inv!91767 setElem!55891) e!4420846))))

(declare-fun setRest!55891 () (Set Context!16604))

(assert (=> setNonEmpty!55891 (= setRest!55887 (set.union (set.insert setElem!55891 (as set.empty (Set Context!16604))) setRest!55891))))

(declare-fun b!7385657 () Bool)

(declare-fun tp!2101304 () Bool)

(assert (=> b!7385657 (= e!4420846 tp!2101304)))

(assert (= (and setNonEmpty!55887 condSetEmpty!55891) setIsEmpty!55891))

(assert (= (and setNonEmpty!55887 (not condSetEmpty!55891)) setNonEmpty!55891))

(assert (= setNonEmpty!55891 b!7385657))

(declare-fun m!8034066 () Bool)

(assert (=> setNonEmpty!55891 m!8034066))

(declare-fun b!7385658 () Bool)

(declare-fun e!4420847 () Bool)

(declare-fun tp!2101306 () Bool)

(assert (=> b!7385658 (= e!4420847 (and tp_is_empty!48987 tp!2101306))))

(assert (=> b!7385589 (= tp!2101286 e!4420847)))

(assert (= (and b!7385589 (is-Cons!71765 (t!386440 (t!386440 s!7927)))) b!7385658))

(declare-fun b!7385669 () Bool)

(declare-fun e!4420850 () Bool)

(assert (=> b!7385669 (= e!4420850 tp_is_empty!48987)))

(declare-fun b!7385670 () Bool)

(declare-fun tp!2101321 () Bool)

(declare-fun tp!2101320 () Bool)

(assert (=> b!7385670 (= e!4420850 (and tp!2101321 tp!2101320))))

(assert (=> b!7385578 (= tp!2101274 e!4420850)))

(declare-fun b!7385672 () Bool)

(declare-fun tp!2101318 () Bool)

(declare-fun tp!2101317 () Bool)

(assert (=> b!7385672 (= e!4420850 (and tp!2101318 tp!2101317))))

(declare-fun b!7385671 () Bool)

(declare-fun tp!2101319 () Bool)

(assert (=> b!7385671 (= e!4420850 tp!2101319)))

(assert (= (and b!7385578 (is-ElementMatch!19362 (h!78212 (exprs!8802 c!10532)))) b!7385669))

(assert (= (and b!7385578 (is-Concat!28207 (h!78212 (exprs!8802 c!10532)))) b!7385670))

(assert (= (and b!7385578 (is-Star!19362 (h!78212 (exprs!8802 c!10532)))) b!7385671))

(assert (= (and b!7385578 (is-Union!19362 (h!78212 (exprs!8802 c!10532)))) b!7385672))

(declare-fun b!7385673 () Bool)

(declare-fun e!4420851 () Bool)

(declare-fun tp!2101322 () Bool)

(declare-fun tp!2101323 () Bool)

(assert (=> b!7385673 (= e!4420851 (and tp!2101322 tp!2101323))))

(assert (=> b!7385578 (= tp!2101275 e!4420851)))

(assert (= (and b!7385578 (is-Cons!71764 (t!386439 (exprs!8802 c!10532)))) b!7385673))

(declare-fun b!7385674 () Bool)

(declare-fun e!4420852 () Bool)

(declare-fun tp!2101324 () Bool)

(declare-fun tp!2101325 () Bool)

(assert (=> b!7385674 (= e!4420852 (and tp!2101324 tp!2101325))))

(assert (=> b!7385583 (= tp!2101280 e!4420852)))

(assert (= (and b!7385583 (is-Cons!71764 (exprs!8802 setElem!55887))) b!7385674))

(declare-fun b!7385675 () Bool)

(declare-fun e!4420853 () Bool)

(assert (=> b!7385675 (= e!4420853 tp_is_empty!48987)))

(declare-fun b!7385676 () Bool)

(declare-fun tp!2101330 () Bool)

(declare-fun tp!2101329 () Bool)

(assert (=> b!7385676 (= e!4420853 (and tp!2101330 tp!2101329))))

(assert (=> b!7385584 (= tp!2101282 e!4420853)))

(declare-fun b!7385678 () Bool)

(declare-fun tp!2101327 () Bool)

(declare-fun tp!2101326 () Bool)

(assert (=> b!7385678 (= e!4420853 (and tp!2101327 tp!2101326))))

(declare-fun b!7385677 () Bool)

(declare-fun tp!2101328 () Bool)

(assert (=> b!7385677 (= e!4420853 tp!2101328)))

(assert (= (and b!7385584 (is-ElementMatch!19362 (h!78212 (exprs!8802 setElem!55881)))) b!7385675))

(assert (= (and b!7385584 (is-Concat!28207 (h!78212 (exprs!8802 setElem!55881)))) b!7385676))

(assert (= (and b!7385584 (is-Star!19362 (h!78212 (exprs!8802 setElem!55881)))) b!7385677))

(assert (= (and b!7385584 (is-Union!19362 (h!78212 (exprs!8802 setElem!55881)))) b!7385678))

(declare-fun b!7385679 () Bool)

(declare-fun e!4420854 () Bool)

(declare-fun tp!2101331 () Bool)

(declare-fun tp!2101332 () Bool)

(assert (=> b!7385679 (= e!4420854 (and tp!2101331 tp!2101332))))

(assert (=> b!7385584 (= tp!2101283 e!4420854)))

(assert (= (and b!7385584 (is-Cons!71764 (t!386439 (exprs!8802 setElem!55881)))) b!7385679))

(declare-fun b_lambda!284951 () Bool)

(assert (= b_lambda!284949 (or d!2286463 b_lambda!284951)))

(declare-fun bs!1921944 () Bool)

(declare-fun d!2286509 () Bool)

(assert (= bs!1921944 (and d!2286509 d!2286463)))

(declare-fun validRegex!9940 (Regex!19362) Bool)

(assert (=> bs!1921944 (= (dynLambda!29552 lambda!458902 (h!78212 (exprs!8802 c!10532))) (validRegex!9940 (h!78212 (exprs!8802 c!10532))))))

(declare-fun m!8034070 () Bool)

(assert (=> bs!1921944 m!8034070))

(assert (=> b!7385650 d!2286509))

(declare-fun b_lambda!284953 () Bool)

(assert (= b_lambda!284947 (or d!2286467 b_lambda!284953)))

(declare-fun bs!1921945 () Bool)

(declare-fun d!2286511 () Bool)

(assert (= bs!1921945 (and d!2286511 d!2286467)))

(assert (=> bs!1921945 (= (dynLambda!29552 lambda!458903 (h!78212 (exprs!8802 setElem!55881))) (validRegex!9940 (h!78212 (exprs!8802 setElem!55881))))))

(declare-fun m!8034072 () Bool)

(assert (=> bs!1921945 m!8034072))

(assert (=> b!7385615 d!2286511))

(push 1)

(assert (not b!7385674))

(assert (not b!7385657))

(assert (not setNonEmpty!55891))

(assert (not b!7385652))

(assert (not b!7385616))

(assert (not b!7385658))

(assert (not b!7385670))

(assert (not b!7385673))

(assert (not b_lambda!284951))

(assert (not bs!1921944))

(assert (not bm!679813))

(assert (not bm!679810))

(assert (not b!7385671))

(assert (not b!7385678))

(assert (not bm!679808))

(assert (not b_lambda!284953))

(assert (not d!2286493))

(assert (not bs!1921945))

(assert (not b!7385653))

(assert (not b!7385651))

(assert (not d!2286499))

(assert (not b!7385679))

(assert (not bm!679814))

(assert tp_is_empty!48987)

(assert (not b!7385672))

(assert (not b!7385677))

(assert (not b!7385643))

(assert (not b!7385676))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

