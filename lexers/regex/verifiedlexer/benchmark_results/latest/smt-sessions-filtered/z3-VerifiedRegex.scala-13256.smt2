; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!721204 () Bool)

(assert start!721204)

(declare-fun res!2981922 () Bool)

(declare-fun e!4429646 () Bool)

(assert (=> start!721204 (=> (not res!2981922) (not e!4429646))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!39048 0))(
  ( (C!39049 (val!29898 Int)) )
))
(declare-datatypes ((Regex!19387 0))(
  ( (ElementMatch!19387 (c!1374662 C!39048)) (Concat!28232 (regOne!39286 Regex!19387) (regTwo!39286 Regex!19387)) (EmptyExpr!19387) (Star!19387 (reg!19716 Regex!19387)) (EmptyLang!19387) (Union!19387 (regOne!39287 Regex!19387) (regTwo!39287 Regex!19387)) )
))
(declare-datatypes ((List!71957 0))(
  ( (Nil!71833) (Cons!71833 (h!78281 Regex!19387) (t!386516 List!71957)) )
))
(declare-datatypes ((Context!16654 0))(
  ( (Context!16655 (exprs!8827 List!71957)) )
))
(declare-fun z!3451 () (InoxSet Context!16654))

(declare-fun c!10532 () Context!16654)

(assert (=> start!721204 (= res!2981922 (= z!3451 (store ((as const (Array Context!16654 Bool)) false) c!10532 true)))))

(assert (=> start!721204 e!4429646))

(declare-fun condSetEmpty!56114 () Bool)

(assert (=> start!721204 (= condSetEmpty!56114 (= z!3451 ((as const (Array Context!16654 Bool)) false)))))

(declare-fun setRes!56114 () Bool)

(assert (=> start!721204 setRes!56114))

(declare-fun e!4429645 () Bool)

(declare-fun inv!91828 (Context!16654) Bool)

(assert (=> start!721204 (and (inv!91828 c!10532) e!4429645)))

(declare-fun tp_is_empty!49037 () Bool)

(assert (=> start!721204 tp_is_empty!49037))

(declare-fun b!7406226 () Bool)

(declare-fun res!2981921 () Bool)

(assert (=> b!7406226 (=> (not res!2981921) (not e!4429646))))

(declare-fun a!2228 () C!39048)

(declare-fun head!15159 (List!71957) Regex!19387)

(assert (=> b!7406226 (= res!2981921 (= (head!15159 (exprs!8827 c!10532)) (ElementMatch!19387 a!2228)))))

(declare-fun tp!2118528 () Bool)

(declare-fun setElem!56114 () Context!16654)

(declare-fun setNonEmpty!56114 () Bool)

(declare-fun e!4429647 () Bool)

(assert (=> setNonEmpty!56114 (= setRes!56114 (and tp!2118528 (inv!91828 setElem!56114) e!4429647))))

(declare-fun setRest!56114 () (InoxSet Context!16654))

(assert (=> setNonEmpty!56114 (= z!3451 ((_ map or) (store ((as const (Array Context!16654 Bool)) false) setElem!56114 true) setRest!56114))))

(declare-fun b!7406227 () Bool)

(declare-fun tail!14794 (List!71957) List!71957)

(assert (=> b!7406227 (= e!4429646 (not (inv!91828 (Context!16655 (tail!14794 (exprs!8827 c!10532))))))))

(declare-fun b!7406228 () Bool)

(declare-fun tp!2118527 () Bool)

(assert (=> b!7406228 (= e!4429645 tp!2118527)))

(declare-fun b!7406229 () Bool)

(declare-fun res!2981920 () Bool)

(assert (=> b!7406229 (=> (not res!2981920) (not e!4429646))))

(declare-fun isEmpty!41027 (List!71957) Bool)

(assert (=> b!7406229 (= res!2981920 (not (isEmpty!41027 (exprs!8827 c!10532))))))

(declare-fun setIsEmpty!56114 () Bool)

(assert (=> setIsEmpty!56114 setRes!56114))

(declare-fun b!7406230 () Bool)

(declare-fun tp!2118529 () Bool)

(assert (=> b!7406230 (= e!4429647 tp!2118529)))

(assert (= (and start!721204 res!2981922) b!7406229))

(assert (= (and b!7406229 res!2981920) b!7406226))

