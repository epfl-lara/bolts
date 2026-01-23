; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!722242 () Bool)

(assert start!722242)

(declare-fun b!7412846 () Bool)

(declare-fun e!4433311 () Bool)

(declare-fun tp_is_empty!49105 () Bool)

(declare-fun tp!2121926 () Bool)

(assert (=> b!7412846 (= e!4433311 (and tp_is_empty!49105 tp!2121926))))

(declare-fun b!7412847 () Bool)

(declare-fun e!4433312 () Bool)

(declare-fun tp!2121927 () Bool)

(assert (=> b!7412847 (= e!4433312 tp!2121927)))

(declare-fun setIsEmpty!56355 () Bool)

(declare-fun setRes!56355 () Bool)

(assert (=> setIsEmpty!56355 setRes!56355))

(declare-datatypes ((C!39116 0))(
  ( (C!39117 (val!29932 Int)) )
))
(declare-datatypes ((Regex!19421 0))(
  ( (ElementMatch!19421 (c!1375837 C!39116)) (Concat!28266 (regOne!39354 Regex!19421) (regTwo!39354 Regex!19421)) (EmptyExpr!19421) (Star!19421 (reg!19750 Regex!19421)) (EmptyLang!19421) (Union!19421 (regOne!39355 Regex!19421) (regTwo!39355 Regex!19421)) )
))
(declare-datatypes ((List!72048 0))(
  ( (Nil!71924) (Cons!71924 (h!78372 Regex!19421) (t!386609 List!72048)) )
))
(declare-datatypes ((Context!16722 0))(
  ( (Context!16723 (exprs!8861 List!72048)) )
))
(declare-fun setElem!56355 () Context!16722)

(declare-fun tp!2121925 () Bool)

(declare-fun e!4433310 () Bool)

(declare-fun setNonEmpty!56355 () Bool)

(declare-fun inv!91913 (Context!16722) Bool)

(assert (=> setNonEmpty!56355 (= setRes!56355 (and tp!2121925 (inv!91913 setElem!56355) e!4433310))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3451 () (InoxSet Context!16722))

(declare-fun setRest!56355 () (InoxSet Context!16722))

(assert (=> setNonEmpty!56355 (= z!3451 ((_ map or) (store ((as const (Array Context!16722 Bool)) false) setElem!56355 true) setRest!56355))))

(declare-fun b!7412848 () Bool)

(declare-fun res!2983726 () Bool)

(declare-fun e!4433313 () Bool)

(assert (=> b!7412848 (=> (not res!2983726) (not e!4433313))))

(declare-fun c!10532 () Context!16722)

(declare-fun a!2228 () C!39116)

(declare-fun head!15237 (List!72048) Regex!19421)

(assert (=> b!7412848 (= res!2983726 (= (head!15237 (exprs!8861 c!10532)) (ElementMatch!19421 a!2228)))))

(declare-fun res!2983727 () Bool)

(assert (=> start!722242 (=> (not res!2983727) (not e!4433313))))

(assert (=> start!722242 (= res!2983727 (= z!3451 (store ((as const (Array Context!16722 Bool)) false) c!10532 true)))))

(assert (=> start!722242 e!4433313))

(declare-fun condSetEmpty!56355 () Bool)

(assert (=> start!722242 (= condSetEmpty!56355 (= z!3451 ((as const (Array Context!16722 Bool)) false)))))

(assert (=> start!722242 setRes!56355))

(assert (=> start!722242 (and (inv!91913 c!10532) e!4433312)))

(assert (=> start!722242 tp_is_empty!49105))

(assert (=> start!722242 e!4433311))

(declare-fun b!7412849 () Bool)

(declare-fun res!2983724 () Bool)

(assert (=> b!7412849 (=> (not res!2983724) (not e!4433313))))

(declare-fun isEmpty!41073 (List!72048) Bool)

(assert (=> b!7412849 (= res!2983724 (not (isEmpty!41073 (exprs!8861 c!10532))))))

(declare-fun b!7412850 () Bool)

(declare-fun res!2983728 () Bool)

(assert (=> b!7412850 (=> (not res!2983728) (not e!4433313))))

(declare-fun tail!14838 (List!72048) List!72048)

(assert (=> b!7412850 (= res!2983728 (isEmpty!41073 (tail!14838 (exprs!8861 c!10532))))))

(declare-fun b!7412851 () Bool)

(declare-fun tp!2121928 () Bool)

(assert (=> b!7412851 (= e!4433310 tp!2121928)))

(declare-fun b!7412852 () Bool)

(declare-fun res!2983725 () Bool)

(assert (=> b!7412852 (=> (not res!2983725) (not e!4433313))))

(declare-datatypes ((List!72049 0))(
  ( (Nil!71925) (Cons!71925 (h!78373 C!39116) (t!386610 List!72049)) )
))
(declare-fun s!7927 () List!72049)

(get-info :version)

(assert (=> b!7412852 (= res!2983725 (and (or (not ((_ is Cons!71925) s!7927)) (not (= (h!78373 s!7927) a!2228))) (or (not ((_ is Cons!71925) s!7927)) (= (h!78373 s!7927) a!2228)) ((_ is Nil!71925) s!7927)))))

(declare-fun b!7412853 () Bool)

(declare-fun nullableContext!416 (Context!16722) Bool)

(assert (=> b!7412853 (= e!4433313 (nullableContext!416 c!10532))))

(assert (= (and start!722242 res!2983727) b!7412849))

(assert (= (and b!7412849 res!2983724) b!7412848))

(assert (= (and b!7412848 res!2983726) b!7412850))

(assert (= (and b!7412850 res!2983728) b!7412852))

(assert (= (and b!7412852 res!2983725) b!7412853))

(assert (= (and start!722242 condSetEmpty!56355) setIsEmpty!56355))

(assert (= (and start!722242 (not condSetEmpty!56355)) setNonEmpty!56355))

(assert (= setNonEmpty!56355 b!7412851))

(assert (= start!722242 b!7412847))

(assert (= (and start!722242 ((_ is Cons!71925) s!7927)) b!7412846))

(declare-fun m!8047368 () Bool)

(assert (=> b!7412848 m!8047368))

(declare-fun m!8047370 () Bool)

(assert (=> b!7412853 m!8047370))

(declare-fun m!8047372 () Bool)

(assert (=> b!7412849 m!8047372))

(declare-fun m!8047374 () Bool)

(assert (=> b!7412850 m!8047374))

(assert (=> b!7412850 m!8047374))

(declare-fun m!8047376 () Bool)

(assert (=> b!7412850 m!8047376))

(declare-fun m!8047378 () Bool)

(assert (=> setNonEmpty!56355 m!8047378))

(declare-fun m!8047380 () Bool)

(assert (=> start!722242 m!8047380))

(declare-fun m!8047382 () Bool)

(assert (=> start!722242 m!8047382))

(check-sat (not b!7412853) (not setNonEmpty!56355) (not b!7412848) tp_is_empty!49105 (not b!7412850) (not start!722242) (not b!7412849) (not b!7412847) (not b!7412851) (not b!7412846))
(check-sat)
(get-model)

(declare-fun d!2292664 () Bool)

(declare-fun lambda!460109 () Int)

(declare-fun forall!18207 (List!72048 Int) Bool)

(assert (=> d!2292664 (= (nullableContext!416 c!10532) (forall!18207 (exprs!8861 c!10532) lambda!460109))))

(declare-fun bs!1924985 () Bool)

(assert (= bs!1924985 d!2292664))

(declare-fun m!8047392 () Bool)

(assert (=> bs!1924985 m!8047392))

(assert (=> b!7412853 d!2292664))

(declare-fun bs!1924986 () Bool)

(declare-fun d!2292678 () Bool)

(assert (= bs!1924986 (and d!2292678 d!2292664)))

(declare-fun lambda!460112 () Int)

(assert (=> bs!1924986 (not (= lambda!460112 lambda!460109))))

(assert (=> d!2292678 (= (inv!91913 setElem!56355) (forall!18207 (exprs!8861 setElem!56355) lambda!460112))))

(declare-fun bs!1924987 () Bool)

(assert (= bs!1924987 d!2292678))

(declare-fun m!8047394 () Bool)

(assert (=> bs!1924987 m!8047394))

(assert (=> setNonEmpty!56355 d!2292678))

(declare-fun d!2292680 () Bool)

(assert (=> d!2292680 (= (isEmpty!41073 (exprs!8861 c!10532)) ((_ is Nil!71924) (exprs!8861 c!10532)))))

(assert (=> b!7412849 d!2292680))

(declare-fun d!2292682 () Bool)

(assert (=> d!2292682 (= (head!15237 (exprs!8861 c!10532)) (h!78372 (exprs!8861 c!10532)))))

(assert (=> b!7412848 d!2292682))

(declare-fun bs!1924988 () Bool)

(declare-fun d!2292684 () Bool)

(assert (= bs!1924988 (and d!2292684 d!2292664)))

(declare-fun lambda!460113 () Int)

(assert (=> bs!1924988 (not (= lambda!460113 lambda!460109))))

(declare-fun bs!1924989 () Bool)

(assert (= bs!1924989 (and d!2292684 d!2292678)))

(assert (=> bs!1924989 (= lambda!460113 lambda!460112)))

(assert (=> d!2292684 (= (inv!91913 c!10532) (forall!18207 (exprs!8861 c!10532) lambda!460113))))

(declare-fun bs!1924990 () Bool)

(assert (= bs!1924990 d!2292684))

(declare-fun m!8047396 () Bool)

(assert (=> bs!1924990 m!8047396))

(assert (=> start!722242 d!2292684))

(declare-fun d!2292686 () Bool)

(assert (=> d!2292686 (= (isEmpty!41073 (tail!14838 (exprs!8861 c!10532))) ((_ is Nil!71924) (tail!14838 (exprs!8861 c!10532))))))

(assert (=> b!7412850 d!2292686))

(declare-fun d!2292688 () Bool)

(assert (=> d!2292688 (= (tail!14838 (exprs!8861 c!10532)) (t!386609 (exprs!8861 c!10532)))))

(assert (=> b!7412850 d!2292688))

(declare-fun condSetEmpty!56361 () Bool)

(assert (=> setNonEmpty!56355 (= condSetEmpty!56361 (= setRest!56355 ((as const (Array Context!16722 Bool)) false)))))

(declare-fun setRes!56361 () Bool)

(assert (=> setNonEmpty!56355 (= tp!2121925 setRes!56361)))

(declare-fun setIsEmpty!56361 () Bool)

(assert (=> setIsEmpty!56361 setRes!56361))

(declare-fun tp!2121951 () Bool)

(declare-fun setNonEmpty!56361 () Bool)

(declare-fun e!4433326 () Bool)

(declare-fun setElem!56361 () Context!16722)

(assert (=> setNonEmpty!56361 (= setRes!56361 (and tp!2121951 (inv!91913 setElem!56361) e!4433326))))

(declare-fun setRest!56361 () (InoxSet Context!16722))

(assert (=> setNonEmpty!56361 (= setRest!56355 ((_ map or) (store ((as const (Array Context!16722 Bool)) false) setElem!56361 true) setRest!56361))))

(declare-fun b!7412874 () Bool)

(declare-fun tp!2121950 () Bool)

(assert (=> b!7412874 (= e!4433326 tp!2121950)))

(assert (= (and setNonEmpty!56355 condSetEmpty!56361) setIsEmpty!56361))

(assert (= (and setNonEmpty!56355 (not condSetEmpty!56361)) setNonEmpty!56361))

(assert (= setNonEmpty!56361 b!7412874))

(declare-fun m!8047398 () Bool)

(assert (=> setNonEmpty!56361 m!8047398))

(declare-fun b!7412879 () Bool)

(declare-fun e!4433329 () Bool)

(declare-fun tp!2121956 () Bool)

(declare-fun tp!2121957 () Bool)

(assert (=> b!7412879 (= e!4433329 (and tp!2121956 tp!2121957))))

(assert (=> b!7412847 (= tp!2121927 e!4433329)))

(assert (= (and b!7412847 ((_ is Cons!71924) (exprs!8861 c!10532))) b!7412879))

(declare-fun b!7412884 () Bool)

(declare-fun e!4433332 () Bool)

(declare-fun tp!2121960 () Bool)

(assert (=> b!7412884 (= e!4433332 (and tp_is_empty!49105 tp!2121960))))

(assert (=> b!7412846 (= tp!2121926 e!4433332)))

(assert (= (and b!7412846 ((_ is Cons!71925) (t!386610 s!7927))) b!7412884))

(declare-fun b!7412885 () Bool)

(declare-fun e!4433333 () Bool)

(declare-fun tp!2121961 () Bool)

(declare-fun tp!2121962 () Bool)

(assert (=> b!7412885 (= e!4433333 (and tp!2121961 tp!2121962))))

(assert (=> b!7412851 (= tp!2121928 e!4433333)))

(assert (= (and b!7412851 ((_ is Cons!71924) (exprs!8861 setElem!56355))) b!7412885))

(check-sat (not setNonEmpty!56361) (not b!7412885) (not b!7412884) tp_is_empty!49105 (not b!7412874) (not b!7412879) (not d!2292678) (not d!2292664) (not d!2292684))
(check-sat)
(get-model)

(declare-fun d!2292704 () Bool)

(declare-fun res!2983743 () Bool)

(declare-fun e!4433357 () Bool)

(assert (=> d!2292704 (=> res!2983743 e!4433357)))

(assert (=> d!2292704 (= res!2983743 ((_ is Nil!71924) (exprs!8861 c!10532)))))

(assert (=> d!2292704 (= (forall!18207 (exprs!8861 c!10532) lambda!460113) e!4433357)))

(declare-fun b!7412923 () Bool)

(declare-fun e!4433358 () Bool)

(assert (=> b!7412923 (= e!4433357 e!4433358)))

(declare-fun res!2983744 () Bool)

(assert (=> b!7412923 (=> (not res!2983744) (not e!4433358))))

(declare-fun dynLambda!29699 (Int Regex!19421) Bool)

(assert (=> b!7412923 (= res!2983744 (dynLambda!29699 lambda!460113 (h!78372 (exprs!8861 c!10532))))))

(declare-fun b!7412924 () Bool)

(assert (=> b!7412924 (= e!4433358 (forall!18207 (t!386609 (exprs!8861 c!10532)) lambda!460113))))

(assert (= (and d!2292704 (not res!2983743)) b!7412923))

(assert (= (and b!7412923 res!2983744) b!7412924))

(declare-fun b_lambda!286795 () Bool)

(assert (=> (not b_lambda!286795) (not b!7412923)))

(declare-fun m!8047422 () Bool)

(assert (=> b!7412923 m!8047422))

(declare-fun m!8047424 () Bool)

(assert (=> b!7412924 m!8047424))

(assert (=> d!2292684 d!2292704))

(declare-fun bs!1924998 () Bool)

(declare-fun d!2292706 () Bool)

(assert (= bs!1924998 (and d!2292706 d!2292664)))

(declare-fun lambda!460115 () Int)

(assert (=> bs!1924998 (not (= lambda!460115 lambda!460109))))

(declare-fun bs!1924999 () Bool)

(assert (= bs!1924999 (and d!2292706 d!2292678)))

(assert (=> bs!1924999 (= lambda!460115 lambda!460112)))

(declare-fun bs!1925000 () Bool)

(assert (= bs!1925000 (and d!2292706 d!2292684)))

(assert (=> bs!1925000 (= lambda!460115 lambda!460113)))

(assert (=> d!2292706 (= (inv!91913 setElem!56361) (forall!18207 (exprs!8861 setElem!56361) lambda!460115))))

(declare-fun bs!1925001 () Bool)

(assert (= bs!1925001 d!2292706))

(declare-fun m!8047426 () Bool)

(assert (=> bs!1925001 m!8047426))

(assert (=> setNonEmpty!56361 d!2292706))

(declare-fun d!2292708 () Bool)

(declare-fun res!2983745 () Bool)

(declare-fun e!4433359 () Bool)

(assert (=> d!2292708 (=> res!2983745 e!4433359)))

(assert (=> d!2292708 (= res!2983745 ((_ is Nil!71924) (exprs!8861 c!10532)))))

(assert (=> d!2292708 (= (forall!18207 (exprs!8861 c!10532) lambda!460109) e!4433359)))

(declare-fun b!7412925 () Bool)

(declare-fun e!4433360 () Bool)

(assert (=> b!7412925 (= e!4433359 e!4433360)))

(declare-fun res!2983746 () Bool)

(assert (=> b!7412925 (=> (not res!2983746) (not e!4433360))))

(assert (=> b!7412925 (= res!2983746 (dynLambda!29699 lambda!460109 (h!78372 (exprs!8861 c!10532))))))

(declare-fun b!7412926 () Bool)

(assert (=> b!7412926 (= e!4433360 (forall!18207 (t!386609 (exprs!8861 c!10532)) lambda!460109))))

(assert (= (and d!2292708 (not res!2983745)) b!7412925))

(assert (= (and b!7412925 res!2983746) b!7412926))

(declare-fun b_lambda!286797 () Bool)

(assert (=> (not b_lambda!286797) (not b!7412925)))

(declare-fun m!8047428 () Bool)

(assert (=> b!7412925 m!8047428))

(declare-fun m!8047430 () Bool)

(assert (=> b!7412926 m!8047430))

(assert (=> d!2292664 d!2292708))

(declare-fun d!2292710 () Bool)

(declare-fun res!2983747 () Bool)

(declare-fun e!4433361 () Bool)

(assert (=> d!2292710 (=> res!2983747 e!4433361)))

(assert (=> d!2292710 (= res!2983747 ((_ is Nil!71924) (exprs!8861 setElem!56355)))))

(assert (=> d!2292710 (= (forall!18207 (exprs!8861 setElem!56355) lambda!460112) e!4433361)))

(declare-fun b!7412927 () Bool)

(declare-fun e!4433362 () Bool)

(assert (=> b!7412927 (= e!4433361 e!4433362)))

(declare-fun res!2983748 () Bool)

(assert (=> b!7412927 (=> (not res!2983748) (not e!4433362))))

(assert (=> b!7412927 (= res!2983748 (dynLambda!29699 lambda!460112 (h!78372 (exprs!8861 setElem!56355))))))

(declare-fun b!7412928 () Bool)

(assert (=> b!7412928 (= e!4433362 (forall!18207 (t!386609 (exprs!8861 setElem!56355)) lambda!460112))))

(assert (= (and d!2292710 (not res!2983747)) b!7412927))

(assert (= (and b!7412927 res!2983748) b!7412928))

(declare-fun b_lambda!286799 () Bool)

(assert (=> (not b_lambda!286799) (not b!7412927)))

(declare-fun m!8047432 () Bool)

(assert (=> b!7412927 m!8047432))

(declare-fun m!8047434 () Bool)

(assert (=> b!7412928 m!8047434))

(assert (=> d!2292678 d!2292710))

(declare-fun b!7412929 () Bool)

(declare-fun e!4433363 () Bool)

(declare-fun tp!2121992 () Bool)

(assert (=> b!7412929 (= e!4433363 (and tp_is_empty!49105 tp!2121992))))

(assert (=> b!7412884 (= tp!2121960 e!4433363)))

(assert (= (and b!7412884 ((_ is Cons!71925) (t!386610 (t!386610 s!7927)))) b!7412929))

(declare-fun condSetEmpty!56363 () Bool)

(assert (=> setNonEmpty!56361 (= condSetEmpty!56363 (= setRest!56361 ((as const (Array Context!16722 Bool)) false)))))

(declare-fun setRes!56363 () Bool)

(assert (=> setNonEmpty!56361 (= tp!2121951 setRes!56363)))

(declare-fun setIsEmpty!56363 () Bool)

(assert (=> setIsEmpty!56363 setRes!56363))

(declare-fun setNonEmpty!56363 () Bool)

(declare-fun tp!2121994 () Bool)

(declare-fun setElem!56363 () Context!16722)

(declare-fun e!4433364 () Bool)

(assert (=> setNonEmpty!56363 (= setRes!56363 (and tp!2121994 (inv!91913 setElem!56363) e!4433364))))

(declare-fun setRest!56363 () (InoxSet Context!16722))

(assert (=> setNonEmpty!56363 (= setRest!56361 ((_ map or) (store ((as const (Array Context!16722 Bool)) false) setElem!56363 true) setRest!56363))))

(declare-fun b!7412930 () Bool)

(declare-fun tp!2121993 () Bool)

(assert (=> b!7412930 (= e!4433364 tp!2121993)))

(assert (= (and setNonEmpty!56361 condSetEmpty!56363) setIsEmpty!56363))

(assert (= (and setNonEmpty!56361 (not condSetEmpty!56363)) setNonEmpty!56363))

(assert (= setNonEmpty!56363 b!7412930))

(declare-fun m!8047436 () Bool)

(assert (=> setNonEmpty!56363 m!8047436))

(declare-fun b!7412941 () Bool)

(declare-fun e!4433367 () Bool)

(assert (=> b!7412941 (= e!4433367 tp_is_empty!49105)))

(assert (=> b!7412879 (= tp!2121956 e!4433367)))

(declare-fun b!7412943 () Bool)

(declare-fun tp!2122007 () Bool)

(assert (=> b!7412943 (= e!4433367 tp!2122007)))

(declare-fun b!7412942 () Bool)

(declare-fun tp!2122009 () Bool)

(declare-fun tp!2122006 () Bool)

(assert (=> b!7412942 (= e!4433367 (and tp!2122009 tp!2122006))))

(declare-fun b!7412944 () Bool)

(declare-fun tp!2122008 () Bool)

(declare-fun tp!2122005 () Bool)

(assert (=> b!7412944 (= e!4433367 (and tp!2122008 tp!2122005))))

(assert (= (and b!7412879 ((_ is ElementMatch!19421) (h!78372 (exprs!8861 c!10532)))) b!7412941))

(assert (= (and b!7412879 ((_ is Concat!28266) (h!78372 (exprs!8861 c!10532)))) b!7412942))

(assert (= (and b!7412879 ((_ is Star!19421) (h!78372 (exprs!8861 c!10532)))) b!7412943))

(assert (= (and b!7412879 ((_ is Union!19421) (h!78372 (exprs!8861 c!10532)))) b!7412944))

(declare-fun b!7412945 () Bool)

(declare-fun e!4433368 () Bool)

(declare-fun tp!2122010 () Bool)

(declare-fun tp!2122011 () Bool)

(assert (=> b!7412945 (= e!4433368 (and tp!2122010 tp!2122011))))

(assert (=> b!7412879 (= tp!2121957 e!4433368)))

(assert (= (and b!7412879 ((_ is Cons!71924) (t!386609 (exprs!8861 c!10532)))) b!7412945))

(declare-fun b!7412946 () Bool)

(declare-fun e!4433369 () Bool)

(declare-fun tp!2122012 () Bool)

(declare-fun tp!2122013 () Bool)

(assert (=> b!7412946 (= e!4433369 (and tp!2122012 tp!2122013))))

(assert (=> b!7412874 (= tp!2121950 e!4433369)))

(assert (= (and b!7412874 ((_ is Cons!71924) (exprs!8861 setElem!56361))) b!7412946))

(declare-fun b!7412947 () Bool)

(declare-fun e!4433370 () Bool)

(assert (=> b!7412947 (= e!4433370 tp_is_empty!49105)))

(assert (=> b!7412885 (= tp!2121961 e!4433370)))

(declare-fun b!7412949 () Bool)

(declare-fun tp!2122016 () Bool)

(assert (=> b!7412949 (= e!4433370 tp!2122016)))

(declare-fun b!7412948 () Bool)

(declare-fun tp!2122018 () Bool)

(declare-fun tp!2122015 () Bool)

(assert (=> b!7412948 (= e!4433370 (and tp!2122018 tp!2122015))))

(declare-fun b!7412950 () Bool)

(declare-fun tp!2122017 () Bool)

(declare-fun tp!2122014 () Bool)

(assert (=> b!7412950 (= e!4433370 (and tp!2122017 tp!2122014))))

(assert (= (and b!7412885 ((_ is ElementMatch!19421) (h!78372 (exprs!8861 setElem!56355)))) b!7412947))

(assert (= (and b!7412885 ((_ is Concat!28266) (h!78372 (exprs!8861 setElem!56355)))) b!7412948))

(assert (= (and b!7412885 ((_ is Star!19421) (h!78372 (exprs!8861 setElem!56355)))) b!7412949))

(assert (= (and b!7412885 ((_ is Union!19421) (h!78372 (exprs!8861 setElem!56355)))) b!7412950))

(declare-fun b!7412951 () Bool)

(declare-fun e!4433371 () Bool)

(declare-fun tp!2122019 () Bool)

(declare-fun tp!2122020 () Bool)

(assert (=> b!7412951 (= e!4433371 (and tp!2122019 tp!2122020))))

(assert (=> b!7412885 (= tp!2121962 e!4433371)))

(assert (= (and b!7412885 ((_ is Cons!71924) (t!386609 (exprs!8861 setElem!56355)))) b!7412951))

(declare-fun b_lambda!286801 () Bool)

(assert (= b_lambda!286797 (or d!2292664 b_lambda!286801)))

(declare-fun bs!1925002 () Bool)

(declare-fun d!2292712 () Bool)

(assert (= bs!1925002 (and d!2292712 d!2292664)))

(declare-fun nullable!8465 (Regex!19421) Bool)

(assert (=> bs!1925002 (= (dynLambda!29699 lambda!460109 (h!78372 (exprs!8861 c!10532))) (nullable!8465 (h!78372 (exprs!8861 c!10532))))))

(declare-fun m!8047438 () Bool)

(assert (=> bs!1925002 m!8047438))

(assert (=> b!7412925 d!2292712))

(declare-fun b_lambda!286803 () Bool)

(assert (= b_lambda!286799 (or d!2292678 b_lambda!286803)))

(declare-fun bs!1925003 () Bool)

(declare-fun d!2292714 () Bool)

(assert (= bs!1925003 (and d!2292714 d!2292678)))

(declare-fun validRegex!9969 (Regex!19421) Bool)

(assert (=> bs!1925003 (= (dynLambda!29699 lambda!460112 (h!78372 (exprs!8861 setElem!56355))) (validRegex!9969 (h!78372 (exprs!8861 setElem!56355))))))

(declare-fun m!8047440 () Bool)

(assert (=> bs!1925003 m!8047440))

(assert (=> b!7412927 d!2292714))

(declare-fun b_lambda!286805 () Bool)

(assert (= b_lambda!286795 (or d!2292684 b_lambda!286805)))

(declare-fun bs!1925004 () Bool)

(declare-fun d!2292716 () Bool)

(assert (= bs!1925004 (and d!2292716 d!2292684)))

(assert (=> bs!1925004 (= (dynLambda!29699 lambda!460113 (h!78372 (exprs!8861 c!10532))) (validRegex!9969 (h!78372 (exprs!8861 c!10532))))))

(declare-fun m!8047442 () Bool)

(assert (=> bs!1925004 m!8047442))

(assert (=> b!7412923 d!2292716))

(check-sat (not bs!1925003) (not b!7412950) (not b!7412945) (not d!2292706) (not b!7412949) (not b!7412943) (not b!7412951) (not b!7412930) (not b!7412929) (not b!7412928) (not b!7412926) (not b!7412948) (not b_lambda!286805) (not b!7412942) (not setNonEmpty!56363) (not bs!1925002) (not b!7412944) (not b_lambda!286803) (not bs!1925004) tp_is_empty!49105 (not b!7412946) (not b!7412924) (not b_lambda!286801))
(check-sat)
(get-model)

(declare-fun d!2292734 () Bool)

(declare-fun res!2983777 () Bool)

(declare-fun e!4433421 () Bool)

(assert (=> d!2292734 (=> res!2983777 e!4433421)))

(assert (=> d!2292734 (= res!2983777 ((_ is Nil!71924) (t!386609 (exprs!8861 setElem!56355))))))

(assert (=> d!2292734 (= (forall!18207 (t!386609 (exprs!8861 setElem!56355)) lambda!460112) e!4433421)))

(declare-fun b!7413039 () Bool)

(declare-fun e!4433422 () Bool)

(assert (=> b!7413039 (= e!4433421 e!4433422)))

(declare-fun res!2983778 () Bool)

(assert (=> b!7413039 (=> (not res!2983778) (not e!4433422))))

(assert (=> b!7413039 (= res!2983778 (dynLambda!29699 lambda!460112 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))))

(declare-fun b!7413040 () Bool)

(assert (=> b!7413040 (= e!4433422 (forall!18207 (t!386609 (t!386609 (exprs!8861 setElem!56355))) lambda!460112))))

(assert (= (and d!2292734 (not res!2983777)) b!7413039))

(assert (= (and b!7413039 res!2983778) b!7413040))

(declare-fun b_lambda!286815 () Bool)

(assert (=> (not b_lambda!286815) (not b!7413039)))

(declare-fun m!8047476 () Bool)

(assert (=> b!7413039 m!8047476))

(declare-fun m!8047478 () Bool)

(assert (=> b!7413040 m!8047478))

(assert (=> b!7412928 d!2292734))

(declare-fun d!2292736 () Bool)

(declare-fun res!2983779 () Bool)

(declare-fun e!4433425 () Bool)

(assert (=> d!2292736 (=> res!2983779 e!4433425)))

(assert (=> d!2292736 (= res!2983779 ((_ is Nil!71924) (t!386609 (exprs!8861 c!10532))))))

(assert (=> d!2292736 (= (forall!18207 (t!386609 (exprs!8861 c!10532)) lambda!460113) e!4433425)))

(declare-fun b!7413046 () Bool)

(declare-fun e!4433426 () Bool)

(assert (=> b!7413046 (= e!4433425 e!4433426)))

(declare-fun res!2983780 () Bool)

(assert (=> b!7413046 (=> (not res!2983780) (not e!4433426))))

(assert (=> b!7413046 (= res!2983780 (dynLambda!29699 lambda!460113 (h!78372 (t!386609 (exprs!8861 c!10532)))))))

(declare-fun b!7413047 () Bool)

(assert (=> b!7413047 (= e!4433426 (forall!18207 (t!386609 (t!386609 (exprs!8861 c!10532))) lambda!460113))))

(assert (= (and d!2292736 (not res!2983779)) b!7413046))

(assert (= (and b!7413046 res!2983780) b!7413047))

(declare-fun b_lambda!286817 () Bool)

(assert (=> (not b_lambda!286817) (not b!7413046)))

(declare-fun m!8047482 () Bool)

(assert (=> b!7413046 m!8047482))

(declare-fun m!8047484 () Bool)

(assert (=> b!7413047 m!8047484))

(assert (=> b!7412924 d!2292736))

(declare-fun d!2292738 () Bool)

(declare-fun nullableFct!3412 (Regex!19421) Bool)

(assert (=> d!2292738 (= (nullable!8465 (h!78372 (exprs!8861 c!10532))) (nullableFct!3412 (h!78372 (exprs!8861 c!10532))))))

(declare-fun bs!1925015 () Bool)

(assert (= bs!1925015 d!2292738))

(declare-fun m!8047494 () Bool)

(assert (=> bs!1925015 m!8047494))

(assert (=> bs!1925002 d!2292738))

(declare-fun d!2292748 () Bool)

(declare-fun res!2983781 () Bool)

(declare-fun e!4433431 () Bool)

(assert (=> d!2292748 (=> res!2983781 e!4433431)))

(assert (=> d!2292748 (= res!2983781 ((_ is Nil!71924) (exprs!8861 setElem!56361)))))

(assert (=> d!2292748 (= (forall!18207 (exprs!8861 setElem!56361) lambda!460115) e!4433431)))

(declare-fun b!7413058 () Bool)

(declare-fun e!4433432 () Bool)

(assert (=> b!7413058 (= e!4433431 e!4433432)))

(declare-fun res!2983782 () Bool)

(assert (=> b!7413058 (=> (not res!2983782) (not e!4433432))))

(assert (=> b!7413058 (= res!2983782 (dynLambda!29699 lambda!460115 (h!78372 (exprs!8861 setElem!56361))))))

(declare-fun b!7413059 () Bool)

(assert (=> b!7413059 (= e!4433432 (forall!18207 (t!386609 (exprs!8861 setElem!56361)) lambda!460115))))

(assert (= (and d!2292748 (not res!2983781)) b!7413058))

(assert (= (and b!7413058 res!2983782) b!7413059))

(declare-fun b_lambda!286827 () Bool)

(assert (=> (not b_lambda!286827) (not b!7413058)))

(declare-fun m!8047496 () Bool)

(assert (=> b!7413058 m!8047496))

(declare-fun m!8047498 () Bool)

(assert (=> b!7413059 m!8047498))

(assert (=> d!2292706 d!2292748))

(declare-fun b!7413078 () Bool)

(declare-fun e!4433448 () Bool)

(declare-fun call!682593 () Bool)

(assert (=> b!7413078 (= e!4433448 call!682593)))

(declare-fun d!2292750 () Bool)

(declare-fun res!2983797 () Bool)

(declare-fun e!4433447 () Bool)

(assert (=> d!2292750 (=> res!2983797 e!4433447)))

(assert (=> d!2292750 (= res!2983797 ((_ is ElementMatch!19421) (h!78372 (exprs!8861 c!10532))))))

(assert (=> d!2292750 (= (validRegex!9969 (h!78372 (exprs!8861 c!10532))) e!4433447)))

(declare-fun b!7413079 () Bool)

(declare-fun e!4433449 () Bool)

(declare-fun call!682591 () Bool)

(assert (=> b!7413079 (= e!4433449 call!682591)))

(declare-fun c!1375852 () Bool)

(declare-fun bm!682586 () Bool)

(declare-fun c!1375853 () Bool)

(assert (=> bm!682586 (= call!682593 (validRegex!9969 (ite c!1375853 (reg!19750 (h!78372 (exprs!8861 c!10532))) (ite c!1375852 (regOne!39355 (h!78372 (exprs!8861 c!10532))) (regOne!39354 (h!78372 (exprs!8861 c!10532)))))))))

(declare-fun bm!682587 () Bool)

(assert (=> bm!682587 (= call!682591 (validRegex!9969 (ite c!1375852 (regTwo!39355 (h!78372 (exprs!8861 c!10532))) (regTwo!39354 (h!78372 (exprs!8861 c!10532))))))))

(declare-fun bm!682588 () Bool)

(declare-fun call!682592 () Bool)

(assert (=> bm!682588 (= call!682592 call!682593)))

(declare-fun b!7413080 () Bool)

(declare-fun e!4433451 () Bool)

(assert (=> b!7413080 (= e!4433451 e!4433449)))

(declare-fun res!2983794 () Bool)

(assert (=> b!7413080 (=> (not res!2983794) (not e!4433449))))

(assert (=> b!7413080 (= res!2983794 call!682592)))

(declare-fun b!7413081 () Bool)

(declare-fun res!2983793 () Bool)

(assert (=> b!7413081 (=> res!2983793 e!4433451)))

(assert (=> b!7413081 (= res!2983793 (not ((_ is Concat!28266) (h!78372 (exprs!8861 c!10532)))))))

(declare-fun e!4433450 () Bool)

(assert (=> b!7413081 (= e!4433450 e!4433451)))

(declare-fun b!7413082 () Bool)

(declare-fun e!4433452 () Bool)

(assert (=> b!7413082 (= e!4433447 e!4433452)))

(assert (=> b!7413082 (= c!1375853 ((_ is Star!19421) (h!78372 (exprs!8861 c!10532))))))

(declare-fun b!7413083 () Bool)

(declare-fun res!2983795 () Bool)

(declare-fun e!4433453 () Bool)

(assert (=> b!7413083 (=> (not res!2983795) (not e!4433453))))

(assert (=> b!7413083 (= res!2983795 call!682592)))

(assert (=> b!7413083 (= e!4433450 e!4433453)))

(declare-fun b!7413084 () Bool)

(assert (=> b!7413084 (= e!4433452 e!4433448)))

(declare-fun res!2983796 () Bool)

(assert (=> b!7413084 (= res!2983796 (not (nullable!8465 (reg!19750 (h!78372 (exprs!8861 c!10532))))))))

(assert (=> b!7413084 (=> (not res!2983796) (not e!4433448))))

(declare-fun b!7413085 () Bool)

(assert (=> b!7413085 (= e!4433452 e!4433450)))

(assert (=> b!7413085 (= c!1375852 ((_ is Union!19421) (h!78372 (exprs!8861 c!10532))))))

(declare-fun b!7413086 () Bool)

(assert (=> b!7413086 (= e!4433453 call!682591)))

(assert (= (and d!2292750 (not res!2983797)) b!7413082))

(assert (= (and b!7413082 c!1375853) b!7413084))

(assert (= (and b!7413082 (not c!1375853)) b!7413085))

(assert (= (and b!7413084 res!2983796) b!7413078))

(assert (= (and b!7413085 c!1375852) b!7413083))

(assert (= (and b!7413085 (not c!1375852)) b!7413081))

(assert (= (and b!7413083 res!2983795) b!7413086))

(assert (= (and b!7413081 (not res!2983793)) b!7413080))

(assert (= (and b!7413080 res!2983794) b!7413079))

(assert (= (or b!7413083 b!7413080) bm!682588))

(assert (= (or b!7413086 b!7413079) bm!682587))

(assert (= (or b!7413078 bm!682588) bm!682586))

(declare-fun m!8047500 () Bool)

(assert (=> bm!682586 m!8047500))

(declare-fun m!8047502 () Bool)

(assert (=> bm!682587 m!8047502))

(declare-fun m!8047504 () Bool)

(assert (=> b!7413084 m!8047504))

(assert (=> bs!1925004 d!2292750))

(declare-fun bs!1925016 () Bool)

(declare-fun d!2292752 () Bool)

(assert (= bs!1925016 (and d!2292752 d!2292664)))

(declare-fun lambda!460117 () Int)

(assert (=> bs!1925016 (not (= lambda!460117 lambda!460109))))

(declare-fun bs!1925017 () Bool)

(assert (= bs!1925017 (and d!2292752 d!2292678)))

(assert (=> bs!1925017 (= lambda!460117 lambda!460112)))

(declare-fun bs!1925018 () Bool)

(assert (= bs!1925018 (and d!2292752 d!2292684)))

(assert (=> bs!1925018 (= lambda!460117 lambda!460113)))

(declare-fun bs!1925019 () Bool)

(assert (= bs!1925019 (and d!2292752 d!2292706)))

(assert (=> bs!1925019 (= lambda!460117 lambda!460115)))

(assert (=> d!2292752 (= (inv!91913 setElem!56363) (forall!18207 (exprs!8861 setElem!56363) lambda!460117))))

(declare-fun bs!1925020 () Bool)

(assert (= bs!1925020 d!2292752))

(declare-fun m!8047506 () Bool)

(assert (=> bs!1925020 m!8047506))

(assert (=> setNonEmpty!56363 d!2292752))

(declare-fun d!2292754 () Bool)

(declare-fun res!2983798 () Bool)

(declare-fun e!4433454 () Bool)

(assert (=> d!2292754 (=> res!2983798 e!4433454)))

(assert (=> d!2292754 (= res!2983798 ((_ is Nil!71924) (t!386609 (exprs!8861 c!10532))))))

(assert (=> d!2292754 (= (forall!18207 (t!386609 (exprs!8861 c!10532)) lambda!460109) e!4433454)))

(declare-fun b!7413087 () Bool)

(declare-fun e!4433455 () Bool)

(assert (=> b!7413087 (= e!4433454 e!4433455)))

(declare-fun res!2983799 () Bool)

(assert (=> b!7413087 (=> (not res!2983799) (not e!4433455))))

(assert (=> b!7413087 (= res!2983799 (dynLambda!29699 lambda!460109 (h!78372 (t!386609 (exprs!8861 c!10532)))))))

(declare-fun b!7413088 () Bool)

(assert (=> b!7413088 (= e!4433455 (forall!18207 (t!386609 (t!386609 (exprs!8861 c!10532))) lambda!460109))))

(assert (= (and d!2292754 (not res!2983798)) b!7413087))

(assert (= (and b!7413087 res!2983799) b!7413088))

(declare-fun b_lambda!286829 () Bool)

(assert (=> (not b_lambda!286829) (not b!7413087)))

(declare-fun m!8047508 () Bool)

(assert (=> b!7413087 m!8047508))

(declare-fun m!8047510 () Bool)

(assert (=> b!7413088 m!8047510))

(assert (=> b!7412926 d!2292754))

(declare-fun b!7413089 () Bool)

(declare-fun e!4433457 () Bool)

(declare-fun call!682596 () Bool)

(assert (=> b!7413089 (= e!4433457 call!682596)))

(declare-fun d!2292756 () Bool)

(declare-fun res!2983804 () Bool)

(declare-fun e!4433456 () Bool)

(assert (=> d!2292756 (=> res!2983804 e!4433456)))

(assert (=> d!2292756 (= res!2983804 ((_ is ElementMatch!19421) (h!78372 (exprs!8861 setElem!56355))))))

(assert (=> d!2292756 (= (validRegex!9969 (h!78372 (exprs!8861 setElem!56355))) e!4433456)))

(declare-fun b!7413090 () Bool)

(declare-fun e!4433458 () Bool)

(declare-fun call!682594 () Bool)

(assert (=> b!7413090 (= e!4433458 call!682594)))

(declare-fun bm!682589 () Bool)

(declare-fun c!1375854 () Bool)

(declare-fun c!1375855 () Bool)

(assert (=> bm!682589 (= call!682596 (validRegex!9969 (ite c!1375855 (reg!19750 (h!78372 (exprs!8861 setElem!56355))) (ite c!1375854 (regOne!39355 (h!78372 (exprs!8861 setElem!56355))) (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))))))

(declare-fun bm!682590 () Bool)

(assert (=> bm!682590 (= call!682594 (validRegex!9969 (ite c!1375854 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355))))))))

(declare-fun bm!682591 () Bool)

(declare-fun call!682595 () Bool)

(assert (=> bm!682591 (= call!682595 call!682596)))

(declare-fun b!7413091 () Bool)

(declare-fun e!4433460 () Bool)

(assert (=> b!7413091 (= e!4433460 e!4433458)))

(declare-fun res!2983801 () Bool)

(assert (=> b!7413091 (=> (not res!2983801) (not e!4433458))))

(assert (=> b!7413091 (= res!2983801 call!682595)))

(declare-fun b!7413092 () Bool)

(declare-fun res!2983800 () Bool)

(assert (=> b!7413092 (=> res!2983800 e!4433460)))

(assert (=> b!7413092 (= res!2983800 (not ((_ is Concat!28266) (h!78372 (exprs!8861 setElem!56355)))))))

(declare-fun e!4433459 () Bool)

(assert (=> b!7413092 (= e!4433459 e!4433460)))

(declare-fun b!7413093 () Bool)

(declare-fun e!4433461 () Bool)

(assert (=> b!7413093 (= e!4433456 e!4433461)))

(assert (=> b!7413093 (= c!1375855 ((_ is Star!19421) (h!78372 (exprs!8861 setElem!56355))))))

(declare-fun b!7413094 () Bool)

(declare-fun res!2983802 () Bool)

(declare-fun e!4433462 () Bool)

(assert (=> b!7413094 (=> (not res!2983802) (not e!4433462))))

(assert (=> b!7413094 (= res!2983802 call!682595)))

(assert (=> b!7413094 (= e!4433459 e!4433462)))

(declare-fun b!7413095 () Bool)

(assert (=> b!7413095 (= e!4433461 e!4433457)))

(declare-fun res!2983803 () Bool)

(assert (=> b!7413095 (= res!2983803 (not (nullable!8465 (reg!19750 (h!78372 (exprs!8861 setElem!56355))))))))

(assert (=> b!7413095 (=> (not res!2983803) (not e!4433457))))

(declare-fun b!7413096 () Bool)

(assert (=> b!7413096 (= e!4433461 e!4433459)))

(assert (=> b!7413096 (= c!1375854 ((_ is Union!19421) (h!78372 (exprs!8861 setElem!56355))))))

(declare-fun b!7413097 () Bool)

(assert (=> b!7413097 (= e!4433462 call!682594)))

(assert (= (and d!2292756 (not res!2983804)) b!7413093))

(assert (= (and b!7413093 c!1375855) b!7413095))

(assert (= (and b!7413093 (not c!1375855)) b!7413096))

(assert (= (and b!7413095 res!2983803) b!7413089))

(assert (= (and b!7413096 c!1375854) b!7413094))

(assert (= (and b!7413096 (not c!1375854)) b!7413092))

(assert (= (and b!7413094 res!2983802) b!7413097))

(assert (= (and b!7413092 (not res!2983800)) b!7413091))

(assert (= (and b!7413091 res!2983801) b!7413090))

(assert (= (or b!7413094 b!7413091) bm!682591))

(assert (= (or b!7413097 b!7413090) bm!682590))

(assert (= (or b!7413089 bm!682591) bm!682589))

(declare-fun m!8047512 () Bool)

(assert (=> bm!682589 m!8047512))

(declare-fun m!8047514 () Bool)

(assert (=> bm!682590 m!8047514))

(declare-fun m!8047516 () Bool)

(assert (=> b!7413095 m!8047516))

(assert (=> bs!1925003 d!2292756))

(declare-fun b!7413098 () Bool)

(declare-fun e!4433463 () Bool)

(assert (=> b!7413098 (= e!4433463 tp_is_empty!49105)))

(assert (=> b!7412950 (= tp!2122017 e!4433463)))

(declare-fun b!7413100 () Bool)

(declare-fun tp!2122099 () Bool)

(assert (=> b!7413100 (= e!4433463 tp!2122099)))

(declare-fun b!7413099 () Bool)

(declare-fun tp!2122101 () Bool)

(declare-fun tp!2122098 () Bool)

(assert (=> b!7413099 (= e!4433463 (and tp!2122101 tp!2122098))))

(declare-fun b!7413101 () Bool)

(declare-fun tp!2122100 () Bool)

(declare-fun tp!2122097 () Bool)

(assert (=> b!7413101 (= e!4433463 (and tp!2122100 tp!2122097))))

(assert (= (and b!7412950 ((_ is ElementMatch!19421) (regOne!39355 (h!78372 (exprs!8861 setElem!56355))))) b!7413098))

(assert (= (and b!7412950 ((_ is Concat!28266) (regOne!39355 (h!78372 (exprs!8861 setElem!56355))))) b!7413099))

(assert (= (and b!7412950 ((_ is Star!19421) (regOne!39355 (h!78372 (exprs!8861 setElem!56355))))) b!7413100))

(assert (= (and b!7412950 ((_ is Union!19421) (regOne!39355 (h!78372 (exprs!8861 setElem!56355))))) b!7413101))

(declare-fun b!7413102 () Bool)

(declare-fun e!4433464 () Bool)

(assert (=> b!7413102 (= e!4433464 tp_is_empty!49105)))

(assert (=> b!7412950 (= tp!2122014 e!4433464)))

(declare-fun b!7413104 () Bool)

(declare-fun tp!2122104 () Bool)

(assert (=> b!7413104 (= e!4433464 tp!2122104)))

(declare-fun b!7413103 () Bool)

(declare-fun tp!2122106 () Bool)

(declare-fun tp!2122103 () Bool)

(assert (=> b!7413103 (= e!4433464 (and tp!2122106 tp!2122103))))

(declare-fun b!7413105 () Bool)

(declare-fun tp!2122105 () Bool)

(declare-fun tp!2122102 () Bool)

(assert (=> b!7413105 (= e!4433464 (and tp!2122105 tp!2122102))))

(assert (= (and b!7412950 ((_ is ElementMatch!19421) (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))))) b!7413102))

(assert (= (and b!7412950 ((_ is Concat!28266) (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))))) b!7413103))

(assert (= (and b!7412950 ((_ is Star!19421) (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))))) b!7413104))

(assert (= (and b!7412950 ((_ is Union!19421) (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))))) b!7413105))

(declare-fun b!7413106 () Bool)

(declare-fun e!4433465 () Bool)

(assert (=> b!7413106 (= e!4433465 tp_is_empty!49105)))

(assert (=> b!7412949 (= tp!2122016 e!4433465)))

(declare-fun b!7413108 () Bool)

(declare-fun tp!2122109 () Bool)

(assert (=> b!7413108 (= e!4433465 tp!2122109)))

(declare-fun b!7413107 () Bool)

(declare-fun tp!2122111 () Bool)

(declare-fun tp!2122108 () Bool)

(assert (=> b!7413107 (= e!4433465 (and tp!2122111 tp!2122108))))

(declare-fun b!7413109 () Bool)

(declare-fun tp!2122110 () Bool)

(declare-fun tp!2122107 () Bool)

(assert (=> b!7413109 (= e!4433465 (and tp!2122110 tp!2122107))))

(assert (= (and b!7412949 ((_ is ElementMatch!19421) (reg!19750 (h!78372 (exprs!8861 setElem!56355))))) b!7413106))

(assert (= (and b!7412949 ((_ is Concat!28266) (reg!19750 (h!78372 (exprs!8861 setElem!56355))))) b!7413107))

(assert (= (and b!7412949 ((_ is Star!19421) (reg!19750 (h!78372 (exprs!8861 setElem!56355))))) b!7413108))

(assert (= (and b!7412949 ((_ is Union!19421) (reg!19750 (h!78372 (exprs!8861 setElem!56355))))) b!7413109))

(declare-fun b!7413110 () Bool)

(declare-fun e!4433466 () Bool)

(assert (=> b!7413110 (= e!4433466 tp_is_empty!49105)))

(assert (=> b!7412942 (= tp!2122009 e!4433466)))

(declare-fun b!7413112 () Bool)

(declare-fun tp!2122114 () Bool)

(assert (=> b!7413112 (= e!4433466 tp!2122114)))

(declare-fun b!7413111 () Bool)

(declare-fun tp!2122116 () Bool)

(declare-fun tp!2122113 () Bool)

(assert (=> b!7413111 (= e!4433466 (and tp!2122116 tp!2122113))))

(declare-fun b!7413113 () Bool)

(declare-fun tp!2122115 () Bool)

(declare-fun tp!2122112 () Bool)

(assert (=> b!7413113 (= e!4433466 (and tp!2122115 tp!2122112))))

(assert (= (and b!7412942 ((_ is ElementMatch!19421) (regOne!39354 (h!78372 (exprs!8861 c!10532))))) b!7413110))

(assert (= (and b!7412942 ((_ is Concat!28266) (regOne!39354 (h!78372 (exprs!8861 c!10532))))) b!7413111))

(assert (= (and b!7412942 ((_ is Star!19421) (regOne!39354 (h!78372 (exprs!8861 c!10532))))) b!7413112))

(assert (= (and b!7412942 ((_ is Union!19421) (regOne!39354 (h!78372 (exprs!8861 c!10532))))) b!7413113))

(declare-fun b!7413114 () Bool)

(declare-fun e!4433467 () Bool)

(assert (=> b!7413114 (= e!4433467 tp_is_empty!49105)))

(assert (=> b!7412942 (= tp!2122006 e!4433467)))

(declare-fun b!7413116 () Bool)

(declare-fun tp!2122119 () Bool)

(assert (=> b!7413116 (= e!4433467 tp!2122119)))

(declare-fun b!7413115 () Bool)

(declare-fun tp!2122121 () Bool)

(declare-fun tp!2122118 () Bool)

(assert (=> b!7413115 (= e!4433467 (and tp!2122121 tp!2122118))))

(declare-fun b!7413117 () Bool)

(declare-fun tp!2122120 () Bool)

(declare-fun tp!2122117 () Bool)

(assert (=> b!7413117 (= e!4433467 (and tp!2122120 tp!2122117))))

(assert (= (and b!7412942 ((_ is ElementMatch!19421) (regTwo!39354 (h!78372 (exprs!8861 c!10532))))) b!7413114))

(assert (= (and b!7412942 ((_ is Concat!28266) (regTwo!39354 (h!78372 (exprs!8861 c!10532))))) b!7413115))

(assert (= (and b!7412942 ((_ is Star!19421) (regTwo!39354 (h!78372 (exprs!8861 c!10532))))) b!7413116))

(assert (= (and b!7412942 ((_ is Union!19421) (regTwo!39354 (h!78372 (exprs!8861 c!10532))))) b!7413117))

(declare-fun b!7413118 () Bool)

(declare-fun e!4433468 () Bool)

(assert (=> b!7413118 (= e!4433468 tp_is_empty!49105)))

(assert (=> b!7412946 (= tp!2122012 e!4433468)))

(declare-fun b!7413120 () Bool)

(declare-fun tp!2122124 () Bool)

(assert (=> b!7413120 (= e!4433468 tp!2122124)))

(declare-fun b!7413119 () Bool)

(declare-fun tp!2122126 () Bool)

(declare-fun tp!2122123 () Bool)

(assert (=> b!7413119 (= e!4433468 (and tp!2122126 tp!2122123))))

(declare-fun b!7413121 () Bool)

(declare-fun tp!2122125 () Bool)

(declare-fun tp!2122122 () Bool)

(assert (=> b!7413121 (= e!4433468 (and tp!2122125 tp!2122122))))

(assert (= (and b!7412946 ((_ is ElementMatch!19421) (h!78372 (exprs!8861 setElem!56361)))) b!7413118))

(assert (= (and b!7412946 ((_ is Concat!28266) (h!78372 (exprs!8861 setElem!56361)))) b!7413119))

(assert (= (and b!7412946 ((_ is Star!19421) (h!78372 (exprs!8861 setElem!56361)))) b!7413120))

(assert (= (and b!7412946 ((_ is Union!19421) (h!78372 (exprs!8861 setElem!56361)))) b!7413121))

(declare-fun b!7413122 () Bool)

(declare-fun e!4433469 () Bool)

(declare-fun tp!2122127 () Bool)

(declare-fun tp!2122128 () Bool)

(assert (=> b!7413122 (= e!4433469 (and tp!2122127 tp!2122128))))

(assert (=> b!7412946 (= tp!2122013 e!4433469)))

(assert (= (and b!7412946 ((_ is Cons!71924) (t!386609 (exprs!8861 setElem!56361)))) b!7413122))

(declare-fun b!7413123 () Bool)

(declare-fun e!4433470 () Bool)

(assert (=> b!7413123 (= e!4433470 tp_is_empty!49105)))

(assert (=> b!7412943 (= tp!2122007 e!4433470)))

(declare-fun b!7413125 () Bool)

(declare-fun tp!2122131 () Bool)

(assert (=> b!7413125 (= e!4433470 tp!2122131)))

(declare-fun b!7413124 () Bool)

(declare-fun tp!2122133 () Bool)

(declare-fun tp!2122130 () Bool)

(assert (=> b!7413124 (= e!4433470 (and tp!2122133 tp!2122130))))

(declare-fun b!7413126 () Bool)

(declare-fun tp!2122132 () Bool)

(declare-fun tp!2122129 () Bool)

(assert (=> b!7413126 (= e!4433470 (and tp!2122132 tp!2122129))))

(assert (= (and b!7412943 ((_ is ElementMatch!19421) (reg!19750 (h!78372 (exprs!8861 c!10532))))) b!7413123))

(assert (= (and b!7412943 ((_ is Concat!28266) (reg!19750 (h!78372 (exprs!8861 c!10532))))) b!7413124))

(assert (= (and b!7412943 ((_ is Star!19421) (reg!19750 (h!78372 (exprs!8861 c!10532))))) b!7413125))

(assert (= (and b!7412943 ((_ is Union!19421) (reg!19750 (h!78372 (exprs!8861 c!10532))))) b!7413126))

(declare-fun b!7413127 () Bool)

(declare-fun e!4433471 () Bool)

(assert (=> b!7413127 (= e!4433471 tp_is_empty!49105)))

(assert (=> b!7412951 (= tp!2122019 e!4433471)))

(declare-fun b!7413129 () Bool)

(declare-fun tp!2122136 () Bool)

(assert (=> b!7413129 (= e!4433471 tp!2122136)))

(declare-fun b!7413128 () Bool)

(declare-fun tp!2122138 () Bool)

(declare-fun tp!2122135 () Bool)

(assert (=> b!7413128 (= e!4433471 (and tp!2122138 tp!2122135))))

(declare-fun b!7413130 () Bool)

(declare-fun tp!2122137 () Bool)

(declare-fun tp!2122134 () Bool)

(assert (=> b!7413130 (= e!4433471 (and tp!2122137 tp!2122134))))

(assert (= (and b!7412951 ((_ is ElementMatch!19421) (h!78372 (t!386609 (exprs!8861 setElem!56355))))) b!7413127))

(assert (= (and b!7412951 ((_ is Concat!28266) (h!78372 (t!386609 (exprs!8861 setElem!56355))))) b!7413128))