(assert (= (and b!7406226 res!2981921) b!7406227))

(assert (= (and start!721204 condSetEmpty!56114) setIsEmpty!56114))

(assert (= (and start!721204 (not condSetEmpty!56114)) setNonEmpty!56114))

(assert (= setNonEmpty!56114 b!7406230))

(assert (= start!721204 b!7406228))

(declare-fun m!8041968 () Bool)

(assert (=> b!7406226 m!8041968))

(declare-fun m!8041970 () Bool)

(assert (=> b!7406227 m!8041970))

(declare-fun m!8041972 () Bool)

(assert (=> b!7406227 m!8041972))

(declare-fun m!8041974 () Bool)

(assert (=> setNonEmpty!56114 m!8041974))

(declare-fun m!8041976 () Bool)

(assert (=> start!721204 m!8041976))

(declare-fun m!8041978 () Bool)

(assert (=> start!721204 m!8041978))

(declare-fun m!8041980 () Bool)

(assert (=> b!7406229 m!8041980))

(check-sat (not setNonEmpty!56114) (not b!7406229) (not start!721204) (not b!7406228) (not b!7406227) (not b!7406230) (not b!7406226) tp_is_empty!49037)
(check-sat)
(get-model)

(declare-fun d!2290229 () Bool)

(assert (=> d!2290229 (= (head!15159 (exprs!8827 c!10532)) (h!78281 (exprs!8827 c!10532)))))

(assert (=> b!7406226 d!2290229))

(declare-fun d!2290231 () Bool)

(declare-fun lambda!459384 () Int)

(declare-fun forall!18172 (List!71957 Int) Bool)

(assert (=> d!2290231 (= (inv!91828 setElem!56114) (forall!18172 (exprs!8827 setElem!56114) lambda!459384))))

(declare-fun bs!1923766 () Bool)

(assert (= bs!1923766 d!2290231))

(declare-fun m!8041990 () Bool)

(assert (=> bs!1923766 m!8041990))

(assert (=> setNonEmpty!56114 d!2290231))

(declare-fun bs!1923767 () Bool)

(declare-fun d!2290245 () Bool)

(assert (= bs!1923767 (and d!2290245 d!2290231)))

(declare-fun lambda!459385 () Int)

(assert (=> bs!1923767 (= lambda!459385 lambda!459384)))

(assert (=> d!2290245 (= (inv!91828 (Context!16655 (tail!14794 (exprs!8827 c!10532)))) (forall!18172 (exprs!8827 (Context!16655 (tail!14794 (exprs!8827 c!10532)))) lambda!459385))))

(declare-fun bs!1923768 () Bool)

(assert (= bs!1923768 d!2290245))

(declare-fun m!8041992 () Bool)

(assert (=> bs!1923768 m!8041992))

(assert (=> b!7406227 d!2290245))

(declare-fun d!2290247 () Bool)

(assert (=> d!2290247 (= (tail!14794 (exprs!8827 c!10532)) (t!386516 (exprs!8827 c!10532)))))

(assert (=> b!7406227 d!2290247))

(declare-fun bs!1923769 () Bool)

(declare-fun d!2290249 () Bool)

(assert (= bs!1923769 (and d!2290249 d!2290231)))

(declare-fun lambda!459386 () Int)

(assert (=> bs!1923769 (= lambda!459386 lambda!459384)))

(declare-fun bs!1923770 () Bool)

(assert (= bs!1923770 (and d!2290249 d!2290245)))

(assert (=> bs!1923770 (= lambda!459386 lambda!459385)))

(assert (=> d!2290249 (= (inv!91828 c!10532) (forall!18172 (exprs!8827 c!10532) lambda!459386))))

(declare-fun bs!1923771 () Bool)

(assert (= bs!1923771 d!2290249))

(declare-fun m!8041994 () Bool)

(assert (=> bs!1923771 m!8041994))

(assert (=> start!721204 d!2290249))

(declare-fun d!2290251 () Bool)

(get-info :version)

(assert (=> d!2290251 (= (isEmpty!41027 (exprs!8827 c!10532)) ((_ is Nil!71833) (exprs!8827 c!10532)))))

(assert (=> b!7406229 d!2290251))

(declare-fun b!7406246 () Bool)

(declare-fun e!4429657 () Bool)

(declare-fun tp!2118548 () Bool)

(declare-fun tp!2118549 () Bool)