(assert (= (and b!7412951 ((_ is Star!19421) (h!78372 (t!386609 (exprs!8861 setElem!56355))))) b!7413129))

(assert (= (and b!7412951 ((_ is Union!19421) (h!78372 (t!386609 (exprs!8861 setElem!56355))))) b!7413130))

(declare-fun b!7413131 () Bool)

(declare-fun e!4433472 () Bool)

(declare-fun tp!2122139 () Bool)

(declare-fun tp!2122140 () Bool)

(assert (=> b!7413131 (= e!4433472 (and tp!2122139 tp!2122140))))

(assert (=> b!7412951 (= tp!2122020 e!4433472)))

(assert (= (and b!7412951 ((_ is Cons!71924) (t!386609 (t!386609 (exprs!8861 setElem!56355))))) b!7413131))

(declare-fun b!7413132 () Bool)

(declare-fun e!4433473 () Bool)

(assert (=> b!7413132 (= e!4433473 tp_is_empty!49105)))

(assert (=> b!7412944 (= tp!2122008 e!4433473)))

(declare-fun b!7413134 () Bool)

(declare-fun tp!2122143 () Bool)

(assert (=> b!7413134 (= e!4433473 tp!2122143)))

(declare-fun b!7413133 () Bool)

(declare-fun tp!2122145 () Bool)

(declare-fun tp!2122142 () Bool)

(assert (=> b!7413133 (= e!4433473 (and tp!2122145 tp!2122142))))

(declare-fun b!7413135 () Bool)

(declare-fun tp!2122144 () Bool)

(declare-fun tp!2122141 () Bool)

(assert (=> b!7413135 (= e!4433473 (and tp!2122144 tp!2122141))))

(assert (= (and b!7412944 ((_ is ElementMatch!19421) (regOne!39355 (h!78372 (exprs!8861 c!10532))))) b!7413132))

(assert (= (and b!7412944 ((_ is Concat!28266) (regOne!39355 (h!78372 (exprs!8861 c!10532))))) b!7413133))

(assert (= (and b!7412944 ((_ is Star!19421) (regOne!39355 (h!78372 (exprs!8861 c!10532))))) b!7413134))

(assert (= (and b!7412944 ((_ is Union!19421) (regOne!39355 (h!78372 (exprs!8861 c!10532))))) b!7413135))

(declare-fun b!7413136 () Bool)

(declare-fun e!4433474 () Bool)

(assert (=> b!7413136 (= e!4433474 tp_is_empty!49105)))

(assert (=> b!7412944 (= tp!2122005 e!4433474)))

(declare-fun b!7413138 () Bool)

(declare-fun tp!2122148 () Bool)

(assert (=> b!7413138 (= e!4433474 tp!2122148)))

(declare-fun b!7413137 () Bool)

(declare-fun tp!2122150 () Bool)

(declare-fun tp!2122147 () Bool)

(assert (=> b!7413137 (= e!4433474 (and tp!2122150 tp!2122147))))

(declare-fun b!7413139 () Bool)

(declare-fun tp!2122149 () Bool)

(declare-fun tp!2122146 () Bool)

(assert (=> b!7413139 (= e!4433474 (and tp!2122149 tp!2122146))))

(assert (= (and b!7412944 ((_ is ElementMatch!19421) (regTwo!39355 (h!78372 (exprs!8861 c!10532))))) b!7413136))

(assert (= (and b!7412944 ((_ is Concat!28266) (regTwo!39355 (h!78372 (exprs!8861 c!10532))))) b!7413137))

(assert (= (and b!7412944 ((_ is Star!19421) (regTwo!39355 (h!78372 (exprs!8861 c!10532))))) b!7413138))

(assert (= (and b!7412944 ((_ is Union!19421) (regTwo!39355 (h!78372 (exprs!8861 c!10532))))) b!7413139))

(declare-fun b!7413140 () Bool)

(declare-fun e!4433475 () Bool)

(declare-fun tp!2122151 () Bool)

(declare-fun tp!2122152 () Bool)

(assert (=> b!7413140 (= e!4433475 (and tp!2122151 tp!2122152))))

(assert (=> b!7412930 (= tp!2121993 e!4433475)))

(assert (= (and b!7412930 ((_ is Cons!71924) (exprs!8861 setElem!56363))) b!7413140))

(declare-fun condSetEmpty!56365 () Bool)

(assert (=> setNonEmpty!56363 (= condSetEmpty!56365 (= setRest!56363 ((as const (Array Context!16722 Bool)) false)))))

(declare-fun setRes!56365 () Bool)

(assert (=> setNonEmpty!56363 (= tp!2121994 setRes!56365)))

(declare-fun setIsEmpty!56365 () Bool)

(assert (=> setIsEmpty!56365 setRes!56365))

(declare-fun setElem!56365 () Context!16722)

(declare-fun e!4433476 () Bool)

(declare-fun tp!2122154 () Bool)

(declare-fun setNonEmpty!56365 () Bool)

(assert (=> setNonEmpty!56365 (= setRes!56365 (and tp!2122154 (inv!91913 setElem!56365) e!4433476))))

(declare-fun setRest!56365 () (InoxSet Context!16722))

(assert (=> setNonEmpty!56365 (= setRest!56363 ((_ map or) (store ((as const (Array Context!16722 Bool)) false) setElem!56365 true) setRest!56365))))

(declare-fun b!7413141 () Bool)

(declare-fun tp!2122153 () Bool)

(assert (=> b!7413141 (= e!4433476 tp!2122153)))

(assert (= (and setNonEmpty!56363 condSetEmpty!56365) setIsEmpty!56365))

(assert (= (and setNonEmpty!56363 (not condSetEmpty!56365)) setNonEmpty!56365))

(assert (= setNonEmpty!56365 b!7413141))

(declare-fun m!8047518 () Bool)

(assert (=> setNonEmpty!56365 m!8047518))

(declare-fun b!7413142 () Bool)

(declare-fun e!4433477 () Bool)

(assert (=> b!7413142 (= e!4433477 tp_is_empty!49105)))

(assert (=> b!7412945 (= tp!2122010 e!4433477)))

(declare-fun b!7413144 () Bool)

(declare-fun tp!2122157 () Bool)

(assert (=> b!7413144 (= e!4433477 tp!2122157)))

(declare-fun b!7413143 () Bool)

(declare-fun tp!2122159 () Bool)

(declare-fun tp!2122156 () Bool)

(assert (=> b!7413143 (= e!4433477 (and tp!2122159 tp!2122156))))

(declare-fun b!7413145 () Bool)

(declare-fun tp!2122158 () Bool)

(declare-fun tp!2122155 () Bool)

(assert (=> b!7413145 (= e!4433477 (and tp!2122158 tp!2122155))))

(assert (= (and b!7412945 ((_ is ElementMatch!19421) (h!78372 (t!386609 (exprs!8861 c!10532))))) b!7413142))

(assert (= (and b!7412945 ((_ is Concat!28266) (h!78372 (t!386609 (exprs!8861 c!10532))))) b!7413143))

(assert (= (and b!7412945 ((_ is Star!19421) (h!78372 (t!386609 (exprs!8861 c!10532))))) b!7413144))

(assert (= (and b!7412945 ((_ is Union!19421) (h!78372 (t!386609 (exprs!8861 c!10532))))) b!7413145))

(declare-fun b!7413146 () Bool)

(declare-fun e!4433478 () Bool)

(declare-fun tp!2122160 () Bool)

(declare-fun tp!2122161 () Bool)

(assert (=> b!7413146 (= e!4433478 (and tp!2122160 tp!2122161))))

(assert (=> b!7412945 (= tp!2122011 e!4433478)))

(assert (= (and b!7412945 ((_ is Cons!71924) (t!386609 (t!386609 (exprs!8861 c!10532))))) b!7413146))

(declare-fun b!7413147 () Bool)

(declare-fun e!4433479 () Bool)

(assert (=> b!7413147 (= e!4433479 tp_is_empty!49105)))

(assert (=> b!7412948 (= tp!2122018 e!4433479)))

(declare-fun b!7413149 () Bool)

(declare-fun tp!2122164 () Bool)

(assert (=> b!7413149 (= e!4433479 tp!2122164)))

(declare-fun b!7413148 () Bool)

(declare-fun tp!2122166 () Bool)

(declare-fun tp!2122163 () Bool)

(assert (=> b!7413148 (= e!4433479 (and tp!2122166 tp!2122163))))

(declare-fun b!7413150 () Bool)

(declare-fun tp!2122165 () Bool)

(declare-fun tp!2122162 () Bool)

(assert (=> b!7413150 (= e!4433479 (and tp!2122165 tp!2122162))))

(assert (= (and b!7412948 ((_ is ElementMatch!19421) (regOne!39354 (h!78372 (exprs!8861 setElem!56355))))) b!7413147))

(assert (= (and b!7412948 ((_ is Concat!28266) (regOne!39354 (h!78372 (exprs!8861 setElem!56355))))) b!7413148))

(assert (= (and b!7412948 ((_ is Star!19421) (regOne!39354 (h!78372 (exprs!8861 setElem!56355))))) b!7413149))

(assert (= (and b!7412948 ((_ is Union!19421) (regOne!39354 (h!78372 (exprs!8861 setElem!56355))))) b!7413150))

(declare-fun b!7413151 () Bool)

(declare-fun e!4433480 () Bool)

(assert (=> b!7413151 (= e!4433480 tp_is_empty!49105)))

(assert (=> b!7412948 (= tp!2122015 e!4433480)))

(declare-fun b!7413153 () Bool)

(declare-fun tp!2122169 () Bool)

(assert (=> b!7413153 (= e!4433480 tp!2122169)))

(declare-fun b!7413152 () Bool)

(declare-fun tp!2122171 () Bool)

(declare-fun tp!2122168 () Bool)

(assert (=> b!7413152 (= e!4433480 (and tp!2122171 tp!2122168))))

(declare-fun b!7413154 () Bool)

(declare-fun tp!2122170 () Bool)

(declare-fun tp!2122167 () Bool)

(assert (=> b!7413154 (= e!4433480 (and tp!2122170 tp!2122167))))

(assert (= (and b!7412948 ((_ is ElementMatch!19421) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355))))) b!7413151))

(assert (= (and b!7412948 ((_ is Concat!28266) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355))))) b!7413152))

(assert (= (and b!7412948 ((_ is Star!19421) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355))))) b!7413153))

(assert (= (and b!7412948 ((_ is Union!19421) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355))))) b!7413154))

(declare-fun b!7413155 () Bool)

(declare-fun e!4433481 () Bool)

(declare-fun tp!2122172 () Bool)

(assert (=> b!7413155 (= e!4433481 (and tp_is_empty!49105 tp!2122172))))

(assert (=> b!7412929 (= tp!2121992 e!4433481)))

(assert (= (and b!7412929 ((_ is Cons!71925) (t!386610 (t!386610 (t!386610 s!7927))))) b!7413155))

(declare-fun b_lambda!286831 () Bool)

(assert (= b_lambda!286827 (or d!2292706 b_lambda!286831)))

(declare-fun bs!1925021 () Bool)

(declare-fun d!2292758 () Bool)

(assert (= bs!1925021 (and d!2292758 d!2292706)))

(assert (=> bs!1925021 (= (dynLambda!29699 lambda!460115 (h!78372 (exprs!8861 setElem!56361))) (validRegex!9969 (h!78372 (exprs!8861 setElem!56361))))))

(declare-fun m!8047520 () Bool)

(assert (=> bs!1925021 m!8047520))

(assert (=> b!7413058 d!2292758))

(declare-fun b_lambda!286833 () Bool)

(assert (= b_lambda!286829 (or d!2292664 b_lambda!286833)))

(declare-fun bs!1925022 () Bool)

(declare-fun d!2292760 () Bool)

(assert (= bs!1925022 (and d!2292760 d!2292664)))

(assert (=> bs!1925022 (= (dynLambda!29699 lambda!460109 (h!78372 (t!386609 (exprs!8861 c!10532)))) (nullable!8465 (h!78372 (t!386609 (exprs!8861 c!10532)))))))

(declare-fun m!8047522 () Bool)

(assert (=> bs!1925022 m!8047522))

(assert (=> b!7413087 d!2292760))

(declare-fun b_lambda!286835 () Bool)

(assert (= b_lambda!286817 (or d!2292684 b_lambda!286835)))

(declare-fun bs!1925023 () Bool)

(declare-fun d!2292762 () Bool)

(assert (= bs!1925023 (and d!2292762 d!2292684)))

(assert (=> bs!1925023 (= (dynLambda!29699 lambda!460113 (h!78372 (t!386609 (exprs!8861 c!10532)))) (validRegex!9969 (h!78372 (t!386609 (exprs!8861 c!10532)))))))

(declare-fun m!8047524 () Bool)

(assert (=> bs!1925023 m!8047524))

(assert (=> b!7413046 d!2292762))

(declare-fun b_lambda!286837 () Bool)

(assert (= b_lambda!286815 (or d!2292678 b_lambda!286837)))

(declare-fun bs!1925024 () Bool)

(declare-fun d!2292764 () Bool)

(assert (= bs!1925024 (and d!2292764 d!2292678)))

(assert (=> bs!1925024 (= (dynLambda!29699 lambda!460112 (h!78372 (t!386609 (exprs!8861 setElem!56355)))) (validRegex!9969 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))))

(declare-fun m!8047526 () Bool)

(assert (=> bs!1925024 m!8047526))

(assert (=> b!7413039 d!2292764))

(check-sat (not b_lambda!286835) (not b!7413115) (not b!7413119) (not bm!682590) (not b_lambda!286803) (not b!7413141) (not b!7413120) (not b!7413103) (not b!7413150) (not bs!1925021) (not bm!682589) (not b!7413133) (not b!7413155) (not b!7413105) (not b!7413137) (not b!7413138) (not b!7413149) (not b!7413153) (not b!7413111) (not b!7413126) (not bm!682586) (not b!7413059) (not b!7413109) (not b_lambda!286805) (not d!2292738) (not b!7413140) (not b!7413145) (not b!7413144) (not bm!682587) (not b!7413099) (not b!7413095) (not b!7413135) (not d!2292752) (not b!7413154) (not b!7413139) (not b_lambda!286831) (not b!7413130) (not b!7413040) (not bs!1925022) (not b!7413101) (not b!7413107) (not b!7413152) (not b!7413134) (not bs!1925023) (not bs!1925024) (not b!7413116) tp_is_empty!49105 (not b!7413148) (not b!7413131) (not b!7413104) (not b!7413100) (not b!7413143) (not b!7413047) (not setNonEmpty!56365) (not b!7413122) (not b!7413121) (not b!7413088) (not b!7413146) (not b!7413128) (not b!7413124) (not b!7413125) (not b!7413113) (not b!7413108) (not b!7413117) (not b!7413129) (not b!7413112) (not b_lambda!286801) (not b_lambda!286837) (not b_lambda!286833) (not b!7413084))
(check-sat)
(get-model)

(declare-fun d!2292766 () Bool)

(declare-fun res!2983805 () Bool)

(declare-fun e!4433482 () Bool)

(assert (=> d!2292766 (=> res!2983805 e!4433482)))

(assert (=> d!2292766 (= res!2983805 ((_ is Nil!71924) (t!386609 (t!386609 (exprs!8861 setElem!56355)))))))

(assert (=> d!2292766 (= (forall!18207 (t!386609 (t!386609 (exprs!8861 setElem!56355))) lambda!460112) e!4433482)))

(declare-fun b!7413156 () Bool)

(declare-fun e!4433483 () Bool)

(assert (=> b!7413156 (= e!4433482 e!4433483)))

(declare-fun res!2983806 () Bool)

(assert (=> b!7413156 (=> (not res!2983806) (not e!4433483))))

(assert (=> b!7413156 (= res!2983806 (dynLambda!29699 lambda!460112 (h!78372 (t!386609 (t!386609 (exprs!8861 setElem!56355))))))))

(declare-fun b!7413157 () Bool)

(assert (=> b!7413157 (= e!4433483 (forall!18207 (t!386609 (t!386609 (t!386609 (exprs!8861 setElem!56355)))) lambda!460112))))

(assert (= (and d!2292766 (not res!2983805)) b!7413156))

(assert (= (and b!7413156 res!2983806) b!7413157))

(declare-fun b_lambda!286839 () Bool)

(assert (=> (not b_lambda!286839) (not b!7413156)))

(declare-fun m!8047528 () Bool)

(assert (=> b!7413156 m!8047528))

(declare-fun m!8047530 () Bool)

(assert (=> b!7413157 m!8047530))

(assert (=> b!7413040 d!2292766))

(declare-fun b!7413158 () Bool)

(declare-fun e!4433485 () Bool)

(declare-fun call!682599 () Bool)

(assert (=> b!7413158 (= e!4433485 call!682599)))

(declare-fun d!2292768 () Bool)

(declare-fun res!2983811 () Bool)

(declare-fun e!4433484 () Bool)

(assert (=> d!2292768 (=> res!2983811 e!4433484)))

(assert (=> d!2292768 (= res!2983811 ((_ is ElementMatch!19421) (ite c!1375853 (reg!19750 (h!78372 (exprs!8861 c!10532))) (ite c!1375852 (regOne!39355 (h!78372 (exprs!8861 c!10532))) (regOne!39354 (h!78372 (exprs!8861 c!10532)))))))))