(assert (=> b!7406246 (= e!4429657 (and tp!2118548 tp!2118549))))

(assert (=> b!7406230 (= tp!2118529 e!4429657)))

(assert (= (and b!7406230 ((_ is Cons!71833) (exprs!8827 setElem!56114))) b!7406246))

(declare-fun condSetEmpty!56120 () Bool)

(assert (=> setNonEmpty!56114 (= condSetEmpty!56120 (= setRest!56114 ((as const (Array Context!16654 Bool)) false)))))

(declare-fun setRes!56120 () Bool)

(assert (=> setNonEmpty!56114 (= tp!2118528 setRes!56120)))

(declare-fun setIsEmpty!56120 () Bool)

(assert (=> setIsEmpty!56120 setRes!56120))

(declare-fun e!4429660 () Bool)

(declare-fun tp!2118555 () Bool)

(declare-fun setNonEmpty!56120 () Bool)

(declare-fun setElem!56120 () Context!16654)

(assert (=> setNonEmpty!56120 (= setRes!56120 (and tp!2118555 (inv!91828 setElem!56120) e!4429660))))

(declare-fun setRest!56120 () (InoxSet Context!16654))

(assert (=> setNonEmpty!56120 (= setRest!56114 ((_ map or) (store ((as const (Array Context!16654 Bool)) false) setElem!56120 true) setRest!56120))))

(declare-fun b!7406251 () Bool)

(declare-fun tp!2118554 () Bool)

(assert (=> b!7406251 (= e!4429660 tp!2118554)))

(assert (= (and setNonEmpty!56114 condSetEmpty!56120) setIsEmpty!56120))

(assert (= (and setNonEmpty!56114 (not condSetEmpty!56120)) setNonEmpty!56120))

(assert (= setNonEmpty!56120 b!7406251))

(declare-fun m!8041996 () Bool)

(assert (=> setNonEmpty!56120 m!8041996))

(declare-fun b!7406252 () Bool)

(declare-fun e!4429661 () Bool)

(declare-fun tp!2118556 () Bool)

(declare-fun tp!2118557 () Bool)

(assert (=> b!7406252 (= e!4429661 (and tp!2118556 tp!2118557))))

(assert (=> b!7406228 (= tp!2118527 e!4429661)))

(assert (= (and b!7406228 ((_ is Cons!71833) (exprs!8827 c!10532))) b!7406252))

(check-sat (not d!2290249) (not d!2290245) (not b!7406251) (not setNonEmpty!56120) (not b!7406252) tp_is_empty!49037 (not b!7406246) (not d!2290231))
(check-sat)
(get-model)

(declare-fun bs!1923772 () Bool)

(declare-fun d!2290253 () Bool)

(assert (= bs!1923772 (and d!2290253 d!2290231)))

(declare-fun lambda!459387 () Int)

(assert (=> bs!1923772 (= lambda!459387 lambda!459384)))

(declare-fun bs!1923773 () Bool)

(assert (= bs!1923773 (and d!2290253 d!2290245)))

(assert (=> bs!1923773 (= lambda!459387 lambda!459385)))

(declare-fun bs!1923774 () Bool)

(assert (= bs!1923774 (and d!2290253 d!2290249)))

(assert (=> bs!1923774 (= lambda!459387 lambda!459386)))

(assert (=> d!2290253 (= (inv!91828 setElem!56120) (forall!18172 (exprs!8827 setElem!56120) lambda!459387))))

(declare-fun bs!1923775 () Bool)

(assert (= bs!1923775 d!2290253))

(declare-fun m!8041998 () Bool)

(assert (=> bs!1923775 m!8041998))

(assert (=> setNonEmpty!56120 d!2290253))

(declare-fun d!2290255 () Bool)

(declare-fun res!2981927 () Bool)

(declare-fun e!4429666 () Bool)

(assert (=> d!2290255 (=> res!2981927 e!4429666)))

(assert (=> d!2290255 (= res!2981927 ((_ is Nil!71833) (exprs!8827 (Context!16655 (tail!14794 (exprs!8827 c!10532))))))))

(assert (=> d!2290255 (= (forall!18172 (exprs!8827 (Context!16655 (tail!14794 (exprs!8827 c!10532)))) lambda!459385) e!4429666)))

(declare-fun b!7406257 () Bool)

(declare-fun e!4429667 () Bool)

(assert (=> b!7406257 (= e!4429666 e!4429667)))

(declare-fun res!2981928 () Bool)

(assert (=> b!7406257 (=> (not res!2981928) (not e!4429667))))

(declare-fun dynLambda!29608 (Int Regex!19387) Bool)

(assert (=> b!7406257 (= res!2981928 (dynLambda!29608 lambda!459385 (h!78281 (exprs!8827 (Context!16655 (tail!14794 (exprs!8827 c!10532)))))))))

(declare-fun b!7406258 () Bool)

(assert (=> b!7406258 (= e!4429667 (forall!18172 (t!386516 (exprs!8827 (Context!16655 (tail!14794 (exprs!8827 c!10532))))) lambda!459385))))

(assert (= (and d!2290255 (not res!2981927)) b!7406257))

(assert (= (and b!7406257 res!2981928) b!7406258))

(declare-fun b_lambda!286079 () Bool)

(assert (=> (not b_lambda!286079) (not b!7406257)))

(declare-fun m!8042000 () Bool)

(assert (=> b!7406257 m!8042000))

(declare-fun m!8042002 () Bool)

(assert (=> b!7406258 m!8042002))

(assert (=> d!2290245 d!2290255))

(declare-fun d!2290257 () Bool)

(declare-fun res!2981929 () Bool)

(declare-fun e!4429668 () Bool)

(assert (=> d!2290257 (=> res!2981929 e!4429668)))

(assert (=> d!2290257 (= res!2981929 ((_ is Nil!71833) (exprs!8827 setElem!56114)))))

(assert (=> d!2290257 (= (forall!18172 (exprs!8827 setElem!56114) lambda!459384) e!4429668)))

(declare-fun b!7406259 () Bool)

(declare-fun e!4429669 () Bool)

(assert (=> b!7406259 (= e!4429668 e!4429669)))

(declare-fun res!2981930 () Bool)

(assert (=> b!7406259 (=> (not res!2981930) (not e!4429669))))

(assert (=> b!7406259 (= res!2981930 (dynLambda!29608 lambda!459384 (h!78281 (exprs!8827 setElem!56114))))))

(declare-fun b!7406260 () Bool)

(assert (=> b!7406260 (= e!4429669 (forall!18172 (t!386516 (exprs!8827 setElem!56114)) lambda!459384))))

(assert (= (and d!2290257 (not res!2981929)) b!7406259))

(assert (= (and b!7406259 res!2981930) b!7406260))

(declare-fun b_lambda!286081 () Bool)

(assert (=> (not b_lambda!286081) (not b!7406259)))

(declare-fun m!8042004 () Bool)

(assert (=> b!7406259 m!8042004))

(declare-fun m!8042006 () Bool)

(assert (=> b!7406260 m!8042006))

(assert (=> d!2290231 d!2290257))

(declare-fun d!2290259 () Bool)

(declare-fun res!2981931 () Bool)

(declare-fun e!4429670 () Bool)

(assert (=> d!2290259 (=> res!2981931 e!4429670)))

(assert (=> d!2290259 (= res!2981931 ((_ is Nil!71833) (exprs!8827 c!10532)))))

(assert (=> d!2290259 (= (forall!18172 (exprs!8827 c!10532) lambda!459386) e!4429670)))

(declare-fun b!7406261 () Bool)

(declare-fun e!4429671 () Bool)

(assert (=> b!7406261 (= e!4429670 e!4429671)))

(declare-fun res!2981932 () Bool)

(assert (=> b!7406261 (=> (not res!2981932) (not e!4429671))))

(assert (=> b!7406261 (= res!2981932 (dynLambda!29608 lambda!459386 (h!78281 (exprs!8827 c!10532))))))

(declare-fun b!7406262 () Bool)

(assert (=> b!7406262 (= e!4429671 (forall!18172 (t!386516 (exprs!8827 c!10532)) lambda!459386))))

(assert (= (and d!2290259 (not res!2981931)) b!7406261))

(assert (= (and b!7406261 res!2981932) b!7406262))

(declare-fun b_lambda!286083 () Bool)

(assert (=> (not b_lambda!286083) (not b!7406261)))

(declare-fun m!8042008 () Bool)

(assert (=> b!7406261 m!8042008))

(declare-fun m!8042010 () Bool)

(assert (=> b!7406262 m!8042010))