(assert (=> d!2292768 (= (validRegex!9969 (ite c!1375853 (reg!19750 (h!78372 (exprs!8861 c!10532))) (ite c!1375852 (regOne!39355 (h!78372 (exprs!8861 c!10532))) (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) e!4433484)))

(declare-fun b!7413159 () Bool)

(declare-fun e!4433486 () Bool)

(declare-fun call!682597 () Bool)

(assert (=> b!7413159 (= e!4433486 call!682597)))

(declare-fun bm!682592 () Bool)

(declare-fun c!1375856 () Bool)

(declare-fun c!1375857 () Bool)

(assert (=> bm!682592 (= call!682599 (validRegex!9969 (ite c!1375857 (reg!19750 (ite c!1375853 (reg!19750 (h!78372 (exprs!8861 c!10532))) (ite c!1375852 (regOne!39355 (h!78372 (exprs!8861 c!10532))) (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) (ite c!1375856 (regOne!39355 (ite c!1375853 (reg!19750 (h!78372 (exprs!8861 c!10532))) (ite c!1375852 (regOne!39355 (h!78372 (exprs!8861 c!10532))) (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) (regOne!39354 (ite c!1375853 (reg!19750 (h!78372 (exprs!8861 c!10532))) (ite c!1375852 (regOne!39355 (h!78372 (exprs!8861 c!10532))) (regOne!39354 (h!78372 (exprs!8861 c!10532))))))))))))

(declare-fun bm!682593 () Bool)

(assert (=> bm!682593 (= call!682597 (validRegex!9969 (ite c!1375856 (regTwo!39355 (ite c!1375853 (reg!19750 (h!78372 (exprs!8861 c!10532))) (ite c!1375852 (regOne!39355 (h!78372 (exprs!8861 c!10532))) (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) (regTwo!39354 (ite c!1375853 (reg!19750 (h!78372 (exprs!8861 c!10532))) (ite c!1375852 (regOne!39355 (h!78372 (exprs!8861 c!10532))) (regOne!39354 (h!78372 (exprs!8861 c!10532)))))))))))

(declare-fun bm!682594 () Bool)

(declare-fun call!682598 () Bool)

(assert (=> bm!682594 (= call!682598 call!682599)))

(declare-fun b!7413160 () Bool)

(declare-fun e!4433488 () Bool)

(assert (=> b!7413160 (= e!4433488 e!4433486)))

(declare-fun res!2983808 () Bool)

(assert (=> b!7413160 (=> (not res!2983808) (not e!4433486))))

(assert (=> b!7413160 (= res!2983808 call!682598)))

(declare-fun b!7413161 () Bool)

(declare-fun res!2983807 () Bool)

(assert (=> b!7413161 (=> res!2983807 e!4433488)))

(assert (=> b!7413161 (= res!2983807 (not ((_ is Concat!28266) (ite c!1375853 (reg!19750 (h!78372 (exprs!8861 c!10532))) (ite c!1375852 (regOne!39355 (h!78372 (exprs!8861 c!10532))) (regOne!39354 (h!78372 (exprs!8861 c!10532))))))))))

(declare-fun e!4433487 () Bool)

(assert (=> b!7413161 (= e!4433487 e!4433488)))

(declare-fun b!7413162 () Bool)

(declare-fun e!4433489 () Bool)

(assert (=> b!7413162 (= e!4433484 e!4433489)))

(assert (=> b!7413162 (= c!1375857 ((_ is Star!19421) (ite c!1375853 (reg!19750 (h!78372 (exprs!8861 c!10532))) (ite c!1375852 (regOne!39355 (h!78372 (exprs!8861 c!10532))) (regOne!39354 (h!78372 (exprs!8861 c!10532)))))))))

(declare-fun b!7413163 () Bool)

(declare-fun res!2983809 () Bool)

(declare-fun e!4433490 () Bool)

(assert (=> b!7413163 (=> (not res!2983809) (not e!4433490))))

(assert (=> b!7413163 (= res!2983809 call!682598)))

(assert (=> b!7413163 (= e!4433487 e!4433490)))

(declare-fun b!7413164 () Bool)

(assert (=> b!7413164 (= e!4433489 e!4433485)))

(declare-fun res!2983810 () Bool)

(assert (=> b!7413164 (= res!2983810 (not (nullable!8465 (reg!19750 (ite c!1375853 (reg!19750 (h!78372 (exprs!8861 c!10532))) (ite c!1375852 (regOne!39355 (h!78372 (exprs!8861 c!10532))) (regOne!39354 (h!78372 (exprs!8861 c!10532)))))))))))

(assert (=> b!7413164 (=> (not res!2983810) (not e!4433485))))

(declare-fun b!7413165 () Bool)

(assert (=> b!7413165 (= e!4433489 e!4433487)))

(assert (=> b!7413165 (= c!1375856 ((_ is Union!19421) (ite c!1375853 (reg!19750 (h!78372 (exprs!8861 c!10532))) (ite c!1375852 (regOne!39355 (h!78372 (exprs!8861 c!10532))) (regOne!39354 (h!78372 (exprs!8861 c!10532)))))))))

(declare-fun b!7413166 () Bool)

(assert (=> b!7413166 (= e!4433490 call!682597)))

(assert (= (and d!2292768 (not res!2983811)) b!7413162))

(assert (= (and b!7413162 c!1375857) b!7413164))

(assert (= (and b!7413162 (not c!1375857)) b!7413165))

(assert (= (and b!7413164 res!2983810) b!7413158))

(assert (= (and b!7413165 c!1375856) b!7413163))

(assert (= (and b!7413165 (not c!1375856)) b!7413161))

(assert (= (and b!7413163 res!2983809) b!7413166))

(assert (= (and b!7413161 (not res!2983807)) b!7413160))

(assert (= (and b!7413160 res!2983808) b!7413159))

(assert (= (or b!7413163 b!7413160) bm!682594))

(assert (= (or b!7413166 b!7413159) bm!682593))

(assert (= (or b!7413158 bm!682594) bm!682592))

(declare-fun m!8047532 () Bool)

(assert (=> bm!682592 m!8047532))

(declare-fun m!8047534 () Bool)

(assert (=> bm!682593 m!8047534))

(declare-fun m!8047536 () Bool)

(assert (=> b!7413164 m!8047536))

(assert (=> bm!682586 d!2292768))

(declare-fun b!7413167 () Bool)

(declare-fun e!4433492 () Bool)

(declare-fun call!682602 () Bool)

(assert (=> b!7413167 (= e!4433492 call!682602)))

(declare-fun d!2292770 () Bool)

(declare-fun res!2983816 () Bool)

(declare-fun e!4433491 () Bool)

(assert (=> d!2292770 (=> res!2983816 e!4433491)))

(assert (=> d!2292770 (= res!2983816 ((_ is ElementMatch!19421) (ite c!1375852 (regTwo!39355 (h!78372 (exprs!8861 c!10532))) (regTwo!39354 (h!78372 (exprs!8861 c!10532))))))))

(assert (=> d!2292770 (= (validRegex!9969 (ite c!1375852 (regTwo!39355 (h!78372 (exprs!8861 c!10532))) (regTwo!39354 (h!78372 (exprs!8861 c!10532))))) e!4433491)))

(declare-fun b!7413168 () Bool)

(declare-fun e!4433493 () Bool)

(declare-fun call!682600 () Bool)

(assert (=> b!7413168 (= e!4433493 call!682600)))

(declare-fun bm!682595 () Bool)

(declare-fun c!1375859 () Bool)

(declare-fun c!1375858 () Bool)

(assert (=> bm!682595 (= call!682602 (validRegex!9969 (ite c!1375859 (reg!19750 (ite c!1375852 (regTwo!39355 (h!78372 (exprs!8861 c!10532))) (regTwo!39354 (h!78372 (exprs!8861 c!10532))))) (ite c!1375858 (regOne!39355 (ite c!1375852 (regTwo!39355 (h!78372 (exprs!8861 c!10532))) (regTwo!39354 (h!78372 (exprs!8861 c!10532))))) (regOne!39354 (ite c!1375852 (regTwo!39355 (h!78372 (exprs!8861 c!10532))) (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))))))))

(declare-fun bm!682596 () Bool)

(assert (=> bm!682596 (= call!682600 (validRegex!9969 (ite c!1375858 (regTwo!39355 (ite c!1375852 (regTwo!39355 (h!78372 (exprs!8861 c!10532))) (regTwo!39354 (h!78372 (exprs!8861 c!10532))))) (regTwo!39354 (ite c!1375852 (regTwo!39355 (h!78372 (exprs!8861 c!10532))) (regTwo!39354 (h!78372 (exprs!8861 c!10532))))))))))

(declare-fun bm!682597 () Bool)

(declare-fun call!682601 () Bool)

(assert (=> bm!682597 (= call!682601 call!682602)))

(declare-fun b!7413169 () Bool)

(declare-fun e!4433495 () Bool)

(assert (=> b!7413169 (= e!4433495 e!4433493)))

(declare-fun res!2983813 () Bool)

(assert (=> b!7413169 (=> (not res!2983813) (not e!4433493))))

(assert (=> b!7413169 (= res!2983813 call!682601)))

(declare-fun b!7413170 () Bool)

(declare-fun res!2983812 () Bool)

(assert (=> b!7413170 (=> res!2983812 e!4433495)))

(assert (=> b!7413170 (= res!2983812 (not ((_ is Concat!28266) (ite c!1375852 (regTwo!39355 (h!78372 (exprs!8861 c!10532))) (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))))))

(declare-fun e!4433494 () Bool)

(assert (=> b!7413170 (= e!4433494 e!4433495)))

(declare-fun b!7413171 () Bool)

(declare-fun e!4433496 () Bool)

(assert (=> b!7413171 (= e!4433491 e!4433496)))

(assert (=> b!7413171 (= c!1375859 ((_ is Star!19421) (ite c!1375852 (regTwo!39355 (h!78372 (exprs!8861 c!10532))) (regTwo!39354 (h!78372 (exprs!8861 c!10532))))))))

(declare-fun b!7413172 () Bool)

(declare-fun res!2983814 () Bool)

(declare-fun e!4433497 () Bool)

(assert (=> b!7413172 (=> (not res!2983814) (not e!4433497))))

(assert (=> b!7413172 (= res!2983814 call!682601)))

(assert (=> b!7413172 (= e!4433494 e!4433497)))

(declare-fun b!7413173 () Bool)

(assert (=> b!7413173 (= e!4433496 e!4433492)))

(declare-fun res!2983815 () Bool)

(assert (=> b!7413173 (= res!2983815 (not (nullable!8465 (reg!19750 (ite c!1375852 (regTwo!39355 (h!78372 (exprs!8861 c!10532))) (regTwo!39354 (h!78372 (exprs!8861 c!10532))))))))))

(assert (=> b!7413173 (=> (not res!2983815) (not e!4433492))))

(declare-fun b!7413174 () Bool)

(assert (=> b!7413174 (= e!4433496 e!4433494)))

(assert (=> b!7413174 (= c!1375858 ((_ is Union!19421) (ite c!1375852 (regTwo!39355 (h!78372 (exprs!8861 c!10532))) (regTwo!39354 (h!78372 (exprs!8861 c!10532))))))))

(declare-fun b!7413175 () Bool)

(assert (=> b!7413175 (= e!4433497 call!682600)))

(assert (= (and d!2292770 (not res!2983816)) b!7413171))

(assert (= (and b!7413171 c!1375859) b!7413173))

(assert (= (and b!7413171 (not c!1375859)) b!7413174))

(assert (= (and b!7413173 res!2983815) b!7413167))

(assert (= (and b!7413174 c!1375858) b!7413172))

(assert (= (and b!7413174 (not c!1375858)) b!7413170))

(assert (= (and b!7413172 res!2983814) b!7413175))

(assert (= (and b!7413170 (not res!2983812)) b!7413169))

(assert (= (and b!7413169 res!2983813) b!7413168))

(assert (= (or b!7413172 b!7413169) bm!682597))

(assert (= (or b!7413175 b!7413168) bm!682596))

(assert (= (or b!7413167 bm!682597) bm!682595))

(declare-fun m!8047538 () Bool)

(assert (=> bm!682595 m!8047538))

(declare-fun m!8047540 () Bool)

(assert (=> bm!682596 m!8047540))

(declare-fun m!8047542 () Bool)

(assert (=> b!7413173 m!8047542))

(assert (=> bm!682587 d!2292770))

(declare-fun d!2292772 () Bool)

(declare-fun res!2983817 () Bool)

(declare-fun e!4433498 () Bool)

(assert (=> d!2292772 (=> res!2983817 e!4433498)))

(assert (=> d!2292772 (= res!2983817 ((_ is Nil!71924) (t!386609 (t!386609 (exprs!8861 c!10532)))))))

(assert (=> d!2292772 (= (forall!18207 (t!386609 (t!386609 (exprs!8861 c!10532))) lambda!460109) e!4433498)))

(declare-fun b!7413176 () Bool)

(declare-fun e!4433499 () Bool)

(assert (=> b!7413176 (= e!4433498 e!4433499)))

(declare-fun res!2983818 () Bool)

(assert (=> b!7413176 (=> (not res!2983818) (not e!4433499))))

(assert (=> b!7413176 (= res!2983818 (dynLambda!29699 lambda!460109 (h!78372 (t!386609 (t!386609 (exprs!8861 c!10532))))))))

(declare-fun b!7413177 () Bool)

(assert (=> b!7413177 (= e!4433499 (forall!18207 (t!386609 (t!386609 (t!386609 (exprs!8861 c!10532)))) lambda!460109))))

(assert (= (and d!2292772 (not res!2983817)) b!7413176))

(assert (= (and b!7413176 res!2983818) b!7413177))

(declare-fun b_lambda!286841 () Bool)

(assert (=> (not b_lambda!286841) (not b!7413176)))

(declare-fun m!8047544 () Bool)

(assert (=> b!7413176 m!8047544))

(declare-fun m!8047546 () Bool)

(assert (=> b!7413177 m!8047546))

(assert (=> b!7413088 d!2292772))

(declare-fun b!7413178 () Bool)

(declare-fun e!4433501 () Bool)

(declare-fun call!682605 () Bool)

(assert (=> b!7413178 (= e!4433501 call!682605)))

(declare-fun d!2292774 () Bool)

(declare-fun res!2983823 () Bool)

(declare-fun e!4433500 () Bool)

(assert (=> d!2292774 (=> res!2983823 e!4433500)))

(assert (=> d!2292774 (= res!2983823 ((_ is ElementMatch!19421) (h!78372 (t!386609 (exprs!8861 c!10532)))))))

(assert (=> d!2292774 (= (validRegex!9969 (h!78372 (t!386609 (exprs!8861 c!10532)))) e!4433500)))

(declare-fun b!7413179 () Bool)

(declare-fun e!4433502 () Bool)

(declare-fun call!682603 () Bool)

(assert (=> b!7413179 (= e!4433502 call!682603)))

(declare-fun c!1375861 () Bool)

(declare-fun bm!682598 () Bool)

(declare-fun c!1375860 () Bool)

(assert (=> bm!682598 (= call!682605 (validRegex!9969 (ite c!1375861 (reg!19750 (h!78372 (t!386609 (exprs!8861 c!10532)))) (ite c!1375860 (regOne!39355 (h!78372 (t!386609 (exprs!8861 c!10532)))) (regOne!39354 (h!78372 (t!386609 (exprs!8861 c!10532))))))))))

(declare-fun bm!682599 () Bool)

(assert (=> bm!682599 (= call!682603 (validRegex!9969 (ite c!1375860 (regTwo!39355 (h!78372 (t!386609 (exprs!8861 c!10532)))) (regTwo!39354 (h!78372 (t!386609 (exprs!8861 c!10532)))))))))

(declare-fun bm!682600 () Bool)

(declare-fun call!682604 () Bool)

(assert (=> bm!682600 (= call!682604 call!682605)))

(declare-fun b!7413180 () Bool)

(declare-fun e!4433504 () Bool)

(assert (=> b!7413180 (= e!4433504 e!4433502)))

(declare-fun res!2983820 () Bool)

(assert (=> b!7413180 (=> (not res!2983820) (not e!4433502))))

(assert (=> b!7413180 (= res!2983820 call!682604)))

(declare-fun b!7413181 () Bool)

(declare-fun res!2983819 () Bool)

(assert (=> b!7413181 (=> res!2983819 e!4433504)))

(assert (=> b!7413181 (= res!2983819 (not ((_ is Concat!28266) (h!78372 (t!386609 (exprs!8861 c!10532))))))))

(declare-fun e!4433503 () Bool)

(assert (=> b!7413181 (= e!4433503 e!4433504)))

(declare-fun b!7413182 () Bool)

(declare-fun e!4433505 () Bool)

(assert (=> b!7413182 (= e!4433500 e!4433505)))

(assert (=> b!7413182 (= c!1375861 ((_ is Star!19421) (h!78372 (t!386609 (exprs!8861 c!10532)))))))

(declare-fun b!7413183 () Bool)

(declare-fun res!2983821 () Bool)

(declare-fun e!4433506 () Bool)

(assert (=> b!7413183 (=> (not res!2983821) (not e!4433506))))

(assert (=> b!7413183 (= res!2983821 call!682604)))

(assert (=> b!7413183 (= e!4433503 e!4433506)))

(declare-fun b!7413184 () Bool)

(assert (=> b!7413184 (= e!4433505 e!4433501)))

(declare-fun res!2983822 () Bool)

(assert (=> b!7413184 (= res!2983822 (not (nullable!8465 (reg!19750 (h!78372 (t!386609 (exprs!8861 c!10532)))))))))

(assert (=> b!7413184 (=> (not res!2983822) (not e!4433501))))

(declare-fun b!7413185 () Bool)

(assert (=> b!7413185 (= e!4433505 e!4433503)))

(assert (=> b!7413185 (= c!1375860 ((_ is Union!19421) (h!78372 (t!386609 (exprs!8861 c!10532)))))))

(declare-fun b!7413186 () Bool)

(assert (=> b!7413186 (= e!4433506 call!682603)))

(assert (= (and d!2292774 (not res!2983823)) b!7413182))

(assert (= (and b!7413182 c!1375861) b!7413184))

(assert (= (and b!7413182 (not c!1375861)) b!7413185))

(assert (= (and b!7413184 res!2983822) b!7413178))

(assert (= (and b!7413185 c!1375860) b!7413183))

(assert (= (and b!7413185 (not c!1375860)) b!7413181))

(assert (= (and b!7413183 res!2983821) b!7413186))

(assert (= (and b!7413181 (not res!2983819)) b!7413180))

(assert (= (and b!7413180 res!2983820) b!7413179))

(assert (= (or b!7413183 b!7413180) bm!682600))

(assert (= (or b!7413186 b!7413179) bm!682599))

(assert (= (or b!7413178 bm!682600) bm!682598))

(declare-fun m!8047548 () Bool)

(assert (=> bm!682598 m!8047548))

(declare-fun m!8047550 () Bool)

(assert (=> bm!682599 m!8047550))

(declare-fun m!8047552 () Bool)

(assert (=> b!7413184 m!8047552))

(assert (=> bs!1925023 d!2292774))

(declare-fun b!7413187 () Bool)

(declare-fun e!4433508 () Bool)

(declare-fun call!682608 () Bool)

(assert (=> b!7413187 (= e!4433508 call!682608)))

(declare-fun d!2292776 () Bool)

(declare-fun res!2983828 () Bool)

(declare-fun e!4433507 () Bool)

(assert (=> d!2292776 (=> res!2983828 e!4433507)))

(assert (=> d!2292776 (= res!2983828 ((_ is ElementMatch!19421) (h!78372 (exprs!8861 setElem!56361))))))

(assert (=> d!2292776 (= (validRegex!9969 (h!78372 (exprs!8861 setElem!56361))) e!4433507)))

(declare-fun b!7413188 () Bool)

(declare-fun e!4433509 () Bool)

(declare-fun call!682606 () Bool)

(assert (=> b!7413188 (= e!4433509 call!682606)))

(declare-fun c!1375862 () Bool)

(declare-fun bm!682601 () Bool)

(declare-fun c!1375863 () Bool)

(assert (=> bm!682601 (= call!682608 (validRegex!9969 (ite c!1375863 (reg!19750 (h!78372 (exprs!8861 setElem!56361))) (ite c!1375862 (regOne!39355 (h!78372 (exprs!8861 setElem!56361))) (regOne!39354 (h!78372 (exprs!8861 setElem!56361)))))))))

(declare-fun bm!682602 () Bool)

(assert (=> bm!682602 (= call!682606 (validRegex!9969 (ite c!1375862 (regTwo!39355 (h!78372 (exprs!8861 setElem!56361))) (regTwo!39354 (h!78372 (exprs!8861 setElem!56361))))))))

(declare-fun bm!682603 () Bool)

(declare-fun call!682607 () Bool)

(assert (=> bm!682603 (= call!682607 call!682608)))

(declare-fun b!7413189 () Bool)

(declare-fun e!4433511 () Bool)

(assert (=> b!7413189 (= e!4433511 e!4433509)))

(declare-fun res!2983825 () Bool)

(assert (=> b!7413189 (=> (not res!2983825) (not e!4433509))))

(assert (=> b!7413189 (= res!2983825 call!682607)))

(declare-fun b!7413190 () Bool)

(declare-fun res!2983824 () Bool)

(assert (=> b!7413190 (=> res!2983824 e!4433511)))

(assert (=> b!7413190 (= res!2983824 (not ((_ is Concat!28266) (h!78372 (exprs!8861 setElem!56361)))))))

(declare-fun e!4433510 () Bool)

(assert (=> b!7413190 (= e!4433510 e!4433511)))

(declare-fun b!7413191 () Bool)

(declare-fun e!4433512 () Bool)

(assert (=> b!7413191 (= e!4433507 e!4433512)))

(assert (=> b!7413191 (= c!1375863 ((_ is Star!19421) (h!78372 (exprs!8861 setElem!56361))))))

(declare-fun b!7413192 () Bool)

(declare-fun res!2983826 () Bool)

(declare-fun e!4433513 () Bool)

(assert (=> b!7413192 (=> (not res!2983826) (not e!4433513))))

(assert (=> b!7413192 (= res!2983826 call!682607)))

(assert (=> b!7413192 (= e!4433510 e!4433513)))

(declare-fun b!7413193 () Bool)

(assert (=> b!7413193 (= e!4433512 e!4433508)))

(declare-fun res!2983827 () Bool)

(assert (=> b!7413193 (= res!2983827 (not (nullable!8465 (reg!19750 (h!78372 (exprs!8861 setElem!56361))))))))

(assert (=> b!7413193 (=> (not res!2983827) (not e!4433508))))

(declare-fun b!7413194 () Bool)

(assert (=> b!7413194 (= e!4433512 e!4433510)))

(assert (=> b!7413194 (= c!1375862 ((_ is Union!19421) (h!78372 (exprs!8861 setElem!56361))))))

(declare-fun b!7413195 () Bool)

(assert (=> b!7413195 (= e!4433513 call!682606)))

(assert (= (and d!2292776 (not res!2983828)) b!7413191))

(assert (= (and b!7413191 c!1375863) b!7413193))

(assert (= (and b!7413191 (not c!1375863)) b!7413194))

(assert (= (and b!7413193 res!2983827) b!7413187))

(assert (= (and b!7413194 c!1375862) b!7413192))

(assert (= (and b!7413194 (not c!1375862)) b!7413190))

(assert (= (and b!7413192 res!2983826) b!7413195))

(assert (= (and b!7413190 (not res!2983824)) b!7413189))

(assert (= (and b!7413189 res!2983825) b!7413188))

(assert (= (or b!7413192 b!7413189) bm!682603))

(assert (= (or b!7413195 b!7413188) bm!682602))

(assert (= (or b!7413187 bm!682603) bm!682601))

(declare-fun m!8047554 () Bool)

(assert (=> bm!682601 m!8047554))

(declare-fun m!8047556 () Bool)

(assert (=> bm!682602 m!8047556))

(declare-fun m!8047558 () Bool)

(assert (=> b!7413193 m!8047558))

(assert (=> bs!1925021 d!2292776))

(declare-fun b!7413228 () Bool)

(declare-fun e!4433542 () Bool)

(declare-fun e!4433544 () Bool)

(assert (=> b!7413228 (= e!4433542 e!4433544)))

(declare-fun res!2983849 () Bool)

(declare-fun call!682619 () Bool)

(assert (=> b!7413228 (= res!2983849 call!682619)))

(assert (=> b!7413228 (=> res!2983849 e!4433544)))

(declare-fun b!7413229 () Bool)

(declare-fun call!682620 () Bool)

(assert (=> b!7413229 (= e!4433544 call!682620)))

(declare-fun bm!682614 () Bool)

(declare-fun c!1375870 () Bool)

(assert (=> bm!682614 (= call!682620 (nullable!8465 (ite c!1375870 (regTwo!39355 (h!78372 (exprs!8861 c!10532))) (regOne!39354 (h!78372 (exprs!8861 c!10532))))))))

(declare-fun b!7413230 () Bool)

(declare-fun e!4433540 () Bool)

(assert (=> b!7413230 (= e!4433542 e!4433540)))

(declare-fun res!2983852 () Bool)

(assert (=> b!7413230 (= res!2983852 call!682620)))

(assert (=> b!7413230 (=> (not res!2983852) (not e!4433540))))

(declare-fun b!7413232 () Bool)

(assert (=> b!7413232 (= e!4433540 call!682619)))

(declare-fun bm!682615 () Bool)

(assert (=> bm!682615 (= call!682619 (nullable!8465 (ite c!1375870 (regOne!39355 (h!78372 (exprs!8861 c!10532))) (regTwo!39354 (h!78372 (exprs!8861 c!10532))))))))

(declare-fun b!7413233 () Bool)

(declare-fun e!4433541 () Bool)

(declare-fun e!4433543 () Bool)

(assert (=> b!7413233 (= e!4433541 e!4433543)))

(declare-fun res!2983853 () Bool)

(assert (=> b!7413233 (=> res!2983853 e!4433543)))

(assert (=> b!7413233 (= res!2983853 ((_ is Star!19421) (h!78372 (exprs!8861 c!10532))))))

(declare-fun b!7413234 () Bool)

(declare-fun e!4433545 () Bool)

(assert (=> b!7413234 (= e!4433545 e!4433541)))

(declare-fun res!2983850 () Bool)

(assert (=> b!7413234 (=> (not res!2983850) (not e!4433541))))

(assert (=> b!7413234 (= res!2983850 (and (not ((_ is EmptyLang!19421) (h!78372 (exprs!8861 c!10532)))) (not ((_ is ElementMatch!19421) (h!78372 (exprs!8861 c!10532))))))))

(declare-fun d!2292778 () Bool)

(declare-fun res!2983851 () Bool)

(assert (=> d!2292778 (=> res!2983851 e!4433545)))

(assert (=> d!2292778 (= res!2983851 ((_ is EmptyExpr!19421) (h!78372 (exprs!8861 c!10532))))))

(assert (=> d!2292778 (= (nullableFct!3412 (h!78372 (exprs!8861 c!10532))) e!4433545)))

(declare-fun b!7413231 () Bool)

(assert (=> b!7413231 (= e!4433543 e!4433542)))

(assert (=> b!7413231 (= c!1375870 ((_ is Union!19421) (h!78372 (exprs!8861 c!10532))))))

(assert (= (and d!2292778 (not res!2983851)) b!7413234))

(assert (= (and b!7413234 res!2983850) b!7413233))

(assert (= (and b!7413233 (not res!2983853)) b!7413231))

(assert (= (and b!7413231 c!1375870) b!7413228))

(assert (= (and b!7413231 (not c!1375870)) b!7413230))

(assert (= (and b!7413228 (not res!2983849)) b!7413229))

(assert (= (and b!7413230 res!2983852) b!7413232))

(assert (= (or b!7413229 b!7413230) bm!682614))

(assert (= (or b!7413228 b!7413232) bm!682615))

(declare-fun m!8047572 () Bool)

(assert (=> bm!682614 m!8047572))

(declare-fun m!8047574 () Bool)

(assert (=> bm!682615 m!8047574))

(assert (=> d!2292738 d!2292778))

(declare-fun d!2292786 () Bool)

(assert (=> d!2292786 (= (nullable!8465 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))) (nullableFct!3412 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))))

(declare-fun bs!1925025 () Bool)

(assert (= bs!1925025 d!2292786))

(declare-fun m!8047578 () Bool)

(assert (=> bs!1925025 m!8047578))

(assert (=> b!7413095 d!2292786))

(declare-fun bs!1925026 () Bool)

(declare-fun d!2292790 () Bool)

(assert (= bs!1925026 (and d!2292790 d!2292664)))

(declare-fun lambda!460118 () Int)

(assert (=> bs!1925026 (not (= lambda!460118 lambda!460109))))

(declare-fun bs!1925027 () Bool)

(assert (= bs!1925027 (and d!2292790 d!2292706)))

(assert (=> bs!1925027 (= lambda!460118 lambda!460115)))

(declare-fun bs!1925028 () Bool)

(assert (= bs!1925028 (and d!2292790 d!2292684)))

(assert (=> bs!1925028 (= lambda!460118 lambda!460113)))

(declare-fun bs!1925029 () Bool)

(assert (= bs!1925029 (and d!2292790 d!2292752)))

(assert (=> bs!1925029 (= lambda!460118 lambda!460117)))

(declare-fun bs!1925030 () Bool)

(assert (= bs!1925030 (and d!2292790 d!2292678)))

(assert (=> bs!1925030 (= lambda!460118 lambda!460112)))

(assert (=> d!2292790 (= (inv!91913 setElem!56365) (forall!18207 (exprs!8861 setElem!56365) lambda!460118))))

(declare-fun bs!1925031 () Bool)

(assert (= bs!1925031 d!2292790))

(declare-fun m!8047582 () Bool)

(assert (=> bs!1925031 m!8047582))

(assert (=> setNonEmpty!56365 d!2292790))

(declare-fun d!2292792 () Bool)

(declare-fun res!2983861 () Bool)

(declare-fun e!4433555 () Bool)

(assert (=> d!2292792 (=> res!2983861 e!4433555)))

(assert (=> d!2292792 (= res!2983861 ((_ is Nil!71924) (t!386609 (t!386609 (exprs!8861 c!10532)))))))

(assert (=> d!2292792 (= (forall!18207 (t!386609 (t!386609 (exprs!8861 c!10532))) lambda!460113) e!4433555)))

(declare-fun b!7413246 () Bool)

(declare-fun e!4433556 () Bool)

(assert (=> b!7413246 (= e!4433555 e!4433556)))

(declare-fun res!2983862 () Bool)

(assert (=> b!7413246 (=> (not res!2983862) (not e!4433556))))

(assert (=> b!7413246 (= res!2983862 (dynLambda!29699 lambda!460113 (h!78372 (t!386609 (t!386609 (exprs!8861 c!10532))))))))

(declare-fun b!7413247 () Bool)

(assert (=> b!7413247 (= e!4433556 (forall!18207 (t!386609 (t!386609 (t!386609 (exprs!8861 c!10532)))) lambda!460113))))

(assert (= (and d!2292792 (not res!2983861)) b!7413246))

(assert (= (and b!7413246 res!2983862) b!7413247))

(declare-fun b_lambda!286845 () Bool)

(assert (=> (not b_lambda!286845) (not b!7413246)))

(declare-fun m!8047584 () Bool)

(assert (=> b!7413246 m!8047584))

(declare-fun m!8047588 () Bool)

(assert (=> b!7413247 m!8047588))

(assert (=> b!7413047 d!2292792))

(declare-fun d!2292794 () Bool)

(declare-fun res!2983863 () Bool)

(declare-fun e!4433557 () Bool)

(assert (=> d!2292794 (=> res!2983863 e!4433557)))

(assert (=> d!2292794 (= res!2983863 ((_ is Nil!71924) (exprs!8861 setElem!56363)))))

(assert (=> d!2292794 (= (forall!18207 (exprs!8861 setElem!56363) lambda!460117) e!4433557)))

(declare-fun b!7413248 () Bool)

(declare-fun e!4433558 () Bool)

(assert (=> b!7413248 (= e!4433557 e!4433558)))

(declare-fun res!2983864 () Bool)

(assert (=> b!7413248 (=> (not res!2983864) (not e!4433558))))

(assert (=> b!7413248 (= res!2983864 (dynLambda!29699 lambda!460117 (h!78372 (exprs!8861 setElem!56363))))))

(declare-fun b!7413249 () Bool)

(assert (=> b!7413249 (= e!4433558 (forall!18207 (t!386609 (exprs!8861 setElem!56363)) lambda!460117))))

(assert (= (and d!2292794 (not res!2983863)) b!7413248))

(assert (= (and b!7413248 res!2983864) b!7413249))

(declare-fun b_lambda!286847 () Bool)

(assert (=> (not b_lambda!286847) (not b!7413248)))

(declare-fun m!8047594 () Bool)

(assert (=> b!7413248 m!8047594))

(declare-fun m!8047596 () Bool)

(assert (=> b!7413249 m!8047596))

(assert (=> d!2292752 d!2292794))

(declare-fun d!2292798 () Bool)

(declare-fun res!2983870 () Bool)

(declare-fun e!4433566 () Bool)

(assert (=> d!2292798 (=> res!2983870 e!4433566)))

(assert (=> d!2292798 (= res!2983870 ((_ is Nil!71924) (t!386609 (exprs!8861 setElem!56361))))))

(assert (=> d!2292798 (= (forall!18207 (t!386609 (exprs!8861 setElem!56361)) lambda!460115) e!4433566)))

(declare-fun b!7413259 () Bool)

(declare-fun e!4433567 () Bool)

(assert (=> b!7413259 (= e!4433566 e!4433567)))

(declare-fun res!2983871 () Bool)

(assert (=> b!7413259 (=> (not res!2983871) (not e!4433567))))

(assert (=> b!7413259 (= res!2983871 (dynLambda!29699 lambda!460115 (h!78372 (t!386609 (exprs!8861 setElem!56361)))))))

(declare-fun b!7413260 () Bool)

(assert (=> b!7413260 (= e!4433567 (forall!18207 (t!386609 (t!386609 (exprs!8861 setElem!56361))) lambda!460115))))

(assert (= (and d!2292798 (not res!2983870)) b!7413259))

(assert (= (and b!7413259 res!2983871) b!7413260))

(declare-fun b_lambda!286849 () Bool)

(assert (=> (not b_lambda!286849) (not b!7413259)))

(declare-fun m!8047598 () Bool)

(assert (=> b!7413259 m!8047598))

(declare-fun m!8047600 () Bool)

(assert (=> b!7413260 m!8047600))

(assert (=> b!7413059 d!2292798))

(declare-fun d!2292800 () Bool)

(assert (=> d!2292800 (= (nullable!8465 (reg!19750 (h!78372 (exprs!8861 c!10532)))) (nullableFct!3412 (reg!19750 (h!78372 (exprs!8861 c!10532)))))))

(declare-fun bs!1925032 () Bool)

(assert (= bs!1925032 d!2292800))

(declare-fun m!8047602 () Bool)

(assert (=> bs!1925032 m!8047602))

(assert (=> b!7413084 d!2292800))

(declare-fun b!7413261 () Bool)

(declare-fun e!4433569 () Bool)

(declare-fun call!682629 () Bool)

(assert (=> b!7413261 (= e!4433569 call!682629)))

(declare-fun d!2292802 () Bool)

(declare-fun res!2983876 () Bool)

(declare-fun e!4433568 () Bool)

(assert (=> d!2292802 (=> res!2983876 e!4433568)))

(assert (=> d!2292802 (= res!2983876 ((_ is ElementMatch!19421) (h!78372 (t!386609 (exprs!8861 setElem!56355)))))))

(assert (=> d!2292802 (= (validRegex!9969 (h!78372 (t!386609 (exprs!8861 setElem!56355)))) e!4433568)))

(declare-fun b!7413262 () Bool)

(declare-fun e!4433570 () Bool)

(declare-fun call!682627 () Bool)

(assert (=> b!7413262 (= e!4433570 call!682627)))

(declare-fun bm!682622 () Bool)

(declare-fun c!1375876 () Bool)

(declare-fun c!1375875 () Bool)

(assert (=> bm!682622 (= call!682629 (validRegex!9969 (ite c!1375876 (reg!19750 (h!78372 (t!386609 (exprs!8861 setElem!56355)))) (ite c!1375875 (regOne!39355 (h!78372 (t!386609 (exprs!8861 setElem!56355)))) (regOne!39354 (h!78372 (t!386609 (exprs!8861 setElem!56355))))))))))

(declare-fun bm!682623 () Bool)

(assert (=> bm!682623 (= call!682627 (validRegex!9969 (ite c!1375875 (regTwo!39355 (h!78372 (t!386609 (exprs!8861 setElem!56355)))) (regTwo!39354 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))))))

(declare-fun bm!682624 () Bool)

(declare-fun call!682628 () Bool)

(assert (=> bm!682624 (= call!682628 call!682629)))

(declare-fun b!7413263 () Bool)

(declare-fun e!4433572 () Bool)

(assert (=> b!7413263 (= e!4433572 e!4433570)))

(declare-fun res!2983873 () Bool)

(assert (=> b!7413263 (=> (not res!2983873) (not e!4433570))))

(assert (=> b!7413263 (= res!2983873 call!682628)))

(declare-fun b!7413264 () Bool)

(declare-fun res!2983872 () Bool)

(assert (=> b!7413264 (=> res!2983872 e!4433572)))

(assert (=> b!7413264 (= res!2983872 (not ((_ is Concat!28266) (h!78372 (t!386609 (exprs!8861 setElem!56355))))))))

(declare-fun e!4433571 () Bool)

(assert (=> b!7413264 (= e!4433571 e!4433572)))

(declare-fun b!7413265 () Bool)

(declare-fun e!4433573 () Bool)

(assert (=> b!7413265 (= e!4433568 e!4433573)))

(assert (=> b!7413265 (= c!1375876 ((_ is Star!19421) (h!78372 (t!386609 (exprs!8861 setElem!56355)))))))

(declare-fun b!7413266 () Bool)

(declare-fun res!2983874 () Bool)

(declare-fun e!4433574 () Bool)

(assert (=> b!7413266 (=> (not res!2983874) (not e!4433574))))

(assert (=> b!7413266 (= res!2983874 call!682628)))

(assert (=> b!7413266 (= e!4433571 e!4433574)))

(declare-fun b!7413267 () Bool)

(assert (=> b!7413267 (= e!4433573 e!4433569)))

(declare-fun res!2983875 () Bool)

(assert (=> b!7413267 (= res!2983875 (not (nullable!8465 (reg!19750 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))))))

(assert (=> b!7413267 (=> (not res!2983875) (not e!4433569))))

(declare-fun b!7413268 () Bool)

(assert (=> b!7413268 (= e!4433573 e!4433571)))

(assert (=> b!7413268 (= c!1375875 ((_ is Union!19421) (h!78372 (t!386609 (exprs!8861 setElem!56355)))))))

(declare-fun b!7413269 () Bool)

(assert (=> b!7413269 (= e!4433574 call!682627)))

(assert (= (and d!2292802 (not res!2983876)) b!7413265))

(assert (= (and b!7413265 c!1375876) b!7413267))

(assert (= (and b!7413265 (not c!1375876)) b!7413268))

(assert (= (and b!7413267 res!2983875) b!7413261))

(assert (= (and b!7413268 c!1375875) b!7413266))

(assert (= (and b!7413268 (not c!1375875)) b!7413264))

(assert (= (and b!7413266 res!2983874) b!7413269))

(assert (= (and b!7413264 (not res!2983872)) b!7413263))

(assert (= (and b!7413263 res!2983873) b!7413262))

(assert (= (or b!7413266 b!7413263) bm!682624))

(assert (= (or b!7413269 b!7413262) bm!682623))

(assert (= (or b!7413261 bm!682624) bm!682622))

(declare-fun m!8047604 () Bool)

(assert (=> bm!682622 m!8047604))

(declare-fun m!8047606 () Bool)

(assert (=> bm!682623 m!8047606))

(declare-fun m!8047608 () Bool)

(assert (=> b!7413267 m!8047608))

(assert (=> bs!1925024 d!2292802))

(declare-fun b!7413270 () Bool)

(declare-fun e!4433576 () Bool)

(declare-fun call!682632 () Bool)

(assert (=> b!7413270 (= e!4433576 call!682632)))

(declare-fun d!2292804 () Bool)

(declare-fun res!2983881 () Bool)

(declare-fun e!4433575 () Bool)

(assert (=> d!2292804 (=> res!2983881 e!4433575)))

(assert (=> d!2292804 (= res!2983881 ((_ is ElementMatch!19421) (ite c!1375855 (reg!19750 (h!78372 (exprs!8861 setElem!56355))) (ite c!1375854 (regOne!39355 (h!78372 (exprs!8861 setElem!56355))) (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))))))

(assert (=> d!2292804 (= (validRegex!9969 (ite c!1375855 (reg!19750 (h!78372 (exprs!8861 setElem!56355))) (ite c!1375854 (regOne!39355 (h!78372 (exprs!8861 setElem!56355))) (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) e!4433575)))

(declare-fun b!7413271 () Bool)

(declare-fun e!4433577 () Bool)

(declare-fun call!682630 () Bool)

(assert (=> b!7413271 (= e!4433577 call!682630)))

(declare-fun bm!682625 () Bool)

(declare-fun c!1375877 () Bool)

(declare-fun c!1375878 () Bool)

(assert (=> bm!682625 (= call!682632 (validRegex!9969 (ite c!1375878 (reg!19750 (ite c!1375855 (reg!19750 (h!78372 (exprs!8861 setElem!56355))) (ite c!1375854 (regOne!39355 (h!78372 (exprs!8861 setElem!56355))) (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) (ite c!1375877 (regOne!39355 (ite c!1375855 (reg!19750 (h!78372 (exprs!8861 setElem!56355))) (ite c!1375854 (regOne!39355 (h!78372 (exprs!8861 setElem!56355))) (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) (regOne!39354 (ite c!1375855 (reg!19750 (h!78372 (exprs!8861 setElem!56355))) (ite c!1375854 (regOne!39355 (h!78372 (exprs!8861 setElem!56355))) (regOne!39354 (h!78372 (exprs!8861 setElem!56355))))))))))))

(declare-fun bm!682626 () Bool)

(assert (=> bm!682626 (= call!682630 (validRegex!9969 (ite c!1375877 (regTwo!39355 (ite c!1375855 (reg!19750 (h!78372 (exprs!8861 setElem!56355))) (ite c!1375854 (regOne!39355 (h!78372 (exprs!8861 setElem!56355))) (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) (regTwo!39354 (ite c!1375855 (reg!19750 (h!78372 (exprs!8861 setElem!56355))) (ite c!1375854 (regOne!39355 (h!78372 (exprs!8861 setElem!56355))) (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))))))))

(declare-fun bm!682627 () Bool)

(declare-fun call!682631 () Bool)

(assert (=> bm!682627 (= call!682631 call!682632)))

(declare-fun b!7413272 () Bool)

(declare-fun e!4433579 () Bool)

(assert (=> b!7413272 (= e!4433579 e!4433577)))

(declare-fun res!2983878 () Bool)

(assert (=> b!7413272 (=> (not res!2983878) (not e!4433577))))

(assert (=> b!7413272 (= res!2983878 call!682631)))

(declare-fun b!7413273 () Bool)

(declare-fun res!2983877 () Bool)

(assert (=> b!7413273 (=> res!2983877 e!4433579)))

(assert (=> b!7413273 (= res!2983877 (not ((_ is Concat!28266) (ite c!1375855 (reg!19750 (h!78372 (exprs!8861 setElem!56355))) (ite c!1375854 (regOne!39355 (h!78372 (exprs!8861 setElem!56355))) (regOne!39354 (h!78372 (exprs!8861 setElem!56355))))))))))

(declare-fun e!4433578 () Bool)

(assert (=> b!7413273 (= e!4433578 e!4433579)))

(declare-fun b!7413274 () Bool)

(declare-fun e!4433580 () Bool)

(assert (=> b!7413274 (= e!4433575 e!4433580)))

(assert (=> b!7413274 (= c!1375878 ((_ is Star!19421) (ite c!1375855 (reg!19750 (h!78372 (exprs!8861 setElem!56355))) (ite c!1375854 (regOne!39355 (h!78372 (exprs!8861 setElem!56355))) (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))))))

(declare-fun b!7413275 () Bool)

(declare-fun res!2983879 () Bool)

(declare-fun e!4433581 () Bool)

(assert (=> b!7413275 (=> (not res!2983879) (not e!4433581))))

(assert (=> b!7413275 (= res!2983879 call!682631)))

(assert (=> b!7413275 (= e!4433578 e!4433581)))

(declare-fun b!7413276 () Bool)

(assert (=> b!7413276 (= e!4433580 e!4433576)))

(declare-fun res!2983880 () Bool)

(assert (=> b!7413276 (= res!2983880 (not (nullable!8465 (reg!19750 (ite c!1375855 (reg!19750 (h!78372 (exprs!8861 setElem!56355))) (ite c!1375854 (regOne!39355 (h!78372 (exprs!8861 setElem!56355))) (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))))))))

(assert (=> b!7413276 (=> (not res!2983880) (not e!4433576))))

(declare-fun b!7413277 () Bool)

(assert (=> b!7413277 (= e!4433580 e!4433578)))

(assert (=> b!7413277 (= c!1375877 ((_ is Union!19421) (ite c!1375855 (reg!19750 (h!78372 (exprs!8861 setElem!56355))) (ite c!1375854 (regOne!39355 (h!78372 (exprs!8861 setElem!56355))) (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))))))

(declare-fun b!7413278 () Bool)

(assert (=> b!7413278 (= e!4433581 call!682630)))

(assert (= (and d!2292804 (not res!2983881)) b!7413274))

(assert (= (and b!7413274 c!1375878) b!7413276))

(assert (= (and b!7413274 (not c!1375878)) b!7413277))

(assert (= (and b!7413276 res!2983880) b!7413270))

(assert (= (and b!7413277 c!1375877) b!7413275))

(assert (= (and b!7413277 (not c!1375877)) b!7413273))

(assert (= (and b!7413275 res!2983879) b!7413278))

(assert (= (and b!7413273 (not res!2983877)) b!7413272))

(assert (= (and b!7413272 res!2983878) b!7413271))

(assert (= (or b!7413275 b!7413272) bm!682627))

(assert (= (or b!7413278 b!7413271) bm!682626))

(assert (= (or b!7413270 bm!682627) bm!682625))

(declare-fun m!8047616 () Bool)

(assert (=> bm!682625 m!8047616))

(declare-fun m!8047620 () Bool)

(assert (=> bm!682626 m!8047620))

(declare-fun m!8047624 () Bool)

(assert (=> b!7413276 m!8047624))

(assert (=> bm!682589 d!2292804))

(declare-fun d!2292810 () Bool)

(assert (=> d!2292810 (= (nullable!8465 (h!78372 (t!386609 (exprs!8861 c!10532)))) (nullableFct!3412 (h!78372 (t!386609 (exprs!8861 c!10532)))))))

(declare-fun bs!1925033 () Bool)

(assert (= bs!1925033 d!2292810))

(declare-fun m!8047626 () Bool)

(assert (=> bs!1925033 m!8047626))

(assert (=> bs!1925022 d!2292810))

(declare-fun b!7413281 () Bool)

(declare-fun e!4433585 () Bool)

(declare-fun call!682635 () Bool)

(assert (=> b!7413281 (= e!4433585 call!682635)))

(declare-fun d!2292812 () Bool)

(declare-fun res!2983888 () Bool)

(declare-fun e!4433584 () Bool)

(assert (=> d!2292812 (=> res!2983888 e!4433584)))

(assert (=> d!2292812 (= res!2983888 ((_ is ElementMatch!19421) (ite c!1375854 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355))))))))

(assert (=> d!2292812 (= (validRegex!9969 (ite c!1375854 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355))))) e!4433584)))

(declare-fun b!7413282 () Bool)

(declare-fun e!4433586 () Bool)

(declare-fun call!682633 () Bool)

(assert (=> b!7413282 (= e!4433586 call!682633)))

(declare-fun bm!682628 () Bool)

(declare-fun c!1375879 () Bool)

(declare-fun c!1375880 () Bool)

(assert (=> bm!682628 (= call!682635 (validRegex!9969 (ite c!1375880 (reg!19750 (ite c!1375854 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355))))) (ite c!1375879 (regOne!39355 (ite c!1375854 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355))))) (regOne!39354 (ite c!1375854 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))))))))

(declare-fun bm!682629 () Bool)

(assert (=> bm!682629 (= call!682633 (validRegex!9969 (ite c!1375879 (regTwo!39355 (ite c!1375854 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355))))) (regTwo!39354 (ite c!1375854 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355))))))))))

(declare-fun bm!682630 () Bool)

(declare-fun call!682634 () Bool)

(assert (=> bm!682630 (= call!682634 call!682635)))

(declare-fun b!7413283 () Bool)

(declare-fun e!4433588 () Bool)

(assert (=> b!7413283 (= e!4433588 e!4433586)))

(declare-fun res!2983885 () Bool)

(assert (=> b!7413283 (=> (not res!2983885) (not e!4433586))))

(assert (=> b!7413283 (= res!2983885 call!682634)))

(declare-fun b!7413284 () Bool)

(declare-fun res!2983884 () Bool)

(assert (=> b!7413284 (=> res!2983884 e!4433588)))

(assert (=> b!7413284 (= res!2983884 (not ((_ is Concat!28266) (ite c!1375854 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))))))

(declare-fun e!4433587 () Bool)

(assert (=> b!7413284 (= e!4433587 e!4433588)))

(declare-fun b!7413285 () Bool)

(declare-fun e!4433589 () Bool)

(assert (=> b!7413285 (= e!4433584 e!4433589)))

(assert (=> b!7413285 (= c!1375880 ((_ is Star!19421) (ite c!1375854 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355))))))))

(declare-fun b!7413286 () Bool)

(declare-fun res!2983886 () Bool)

(declare-fun e!4433590 () Bool)

(assert (=> b!7413286 (=> (not res!2983886) (not e!4433590))))

(assert (=> b!7413286 (= res!2983886 call!682634)))

(assert (=> b!7413286 (= e!4433587 e!4433590)))

(declare-fun b!7413287 () Bool)

(assert (=> b!7413287 (= e!4433589 e!4433585)))

(declare-fun res!2983887 () Bool)

(assert (=> b!7413287 (= res!2983887 (not (nullable!8465 (reg!19750 (ite c!1375854 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355))))))))))

(assert (=> b!7413287 (=> (not res!2983887) (not e!4433585))))

(declare-fun b!7413288 () Bool)

(assert (=> b!7413288 (= e!4433589 e!4433587)))

(assert (=> b!7413288 (= c!1375879 ((_ is Union!19421) (ite c!1375854 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355))) (regTwo!39354 (h!78372 (exprs!8861 setElem!56355))))))))

(declare-fun b!7413289 () Bool)

(assert (=> b!7413289 (= e!4433590 call!682633)))

(assert (= (and d!2292812 (not res!2983888)) b!7413285))

(assert (= (and b!7413285 c!1375880) b!7413287))

(assert (= (and b!7413285 (not c!1375880)) b!7413288))

(assert (= (and b!7413287 res!2983887) b!7413281))

(assert (= (and b!7413288 c!1375879) b!7413286))

(assert (= (and b!7413288 (not c!1375879)) b!7413284))

(assert (= (and b!7413286 res!2983886) b!7413289))

(assert (= (and b!7413284 (not res!2983884)) b!7413283))

(assert (= (and b!7413283 res!2983885) b!7413282))

(assert (= (or b!7413286 b!7413283) bm!682630))

(assert (= (or b!7413289 b!7413282) bm!682629))

(assert (= (or b!7413281 bm!682630) bm!682628))

(declare-fun m!8047630 () Bool)

(assert (=> bm!682628 m!8047630))

(declare-fun m!8047634 () Bool)

(assert (=> bm!682629 m!8047634))

(declare-fun m!8047638 () Bool)

(assert (=> b!7413287 m!8047638))

(assert (=> bm!682590 d!2292812))

(declare-fun b!7413294 () Bool)

(declare-fun e!4433594 () Bool)

(assert (=> b!7413294 (= e!4433594 tp_is_empty!49105)))

(assert (=> b!7413130 (= tp!2122137 e!4433594)))

(declare-fun b!7413296 () Bool)

(declare-fun tp!2122175 () Bool)

(assert (=> b!7413296 (= e!4433594 tp!2122175)))

(declare-fun b!7413295 () Bool)

(declare-fun tp!2122177 () Bool)

(declare-fun tp!2122174 () Bool)

(assert (=> b!7413295 (= e!4433594 (and tp!2122177 tp!2122174))))

(declare-fun b!7413297 () Bool)

(declare-fun tp!2122176 () Bool)

(declare-fun tp!2122173 () Bool)

(assert (=> b!7413297 (= e!4433594 (and tp!2122176 tp!2122173))))

(assert (= (and b!7413130 ((_ is ElementMatch!19421) (regOne!39355 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413294))

(assert (= (and b!7413130 ((_ is Concat!28266) (regOne!39355 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413295))

(assert (= (and b!7413130 ((_ is Star!19421) (regOne!39355 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413296))

(assert (= (and b!7413130 ((_ is Union!19421) (regOne!39355 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413297))

(declare-fun b!7413298 () Bool)

(declare-fun e!4433596 () Bool)

(assert (=> b!7413298 (= e!4433596 tp_is_empty!49105)))

(assert (=> b!7413130 (= tp!2122134 e!4433596)))

(declare-fun b!7413300 () Bool)

(declare-fun tp!2122180 () Bool)

(assert (=> b!7413300 (= e!4433596 tp!2122180)))

(declare-fun b!7413299 () Bool)

(declare-fun tp!2122182 () Bool)

(declare-fun tp!2122179 () Bool)

(assert (=> b!7413299 (= e!4433596 (and tp!2122182 tp!2122179))))

(declare-fun b!7413301 () Bool)

(declare-fun tp!2122181 () Bool)

(declare-fun tp!2122178 () Bool)

(assert (=> b!7413301 (= e!4433596 (and tp!2122181 tp!2122178))))

(assert (= (and b!7413130 ((_ is ElementMatch!19421) (regTwo!39355 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413298))

(assert (= (and b!7413130 ((_ is Concat!28266) (regTwo!39355 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413299))

(assert (= (and b!7413130 ((_ is Star!19421) (regTwo!39355 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413300))

(assert (= (and b!7413130 ((_ is Union!19421) (regTwo!39355 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413301))

(declare-fun b!7413302 () Bool)

(declare-fun e!4433597 () Bool)

(assert (=> b!7413302 (= e!4433597 tp_is_empty!49105)))

(assert (=> b!7413105 (= tp!2122105 e!4433597)))

(declare-fun b!7413304 () Bool)

(declare-fun tp!2122185 () Bool)

(assert (=> b!7413304 (= e!4433597 tp!2122185)))

(declare-fun b!7413303 () Bool)

(declare-fun tp!2122187 () Bool)

(declare-fun tp!2122184 () Bool)

(assert (=> b!7413303 (= e!4433597 (and tp!2122187 tp!2122184))))

(declare-fun b!7413305 () Bool)

(declare-fun tp!2122186 () Bool)

(declare-fun tp!2122183 () Bool)

(assert (=> b!7413305 (= e!4433597 (and tp!2122186 tp!2122183))))

(assert (= (and b!7413105 ((_ is ElementMatch!19421) (regOne!39355 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413302))

(assert (= (and b!7413105 ((_ is Concat!28266) (regOne!39355 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413303))

(assert (= (and b!7413105 ((_ is Star!19421) (regOne!39355 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413304))

(assert (= (and b!7413105 ((_ is Union!19421) (regOne!39355 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413305))

(declare-fun b!7413315 () Bool)

(declare-fun e!4433605 () Bool)

(assert (=> b!7413315 (= e!4433605 tp_is_empty!49105)))

(assert (=> b!7413105 (= tp!2122102 e!4433605)))

(declare-fun b!7413317 () Bool)

(declare-fun tp!2122190 () Bool)

(assert (=> b!7413317 (= e!4433605 tp!2122190)))

(declare-fun b!7413316 () Bool)

(declare-fun tp!2122192 () Bool)

(declare-fun tp!2122189 () Bool)

(assert (=> b!7413316 (= e!4433605 (and tp!2122192 tp!2122189))))

(declare-fun b!7413318 () Bool)

(declare-fun tp!2122191 () Bool)

(declare-fun tp!2122188 () Bool)

(assert (=> b!7413318 (= e!4433605 (and tp!2122191 tp!2122188))))

(assert (= (and b!7413105 ((_ is ElementMatch!19421) (regTwo!39355 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413315))

(assert (= (and b!7413105 ((_ is Concat!28266) (regTwo!39355 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413316))

(assert (= (and b!7413105 ((_ is Star!19421) (regTwo!39355 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413317))

(assert (= (and b!7413105 ((_ is Union!19421) (regTwo!39355 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413318))

(declare-fun b!7413319 () Bool)

(declare-fun e!4433606 () Bool)

(assert (=> b!7413319 (= e!4433606 tp_is_empty!49105)))

(assert (=> b!7413150 (= tp!2122165 e!4433606)))

(declare-fun b!7413321 () Bool)

(declare-fun tp!2122195 () Bool)

(assert (=> b!7413321 (= e!4433606 tp!2122195)))

(declare-fun b!7413320 () Bool)

(declare-fun tp!2122197 () Bool)

(declare-fun tp!2122194 () Bool)

(assert (=> b!7413320 (= e!4433606 (and tp!2122197 tp!2122194))))

(declare-fun b!7413322 () Bool)

(declare-fun tp!2122196 () Bool)

(declare-fun tp!2122193 () Bool)

(assert (=> b!7413322 (= e!4433606 (and tp!2122196 tp!2122193))))

(assert (= (and b!7413150 ((_ is ElementMatch!19421) (regOne!39355 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413319))

(assert (= (and b!7413150 ((_ is Concat!28266) (regOne!39355 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413320))

(assert (= (and b!7413150 ((_ is Star!19421) (regOne!39355 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413321))

(assert (= (and b!7413150 ((_ is Union!19421) (regOne!39355 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413322))

(declare-fun b!7413323 () Bool)

(declare-fun e!4433607 () Bool)

(assert (=> b!7413323 (= e!4433607 tp_is_empty!49105)))

(assert (=> b!7413150 (= tp!2122162 e!4433607)))

(declare-fun b!7413325 () Bool)

(declare-fun tp!2122200 () Bool)

(assert (=> b!7413325 (= e!4433607 tp!2122200)))

(declare-fun b!7413324 () Bool)

(declare-fun tp!2122202 () Bool)

(declare-fun tp!2122199 () Bool)

(assert (=> b!7413324 (= e!4433607 (and tp!2122202 tp!2122199))))

(declare-fun b!7413326 () Bool)

(declare-fun tp!2122201 () Bool)

(declare-fun tp!2122198 () Bool)

(assert (=> b!7413326 (= e!4433607 (and tp!2122201 tp!2122198))))

(assert (= (and b!7413150 ((_ is ElementMatch!19421) (regTwo!39355 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413323))

(assert (= (and b!7413150 ((_ is Concat!28266) (regTwo!39355 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413324))

(assert (= (and b!7413150 ((_ is Star!19421) (regTwo!39355 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413325))

(assert (= (and b!7413150 ((_ is Union!19421) (regTwo!39355 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413326))

(declare-fun b!7413327 () Bool)

(declare-fun e!4433608 () Bool)

(assert (=> b!7413327 (= e!4433608 tp_is_empty!49105)))

(assert (=> b!7413137 (= tp!2122150 e!4433608)))

(declare-fun b!7413329 () Bool)

(declare-fun tp!2122205 () Bool)

(assert (=> b!7413329 (= e!4433608 tp!2122205)))

(declare-fun b!7413328 () Bool)

(declare-fun tp!2122207 () Bool)

(declare-fun tp!2122204 () Bool)

(assert (=> b!7413328 (= e!4433608 (and tp!2122207 tp!2122204))))

(declare-fun b!7413330 () Bool)

(declare-fun tp!2122206 () Bool)

(declare-fun tp!2122203 () Bool)

(assert (=> b!7413330 (= e!4433608 (and tp!2122206 tp!2122203))))

(assert (= (and b!7413137 ((_ is ElementMatch!19421) (regOne!39354 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413327))

(assert (= (and b!7413137 ((_ is Concat!28266) (regOne!39354 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413328))

(assert (= (and b!7413137 ((_ is Star!19421) (regOne!39354 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413329))

(assert (= (and b!7413137 ((_ is Union!19421) (regOne!39354 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413330))

(declare-fun b!7413331 () Bool)

(declare-fun e!4433609 () Bool)

(assert (=> b!7413331 (= e!4433609 tp_is_empty!49105)))

(assert (=> b!7413137 (= tp!2122147 e!4433609)))

(declare-fun b!7413333 () Bool)

(declare-fun tp!2122210 () Bool)

(assert (=> b!7413333 (= e!4433609 tp!2122210)))

(declare-fun b!7413332 () Bool)

(declare-fun tp!2122212 () Bool)

(declare-fun tp!2122209 () Bool)

(assert (=> b!7413332 (= e!4433609 (and tp!2122212 tp!2122209))))

(declare-fun b!7413334 () Bool)

(declare-fun tp!2122211 () Bool)

(declare-fun tp!2122208 () Bool)

(assert (=> b!7413334 (= e!4433609 (and tp!2122211 tp!2122208))))

(assert (= (and b!7413137 ((_ is ElementMatch!19421) (regTwo!39354 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413331))

(assert (= (and b!7413137 ((_ is Concat!28266) (regTwo!39354 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413332))

(assert (= (and b!7413137 ((_ is Star!19421) (regTwo!39354 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413333))

(assert (= (and b!7413137 ((_ is Union!19421) (regTwo!39354 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413334))

(declare-fun b!7413335 () Bool)

(declare-fun e!4433610 () Bool)

(assert (=> b!7413335 (= e!4433610 tp_is_empty!49105)))

(assert (=> b!7413138 (= tp!2122148 e!4433610)))

(declare-fun b!7413337 () Bool)

(declare-fun tp!2122215 () Bool)

(assert (=> b!7413337 (= e!4433610 tp!2122215)))

(declare-fun b!7413336 () Bool)

(declare-fun tp!2122217 () Bool)

(declare-fun tp!2122214 () Bool)

(assert (=> b!7413336 (= e!4433610 (and tp!2122217 tp!2122214))))

(declare-fun b!7413338 () Bool)

(declare-fun tp!2122216 () Bool)

(declare-fun tp!2122213 () Bool)

(assert (=> b!7413338 (= e!4433610 (and tp!2122216 tp!2122213))))

(assert (= (and b!7413138 ((_ is ElementMatch!19421) (reg!19750 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413335))

(assert (= (and b!7413138 ((_ is Concat!28266) (reg!19750 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413336))

(assert (= (and b!7413138 ((_ is Star!19421) (reg!19750 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413337))

(assert (= (and b!7413138 ((_ is Union!19421) (reg!19750 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413338))

(declare-fun b!7413339 () Bool)

(declare-fun e!4433611 () Bool)

(assert (=> b!7413339 (= e!4433611 tp_is_empty!49105)))

(assert (=> b!7413122 (= tp!2122127 e!4433611)))

(declare-fun b!7413341 () Bool)

(declare-fun tp!2122220 () Bool)

(assert (=> b!7413341 (= e!4433611 tp!2122220)))

(declare-fun b!7413340 () Bool)

(declare-fun tp!2122222 () Bool)

(declare-fun tp!2122219 () Bool)

(assert (=> b!7413340 (= e!4433611 (and tp!2122222 tp!2122219))))

(declare-fun b!7413342 () Bool)

(declare-fun tp!2122221 () Bool)

(declare-fun tp!2122218 () Bool)

(assert (=> b!7413342 (= e!4433611 (and tp!2122221 tp!2122218))))

(assert (= (and b!7413122 ((_ is ElementMatch!19421) (h!78372 (t!386609 (exprs!8861 setElem!56361))))) b!7413339))

(assert (= (and b!7413122 ((_ is Concat!28266) (h!78372 (t!386609 (exprs!8861 setElem!56361))))) b!7413340))

(assert (= (and b!7413122 ((_ is Star!19421) (h!78372 (t!386609 (exprs!8861 setElem!56361))))) b!7413341))

(assert (= (and b!7413122 ((_ is Union!19421) (h!78372 (t!386609 (exprs!8861 setElem!56361))))) b!7413342))

(declare-fun b!7413343 () Bool)

(declare-fun e!4433612 () Bool)

(declare-fun tp!2122223 () Bool)

(declare-fun tp!2122224 () Bool)

(assert (=> b!7413343 (= e!4433612 (and tp!2122223 tp!2122224))))

(assert (=> b!7413122 (= tp!2122128 e!4433612)))

(assert (= (and b!7413122 ((_ is Cons!71924) (t!386609 (t!386609 (exprs!8861 setElem!56361))))) b!7413343))

(declare-fun b!7413344 () Bool)

(declare-fun e!4433613 () Bool)

(assert (=> b!7413344 (= e!4433613 tp_is_empty!49105)))

(assert (=> b!7413139 (= tp!2122149 e!4433613)))

(declare-fun b!7413346 () Bool)

(declare-fun tp!2122227 () Bool)

(assert (=> b!7413346 (= e!4433613 tp!2122227)))

(declare-fun b!7413345 () Bool)

(declare-fun tp!2122229 () Bool)

(declare-fun tp!2122226 () Bool)

(assert (=> b!7413345 (= e!4433613 (and tp!2122229 tp!2122226))))

(declare-fun b!7413347 () Bool)

(declare-fun tp!2122228 () Bool)

(declare-fun tp!2122225 () Bool)

(assert (=> b!7413347 (= e!4433613 (and tp!2122228 tp!2122225))))

(assert (= (and b!7413139 ((_ is ElementMatch!19421) (regOne!39355 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413344))

(assert (= (and b!7413139 ((_ is Concat!28266) (regOne!39355 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413345))

(assert (= (and b!7413139 ((_ is Star!19421) (regOne!39355 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413346))

(assert (= (and b!7413139 ((_ is Union!19421) (regOne!39355 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413347))

(declare-fun b!7413348 () Bool)

(declare-fun e!4433614 () Bool)

(assert (=> b!7413348 (= e!4433614 tp_is_empty!49105)))

(assert (=> b!7413139 (= tp!2122146 e!4433614)))

(declare-fun b!7413350 () Bool)

(declare-fun tp!2122232 () Bool)

(assert (=> b!7413350 (= e!4433614 tp!2122232)))

(declare-fun b!7413349 () Bool)

(declare-fun tp!2122234 () Bool)

(declare-fun tp!2122231 () Bool)

(assert (=> b!7413349 (= e!4433614 (and tp!2122234 tp!2122231))))

(declare-fun b!7413351 () Bool)

(declare-fun tp!2122233 () Bool)

(declare-fun tp!2122230 () Bool)

(assert (=> b!7413351 (= e!4433614 (and tp!2122233 tp!2122230))))

(assert (= (and b!7413139 ((_ is ElementMatch!19421) (regTwo!39355 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413348))

(assert (= (and b!7413139 ((_ is Concat!28266) (regTwo!39355 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413349))

(assert (= (and b!7413139 ((_ is Star!19421) (regTwo!39355 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413350))

(assert (= (and b!7413139 ((_ is Union!19421) (regTwo!39355 (regTwo!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413351))

(declare-fun b!7413352 () Bool)

(declare-fun e!4433615 () Bool)

(assert (=> b!7413352 (= e!4433615 tp_is_empty!49105)))

(assert (=> b!7413131 (= tp!2122139 e!4433615)))

(declare-fun b!7413354 () Bool)

(declare-fun tp!2122237 () Bool)

(assert (=> b!7413354 (= e!4433615 tp!2122237)))

(declare-fun b!7413353 () Bool)

(declare-fun tp!2122239 () Bool)

(declare-fun tp!2122236 () Bool)

(assert (=> b!7413353 (= e!4433615 (and tp!2122239 tp!2122236))))

(declare-fun b!7413355 () Bool)

(declare-fun tp!2122238 () Bool)

(declare-fun tp!2122235 () Bool)

(assert (=> b!7413355 (= e!4433615 (and tp!2122238 tp!2122235))))

(assert (= (and b!7413131 ((_ is ElementMatch!19421) (h!78372 (t!386609 (t!386609 (exprs!8861 setElem!56355)))))) b!7413352))

(assert (= (and b!7413131 ((_ is Concat!28266) (h!78372 (t!386609 (t!386609 (exprs!8861 setElem!56355)))))) b!7413353))

(assert (= (and b!7413131 ((_ is Star!19421) (h!78372 (t!386609 (t!386609 (exprs!8861 setElem!56355)))))) b!7413354))

(assert (= (and b!7413131 ((_ is Union!19421) (h!78372 (t!386609 (t!386609 (exprs!8861 setElem!56355)))))) b!7413355))

(declare-fun b!7413356 () Bool)

(declare-fun e!4433616 () Bool)

(declare-fun tp!2122240 () Bool)

(declare-fun tp!2122241 () Bool)

(assert (=> b!7413356 (= e!4433616 (and tp!2122240 tp!2122241))))

(assert (=> b!7413131 (= tp!2122140 e!4433616)))

(assert (= (and b!7413131 ((_ is Cons!71924) (t!386609 (t!386609 (t!386609 (exprs!8861 setElem!56355)))))) b!7413356))

(declare-fun condSetEmpty!56366 () Bool)

(assert (=> setNonEmpty!56365 (= condSetEmpty!56366 (= setRest!56365 ((as const (Array Context!16722 Bool)) false)))))

(declare-fun setRes!56366 () Bool)

(assert (=> setNonEmpty!56365 (= tp!2122154 setRes!56366)))

(declare-fun setIsEmpty!56366 () Bool)

(assert (=> setIsEmpty!56366 setRes!56366))

(declare-fun setNonEmpty!56366 () Bool)

(declare-fun tp!2122243 () Bool)

(declare-fun e!4433617 () Bool)

(declare-fun setElem!56366 () Context!16722)

(assert (=> setNonEmpty!56366 (= setRes!56366 (and tp!2122243 (inv!91913 setElem!56366) e!4433617))))

(declare-fun setRest!56366 () (InoxSet Context!16722))

(assert (=> setNonEmpty!56366 (= setRest!56365 ((_ map or) (store ((as const (Array Context!16722 Bool)) false) setElem!56366 true) setRest!56366))))

(declare-fun b!7413357 () Bool)

(declare-fun tp!2122242 () Bool)

(assert (=> b!7413357 (= e!4433617 tp!2122242)))

(assert (= (and setNonEmpty!56365 condSetEmpty!56366) setIsEmpty!56366))

(assert (= (and setNonEmpty!56365 (not condSetEmpty!56366)) setNonEmpty!56366))

(assert (= setNonEmpty!56366 b!7413357))

(declare-fun m!8047650 () Bool)

(assert (=> setNonEmpty!56366 m!8047650))

(declare-fun b!7413358 () Bool)

(declare-fun e!4433618 () Bool)

(assert (=> b!7413358 (= e!4433618 tp_is_empty!49105)))

(assert (=> b!7413119 (= tp!2122126 e!4433618)))

(declare-fun b!7413360 () Bool)

(declare-fun tp!2122246 () Bool)

(assert (=> b!7413360 (= e!4433618 tp!2122246)))

(declare-fun b!7413359 () Bool)

(declare-fun tp!2122248 () Bool)

(declare-fun tp!2122245 () Bool)

(assert (=> b!7413359 (= e!4433618 (and tp!2122248 tp!2122245))))

(declare-fun b!7413361 () Bool)

(declare-fun tp!2122247 () Bool)

(declare-fun tp!2122244 () Bool)

(assert (=> b!7413361 (= e!4433618 (and tp!2122247 tp!2122244))))

(assert (= (and b!7413119 ((_ is ElementMatch!19421) (regOne!39354 (h!78372 (exprs!8861 setElem!56361))))) b!7413358))

(assert (= (and b!7413119 ((_ is Concat!28266) (regOne!39354 (h!78372 (exprs!8861 setElem!56361))))) b!7413359))

(assert (= (and b!7413119 ((_ is Star!19421) (regOne!39354 (h!78372 (exprs!8861 setElem!56361))))) b!7413360))

(assert (= (and b!7413119 ((_ is Union!19421) (regOne!39354 (h!78372 (exprs!8861 setElem!56361))))) b!7413361))

(declare-fun b!7413362 () Bool)

(declare-fun e!4433619 () Bool)

(assert (=> b!7413362 (= e!4433619 tp_is_empty!49105)))

(assert (=> b!7413119 (= tp!2122123 e!4433619)))

(declare-fun b!7413364 () Bool)

(declare-fun tp!2122251 () Bool)

(assert (=> b!7413364 (= e!4433619 tp!2122251)))

(declare-fun b!7413363 () Bool)

(declare-fun tp!2122253 () Bool)

(declare-fun tp!2122250 () Bool)

(assert (=> b!7413363 (= e!4433619 (and tp!2122253 tp!2122250))))

(declare-fun b!7413365 () Bool)

(declare-fun tp!2122252 () Bool)

(declare-fun tp!2122249 () Bool)

(assert (=> b!7413365 (= e!4433619 (and tp!2122252 tp!2122249))))

(assert (= (and b!7413119 ((_ is ElementMatch!19421) (regTwo!39354 (h!78372 (exprs!8861 setElem!56361))))) b!7413362))

(assert (= (and b!7413119 ((_ is Concat!28266) (regTwo!39354 (h!78372 (exprs!8861 setElem!56361))))) b!7413363))

(assert (= (and b!7413119 ((_ is Star!19421) (regTwo!39354 (h!78372 (exprs!8861 setElem!56361))))) b!7413364))

(assert (= (and b!7413119 ((_ is Union!19421) (regTwo!39354 (h!78372 (exprs!8861 setElem!56361))))) b!7413365))

(declare-fun b!7413375 () Bool)

(declare-fun e!4433627 () Bool)

(declare-fun tp!2122254 () Bool)

(declare-fun tp!2122255 () Bool)

(assert (=> b!7413375 (= e!4433627 (and tp!2122254 tp!2122255))))

(assert (=> b!7413141 (= tp!2122153 e!4433627)))

(assert (= (and b!7413141 ((_ is Cons!71924) (exprs!8861 setElem!56365))) b!7413375))

(declare-fun b!7413376 () Bool)

(declare-fun e!4433628 () Bool)

(assert (=> b!7413376 (= e!4433628 tp_is_empty!49105)))

(assert (=> b!7413120 (= tp!2122124 e!4433628)))

(declare-fun b!7413378 () Bool)

(declare-fun tp!2122258 () Bool)

(assert (=> b!7413378 (= e!4433628 tp!2122258)))

(declare-fun b!7413377 () Bool)

(declare-fun tp!2122260 () Bool)

(declare-fun tp!2122257 () Bool)

(assert (=> b!7413377 (= e!4433628 (and tp!2122260 tp!2122257))))

(declare-fun b!7413379 () Bool)

(declare-fun tp!2122259 () Bool)

(declare-fun tp!2122256 () Bool)

(assert (=> b!7413379 (= e!4433628 (and tp!2122259 tp!2122256))))

(assert (= (and b!7413120 ((_ is ElementMatch!19421) (reg!19750 (h!78372 (exprs!8861 setElem!56361))))) b!7413376))

(assert (= (and b!7413120 ((_ is Concat!28266) (reg!19750 (h!78372 (exprs!8861 setElem!56361))))) b!7413377))

(assert (= (and b!7413120 ((_ is Star!19421) (reg!19750 (h!78372 (exprs!8861 setElem!56361))))) b!7413378))

(assert (= (and b!7413120 ((_ is Union!19421) (reg!19750 (h!78372 (exprs!8861 setElem!56361))))) b!7413379))

(declare-fun b!7413380 () Bool)

(declare-fun e!4433629 () Bool)

(assert (=> b!7413380 (= e!4433629 tp_is_empty!49105)))

(assert (=> b!7413111 (= tp!2122116 e!4433629)))

(declare-fun b!7413382 () Bool)

(declare-fun tp!2122263 () Bool)

(assert (=> b!7413382 (= e!4433629 tp!2122263)))

(declare-fun b!7413381 () Bool)

(declare-fun tp!2122265 () Bool)

(declare-fun tp!2122262 () Bool)

(assert (=> b!7413381 (= e!4433629 (and tp!2122265 tp!2122262))))

(declare-fun b!7413383 () Bool)

(declare-fun tp!2122264 () Bool)

(declare-fun tp!2122261 () Bool)

(assert (=> b!7413383 (= e!4433629 (and tp!2122264 tp!2122261))))

(assert (= (and b!7413111 ((_ is ElementMatch!19421) (regOne!39354 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413380))

(assert (= (and b!7413111 ((_ is Concat!28266) (regOne!39354 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413381))

(assert (= (and b!7413111 ((_ is Star!19421) (regOne!39354 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413382))

(assert (= (and b!7413111 ((_ is Union!19421) (regOne!39354 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413383))

(declare-fun b!7413384 () Bool)

(declare-fun e!4433630 () Bool)

(assert (=> b!7413384 (= e!4433630 tp_is_empty!49105)))

(assert (=> b!7413111 (= tp!2122113 e!4433630)))

(declare-fun b!7413386 () Bool)

(declare-fun tp!2122268 () Bool)

(assert (=> b!7413386 (= e!4433630 tp!2122268)))

(declare-fun b!7413385 () Bool)

(declare-fun tp!2122270 () Bool)

(declare-fun tp!2122267 () Bool)

(assert (=> b!7413385 (= e!4433630 (and tp!2122270 tp!2122267))))

(declare-fun b!7413387 () Bool)

(declare-fun tp!2122269 () Bool)

(declare-fun tp!2122266 () Bool)

(assert (=> b!7413387 (= e!4433630 (and tp!2122269 tp!2122266))))

(assert (= (and b!7413111 ((_ is ElementMatch!19421) (regTwo!39354 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413384))

(assert (= (and b!7413111 ((_ is Concat!28266) (regTwo!39354 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413385))

(assert (= (and b!7413111 ((_ is Star!19421) (regTwo!39354 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413386))

(assert (= (and b!7413111 ((_ is Union!19421) (regTwo!39354 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413387))

(declare-fun b!7413388 () Bool)

(declare-fun e!4433631 () Bool)

(assert (=> b!7413388 (= e!4433631 tp_is_empty!49105)))

(assert (=> b!7413112 (= tp!2122114 e!4433631)))

(declare-fun b!7413390 () Bool)

(declare-fun tp!2122273 () Bool)

(assert (=> b!7413390 (= e!4433631 tp!2122273)))

(declare-fun b!7413389 () Bool)

(declare-fun tp!2122275 () Bool)

(declare-fun tp!2122272 () Bool)

(assert (=> b!7413389 (= e!4433631 (and tp!2122275 tp!2122272))))

(declare-fun b!7413391 () Bool)

(declare-fun tp!2122274 () Bool)

(declare-fun tp!2122271 () Bool)

(assert (=> b!7413391 (= e!4433631 (and tp!2122274 tp!2122271))))

(assert (= (and b!7413112 ((_ is ElementMatch!19421) (reg!19750 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413388))

(assert (= (and b!7413112 ((_ is Concat!28266) (reg!19750 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413389))

(assert (= (and b!7413112 ((_ is Star!19421) (reg!19750 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413390))

(assert (= (and b!7413112 ((_ is Union!19421) (reg!19750 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413391))

(declare-fun b!7413392 () Bool)

(declare-fun e!4433632 () Bool)

(assert (=> b!7413392 (= e!4433632 tp_is_empty!49105)))

(assert (=> b!7413121 (= tp!2122125 e!4433632)))

(declare-fun b!7413394 () Bool)

(declare-fun tp!2122278 () Bool)

(assert (=> b!7413394 (= e!4433632 tp!2122278)))

(declare-fun b!7413393 () Bool)

(declare-fun tp!2122280 () Bool)

(declare-fun tp!2122277 () Bool)

(assert (=> b!7413393 (= e!4433632 (and tp!2122280 tp!2122277))))

(declare-fun b!7413395 () Bool)

(declare-fun tp!2122279 () Bool)

(declare-fun tp!2122276 () Bool)

(assert (=> b!7413395 (= e!4433632 (and tp!2122279 tp!2122276))))

(assert (= (and b!7413121 ((_ is ElementMatch!19421) (regOne!39355 (h!78372 (exprs!8861 setElem!56361))))) b!7413392))

(assert (= (and b!7413121 ((_ is Concat!28266) (regOne!39355 (h!78372 (exprs!8861 setElem!56361))))) b!7413393))

(assert (= (and b!7413121 ((_ is Star!19421) (regOne!39355 (h!78372 (exprs!8861 setElem!56361))))) b!7413394))

(assert (= (and b!7413121 ((_ is Union!19421) (regOne!39355 (h!78372 (exprs!8861 setElem!56361))))) b!7413395))

(declare-fun b!7413396 () Bool)

(declare-fun e!4433633 () Bool)

(assert (=> b!7413396 (= e!4433633 tp_is_empty!49105)))

(assert (=> b!7413121 (= tp!2122122 e!4433633)))

(declare-fun b!7413398 () Bool)

(declare-fun tp!2122283 () Bool)

(assert (=> b!7413398 (= e!4433633 tp!2122283)))

(declare-fun b!7413397 () Bool)

(declare-fun tp!2122285 () Bool)

(declare-fun tp!2122282 () Bool)

(assert (=> b!7413397 (= e!4433633 (and tp!2122285 tp!2122282))))

(declare-fun b!7413399 () Bool)

(declare-fun tp!2122284 () Bool)

(declare-fun tp!2122281 () Bool)

(assert (=> b!7413399 (= e!4433633 (and tp!2122284 tp!2122281))))

(assert (= (and b!7413121 ((_ is ElementMatch!19421) (regTwo!39355 (h!78372 (exprs!8861 setElem!56361))))) b!7413396))

(assert (= (and b!7413121 ((_ is Concat!28266) (regTwo!39355 (h!78372 (exprs!8861 setElem!56361))))) b!7413397))

(assert (= (and b!7413121 ((_ is Star!19421) (regTwo!39355 (h!78372 (exprs!8861 setElem!56361))))) b!7413398))

(assert (= (and b!7413121 ((_ is Union!19421) (regTwo!39355 (h!78372 (exprs!8861 setElem!56361))))) b!7413399))

(declare-fun b!7413400 () Bool)

(declare-fun e!4433634 () Bool)

(assert (=> b!7413400 (= e!4433634 tp_is_empty!49105)))

(assert (=> b!7413128 (= tp!2122138 e!4433634)))

(declare-fun b!7413402 () Bool)

(declare-fun tp!2122288 () Bool)

(assert (=> b!7413402 (= e!4433634 tp!2122288)))

(declare-fun b!7413401 () Bool)

(declare-fun tp!2122290 () Bool)

(declare-fun tp!2122287 () Bool)

(assert (=> b!7413401 (= e!4433634 (and tp!2122290 tp!2122287))))

(declare-fun b!7413403 () Bool)

(declare-fun tp!2122289 () Bool)

(declare-fun tp!2122286 () Bool)

(assert (=> b!7413403 (= e!4433634 (and tp!2122289 tp!2122286))))

(assert (= (and b!7413128 ((_ is ElementMatch!19421) (regOne!39354 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413400))

(assert (= (and b!7413128 ((_ is Concat!28266) (regOne!39354 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413401))

(assert (= (and b!7413128 ((_ is Star!19421) (regOne!39354 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413402))

(assert (= (and b!7413128 ((_ is Union!19421) (regOne!39354 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413403))

(declare-fun b!7413404 () Bool)

(declare-fun e!4433637 () Bool)

(assert (=> b!7413404 (= e!4433637 tp_is_empty!49105)))

(assert (=> b!7413128 (= tp!2122135 e!4433637)))

(declare-fun b!7413406 () Bool)

(declare-fun tp!2122293 () Bool)

(assert (=> b!7413406 (= e!4433637 tp!2122293)))

(declare-fun b!7413405 () Bool)

(declare-fun tp!2122295 () Bool)

(declare-fun tp!2122292 () Bool)

(assert (=> b!7413405 (= e!4433637 (and tp!2122295 tp!2122292))))

(declare-fun b!7413407 () Bool)

(declare-fun tp!2122294 () Bool)

(declare-fun tp!2122291 () Bool)

(assert (=> b!7413407 (= e!4433637 (and tp!2122294 tp!2122291))))

(assert (= (and b!7413128 ((_ is ElementMatch!19421) (regTwo!39354 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413404))

(assert (= (and b!7413128 ((_ is Concat!28266) (regTwo!39354 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413405))

(assert (= (and b!7413128 ((_ is Star!19421) (regTwo!39354 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413406))

(assert (= (and b!7413128 ((_ is Union!19421) (regTwo!39354 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413407))

(declare-fun b!7413417 () Bool)

(declare-fun e!4433643 () Bool)

(assert (=> b!7413417 (= e!4433643 tp_is_empty!49105)))

(assert (=> b!7413103 (= tp!2122106 e!4433643)))

(declare-fun b!7413419 () Bool)

(declare-fun tp!2122298 () Bool)

(assert (=> b!7413419 (= e!4433643 tp!2122298)))

(declare-fun b!7413418 () Bool)

(declare-fun tp!2122300 () Bool)

(declare-fun tp!2122297 () Bool)

(assert (=> b!7413418 (= e!4433643 (and tp!2122300 tp!2122297))))

(declare-fun b!7413420 () Bool)

(declare-fun tp!2122299 () Bool)

(declare-fun tp!2122296 () Bool)

(assert (=> b!7413420 (= e!4433643 (and tp!2122299 tp!2122296))))

(assert (= (and b!7413103 ((_ is ElementMatch!19421) (regOne!39354 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413417))

(assert (= (and b!7413103 ((_ is Concat!28266) (regOne!39354 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413418))

(assert (= (and b!7413103 ((_ is Star!19421) (regOne!39354 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413419))

(assert (= (and b!7413103 ((_ is Union!19421) (regOne!39354 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413420))

(declare-fun b!7413421 () Bool)

(declare-fun e!4433644 () Bool)

(assert (=> b!7413421 (= e!4433644 tp_is_empty!49105)))

(assert (=> b!7413103 (= tp!2122103 e!4433644)))

(declare-fun b!7413423 () Bool)

(declare-fun tp!2122303 () Bool)

(assert (=> b!7413423 (= e!4433644 tp!2122303)))

(declare-fun b!7413422 () Bool)

(declare-fun tp!2122305 () Bool)

(declare-fun tp!2122302 () Bool)

(assert (=> b!7413422 (= e!4433644 (and tp!2122305 tp!2122302))))

(declare-fun b!7413424 () Bool)

(declare-fun tp!2122304 () Bool)

(declare-fun tp!2122301 () Bool)

(assert (=> b!7413424 (= e!4433644 (and tp!2122304 tp!2122301))))

(assert (= (and b!7413103 ((_ is ElementMatch!19421) (regTwo!39354 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413421))

(assert (= (and b!7413103 ((_ is Concat!28266) (regTwo!39354 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413422))

(assert (= (and b!7413103 ((_ is Star!19421) (regTwo!39354 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413423))

(assert (= (and b!7413103 ((_ is Union!19421) (regTwo!39354 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413424))

(declare-fun b!7413425 () Bool)

(declare-fun e!4433645 () Bool)

(assert (=> b!7413425 (= e!4433645 tp_is_empty!49105)))

(assert (=> b!7413148 (= tp!2122166 e!4433645)))

(declare-fun b!7413427 () Bool)

(declare-fun tp!2122308 () Bool)

(assert (=> b!7413427 (= e!4433645 tp!2122308)))

(declare-fun b!7413426 () Bool)

(declare-fun tp!2122310 () Bool)

(declare-fun tp!2122307 () Bool)

(assert (=> b!7413426 (= e!4433645 (and tp!2122310 tp!2122307))))

(declare-fun b!7413428 () Bool)

(declare-fun tp!2122309 () Bool)

(declare-fun tp!2122306 () Bool)

(assert (=> b!7413428 (= e!4433645 (and tp!2122309 tp!2122306))))

(assert (= (and b!7413148 ((_ is ElementMatch!19421) (regOne!39354 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413425))

(assert (= (and b!7413148 ((_ is Concat!28266) (regOne!39354 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413426))

(assert (= (and b!7413148 ((_ is Star!19421) (regOne!39354 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413427))

(assert (= (and b!7413148 ((_ is Union!19421) (regOne!39354 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413428))

(declare-fun b!7413429 () Bool)

(declare-fun e!4433646 () Bool)

(assert (=> b!7413429 (= e!4433646 tp_is_empty!49105)))

(assert (=> b!7413148 (= tp!2122163 e!4433646)))

(declare-fun b!7413431 () Bool)

(declare-fun tp!2122313 () Bool)

(assert (=> b!7413431 (= e!4433646 tp!2122313)))

(declare-fun b!7413430 () Bool)

(declare-fun tp!2122315 () Bool)

(declare-fun tp!2122312 () Bool)

(assert (=> b!7413430 (= e!4433646 (and tp!2122315 tp!2122312))))

(declare-fun b!7413432 () Bool)

(declare-fun tp!2122314 () Bool)

(declare-fun tp!2122311 () Bool)

(assert (=> b!7413432 (= e!4433646 (and tp!2122314 tp!2122311))))

(assert (= (and b!7413148 ((_ is ElementMatch!19421) (regTwo!39354 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413429))

(assert (= (and b!7413148 ((_ is Concat!28266) (regTwo!39354 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413430))

(assert (= (and b!7413148 ((_ is Star!19421) (regTwo!39354 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413431))

(assert (= (and b!7413148 ((_ is Union!19421) (regTwo!39354 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413432))

(declare-fun b!7413433 () Bool)

(declare-fun e!4433647 () Bool)

(assert (=> b!7413433 (= e!4433647 tp_is_empty!49105)))

(assert (=> b!7413129 (= tp!2122136 e!4433647)))

(declare-fun b!7413435 () Bool)

(declare-fun tp!2122318 () Bool)

(assert (=> b!7413435 (= e!4433647 tp!2122318)))

(declare-fun b!7413434 () Bool)

(declare-fun tp!2122320 () Bool)

(declare-fun tp!2122317 () Bool)

(assert (=> b!7413434 (= e!4433647 (and tp!2122320 tp!2122317))))

(declare-fun b!7413436 () Bool)

(declare-fun tp!2122319 () Bool)

(declare-fun tp!2122316 () Bool)

(assert (=> b!7413436 (= e!4433647 (and tp!2122319 tp!2122316))))

(assert (= (and b!7413129 ((_ is ElementMatch!19421) (reg!19750 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413433))

(assert (= (and b!7413129 ((_ is Concat!28266) (reg!19750 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413434))

(assert (= (and b!7413129 ((_ is Star!19421) (reg!19750 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413435))

(assert (= (and b!7413129 ((_ is Union!19421) (reg!19750 (h!78372 (t!386609 (exprs!8861 setElem!56355)))))) b!7413436))

(declare-fun b!7413437 () Bool)

(declare-fun e!4433648 () Bool)

(assert (=> b!7413437 (= e!4433648 tp_is_empty!49105)))

(assert (=> b!7413104 (= tp!2122104 e!4433648)))

(declare-fun b!7413439 () Bool)

(declare-fun tp!2122323 () Bool)

(assert (=> b!7413439 (= e!4433648 tp!2122323)))

(declare-fun b!7413438 () Bool)

(declare-fun tp!2122325 () Bool)

(declare-fun tp!2122322 () Bool)

(assert (=> b!7413438 (= e!4433648 (and tp!2122325 tp!2122322))))

(declare-fun b!7413440 () Bool)

(declare-fun tp!2122324 () Bool)

(declare-fun tp!2122321 () Bool)

(assert (=> b!7413440 (= e!4433648 (and tp!2122324 tp!2122321))))

(assert (= (and b!7413104 ((_ is ElementMatch!19421) (reg!19750 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413437))

(assert (= (and b!7413104 ((_ is Concat!28266) (reg!19750 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413438))

(assert (= (and b!7413104 ((_ is Star!19421) (reg!19750 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413439))

(assert (= (and b!7413104 ((_ is Union!19421) (reg!19750 (regTwo!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413440))

(declare-fun b!7413441 () Bool)

(declare-fun e!4433649 () Bool)

(assert (=> b!7413441 (= e!4433649 tp_is_empty!49105)))

(assert (=> b!7413149 (= tp!2122164 e!4433649)))

(declare-fun b!7413443 () Bool)

(declare-fun tp!2122328 () Bool)

(assert (=> b!7413443 (= e!4433649 tp!2122328)))

(declare-fun b!7413442 () Bool)

(declare-fun tp!2122330 () Bool)

(declare-fun tp!2122327 () Bool)

(assert (=> b!7413442 (= e!4433649 (and tp!2122330 tp!2122327))))

(declare-fun b!7413444 () Bool)

(declare-fun tp!2122329 () Bool)

(declare-fun tp!2122326 () Bool)

(assert (=> b!7413444 (= e!4433649 (and tp!2122329 tp!2122326))))

(assert (= (and b!7413149 ((_ is ElementMatch!19421) (reg!19750 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413441))

(assert (= (and b!7413149 ((_ is Concat!28266) (reg!19750 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413442))

(assert (= (and b!7413149 ((_ is Star!19421) (reg!19750 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413443))

(assert (= (and b!7413149 ((_ is Union!19421) (reg!19750 (regOne!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413444))

(declare-fun b!7413445 () Bool)

(declare-fun e!4433650 () Bool)

(assert (=> b!7413445 (= e!4433650 tp_is_empty!49105)))

(assert (=> b!7413113 (= tp!2122115 e!4433650)))

(declare-fun b!7413447 () Bool)

(declare-fun tp!2122333 () Bool)

(assert (=> b!7413447 (= e!4433650 tp!2122333)))

(declare-fun b!7413446 () Bool)

(declare-fun tp!2122335 () Bool)

(declare-fun tp!2122332 () Bool)

(assert (=> b!7413446 (= e!4433650 (and tp!2122335 tp!2122332))))

(declare-fun b!7413448 () Bool)

(declare-fun tp!2122334 () Bool)

(declare-fun tp!2122331 () Bool)

(assert (=> b!7413448 (= e!4433650 (and tp!2122334 tp!2122331))))

(assert (= (and b!7413113 ((_ is ElementMatch!19421) (regOne!39355 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413445))

(assert (= (and b!7413113 ((_ is Concat!28266) (regOne!39355 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413446))

(assert (= (and b!7413113 ((_ is Star!19421) (regOne!39355 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413447))

(assert (= (and b!7413113 ((_ is Union!19421) (regOne!39355 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413448))

(declare-fun b!7413449 () Bool)

(declare-fun e!4433651 () Bool)

(assert (=> b!7413449 (= e!4433651 tp_is_empty!49105)))

(assert (=> b!7413113 (= tp!2122112 e!4433651)))

(declare-fun b!7413451 () Bool)

(declare-fun tp!2122338 () Bool)

(assert (=> b!7413451 (= e!4433651 tp!2122338)))

(declare-fun b!7413450 () Bool)

(declare-fun tp!2122340 () Bool)

(declare-fun tp!2122337 () Bool)

(assert (=> b!7413450 (= e!4433651 (and tp!2122340 tp!2122337))))

(declare-fun b!7413452 () Bool)

(declare-fun tp!2122339 () Bool)

(declare-fun tp!2122336 () Bool)

(assert (=> b!7413452 (= e!4433651 (and tp!2122339 tp!2122336))))

(assert (= (and b!7413113 ((_ is ElementMatch!19421) (regTwo!39355 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413449))

(assert (= (and b!7413113 ((_ is Concat!28266) (regTwo!39355 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413450))

(assert (= (and b!7413113 ((_ is Star!19421) (regTwo!39355 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413451))

(assert (= (and b!7413113 ((_ is Union!19421) (regTwo!39355 (regOne!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413452))

(declare-fun b!7413453 () Bool)

(declare-fun e!4433652 () Bool)

(assert (=> b!7413453 (= e!4433652 tp_is_empty!49105)))

(assert (=> b!7413125 (= tp!2122131 e!4433652)))

(declare-fun b!7413455 () Bool)

(declare-fun tp!2122343 () Bool)

(assert (=> b!7413455 (= e!4433652 tp!2122343)))

(declare-fun b!7413454 () Bool)

(declare-fun tp!2122345 () Bool)

(declare-fun tp!2122342 () Bool)

(assert (=> b!7413454 (= e!4433652 (and tp!2122345 tp!2122342))))

(declare-fun b!7413456 () Bool)

(declare-fun tp!2122344 () Bool)

(declare-fun tp!2122341 () Bool)

(assert (=> b!7413456 (= e!4433652 (and tp!2122344 tp!2122341))))

(assert (= (and b!7413125 ((_ is ElementMatch!19421) (reg!19750 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413453))

(assert (= (and b!7413125 ((_ is Concat!28266) (reg!19750 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413454))

(assert (= (and b!7413125 ((_ is Star!19421) (reg!19750 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413455))

(assert (= (and b!7413125 ((_ is Union!19421) (reg!19750 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413456))

(declare-fun b!7413457 () Bool)

(declare-fun e!4433653 () Bool)

(assert (=> b!7413457 (= e!4433653 tp_is_empty!49105)))

(assert (=> b!7413100 (= tp!2122099 e!4433653)))

(declare-fun b!7413459 () Bool)

(declare-fun tp!2122348 () Bool)

(assert (=> b!7413459 (= e!4433653 tp!2122348)))

(declare-fun b!7413458 () Bool)

(declare-fun tp!2122350 () Bool)

(declare-fun tp!2122347 () Bool)

(assert (=> b!7413458 (= e!4433653 (and tp!2122350 tp!2122347))))

(declare-fun b!7413460 () Bool)

(declare-fun tp!2122349 () Bool)

(declare-fun tp!2122346 () Bool)

(assert (=> b!7413460 (= e!4433653 (and tp!2122349 tp!2122346))))

(assert (= (and b!7413100 ((_ is ElementMatch!19421) (reg!19750 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413457))

(assert (= (and b!7413100 ((_ is Concat!28266) (reg!19750 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413458))

(assert (= (and b!7413100 ((_ is Star!19421) (reg!19750 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413459))

(assert (= (and b!7413100 ((_ is Union!19421) (reg!19750 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413460))

(declare-fun b!7413461 () Bool)

(declare-fun e!4433654 () Bool)

(assert (=> b!7413461 (= e!4433654 tp_is_empty!49105)))

(assert (=> b!7413109 (= tp!2122110 e!4433654)))

(declare-fun b!7413463 () Bool)

(declare-fun tp!2122353 () Bool)

(assert (=> b!7413463 (= e!4433654 tp!2122353)))

(declare-fun b!7413462 () Bool)

(declare-fun tp!2122355 () Bool)

(declare-fun tp!2122352 () Bool)

(assert (=> b!7413462 (= e!4433654 (and tp!2122355 tp!2122352))))

(declare-fun b!7413464 () Bool)

(declare-fun tp!2122354 () Bool)

(declare-fun tp!2122351 () Bool)

(assert (=> b!7413464 (= e!4433654 (and tp!2122354 tp!2122351))))

(assert (= (and b!7413109 ((_ is ElementMatch!19421) (regOne!39355 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413461))

(assert (= (and b!7413109 ((_ is Concat!28266) (regOne!39355 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413462))

(assert (= (and b!7413109 ((_ is Star!19421) (regOne!39355 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413463))

(assert (= (and b!7413109 ((_ is Union!19421) (regOne!39355 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413464))

(declare-fun b!7413465 () Bool)

(declare-fun e!4433655 () Bool)

(assert (=> b!7413465 (= e!4433655 tp_is_empty!49105)))

(assert (=> b!7413109 (= tp!2122107 e!4433655)))

(declare-fun b!7413467 () Bool)

(declare-fun tp!2122358 () Bool)

(assert (=> b!7413467 (= e!4433655 tp!2122358)))

(declare-fun b!7413466 () Bool)

(declare-fun tp!2122360 () Bool)

(declare-fun tp!2122357 () Bool)

(assert (=> b!7413466 (= e!4433655 (and tp!2122360 tp!2122357))))

(declare-fun b!7413468 () Bool)

(declare-fun tp!2122359 () Bool)

(declare-fun tp!2122356 () Bool)

(assert (=> b!7413468 (= e!4433655 (and tp!2122359 tp!2122356))))

(assert (= (and b!7413109 ((_ is ElementMatch!19421) (regTwo!39355 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413465))

(assert (= (and b!7413109 ((_ is Concat!28266) (regTwo!39355 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413466))

(assert (= (and b!7413109 ((_ is Star!19421) (regTwo!39355 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413467))

(assert (= (and b!7413109 ((_ is Union!19421) (regTwo!39355 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413468))

(declare-fun b!7413469 () Bool)

(declare-fun e!4433656 () Bool)

(assert (=> b!7413469 (= e!4433656 tp_is_empty!49105)))

(assert (=> b!7413154 (= tp!2122170 e!4433656)))

(declare-fun b!7413471 () Bool)

(declare-fun tp!2122363 () Bool)

(assert (=> b!7413471 (= e!4433656 tp!2122363)))

(declare-fun b!7413470 () Bool)

(declare-fun tp!2122365 () Bool)

(declare-fun tp!2122362 () Bool)

(assert (=> b!7413470 (= e!4433656 (and tp!2122365 tp!2122362))))

(declare-fun b!7413472 () Bool)

(declare-fun tp!2122364 () Bool)

(declare-fun tp!2122361 () Bool)

(assert (=> b!7413472 (= e!4433656 (and tp!2122364 tp!2122361))))

(assert (= (and b!7413154 ((_ is ElementMatch!19421) (regOne!39355 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413469))

(assert (= (and b!7413154 ((_ is Concat!28266) (regOne!39355 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413470))

(assert (= (and b!7413154 ((_ is Star!19421) (regOne!39355 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413471))

(assert (= (and b!7413154 ((_ is Union!19421) (regOne!39355 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413472))

(declare-fun b!7413473 () Bool)

(declare-fun e!4433657 () Bool)

(assert (=> b!7413473 (= e!4433657 tp_is_empty!49105)))

(assert (=> b!7413154 (= tp!2122167 e!4433657)))

(declare-fun b!7413475 () Bool)

(declare-fun tp!2122368 () Bool)

(assert (=> b!7413475 (= e!4433657 tp!2122368)))

(declare-fun b!7413474 () Bool)

(declare-fun tp!2122370 () Bool)

(declare-fun tp!2122367 () Bool)

(assert (=> b!7413474 (= e!4433657 (and tp!2122370 tp!2122367))))

(declare-fun b!7413476 () Bool)

(declare-fun tp!2122369 () Bool)

(declare-fun tp!2122366 () Bool)

(assert (=> b!7413476 (= e!4433657 (and tp!2122369 tp!2122366))))

(assert (= (and b!7413154 ((_ is ElementMatch!19421) (regTwo!39355 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413473))

(assert (= (and b!7413154 ((_ is Concat!28266) (regTwo!39355 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413474))

(assert (= (and b!7413154 ((_ is Star!19421) (regTwo!39355 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413475))

(assert (= (and b!7413154 ((_ is Union!19421) (regTwo!39355 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413476))

(declare-fun b!7413477 () Bool)

(declare-fun e!4433658 () Bool)

(assert (=> b!7413477 (= e!4433658 tp_is_empty!49105)))

(assert (=> b!7413126 (= tp!2122132 e!4433658)))

(declare-fun b!7413479 () Bool)

(declare-fun tp!2122373 () Bool)

(assert (=> b!7413479 (= e!4433658 tp!2122373)))

(declare-fun b!7413478 () Bool)

(declare-fun tp!2122375 () Bool)

(declare-fun tp!2122372 () Bool)

(assert (=> b!7413478 (= e!4433658 (and tp!2122375 tp!2122372))))

(declare-fun b!7413480 () Bool)

(declare-fun tp!2122374 () Bool)

(declare-fun tp!2122371 () Bool)

(assert (=> b!7413480 (= e!4433658 (and tp!2122374 tp!2122371))))

(assert (= (and b!7413126 ((_ is ElementMatch!19421) (regOne!39355 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413477))

(assert (= (and b!7413126 ((_ is Concat!28266) (regOne!39355 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413478))

(assert (= (and b!7413126 ((_ is Star!19421) (regOne!39355 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413479))

(assert (= (and b!7413126 ((_ is Union!19421) (regOne!39355 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413480))

(declare-fun b!7413481 () Bool)

(declare-fun e!4433659 () Bool)

(assert (=> b!7413481 (= e!4433659 tp_is_empty!49105)))

(assert (=> b!7413126 (= tp!2122129 e!4433659)))

(declare-fun b!7413483 () Bool)

(declare-fun tp!2122378 () Bool)

(assert (=> b!7413483 (= e!4433659 tp!2122378)))

(declare-fun b!7413482 () Bool)

(declare-fun tp!2122380 () Bool)

(declare-fun tp!2122377 () Bool)

(assert (=> b!7413482 (= e!4433659 (and tp!2122380 tp!2122377))))

(declare-fun b!7413484 () Bool)

(declare-fun tp!2122379 () Bool)

(declare-fun tp!2122376 () Bool)

(assert (=> b!7413484 (= e!4433659 (and tp!2122379 tp!2122376))))

(assert (= (and b!7413126 ((_ is ElementMatch!19421) (regTwo!39355 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413481))

(assert (= (and b!7413126 ((_ is Concat!28266) (regTwo!39355 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413482))

(assert (= (and b!7413126 ((_ is Star!19421) (regTwo!39355 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413483))

(assert (= (and b!7413126 ((_ is Union!19421) (regTwo!39355 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413484))

(declare-fun b!7413485 () Bool)

(declare-fun e!4433660 () Bool)

(assert (=> b!7413485 (= e!4433660 tp_is_empty!49105)))

(assert (=> b!7413101 (= tp!2122100 e!4433660)))

(declare-fun b!7413487 () Bool)

(declare-fun tp!2122383 () Bool)

(assert (=> b!7413487 (= e!4433660 tp!2122383)))

(declare-fun b!7413486 () Bool)

(declare-fun tp!2122385 () Bool)

(declare-fun tp!2122382 () Bool)

(assert (=> b!7413486 (= e!4433660 (and tp!2122385 tp!2122382))))

(declare-fun b!7413488 () Bool)

(declare-fun tp!2122384 () Bool)

(declare-fun tp!2122381 () Bool)

(assert (=> b!7413488 (= e!4433660 (and tp!2122384 tp!2122381))))

(assert (= (and b!7413101 ((_ is ElementMatch!19421) (regOne!39355 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413485))

(assert (= (and b!7413101 ((_ is Concat!28266) (regOne!39355 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413486))

(assert (= (and b!7413101 ((_ is Star!19421) (regOne!39355 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413487))

(assert (= (and b!7413101 ((_ is Union!19421) (regOne!39355 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413488))

(declare-fun b!7413489 () Bool)

(declare-fun e!4433661 () Bool)

(assert (=> b!7413489 (= e!4433661 tp_is_empty!49105)))

(assert (=> b!7413101 (= tp!2122097 e!4433661)))

(declare-fun b!7413491 () Bool)

(declare-fun tp!2122388 () Bool)

(assert (=> b!7413491 (= e!4433661 tp!2122388)))

(declare-fun b!7413490 () Bool)

(declare-fun tp!2122390 () Bool)

(declare-fun tp!2122387 () Bool)

(assert (=> b!7413490 (= e!4433661 (and tp!2122390 tp!2122387))))

(declare-fun b!7413492 () Bool)

(declare-fun tp!2122389 () Bool)

(declare-fun tp!2122386 () Bool)

(assert (=> b!7413492 (= e!4433661 (and tp!2122389 tp!2122386))))

(assert (= (and b!7413101 ((_ is ElementMatch!19421) (regTwo!39355 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413489))

(assert (= (and b!7413101 ((_ is Concat!28266) (regTwo!39355 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413490))

(assert (= (and b!7413101 ((_ is Star!19421) (regTwo!39355 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413491))

(assert (= (and b!7413101 ((_ is Union!19421) (regTwo!39355 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413492))

(declare-fun b!7413493 () Bool)

(declare-fun e!4433662 () Bool)

(assert (=> b!7413493 (= e!4433662 tp_is_empty!49105)))

(assert (=> b!7413146 (= tp!2122160 e!4433662)))

(declare-fun b!7413495 () Bool)

(declare-fun tp!2122393 () Bool)

(assert (=> b!7413495 (= e!4433662 tp!2122393)))

(declare-fun b!7413494 () Bool)

(declare-fun tp!2122395 () Bool)

(declare-fun tp!2122392 () Bool)

(assert (=> b!7413494 (= e!4433662 (and tp!2122395 tp!2122392))))

(declare-fun b!7413496 () Bool)

(declare-fun tp!2122394 () Bool)

(declare-fun tp!2122391 () Bool)

(assert (=> b!7413496 (= e!4433662 (and tp!2122394 tp!2122391))))

(assert (= (and b!7413146 ((_ is ElementMatch!19421) (h!78372 (t!386609 (t!386609 (exprs!8861 c!10532)))))) b!7413493))

(assert (= (and b!7413146 ((_ is Concat!28266) (h!78372 (t!386609 (t!386609 (exprs!8861 c!10532)))))) b!7413494))

(assert (= (and b!7413146 ((_ is Star!19421) (h!78372 (t!386609 (t!386609 (exprs!8861 c!10532)))))) b!7413495))

(assert (= (and b!7413146 ((_ is Union!19421) (h!78372 (t!386609 (t!386609 (exprs!8861 c!10532)))))) b!7413496))

(declare-fun b!7413497 () Bool)

(declare-fun e!4433663 () Bool)

(declare-fun tp!2122396 () Bool)

(declare-fun tp!2122397 () Bool)

(assert (=> b!7413497 (= e!4433663 (and tp!2122396 tp!2122397))))

(assert (=> b!7413146 (= tp!2122161 e!4433663)))

(assert (= (and b!7413146 ((_ is Cons!71924) (t!386609 (t!386609 (t!386609 (exprs!8861 c!10532)))))) b!7413497))

(declare-fun b!7413498 () Bool)

(declare-fun e!4433664 () Bool)

(assert (=> b!7413498 (= e!4433664 tp_is_empty!49105)))

(assert (=> b!7413133 (= tp!2122145 e!4433664)))

(declare-fun b!7413500 () Bool)

(declare-fun tp!2122400 () Bool)

(assert (=> b!7413500 (= e!4433664 tp!2122400)))

(declare-fun b!7413499 () Bool)

(declare-fun tp!2122402 () Bool)

(declare-fun tp!2122399 () Bool)

(assert (=> b!7413499 (= e!4433664 (and tp!2122402 tp!2122399))))

(declare-fun b!7413501 () Bool)

(declare-fun tp!2122401 () Bool)

(declare-fun tp!2122398 () Bool)

(assert (=> b!7413501 (= e!4433664 (and tp!2122401 tp!2122398))))

(assert (= (and b!7413133 ((_ is ElementMatch!19421) (regOne!39354 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413498))

(assert (= (and b!7413133 ((_ is Concat!28266) (regOne!39354 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413499))

(assert (= (and b!7413133 ((_ is Star!19421) (regOne!39354 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413500))

(assert (= (and b!7413133 ((_ is Union!19421) (regOne!39354 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413501))

(declare-fun b!7413502 () Bool)

(declare-fun e!4433665 () Bool)

(assert (=> b!7413502 (= e!4433665 tp_is_empty!49105)))

(assert (=> b!7413133 (= tp!2122142 e!4433665)))

(declare-fun b!7413504 () Bool)

(declare-fun tp!2122405 () Bool)

(assert (=> b!7413504 (= e!4433665 tp!2122405)))

(declare-fun b!7413503 () Bool)

(declare-fun tp!2122407 () Bool)

(declare-fun tp!2122404 () Bool)

(assert (=> b!7413503 (= e!4433665 (and tp!2122407 tp!2122404))))

(declare-fun b!7413505 () Bool)

(declare-fun tp!2122406 () Bool)

(declare-fun tp!2122403 () Bool)

(assert (=> b!7413505 (= e!4433665 (and tp!2122406 tp!2122403))))

(assert (= (and b!7413133 ((_ is ElementMatch!19421) (regTwo!39354 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413502))

(assert (= (and b!7413133 ((_ is Concat!28266) (regTwo!39354 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413503))

(assert (= (and b!7413133 ((_ is Star!19421) (regTwo!39354 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413504))

(assert (= (and b!7413133 ((_ is Union!19421) (regTwo!39354 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413505))

(declare-fun b!7413506 () Bool)

(declare-fun e!4433666 () Bool)

(assert (=> b!7413506 (= e!4433666 tp_is_empty!49105)))

(assert (=> b!7413134 (= tp!2122143 e!4433666)))

(declare-fun b!7413508 () Bool)

(declare-fun tp!2122410 () Bool)

(assert (=> b!7413508 (= e!4433666 tp!2122410)))

(declare-fun b!7413507 () Bool)

(declare-fun tp!2122412 () Bool)

(declare-fun tp!2122409 () Bool)

(assert (=> b!7413507 (= e!4433666 (and tp!2122412 tp!2122409))))

(declare-fun b!7413509 () Bool)

(declare-fun tp!2122411 () Bool)

(declare-fun tp!2122408 () Bool)

(assert (=> b!7413509 (= e!4433666 (and tp!2122411 tp!2122408))))

(assert (= (and b!7413134 ((_ is ElementMatch!19421) (reg!19750 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413506))

(assert (= (and b!7413134 ((_ is Concat!28266) (reg!19750 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413507))

(assert (= (and b!7413134 ((_ is Star!19421) (reg!19750 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413508))

(assert (= (and b!7413134 ((_ is Union!19421) (reg!19750 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413509))

(declare-fun b!7413510 () Bool)

(declare-fun e!4433667 () Bool)

(declare-fun tp!2122413 () Bool)

(assert (=> b!7413510 (= e!4433667 (and tp_is_empty!49105 tp!2122413))))

(assert (=> b!7413155 (= tp!2122172 e!4433667)))

(assert (= (and b!7413155 ((_ is Cons!71925) (t!386610 (t!386610 (t!386610 (t!386610 s!7927)))))) b!7413510))

(declare-fun b!7413511 () Bool)

(declare-fun e!4433668 () Bool)

(assert (=> b!7413511 (= e!4433668 tp_is_empty!49105)))

(assert (=> b!7413135 (= tp!2122144 e!4433668)))

(declare-fun b!7413513 () Bool)

(declare-fun tp!2122416 () Bool)

(assert (=> b!7413513 (= e!4433668 tp!2122416)))

(declare-fun b!7413512 () Bool)

(declare-fun tp!2122418 () Bool)

(declare-fun tp!2122415 () Bool)

(assert (=> b!7413512 (= e!4433668 (and tp!2122418 tp!2122415))))

(declare-fun b!7413514 () Bool)

(declare-fun tp!2122417 () Bool)

(declare-fun tp!2122414 () Bool)

(assert (=> b!7413514 (= e!4433668 (and tp!2122417 tp!2122414))))

(assert (= (and b!7413135 ((_ is ElementMatch!19421) (regOne!39355 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413511))

(assert (= (and b!7413135 ((_ is Concat!28266) (regOne!39355 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413512))

(assert (= (and b!7413135 ((_ is Star!19421) (regOne!39355 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413513))

(assert (= (and b!7413135 ((_ is Union!19421) (regOne!39355 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413514))

(declare-fun b!7413515 () Bool)

(declare-fun e!4433669 () Bool)

(assert (=> b!7413515 (= e!4433669 tp_is_empty!49105)))

(assert (=> b!7413135 (= tp!2122141 e!4433669)))

(declare-fun b!7413517 () Bool)

(declare-fun tp!2122421 () Bool)

(assert (=> b!7413517 (= e!4433669 tp!2122421)))

(declare-fun b!7413516 () Bool)

(declare-fun tp!2122423 () Bool)

(declare-fun tp!2122420 () Bool)

(assert (=> b!7413516 (= e!4433669 (and tp!2122423 tp!2122420))))

(declare-fun b!7413518 () Bool)

(declare-fun tp!2122422 () Bool)

(declare-fun tp!2122419 () Bool)

(assert (=> b!7413518 (= e!4433669 (and tp!2122422 tp!2122419))))

(assert (= (and b!7413135 ((_ is ElementMatch!19421) (regTwo!39355 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413515))

(assert (= (and b!7413135 ((_ is Concat!28266) (regTwo!39355 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413516))

(assert (= (and b!7413135 ((_ is Star!19421) (regTwo!39355 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413517))

(assert (= (and b!7413135 ((_ is Union!19421) (regTwo!39355 (regOne!39355 (h!78372 (exprs!8861 c!10532)))))) b!7413518))

(declare-fun b!7413519 () Bool)

(declare-fun e!4433670 () Bool)

(assert (=> b!7413519 (= e!4433670 tp_is_empty!49105)))

(assert (=> b!7413143 (= tp!2122159 e!4433670)))

(declare-fun b!7413521 () Bool)

(declare-fun tp!2122426 () Bool)

(assert (=> b!7413521 (= e!4433670 tp!2122426)))

(declare-fun b!7413520 () Bool)

(declare-fun tp!2122428 () Bool)

(declare-fun tp!2122425 () Bool)

(assert (=> b!7413520 (= e!4433670 (and tp!2122428 tp!2122425))))

(declare-fun b!7413522 () Bool)

(declare-fun tp!2122427 () Bool)

(declare-fun tp!2122424 () Bool)

(assert (=> b!7413522 (= e!4433670 (and tp!2122427 tp!2122424))))

(assert (= (and b!7413143 ((_ is ElementMatch!19421) (regOne!39354 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413519))

(assert (= (and b!7413143 ((_ is Concat!28266) (regOne!39354 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413520))

(assert (= (and b!7413143 ((_ is Star!19421) (regOne!39354 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413521))

(assert (= (and b!7413143 ((_ is Union!19421) (regOne!39354 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413522))

(declare-fun b!7413525 () Bool)

(declare-fun e!4433673 () Bool)

(assert (=> b!7413525 (= e!4433673 tp_is_empty!49105)))

(assert (=> b!7413143 (= tp!2122156 e!4433673)))

(declare-fun b!7413527 () Bool)

(declare-fun tp!2122431 () Bool)

(assert (=> b!7413527 (= e!4433673 tp!2122431)))

(declare-fun b!7413526 () Bool)

(declare-fun tp!2122433 () Bool)

(declare-fun tp!2122430 () Bool)

(assert (=> b!7413526 (= e!4433673 (and tp!2122433 tp!2122430))))

(declare-fun b!7413528 () Bool)

(declare-fun tp!2122432 () Bool)

(declare-fun tp!2122429 () Bool)

(assert (=> b!7413528 (= e!4433673 (and tp!2122432 tp!2122429))))

(assert (= (and b!7413143 ((_ is ElementMatch!19421) (regTwo!39354 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413525))

(assert (= (and b!7413143 ((_ is Concat!28266) (regTwo!39354 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413526))

(assert (= (and b!7413143 ((_ is Star!19421) (regTwo!39354 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413527))

(assert (= (and b!7413143 ((_ is Union!19421) (regTwo!39354 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413528))

(declare-fun b!7413529 () Bool)

(declare-fun e!4433676 () Bool)

(assert (=> b!7413529 (= e!4433676 tp_is_empty!49105)))

(assert (=> b!7413144 (= tp!2122157 e!4433676)))

(declare-fun b!7413531 () Bool)

(declare-fun tp!2122436 () Bool)

(assert (=> b!7413531 (= e!4433676 tp!2122436)))

(declare-fun b!7413530 () Bool)

(declare-fun tp!2122438 () Bool)

(declare-fun tp!2122435 () Bool)

(assert (=> b!7413530 (= e!4433676 (and tp!2122438 tp!2122435))))

(declare-fun b!7413532 () Bool)

(declare-fun tp!2122437 () Bool)

(declare-fun tp!2122434 () Bool)

(assert (=> b!7413532 (= e!4433676 (and tp!2122437 tp!2122434))))

(assert (= (and b!7413144 ((_ is ElementMatch!19421) (reg!19750 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413529))

(assert (= (and b!7413144 ((_ is Concat!28266) (reg!19750 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413530))

(assert (= (and b!7413144 ((_ is Star!19421) (reg!19750 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413531))

(assert (= (and b!7413144 ((_ is Union!19421) (reg!19750 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413532))

(declare-fun b!7413537 () Bool)

(declare-fun e!4433679 () Bool)

(assert (=> b!7413537 (= e!4433679 tp_is_empty!49105)))

(assert (=> b!7413115 (= tp!2122121 e!4433679)))

(declare-fun b!7413539 () Bool)

(declare-fun tp!2122441 () Bool)

(assert (=> b!7413539 (= e!4433679 tp!2122441)))

(declare-fun b!7413538 () Bool)

(declare-fun tp!2122443 () Bool)

(declare-fun tp!2122440 () Bool)

(assert (=> b!7413538 (= e!4433679 (and tp!2122443 tp!2122440))))

(declare-fun b!7413540 () Bool)

(declare-fun tp!2122442 () Bool)

(declare-fun tp!2122439 () Bool)

(assert (=> b!7413540 (= e!4433679 (and tp!2122442 tp!2122439))))

(assert (= (and b!7413115 ((_ is ElementMatch!19421) (regOne!39354 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413537))

(assert (= (and b!7413115 ((_ is Concat!28266) (regOne!39354 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413538))

(assert (= (and b!7413115 ((_ is Star!19421) (regOne!39354 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413539))

(assert (= (and b!7413115 ((_ is Union!19421) (regOne!39354 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413540))

(declare-fun b!7413545 () Bool)

(declare-fun e!4433682 () Bool)

(assert (=> b!7413545 (= e!4433682 tp_is_empty!49105)))

(assert (=> b!7413115 (= tp!2122118 e!4433682)))

(declare-fun b!7413547 () Bool)

(declare-fun tp!2122446 () Bool)

(assert (=> b!7413547 (= e!4433682 tp!2122446)))

(declare-fun b!7413546 () Bool)

(declare-fun tp!2122448 () Bool)

(declare-fun tp!2122445 () Bool)

(assert (=> b!7413546 (= e!4433682 (and tp!2122448 tp!2122445))))

(declare-fun b!7413548 () Bool)

(declare-fun tp!2122447 () Bool)

(declare-fun tp!2122444 () Bool)

(assert (=> b!7413548 (= e!4433682 (and tp!2122447 tp!2122444))))

(assert (= (and b!7413115 ((_ is ElementMatch!19421) (regTwo!39354 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413545))

(assert (= (and b!7413115 ((_ is Concat!28266) (regTwo!39354 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413546))

(assert (= (and b!7413115 ((_ is Star!19421) (regTwo!39354 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413547))

(assert (= (and b!7413115 ((_ is Union!19421) (regTwo!39354 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413548))

(declare-fun b!7413551 () Bool)

(declare-fun e!4433687 () Bool)

(assert (=> b!7413551 (= e!4433687 tp_is_empty!49105)))

(assert (=> b!7413140 (= tp!2122151 e!4433687)))

(declare-fun b!7413553 () Bool)

(declare-fun tp!2122451 () Bool)

(assert (=> b!7413553 (= e!4433687 tp!2122451)))

(declare-fun b!7413552 () Bool)

(declare-fun tp!2122453 () Bool)

(declare-fun tp!2122450 () Bool)

(assert (=> b!7413552 (= e!4433687 (and tp!2122453 tp!2122450))))

(declare-fun b!7413554 () Bool)

(declare-fun tp!2122452 () Bool)

(declare-fun tp!2122449 () Bool)

(assert (=> b!7413554 (= e!4433687 (and tp!2122452 tp!2122449))))

(assert (= (and b!7413140 ((_ is ElementMatch!19421) (h!78372 (exprs!8861 setElem!56363)))) b!7413551))

(assert (= (and b!7413140 ((_ is Concat!28266) (h!78372 (exprs!8861 setElem!56363)))) b!7413552))

(assert (= (and b!7413140 ((_ is Star!19421) (h!78372 (exprs!8861 setElem!56363)))) b!7413553))

(assert (= (and b!7413140 ((_ is Union!19421) (h!78372 (exprs!8861 setElem!56363)))) b!7413554))

(declare-fun b!7413557 () Bool)

(declare-fun e!4433688 () Bool)

(declare-fun tp!2122454 () Bool)

(declare-fun tp!2122455 () Bool)

(assert (=> b!7413557 (= e!4433688 (and tp!2122454 tp!2122455))))

(assert (=> b!7413140 (= tp!2122152 e!4433688)))

(assert (= (and b!7413140 ((_ is Cons!71924) (t!386609 (exprs!8861 setElem!56363)))) b!7413557))

(declare-fun b!7413558 () Bool)

(declare-fun e!4433689 () Bool)

(assert (=> b!7413558 (= e!4433689 tp_is_empty!49105)))

(assert (=> b!7413116 (= tp!2122119 e!4433689)))

(declare-fun b!7413560 () Bool)

(declare-fun tp!2122458 () Bool)

(assert (=> b!7413560 (= e!4433689 tp!2122458)))

(declare-fun b!7413559 () Bool)

(declare-fun tp!2122460 () Bool)

(declare-fun tp!2122457 () Bool)

(assert (=> b!7413559 (= e!4433689 (and tp!2122460 tp!2122457))))

(declare-fun b!7413561 () Bool)

(declare-fun tp!2122459 () Bool)

(declare-fun tp!2122456 () Bool)

(assert (=> b!7413561 (= e!4433689 (and tp!2122459 tp!2122456))))

(assert (= (and b!7413116 ((_ is ElementMatch!19421) (reg!19750 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413558))

(assert (= (and b!7413116 ((_ is Concat!28266) (reg!19750 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413559))

(assert (= (and b!7413116 ((_ is Star!19421) (reg!19750 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413560))

(assert (= (and b!7413116 ((_ is Union!19421) (reg!19750 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413561))

(declare-fun b!7413562 () Bool)

(declare-fun e!4433690 () Bool)

(assert (=> b!7413562 (= e!4433690 tp_is_empty!49105)))

(assert (=> b!7413145 (= tp!2122158 e!4433690)))

(declare-fun b!7413564 () Bool)

(declare-fun tp!2122463 () Bool)

(assert (=> b!7413564 (= e!4433690 tp!2122463)))

(declare-fun b!7413563 () Bool)

(declare-fun tp!2122465 () Bool)

(declare-fun tp!2122462 () Bool)

(assert (=> b!7413563 (= e!4433690 (and tp!2122465 tp!2122462))))

(declare-fun b!7413565 () Bool)

(declare-fun tp!2122464 () Bool)

(declare-fun tp!2122461 () Bool)

(assert (=> b!7413565 (= e!4433690 (and tp!2122464 tp!2122461))))

(assert (= (and b!7413145 ((_ is ElementMatch!19421) (regOne!39355 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413562))

(assert (= (and b!7413145 ((_ is Concat!28266) (regOne!39355 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413563))

(assert (= (and b!7413145 ((_ is Star!19421) (regOne!39355 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413564))

(assert (= (and b!7413145 ((_ is Union!19421) (regOne!39355 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413565))

(declare-fun b!7413566 () Bool)

(declare-fun e!4433691 () Bool)

(assert (=> b!7413566 (= e!4433691 tp_is_empty!49105)))

(assert (=> b!7413145 (= tp!2122155 e!4433691)))

(declare-fun b!7413568 () Bool)

(declare-fun tp!2122468 () Bool)

(assert (=> b!7413568 (= e!4433691 tp!2122468)))

(declare-fun b!7413567 () Bool)

(declare-fun tp!2122470 () Bool)

(declare-fun tp!2122467 () Bool)

(assert (=> b!7413567 (= e!4433691 (and tp!2122470 tp!2122467))))

(declare-fun b!7413569 () Bool)

(declare-fun tp!2122469 () Bool)

(declare-fun tp!2122466 () Bool)

(assert (=> b!7413569 (= e!4433691 (and tp!2122469 tp!2122466))))

(assert (= (and b!7413145 ((_ is ElementMatch!19421) (regTwo!39355 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413566))

(assert (= (and b!7413145 ((_ is Concat!28266) (regTwo!39355 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413567))

(assert (= (and b!7413145 ((_ is Star!19421) (regTwo!39355 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413568))

(assert (= (and b!7413145 ((_ is Union!19421) (regTwo!39355 (h!78372 (t!386609 (exprs!8861 c!10532)))))) b!7413569))

(declare-fun b!7413570 () Bool)

(declare-fun e!4433692 () Bool)

(assert (=> b!7413570 (= e!4433692 tp_is_empty!49105)))

(assert (=> b!7413107 (= tp!2122111 e!4433692)))

(declare-fun b!7413572 () Bool)

(declare-fun tp!2122473 () Bool)

(assert (=> b!7413572 (= e!4433692 tp!2122473)))

(declare-fun b!7413571 () Bool)

(declare-fun tp!2122475 () Bool)

(declare-fun tp!2122472 () Bool)

(assert (=> b!7413571 (= e!4433692 (and tp!2122475 tp!2122472))))

(declare-fun b!7413573 () Bool)

(declare-fun tp!2122474 () Bool)

(declare-fun tp!2122471 () Bool)

(assert (=> b!7413573 (= e!4433692 (and tp!2122474 tp!2122471))))

(assert (= (and b!7413107 ((_ is ElementMatch!19421) (regOne!39354 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413570))

(assert (= (and b!7413107 ((_ is Concat!28266) (regOne!39354 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413571))

(assert (= (and b!7413107 ((_ is Star!19421) (regOne!39354 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413572))

(assert (= (and b!7413107 ((_ is Union!19421) (regOne!39354 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413573))

(declare-fun b!7413574 () Bool)

(declare-fun e!4433693 () Bool)

(assert (=> b!7413574 (= e!4433693 tp_is_empty!49105)))

(assert (=> b!7413107 (= tp!2122108 e!4433693)))

(declare-fun b!7413576 () Bool)

(declare-fun tp!2122478 () Bool)

(assert (=> b!7413576 (= e!4433693 tp!2122478)))

(declare-fun b!7413575 () Bool)

(declare-fun tp!2122480 () Bool)

(declare-fun tp!2122477 () Bool)

(assert (=> b!7413575 (= e!4433693 (and tp!2122480 tp!2122477))))

(declare-fun b!7413577 () Bool)

(declare-fun tp!2122479 () Bool)

(declare-fun tp!2122476 () Bool)

(assert (=> b!7413577 (= e!4433693 (and tp!2122479 tp!2122476))))

(assert (= (and b!7413107 ((_ is ElementMatch!19421) (regTwo!39354 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413574))

(assert (= (and b!7413107 ((_ is Concat!28266) (regTwo!39354 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413575))

(assert (= (and b!7413107 ((_ is Star!19421) (regTwo!39354 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413576))

(assert (= (and b!7413107 ((_ is Union!19421) (regTwo!39354 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413577))

(declare-fun b!7413578 () Bool)

(declare-fun e!4433694 () Bool)

(assert (=> b!7413578 (= e!4433694 tp_is_empty!49105)))

(assert (=> b!7413152 (= tp!2122171 e!4433694)))

(declare-fun b!7413580 () Bool)

(declare-fun tp!2122483 () Bool)

(assert (=> b!7413580 (= e!4433694 tp!2122483)))

(declare-fun b!7413579 () Bool)

(declare-fun tp!2122485 () Bool)

(declare-fun tp!2122482 () Bool)

(assert (=> b!7413579 (= e!4433694 (and tp!2122485 tp!2122482))))

(declare-fun b!7413581 () Bool)

(declare-fun tp!2122484 () Bool)

(declare-fun tp!2122481 () Bool)

(assert (=> b!7413581 (= e!4433694 (and tp!2122484 tp!2122481))))

(assert (= (and b!7413152 ((_ is ElementMatch!19421) (regOne!39354 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413578))

(assert (= (and b!7413152 ((_ is Concat!28266) (regOne!39354 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413579))

(assert (= (and b!7413152 ((_ is Star!19421) (regOne!39354 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413580))

(assert (= (and b!7413152 ((_ is Union!19421) (regOne!39354 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413581))

(declare-fun b!7413582 () Bool)

(declare-fun e!4433695 () Bool)

(assert (=> b!7413582 (= e!4433695 tp_is_empty!49105)))

(assert (=> b!7413152 (= tp!2122168 e!4433695)))

(declare-fun b!7413584 () Bool)

(declare-fun tp!2122488 () Bool)

(assert (=> b!7413584 (= e!4433695 tp!2122488)))

(declare-fun b!7413583 () Bool)

(declare-fun tp!2122490 () Bool)

(declare-fun tp!2122487 () Bool)

(assert (=> b!7413583 (= e!4433695 (and tp!2122490 tp!2122487))))

(declare-fun b!7413585 () Bool)

(declare-fun tp!2122489 () Bool)

(declare-fun tp!2122486 () Bool)

(assert (=> b!7413585 (= e!4433695 (and tp!2122489 tp!2122486))))

(assert (= (and b!7413152 ((_ is ElementMatch!19421) (regTwo!39354 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413582))

(assert (= (and b!7413152 ((_ is Concat!28266) (regTwo!39354 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413583))

(assert (= (and b!7413152 ((_ is Star!19421) (regTwo!39354 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413584))

(assert (= (and b!7413152 ((_ is Union!19421) (regTwo!39354 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413585))

(declare-fun b!7413586 () Bool)

(declare-fun e!4433696 () Bool)

(assert (=> b!7413586 (= e!4433696 tp_is_empty!49105)))

(assert (=> b!7413108 (= tp!2122109 e!4433696)))

(declare-fun b!7413588 () Bool)

(declare-fun tp!2122493 () Bool)

(assert (=> b!7413588 (= e!4433696 tp!2122493)))

(declare-fun b!7413587 () Bool)

(declare-fun tp!2122495 () Bool)

(declare-fun tp!2122492 () Bool)

(assert (=> b!7413587 (= e!4433696 (and tp!2122495 tp!2122492))))

(declare-fun b!7413589 () Bool)

(declare-fun tp!2122494 () Bool)

(declare-fun tp!2122491 () Bool)

(assert (=> b!7413589 (= e!4433696 (and tp!2122494 tp!2122491))))

(assert (= (and b!7413108 ((_ is ElementMatch!19421) (reg!19750 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413586))

(assert (= (and b!7413108 ((_ is Concat!28266) (reg!19750 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413587))

(assert (= (and b!7413108 ((_ is Star!19421) (reg!19750 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413588))

(assert (= (and b!7413108 ((_ is Union!19421) (reg!19750 (reg!19750 (h!78372 (exprs!8861 setElem!56355)))))) b!7413589))

(declare-fun b!7413590 () Bool)

(declare-fun e!4433697 () Bool)

(assert (=> b!7413590 (= e!4433697 tp_is_empty!49105)))

(assert (=> b!7413153 (= tp!2122169 e!4433697)))

(declare-fun b!7413592 () Bool)

(declare-fun tp!2122498 () Bool)

(assert (=> b!7413592 (= e!4433697 tp!2122498)))

(declare-fun b!7413591 () Bool)

(declare-fun tp!2122500 () Bool)

(declare-fun tp!2122497 () Bool)

(assert (=> b!7413591 (= e!4433697 (and tp!2122500 tp!2122497))))

(declare-fun b!7413593 () Bool)

(declare-fun tp!2122499 () Bool)

(declare-fun tp!2122496 () Bool)

(assert (=> b!7413593 (= e!4433697 (and tp!2122499 tp!2122496))))

(assert (= (and b!7413153 ((_ is ElementMatch!19421) (reg!19750 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413590))

(assert (= (and b!7413153 ((_ is Concat!28266) (reg!19750 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413591))

(assert (= (and b!7413153 ((_ is Star!19421) (reg!19750 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413592))

(assert (= (and b!7413153 ((_ is Union!19421) (reg!19750 (regTwo!39354 (h!78372 (exprs!8861 setElem!56355)))))) b!7413593))

(declare-fun b!7413594 () Bool)

(declare-fun e!4433698 () Bool)

(assert (=> b!7413594 (= e!4433698 tp_is_empty!49105)))

(assert (=> b!7413117 (= tp!2122120 e!4433698)))

(declare-fun b!7413596 () Bool)

(declare-fun tp!2122503 () Bool)

(assert (=> b!7413596 (= e!4433698 tp!2122503)))

(declare-fun b!7413595 () Bool)

(declare-fun tp!2122505 () Bool)

(declare-fun tp!2122502 () Bool)

(assert (=> b!7413595 (= e!4433698 (and tp!2122505 tp!2122502))))

(declare-fun b!7413597 () Bool)

(declare-fun tp!2122504 () Bool)

(declare-fun tp!2122501 () Bool)

(assert (=> b!7413597 (= e!4433698 (and tp!2122504 tp!2122501))))

(assert (= (and b!7413117 ((_ is ElementMatch!19421) (regOne!39355 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413594))

(assert (= (and b!7413117 ((_ is Concat!28266) (regOne!39355 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413595))

(assert (= (and b!7413117 ((_ is Star!19421) (regOne!39355 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413596))

(assert (= (and b!7413117 ((_ is Union!19421) (regOne!39355 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413597))

(declare-fun b!7413598 () Bool)

(declare-fun e!4433699 () Bool)

(assert (=> b!7413598 (= e!4433699 tp_is_empty!49105)))

(assert (=> b!7413117 (= tp!2122117 e!4433699)))

(declare-fun b!7413600 () Bool)

(declare-fun tp!2122508 () Bool)

(assert (=> b!7413600 (= e!4433699 tp!2122508)))

(declare-fun b!7413599 () Bool)

(declare-fun tp!2122510 () Bool)

(declare-fun tp!2122507 () Bool)

(assert (=> b!7413599 (= e!4433699 (and tp!2122510 tp!2122507))))

(declare-fun b!7413601 () Bool)

(declare-fun tp!2122509 () Bool)

(declare-fun tp!2122506 () Bool)

(assert (=> b!7413601 (= e!4433699 (and tp!2122509 tp!2122506))))

(assert (= (and b!7413117 ((_ is ElementMatch!19421) (regTwo!39355 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413598))

(assert (= (and b!7413117 ((_ is Concat!28266) (regTwo!39355 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413599))

(assert (= (and b!7413117 ((_ is Star!19421) (regTwo!39355 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413600))

(assert (= (and b!7413117 ((_ is Union!19421) (regTwo!39355 (regTwo!39354 (h!78372 (exprs!8861 c!10532)))))) b!7413601))

(declare-fun b!7413602 () Bool)

(declare-fun e!4433700 () Bool)

(assert (=> b!7413602 (= e!4433700 tp_is_empty!49105)))

(assert (=> b!7413124 (= tp!2122133 e!4433700)))

(declare-fun b!7413604 () Bool)

(declare-fun tp!2122513 () Bool)

(assert (=> b!7413604 (= e!4433700 tp!2122513)))

(declare-fun b!7413603 () Bool)

(declare-fun tp!2122515 () Bool)

(declare-fun tp!2122512 () Bool)

(assert (=> b!7413603 (= e!4433700 (and tp!2122515 tp!2122512))))

(declare-fun b!7413605 () Bool)

(declare-fun tp!2122514 () Bool)

(declare-fun tp!2122511 () Bool)

(assert (=> b!7413605 (= e!4433700 (and tp!2122514 tp!2122511))))

(assert (= (and b!7413124 ((_ is ElementMatch!19421) (regOne!39354 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413602))

(assert (= (and b!7413124 ((_ is Concat!28266) (regOne!39354 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413603))

(assert (= (and b!7413124 ((_ is Star!19421) (regOne!39354 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413604))

(assert (= (and b!7413124 ((_ is Union!19421) (regOne!39354 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413605))

(declare-fun b!7413606 () Bool)

(declare-fun e!4433701 () Bool)

(assert (=> b!7413606 (= e!4433701 tp_is_empty!49105)))

(assert (=> b!7413124 (= tp!2122130 e!4433701)))

(declare-fun b!7413608 () Bool)

(declare-fun tp!2122518 () Bool)

(assert (=> b!7413608 (= e!4433701 tp!2122518)))

(declare-fun b!7413607 () Bool)

(declare-fun tp!2122520 () Bool)

(declare-fun tp!2122517 () Bool)

(assert (=> b!7413607 (= e!4433701 (and tp!2122520 tp!2122517))))

(declare-fun b!7413609 () Bool)

(declare-fun tp!2122519 () Bool)

(declare-fun tp!2122516 () Bool)

(assert (=> b!7413609 (= e!4433701 (and tp!2122519 tp!2122516))))

(assert (= (and b!7413124 ((_ is ElementMatch!19421) (regTwo!39354 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413606))

(assert (= (and b!7413124 ((_ is Concat!28266) (regTwo!39354 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413607))

(assert (= (and b!7413124 ((_ is Star!19421) (regTwo!39354 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413608))

(assert (= (and b!7413124 ((_ is Union!19421) (regTwo!39354 (reg!19750 (h!78372 (exprs!8861 c!10532)))))) b!7413609))

(declare-fun b!7413610 () Bool)

(declare-fun e!4433702 () Bool)

(assert (=> b!7413610 (= e!4433702 tp_is_empty!49105)))

(assert (=> b!7413099 (= tp!2122101 e!4433702)))

(declare-fun b!7413612 () Bool)

(declare-fun tp!2122523 () Bool)

(assert (=> b!7413612 (= e!4433702 tp!2122523)))

(declare-fun b!7413611 () Bool)

(declare-fun tp!2122525 () Bool)

(declare-fun tp!2122522 () Bool)

(assert (=> b!7413611 (= e!4433702 (and tp!2122525 tp!2122522))))

(declare-fun b!7413613 () Bool)

(declare-fun tp!2122524 () Bool)

(declare-fun tp!2122521 () Bool)

(assert (=> b!7413613 (= e!4433702 (and tp!2122524 tp!2122521))))

(assert (= (and b!7413099 ((_ is ElementMatch!19421) (regOne!39354 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413610))

(assert (= (and b!7413099 ((_ is Concat!28266) (regOne!39354 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413611))

(assert (= (and b!7413099 ((_ is Star!19421) (regOne!39354 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413612))

(assert (= (and b!7413099 ((_ is Union!19421) (regOne!39354 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413613))

(declare-fun b!7413614 () Bool)

(declare-fun e!4433703 () Bool)

(assert (=> b!7413614 (= e!4433703 tp_is_empty!49105)))

(assert (=> b!7413099 (= tp!2122098 e!4433703)))

(declare-fun b!7413616 () Bool)

(declare-fun tp!2122528 () Bool)

(assert (=> b!7413616 (= e!4433703 tp!2122528)))

(declare-fun b!7413615 () Bool)

(declare-fun tp!2122530 () Bool)

(declare-fun tp!2122527 () Bool)

(assert (=> b!7413615 (= e!4433703 (and tp!2122530 tp!2122527))))

(declare-fun b!7413617 () Bool)

(declare-fun tp!2122529 () Bool)

(declare-fun tp!2122526 () Bool)

(assert (=> b!7413617 (= e!4433703 (and tp!2122529 tp!2122526))))

(assert (= (and b!7413099 ((_ is ElementMatch!19421) (regTwo!39354 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413614))

(assert (= (and b!7413099 ((_ is Concat!28266) (regTwo!39354 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413615))

(assert (= (and b!7413099 ((_ is Star!19421) (regTwo!39354 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413616))

(assert (= (and b!7413099 ((_ is Union!19421) (regTwo!39354 (regOne!39355 (h!78372 (exprs!8861 setElem!56355)))))) b!7413617))

(declare-fun b_lambda!286857 () Bool)

(assert (= b_lambda!286847 (or d!2292752 b_lambda!286857)))

(declare-fun bs!1925042 () Bool)

(declare-fun d!2292830 () Bool)

(assert (= bs!1925042 (and d!2292830 d!2292752)))

(assert (=> bs!1925042 (= (dynLambda!29699 lambda!460117 (h!78372 (exprs!8861 setElem!56363))) (validRegex!9969 (h!78372 (exprs!8861 setElem!56363))))))

(declare-fun m!8047668 () Bool)

(assert (=> bs!1925042 m!8047668))

(assert (=> b!7413248 d!2292830))

(declare-fun b_lambda!286859 () Bool)

(assert (= b_lambda!286839 (or d!2292678 b_lambda!286859)))

(declare-fun bs!1925043 () Bool)

(declare-fun d!2292832 () Bool)

(assert (= bs!1925043 (and d!2292832 d!2292678)))

(assert (=> bs!1925043 (= (dynLambda!29699 lambda!460112 (h!78372 (t!386609 (t!386609 (exprs!8861 setElem!56355))))) (validRegex!9969 (h!78372 (t!386609 (t!386609 (exprs!8861 setElem!56355))))))))

(declare-fun m!8047670 () Bool)

(assert (=> bs!1925043 m!8047670))

(assert (=> b!7413156 d!2292832))

(declare-fun b_lambda!286861 () Bool)

(assert (= b_lambda!286849 (or d!2292706 b_lambda!286861)))

(declare-fun bs!1925044 () Bool)

(declare-fun d!2292834 () Bool)

(assert (= bs!1925044 (and d!2292834 d!2292706)))

(assert (=> bs!1925044 (= (dynLambda!29699 lambda!460115 (h!78372 (t!386609 (exprs!8861 setElem!56361)))) (validRegex!9969 (h!78372 (t!386609 (exprs!8861 setElem!56361)))))))

(declare-fun m!8047672 () Bool)

(assert (=> bs!1925044 m!8047672))

(assert (=> b!7413259 d!2292834))

(declare-fun b_lambda!286863 () Bool)

(assert (= b_lambda!286841 (or d!2292664 b_lambda!286863)))

(declare-fun bs!1925045 () Bool)

(declare-fun d!2292836 () Bool)

(assert (= bs!1925045 (and d!2292836 d!2292664)))

(assert (=> bs!1925045 (= (dynLambda!29699 lambda!460109 (h!78372 (t!386609 (t!386609 (exprs!8861 c!10532))))) (nullable!8465 (h!78372 (t!386609 (t!386609 (exprs!8861 c!10532))))))))

(declare-fun m!8047674 () Bool)

(assert (=> bs!1925045 m!8047674))

(assert (=> b!7413176 d!2292836))

(declare-fun b_lambda!286865 () Bool)

(assert (= b_lambda!286845 (or d!2292684 b_lambda!286865)))

(declare-fun bs!1925046 () Bool)

(declare-fun d!2292838 () Bool)

(assert (= bs!1925046 (and d!2292838 d!2292684)))

(assert (=> bs!1925046 (= (dynLambda!29699 lambda!460113 (h!78372 (t!386609 (t!386609 (exprs!8861 c!10532))))) (validRegex!9969 (h!78372 (t!386609 (t!386609 (exprs!8861 c!10532))))))))

(declare-fun m!8047676 () Bool)

(assert (=> bs!1925046 m!8047676))

(assert (=> b!7413246 d!2292838))

(check-sat (not b!7413548) (not b!7413356) (not b!7413467) (not b!7413492) (not b!7413538) (not b!7413424) (not b!7413193) (not b!7413450) (not bm!682614) (not b!7413378) (not b!7413329) (not b!7413451) (not b!7413616) (not b!7413173) (not d!2292786) (not b!7413405) (not b!7413177) (not b!7413345) (not b!7413603) (not b!7413508) (not b!7413564) (not b!7413567) (not b!7413472) (not b!7413430) (not b!7413320) (not b!7413540) (not b!7413360) (not b!7413456) (not b!7413491) (not b!7413249) (not b!7413343) (not b!7413490) (not bm!682602) (not bs!1925042) (not b!7413464) (not b!7413547) (not b!7413397) (not b!7413575) (not b!7413462) (not b!7413377) (not b!7413375) (not b!7413554) (not b!7413419) (not b!7413401) (not bm!682599) (not b_lambda!286835) (not b!7413316) (not b!7413334) (not b!7413387) (not b!7413423) (not b!7413458) (not b!7413569) (not b!7413443) (not b!7413514) (not b!7413520) (not b!7413527) (not b!7413336) (not b!7413568) (not b!7413494) (not b!7413300) (not b!7413325) (not b!7413403) (not b!7413318) (not b!7413406) (not b!7413528) (not b!7413546) (not b!7413516) (not b!7413301) (not b!7413448) (not b!7413304) (not b!7413560) (not b!7413497) (not b!7413354) (not b!7413557) (not b!7413604) (not b!7413488) (not b!7413342) (not b!7413287) (not b!7413530) (not b!7413475) (not b!7413321) (not b!7413532) (not b!7413565) (not b!7413592) (not b!7413379) (not b!7413599) (not b!7413395) (not b!7413402) (not b!7413484) (not b!7413420) (not b!7413330) (not b!7413439) (not b!7413605) (not b!7413500) (not b!7413422) (not b!7413591) (not b!7413267) (not b!7413561) (not bs!1925045) (not b!7413587) (not b_lambda!286805) (not b!7413303) (not b!7413588) (not b!7413552) (not b!7413459) (not b!7413476) (not bm!682628) (not b!7413517) (not b!7413487) (not b!7413510) (not b!7413333) (not b!7413350) (not b!7413305) (not b!7413432) (not b!7413512) (not b!7413585) (not b!7413454) (not b!7413499) (not b!7413385) (not b_lambda!286831) (not b!7413427) (not b!7413478) (not b!7413480) (not b!7413612) (not bs!1925043) (not b_lambda!286803) (not bm!682626) (not b!7413572) (not b!7413468) (not b!7413363) (not b!7413444) (not b!7413393) (not b!7413553) (not b!7413486) (not b!7413526) (not b!7413584) (not b!7413482) (not b!7413539) (not b!7413597) (not b!7413347) (not b!7413326) (not b!7413576) (not b!7413332) (not b!7413479) (not d!2292790) (not b!7413503) (not b!7413580) (not bs!1925046) (not b!7413573) (not b!7413431) (not b!7413452) (not b!7413455) (not b!7413579) (not b!7413355) (not b!7413382) (not b!7413583) (not bm!682596) (not b!7413399) (not bm!682593) (not b!7413495) (not b!7413297) (not b!7413341) (not setNonEmpty!56366) (not b!7413338) (not b!7413317) (not b!7413361) (not b!7413609) (not b_lambda!286857) (not b_lambda!286861) (not b!7413531) (not b!7413295) (not b!7413596) (not b!7413447) (not b!7413504) (not b!7413518) (not b!7413601) (not b!7413383) (not b!7413426) (not b!7413600) (not b!7413474) tp_is_empty!49105 (not b!7413324) (not b!7413438) (not b!7413577) (not b!7413394) (not b!7413328) (not d!2292800) (not b!7413483) (not b!7413390) (not b!7413346) (not bm!682625) (not b!7413386) (not b!7413440) (not b!7413407) (not b!7413608) (not b!7413571) (not b!7413247) (not b!7413509) (not b!7413391) (not b!7413496) (not b!7413164) (not b!7413428) (not b!7413615) (not b!7413581) (not b!7413353) (not bm!682615) (not b!7413513) (not b!7413337) (not b!7413593) (not bm!682601) (not b!7413617) (not b!7413299) (not b!7413351) (not b!7413276) (not bm!682592) (not bm!682629) (not b!7413505) (not b!7413381) (not b!7413349) (not b!7413434) (not b_lambda!286863) (not b!7413559) (not bm!682622) (not b!7413357) (not b!7413365) (not b_lambda!286865) (not b!7413463) (not b!7413446) (not bs!1925044) (not b!7413359) (not b!7413589) (not b!7413418) (not b!7413389) (not b!7413296) (not bm!682598) (not b!7413260) (not b!7413460) (not bm!682595) (not d!2292810) (not b!7413435) (not b!7413522) (not b!7413521) (not b_lambda!286801) (not b!7413364) (not b!7413613) (not b_lambda!286837) (not b!7413470) (not b!7413471) (not b!7413322) (not b!7413607) (not b!7413507) (not b_lambda!286833) (not b!7413466) (not b!7413563) (not b!7413442) (not b!7413436) (not b!7413157) (not b_lambda!286859) (not b!7413398) (not b!7413184) (not b!7413595) (not bm!682623) (not b!7413501) (not b!7413340) (not b!7413611))
(check-sat)