(assert (=> d!2290249 d!2290259))

(declare-fun condSetEmpty!56121 () Bool)

(assert (=> setNonEmpty!56120 (= condSetEmpty!56121 (= setRest!56120 ((as const (Array Context!16654 Bool)) false)))))

(declare-fun setRes!56121 () Bool)

(assert (=> setNonEmpty!56120 (= tp!2118555 setRes!56121)))

(declare-fun setIsEmpty!56121 () Bool)

(assert (=> setIsEmpty!56121 setRes!56121))

(declare-fun e!4429672 () Bool)

(declare-fun setNonEmpty!56121 () Bool)

(declare-fun tp!2118559 () Bool)

(declare-fun setElem!56121 () Context!16654)

(assert (=> setNonEmpty!56121 (= setRes!56121 (and tp!2118559 (inv!91828 setElem!56121) e!4429672))))

(declare-fun setRest!56121 () (InoxSet Context!16654))

(assert (=> setNonEmpty!56121 (= setRest!56120 ((_ map or) (store ((as const (Array Context!16654 Bool)) false) setElem!56121 true) setRest!56121))))

(declare-fun b!7406263 () Bool)

(declare-fun tp!2118558 () Bool)

(assert (=> b!7406263 (= e!4429672 tp!2118558)))

(assert (= (and setNonEmpty!56120 condSetEmpty!56121) setIsEmpty!56121))

(assert (= (and setNonEmpty!56120 (not condSetEmpty!56121)) setNonEmpty!56121))

(assert (= setNonEmpty!56121 b!7406263))

(declare-fun m!8042012 () Bool)

(assert (=> setNonEmpty!56121 m!8042012))

(declare-fun b!7406264 () Bool)

(declare-fun e!4429673 () Bool)

(declare-fun tp!2118560 () Bool)

(declare-fun tp!2118561 () Bool)

(assert (=> b!7406264 (= e!4429673 (and tp!2118560 tp!2118561))))

(assert (=> b!7406251 (= tp!2118554 e!4429673)))

(assert (= (and b!7406251 ((_ is Cons!71833) (exprs!8827 setElem!56120))) b!7406264))

(declare-fun b!7406275 () Bool)

(declare-fun e!4429676 () Bool)

(assert (=> b!7406275 (= e!4429676 tp_is_empty!49037)))

(declare-fun b!7406278 () Bool)

(declare-fun tp!2118573 () Bool)

(declare-fun tp!2118576 () Bool)

(assert (=> b!7406278 (= e!4429676 (and tp!2118573 tp!2118576))))

(assert (=> b!7406252 (= tp!2118556 e!4429676)))

(declare-fun b!7406277 () Bool)

(declare-fun tp!2118575 () Bool)

(assert (=> b!7406277 (= e!4429676 tp!2118575)))

(declare-fun b!7406276 () Bool)

(declare-fun tp!2118572 () Bool)

(declare-fun tp!2118574 () Bool)

(assert (=> b!7406276 (= e!4429676 (and tp!2118572 tp!2118574))))

(assert (= (and b!7406252 ((_ is ElementMatch!19387) (h!78281 (exprs!8827 c!10532)))) b!7406275))

(assert (= (and b!7406252 ((_ is Concat!28232) (h!78281 (exprs!8827 c!10532)))) b!7406276))

(assert (= (and b!7406252 ((_ is Star!19387) (h!78281 (exprs!8827 c!10532)))) b!7406277))

(assert (= (and b!7406252 ((_ is Union!19387) (h!78281 (exprs!8827 c!10532)))) b!7406278))

(declare-fun b!7406279 () Bool)

(declare-fun e!4429677 () Bool)

(declare-fun tp!2118577 () Bool)

(declare-fun tp!2118578 () Bool)

(assert (=> b!7406279 (= e!4429677 (and tp!2118577 tp!2118578))))

(assert (=> b!7406252 (= tp!2118557 e!4429677)))

(assert (= (and b!7406252 ((_ is Cons!71833) (t!386516 (exprs!8827 c!10532)))) b!7406279))

(declare-fun b!7406280 () Bool)

(declare-fun e!4429678 () Bool)

(assert (=> b!7406280 (= e!4429678 tp_is_empty!49037)))

(declare-fun b!7406283 () Bool)

(declare-fun tp!2118580 () Bool)

(declare-fun tp!2118583 () Bool)

(assert (=> b!7406283 (= e!4429678 (and tp!2118580 tp!2118583))))

(assert (=> b!7406246 (= tp!2118548 e!4429678)))

(declare-fun b!7406282 () Bool)

(declare-fun tp!2118582 () Bool)

(assert (=> b!7406282 (= e!4429678 tp!2118582)))

(declare-fun b!7406281 () Bool)

(declare-fun tp!2118579 () Bool)

(declare-fun tp!2118581 () Bool)

(assert (=> b!7406281 (= e!4429678 (and tp!2118579 tp!2118581))))

(assert (= (and b!7406246 ((_ is ElementMatch!19387) (h!78281 (exprs!8827 setElem!56114)))) b!7406280))

(assert (= (and b!7406246 ((_ is Concat!28232) (h!78281 (exprs!8827 setElem!56114)))) b!7406281))

(assert (= (and b!7406246 ((_ is Star!19387) (h!78281 (exprs!8827 setElem!56114)))) b!7406282))

(assert (= (and b!7406246 ((_ is Union!19387) (h!78281 (exprs!8827 setElem!56114)))) b!7406283))

(declare-fun b!7406284 () Bool)

(declare-fun e!4429679 () Bool)

(declare-fun tp!2118584 () Bool)

(declare-fun tp!2118585 () Bool)

(assert (=> b!7406284 (= e!4429679 (and tp!2118584 tp!2118585))))

(assert (=> b!7406246 (= tp!2118549 e!4429679)))

(assert (= (and b!7406246 ((_ is Cons!71833) (t!386516 (exprs!8827 setElem!56114)))) b!7406284))

(declare-fun b_lambda!286085 () Bool)

(assert (= b_lambda!286079 (or d!2290245 b_lambda!286085)))

(declare-fun bs!1923776 () Bool)

(declare-fun d!2290261 () Bool)

(assert (= bs!1923776 (and d!2290261 d!2290245)))

(declare-fun validRegex!9951 (Regex!19387) Bool)

(assert (=> bs!1923776 (= (dynLambda!29608 lambda!459385 (h!78281 (exprs!8827 (Context!16655 (tail!14794 (exprs!8827 c!10532)))))) (validRegex!9951 (h!78281 (exprs!8827 (Context!16655 (tail!14794 (exprs!8827 c!10532)))))))))

(declare-fun m!8042014 () Bool)

(assert (=> bs!1923776 m!8042014))

(assert (=> b!7406257 d!2290261))

(declare-fun b_lambda!286087 () Bool)

(assert (= b_lambda!286083 (or d!2290249 b_lambda!286087)))

(declare-fun bs!1923777 () Bool)

(declare-fun d!2290263 () Bool)

(assert (= bs!1923777 (and d!2290263 d!2290249)))

(assert (=> bs!1923777 (= (dynLambda!29608 lambda!459386 (h!78281 (exprs!8827 c!10532))) (validRegex!9951 (h!78281 (exprs!8827 c!10532))))))

(declare-fun m!8042016 () Bool)

(assert (=> bs!1923777 m!8042016))

(assert (=> b!7406261 d!2290263))

(declare-fun b_lambda!286089 () Bool)

(assert (= b_lambda!286081 (or d!2290231 b_lambda!286089)))

(declare-fun bs!1923778 () Bool)

(declare-fun d!2290265 () Bool)

(assert (= bs!1923778 (and d!2290265 d!2290231)))

(assert (=> bs!1923778 (= (dynLambda!29608 lambda!459384 (h!78281 (exprs!8827 setElem!56114))) (validRegex!9951 (h!78281 (exprs!8827 setElem!56114))))))

(declare-fun m!8042018 () Bool)

(assert (=> bs!1923778 m!8042018))

(assert (=> b!7406259 d!2290265))

(check-sat (not bs!1923777) (not b!7406284) (not b!7406279) (not bs!1923776) (not b_lambda!286087) (not bs!1923778) (not b!7406262) (not setNonEmpty!56121) (not b!7406276) (not b!7406283) (not b!7406281) (not b!7406278) (not b!7406282) (not b_lambda!286085) (not b!7406263) (not b!7406258) (not b!7406277) (not b!7406264) tp_is_empty!49037 (not b!7406260) (not b_lambda!286089) (not d!2290253))
(check-sat)
