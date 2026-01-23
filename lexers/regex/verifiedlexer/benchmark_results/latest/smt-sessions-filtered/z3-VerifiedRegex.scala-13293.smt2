; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!722892 () Bool)

(assert start!722892)

(declare-fun b!7442577 () Bool)

(declare-fun e!4444180 () Bool)

(declare-fun tp_is_empty!49181 () Bool)

(declare-fun tp!2151930 () Bool)

(assert (=> b!7442577 (= e!4444180 (and tp_is_empty!49181 tp!2151930))))

(declare-fun res!2986799 () Bool)

(declare-fun e!4444182 () Bool)

(assert (=> start!722892 (=> (not res!2986799) (not e!4444182))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!39196 0))(
  ( (C!39197 (val!29972 Int)) )
))
(declare-datatypes ((Regex!19461 0))(
  ( (ElementMatch!19461 (c!1377269 C!39196)) (Concat!28306 (regOne!39434 Regex!19461) (regTwo!39434 Regex!19461)) (EmptyExpr!19461) (Star!19461 (reg!19790 Regex!19461)) (EmptyLang!19461) (Union!19461 (regOne!39435 Regex!19461) (regTwo!39435 Regex!19461)) )
))
(declare-datatypes ((List!72148 0))(
  ( (Nil!72024) (Cons!72024 (h!78472 Regex!19461) (t!386713 List!72148)) )
))
(declare-datatypes ((Context!16802 0))(
  ( (Context!16803 (exprs!8901 List!72148)) )
))
(declare-fun z!3488 () (InoxSet Context!16802))

(declare-datatypes ((List!72149 0))(
  ( (Nil!72025) (Cons!72025 (h!78473 C!39196) (t!386714 List!72149)) )
))
(declare-fun s!7945 () List!72149)

(declare-fun lt!2619492 () Context!16802)

(get-info :version)

(assert (=> start!722892 (= res!2986799 (and (= z!3488 (store ((as const (Array Context!16802 Bool)) false) lt!2619492 true)) (not ((_ is Cons!72025) s!7945))))))

(assert (=> start!722892 (= lt!2619492 (Context!16803 Nil!72024))))

(assert (=> start!722892 e!4444182))

(declare-fun condSetEmpty!56627 () Bool)

(assert (=> start!722892 (= condSetEmpty!56627 (= z!3488 ((as const (Array Context!16802 Bool)) false)))))

(declare-fun setRes!56627 () Bool)

(assert (=> start!722892 setRes!56627))

(assert (=> start!722892 e!4444180))

(declare-fun b!7442578 () Bool)

(declare-fun matchZipper!3825 ((InoxSet Context!16802) List!72149) Bool)

(declare-fun isEmpty!41085 (List!72149) Bool)

(assert (=> b!7442578 (= e!4444182 (not (= (matchZipper!3825 z!3488 s!7945) (isEmpty!41085 s!7945))))))

(declare-fun e!4444181 () Bool)

(declare-fun tp!2151932 () Bool)

(declare-fun setNonEmpty!56627 () Bool)

(declare-fun setElem!56627 () Context!16802)

(declare-fun inv!92013 (Context!16802) Bool)

(assert (=> setNonEmpty!56627 (= setRes!56627 (and tp!2151932 (inv!92013 setElem!56627) e!4444181))))

(declare-fun setRest!56627 () (InoxSet Context!16802))

(assert (=> setNonEmpty!56627 (= z!3488 ((_ map or) (store ((as const (Array Context!16802 Bool)) false) setElem!56627 true) setRest!56627))))

(declare-fun b!7442579 () Bool)

(declare-fun tp!2151931 () Bool)

(assert (=> b!7442579 (= e!4444181 tp!2151931)))

(declare-fun b!7442580 () Bool)

(declare-fun res!2986798 () Bool)

(assert (=> b!7442580 (=> (not res!2986798) (not e!4444182))))

(declare-fun nullableContext!422 (Context!16802) Bool)

(assert (=> b!7442580 (= res!2986798 (nullableContext!422 lt!2619492))))

(declare-fun setIsEmpty!56627 () Bool)

(assert (=> setIsEmpty!56627 setRes!56627))

(assert (= (and start!722892 res!2986799) b!7442580))

(assert (= (and b!7442580 res!2986798) b!7442578))

(assert (= (and start!722892 condSetEmpty!56627) setIsEmpty!56627))

(assert (= (and start!722892 (not condSetEmpty!56627)) setNonEmpty!56627))

(assert (= setNonEmpty!56627 b!7442579))

(assert (= (and start!722892 ((_ is Cons!72025) s!7945)) b!7442577))

(declare-fun m!8054046 () Bool)

(assert (=> start!722892 m!8054046))

(declare-fun m!8054048 () Bool)

(assert (=> b!7442578 m!8054048))

(declare-fun m!8054050 () Bool)

(assert (=> b!7442578 m!8054050))

(declare-fun m!8054052 () Bool)

(assert (=> setNonEmpty!56627 m!8054052))

(declare-fun m!8054054 () Bool)

(assert (=> b!7442580 m!8054054))

(check-sat (not b!7442577) (not setNonEmpty!56627) (not b!7442580) tp_is_empty!49181 (not b!7442578) (not b!7442579))
(check-sat)
(get-model)

(declare-fun d!2295810 () Bool)

(declare-fun c!1377275 () Bool)

(assert (=> d!2295810 (= c!1377275 (isEmpty!41085 s!7945))))

(declare-fun e!4444188 () Bool)

(assert (=> d!2295810 (= (matchZipper!3825 z!3488 s!7945) e!4444188)))

(declare-fun b!7442591 () Bool)

(declare-fun nullableZipper!3152 ((InoxSet Context!16802)) Bool)

(assert (=> b!7442591 (= e!4444188 (nullableZipper!3152 z!3488))))

(declare-fun b!7442592 () Bool)

(declare-fun derivationStepZipper!3717 ((InoxSet Context!16802) C!39196) (InoxSet Context!16802))

(declare-fun head!15271 (List!72149) C!39196)

(declare-fun tail!14850 (List!72149) List!72149)

(assert (=> b!7442592 (= e!4444188 (matchZipper!3825 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (tail!14850 s!7945)))))

(assert (= (and d!2295810 c!1377275) b!7442591))

(assert (= (and d!2295810 (not c!1377275)) b!7442592))

(assert (=> d!2295810 m!8054050))

(declare-fun m!8054066 () Bool)

(assert (=> b!7442591 m!8054066))

(declare-fun m!8054068 () Bool)

(assert (=> b!7442592 m!8054068))

(assert (=> b!7442592 m!8054068))

(declare-fun m!8054070 () Bool)

(assert (=> b!7442592 m!8054070))

(declare-fun m!8054072 () Bool)

(assert (=> b!7442592 m!8054072))

(assert (=> b!7442592 m!8054070))

(assert (=> b!7442592 m!8054072))

(declare-fun m!8054074 () Bool)

(assert (=> b!7442592 m!8054074))

(assert (=> b!7442578 d!2295810))

(declare-fun d!2295814 () Bool)

(assert (=> d!2295814 (= (isEmpty!41085 s!7945) ((_ is Nil!72025) s!7945))))

(assert (=> b!7442578 d!2295814))

(declare-fun d!2295818 () Bool)

(declare-fun lambda!460512 () Int)

(declare-fun forall!18236 (List!72148 Int) Bool)

(assert (=> d!2295818 (= (inv!92013 setElem!56627) (forall!18236 (exprs!8901 setElem!56627) lambda!460512))))

(declare-fun bs!1926430 () Bool)

(assert (= bs!1926430 d!2295818))

(declare-fun m!8054082 () Bool)

(assert (=> bs!1926430 m!8054082))

(assert (=> setNonEmpty!56627 d!2295818))

(declare-fun bs!1926431 () Bool)

(declare-fun d!2295822 () Bool)

(assert (= bs!1926431 (and d!2295822 d!2295818)))

(declare-fun lambda!460515 () Int)

(assert (=> bs!1926431 (not (= lambda!460515 lambda!460512))))

(assert (=> d!2295822 (= (nullableContext!422 lt!2619492) (forall!18236 (exprs!8901 lt!2619492) lambda!460515))))

(declare-fun bs!1926432 () Bool)

(assert (= bs!1926432 d!2295822))

(declare-fun m!8054084 () Bool)

(assert (=> bs!1926432 m!8054084))

(assert (=> b!7442580 d!2295822))

(declare-fun condSetEmpty!56633 () Bool)

(assert (=> setNonEmpty!56627 (= condSetEmpty!56633 (= setRest!56627 ((as const (Array Context!16802 Bool)) false)))))

(declare-fun setRes!56633 () Bool)

(assert (=> setNonEmpty!56627 (= tp!2151932 setRes!56633)))

(declare-fun setIsEmpty!56633 () Bool)

(assert (=> setIsEmpty!56633 setRes!56633))

(declare-fun tp!2151952 () Bool)

(declare-fun setElem!56633 () Context!16802)

(declare-fun e!4444200 () Bool)

(declare-fun setNonEmpty!56633 () Bool)

(assert (=> setNonEmpty!56633 (= setRes!56633 (and tp!2151952 (inv!92013 setElem!56633) e!4444200))))

(declare-fun setRest!56633 () (InoxSet Context!16802))

(assert (=> setNonEmpty!56633 (= setRest!56627 ((_ map or) (store ((as const (Array Context!16802 Bool)) false) setElem!56633 true) setRest!56633))))

(declare-fun b!7442612 () Bool)

(declare-fun tp!2151953 () Bool)

(assert (=> b!7442612 (= e!4444200 tp!2151953)))

(assert (= (and setNonEmpty!56627 condSetEmpty!56633) setIsEmpty!56633))

(assert (= (and setNonEmpty!56627 (not condSetEmpty!56633)) setNonEmpty!56633))

(assert (= setNonEmpty!56633 b!7442612))

(declare-fun m!8054086 () Bool)

(assert (=> setNonEmpty!56633 m!8054086))

(declare-fun b!7442617 () Bool)

(declare-fun e!4444203 () Bool)

(declare-fun tp!2151956 () Bool)

(assert (=> b!7442617 (= e!4444203 (and tp_is_empty!49181 tp!2151956))))

(assert (=> b!7442577 (= tp!2151930 e!4444203)))

(assert (= (and b!7442577 ((_ is Cons!72025) (t!386714 s!7945))) b!7442617))

(declare-fun b!7442622 () Bool)

(declare-fun e!4444206 () Bool)

(declare-fun tp!2151961 () Bool)

(declare-fun tp!2151962 () Bool)

(assert (=> b!7442622 (= e!4444206 (and tp!2151961 tp!2151962))))

(assert (=> b!7442579 (= tp!2151931 e!4444206)))

(assert (= (and b!7442579 ((_ is Cons!72024) (exprs!8901 setElem!56627))) b!7442622))

(check-sat (not b!7442617) (not b!7442612) (not d!2295818) (not b!7442591) (not setNonEmpty!56633) (not d!2295810) (not b!7442592) tp_is_empty!49181 (not d!2295822) (not b!7442622))
(check-sat)
(get-model)

(declare-fun d!2295844 () Bool)

(declare-fun c!1377283 () Bool)

(assert (=> d!2295844 (= c!1377283 (isEmpty!41085 (tail!14850 s!7945)))))

(declare-fun e!4444223 () Bool)

(assert (=> d!2295844 (= (matchZipper!3825 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (tail!14850 s!7945)) e!4444223)))

(declare-fun b!7442653 () Bool)

(assert (=> b!7442653 (= e!4444223 (nullableZipper!3152 (derivationStepZipper!3717 z!3488 (head!15271 s!7945))))))

(declare-fun b!7442654 () Bool)

(assert (=> b!7442654 (= e!4444223 (matchZipper!3825 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) (tail!14850 (tail!14850 s!7945))))))

(assert (= (and d!2295844 c!1377283) b!7442653))

(assert (= (and d!2295844 (not c!1377283)) b!7442654))

(assert (=> d!2295844 m!8054072))

(declare-fun m!8054120 () Bool)

(assert (=> d!2295844 m!8054120))

(assert (=> b!7442653 m!8054070))

(declare-fun m!8054122 () Bool)

(assert (=> b!7442653 m!8054122))

(assert (=> b!7442654 m!8054072))

(declare-fun m!8054124 () Bool)

(assert (=> b!7442654 m!8054124))

(assert (=> b!7442654 m!8054070))

(assert (=> b!7442654 m!8054124))

(declare-fun m!8054126 () Bool)

(assert (=> b!7442654 m!8054126))

(assert (=> b!7442654 m!8054072))

(declare-fun m!8054128 () Bool)

(assert (=> b!7442654 m!8054128))

(assert (=> b!7442654 m!8054126))

(assert (=> b!7442654 m!8054128))

(declare-fun m!8054130 () Bool)

(assert (=> b!7442654 m!8054130))

(assert (=> b!7442592 d!2295844))

(declare-fun d!2295846 () Bool)

(assert (=> d!2295846 true))

(declare-fun lambda!460525 () Int)

(declare-fun flatMap!3239 ((InoxSet Context!16802) Int) (InoxSet Context!16802))

(assert (=> d!2295846 (= (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (flatMap!3239 z!3488 lambda!460525))))

(declare-fun bs!1926440 () Bool)

(assert (= bs!1926440 d!2295846))

(declare-fun m!8054132 () Bool)

(assert (=> bs!1926440 m!8054132))

(assert (=> b!7442592 d!2295846))

(declare-fun d!2295848 () Bool)

(assert (=> d!2295848 (= (head!15271 s!7945) (h!78473 s!7945))))

(assert (=> b!7442592 d!2295848))

(declare-fun d!2295850 () Bool)

(assert (=> d!2295850 (= (tail!14850 s!7945) (t!386714 s!7945))))

(assert (=> b!7442592 d!2295850))

(declare-fun d!2295852 () Bool)

(declare-fun res!2986812 () Bool)

(declare-fun e!4444228 () Bool)

(assert (=> d!2295852 (=> res!2986812 e!4444228)))

(assert (=> d!2295852 (= res!2986812 ((_ is Nil!72024) (exprs!8901 lt!2619492)))))

(assert (=> d!2295852 (= (forall!18236 (exprs!8901 lt!2619492) lambda!460515) e!4444228)))

(declare-fun b!7442661 () Bool)

(declare-fun e!4444229 () Bool)

(assert (=> b!7442661 (= e!4444228 e!4444229)))

(declare-fun res!2986813 () Bool)

(assert (=> b!7442661 (=> (not res!2986813) (not e!4444229))))

(declare-fun dynLambda!29737 (Int Regex!19461) Bool)

(assert (=> b!7442661 (= res!2986813 (dynLambda!29737 lambda!460515 (h!78472 (exprs!8901 lt!2619492))))))

(declare-fun b!7442662 () Bool)

(assert (=> b!7442662 (= e!4444229 (forall!18236 (t!386713 (exprs!8901 lt!2619492)) lambda!460515))))

(assert (= (and d!2295852 (not res!2986812)) b!7442661))

(assert (= (and b!7442661 res!2986813) b!7442662))

(declare-fun b_lambda!287611 () Bool)

(assert (=> (not b_lambda!287611) (not b!7442661)))

(declare-fun m!8054134 () Bool)

(assert (=> b!7442661 m!8054134))

(declare-fun m!8054136 () Bool)

(assert (=> b!7442662 m!8054136))

(assert (=> d!2295822 d!2295852))

(declare-fun d!2295854 () Bool)

(declare-fun lambda!460528 () Int)

(declare-fun exists!4813 ((InoxSet Context!16802) Int) Bool)

(assert (=> d!2295854 (= (nullableZipper!3152 z!3488) (exists!4813 z!3488 lambda!460528))))

(declare-fun bs!1926441 () Bool)

(assert (= bs!1926441 d!2295854))

(declare-fun m!8054138 () Bool)

(assert (=> bs!1926441 m!8054138))

(assert (=> b!7442591 d!2295854))

(declare-fun d!2295856 () Bool)

(declare-fun res!2986814 () Bool)

(declare-fun e!4444230 () Bool)

(assert (=> d!2295856 (=> res!2986814 e!4444230)))

(assert (=> d!2295856 (= res!2986814 ((_ is Nil!72024) (exprs!8901 setElem!56627)))))

(assert (=> d!2295856 (= (forall!18236 (exprs!8901 setElem!56627) lambda!460512) e!4444230)))

(declare-fun b!7442663 () Bool)

(declare-fun e!4444231 () Bool)

(assert (=> b!7442663 (= e!4444230 e!4444231)))

(declare-fun res!2986815 () Bool)

(assert (=> b!7442663 (=> (not res!2986815) (not e!4444231))))

(assert (=> b!7442663 (= res!2986815 (dynLambda!29737 lambda!460512 (h!78472 (exprs!8901 setElem!56627))))))

(declare-fun b!7442664 () Bool)

(assert (=> b!7442664 (= e!4444231 (forall!18236 (t!386713 (exprs!8901 setElem!56627)) lambda!460512))))

(assert (= (and d!2295856 (not res!2986814)) b!7442663))

(assert (= (and b!7442663 res!2986815) b!7442664))

(declare-fun b_lambda!287613 () Bool)

(assert (=> (not b_lambda!287613) (not b!7442663)))

(declare-fun m!8054140 () Bool)

(assert (=> b!7442663 m!8054140))

(declare-fun m!8054142 () Bool)

(assert (=> b!7442664 m!8054142))

(assert (=> d!2295818 d!2295856))

(assert (=> d!2295810 d!2295814))

(declare-fun bs!1926442 () Bool)

(declare-fun d!2295858 () Bool)

(assert (= bs!1926442 (and d!2295858 d!2295818)))

(declare-fun lambda!460529 () Int)

(assert (=> bs!1926442 (= lambda!460529 lambda!460512)))

(declare-fun bs!1926443 () Bool)

(assert (= bs!1926443 (and d!2295858 d!2295822)))

(assert (=> bs!1926443 (not (= lambda!460529 lambda!460515))))

(assert (=> d!2295858 (= (inv!92013 setElem!56633) (forall!18236 (exprs!8901 setElem!56633) lambda!460529))))

(declare-fun bs!1926444 () Bool)

(assert (= bs!1926444 d!2295858))

(declare-fun m!8054144 () Bool)

(assert (=> bs!1926444 m!8054144))

(assert (=> setNonEmpty!56633 d!2295858))

(declare-fun b!7442665 () Bool)

(declare-fun e!4444232 () Bool)

(declare-fun tp!2151985 () Bool)

(assert (=> b!7442665 (= e!4444232 (and tp_is_empty!49181 tp!2151985))))

(assert (=> b!7442617 (= tp!2151956 e!4444232)))

(assert (= (and b!7442617 ((_ is Cons!72025) (t!386714 (t!386714 s!7945)))) b!7442665))

(declare-fun b!7442666 () Bool)

(declare-fun e!4444233 () Bool)

(declare-fun tp!2151986 () Bool)

(declare-fun tp!2151987 () Bool)

(assert (=> b!7442666 (= e!4444233 (and tp!2151986 tp!2151987))))

(assert (=> b!7442612 (= tp!2151953 e!4444233)))

(assert (= (and b!7442612 ((_ is Cons!72024) (exprs!8901 setElem!56633))) b!7442666))

(declare-fun condSetEmpty!56635 () Bool)

(assert (=> setNonEmpty!56633 (= condSetEmpty!56635 (= setRest!56633 ((as const (Array Context!16802 Bool)) false)))))

(declare-fun setRes!56635 () Bool)

(assert (=> setNonEmpty!56633 (= tp!2151952 setRes!56635)))

(declare-fun setIsEmpty!56635 () Bool)

(assert (=> setIsEmpty!56635 setRes!56635))

(declare-fun setNonEmpty!56635 () Bool)

(declare-fun tp!2151988 () Bool)

(declare-fun setElem!56635 () Context!16802)

(declare-fun e!4444234 () Bool)

(assert (=> setNonEmpty!56635 (= setRes!56635 (and tp!2151988 (inv!92013 setElem!56635) e!4444234))))

(declare-fun setRest!56635 () (InoxSet Context!16802))

(assert (=> setNonEmpty!56635 (= setRest!56633 ((_ map or) (store ((as const (Array Context!16802 Bool)) false) setElem!56635 true) setRest!56635))))

(declare-fun b!7442667 () Bool)

(declare-fun tp!2151989 () Bool)

(assert (=> b!7442667 (= e!4444234 tp!2151989)))

(assert (= (and setNonEmpty!56633 condSetEmpty!56635) setIsEmpty!56635))

(assert (= (and setNonEmpty!56633 (not condSetEmpty!56635)) setNonEmpty!56635))

(assert (= setNonEmpty!56635 b!7442667))

(declare-fun m!8054146 () Bool)

(assert (=> setNonEmpty!56635 m!8054146))

(declare-fun b!7442679 () Bool)

(declare-fun e!4444237 () Bool)

(declare-fun tp!2152004 () Bool)

(declare-fun tp!2152002 () Bool)

(assert (=> b!7442679 (= e!4444237 (and tp!2152004 tp!2152002))))

(assert (=> b!7442622 (= tp!2151961 e!4444237)))

(declare-fun b!7442680 () Bool)

(declare-fun tp!2152000 () Bool)

(assert (=> b!7442680 (= e!4444237 tp!2152000)))

(declare-fun b!7442678 () Bool)

(assert (=> b!7442678 (= e!4444237 tp_is_empty!49181)))

(declare-fun b!7442681 () Bool)

(declare-fun tp!2152003 () Bool)

(declare-fun tp!2152001 () Bool)

(assert (=> b!7442681 (= e!4444237 (and tp!2152003 tp!2152001))))

(assert (= (and b!7442622 ((_ is ElementMatch!19461) (h!78472 (exprs!8901 setElem!56627)))) b!7442678))

(assert (= (and b!7442622 ((_ is Concat!28306) (h!78472 (exprs!8901 setElem!56627)))) b!7442679))

(assert (= (and b!7442622 ((_ is Star!19461) (h!78472 (exprs!8901 setElem!56627)))) b!7442680))

(assert (= (and b!7442622 ((_ is Union!19461) (h!78472 (exprs!8901 setElem!56627)))) b!7442681))

(declare-fun b!7442682 () Bool)

(declare-fun e!4444238 () Bool)

(declare-fun tp!2152005 () Bool)

(declare-fun tp!2152006 () Bool)

(assert (=> b!7442682 (= e!4444238 (and tp!2152005 tp!2152006))))

(assert (=> b!7442622 (= tp!2151962 e!4444238)))

(assert (= (and b!7442622 ((_ is Cons!72024) (t!386713 (exprs!8901 setElem!56627)))) b!7442682))

(declare-fun b_lambda!287615 () Bool)

(assert (= b_lambda!287611 (or d!2295822 b_lambda!287615)))

(declare-fun bs!1926445 () Bool)

(declare-fun d!2295860 () Bool)

(assert (= bs!1926445 (and d!2295860 d!2295822)))

(declare-fun nullable!8483 (Regex!19461) Bool)

(assert (=> bs!1926445 (= (dynLambda!29737 lambda!460515 (h!78472 (exprs!8901 lt!2619492))) (nullable!8483 (h!78472 (exprs!8901 lt!2619492))))))

(declare-fun m!8054148 () Bool)

(assert (=> bs!1926445 m!8054148))

(assert (=> b!7442661 d!2295860))

(declare-fun b_lambda!287617 () Bool)

(assert (= b_lambda!287613 (or d!2295818 b_lambda!287617)))

(declare-fun bs!1926446 () Bool)

(declare-fun d!2295862 () Bool)

(assert (= bs!1926446 (and d!2295862 d!2295818)))

(declare-fun validRegex!9984 (Regex!19461) Bool)

(assert (=> bs!1926446 (= (dynLambda!29737 lambda!460512 (h!78472 (exprs!8901 setElem!56627))) (validRegex!9984 (h!78472 (exprs!8901 setElem!56627))))))

(declare-fun m!8054150 () Bool)

(assert (=> bs!1926446 m!8054150))

(assert (=> b!7442663 d!2295862))

(check-sat (not d!2295854) (not bs!1926446) (not b!7442679) (not d!2295846) (not bs!1926445) tp_is_empty!49181 (not b!7442662) (not d!2295844) (not b_lambda!287615) (not b!7442681) (not b!7442664) (not b!7442653) (not b!7442667) (not b!7442665) (not d!2295858) (not b!7442682) (not setNonEmpty!56635) (not b!7442680) (not b!7442654) (not b!7442666) (not b_lambda!287617))
(check-sat)
(get-model)

(declare-fun d!2295878 () Bool)

(declare-fun lt!2619498 () Bool)

(declare-datatypes ((List!72151 0))(
  ( (Nil!72027) (Cons!72027 (h!78475 Context!16802) (t!386716 List!72151)) )
))
(declare-fun exists!4815 (List!72151 Int) Bool)

(declare-fun toList!11794 ((InoxSet Context!16802)) List!72151)

(assert (=> d!2295878 (= lt!2619498 (exists!4815 (toList!11794 z!3488) lambda!460528))))

(declare-fun choose!57534 ((InoxSet Context!16802) Int) Bool)

(assert (=> d!2295878 (= lt!2619498 (choose!57534 z!3488 lambda!460528))))

(assert (=> d!2295878 (= (exists!4813 z!3488 lambda!460528) lt!2619498)))

(declare-fun bs!1926452 () Bool)

(assert (= bs!1926452 d!2295878))

(declare-fun m!8054180 () Bool)

(assert (=> bs!1926452 m!8054180))

(assert (=> bs!1926452 m!8054180))

(declare-fun m!8054182 () Bool)

(assert (=> bs!1926452 m!8054182))

(declare-fun m!8054184 () Bool)

(assert (=> bs!1926452 m!8054184))

(assert (=> d!2295854 d!2295878))

(declare-fun d!2295882 () Bool)

(declare-fun res!2986831 () Bool)

(declare-fun e!4444261 () Bool)

(assert (=> d!2295882 (=> res!2986831 e!4444261)))

(assert (=> d!2295882 (= res!2986831 ((_ is Nil!72024) (exprs!8901 setElem!56633)))))

(assert (=> d!2295882 (= (forall!18236 (exprs!8901 setElem!56633) lambda!460529) e!4444261)))

(declare-fun b!7442712 () Bool)

(declare-fun e!4444262 () Bool)

(assert (=> b!7442712 (= e!4444261 e!4444262)))

(declare-fun res!2986832 () Bool)

(assert (=> b!7442712 (=> (not res!2986832) (not e!4444262))))

(assert (=> b!7442712 (= res!2986832 (dynLambda!29737 lambda!460529 (h!78472 (exprs!8901 setElem!56633))))))

(declare-fun b!7442713 () Bool)

(assert (=> b!7442713 (= e!4444262 (forall!18236 (t!386713 (exprs!8901 setElem!56633)) lambda!460529))))

(assert (= (and d!2295882 (not res!2986831)) b!7442712))

(assert (= (and b!7442712 res!2986832) b!7442713))

(declare-fun b_lambda!287619 () Bool)

(assert (=> (not b_lambda!287619) (not b!7442712)))

(declare-fun m!8054188 () Bool)

(assert (=> b!7442712 m!8054188))

(declare-fun m!8054190 () Bool)

(assert (=> b!7442713 m!8054190))

(assert (=> d!2295858 d!2295882))

(declare-fun d!2295886 () Bool)

(declare-fun choose!57535 ((InoxSet Context!16802) Int) (InoxSet Context!16802))

(assert (=> d!2295886 (= (flatMap!3239 z!3488 lambda!460525) (choose!57535 z!3488 lambda!460525))))

(declare-fun bs!1926455 () Bool)

(assert (= bs!1926455 d!2295886))

(declare-fun m!8054194 () Bool)

(assert (=> bs!1926455 m!8054194))

(assert (=> d!2295846 d!2295886))

(declare-fun bs!1926458 () Bool)

(declare-fun d!2295890 () Bool)

(assert (= bs!1926458 (and d!2295890 d!2295818)))

(declare-fun lambda!460533 () Int)

(assert (=> bs!1926458 (= lambda!460533 lambda!460512)))

(declare-fun bs!1926460 () Bool)

(assert (= bs!1926460 (and d!2295890 d!2295822)))

(assert (=> bs!1926460 (not (= lambda!460533 lambda!460515))))

(declare-fun bs!1926461 () Bool)

(assert (= bs!1926461 (and d!2295890 d!2295858)))

(assert (=> bs!1926461 (= lambda!460533 lambda!460529)))

(assert (=> d!2295890 (= (inv!92013 setElem!56635) (forall!18236 (exprs!8901 setElem!56635) lambda!460533))))

(declare-fun bs!1926463 () Bool)

(assert (= bs!1926463 d!2295890))

(declare-fun m!8054198 () Bool)

(assert (=> bs!1926463 m!8054198))

(assert (=> setNonEmpty!56635 d!2295890))

(declare-fun d!2295894 () Bool)

(declare-fun res!2986835 () Bool)

(declare-fun e!4444265 () Bool)

(assert (=> d!2295894 (=> res!2986835 e!4444265)))

(assert (=> d!2295894 (= res!2986835 ((_ is Nil!72024) (t!386713 (exprs!8901 lt!2619492))))))

(assert (=> d!2295894 (= (forall!18236 (t!386713 (exprs!8901 lt!2619492)) lambda!460515) e!4444265)))

(declare-fun b!7442716 () Bool)

(declare-fun e!4444266 () Bool)

(assert (=> b!7442716 (= e!4444265 e!4444266)))

(declare-fun res!2986836 () Bool)

(assert (=> b!7442716 (=> (not res!2986836) (not e!4444266))))

(assert (=> b!7442716 (= res!2986836 (dynLambda!29737 lambda!460515 (h!78472 (t!386713 (exprs!8901 lt!2619492)))))))

(declare-fun b!7442717 () Bool)

(assert (=> b!7442717 (= e!4444266 (forall!18236 (t!386713 (t!386713 (exprs!8901 lt!2619492))) lambda!460515))))

(assert (= (and d!2295894 (not res!2986835)) b!7442716))

(assert (= (and b!7442716 res!2986836) b!7442717))

(declare-fun b_lambda!287623 () Bool)

(assert (=> (not b_lambda!287623) (not b!7442716)))

(declare-fun m!8054204 () Bool)

(assert (=> b!7442716 m!8054204))

(declare-fun m!8054206 () Bool)

(assert (=> b!7442717 m!8054206))

(assert (=> b!7442662 d!2295894))

(declare-fun d!2295898 () Bool)

(declare-fun res!2986839 () Bool)

(declare-fun e!4444269 () Bool)

(assert (=> d!2295898 (=> res!2986839 e!4444269)))

(assert (=> d!2295898 (= res!2986839 ((_ is Nil!72024) (t!386713 (exprs!8901 setElem!56627))))))

(assert (=> d!2295898 (= (forall!18236 (t!386713 (exprs!8901 setElem!56627)) lambda!460512) e!4444269)))

(declare-fun b!7442720 () Bool)

(declare-fun e!4444270 () Bool)

(assert (=> b!7442720 (= e!4444269 e!4444270)))

(declare-fun res!2986840 () Bool)

(assert (=> b!7442720 (=> (not res!2986840) (not e!4444270))))

(assert (=> b!7442720 (= res!2986840 (dynLambda!29737 lambda!460512 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))))

(declare-fun b!7442721 () Bool)

(assert (=> b!7442721 (= e!4444270 (forall!18236 (t!386713 (t!386713 (exprs!8901 setElem!56627))) lambda!460512))))

(assert (= (and d!2295898 (not res!2986839)) b!7442720))

(assert (= (and b!7442720 res!2986840) b!7442721))

(declare-fun b_lambda!287627 () Bool)

(assert (=> (not b_lambda!287627) (not b!7442720)))

(declare-fun m!8054212 () Bool)

(assert (=> b!7442720 m!8054212))

(declare-fun m!8054214 () Bool)

(assert (=> b!7442721 m!8054214))

(assert (=> b!7442664 d!2295898))

(declare-fun b!7442775 () Bool)

(declare-fun e!4444302 () Bool)

(declare-fun e!4444299 () Bool)

(assert (=> b!7442775 (= e!4444302 e!4444299)))

(declare-fun c!1377299 () Bool)

(assert (=> b!7442775 (= c!1377299 ((_ is Star!19461) (h!78472 (exprs!8901 setElem!56627))))))

(declare-fun b!7442776 () Bool)

(declare-fun res!2986853 () Bool)

(declare-fun e!4444304 () Bool)

(assert (=> b!7442776 (=> (not res!2986853) (not e!4444304))))

(declare-fun call!684163 () Bool)

(assert (=> b!7442776 (= res!2986853 call!684163)))

(declare-fun e!4444301 () Bool)

(assert (=> b!7442776 (= e!4444301 e!4444304)))

(declare-fun b!7442777 () Bool)

(declare-fun e!4444305 () Bool)

(assert (=> b!7442777 (= e!4444299 e!4444305)))

(declare-fun res!2986856 () Bool)

(assert (=> b!7442777 (= res!2986856 (not (nullable!8483 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))))

(assert (=> b!7442777 (=> (not res!2986856) (not e!4444305))))

(declare-fun b!7442778 () Bool)

(declare-fun e!4444300 () Bool)

(assert (=> b!7442778 (= e!4444300 call!684163)))

(declare-fun b!7442779 () Bool)

(declare-fun call!684164 () Bool)

(assert (=> b!7442779 (= e!4444304 call!684164)))

(declare-fun b!7442780 () Bool)

(declare-fun call!684162 () Bool)

(assert (=> b!7442780 (= e!4444305 call!684162)))

(declare-fun d!2295902 () Bool)

(declare-fun res!2986855 () Bool)

(assert (=> d!2295902 (=> res!2986855 e!4444302)))

(assert (=> d!2295902 (= res!2986855 ((_ is ElementMatch!19461) (h!78472 (exprs!8901 setElem!56627))))))

(assert (=> d!2295902 (= (validRegex!9984 (h!78472 (exprs!8901 setElem!56627))) e!4444302)))

(declare-fun b!7442781 () Bool)

(declare-fun e!4444303 () Bool)

(assert (=> b!7442781 (= e!4444303 e!4444300)))

(declare-fun res!2986857 () Bool)

(assert (=> b!7442781 (=> (not res!2986857) (not e!4444300))))

(assert (=> b!7442781 (= res!2986857 call!684164)))

(declare-fun b!7442782 () Bool)

(assert (=> b!7442782 (= e!4444299 e!4444301)))

(declare-fun c!1377300 () Bool)

(assert (=> b!7442782 (= c!1377300 ((_ is Union!19461) (h!78472 (exprs!8901 setElem!56627))))))

(declare-fun bm!684157 () Bool)

(assert (=> bm!684157 (= call!684162 (validRegex!9984 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))))

(declare-fun bm!684158 () Bool)

(assert (=> bm!684158 (= call!684163 call!684162)))

(declare-fun b!7442783 () Bool)

(declare-fun res!2986854 () Bool)

(assert (=> b!7442783 (=> res!2986854 e!4444303)))

(assert (=> b!7442783 (= res!2986854 (not ((_ is Concat!28306) (h!78472 (exprs!8901 setElem!56627)))))))

(assert (=> b!7442783 (= e!4444301 e!4444303)))

(declare-fun bm!684159 () Bool)

(assert (=> bm!684159 (= call!684164 (validRegex!9984 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))))

(assert (= (and d!2295902 (not res!2986855)) b!7442775))

(assert (= (and b!7442775 c!1377299) b!7442777))

(assert (= (and b!7442775 (not c!1377299)) b!7442782))

(assert (= (and b!7442777 res!2986856) b!7442780))

(assert (= (and b!7442782 c!1377300) b!7442776))

(assert (= (and b!7442782 (not c!1377300)) b!7442783))

(assert (= (and b!7442776 res!2986853) b!7442779))

(assert (= (and b!7442783 (not res!2986854)) b!7442781))

(assert (= (and b!7442781 res!2986857) b!7442778))

(assert (= (or b!7442776 b!7442778) bm!684158))

(assert (= (or b!7442779 b!7442781) bm!684159))

(assert (= (or b!7442780 bm!684158) bm!684157))

(declare-fun m!8054228 () Bool)

(assert (=> b!7442777 m!8054228))

(declare-fun m!8054230 () Bool)

(assert (=> bm!684157 m!8054230))

(declare-fun m!8054232 () Bool)

(assert (=> bm!684159 m!8054232))

(assert (=> bs!1926446 d!2295902))

(declare-fun d!2295912 () Bool)

(assert (=> d!2295912 (= (isEmpty!41085 (tail!14850 s!7945)) ((_ is Nil!72025) (tail!14850 s!7945)))))

(assert (=> d!2295844 d!2295912))

(declare-fun d!2295914 () Bool)

(declare-fun nullableFct!3424 (Regex!19461) Bool)

(assert (=> d!2295914 (= (nullable!8483 (h!78472 (exprs!8901 lt!2619492))) (nullableFct!3424 (h!78472 (exprs!8901 lt!2619492))))))

(declare-fun bs!1926467 () Bool)

(assert (= bs!1926467 d!2295914))

(declare-fun m!8054234 () Bool)

(assert (=> bs!1926467 m!8054234))

(assert (=> bs!1926445 d!2295914))

(declare-fun bs!1926468 () Bool)

(declare-fun d!2295916 () Bool)

(assert (= bs!1926468 (and d!2295916 d!2295854)))

(declare-fun lambda!460534 () Int)

(assert (=> bs!1926468 (= lambda!460534 lambda!460528)))

(assert (=> d!2295916 (= (nullableZipper!3152 (derivationStepZipper!3717 z!3488 (head!15271 s!7945))) (exists!4813 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) lambda!460534))))

(declare-fun bs!1926469 () Bool)

(assert (= bs!1926469 d!2295916))

(assert (=> bs!1926469 m!8054070))

(declare-fun m!8054236 () Bool)

(assert (=> bs!1926469 m!8054236))

(assert (=> b!7442653 d!2295916))

(declare-fun d!2295918 () Bool)

(declare-fun c!1377301 () Bool)

(assert (=> d!2295918 (= c!1377301 (isEmpty!41085 (tail!14850 (tail!14850 s!7945))))))

(declare-fun e!4444306 () Bool)

(assert (=> d!2295918 (= (matchZipper!3825 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) (tail!14850 (tail!14850 s!7945))) e!4444306)))

(declare-fun b!7442784 () Bool)

(assert (=> b!7442784 (= e!4444306 (nullableZipper!3152 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945)))))))

(declare-fun b!7442785 () Bool)

(assert (=> b!7442785 (= e!4444306 (matchZipper!3825 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) (head!15271 (tail!14850 (tail!14850 s!7945)))) (tail!14850 (tail!14850 (tail!14850 s!7945)))))))

(assert (= (and d!2295918 c!1377301) b!7442784))

(assert (= (and d!2295918 (not c!1377301)) b!7442785))

(assert (=> d!2295918 m!8054128))

(declare-fun m!8054238 () Bool)

(assert (=> d!2295918 m!8054238))

(assert (=> b!7442784 m!8054126))

(declare-fun m!8054240 () Bool)

(assert (=> b!7442784 m!8054240))

(assert (=> b!7442785 m!8054128))

(declare-fun m!8054242 () Bool)

(assert (=> b!7442785 m!8054242))

(assert (=> b!7442785 m!8054126))

(assert (=> b!7442785 m!8054242))

(declare-fun m!8054244 () Bool)

(assert (=> b!7442785 m!8054244))

(assert (=> b!7442785 m!8054128))

(declare-fun m!8054246 () Bool)

(assert (=> b!7442785 m!8054246))

(assert (=> b!7442785 m!8054244))

(assert (=> b!7442785 m!8054246))

(declare-fun m!8054248 () Bool)

(assert (=> b!7442785 m!8054248))

(assert (=> b!7442654 d!2295918))

(declare-fun bs!1926470 () Bool)

(declare-fun d!2295920 () Bool)

(assert (= bs!1926470 (and d!2295920 d!2295846)))

(declare-fun lambda!460535 () Int)

(assert (=> bs!1926470 (= (= (head!15271 (tail!14850 s!7945)) (head!15271 s!7945)) (= lambda!460535 lambda!460525))))

(assert (=> d!2295920 true))

(assert (=> d!2295920 (= (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) (flatMap!3239 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) lambda!460535))))

(declare-fun bs!1926471 () Bool)

(assert (= bs!1926471 d!2295920))

(assert (=> bs!1926471 m!8054070))

(declare-fun m!8054250 () Bool)

(assert (=> bs!1926471 m!8054250))

(assert (=> b!7442654 d!2295920))

(declare-fun d!2295922 () Bool)

(assert (=> d!2295922 (= (head!15271 (tail!14850 s!7945)) (h!78473 (tail!14850 s!7945)))))

(assert (=> b!7442654 d!2295922))

(declare-fun d!2295924 () Bool)

(assert (=> d!2295924 (= (tail!14850 (tail!14850 s!7945)) (t!386714 (tail!14850 s!7945)))))

(assert (=> b!7442654 d!2295924))

(declare-fun condSetEmpty!56637 () Bool)

(assert (=> setNonEmpty!56635 (= condSetEmpty!56637 (= setRest!56635 ((as const (Array Context!16802 Bool)) false)))))

(declare-fun setRes!56637 () Bool)

(assert (=> setNonEmpty!56635 (= tp!2151988 setRes!56637)))

(declare-fun setIsEmpty!56637 () Bool)

(assert (=> setIsEmpty!56637 setRes!56637))

(declare-fun e!4444307 () Bool)

(declare-fun setElem!56637 () Context!16802)

(declare-fun tp!2152051 () Bool)

(declare-fun setNonEmpty!56637 () Bool)

(assert (=> setNonEmpty!56637 (= setRes!56637 (and tp!2152051 (inv!92013 setElem!56637) e!4444307))))

(declare-fun setRest!56637 () (InoxSet Context!16802))

(assert (=> setNonEmpty!56637 (= setRest!56635 ((_ map or) (store ((as const (Array Context!16802 Bool)) false) setElem!56637 true) setRest!56637))))

(declare-fun b!7442786 () Bool)

(declare-fun tp!2152052 () Bool)

(assert (=> b!7442786 (= e!4444307 tp!2152052)))

(assert (= (and setNonEmpty!56635 condSetEmpty!56637) setIsEmpty!56637))

(assert (= (and setNonEmpty!56635 (not condSetEmpty!56637)) setNonEmpty!56637))

(assert (= setNonEmpty!56637 b!7442786))

(declare-fun m!8054252 () Bool)

(assert (=> setNonEmpty!56637 m!8054252))

(declare-fun b!7442788 () Bool)

(declare-fun e!4444308 () Bool)

(declare-fun tp!2152057 () Bool)

(declare-fun tp!2152055 () Bool)

(assert (=> b!7442788 (= e!4444308 (and tp!2152057 tp!2152055))))

(assert (=> b!7442681 (= tp!2152003 e!4444308)))

(declare-fun b!7442789 () Bool)

(declare-fun tp!2152053 () Bool)

(assert (=> b!7442789 (= e!4444308 tp!2152053)))

(declare-fun b!7442787 () Bool)

(assert (=> b!7442787 (= e!4444308 tp_is_empty!49181)))

(declare-fun b!7442790 () Bool)

(declare-fun tp!2152056 () Bool)

(declare-fun tp!2152054 () Bool)

(assert (=> b!7442790 (= e!4444308 (and tp!2152056 tp!2152054))))

(assert (= (and b!7442681 ((_ is ElementMatch!19461) (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))) b!7442787))

(assert (= (and b!7442681 ((_ is Concat!28306) (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))) b!7442788))

(assert (= (and b!7442681 ((_ is Star!19461) (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))) b!7442789))

(assert (= (and b!7442681 ((_ is Union!19461) (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))) b!7442790))

(declare-fun b!7442792 () Bool)

(declare-fun e!4444309 () Bool)

(declare-fun tp!2152062 () Bool)

(declare-fun tp!2152060 () Bool)

(assert (=> b!7442792 (= e!4444309 (and tp!2152062 tp!2152060))))

(assert (=> b!7442681 (= tp!2152001 e!4444309)))

(declare-fun b!7442793 () Bool)

(declare-fun tp!2152058 () Bool)

(assert (=> b!7442793 (= e!4444309 tp!2152058)))

(declare-fun b!7442791 () Bool)

(assert (=> b!7442791 (= e!4444309 tp_is_empty!49181)))

(declare-fun b!7442794 () Bool)

(declare-fun tp!2152061 () Bool)

(declare-fun tp!2152059 () Bool)

(assert (=> b!7442794 (= e!4444309 (and tp!2152061 tp!2152059))))

(assert (= (and b!7442681 ((_ is ElementMatch!19461) (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))) b!7442791))

(assert (= (and b!7442681 ((_ is Concat!28306) (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))) b!7442792))

(assert (= (and b!7442681 ((_ is Star!19461) (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))) b!7442793))

(assert (= (and b!7442681 ((_ is Union!19461) (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))) b!7442794))

(declare-fun b!7442795 () Bool)

(declare-fun e!4444310 () Bool)

(declare-fun tp!2152063 () Bool)

(assert (=> b!7442795 (= e!4444310 (and tp_is_empty!49181 tp!2152063))))

(assert (=> b!7442665 (= tp!2151985 e!4444310)))

(assert (= (and b!7442665 ((_ is Cons!72025) (t!386714 (t!386714 (t!386714 s!7945))))) b!7442795))

(declare-fun b!7442797 () Bool)

(declare-fun e!4444311 () Bool)

(declare-fun tp!2152068 () Bool)

(declare-fun tp!2152066 () Bool)

(assert (=> b!7442797 (= e!4444311 (and tp!2152068 tp!2152066))))

(assert (=> b!7442679 (= tp!2152004 e!4444311)))

(declare-fun b!7442798 () Bool)

(declare-fun tp!2152064 () Bool)

(assert (=> b!7442798 (= e!4444311 tp!2152064)))

(declare-fun b!7442796 () Bool)

(assert (=> b!7442796 (= e!4444311 tp_is_empty!49181)))

(declare-fun b!7442799 () Bool)

(declare-fun tp!2152067 () Bool)

(declare-fun tp!2152065 () Bool)

(assert (=> b!7442799 (= e!4444311 (and tp!2152067 tp!2152065))))

(assert (= (and b!7442679 ((_ is ElementMatch!19461) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) b!7442796))

(assert (= (and b!7442679 ((_ is Concat!28306) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) b!7442797))

(assert (= (and b!7442679 ((_ is Star!19461) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) b!7442798))

(assert (= (and b!7442679 ((_ is Union!19461) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) b!7442799))

(declare-fun b!7442801 () Bool)

(declare-fun e!4444312 () Bool)

(declare-fun tp!2152073 () Bool)

(declare-fun tp!2152071 () Bool)

(assert (=> b!7442801 (= e!4444312 (and tp!2152073 tp!2152071))))

(assert (=> b!7442679 (= tp!2152002 e!4444312)))

(declare-fun b!7442802 () Bool)

(declare-fun tp!2152069 () Bool)

(assert (=> b!7442802 (= e!4444312 tp!2152069)))

(declare-fun b!7442800 () Bool)

(assert (=> b!7442800 (= e!4444312 tp_is_empty!49181)))

(declare-fun b!7442803 () Bool)

(declare-fun tp!2152072 () Bool)

(declare-fun tp!2152070 () Bool)

(assert (=> b!7442803 (= e!4444312 (and tp!2152072 tp!2152070))))

(assert (= (and b!7442679 ((_ is ElementMatch!19461) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))) b!7442800))

(assert (= (and b!7442679 ((_ is Concat!28306) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))) b!7442801))

(assert (= (and b!7442679 ((_ is Star!19461) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))) b!7442802))

(assert (= (and b!7442679 ((_ is Union!19461) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))) b!7442803))

(declare-fun b!7442804 () Bool)

(declare-fun e!4444313 () Bool)

(declare-fun tp!2152074 () Bool)

(declare-fun tp!2152075 () Bool)

(assert (=> b!7442804 (= e!4444313 (and tp!2152074 tp!2152075))))

(assert (=> b!7442667 (= tp!2151989 e!4444313)))

(assert (= (and b!7442667 ((_ is Cons!72024) (exprs!8901 setElem!56635))) b!7442804))

(declare-fun b!7442806 () Bool)

(declare-fun e!4444314 () Bool)

(declare-fun tp!2152080 () Bool)

(declare-fun tp!2152078 () Bool)

(assert (=> b!7442806 (= e!4444314 (and tp!2152080 tp!2152078))))

(assert (=> b!7442682 (= tp!2152005 e!4444314)))

(declare-fun b!7442807 () Bool)

(declare-fun tp!2152076 () Bool)

(assert (=> b!7442807 (= e!4444314 tp!2152076)))

(declare-fun b!7442805 () Bool)

(assert (=> b!7442805 (= e!4444314 tp_is_empty!49181)))

(declare-fun b!7442808 () Bool)

(declare-fun tp!2152079 () Bool)

(declare-fun tp!2152077 () Bool)

(assert (=> b!7442808 (= e!4444314 (and tp!2152079 tp!2152077))))

(assert (= (and b!7442682 ((_ is ElementMatch!19461) (h!78472 (t!386713 (exprs!8901 setElem!56627))))) b!7442805))

(assert (= (and b!7442682 ((_ is Concat!28306) (h!78472 (t!386713 (exprs!8901 setElem!56627))))) b!7442806))

(assert (= (and b!7442682 ((_ is Star!19461) (h!78472 (t!386713 (exprs!8901 setElem!56627))))) b!7442807))

(assert (= (and b!7442682 ((_ is Union!19461) (h!78472 (t!386713 (exprs!8901 setElem!56627))))) b!7442808))

(declare-fun b!7442809 () Bool)

(declare-fun e!4444315 () Bool)

(declare-fun tp!2152081 () Bool)

(declare-fun tp!2152082 () Bool)

(assert (=> b!7442809 (= e!4444315 (and tp!2152081 tp!2152082))))

(assert (=> b!7442682 (= tp!2152006 e!4444315)))

(assert (= (and b!7442682 ((_ is Cons!72024) (t!386713 (t!386713 (exprs!8901 setElem!56627))))) b!7442809))

(declare-fun b!7442811 () Bool)

(declare-fun e!4444316 () Bool)

(declare-fun tp!2152087 () Bool)

(declare-fun tp!2152085 () Bool)

(assert (=> b!7442811 (= e!4444316 (and tp!2152087 tp!2152085))))

(assert (=> b!7442680 (= tp!2152000 e!4444316)))

(declare-fun b!7442812 () Bool)

(declare-fun tp!2152083 () Bool)

(assert (=> b!7442812 (= e!4444316 tp!2152083)))

(declare-fun b!7442810 () Bool)

(assert (=> b!7442810 (= e!4444316 tp_is_empty!49181)))

(declare-fun b!7442813 () Bool)

(declare-fun tp!2152086 () Bool)

(declare-fun tp!2152084 () Bool)

(assert (=> b!7442813 (= e!4444316 (and tp!2152086 tp!2152084))))

(assert (= (and b!7442680 ((_ is ElementMatch!19461) (reg!19790 (h!78472 (exprs!8901 setElem!56627))))) b!7442810))

(assert (= (and b!7442680 ((_ is Concat!28306) (reg!19790 (h!78472 (exprs!8901 setElem!56627))))) b!7442811))

(assert (= (and b!7442680 ((_ is Star!19461) (reg!19790 (h!78472 (exprs!8901 setElem!56627))))) b!7442812))

(assert (= (and b!7442680 ((_ is Union!19461) (reg!19790 (h!78472 (exprs!8901 setElem!56627))))) b!7442813))

(declare-fun b!7442815 () Bool)

(declare-fun e!4444317 () Bool)

(declare-fun tp!2152092 () Bool)

(declare-fun tp!2152090 () Bool)

(assert (=> b!7442815 (= e!4444317 (and tp!2152092 tp!2152090))))

(assert (=> b!7442666 (= tp!2151986 e!4444317)))

(declare-fun b!7442816 () Bool)

(declare-fun tp!2152088 () Bool)

(assert (=> b!7442816 (= e!4444317 tp!2152088)))

(declare-fun b!7442814 () Bool)

(assert (=> b!7442814 (= e!4444317 tp_is_empty!49181)))

(declare-fun b!7442817 () Bool)

(declare-fun tp!2152091 () Bool)

(declare-fun tp!2152089 () Bool)

(assert (=> b!7442817 (= e!4444317 (and tp!2152091 tp!2152089))))

(assert (= (and b!7442666 ((_ is ElementMatch!19461) (h!78472 (exprs!8901 setElem!56633)))) b!7442814))

(assert (= (and b!7442666 ((_ is Concat!28306) (h!78472 (exprs!8901 setElem!56633)))) b!7442815))

(assert (= (and b!7442666 ((_ is Star!19461) (h!78472 (exprs!8901 setElem!56633)))) b!7442816))

(assert (= (and b!7442666 ((_ is Union!19461) (h!78472 (exprs!8901 setElem!56633)))) b!7442817))

(declare-fun b!7442818 () Bool)

(declare-fun e!4444318 () Bool)

(declare-fun tp!2152093 () Bool)

(declare-fun tp!2152094 () Bool)

(assert (=> b!7442818 (= e!4444318 (and tp!2152093 tp!2152094))))

(assert (=> b!7442666 (= tp!2151987 e!4444318)))

(assert (= (and b!7442666 ((_ is Cons!72024) (t!386713 (exprs!8901 setElem!56633)))) b!7442818))

(declare-fun b_lambda!287637 () Bool)

(assert (= b_lambda!287619 (or d!2295858 b_lambda!287637)))

(declare-fun bs!1926472 () Bool)

(declare-fun d!2295926 () Bool)

(assert (= bs!1926472 (and d!2295926 d!2295858)))

(assert (=> bs!1926472 (= (dynLambda!29737 lambda!460529 (h!78472 (exprs!8901 setElem!56633))) (validRegex!9984 (h!78472 (exprs!8901 setElem!56633))))))

(declare-fun m!8054254 () Bool)

(assert (=> bs!1926472 m!8054254))

(assert (=> b!7442712 d!2295926))

(declare-fun b_lambda!287639 () Bool)

(assert (= b_lambda!287623 (or d!2295822 b_lambda!287639)))

(declare-fun bs!1926473 () Bool)

(declare-fun d!2295928 () Bool)

(assert (= bs!1926473 (and d!2295928 d!2295822)))

(assert (=> bs!1926473 (= (dynLambda!29737 lambda!460515 (h!78472 (t!386713 (exprs!8901 lt!2619492)))) (nullable!8483 (h!78472 (t!386713 (exprs!8901 lt!2619492)))))))

(declare-fun m!8054256 () Bool)

(assert (=> bs!1926473 m!8054256))

(assert (=> b!7442716 d!2295928))

(declare-fun b_lambda!287641 () Bool)

(assert (= b_lambda!287627 (or d!2295818 b_lambda!287641)))

(declare-fun bs!1926474 () Bool)

(declare-fun d!2295930 () Bool)

(assert (= bs!1926474 (and d!2295930 d!2295818)))

(assert (=> bs!1926474 (= (dynLambda!29737 lambda!460512 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (validRegex!9984 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))))

(declare-fun m!8054258 () Bool)

(assert (=> bs!1926474 m!8054258))

(assert (=> b!7442720 d!2295930))

(check-sat (not bs!1926474) (not b!7442713) (not bm!684157) (not b!7442817) (not setNonEmpty!56637) (not b!7442799) (not b_lambda!287639) (not bs!1926473) (not b!7442788) (not b!7442803) (not d!2295916) (not b_lambda!287637) (not b!7442786) (not b!7442816) (not b!7442801) (not b_lambda!287641) (not d!2295914) (not b!7442793) (not b!7442795) (not b!7442818) (not b!7442811) (not bs!1926472) (not b!7442794) (not d!2295920) (not b!7442792) (not d!2295878) (not bm!684159) (not d!2295918) (not b!7442789) (not d!2295886) (not b!7442815) (not b!7442802) (not b!7442790) (not b!7442809) (not b!7442813) (not b!7442797) (not b!7442798) (not b!7442784) (not b_lambda!287617) (not b!7442717) (not d!2295890) tp_is_empty!49181 (not b!7442806) (not b!7442721) (not b!7442807) (not b!7442812) (not b!7442804) (not b!7442777) (not b!7442785) (not b!7442808) (not b_lambda!287615))
(check-sat)
(get-model)

(declare-fun d!2295932 () Bool)

(assert (=> d!2295932 (= (isEmpty!41085 (tail!14850 (tail!14850 s!7945))) ((_ is Nil!72025) (tail!14850 (tail!14850 s!7945))))))

(assert (=> d!2295918 d!2295932))

(declare-fun d!2295934 () Bool)

(declare-fun res!2986858 () Bool)

(declare-fun e!4444319 () Bool)

(assert (=> d!2295934 (=> res!2986858 e!4444319)))

(assert (=> d!2295934 (= res!2986858 ((_ is Nil!72024) (t!386713 (t!386713 (exprs!8901 lt!2619492)))))))

(assert (=> d!2295934 (= (forall!18236 (t!386713 (t!386713 (exprs!8901 lt!2619492))) lambda!460515) e!4444319)))

(declare-fun b!7442819 () Bool)

(declare-fun e!4444320 () Bool)

(assert (=> b!7442819 (= e!4444319 e!4444320)))

(declare-fun res!2986859 () Bool)

(assert (=> b!7442819 (=> (not res!2986859) (not e!4444320))))

(assert (=> b!7442819 (= res!2986859 (dynLambda!29737 lambda!460515 (h!78472 (t!386713 (t!386713 (exprs!8901 lt!2619492))))))))

(declare-fun b!7442820 () Bool)

(assert (=> b!7442820 (= e!4444320 (forall!18236 (t!386713 (t!386713 (t!386713 (exprs!8901 lt!2619492)))) lambda!460515))))

(assert (= (and d!2295934 (not res!2986858)) b!7442819))

(assert (= (and b!7442819 res!2986859) b!7442820))

(declare-fun b_lambda!287643 () Bool)

(assert (=> (not b_lambda!287643) (not b!7442819)))

(declare-fun m!8054260 () Bool)

(assert (=> b!7442819 m!8054260))

(declare-fun m!8054262 () Bool)

(assert (=> b!7442820 m!8054262))

(assert (=> b!7442717 d!2295934))

(declare-fun d!2295936 () Bool)

(assert (=> d!2295936 (= (nullable!8483 (h!78472 (t!386713 (exprs!8901 lt!2619492)))) (nullableFct!3424 (h!78472 (t!386713 (exprs!8901 lt!2619492)))))))

(declare-fun bs!1926475 () Bool)

(assert (= bs!1926475 d!2295936))

(declare-fun m!8054264 () Bool)

(assert (=> bs!1926475 m!8054264))

(assert (=> bs!1926473 d!2295936))

(declare-fun bs!1926476 () Bool)

(declare-fun d!2295938 () Bool)

(assert (= bs!1926476 (and d!2295938 d!2295854)))

(declare-fun lambda!460536 () Int)

(assert (=> bs!1926476 (= lambda!460536 lambda!460528)))

(declare-fun bs!1926477 () Bool)

(assert (= bs!1926477 (and d!2295938 d!2295916)))

(assert (=> bs!1926477 (= lambda!460536 lambda!460534)))

(assert (=> d!2295938 (= (nullableZipper!3152 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945)))) (exists!4813 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) lambda!460536))))

(declare-fun bs!1926478 () Bool)

(assert (= bs!1926478 d!2295938))

(assert (=> bs!1926478 m!8054126))

(declare-fun m!8054266 () Bool)

(assert (=> bs!1926478 m!8054266))

(assert (=> b!7442784 d!2295938))

(declare-fun b!7442821 () Bool)

(declare-fun e!4444324 () Bool)

(declare-fun e!4444321 () Bool)

(assert (=> b!7442821 (= e!4444324 e!4444321)))

(declare-fun c!1377302 () Bool)

(assert (=> b!7442821 (= c!1377302 ((_ is Star!19461) (h!78472 (t!386713 (exprs!8901 setElem!56627)))))))

(declare-fun b!7442822 () Bool)

(declare-fun res!2986860 () Bool)

(declare-fun e!4444326 () Bool)

(assert (=> b!7442822 (=> (not res!2986860) (not e!4444326))))

(declare-fun call!684166 () Bool)

(assert (=> b!7442822 (= res!2986860 call!684166)))

(declare-fun e!4444323 () Bool)

(assert (=> b!7442822 (= e!4444323 e!4444326)))

(declare-fun b!7442823 () Bool)

(declare-fun e!4444327 () Bool)

(assert (=> b!7442823 (= e!4444321 e!4444327)))

(declare-fun res!2986863 () Bool)

(assert (=> b!7442823 (= res!2986863 (not (nullable!8483 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))))))

(assert (=> b!7442823 (=> (not res!2986863) (not e!4444327))))

(declare-fun b!7442824 () Bool)

(declare-fun e!4444322 () Bool)

(assert (=> b!7442824 (= e!4444322 call!684166)))

(declare-fun b!7442825 () Bool)

(declare-fun call!684167 () Bool)

(assert (=> b!7442825 (= e!4444326 call!684167)))

(declare-fun b!7442826 () Bool)

(declare-fun call!684165 () Bool)

(assert (=> b!7442826 (= e!4444327 call!684165)))

(declare-fun d!2295940 () Bool)

(declare-fun res!2986862 () Bool)

(assert (=> d!2295940 (=> res!2986862 e!4444324)))

(assert (=> d!2295940 (= res!2986862 ((_ is ElementMatch!19461) (h!78472 (t!386713 (exprs!8901 setElem!56627)))))))

(assert (=> d!2295940 (= (validRegex!9984 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) e!4444324)))

(declare-fun b!7442827 () Bool)

(declare-fun e!4444325 () Bool)

(assert (=> b!7442827 (= e!4444325 e!4444322)))

(declare-fun res!2986864 () Bool)

(assert (=> b!7442827 (=> (not res!2986864) (not e!4444322))))

(assert (=> b!7442827 (= res!2986864 call!684167)))

(declare-fun b!7442828 () Bool)

(assert (=> b!7442828 (= e!4444321 e!4444323)))

(declare-fun c!1377303 () Bool)

(assert (=> b!7442828 (= c!1377303 ((_ is Union!19461) (h!78472 (t!386713 (exprs!8901 setElem!56627)))))))

(declare-fun bm!684160 () Bool)

(assert (=> bm!684160 (= call!684165 (validRegex!9984 (ite c!1377302 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (ite c!1377303 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))))))

(declare-fun bm!684161 () Bool)

(assert (=> bm!684161 (= call!684166 call!684165)))

(declare-fun b!7442829 () Bool)

(declare-fun res!2986861 () Bool)

(assert (=> b!7442829 (=> res!2986861 e!4444325)))

(assert (=> b!7442829 (= res!2986861 (not ((_ is Concat!28306) (h!78472 (t!386713 (exprs!8901 setElem!56627))))))))

(assert (=> b!7442829 (= e!4444323 e!4444325)))

(declare-fun bm!684162 () Bool)

(assert (=> bm!684162 (= call!684167 (validRegex!9984 (ite c!1377303 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))))))

(assert (= (and d!2295940 (not res!2986862)) b!7442821))

(assert (= (and b!7442821 c!1377302) b!7442823))

(assert (= (and b!7442821 (not c!1377302)) b!7442828))

(assert (= (and b!7442823 res!2986863) b!7442826))

(assert (= (and b!7442828 c!1377303) b!7442822))

(assert (= (and b!7442828 (not c!1377303)) b!7442829))

(assert (= (and b!7442822 res!2986860) b!7442825))

(assert (= (and b!7442829 (not res!2986861)) b!7442827))

(assert (= (and b!7442827 res!2986864) b!7442824))

(assert (= (or b!7442822 b!7442824) bm!684161))

(assert (= (or b!7442825 b!7442827) bm!684162))

(assert (= (or b!7442826 bm!684161) bm!684160))

(declare-fun m!8054268 () Bool)

(assert (=> b!7442823 m!8054268))

(declare-fun m!8054270 () Bool)

(assert (=> bm!684160 m!8054270))

(declare-fun m!8054272 () Bool)

(assert (=> bm!684162 m!8054272))

(assert (=> bs!1926474 d!2295940))

(declare-fun bs!1926479 () Bool)

(declare-fun d!2295942 () Bool)

(assert (= bs!1926479 (and d!2295942 d!2295818)))

(declare-fun lambda!460537 () Int)

(assert (=> bs!1926479 (= lambda!460537 lambda!460512)))

(declare-fun bs!1926480 () Bool)

(assert (= bs!1926480 (and d!2295942 d!2295822)))

(assert (=> bs!1926480 (not (= lambda!460537 lambda!460515))))

(declare-fun bs!1926481 () Bool)

(assert (= bs!1926481 (and d!2295942 d!2295858)))

(assert (=> bs!1926481 (= lambda!460537 lambda!460529)))

(declare-fun bs!1926482 () Bool)

(assert (= bs!1926482 (and d!2295942 d!2295890)))

(assert (=> bs!1926482 (= lambda!460537 lambda!460533)))

(assert (=> d!2295942 (= (inv!92013 setElem!56637) (forall!18236 (exprs!8901 setElem!56637) lambda!460537))))

(declare-fun bs!1926483 () Bool)

(assert (= bs!1926483 d!2295942))

(declare-fun m!8054274 () Bool)

(assert (=> bs!1926483 m!8054274))

(assert (=> setNonEmpty!56637 d!2295942))

(declare-fun b!7442830 () Bool)

(declare-fun e!4444331 () Bool)

(declare-fun e!4444328 () Bool)

(assert (=> b!7442830 (= e!4444331 e!4444328)))

(declare-fun c!1377304 () Bool)

(assert (=> b!7442830 (= c!1377304 ((_ is Star!19461) (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))))

(declare-fun b!7442831 () Bool)

(declare-fun res!2986865 () Bool)

(declare-fun e!4444333 () Bool)

(assert (=> b!7442831 (=> (not res!2986865) (not e!4444333))))

(declare-fun call!684169 () Bool)

(assert (=> b!7442831 (= res!2986865 call!684169)))

(declare-fun e!4444330 () Bool)

(assert (=> b!7442831 (= e!4444330 e!4444333)))

(declare-fun b!7442832 () Bool)

(declare-fun e!4444334 () Bool)

(assert (=> b!7442832 (= e!4444328 e!4444334)))

(declare-fun res!2986868 () Bool)

(assert (=> b!7442832 (= res!2986868 (not (nullable!8483 (reg!19790 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))

(assert (=> b!7442832 (=> (not res!2986868) (not e!4444334))))

(declare-fun b!7442833 () Bool)

(declare-fun e!4444329 () Bool)

(assert (=> b!7442833 (= e!4444329 call!684169)))

(declare-fun b!7442834 () Bool)

(declare-fun call!684170 () Bool)

(assert (=> b!7442834 (= e!4444333 call!684170)))

(declare-fun b!7442835 () Bool)

(declare-fun call!684168 () Bool)

(assert (=> b!7442835 (= e!4444334 call!684168)))

(declare-fun d!2295944 () Bool)

(declare-fun res!2986867 () Bool)

(assert (=> d!2295944 (=> res!2986867 e!4444331)))

(assert (=> d!2295944 (= res!2986867 ((_ is ElementMatch!19461) (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))))

(assert (=> d!2295944 (= (validRegex!9984 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) e!4444331)))

(declare-fun b!7442836 () Bool)

(declare-fun e!4444332 () Bool)

(assert (=> b!7442836 (= e!4444332 e!4444329)))

(declare-fun res!2986869 () Bool)

(assert (=> b!7442836 (=> (not res!2986869) (not e!4444329))))

(assert (=> b!7442836 (= res!2986869 call!684170)))

(declare-fun b!7442837 () Bool)

(assert (=> b!7442837 (= e!4444328 e!4444330)))

(declare-fun c!1377305 () Bool)

(assert (=> b!7442837 (= c!1377305 ((_ is Union!19461) (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))))

(declare-fun bm!684163 () Bool)

(assert (=> bm!684163 (= call!684168 (validRegex!9984 (ite c!1377304 (reg!19790 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (ite c!1377305 (regOne!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regTwo!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))))))))

(declare-fun bm!684164 () Bool)

(assert (=> bm!684164 (= call!684169 call!684168)))

(declare-fun b!7442838 () Bool)

(declare-fun res!2986866 () Bool)

(assert (=> b!7442838 (=> res!2986866 e!4444332)))

(assert (=> b!7442838 (= res!2986866 (not ((_ is Concat!28306) (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))))))

(assert (=> b!7442838 (= e!4444330 e!4444332)))

(declare-fun bm!684165 () Bool)

(assert (=> bm!684165 (= call!684170 (validRegex!9984 (ite c!1377305 (regTwo!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regOne!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))

(assert (= (and d!2295944 (not res!2986867)) b!7442830))

(assert (= (and b!7442830 c!1377304) b!7442832))

(assert (= (and b!7442830 (not c!1377304)) b!7442837))

(assert (= (and b!7442832 res!2986868) b!7442835))

(assert (= (and b!7442837 c!1377305) b!7442831))

(assert (= (and b!7442837 (not c!1377305)) b!7442838))

(assert (= (and b!7442831 res!2986865) b!7442834))

(assert (= (and b!7442838 (not res!2986866)) b!7442836))

(assert (= (and b!7442836 res!2986869) b!7442833))

(assert (= (or b!7442831 b!7442833) bm!684164))

(assert (= (or b!7442834 b!7442836) bm!684165))

(assert (= (or b!7442835 bm!684164) bm!684163))

(declare-fun m!8054276 () Bool)

(assert (=> b!7442832 m!8054276))

(declare-fun m!8054278 () Bool)

(assert (=> bm!684163 m!8054278))

(declare-fun m!8054280 () Bool)

(assert (=> bm!684165 m!8054280))

(assert (=> bm!684157 d!2295944))

(declare-fun d!2295946 () Bool)

(declare-fun c!1377306 () Bool)

(assert (=> d!2295946 (= c!1377306 (isEmpty!41085 (tail!14850 (tail!14850 (tail!14850 s!7945)))))))

(declare-fun e!4444335 () Bool)

(assert (=> d!2295946 (= (matchZipper!3825 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) (head!15271 (tail!14850 (tail!14850 s!7945)))) (tail!14850 (tail!14850 (tail!14850 s!7945)))) e!4444335)))

(declare-fun b!7442839 () Bool)

(assert (=> b!7442839 (= e!4444335 (nullableZipper!3152 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) (head!15271 (tail!14850 (tail!14850 s!7945))))))))

(declare-fun b!7442840 () Bool)

(assert (=> b!7442840 (= e!4444335 (matchZipper!3825 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) (head!15271 (tail!14850 (tail!14850 s!7945)))) (head!15271 (tail!14850 (tail!14850 (tail!14850 s!7945))))) (tail!14850 (tail!14850 (tail!14850 (tail!14850 s!7945))))))))

(assert (= (and d!2295946 c!1377306) b!7442839))

(assert (= (and d!2295946 (not c!1377306)) b!7442840))

(assert (=> d!2295946 m!8054246))

(declare-fun m!8054282 () Bool)

(assert (=> d!2295946 m!8054282))

(assert (=> b!7442839 m!8054244))

(declare-fun m!8054284 () Bool)

(assert (=> b!7442839 m!8054284))

(assert (=> b!7442840 m!8054246))

(declare-fun m!8054286 () Bool)

(assert (=> b!7442840 m!8054286))

(assert (=> b!7442840 m!8054244))

(assert (=> b!7442840 m!8054286))

(declare-fun m!8054288 () Bool)

(assert (=> b!7442840 m!8054288))

(assert (=> b!7442840 m!8054246))

(declare-fun m!8054290 () Bool)

(assert (=> b!7442840 m!8054290))

(assert (=> b!7442840 m!8054288))

(assert (=> b!7442840 m!8054290))

(declare-fun m!8054292 () Bool)

(assert (=> b!7442840 m!8054292))

(assert (=> b!7442785 d!2295946))

(declare-fun bs!1926484 () Bool)

(declare-fun d!2295948 () Bool)

(assert (= bs!1926484 (and d!2295948 d!2295846)))

(declare-fun lambda!460538 () Int)

(assert (=> bs!1926484 (= (= (head!15271 (tail!14850 (tail!14850 s!7945))) (head!15271 s!7945)) (= lambda!460538 lambda!460525))))

(declare-fun bs!1926485 () Bool)

(assert (= bs!1926485 (and d!2295948 d!2295920)))

(assert (=> bs!1926485 (= (= (head!15271 (tail!14850 (tail!14850 s!7945))) (head!15271 (tail!14850 s!7945))) (= lambda!460538 lambda!460535))))

(assert (=> d!2295948 true))

(assert (=> d!2295948 (= (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) (head!15271 (tail!14850 (tail!14850 s!7945)))) (flatMap!3239 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) lambda!460538))))

(declare-fun bs!1926486 () Bool)

(assert (= bs!1926486 d!2295948))

(assert (=> bs!1926486 m!8054126))

(declare-fun m!8054294 () Bool)

(assert (=> bs!1926486 m!8054294))

(assert (=> b!7442785 d!2295948))

(declare-fun d!2295950 () Bool)

(assert (=> d!2295950 (= (head!15271 (tail!14850 (tail!14850 s!7945))) (h!78473 (tail!14850 (tail!14850 s!7945))))))

(assert (=> b!7442785 d!2295950))

(declare-fun d!2295952 () Bool)

(assert (=> d!2295952 (= (tail!14850 (tail!14850 (tail!14850 s!7945))) (t!386714 (tail!14850 (tail!14850 s!7945))))))

(assert (=> b!7442785 d!2295952))

(declare-fun d!2295954 () Bool)

(declare-fun res!2986870 () Bool)

(declare-fun e!4444336 () Bool)

(assert (=> d!2295954 (=> res!2986870 e!4444336)))

(assert (=> d!2295954 (= res!2986870 ((_ is Nil!72024) (t!386713 (exprs!8901 setElem!56633))))))

(assert (=> d!2295954 (= (forall!18236 (t!386713 (exprs!8901 setElem!56633)) lambda!460529) e!4444336)))

(declare-fun b!7442841 () Bool)

(declare-fun e!4444337 () Bool)

(assert (=> b!7442841 (= e!4444336 e!4444337)))

(declare-fun res!2986871 () Bool)

(assert (=> b!7442841 (=> (not res!2986871) (not e!4444337))))

(assert (=> b!7442841 (= res!2986871 (dynLambda!29737 lambda!460529 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))))

(declare-fun b!7442842 () Bool)

(assert (=> b!7442842 (= e!4444337 (forall!18236 (t!386713 (t!386713 (exprs!8901 setElem!56633))) lambda!460529))))

(assert (= (and d!2295954 (not res!2986870)) b!7442841))

(assert (= (and b!7442841 res!2986871) b!7442842))

(declare-fun b_lambda!287645 () Bool)

(assert (=> (not b_lambda!287645) (not b!7442841)))

(declare-fun m!8054296 () Bool)

(assert (=> b!7442841 m!8054296))

(declare-fun m!8054298 () Bool)

(assert (=> b!7442842 m!8054298))

(assert (=> b!7442713 d!2295954))

(declare-fun d!2295956 () Bool)

(declare-fun res!2986872 () Bool)

(declare-fun e!4444338 () Bool)

(assert (=> d!2295956 (=> res!2986872 e!4444338)))

(assert (=> d!2295956 (= res!2986872 ((_ is Nil!72024) (exprs!8901 setElem!56635)))))

(assert (=> d!2295956 (= (forall!18236 (exprs!8901 setElem!56635) lambda!460533) e!4444338)))

(declare-fun b!7442843 () Bool)

(declare-fun e!4444339 () Bool)

(assert (=> b!7442843 (= e!4444338 e!4444339)))

(declare-fun res!2986873 () Bool)

(assert (=> b!7442843 (=> (not res!2986873) (not e!4444339))))

(assert (=> b!7442843 (= res!2986873 (dynLambda!29737 lambda!460533 (h!78472 (exprs!8901 setElem!56635))))))

(declare-fun b!7442844 () Bool)

(assert (=> b!7442844 (= e!4444339 (forall!18236 (t!386713 (exprs!8901 setElem!56635)) lambda!460533))))

(assert (= (and d!2295956 (not res!2986872)) b!7442843))

(assert (= (and b!7442843 res!2986873) b!7442844))

(declare-fun b_lambda!287647 () Bool)

(assert (=> (not b_lambda!287647) (not b!7442843)))

(declare-fun m!8054300 () Bool)

(assert (=> b!7442843 m!8054300))

(declare-fun m!8054302 () Bool)

(assert (=> b!7442844 m!8054302))

(assert (=> d!2295890 d!2295956))

(declare-fun lt!2619499 () Bool)

(declare-fun d!2295958 () Bool)

(assert (=> d!2295958 (= lt!2619499 (exists!4815 (toList!11794 (derivationStepZipper!3717 z!3488 (head!15271 s!7945))) lambda!460534))))

(assert (=> d!2295958 (= lt!2619499 (choose!57534 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) lambda!460534))))

(assert (=> d!2295958 (= (exists!4813 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) lambda!460534) lt!2619499)))

(declare-fun bs!1926487 () Bool)

(assert (= bs!1926487 d!2295958))

(assert (=> bs!1926487 m!8054070))

(declare-fun m!8054304 () Bool)

(assert (=> bs!1926487 m!8054304))

(assert (=> bs!1926487 m!8054304))

(declare-fun m!8054306 () Bool)

(assert (=> bs!1926487 m!8054306))

(assert (=> bs!1926487 m!8054070))

(declare-fun m!8054308 () Bool)

(assert (=> bs!1926487 m!8054308))

(assert (=> d!2295916 d!2295958))

(declare-fun b!7442845 () Bool)

(declare-fun e!4444343 () Bool)

(declare-fun e!4444340 () Bool)

(assert (=> b!7442845 (= e!4444343 e!4444340)))

(declare-fun c!1377307 () Bool)

(assert (=> b!7442845 (= c!1377307 ((_ is Star!19461) (h!78472 (exprs!8901 setElem!56633))))))

(declare-fun b!7442846 () Bool)

(declare-fun res!2986874 () Bool)

(declare-fun e!4444345 () Bool)

(assert (=> b!7442846 (=> (not res!2986874) (not e!4444345))))

(declare-fun call!684172 () Bool)

(assert (=> b!7442846 (= res!2986874 call!684172)))

(declare-fun e!4444342 () Bool)

(assert (=> b!7442846 (= e!4444342 e!4444345)))

(declare-fun b!7442847 () Bool)

(declare-fun e!4444346 () Bool)

(assert (=> b!7442847 (= e!4444340 e!4444346)))

(declare-fun res!2986877 () Bool)

(assert (=> b!7442847 (= res!2986877 (not (nullable!8483 (reg!19790 (h!78472 (exprs!8901 setElem!56633))))))))

(assert (=> b!7442847 (=> (not res!2986877) (not e!4444346))))

(declare-fun b!7442848 () Bool)

(declare-fun e!4444341 () Bool)

(assert (=> b!7442848 (= e!4444341 call!684172)))

(declare-fun b!7442849 () Bool)

(declare-fun call!684173 () Bool)

(assert (=> b!7442849 (= e!4444345 call!684173)))

(declare-fun b!7442850 () Bool)

(declare-fun call!684171 () Bool)

(assert (=> b!7442850 (= e!4444346 call!684171)))

(declare-fun d!2295960 () Bool)

(declare-fun res!2986876 () Bool)

(assert (=> d!2295960 (=> res!2986876 e!4444343)))

(assert (=> d!2295960 (= res!2986876 ((_ is ElementMatch!19461) (h!78472 (exprs!8901 setElem!56633))))))

(assert (=> d!2295960 (= (validRegex!9984 (h!78472 (exprs!8901 setElem!56633))) e!4444343)))

(declare-fun b!7442851 () Bool)

(declare-fun e!4444344 () Bool)

(assert (=> b!7442851 (= e!4444344 e!4444341)))

(declare-fun res!2986878 () Bool)

(assert (=> b!7442851 (=> (not res!2986878) (not e!4444341))))

(assert (=> b!7442851 (= res!2986878 call!684173)))

(declare-fun b!7442852 () Bool)

(assert (=> b!7442852 (= e!4444340 e!4444342)))

(declare-fun c!1377308 () Bool)

(assert (=> b!7442852 (= c!1377308 ((_ is Union!19461) (h!78472 (exprs!8901 setElem!56633))))))

(declare-fun bm!684166 () Bool)

(assert (=> bm!684166 (= call!684171 (validRegex!9984 (ite c!1377307 (reg!19790 (h!78472 (exprs!8901 setElem!56633))) (ite c!1377308 (regOne!39435 (h!78472 (exprs!8901 setElem!56633))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))))))

(declare-fun bm!684167 () Bool)

(assert (=> bm!684167 (= call!684172 call!684171)))

(declare-fun b!7442853 () Bool)

(declare-fun res!2986875 () Bool)

(assert (=> b!7442853 (=> res!2986875 e!4444344)))

(assert (=> b!7442853 (= res!2986875 (not ((_ is Concat!28306) (h!78472 (exprs!8901 setElem!56633)))))))

(assert (=> b!7442853 (= e!4444342 e!4444344)))

(declare-fun bm!684168 () Bool)

(assert (=> bm!684168 (= call!684173 (validRegex!9984 (ite c!1377308 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))) (regOne!39434 (h!78472 (exprs!8901 setElem!56633))))))))

(assert (= (and d!2295960 (not res!2986876)) b!7442845))

(assert (= (and b!7442845 c!1377307) b!7442847))

(assert (= (and b!7442845 (not c!1377307)) b!7442852))

(assert (= (and b!7442847 res!2986877) b!7442850))

(assert (= (and b!7442852 c!1377308) b!7442846))

(assert (= (and b!7442852 (not c!1377308)) b!7442853))

(assert (= (and b!7442846 res!2986874) b!7442849))

(assert (= (and b!7442853 (not res!2986875)) b!7442851))

(assert (= (and b!7442851 res!2986878) b!7442848))

(assert (= (or b!7442846 b!7442848) bm!684167))

(assert (= (or b!7442849 b!7442851) bm!684168))

(assert (= (or b!7442850 bm!684167) bm!684166))

(declare-fun m!8054310 () Bool)

(assert (=> b!7442847 m!8054310))

(declare-fun m!8054312 () Bool)

(assert (=> bm!684166 m!8054312))

(declare-fun m!8054314 () Bool)

(assert (=> bm!684168 m!8054314))

(assert (=> bs!1926472 d!2295960))

(declare-fun bs!1926489 () Bool)

(declare-fun d!2295962 () Bool)

(assert (= bs!1926489 (and d!2295962 d!2295854)))

(declare-fun lambda!460541 () Int)

(assert (=> bs!1926489 (not (= lambda!460541 lambda!460528))))

(declare-fun bs!1926490 () Bool)

(assert (= bs!1926490 (and d!2295962 d!2295916)))

(assert (=> bs!1926490 (not (= lambda!460541 lambda!460534))))

(declare-fun bs!1926491 () Bool)

(assert (= bs!1926491 (and d!2295962 d!2295938)))

(assert (=> bs!1926491 (not (= lambda!460541 lambda!460536))))

(assert (=> d!2295962 true))

(declare-fun order!29597 () Int)

(declare-fun dynLambda!29738 (Int Int) Int)

(assert (=> d!2295962 (< (dynLambda!29738 order!29597 lambda!460528) (dynLambda!29738 order!29597 lambda!460541))))

(declare-fun forall!18237 (List!72151 Int) Bool)

(assert (=> d!2295962 (= (exists!4815 (toList!11794 z!3488) lambda!460528) (not (forall!18237 (toList!11794 z!3488) lambda!460541)))))

(declare-fun bs!1926492 () Bool)

(assert (= bs!1926492 d!2295962))

(assert (=> bs!1926492 m!8054180))

(declare-fun m!8054334 () Bool)

(assert (=> bs!1926492 m!8054334))

(assert (=> d!2295878 d!2295962))

(declare-fun d!2295972 () Bool)

(declare-fun e!4444374 () Bool)

(assert (=> d!2295972 e!4444374))

(declare-fun res!2986900 () Bool)

(assert (=> d!2295972 (=> (not res!2986900) (not e!4444374))))

(declare-fun lt!2619503 () List!72151)

(declare-fun noDuplicate!3126 (List!72151) Bool)

(assert (=> d!2295972 (= res!2986900 (noDuplicate!3126 lt!2619503))))

(declare-fun choose!57537 ((InoxSet Context!16802)) List!72151)

(assert (=> d!2295972 (= lt!2619503 (choose!57537 z!3488))))

(assert (=> d!2295972 (= (toList!11794 z!3488) lt!2619503)))

(declare-fun b!7442889 () Bool)

(declare-fun content!15238 (List!72151) (InoxSet Context!16802))

(assert (=> b!7442889 (= e!4444374 (= (content!15238 lt!2619503) z!3488))))

(assert (= (and d!2295972 res!2986900) b!7442889))

(declare-fun m!8054354 () Bool)

(assert (=> d!2295972 m!8054354))

(declare-fun m!8054356 () Bool)

(assert (=> d!2295972 m!8054356))

(declare-fun m!8054358 () Bool)

(assert (=> b!7442889 m!8054358))

(assert (=> d!2295878 d!2295972))

(declare-fun d!2295986 () Bool)

(declare-fun res!2986903 () Bool)

(assert (=> d!2295986 (= res!2986903 (exists!4815 (toList!11794 z!3488) lambda!460528))))

(assert (=> d!2295986 true))

(assert (=> d!2295986 (= (choose!57534 z!3488 lambda!460528) res!2986903)))

(declare-fun bs!1926501 () Bool)

(assert (= bs!1926501 d!2295986))

(assert (=> bs!1926501 m!8054180))

(assert (=> bs!1926501 m!8054180))

(assert (=> bs!1926501 m!8054182))

(assert (=> d!2295878 d!2295986))

(declare-fun b!7442892 () Bool)

(declare-fun e!4444379 () Bool)

(declare-fun e!4444376 () Bool)

(assert (=> b!7442892 (= e!4444379 e!4444376)))

(declare-fun c!1377316 () Bool)

(assert (=> b!7442892 (= c!1377316 ((_ is Star!19461) (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))))

(declare-fun b!7442893 () Bool)

(declare-fun res!2986904 () Bool)

(declare-fun e!4444381 () Bool)

(assert (=> b!7442893 (=> (not res!2986904) (not e!4444381))))

(declare-fun call!684184 () Bool)

(assert (=> b!7442893 (= res!2986904 call!684184)))

(declare-fun e!4444378 () Bool)

(assert (=> b!7442893 (= e!4444378 e!4444381)))

(declare-fun b!7442894 () Bool)

(declare-fun e!4444382 () Bool)

(assert (=> b!7442894 (= e!4444376 e!4444382)))

(declare-fun res!2986907 () Bool)

(assert (=> b!7442894 (= res!2986907 (not (nullable!8483 (reg!19790 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))))))

(assert (=> b!7442894 (=> (not res!2986907) (not e!4444382))))

(declare-fun b!7442895 () Bool)

(declare-fun e!4444377 () Bool)

(assert (=> b!7442895 (= e!4444377 call!684184)))

(declare-fun b!7442896 () Bool)

(declare-fun call!684185 () Bool)

(assert (=> b!7442896 (= e!4444381 call!684185)))

(declare-fun b!7442897 () Bool)

(declare-fun call!684183 () Bool)

(assert (=> b!7442897 (= e!4444382 call!684183)))

(declare-fun d!2295990 () Bool)

(declare-fun res!2986906 () Bool)

(assert (=> d!2295990 (=> res!2986906 e!4444379)))

(assert (=> d!2295990 (= res!2986906 ((_ is ElementMatch!19461) (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))))

(assert (=> d!2295990 (= (validRegex!9984 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) e!4444379)))

(declare-fun b!7442898 () Bool)

(declare-fun e!4444380 () Bool)

(assert (=> b!7442898 (= e!4444380 e!4444377)))

(declare-fun res!2986908 () Bool)

(assert (=> b!7442898 (=> (not res!2986908) (not e!4444377))))

(assert (=> b!7442898 (= res!2986908 call!684185)))

(declare-fun b!7442899 () Bool)

(assert (=> b!7442899 (= e!4444376 e!4444378)))

(declare-fun c!1377317 () Bool)

(assert (=> b!7442899 (= c!1377317 ((_ is Union!19461) (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))))

(declare-fun bm!684178 () Bool)

(assert (=> bm!684178 (= call!684183 (validRegex!9984 (ite c!1377316 (reg!19790 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (ite c!1377317 (regOne!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regTwo!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))

(declare-fun bm!684179 () Bool)

(assert (=> bm!684179 (= call!684184 call!684183)))

(declare-fun b!7442900 () Bool)

(declare-fun res!2986905 () Bool)

(assert (=> b!7442900 (=> res!2986905 e!4444380)))

(assert (=> b!7442900 (= res!2986905 (not ((_ is Concat!28306) (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))))))

(assert (=> b!7442900 (= e!4444378 e!4444380)))

(declare-fun bm!684180 () Bool)

(assert (=> bm!684180 (= call!684185 (validRegex!9984 (ite c!1377317 (regTwo!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regOne!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))))))

(assert (= (and d!2295990 (not res!2986906)) b!7442892))

(assert (= (and b!7442892 c!1377316) b!7442894))

(assert (= (and b!7442892 (not c!1377316)) b!7442899))

(assert (= (and b!7442894 res!2986907) b!7442897))

(assert (= (and b!7442899 c!1377317) b!7442893))

(assert (= (and b!7442899 (not c!1377317)) b!7442900))

(assert (= (and b!7442893 res!2986904) b!7442896))

(assert (= (and b!7442900 (not res!2986905)) b!7442898))

(assert (= (and b!7442898 res!2986908) b!7442895))

(assert (= (or b!7442893 b!7442895) bm!684179))

(assert (= (or b!7442896 b!7442898) bm!684180))

(assert (= (or b!7442897 bm!684179) bm!684178))

(declare-fun m!8054374 () Bool)

(assert (=> b!7442894 m!8054374))

(declare-fun m!8054376 () Bool)

(assert (=> bm!684178 m!8054376))

(declare-fun m!8054380 () Bool)

(assert (=> bm!684180 m!8054380))

(assert (=> bm!684159 d!2295990))

(declare-fun d!2295998 () Bool)

(assert (=> d!2295998 true))

(declare-fun setRes!56640 () Bool)

(assert (=> d!2295998 setRes!56640))

(declare-fun condSetEmpty!56640 () Bool)

(declare-fun res!2986918 () (InoxSet Context!16802))

(assert (=> d!2295998 (= condSetEmpty!56640 (= res!2986918 ((as const (Array Context!16802 Bool)) false)))))

(assert (=> d!2295998 (= (choose!57535 z!3488 lambda!460525) res!2986918)))

(declare-fun setIsEmpty!56640 () Bool)

(assert (=> setIsEmpty!56640 setRes!56640))

(declare-fun e!4444394 () Bool)

(declare-fun setElem!56640 () Context!16802)

(declare-fun tp!2152099 () Bool)

(declare-fun setNonEmpty!56640 () Bool)

(assert (=> setNonEmpty!56640 (= setRes!56640 (and tp!2152099 (inv!92013 setElem!56640) e!4444394))))

(declare-fun setRest!56640 () (InoxSet Context!16802))

(assert (=> setNonEmpty!56640 (= res!2986918 ((_ map or) (store ((as const (Array Context!16802 Bool)) false) setElem!56640 true) setRest!56640))))

(declare-fun b!7442914 () Bool)

(declare-fun tp!2152100 () Bool)

(assert (=> b!7442914 (= e!4444394 tp!2152100)))

(assert (= (and d!2295998 condSetEmpty!56640) setIsEmpty!56640))

(assert (= (and d!2295998 (not condSetEmpty!56640)) setNonEmpty!56640))

(assert (= setNonEmpty!56640 b!7442914))

(declare-fun m!8054392 () Bool)

(assert (=> setNonEmpty!56640 m!8054392))

(assert (=> d!2295886 d!2295998))

(declare-fun d!2296006 () Bool)

(declare-fun res!2986919 () Bool)

(declare-fun e!4444395 () Bool)

(assert (=> d!2296006 (=> res!2986919 e!4444395)))

(assert (=> d!2296006 (= res!2986919 ((_ is Nil!72024) (t!386713 (t!386713 (exprs!8901 setElem!56627)))))))

(assert (=> d!2296006 (= (forall!18236 (t!386713 (t!386713 (exprs!8901 setElem!56627))) lambda!460512) e!4444395)))

(declare-fun b!7442915 () Bool)

(declare-fun e!4444396 () Bool)

(assert (=> b!7442915 (= e!4444395 e!4444396)))

(declare-fun res!2986920 () Bool)

(assert (=> b!7442915 (=> (not res!2986920) (not e!4444396))))

(assert (=> b!7442915 (= res!2986920 (dynLambda!29737 lambda!460512 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))))

(declare-fun b!7442916 () Bool)

(assert (=> b!7442916 (= e!4444396 (forall!18236 (t!386713 (t!386713 (t!386713 (exprs!8901 setElem!56627)))) lambda!460512))))

(assert (= (and d!2296006 (not res!2986919)) b!7442915))

(assert (= (and b!7442915 res!2986920) b!7442916))

(declare-fun b_lambda!287655 () Bool)

(assert (=> (not b_lambda!287655) (not b!7442915)))

(declare-fun m!8054394 () Bool)

(assert (=> b!7442915 m!8054394))

(declare-fun m!8054396 () Bool)

(assert (=> b!7442916 m!8054396))

(assert (=> b!7442721 d!2296006))

(declare-fun b!7442954 () Bool)

(declare-fun e!4444434 () Bool)

(declare-fun e!4444433 () Bool)

(assert (=> b!7442954 (= e!4444434 e!4444433)))

(declare-fun res!2986951 () Bool)

(declare-fun call!684199 () Bool)

(assert (=> b!7442954 (= res!2986951 call!684199)))

(assert (=> b!7442954 (=> res!2986951 e!4444433)))

(declare-fun b!7442955 () Bool)

(declare-fun e!4444432 () Bool)

(declare-fun call!684200 () Bool)

(assert (=> b!7442955 (= e!4444432 call!684200)))

(declare-fun b!7442956 () Bool)

(assert (=> b!7442956 (= e!4444433 call!684200)))

(declare-fun b!7442957 () Bool)

(declare-fun e!4444431 () Bool)

(declare-fun e!4444430 () Bool)

(assert (=> b!7442957 (= e!4444431 e!4444430)))

(declare-fun res!2986949 () Bool)

(assert (=> b!7442957 (=> (not res!2986949) (not e!4444430))))

(assert (=> b!7442957 (= res!2986949 (and (not ((_ is EmptyLang!19461) (h!78472 (exprs!8901 lt!2619492)))) (not ((_ is ElementMatch!19461) (h!78472 (exprs!8901 lt!2619492))))))))

(declare-fun b!7442958 () Bool)

(assert (=> b!7442958 (= e!4444434 e!4444432)))

(declare-fun res!2986952 () Bool)

(assert (=> b!7442958 (= res!2986952 call!684199)))

(assert (=> b!7442958 (=> (not res!2986952) (not e!4444432))))

(declare-fun bm!684194 () Bool)

(declare-fun c!1377325 () Bool)

(assert (=> bm!684194 (= call!684200 (nullable!8483 (ite c!1377325 (regTwo!39435 (h!78472 (exprs!8901 lt!2619492))) (regTwo!39434 (h!78472 (exprs!8901 lt!2619492))))))))

(declare-fun b!7442959 () Bool)

(declare-fun e!4444429 () Bool)

(assert (=> b!7442959 (= e!4444430 e!4444429)))

(declare-fun res!2986948 () Bool)

(assert (=> b!7442959 (=> res!2986948 e!4444429)))

(assert (=> b!7442959 (= res!2986948 ((_ is Star!19461) (h!78472 (exprs!8901 lt!2619492))))))

(declare-fun b!7442960 () Bool)

(assert (=> b!7442960 (= e!4444429 e!4444434)))

(assert (=> b!7442960 (= c!1377325 ((_ is Union!19461) (h!78472 (exprs!8901 lt!2619492))))))

(declare-fun bm!684195 () Bool)

(assert (=> bm!684195 (= call!684199 (nullable!8483 (ite c!1377325 (regOne!39435 (h!78472 (exprs!8901 lt!2619492))) (regOne!39434 (h!78472 (exprs!8901 lt!2619492))))))))

(declare-fun d!2296008 () Bool)

(declare-fun res!2986950 () Bool)

(assert (=> d!2296008 (=> res!2986950 e!4444431)))

(assert (=> d!2296008 (= res!2986950 ((_ is EmptyExpr!19461) (h!78472 (exprs!8901 lt!2619492))))))

(assert (=> d!2296008 (= (nullableFct!3424 (h!78472 (exprs!8901 lt!2619492))) e!4444431)))

(assert (= (and d!2296008 (not res!2986950)) b!7442957))

(assert (= (and b!7442957 res!2986949) b!7442959))

(assert (= (and b!7442959 (not res!2986948)) b!7442960))

(assert (= (and b!7442960 c!1377325) b!7442954))

(assert (= (and b!7442960 (not c!1377325)) b!7442958))

(assert (= (and b!7442954 (not res!2986951)) b!7442956))

(assert (= (and b!7442958 res!2986952) b!7442955))

(assert (= (or b!7442954 b!7442958) bm!684195))

(assert (= (or b!7442956 b!7442955) bm!684194))

(declare-fun m!8054404 () Bool)

(assert (=> bm!684194 m!8054404))

(declare-fun m!8054406 () Bool)

(assert (=> bm!684195 m!8054406))

(assert (=> d!2295914 d!2296008))

(declare-fun d!2296014 () Bool)

(assert (=> d!2296014 (= (flatMap!3239 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) lambda!460535) (choose!57535 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) lambda!460535))))

(declare-fun bs!1926507 () Bool)

(assert (= bs!1926507 d!2296014))

(assert (=> bs!1926507 m!8054070))

(declare-fun m!8054408 () Bool)

(assert (=> bs!1926507 m!8054408))

(assert (=> d!2295920 d!2296014))

(declare-fun d!2296016 () Bool)

(assert (=> d!2296016 (= (nullable!8483 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))) (nullableFct!3424 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))))

(declare-fun bs!1926508 () Bool)

(assert (= bs!1926508 d!2296016))

(declare-fun m!8054410 () Bool)

(assert (=> bs!1926508 m!8054410))

(assert (=> b!7442777 d!2296016))

(declare-fun b!7442963 () Bool)

(declare-fun e!4444436 () Bool)

(declare-fun tp!2152111 () Bool)

(declare-fun tp!2152109 () Bool)

(assert (=> b!7442963 (= e!4444436 (and tp!2152111 tp!2152109))))

(assert (=> b!7442808 (= tp!2152079 e!4444436)))

(declare-fun b!7442964 () Bool)

(declare-fun tp!2152106 () Bool)

(assert (=> b!7442964 (= e!4444436 tp!2152106)))

(declare-fun b!7442962 () Bool)

(assert (=> b!7442962 (= e!4444436 tp_is_empty!49181)))

(declare-fun b!7442965 () Bool)

(declare-fun tp!2152110 () Bool)

(declare-fun tp!2152107 () Bool)

(assert (=> b!7442965 (= e!4444436 (and tp!2152110 tp!2152107))))

(assert (= (and b!7442808 ((_ is ElementMatch!19461) (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7442962))

(assert (= (and b!7442808 ((_ is Concat!28306) (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7442963))

(assert (= (and b!7442808 ((_ is Star!19461) (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7442964))

(assert (= (and b!7442808 ((_ is Union!19461) (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7442965))

(declare-fun b!7442967 () Bool)

(declare-fun e!4444437 () Bool)

(declare-fun tp!2152116 () Bool)

(declare-fun tp!2152114 () Bool)

(assert (=> b!7442967 (= e!4444437 (and tp!2152116 tp!2152114))))

(assert (=> b!7442808 (= tp!2152077 e!4444437)))

(declare-fun b!7442968 () Bool)

(declare-fun tp!2152112 () Bool)

(assert (=> b!7442968 (= e!4444437 tp!2152112)))

(declare-fun b!7442966 () Bool)

(assert (=> b!7442966 (= e!4444437 tp_is_empty!49181)))

(declare-fun b!7442969 () Bool)

(declare-fun tp!2152115 () Bool)

(declare-fun tp!2152113 () Bool)

(assert (=> b!7442969 (= e!4444437 (and tp!2152115 tp!2152113))))

(assert (= (and b!7442808 ((_ is ElementMatch!19461) (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7442966))

(assert (= (and b!7442808 ((_ is Concat!28306) (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7442967))

(assert (= (and b!7442808 ((_ is Star!19461) (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7442968))

(assert (= (and b!7442808 ((_ is Union!19461) (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7442969))

(declare-fun b!7442973 () Bool)

(declare-fun e!4444440 () Bool)

(declare-fun tp!2152121 () Bool)

(declare-fun tp!2152119 () Bool)

(assert (=> b!7442973 (= e!4444440 (and tp!2152121 tp!2152119))))

(assert (=> b!7442816 (= tp!2152088 e!4444440)))

(declare-fun b!7442974 () Bool)

(declare-fun tp!2152117 () Bool)

(assert (=> b!7442974 (= e!4444440 tp!2152117)))

(declare-fun b!7442972 () Bool)

(assert (=> b!7442972 (= e!4444440 tp_is_empty!49181)))

(declare-fun b!7442975 () Bool)

(declare-fun tp!2152120 () Bool)

(declare-fun tp!2152118 () Bool)

(assert (=> b!7442975 (= e!4444440 (and tp!2152120 tp!2152118))))

(assert (= (and b!7442816 ((_ is ElementMatch!19461) (reg!19790 (h!78472 (exprs!8901 setElem!56633))))) b!7442972))

(assert (= (and b!7442816 ((_ is Concat!28306) (reg!19790 (h!78472 (exprs!8901 setElem!56633))))) b!7442973))

(assert (= (and b!7442816 ((_ is Star!19461) (reg!19790 (h!78472 (exprs!8901 setElem!56633))))) b!7442974))

(assert (= (and b!7442816 ((_ is Union!19461) (reg!19790 (h!78472 (exprs!8901 setElem!56633))))) b!7442975))

(declare-fun b!7442977 () Bool)

(declare-fun e!4444441 () Bool)

(declare-fun tp!2152126 () Bool)

(declare-fun tp!2152124 () Bool)

(assert (=> b!7442977 (= e!4444441 (and tp!2152126 tp!2152124))))

(assert (=> b!7442815 (= tp!2152092 e!4444441)))

(declare-fun b!7442978 () Bool)

(declare-fun tp!2152122 () Bool)

(assert (=> b!7442978 (= e!4444441 tp!2152122)))

(declare-fun b!7442976 () Bool)

(assert (=> b!7442976 (= e!4444441 tp_is_empty!49181)))

(declare-fun b!7442979 () Bool)

(declare-fun tp!2152125 () Bool)

(declare-fun tp!2152123 () Bool)

(assert (=> b!7442979 (= e!4444441 (and tp!2152125 tp!2152123))))

(assert (= (and b!7442815 ((_ is ElementMatch!19461) (regOne!39434 (h!78472 (exprs!8901 setElem!56633))))) b!7442976))

(assert (= (and b!7442815 ((_ is Concat!28306) (regOne!39434 (h!78472 (exprs!8901 setElem!56633))))) b!7442977))

(assert (= (and b!7442815 ((_ is Star!19461) (regOne!39434 (h!78472 (exprs!8901 setElem!56633))))) b!7442978))

(assert (= (and b!7442815 ((_ is Union!19461) (regOne!39434 (h!78472 (exprs!8901 setElem!56633))))) b!7442979))

(declare-fun b!7442981 () Bool)

(declare-fun e!4444442 () Bool)

(declare-fun tp!2152131 () Bool)

(declare-fun tp!2152129 () Bool)

(assert (=> b!7442981 (= e!4444442 (and tp!2152131 tp!2152129))))

(assert (=> b!7442815 (= tp!2152090 e!4444442)))

(declare-fun b!7442982 () Bool)

(declare-fun tp!2152127 () Bool)

(assert (=> b!7442982 (= e!4444442 tp!2152127)))

(declare-fun b!7442980 () Bool)

(assert (=> b!7442980 (= e!4444442 tp_is_empty!49181)))

(declare-fun b!7442983 () Bool)

(declare-fun tp!2152130 () Bool)

(declare-fun tp!2152128 () Bool)

(assert (=> b!7442983 (= e!4444442 (and tp!2152130 tp!2152128))))

(assert (= (and b!7442815 ((_ is ElementMatch!19461) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633))))) b!7442980))

(assert (= (and b!7442815 ((_ is Concat!28306) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633))))) b!7442981))

(assert (= (and b!7442815 ((_ is Star!19461) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633))))) b!7442982))

(assert (= (and b!7442815 ((_ is Union!19461) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633))))) b!7442983))

(declare-fun b!7442985 () Bool)

(declare-fun e!4444443 () Bool)

(declare-fun tp!2152136 () Bool)

(declare-fun tp!2152134 () Bool)

(assert (=> b!7442985 (= e!4444443 (and tp!2152136 tp!2152134))))

(assert (=> b!7442817 (= tp!2152091 e!4444443)))

(declare-fun b!7442986 () Bool)

(declare-fun tp!2152132 () Bool)

(assert (=> b!7442986 (= e!4444443 tp!2152132)))

(declare-fun b!7442984 () Bool)

(assert (=> b!7442984 (= e!4444443 tp_is_empty!49181)))

(declare-fun b!7442987 () Bool)

(declare-fun tp!2152135 () Bool)

(declare-fun tp!2152133 () Bool)

(assert (=> b!7442987 (= e!4444443 (and tp!2152135 tp!2152133))))

(assert (= (and b!7442817 ((_ is ElementMatch!19461) (regOne!39435 (h!78472 (exprs!8901 setElem!56633))))) b!7442984))

(assert (= (and b!7442817 ((_ is Concat!28306) (regOne!39435 (h!78472 (exprs!8901 setElem!56633))))) b!7442985))

(assert (= (and b!7442817 ((_ is Star!19461) (regOne!39435 (h!78472 (exprs!8901 setElem!56633))))) b!7442986))

(assert (= (and b!7442817 ((_ is Union!19461) (regOne!39435 (h!78472 (exprs!8901 setElem!56633))))) b!7442987))

(declare-fun b!7442989 () Bool)

(declare-fun e!4444444 () Bool)

(declare-fun tp!2152141 () Bool)

(declare-fun tp!2152139 () Bool)

(assert (=> b!7442989 (= e!4444444 (and tp!2152141 tp!2152139))))

(assert (=> b!7442817 (= tp!2152089 e!4444444)))

(declare-fun b!7442990 () Bool)

(declare-fun tp!2152137 () Bool)

(assert (=> b!7442990 (= e!4444444 tp!2152137)))

(declare-fun b!7442988 () Bool)

(assert (=> b!7442988 (= e!4444444 tp_is_empty!49181)))

(declare-fun b!7442991 () Bool)

(declare-fun tp!2152140 () Bool)

(declare-fun tp!2152138 () Bool)

(assert (=> b!7442991 (= e!4444444 (and tp!2152140 tp!2152138))))

(assert (= (and b!7442817 ((_ is ElementMatch!19461) (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))))) b!7442988))

(assert (= (and b!7442817 ((_ is Concat!28306) (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))))) b!7442989))

(assert (= (and b!7442817 ((_ is Star!19461) (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))))) b!7442990))

(assert (= (and b!7442817 ((_ is Union!19461) (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))))) b!7442991))

(declare-fun condSetEmpty!56644 () Bool)

(assert (=> setNonEmpty!56637 (= condSetEmpty!56644 (= setRest!56637 ((as const (Array Context!16802 Bool)) false)))))

(declare-fun setRes!56644 () Bool)

(assert (=> setNonEmpty!56637 (= tp!2152051 setRes!56644)))

(declare-fun setIsEmpty!56644 () Bool)

(assert (=> setIsEmpty!56644 setRes!56644))

(declare-fun tp!2152142 () Bool)

(declare-fun setNonEmpty!56644 () Bool)

(declare-fun setElem!56644 () Context!16802)

(declare-fun e!4444445 () Bool)

(assert (=> setNonEmpty!56644 (= setRes!56644 (and tp!2152142 (inv!92013 setElem!56644) e!4444445))))

(declare-fun setRest!56644 () (InoxSet Context!16802))

(assert (=> setNonEmpty!56644 (= setRest!56637 ((_ map or) (store ((as const (Array Context!16802 Bool)) false) setElem!56644 true) setRest!56644))))

(declare-fun b!7442992 () Bool)

(declare-fun tp!2152143 () Bool)

(assert (=> b!7442992 (= e!4444445 tp!2152143)))

(assert (= (and setNonEmpty!56637 condSetEmpty!56644) setIsEmpty!56644))

(assert (= (and setNonEmpty!56637 (not condSetEmpty!56644)) setNonEmpty!56644))

(assert (= setNonEmpty!56644 b!7442992))

(declare-fun m!8054418 () Bool)

(assert (=> setNonEmpty!56644 m!8054418))

(declare-fun b!7442994 () Bool)

(declare-fun e!4444446 () Bool)

(declare-fun tp!2152148 () Bool)

(declare-fun tp!2152146 () Bool)

(assert (=> b!7442994 (= e!4444446 (and tp!2152148 tp!2152146))))

(assert (=> b!7442809 (= tp!2152081 e!4444446)))

(declare-fun b!7442995 () Bool)

(declare-fun tp!2152144 () Bool)

(assert (=> b!7442995 (= e!4444446 tp!2152144)))

(declare-fun b!7442993 () Bool)

(assert (=> b!7442993 (= e!4444446 tp_is_empty!49181)))

(declare-fun b!7442996 () Bool)

(declare-fun tp!2152147 () Bool)

(declare-fun tp!2152145 () Bool)

(assert (=> b!7442996 (= e!4444446 (and tp!2152147 tp!2152145))))

(assert (= (and b!7442809 ((_ is ElementMatch!19461) (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627)))))) b!7442993))

(assert (= (and b!7442809 ((_ is Concat!28306) (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627)))))) b!7442994))

(assert (= (and b!7442809 ((_ is Star!19461) (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627)))))) b!7442995))

(assert (= (and b!7442809 ((_ is Union!19461) (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627)))))) b!7442996))

(declare-fun b!7442997 () Bool)

(declare-fun e!4444447 () Bool)

(declare-fun tp!2152149 () Bool)

(declare-fun tp!2152150 () Bool)

(assert (=> b!7442997 (= e!4444447 (and tp!2152149 tp!2152150))))

(assert (=> b!7442809 (= tp!2152082 e!4444447)))

(assert (= (and b!7442809 ((_ is Cons!72024) (t!386713 (t!386713 (t!386713 (exprs!8901 setElem!56627)))))) b!7442997))

(declare-fun b!7442999 () Bool)

(declare-fun e!4444448 () Bool)

(declare-fun tp!2152155 () Bool)

(declare-fun tp!2152153 () Bool)

(assert (=> b!7442999 (= e!4444448 (and tp!2152155 tp!2152153))))

(assert (=> b!7442792 (= tp!2152062 e!4444448)))

(declare-fun b!7443000 () Bool)

(declare-fun tp!2152151 () Bool)

(assert (=> b!7443000 (= e!4444448 tp!2152151)))

(declare-fun b!7442998 () Bool)

(assert (=> b!7442998 (= e!4444448 tp_is_empty!49181)))

(declare-fun b!7443001 () Bool)

(declare-fun tp!2152154 () Bool)

(declare-fun tp!2152152 () Bool)

(assert (=> b!7443001 (= e!4444448 (and tp!2152154 tp!2152152))))

(assert (= (and b!7442792 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7442998))

(assert (= (and b!7442792 ((_ is Concat!28306) (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7442999))

(assert (= (and b!7442792 ((_ is Star!19461) (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443000))

(assert (= (and b!7442792 ((_ is Union!19461) (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443001))

(declare-fun b!7443003 () Bool)

(declare-fun e!4444449 () Bool)

(declare-fun tp!2152160 () Bool)

(declare-fun tp!2152158 () Bool)

(assert (=> b!7443003 (= e!4444449 (and tp!2152160 tp!2152158))))

(assert (=> b!7442792 (= tp!2152060 e!4444449)))

(declare-fun b!7443004 () Bool)

(declare-fun tp!2152156 () Bool)

(assert (=> b!7443004 (= e!4444449 tp!2152156)))

(declare-fun b!7443002 () Bool)

(assert (=> b!7443002 (= e!4444449 tp_is_empty!49181)))

(declare-fun b!7443005 () Bool)

(declare-fun tp!2152159 () Bool)

(declare-fun tp!2152157 () Bool)

(assert (=> b!7443005 (= e!4444449 (and tp!2152159 tp!2152157))))

(assert (= (and b!7442792 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443002))

(assert (= (and b!7442792 ((_ is Concat!28306) (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443003))

(assert (= (and b!7442792 ((_ is Star!19461) (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443004))

(assert (= (and b!7442792 ((_ is Union!19461) (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443005))

(declare-fun b!7443007 () Bool)

(declare-fun e!4444450 () Bool)

(declare-fun tp!2152165 () Bool)

(declare-fun tp!2152163 () Bool)

(assert (=> b!7443007 (= e!4444450 (and tp!2152165 tp!2152163))))

(assert (=> b!7442789 (= tp!2152053 e!4444450)))

(declare-fun b!7443008 () Bool)

(declare-fun tp!2152161 () Bool)

(assert (=> b!7443008 (= e!4444450 tp!2152161)))

(declare-fun b!7443006 () Bool)

(assert (=> b!7443006 (= e!4444450 tp_is_empty!49181)))

(declare-fun b!7443009 () Bool)

(declare-fun tp!2152164 () Bool)

(declare-fun tp!2152162 () Bool)

(assert (=> b!7443009 (= e!4444450 (and tp!2152164 tp!2152162))))

(assert (= (and b!7442789 ((_ is ElementMatch!19461) (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443006))

(assert (= (and b!7442789 ((_ is Concat!28306) (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443007))

(assert (= (and b!7442789 ((_ is Star!19461) (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443008))

(assert (= (and b!7442789 ((_ is Union!19461) (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443009))

(declare-fun b!7443013 () Bool)

(declare-fun e!4444451 () Bool)

(declare-fun tp!2152170 () Bool)

(declare-fun tp!2152168 () Bool)

(assert (=> b!7443013 (= e!4444451 (and tp!2152170 tp!2152168))))

(assert (=> b!7442798 (= tp!2152064 e!4444451)))

(declare-fun b!7443014 () Bool)

(declare-fun tp!2152166 () Bool)

(assert (=> b!7443014 (= e!4444451 tp!2152166)))

(declare-fun b!7443012 () Bool)

(assert (=> b!7443012 (= e!4444451 tp_is_empty!49181)))

(declare-fun b!7443015 () Bool)

(declare-fun tp!2152169 () Bool)

(declare-fun tp!2152167 () Bool)

(assert (=> b!7443015 (= e!4444451 (and tp!2152169 tp!2152167))))

(assert (= (and b!7442798 ((_ is ElementMatch!19461) (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443012))

(assert (= (and b!7442798 ((_ is Concat!28306) (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443013))

(assert (= (and b!7442798 ((_ is Star!19461) (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443014))

(assert (= (and b!7442798 ((_ is Union!19461) (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443015))

(declare-fun b!7443017 () Bool)

(declare-fun e!4444452 () Bool)

(declare-fun tp!2152175 () Bool)

(declare-fun tp!2152173 () Bool)

(assert (=> b!7443017 (= e!4444452 (and tp!2152175 tp!2152173))))

(assert (=> b!7442790 (= tp!2152056 e!4444452)))

(declare-fun b!7443018 () Bool)

(declare-fun tp!2152171 () Bool)

(assert (=> b!7443018 (= e!4444452 tp!2152171)))

(declare-fun b!7443016 () Bool)

(assert (=> b!7443016 (= e!4444452 tp_is_empty!49181)))

(declare-fun b!7443019 () Bool)

(declare-fun tp!2152174 () Bool)

(declare-fun tp!2152172 () Bool)

(assert (=> b!7443019 (= e!4444452 (and tp!2152174 tp!2152172))))

(assert (= (and b!7442790 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443016))

(assert (= (and b!7442790 ((_ is Concat!28306) (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443017))

(assert (= (and b!7442790 ((_ is Star!19461) (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443018))

(assert (= (and b!7442790 ((_ is Union!19461) (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443019))

(declare-fun b!7443021 () Bool)

(declare-fun e!4444453 () Bool)

(declare-fun tp!2152180 () Bool)

(declare-fun tp!2152178 () Bool)

(assert (=> b!7443021 (= e!4444453 (and tp!2152180 tp!2152178))))

(assert (=> b!7442790 (= tp!2152054 e!4444453)))

(declare-fun b!7443022 () Bool)

(declare-fun tp!2152176 () Bool)

(assert (=> b!7443022 (= e!4444453 tp!2152176)))

(declare-fun b!7443020 () Bool)

(assert (=> b!7443020 (= e!4444453 tp_is_empty!49181)))

(declare-fun b!7443023 () Bool)

(declare-fun tp!2152179 () Bool)

(declare-fun tp!2152177 () Bool)

(assert (=> b!7443023 (= e!4444453 (and tp!2152179 tp!2152177))))

(assert (= (and b!7442790 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443020))

(assert (= (and b!7442790 ((_ is Concat!28306) (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443021))

(assert (= (and b!7442790 ((_ is Star!19461) (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443022))

(assert (= (and b!7442790 ((_ is Union!19461) (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443023))

(declare-fun b!7443025 () Bool)

(declare-fun e!4444454 () Bool)

(declare-fun tp!2152185 () Bool)

(declare-fun tp!2152183 () Bool)

(assert (=> b!7443025 (= e!4444454 (and tp!2152185 tp!2152183))))

(assert (=> b!7442797 (= tp!2152068 e!4444454)))

(declare-fun b!7443026 () Bool)

(declare-fun tp!2152181 () Bool)

(assert (=> b!7443026 (= e!4444454 tp!2152181)))

(declare-fun b!7443024 () Bool)

(assert (=> b!7443024 (= e!4444454 tp_is_empty!49181)))

(declare-fun b!7443027 () Bool)

(declare-fun tp!2152184 () Bool)

(declare-fun tp!2152182 () Bool)

(assert (=> b!7443027 (= e!4444454 (and tp!2152184 tp!2152182))))

(assert (= (and b!7442797 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443024))

(assert (= (and b!7442797 ((_ is Concat!28306) (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443025))

(assert (= (and b!7442797 ((_ is Star!19461) (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443026))

(assert (= (and b!7442797 ((_ is Union!19461) (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443027))

(declare-fun b!7443029 () Bool)

(declare-fun e!4444455 () Bool)

(declare-fun tp!2152190 () Bool)

(declare-fun tp!2152188 () Bool)

(assert (=> b!7443029 (= e!4444455 (and tp!2152190 tp!2152188))))

(assert (=> b!7442797 (= tp!2152066 e!4444455)))

(declare-fun b!7443030 () Bool)

(declare-fun tp!2152186 () Bool)

(assert (=> b!7443030 (= e!4444455 tp!2152186)))

(declare-fun b!7443028 () Bool)

(assert (=> b!7443028 (= e!4444455 tp_is_empty!49181)))

(declare-fun b!7443031 () Bool)

(declare-fun tp!2152189 () Bool)

(declare-fun tp!2152187 () Bool)

(assert (=> b!7443031 (= e!4444455 (and tp!2152189 tp!2152187))))

(assert (= (and b!7442797 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443028))

(assert (= (and b!7442797 ((_ is Concat!28306) (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443029))

(assert (= (and b!7442797 ((_ is Star!19461) (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443030))

(assert (= (and b!7442797 ((_ is Union!19461) (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443031))

(declare-fun b!7443033 () Bool)

(declare-fun e!4444456 () Bool)

(declare-fun tp!2152195 () Bool)

(declare-fun tp!2152193 () Bool)

(assert (=> b!7443033 (= e!4444456 (and tp!2152195 tp!2152193))))

(assert (=> b!7442799 (= tp!2152067 e!4444456)))

(declare-fun b!7443034 () Bool)

(declare-fun tp!2152191 () Bool)

(assert (=> b!7443034 (= e!4444456 tp!2152191)))

(declare-fun b!7443032 () Bool)

(assert (=> b!7443032 (= e!4444456 tp_is_empty!49181)))

(declare-fun b!7443035 () Bool)

(declare-fun tp!2152194 () Bool)

(declare-fun tp!2152192 () Bool)

(assert (=> b!7443035 (= e!4444456 (and tp!2152194 tp!2152192))))

(assert (= (and b!7442799 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443032))

(assert (= (and b!7442799 ((_ is Concat!28306) (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443033))

(assert (= (and b!7442799 ((_ is Star!19461) (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443034))

(assert (= (and b!7442799 ((_ is Union!19461) (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443035))

(declare-fun b!7443037 () Bool)

(declare-fun e!4444457 () Bool)

(declare-fun tp!2152200 () Bool)

(declare-fun tp!2152198 () Bool)

(assert (=> b!7443037 (= e!4444457 (and tp!2152200 tp!2152198))))

(assert (=> b!7442799 (= tp!2152065 e!4444457)))

(declare-fun b!7443038 () Bool)

(declare-fun tp!2152196 () Bool)

(assert (=> b!7443038 (= e!4444457 tp!2152196)))

(declare-fun b!7443036 () Bool)

(assert (=> b!7443036 (= e!4444457 tp_is_empty!49181)))

(declare-fun b!7443039 () Bool)

(declare-fun tp!2152199 () Bool)

(declare-fun tp!2152197 () Bool)

(assert (=> b!7443039 (= e!4444457 (and tp!2152199 tp!2152197))))

(assert (= (and b!7442799 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443036))

(assert (= (and b!7442799 ((_ is Concat!28306) (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443037))

(assert (= (and b!7442799 ((_ is Star!19461) (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443038))

(assert (= (and b!7442799 ((_ is Union!19461) (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443039))

(declare-fun b!7443041 () Bool)

(declare-fun e!4444458 () Bool)

(declare-fun tp!2152205 () Bool)

(declare-fun tp!2152203 () Bool)

(assert (=> b!7443041 (= e!4444458 (and tp!2152205 tp!2152203))))

(assert (=> b!7442807 (= tp!2152076 e!4444458)))

(declare-fun b!7443042 () Bool)

(declare-fun tp!2152201 () Bool)

(assert (=> b!7443042 (= e!4444458 tp!2152201)))

(declare-fun b!7443040 () Bool)

(assert (=> b!7443040 (= e!4444458 tp_is_empty!49181)))

(declare-fun b!7443043 () Bool)

(declare-fun tp!2152204 () Bool)

(declare-fun tp!2152202 () Bool)

(assert (=> b!7443043 (= e!4444458 (and tp!2152204 tp!2152202))))

(assert (= (and b!7442807 ((_ is ElementMatch!19461) (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7443040))

(assert (= (and b!7442807 ((_ is Concat!28306) (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7443041))

(assert (= (and b!7442807 ((_ is Star!19461) (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7443042))

(assert (= (and b!7442807 ((_ is Union!19461) (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7443043))

(declare-fun b!7443045 () Bool)

(declare-fun e!4444459 () Bool)

(declare-fun tp!2152210 () Bool)

(declare-fun tp!2152208 () Bool)

(assert (=> b!7443045 (= e!4444459 (and tp!2152210 tp!2152208))))

(assert (=> b!7442806 (= tp!2152080 e!4444459)))

(declare-fun b!7443046 () Bool)

(declare-fun tp!2152206 () Bool)

(assert (=> b!7443046 (= e!4444459 tp!2152206)))

(declare-fun b!7443044 () Bool)

(assert (=> b!7443044 (= e!4444459 tp_is_empty!49181)))

(declare-fun b!7443047 () Bool)

(declare-fun tp!2152209 () Bool)

(declare-fun tp!2152207 () Bool)

(assert (=> b!7443047 (= e!4444459 (and tp!2152209 tp!2152207))))

(assert (= (and b!7442806 ((_ is ElementMatch!19461) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7443044))

(assert (= (and b!7442806 ((_ is Concat!28306) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7443045))

(assert (= (and b!7442806 ((_ is Star!19461) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7443046))

(assert (= (and b!7442806 ((_ is Union!19461) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7443047))

(declare-fun b!7443049 () Bool)

(declare-fun e!4444460 () Bool)

(declare-fun tp!2152215 () Bool)

(declare-fun tp!2152213 () Bool)

(assert (=> b!7443049 (= e!4444460 (and tp!2152215 tp!2152213))))

(assert (=> b!7442806 (= tp!2152078 e!4444460)))

(declare-fun b!7443050 () Bool)

(declare-fun tp!2152211 () Bool)

(assert (=> b!7443050 (= e!4444460 tp!2152211)))

(declare-fun b!7443048 () Bool)

(assert (=> b!7443048 (= e!4444460 tp_is_empty!49181)))

(declare-fun b!7443051 () Bool)

(declare-fun tp!2152214 () Bool)

(declare-fun tp!2152212 () Bool)

(assert (=> b!7443051 (= e!4444460 (and tp!2152214 tp!2152212))))

(assert (= (and b!7442806 ((_ is ElementMatch!19461) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7443048))

(assert (= (and b!7442806 ((_ is Concat!28306) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7443049))

(assert (= (and b!7442806 ((_ is Star!19461) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7443050))

(assert (= (and b!7442806 ((_ is Union!19461) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) b!7443051))

(declare-fun b!7443053 () Bool)

(declare-fun e!4444461 () Bool)

(declare-fun tp!2152220 () Bool)

(declare-fun tp!2152218 () Bool)

(assert (=> b!7443053 (= e!4444461 (and tp!2152220 tp!2152218))))

(assert (=> b!7442811 (= tp!2152087 e!4444461)))

(declare-fun b!7443054 () Bool)

(declare-fun tp!2152216 () Bool)

(assert (=> b!7443054 (= e!4444461 tp!2152216)))

(declare-fun b!7443052 () Bool)

(assert (=> b!7443052 (= e!4444461 tp_is_empty!49181)))

(declare-fun b!7443055 () Bool)

(declare-fun tp!2152219 () Bool)

(declare-fun tp!2152217 () Bool)

(assert (=> b!7443055 (= e!4444461 (and tp!2152219 tp!2152217))))

(assert (= (and b!7442811 ((_ is ElementMatch!19461) (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443052))

(assert (= (and b!7442811 ((_ is Concat!28306) (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443053))

(assert (= (and b!7442811 ((_ is Star!19461) (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443054))

(assert (= (and b!7442811 ((_ is Union!19461) (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443055))

(declare-fun b!7443057 () Bool)

(declare-fun e!4444462 () Bool)

(declare-fun tp!2152225 () Bool)

(declare-fun tp!2152223 () Bool)

(assert (=> b!7443057 (= e!4444462 (and tp!2152225 tp!2152223))))

(assert (=> b!7442811 (= tp!2152085 e!4444462)))

(declare-fun b!7443058 () Bool)

(declare-fun tp!2152221 () Bool)

(assert (=> b!7443058 (= e!4444462 tp!2152221)))

(declare-fun b!7443056 () Bool)

(assert (=> b!7443056 (= e!4444462 tp_is_empty!49181)))

(declare-fun b!7443059 () Bool)

(declare-fun tp!2152224 () Bool)

(declare-fun tp!2152222 () Bool)

(assert (=> b!7443059 (= e!4444462 (and tp!2152224 tp!2152222))))

(assert (= (and b!7442811 ((_ is ElementMatch!19461) (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443056))

(assert (= (and b!7442811 ((_ is Concat!28306) (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443057))

(assert (= (and b!7442811 ((_ is Star!19461) (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443058))

(assert (= (and b!7442811 ((_ is Union!19461) (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443059))

(declare-fun b!7443061 () Bool)

(declare-fun e!4444463 () Bool)

(declare-fun tp!2152230 () Bool)

(declare-fun tp!2152228 () Bool)

(assert (=> b!7443061 (= e!4444463 (and tp!2152230 tp!2152228))))

(assert (=> b!7442804 (= tp!2152074 e!4444463)))

(declare-fun b!7443062 () Bool)

(declare-fun tp!2152226 () Bool)

(assert (=> b!7443062 (= e!4444463 tp!2152226)))

(declare-fun b!7443060 () Bool)

(assert (=> b!7443060 (= e!4444463 tp_is_empty!49181)))

(declare-fun b!7443063 () Bool)

(declare-fun tp!2152229 () Bool)

(declare-fun tp!2152227 () Bool)

(assert (=> b!7443063 (= e!4444463 (and tp!2152229 tp!2152227))))

(assert (= (and b!7442804 ((_ is ElementMatch!19461) (h!78472 (exprs!8901 setElem!56635)))) b!7443060))

(assert (= (and b!7442804 ((_ is Concat!28306) (h!78472 (exprs!8901 setElem!56635)))) b!7443061))

(assert (= (and b!7442804 ((_ is Star!19461) (h!78472 (exprs!8901 setElem!56635)))) b!7443062))

(assert (= (and b!7442804 ((_ is Union!19461) (h!78472 (exprs!8901 setElem!56635)))) b!7443063))

(declare-fun b!7443064 () Bool)

(declare-fun e!4444464 () Bool)

(declare-fun tp!2152231 () Bool)

(declare-fun tp!2152232 () Bool)

(assert (=> b!7443064 (= e!4444464 (and tp!2152231 tp!2152232))))

(assert (=> b!7442804 (= tp!2152075 e!4444464)))

(assert (= (and b!7442804 ((_ is Cons!72024) (t!386713 (exprs!8901 setElem!56635)))) b!7443064))

(declare-fun b!7443066 () Bool)

(declare-fun e!4444465 () Bool)

(declare-fun tp!2152237 () Bool)

(declare-fun tp!2152235 () Bool)

(assert (=> b!7443066 (= e!4444465 (and tp!2152237 tp!2152235))))

(assert (=> b!7442812 (= tp!2152083 e!4444465)))

(declare-fun b!7443067 () Bool)

(declare-fun tp!2152233 () Bool)

(assert (=> b!7443067 (= e!4444465 tp!2152233)))

(declare-fun b!7443065 () Bool)

(assert (=> b!7443065 (= e!4444465 tp_is_empty!49181)))

(declare-fun b!7443068 () Bool)

(declare-fun tp!2152236 () Bool)

(declare-fun tp!2152234 () Bool)

(assert (=> b!7443068 (= e!4444465 (and tp!2152236 tp!2152234))))

(assert (= (and b!7442812 ((_ is ElementMatch!19461) (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443065))

(assert (= (and b!7442812 ((_ is Concat!28306) (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443066))

(assert (= (and b!7442812 ((_ is Star!19461) (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443067))

(assert (= (and b!7442812 ((_ is Union!19461) (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443068))

(declare-fun b!7443072 () Bool)

(declare-fun e!4444468 () Bool)

(declare-fun tp!2152242 () Bool)

(declare-fun tp!2152240 () Bool)

(assert (=> b!7443072 (= e!4444468 (and tp!2152242 tp!2152240))))

(assert (=> b!7442788 (= tp!2152057 e!4444468)))

(declare-fun b!7443073 () Bool)

(declare-fun tp!2152238 () Bool)

(assert (=> b!7443073 (= e!4444468 tp!2152238)))

(declare-fun b!7443071 () Bool)

(assert (=> b!7443071 (= e!4444468 tp_is_empty!49181)))

(declare-fun b!7443074 () Bool)

(declare-fun tp!2152241 () Bool)

(declare-fun tp!2152239 () Bool)

(assert (=> b!7443074 (= e!4444468 (and tp!2152241 tp!2152239))))

(assert (= (and b!7442788 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443071))

(assert (= (and b!7442788 ((_ is Concat!28306) (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443072))

(assert (= (and b!7442788 ((_ is Star!19461) (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443073))

(assert (= (and b!7442788 ((_ is Union!19461) (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443074))

(declare-fun b!7443076 () Bool)

(declare-fun e!4444469 () Bool)

(declare-fun tp!2152247 () Bool)

(declare-fun tp!2152245 () Bool)

(assert (=> b!7443076 (= e!4444469 (and tp!2152247 tp!2152245))))

(assert (=> b!7442788 (= tp!2152055 e!4444469)))

(declare-fun b!7443077 () Bool)

(declare-fun tp!2152243 () Bool)

(assert (=> b!7443077 (= e!4444469 tp!2152243)))

(declare-fun b!7443075 () Bool)

(assert (=> b!7443075 (= e!4444469 tp_is_empty!49181)))

(declare-fun b!7443078 () Bool)

(declare-fun tp!2152246 () Bool)

(declare-fun tp!2152244 () Bool)

(assert (=> b!7443078 (= e!4444469 (and tp!2152246 tp!2152244))))

(assert (= (and b!7442788 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443075))

(assert (= (and b!7442788 ((_ is Concat!28306) (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443076))

(assert (= (and b!7442788 ((_ is Star!19461) (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443077))

(assert (= (and b!7442788 ((_ is Union!19461) (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443078))

(declare-fun b!7443080 () Bool)

(declare-fun e!4444470 () Bool)

(declare-fun tp!2152252 () Bool)

(declare-fun tp!2152250 () Bool)

(assert (=> b!7443080 (= e!4444470 (and tp!2152252 tp!2152250))))

(assert (=> b!7442813 (= tp!2152086 e!4444470)))

(declare-fun b!7443081 () Bool)

(declare-fun tp!2152248 () Bool)

(assert (=> b!7443081 (= e!4444470 tp!2152248)))

(declare-fun b!7443079 () Bool)

(assert (=> b!7443079 (= e!4444470 tp_is_empty!49181)))

(declare-fun b!7443082 () Bool)

(declare-fun tp!2152251 () Bool)

(declare-fun tp!2152249 () Bool)

(assert (=> b!7443082 (= e!4444470 (and tp!2152251 tp!2152249))))

(assert (= (and b!7442813 ((_ is ElementMatch!19461) (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443079))

(assert (= (and b!7442813 ((_ is Concat!28306) (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443080))

(assert (= (and b!7442813 ((_ is Star!19461) (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443081))

(assert (= (and b!7442813 ((_ is Union!19461) (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443082))

(declare-fun b!7443085 () Bool)

(declare-fun e!4444472 () Bool)

(declare-fun tp!2152257 () Bool)

(declare-fun tp!2152255 () Bool)

(assert (=> b!7443085 (= e!4444472 (and tp!2152257 tp!2152255))))

(assert (=> b!7442813 (= tp!2152084 e!4444472)))

(declare-fun b!7443086 () Bool)

(declare-fun tp!2152253 () Bool)

(assert (=> b!7443086 (= e!4444472 tp!2152253)))

(declare-fun b!7443084 () Bool)

(assert (=> b!7443084 (= e!4444472 tp_is_empty!49181)))

(declare-fun b!7443087 () Bool)

(declare-fun tp!2152256 () Bool)

(declare-fun tp!2152254 () Bool)

(assert (=> b!7443087 (= e!4444472 (and tp!2152256 tp!2152254))))

(assert (= (and b!7442813 ((_ is ElementMatch!19461) (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443084))

(assert (= (and b!7442813 ((_ is Concat!28306) (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443085))

(assert (= (and b!7442813 ((_ is Star!19461) (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443086))

(assert (= (and b!7442813 ((_ is Union!19461) (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))) b!7443087))

(declare-fun b!7443089 () Bool)

(declare-fun e!4444473 () Bool)

(declare-fun tp!2152262 () Bool)

(declare-fun tp!2152260 () Bool)

(assert (=> b!7443089 (= e!4444473 (and tp!2152262 tp!2152260))))

(assert (=> b!7442794 (= tp!2152061 e!4444473)))

(declare-fun b!7443090 () Bool)

(declare-fun tp!2152258 () Bool)

(assert (=> b!7443090 (= e!4444473 tp!2152258)))

(declare-fun b!7443088 () Bool)

(assert (=> b!7443088 (= e!4444473 tp_is_empty!49181)))

(declare-fun b!7443091 () Bool)

(declare-fun tp!2152261 () Bool)

(declare-fun tp!2152259 () Bool)

(assert (=> b!7443091 (= e!4444473 (and tp!2152261 tp!2152259))))

(assert (= (and b!7442794 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443088))

(assert (= (and b!7442794 ((_ is Concat!28306) (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443089))

(assert (= (and b!7442794 ((_ is Star!19461) (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443090))

(assert (= (and b!7442794 ((_ is Union!19461) (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443091))

(declare-fun b!7443093 () Bool)

(declare-fun e!4444474 () Bool)

(declare-fun tp!2152267 () Bool)

(declare-fun tp!2152265 () Bool)

(assert (=> b!7443093 (= e!4444474 (and tp!2152267 tp!2152265))))

(assert (=> b!7442794 (= tp!2152059 e!4444474)))

(declare-fun b!7443094 () Bool)

(declare-fun tp!2152263 () Bool)

(assert (=> b!7443094 (= e!4444474 tp!2152263)))

(declare-fun b!7443092 () Bool)

(assert (=> b!7443092 (= e!4444474 tp_is_empty!49181)))

(declare-fun b!7443095 () Bool)

(declare-fun tp!2152266 () Bool)

(declare-fun tp!2152264 () Bool)

(assert (=> b!7443095 (= e!4444474 (and tp!2152266 tp!2152264))))

(assert (= (and b!7442794 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443092))

(assert (= (and b!7442794 ((_ is Concat!28306) (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443093))

(assert (= (and b!7442794 ((_ is Star!19461) (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443094))

(assert (= (and b!7442794 ((_ is Union!19461) (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443095))

(declare-fun b!7443097 () Bool)

(declare-fun e!4444475 () Bool)

(declare-fun tp!2152272 () Bool)

(declare-fun tp!2152270 () Bool)

(assert (=> b!7443097 (= e!4444475 (and tp!2152272 tp!2152270))))

(assert (=> b!7442801 (= tp!2152073 e!4444475)))

(declare-fun b!7443098 () Bool)

(declare-fun tp!2152268 () Bool)

(assert (=> b!7443098 (= e!4444475 tp!2152268)))

(declare-fun b!7443096 () Bool)

(assert (=> b!7443096 (= e!4444475 tp_is_empty!49181)))

(declare-fun b!7443099 () Bool)

(declare-fun tp!2152271 () Bool)

(declare-fun tp!2152269 () Bool)

(assert (=> b!7443099 (= e!4444475 (and tp!2152271 tp!2152269))))

(assert (= (and b!7442801 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443096))

(assert (= (and b!7442801 ((_ is Concat!28306) (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443097))

(assert (= (and b!7442801 ((_ is Star!19461) (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443098))

(assert (= (and b!7442801 ((_ is Union!19461) (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443099))

(declare-fun b!7443101 () Bool)

(declare-fun e!4444476 () Bool)

(declare-fun tp!2152277 () Bool)

(declare-fun tp!2152275 () Bool)

(assert (=> b!7443101 (= e!4444476 (and tp!2152277 tp!2152275))))

(assert (=> b!7442801 (= tp!2152071 e!4444476)))

(declare-fun b!7443102 () Bool)

(declare-fun tp!2152273 () Bool)

(assert (=> b!7443102 (= e!4444476 tp!2152273)))

(declare-fun b!7443100 () Bool)

(assert (=> b!7443100 (= e!4444476 tp_is_empty!49181)))

(declare-fun b!7443103 () Bool)

(declare-fun tp!2152276 () Bool)

(declare-fun tp!2152274 () Bool)

(assert (=> b!7443103 (= e!4444476 (and tp!2152276 tp!2152274))))

(assert (= (and b!7442801 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443100))

(assert (= (and b!7442801 ((_ is Concat!28306) (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443101))

(assert (= (and b!7442801 ((_ is Star!19461) (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443102))

(assert (= (and b!7442801 ((_ is Union!19461) (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443103))

(declare-fun b!7443104 () Bool)

(declare-fun e!4444477 () Bool)

(declare-fun tp!2152278 () Bool)

(declare-fun tp!2152279 () Bool)

(assert (=> b!7443104 (= e!4444477 (and tp!2152278 tp!2152279))))

(assert (=> b!7442786 (= tp!2152052 e!4444477)))

(assert (= (and b!7442786 ((_ is Cons!72024) (exprs!8901 setElem!56637))) b!7443104))

(declare-fun b!7443106 () Bool)

(declare-fun e!4444478 () Bool)

(declare-fun tp!2152284 () Bool)

(declare-fun tp!2152282 () Bool)

(assert (=> b!7443106 (= e!4444478 (and tp!2152284 tp!2152282))))

(assert (=> b!7442793 (= tp!2152058 e!4444478)))

(declare-fun b!7443107 () Bool)

(declare-fun tp!2152280 () Bool)

(assert (=> b!7443107 (= e!4444478 tp!2152280)))

(declare-fun b!7443105 () Bool)

(assert (=> b!7443105 (= e!4444478 tp_is_empty!49181)))

(declare-fun b!7443108 () Bool)

(declare-fun tp!2152283 () Bool)

(declare-fun tp!2152281 () Bool)

(assert (=> b!7443108 (= e!4444478 (and tp!2152283 tp!2152281))))

(assert (= (and b!7442793 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443105))

(assert (= (and b!7442793 ((_ is Concat!28306) (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443106))

(assert (= (and b!7442793 ((_ is Star!19461) (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443107))

(assert (= (and b!7442793 ((_ is Union!19461) (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627)))))) b!7443108))

(declare-fun b!7443110 () Bool)

(declare-fun e!4444479 () Bool)

(declare-fun tp!2152289 () Bool)

(declare-fun tp!2152287 () Bool)

(assert (=> b!7443110 (= e!4444479 (and tp!2152289 tp!2152287))))

(assert (=> b!7442818 (= tp!2152093 e!4444479)))

(declare-fun b!7443111 () Bool)

(declare-fun tp!2152285 () Bool)

(assert (=> b!7443111 (= e!4444479 tp!2152285)))

(declare-fun b!7443109 () Bool)

(assert (=> b!7443109 (= e!4444479 tp_is_empty!49181)))

(declare-fun b!7443112 () Bool)

(declare-fun tp!2152288 () Bool)

(declare-fun tp!2152286 () Bool)

(assert (=> b!7443112 (= e!4444479 (and tp!2152288 tp!2152286))))

(assert (= (and b!7442818 ((_ is ElementMatch!19461) (h!78472 (t!386713 (exprs!8901 setElem!56633))))) b!7443109))

(assert (= (and b!7442818 ((_ is Concat!28306) (h!78472 (t!386713 (exprs!8901 setElem!56633))))) b!7443110))

(assert (= (and b!7442818 ((_ is Star!19461) (h!78472 (t!386713 (exprs!8901 setElem!56633))))) b!7443111))

(assert (= (and b!7442818 ((_ is Union!19461) (h!78472 (t!386713 (exprs!8901 setElem!56633))))) b!7443112))

(declare-fun b!7443113 () Bool)

(declare-fun e!4444480 () Bool)

(declare-fun tp!2152290 () Bool)

(declare-fun tp!2152291 () Bool)

(assert (=> b!7443113 (= e!4444480 (and tp!2152290 tp!2152291))))

(assert (=> b!7442818 (= tp!2152094 e!4444480)))

(assert (= (and b!7442818 ((_ is Cons!72024) (t!386713 (t!386713 (exprs!8901 setElem!56633))))) b!7443113))

(declare-fun b!7443115 () Bool)

(declare-fun e!4444481 () Bool)

(declare-fun tp!2152296 () Bool)

(declare-fun tp!2152294 () Bool)

(assert (=> b!7443115 (= e!4444481 (and tp!2152296 tp!2152294))))

(assert (=> b!7442802 (= tp!2152069 e!4444481)))

(declare-fun b!7443116 () Bool)

(declare-fun tp!2152292 () Bool)

(assert (=> b!7443116 (= e!4444481 tp!2152292)))

(declare-fun b!7443114 () Bool)

(assert (=> b!7443114 (= e!4444481 tp_is_empty!49181)))

(declare-fun b!7443117 () Bool)

(declare-fun tp!2152295 () Bool)

(declare-fun tp!2152293 () Bool)

(assert (=> b!7443117 (= e!4444481 (and tp!2152295 tp!2152293))))

(assert (= (and b!7442802 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443114))

(assert (= (and b!7442802 ((_ is Concat!28306) (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443115))

(assert (= (and b!7442802 ((_ is Star!19461) (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443116))

(assert (= (and b!7442802 ((_ is Union!19461) (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443117))

(declare-fun b!7443123 () Bool)

(declare-fun e!4444483 () Bool)

(declare-fun tp!2152306 () Bool)

(declare-fun tp!2152304 () Bool)

(assert (=> b!7443123 (= e!4444483 (and tp!2152306 tp!2152304))))

(assert (=> b!7442803 (= tp!2152072 e!4444483)))

(declare-fun b!7443124 () Bool)

(declare-fun tp!2152302 () Bool)

(assert (=> b!7443124 (= e!4444483 tp!2152302)))

(declare-fun b!7443122 () Bool)

(assert (=> b!7443122 (= e!4444483 tp_is_empty!49181)))

(declare-fun b!7443125 () Bool)

(declare-fun tp!2152305 () Bool)

(declare-fun tp!2152303 () Bool)

(assert (=> b!7443125 (= e!4444483 (and tp!2152305 tp!2152303))))

(assert (= (and b!7442803 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443122))

(assert (= (and b!7442803 ((_ is Concat!28306) (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443123))

(assert (= (and b!7442803 ((_ is Star!19461) (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443124))

(assert (= (and b!7442803 ((_ is Union!19461) (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443125))

(declare-fun b!7443131 () Bool)

(declare-fun e!4444485 () Bool)

(declare-fun tp!2152316 () Bool)

(declare-fun tp!2152314 () Bool)

(assert (=> b!7443131 (= e!4444485 (and tp!2152316 tp!2152314))))

(assert (=> b!7442803 (= tp!2152070 e!4444485)))

(declare-fun b!7443132 () Bool)

(declare-fun tp!2152312 () Bool)

(assert (=> b!7443132 (= e!4444485 tp!2152312)))

(declare-fun b!7443130 () Bool)

(assert (=> b!7443130 (= e!4444485 tp_is_empty!49181)))

(declare-fun b!7443133 () Bool)

(declare-fun tp!2152315 () Bool)

(declare-fun tp!2152313 () Bool)

(assert (=> b!7443133 (= e!4444485 (and tp!2152315 tp!2152313))))

(assert (= (and b!7442803 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443130))

(assert (= (and b!7442803 ((_ is Concat!28306) (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443131))

(assert (= (and b!7442803 ((_ is Star!19461) (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443132))

(assert (= (and b!7442803 ((_ is Union!19461) (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) b!7443133))

(declare-fun b!7443138 () Bool)

(declare-fun e!4444487 () Bool)

(declare-fun tp!2152322 () Bool)

(assert (=> b!7443138 (= e!4444487 (and tp_is_empty!49181 tp!2152322))))

(assert (=> b!7442795 (= tp!2152063 e!4444487)))

(assert (= (and b!7442795 ((_ is Cons!72025) (t!386714 (t!386714 (t!386714 (t!386714 s!7945)))))) b!7443138))

(declare-fun b_lambda!287659 () Bool)

(assert (= b_lambda!287655 (or d!2295818 b_lambda!287659)))

(declare-fun bs!1926515 () Bool)

(declare-fun d!2296028 () Bool)

(assert (= bs!1926515 (and d!2296028 d!2295818)))

(assert (=> bs!1926515 (= (dynLambda!29737 lambda!460512 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))) (validRegex!9984 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))))

(declare-fun m!8054430 () Bool)

(assert (=> bs!1926515 m!8054430))

(assert (=> b!7442915 d!2296028))

(declare-fun b_lambda!287661 () Bool)

(assert (= b_lambda!287647 (or d!2295890 b_lambda!287661)))

(declare-fun bs!1926516 () Bool)

(declare-fun d!2296030 () Bool)

(assert (= bs!1926516 (and d!2296030 d!2295890)))

(assert (=> bs!1926516 (= (dynLambda!29737 lambda!460533 (h!78472 (exprs!8901 setElem!56635))) (validRegex!9984 (h!78472 (exprs!8901 setElem!56635))))))

(declare-fun m!8054432 () Bool)

(assert (=> bs!1926516 m!8054432))

(assert (=> b!7442843 d!2296030))

(declare-fun b_lambda!287663 () Bool)

(assert (= b_lambda!287643 (or d!2295822 b_lambda!287663)))

(declare-fun bs!1926517 () Bool)

(declare-fun d!2296032 () Bool)

(assert (= bs!1926517 (and d!2296032 d!2295822)))

(assert (=> bs!1926517 (= (dynLambda!29737 lambda!460515 (h!78472 (t!386713 (t!386713 (exprs!8901 lt!2619492))))) (nullable!8483 (h!78472 (t!386713 (t!386713 (exprs!8901 lt!2619492))))))))

(declare-fun m!8054434 () Bool)

(assert (=> bs!1926517 m!8054434))

(assert (=> b!7442819 d!2296032))

(declare-fun b_lambda!287665 () Bool)

(assert (= b_lambda!287645 (or d!2295858 b_lambda!287665)))

(declare-fun bs!1926518 () Bool)

(declare-fun d!2296034 () Bool)

(assert (= bs!1926518 (and d!2296034 d!2295858)))

(assert (=> bs!1926518 (= (dynLambda!29737 lambda!460529 (h!78472 (t!386713 (exprs!8901 setElem!56633)))) (validRegex!9984 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))))

(declare-fun m!8054436 () Bool)

(assert (=> bs!1926518 m!8054436))

(assert (=> b!7442841 d!2296034))

(check-sat (not b!7442983) (not b!7443102) (not b!7442963) (not b!7443125) (not b!7443080) (not b!7443063) (not b!7443031) (not b!7443107) (not b!7443018) (not b!7443058) (not bm!684168) (not b!7443029) (not b!7442975) (not b!7443131) (not b!7442986) (not bs!1926515) (not b!7443117) (not d!2295972) (not bs!1926517) (not b!7443022) (not b!7443019) (not b_lambda!287637) (not setNonEmpty!56644) (not b!7443078) (not bm!684195) (not b!7443074) (not b!7443007) (not b!7442979) (not b_lambda!287665) (not b!7442847) (not b!7443038) (not b!7443115) (not b!7443064) (not b!7443073) (not b!7443023) (not b!7443021) (not b!7442839) (not bm!684163) (not b!7443015) (not b!7442985) (not b!7443133) (not b!7443085) (not b_lambda!287641) (not d!2296016) (not d!2295986) (not b!7443076) (not b!7442999) (not b!7443110) (not b!7442823) (not b!7443014) (not b!7442968) (not b!7442992) (not b!7443111) (not b!7442982) (not b!7443138) (not b!7443025) (not b!7443106) (not b!7443132) (not b!7443039) (not b!7443000) (not b!7442844) (not d!2295936) (not b!7443017) (not b!7443049) (not b!7443030) (not b!7443061) (not b!7443053) (not b!7443008) (not b_lambda!287661) (not b!7443077) (not b!7443027) (not b!7442973) (not b!7442977) (not b!7442842) (not b!7443124) (not b!7443093) (not b!7443026) (not b!7443090) (not b!7443034) (not b!7443046) (not bm!684160) (not b!7443072) (not b!7443112) (not bs!1926518) (not d!2296014) (not b!7442964) (not b!7442840) (not d!2295946) (not b!7443054) (not d!2295948) (not b!7443116) (not bm!684180) (not b!7443066) (not b!7442974) (not b!7443082) (not b!7443104) (not bm!684166) (not b!7443101) (not b!7442987) (not b!7443059) (not b_lambda!287663) (not b!7443001) (not b!7443035) (not b!7443097) (not b_lambda!287659) (not b!7442994) (not b!7443050) (not bm!684178) (not b!7443055) (not b!7443047) (not b!7443004) (not b!7443103) (not bs!1926516) (not setNonEmpty!56640) (not b!7443041) (not b!7442914) (not b!7443108) (not b_lambda!287617) (not b!7442989) (not b!7443005) (not b!7442894) (not b!7442916) (not b!7442991) (not b!7442969) (not b!7443095) tp_is_empty!49181 (not b!7443009) (not b!7443086) (not b!7443013) (not b!7443037) (not b!7443099) (not b!7442889) (not b!7443123) (not b!7442832) (not b!7443042) (not d!2295942) (not d!2295962) (not b!7442978) (not bm!684162) (not b!7443094) (not b!7443051) (not b!7443067) (not d!2295938) (not b!7442995) (not b!7443003) (not b!7442965) (not b!7442990) (not b!7442967) (not b!7442981) (not b!7443091) (not b!7443033) (not b!7443043) (not b!7443098) (not b!7442820) (not b!7443068) (not b!7443087) (not b!7443113) (not bm!684194) (not b_lambda!287615) (not d!2295958) (not b!7443062) (not b!7443081) (not b!7443089) (not b!7443057) (not b_lambda!287639) (not b!7443045) (not b!7442997) (not bm!684165) (not b!7442996))
(check-sat)
(get-model)

(declare-fun d!2296044 () Bool)

(assert (=> d!2296044 (= (nullable!8483 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))) (nullableFct!3424 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))))

(declare-fun bs!1926523 () Bool)

(assert (= bs!1926523 d!2296044))

(declare-fun m!8054448 () Bool)

(assert (=> bs!1926523 m!8054448))

(assert (=> b!7442823 d!2296044))

(declare-fun b!7443285 () Bool)

(declare-fun e!4444534 () Bool)

(declare-fun e!4444533 () Bool)

(assert (=> b!7443285 (= e!4444534 e!4444533)))

(declare-fun res!2986965 () Bool)

(declare-fun call!684201 () Bool)

(assert (=> b!7443285 (= res!2986965 call!684201)))

(assert (=> b!7443285 (=> res!2986965 e!4444533)))

(declare-fun b!7443286 () Bool)

(declare-fun e!4444532 () Bool)

(declare-fun call!684202 () Bool)

(assert (=> b!7443286 (= e!4444532 call!684202)))

(declare-fun b!7443287 () Bool)

(assert (=> b!7443287 (= e!4444533 call!684202)))

(declare-fun b!7443288 () Bool)

(declare-fun e!4444531 () Bool)

(declare-fun e!4444530 () Bool)

(assert (=> b!7443288 (= e!4444531 e!4444530)))

(declare-fun res!2986963 () Bool)

(assert (=> b!7443288 (=> (not res!2986963) (not e!4444530))))

(assert (=> b!7443288 (= res!2986963 (and (not ((_ is EmptyLang!19461) (reg!19790 (h!78472 (exprs!8901 setElem!56627))))) (not ((_ is ElementMatch!19461) (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))))))

(declare-fun b!7443289 () Bool)

(assert (=> b!7443289 (= e!4444534 e!4444532)))

(declare-fun res!2986966 () Bool)

(assert (=> b!7443289 (= res!2986966 call!684201)))

(assert (=> b!7443289 (=> (not res!2986966) (not e!4444532))))

(declare-fun bm!684196 () Bool)

(declare-fun c!1377326 () Bool)

(assert (=> bm!684196 (= call!684202 (nullable!8483 (ite c!1377326 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))) (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))))))

(declare-fun b!7443290 () Bool)

(declare-fun e!4444529 () Bool)

(assert (=> b!7443290 (= e!4444530 e!4444529)))

(declare-fun res!2986962 () Bool)

(assert (=> b!7443290 (=> res!2986962 e!4444529)))

(assert (=> b!7443290 (= res!2986962 ((_ is Star!19461) (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))))

(declare-fun b!7443291 () Bool)

(assert (=> b!7443291 (= e!4444529 e!4444534)))

(assert (=> b!7443291 (= c!1377326 ((_ is Union!19461) (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))))

(declare-fun bm!684197 () Bool)

(assert (=> bm!684197 (= call!684201 (nullable!8483 (ite c!1377326 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))) (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))))))

(declare-fun d!2296046 () Bool)

(declare-fun res!2986964 () Bool)

(assert (=> d!2296046 (=> res!2986964 e!4444531)))

(assert (=> d!2296046 (= res!2986964 ((_ is EmptyExpr!19461) (reg!19790 (h!78472 (exprs!8901 setElem!56627)))))))

(assert (=> d!2296046 (= (nullableFct!3424 (reg!19790 (h!78472 (exprs!8901 setElem!56627)))) e!4444531)))

(assert (= (and d!2296046 (not res!2986964)) b!7443288))

(assert (= (and b!7443288 res!2986963) b!7443290))

(assert (= (and b!7443290 (not res!2986962)) b!7443291))

(assert (= (and b!7443291 c!1377326) b!7443285))

(assert (= (and b!7443291 (not c!1377326)) b!7443289))

(assert (= (and b!7443285 (not res!2986965)) b!7443287))

(assert (= (and b!7443289 res!2986966) b!7443286))

(assert (= (or b!7443285 b!7443289) bm!684197))

(assert (= (or b!7443287 b!7443286) bm!684196))

(declare-fun m!8054450 () Bool)

(assert (=> bm!684196 m!8054450))

(declare-fun m!8054452 () Bool)

(assert (=> bm!684197 m!8054452))

(assert (=> d!2296016 d!2296046))

(declare-fun bs!1926524 () Bool)

(declare-fun d!2296048 () Bool)

(assert (= bs!1926524 (and d!2296048 d!2295854)))

(declare-fun lambda!460548 () Int)

(assert (=> bs!1926524 (= lambda!460548 lambda!460528)))

(declare-fun bs!1926525 () Bool)

(assert (= bs!1926525 (and d!2296048 d!2295916)))

(assert (=> bs!1926525 (= lambda!460548 lambda!460534)))

(declare-fun bs!1926526 () Bool)

(assert (= bs!1926526 (and d!2296048 d!2295938)))

(assert (=> bs!1926526 (= lambda!460548 lambda!460536)))

(declare-fun bs!1926527 () Bool)

(assert (= bs!1926527 (and d!2296048 d!2295962)))

(assert (=> bs!1926527 (not (= lambda!460548 lambda!460541))))

(assert (=> d!2296048 (= (nullableZipper!3152 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) (head!15271 (tail!14850 (tail!14850 s!7945))))) (exists!4813 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) (head!15271 (tail!14850 (tail!14850 s!7945)))) lambda!460548))))

(declare-fun bs!1926528 () Bool)

(assert (= bs!1926528 d!2296048))

(assert (=> bs!1926528 m!8054244))

(declare-fun m!8054454 () Bool)

(assert (=> bs!1926528 m!8054454))

(assert (=> b!7442839 d!2296048))

(declare-fun d!2296050 () Bool)

(assert (=> d!2296050 (= (nullable!8483 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))) (nullableFct!3424 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))))

(declare-fun bs!1926529 () Bool)

(assert (= bs!1926529 d!2296050))

(declare-fun m!8054456 () Bool)

(assert (=> bs!1926529 m!8054456))

(assert (=> b!7442847 d!2296050))

(declare-fun d!2296052 () Bool)

(declare-fun c!1377327 () Bool)

(assert (=> d!2296052 (= c!1377327 (isEmpty!41085 (tail!14850 (tail!14850 (tail!14850 (tail!14850 s!7945))))))))

(declare-fun e!4444535 () Bool)

(assert (=> d!2296052 (= (matchZipper!3825 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) (head!15271 (tail!14850 (tail!14850 s!7945)))) (head!15271 (tail!14850 (tail!14850 (tail!14850 s!7945))))) (tail!14850 (tail!14850 (tail!14850 (tail!14850 s!7945))))) e!4444535)))

(declare-fun b!7443292 () Bool)

(assert (=> b!7443292 (= e!4444535 (nullableZipper!3152 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) (head!15271 (tail!14850 (tail!14850 s!7945)))) (head!15271 (tail!14850 (tail!14850 (tail!14850 s!7945)))))))))

(declare-fun b!7443293 () Bool)

(assert (=> b!7443293 (= e!4444535 (matchZipper!3825 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) (head!15271 (tail!14850 (tail!14850 s!7945)))) (head!15271 (tail!14850 (tail!14850 (tail!14850 s!7945))))) (head!15271 (tail!14850 (tail!14850 (tail!14850 (tail!14850 s!7945)))))) (tail!14850 (tail!14850 (tail!14850 (tail!14850 (tail!14850 s!7945)))))))))

(assert (= (and d!2296052 c!1377327) b!7443292))

(assert (= (and d!2296052 (not c!1377327)) b!7443293))

(assert (=> d!2296052 m!8054290))

(declare-fun m!8054458 () Bool)

(assert (=> d!2296052 m!8054458))

(assert (=> b!7443292 m!8054288))

(declare-fun m!8054460 () Bool)

(assert (=> b!7443292 m!8054460))

(assert (=> b!7443293 m!8054290))

(declare-fun m!8054462 () Bool)

(assert (=> b!7443293 m!8054462))

(assert (=> b!7443293 m!8054288))

(assert (=> b!7443293 m!8054462))

(declare-fun m!8054464 () Bool)

(assert (=> b!7443293 m!8054464))

(assert (=> b!7443293 m!8054290))

(declare-fun m!8054466 () Bool)

(assert (=> b!7443293 m!8054466))

(assert (=> b!7443293 m!8054464))

(assert (=> b!7443293 m!8054466))

(declare-fun m!8054468 () Bool)

(assert (=> b!7443293 m!8054468))

(assert (=> b!7442840 d!2296052))

(declare-fun bs!1926530 () Bool)

(declare-fun d!2296054 () Bool)

(assert (= bs!1926530 (and d!2296054 d!2295846)))

(declare-fun lambda!460549 () Int)

(assert (=> bs!1926530 (= (= (head!15271 (tail!14850 (tail!14850 (tail!14850 s!7945)))) (head!15271 s!7945)) (= lambda!460549 lambda!460525))))

(declare-fun bs!1926531 () Bool)

(assert (= bs!1926531 (and d!2296054 d!2295920)))

(assert (=> bs!1926531 (= (= (head!15271 (tail!14850 (tail!14850 (tail!14850 s!7945)))) (head!15271 (tail!14850 s!7945))) (= lambda!460549 lambda!460535))))

(declare-fun bs!1926532 () Bool)

(assert (= bs!1926532 (and d!2296054 d!2295948)))

(assert (=> bs!1926532 (= (= (head!15271 (tail!14850 (tail!14850 (tail!14850 s!7945)))) (head!15271 (tail!14850 (tail!14850 s!7945)))) (= lambda!460549 lambda!460538))))

(assert (=> d!2296054 true))

(assert (=> d!2296054 (= (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) (head!15271 (tail!14850 (tail!14850 s!7945)))) (head!15271 (tail!14850 (tail!14850 (tail!14850 s!7945))))) (flatMap!3239 (derivationStepZipper!3717 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) (head!15271 (tail!14850 (tail!14850 s!7945)))) lambda!460549))))

(declare-fun bs!1926533 () Bool)

(assert (= bs!1926533 d!2296054))

(assert (=> bs!1926533 m!8054244))

(declare-fun m!8054470 () Bool)

(assert (=> bs!1926533 m!8054470))

(assert (=> b!7442840 d!2296054))

(declare-fun d!2296056 () Bool)

(assert (=> d!2296056 (= (head!15271 (tail!14850 (tail!14850 (tail!14850 s!7945)))) (h!78473 (tail!14850 (tail!14850 (tail!14850 s!7945)))))))

(assert (=> b!7442840 d!2296056))

(declare-fun d!2296058 () Bool)

(assert (=> d!2296058 (= (tail!14850 (tail!14850 (tail!14850 (tail!14850 s!7945)))) (t!386714 (tail!14850 (tail!14850 (tail!14850 s!7945)))))))

(assert (=> b!7442840 d!2296058))

(declare-fun b!7443294 () Bool)

(declare-fun e!4444539 () Bool)

(declare-fun e!4444536 () Bool)

(assert (=> b!7443294 (= e!4444539 e!4444536)))

(declare-fun c!1377328 () Bool)

(assert (=> b!7443294 (= c!1377328 ((_ is Star!19461) (ite c!1377316 (reg!19790 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (ite c!1377317 (regOne!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regTwo!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))

(declare-fun b!7443295 () Bool)

(declare-fun res!2986967 () Bool)

(declare-fun e!4444541 () Bool)

(assert (=> b!7443295 (=> (not res!2986967) (not e!4444541))))

(declare-fun call!684204 () Bool)

(assert (=> b!7443295 (= res!2986967 call!684204)))

(declare-fun e!4444538 () Bool)

(assert (=> b!7443295 (= e!4444538 e!4444541)))

(declare-fun b!7443296 () Bool)

(declare-fun e!4444542 () Bool)

(assert (=> b!7443296 (= e!4444536 e!4444542)))

(declare-fun res!2986970 () Bool)

(assert (=> b!7443296 (= res!2986970 (not (nullable!8483 (reg!19790 (ite c!1377316 (reg!19790 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (ite c!1377317 (regOne!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regTwo!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))))

(assert (=> b!7443296 (=> (not res!2986970) (not e!4444542))))

(declare-fun b!7443297 () Bool)

(declare-fun e!4444537 () Bool)

(assert (=> b!7443297 (= e!4444537 call!684204)))

(declare-fun b!7443298 () Bool)

(declare-fun call!684205 () Bool)

(assert (=> b!7443298 (= e!4444541 call!684205)))

(declare-fun b!7443299 () Bool)

(declare-fun call!684203 () Bool)

(assert (=> b!7443299 (= e!4444542 call!684203)))

(declare-fun d!2296060 () Bool)

(declare-fun res!2986969 () Bool)

(assert (=> d!2296060 (=> res!2986969 e!4444539)))

(assert (=> d!2296060 (= res!2986969 ((_ is ElementMatch!19461) (ite c!1377316 (reg!19790 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (ite c!1377317 (regOne!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regTwo!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))

(assert (=> d!2296060 (= (validRegex!9984 (ite c!1377316 (reg!19790 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (ite c!1377317 (regOne!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regTwo!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))))) e!4444539)))

(declare-fun b!7443300 () Bool)

(declare-fun e!4444540 () Bool)

(assert (=> b!7443300 (= e!4444540 e!4444537)))

(declare-fun res!2986971 () Bool)

(assert (=> b!7443300 (=> (not res!2986971) (not e!4444537))))

(assert (=> b!7443300 (= res!2986971 call!684205)))

(declare-fun b!7443301 () Bool)

(assert (=> b!7443301 (= e!4444536 e!4444538)))

(declare-fun c!1377329 () Bool)

(assert (=> b!7443301 (= c!1377329 ((_ is Union!19461) (ite c!1377316 (reg!19790 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (ite c!1377317 (regOne!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regTwo!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))

(declare-fun bm!684198 () Bool)

(assert (=> bm!684198 (= call!684203 (validRegex!9984 (ite c!1377328 (reg!19790 (ite c!1377316 (reg!19790 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (ite c!1377317 (regOne!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regTwo!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))))) (ite c!1377329 (regOne!39435 (ite c!1377316 (reg!19790 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (ite c!1377317 (regOne!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regTwo!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))))) (regTwo!39434 (ite c!1377316 (reg!19790 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (ite c!1377317 (regOne!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regTwo!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))))))))))

(declare-fun bm!684199 () Bool)

(assert (=> bm!684199 (= call!684204 call!684203)))

(declare-fun b!7443302 () Bool)

(declare-fun res!2986968 () Bool)

(assert (=> b!7443302 (=> res!2986968 e!4444540)))

(assert (=> b!7443302 (= res!2986968 (not ((_ is Concat!28306) (ite c!1377316 (reg!19790 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (ite c!1377317 (regOne!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regTwo!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))))))))

(assert (=> b!7443302 (= e!4444538 e!4444540)))

(declare-fun bm!684200 () Bool)

(assert (=> bm!684200 (= call!684205 (validRegex!9984 (ite c!1377329 (regTwo!39435 (ite c!1377316 (reg!19790 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (ite c!1377317 (regOne!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regTwo!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))))) (regOne!39434 (ite c!1377316 (reg!19790 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (ite c!1377317 (regOne!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regTwo!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))))

(assert (= (and d!2296060 (not res!2986969)) b!7443294))

(assert (= (and b!7443294 c!1377328) b!7443296))

(assert (= (and b!7443294 (not c!1377328)) b!7443301))

(assert (= (and b!7443296 res!2986970) b!7443299))

(assert (= (and b!7443301 c!1377329) b!7443295))

(assert (= (and b!7443301 (not c!1377329)) b!7443302))

(assert (= (and b!7443295 res!2986967) b!7443298))

(assert (= (and b!7443302 (not res!2986968)) b!7443300))

(assert (= (and b!7443300 res!2986971) b!7443297))

(assert (= (or b!7443295 b!7443297) bm!684199))

(assert (= (or b!7443298 b!7443300) bm!684200))

(assert (= (or b!7443299 bm!684199) bm!684198))

(declare-fun m!8054472 () Bool)

(assert (=> b!7443296 m!8054472))

(declare-fun m!8054474 () Bool)

(assert (=> bm!684198 m!8054474))

(declare-fun m!8054476 () Bool)

(assert (=> bm!684200 m!8054476))

(assert (=> bm!684178 d!2296060))

(assert (=> d!2295986 d!2295962))

(assert (=> d!2295986 d!2295972))

(declare-fun d!2296062 () Bool)

(declare-fun res!2986972 () Bool)

(declare-fun e!4444543 () Bool)

(assert (=> d!2296062 (=> res!2986972 e!4444543)))

(assert (=> d!2296062 (= res!2986972 ((_ is Nil!72024) (t!386713 (t!386713 (t!386713 (exprs!8901 lt!2619492))))))))

(assert (=> d!2296062 (= (forall!18236 (t!386713 (t!386713 (t!386713 (exprs!8901 lt!2619492)))) lambda!460515) e!4444543)))

(declare-fun b!7443303 () Bool)

(declare-fun e!4444544 () Bool)

(assert (=> b!7443303 (= e!4444543 e!4444544)))

(declare-fun res!2986973 () Bool)

(assert (=> b!7443303 (=> (not res!2986973) (not e!4444544))))

(assert (=> b!7443303 (= res!2986973 (dynLambda!29737 lambda!460515 (h!78472 (t!386713 (t!386713 (t!386713 (exprs!8901 lt!2619492)))))))))

(declare-fun b!7443304 () Bool)

(assert (=> b!7443304 (= e!4444544 (forall!18236 (t!386713 (t!386713 (t!386713 (t!386713 (exprs!8901 lt!2619492))))) lambda!460515))))

(assert (= (and d!2296062 (not res!2986972)) b!7443303))

(assert (= (and b!7443303 res!2986973) b!7443304))

(declare-fun b_lambda!287675 () Bool)

(assert (=> (not b_lambda!287675) (not b!7443303)))

(declare-fun m!8054478 () Bool)

(assert (=> b!7443303 m!8054478))

(declare-fun m!8054480 () Bool)

(assert (=> b!7443304 m!8054480))

(assert (=> b!7442820 d!2296062))

(declare-fun bs!1926534 () Bool)

(declare-fun d!2296064 () Bool)

(assert (= bs!1926534 (and d!2296064 d!2295858)))

(declare-fun lambda!460550 () Int)

(assert (=> bs!1926534 (= lambda!460550 lambda!460529)))

(declare-fun bs!1926535 () Bool)

(assert (= bs!1926535 (and d!2296064 d!2295890)))

(assert (=> bs!1926535 (= lambda!460550 lambda!460533)))

(declare-fun bs!1926536 () Bool)

(assert (= bs!1926536 (and d!2296064 d!2295942)))

(assert (=> bs!1926536 (= lambda!460550 lambda!460537)))

(declare-fun bs!1926537 () Bool)

(assert (= bs!1926537 (and d!2296064 d!2295818)))

(assert (=> bs!1926537 (= lambda!460550 lambda!460512)))

(declare-fun bs!1926538 () Bool)

(assert (= bs!1926538 (and d!2296064 d!2295822)))

(assert (=> bs!1926538 (not (= lambda!460550 lambda!460515))))

(assert (=> d!2296064 (= (inv!92013 setElem!56640) (forall!18236 (exprs!8901 setElem!56640) lambda!460550))))

(declare-fun bs!1926539 () Bool)

(assert (= bs!1926539 d!2296064))

(declare-fun m!8054482 () Bool)

(assert (=> bs!1926539 m!8054482))

(assert (=> setNonEmpty!56640 d!2296064))

(declare-fun d!2296066 () Bool)

(declare-fun res!2986974 () Bool)

(declare-fun e!4444545 () Bool)

(assert (=> d!2296066 (=> res!2986974 e!4444545)))

(assert (=> d!2296066 (= res!2986974 ((_ is Nil!72024) (t!386713 (exprs!8901 setElem!56635))))))

(assert (=> d!2296066 (= (forall!18236 (t!386713 (exprs!8901 setElem!56635)) lambda!460533) e!4444545)))

(declare-fun b!7443305 () Bool)

(declare-fun e!4444546 () Bool)

(assert (=> b!7443305 (= e!4444545 e!4444546)))

(declare-fun res!2986975 () Bool)

(assert (=> b!7443305 (=> (not res!2986975) (not e!4444546))))

(assert (=> b!7443305 (= res!2986975 (dynLambda!29737 lambda!460533 (h!78472 (t!386713 (exprs!8901 setElem!56635)))))))

(declare-fun b!7443306 () Bool)

(assert (=> b!7443306 (= e!4444546 (forall!18236 (t!386713 (t!386713 (exprs!8901 setElem!56635))) lambda!460533))))

(assert (= (and d!2296066 (not res!2986974)) b!7443305))

(assert (= (and b!7443305 res!2986975) b!7443306))

(declare-fun b_lambda!287677 () Bool)

(assert (=> (not b_lambda!287677) (not b!7443305)))

(declare-fun m!8054484 () Bool)

(assert (=> b!7443305 m!8054484))

(declare-fun m!8054486 () Bool)

(assert (=> b!7443306 m!8054486))

(assert (=> b!7442844 d!2296066))

(declare-fun b!7443307 () Bool)

(declare-fun e!4444550 () Bool)

(declare-fun e!4444547 () Bool)

(assert (=> b!7443307 (= e!4444550 e!4444547)))

(declare-fun c!1377330 () Bool)

(assert (=> b!7443307 (= c!1377330 ((_ is Star!19461) (ite c!1377317 (regTwo!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regOne!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))))))

(declare-fun b!7443308 () Bool)

(declare-fun res!2986976 () Bool)

(declare-fun e!4444552 () Bool)

(assert (=> b!7443308 (=> (not res!2986976) (not e!4444552))))

(declare-fun call!684207 () Bool)

(assert (=> b!7443308 (= res!2986976 call!684207)))

(declare-fun e!4444549 () Bool)

(assert (=> b!7443308 (= e!4444549 e!4444552)))

(declare-fun b!7443309 () Bool)

(declare-fun e!4444553 () Bool)

(assert (=> b!7443309 (= e!4444547 e!4444553)))

(declare-fun res!2986979 () Bool)

(assert (=> b!7443309 (= res!2986979 (not (nullable!8483 (reg!19790 (ite c!1377317 (regTwo!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regOne!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))))))))

(assert (=> b!7443309 (=> (not res!2986979) (not e!4444553))))

(declare-fun b!7443310 () Bool)

(declare-fun e!4444548 () Bool)

(assert (=> b!7443310 (= e!4444548 call!684207)))

(declare-fun b!7443311 () Bool)

(declare-fun call!684208 () Bool)

(assert (=> b!7443311 (= e!4444552 call!684208)))

(declare-fun b!7443312 () Bool)

(declare-fun call!684206 () Bool)

(assert (=> b!7443312 (= e!4444553 call!684206)))

(declare-fun d!2296068 () Bool)

(declare-fun res!2986978 () Bool)

(assert (=> d!2296068 (=> res!2986978 e!4444550)))

(assert (=> d!2296068 (= res!2986978 ((_ is ElementMatch!19461) (ite c!1377317 (regTwo!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regOne!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))))))

(assert (=> d!2296068 (= (validRegex!9984 (ite c!1377317 (regTwo!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regOne!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) e!4444550)))

(declare-fun b!7443313 () Bool)

(declare-fun e!4444551 () Bool)

(assert (=> b!7443313 (= e!4444551 e!4444548)))

(declare-fun res!2986980 () Bool)

(assert (=> b!7443313 (=> (not res!2986980) (not e!4444548))))

(assert (=> b!7443313 (= res!2986980 call!684208)))

(declare-fun b!7443314 () Bool)

(assert (=> b!7443314 (= e!4444547 e!4444549)))

(declare-fun c!1377331 () Bool)

(assert (=> b!7443314 (= c!1377331 ((_ is Union!19461) (ite c!1377317 (regTwo!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regOne!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))))))

(declare-fun bm!684201 () Bool)

(assert (=> bm!684201 (= call!684206 (validRegex!9984 (ite c!1377330 (reg!19790 (ite c!1377317 (regTwo!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regOne!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) (ite c!1377331 (regOne!39435 (ite c!1377317 (regTwo!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regOne!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) (regTwo!39434 (ite c!1377317 (regTwo!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regOne!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))))

(declare-fun bm!684202 () Bool)

(assert (=> bm!684202 (= call!684207 call!684206)))

(declare-fun b!7443315 () Bool)

(declare-fun res!2986977 () Bool)

(assert (=> b!7443315 (=> res!2986977 e!4444551)))

(assert (=> b!7443315 (= res!2986977 (not ((_ is Concat!28306) (ite c!1377317 (regTwo!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regOne!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))

(assert (=> b!7443315 (= e!4444549 e!4444551)))

(declare-fun bm!684203 () Bool)

(assert (=> bm!684203 (= call!684208 (validRegex!9984 (ite c!1377331 (regTwo!39435 (ite c!1377317 (regTwo!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regOne!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) (regOne!39434 (ite c!1377317 (regTwo!39435 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))) (regOne!39434 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))))))))

(assert (= (and d!2296068 (not res!2986978)) b!7443307))

(assert (= (and b!7443307 c!1377330) b!7443309))

(assert (= (and b!7443307 (not c!1377330)) b!7443314))

(assert (= (and b!7443309 res!2986979) b!7443312))

(assert (= (and b!7443314 c!1377331) b!7443308))

(assert (= (and b!7443314 (not c!1377331)) b!7443315))

(assert (= (and b!7443308 res!2986976) b!7443311))

(assert (= (and b!7443315 (not res!2986977)) b!7443313))

(assert (= (and b!7443313 res!2986980) b!7443310))

(assert (= (or b!7443308 b!7443310) bm!684202))

(assert (= (or b!7443311 b!7443313) bm!684203))

(assert (= (or b!7443312 bm!684202) bm!684201))

(declare-fun m!8054488 () Bool)

(assert (=> b!7443309 m!8054488))

(declare-fun m!8054490 () Bool)

(assert (=> bm!684201 m!8054490))

(declare-fun m!8054492 () Bool)

(assert (=> bm!684203 m!8054492))

(assert (=> bm!684180 d!2296068))

(declare-fun b!7443316 () Bool)

(declare-fun e!4444557 () Bool)

(declare-fun e!4444554 () Bool)

(assert (=> b!7443316 (= e!4444557 e!4444554)))

(declare-fun c!1377332 () Bool)

(assert (=> b!7443316 (= c!1377332 ((_ is Star!19461) (ite c!1377304 (reg!19790 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (ite c!1377305 (regOne!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regTwo!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))))))))

(declare-fun b!7443317 () Bool)

(declare-fun res!2986981 () Bool)

(declare-fun e!4444559 () Bool)

(assert (=> b!7443317 (=> (not res!2986981) (not e!4444559))))

(declare-fun call!684210 () Bool)

(assert (=> b!7443317 (= res!2986981 call!684210)))

(declare-fun e!4444556 () Bool)

(assert (=> b!7443317 (= e!4444556 e!4444559)))

(declare-fun b!7443318 () Bool)

(declare-fun e!4444560 () Bool)

(assert (=> b!7443318 (= e!4444554 e!4444560)))

(declare-fun res!2986984 () Bool)

(assert (=> b!7443318 (= res!2986984 (not (nullable!8483 (reg!19790 (ite c!1377304 (reg!19790 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (ite c!1377305 (regOne!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regTwo!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))))))))))

(assert (=> b!7443318 (=> (not res!2986984) (not e!4444560))))

(declare-fun b!7443319 () Bool)

(declare-fun e!4444555 () Bool)

(assert (=> b!7443319 (= e!4444555 call!684210)))

(declare-fun b!7443320 () Bool)

(declare-fun call!684211 () Bool)

(assert (=> b!7443320 (= e!4444559 call!684211)))

(declare-fun b!7443321 () Bool)

(declare-fun call!684209 () Bool)

(assert (=> b!7443321 (= e!4444560 call!684209)))

(declare-fun d!2296070 () Bool)

(declare-fun res!2986983 () Bool)

(assert (=> d!2296070 (=> res!2986983 e!4444557)))

(assert (=> d!2296070 (= res!2986983 ((_ is ElementMatch!19461) (ite c!1377304 (reg!19790 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (ite c!1377305 (regOne!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regTwo!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))))))))

(assert (=> d!2296070 (= (validRegex!9984 (ite c!1377304 (reg!19790 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (ite c!1377305 (regOne!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regTwo!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))))) e!4444557)))

(declare-fun b!7443322 () Bool)

(declare-fun e!4444558 () Bool)

(assert (=> b!7443322 (= e!4444558 e!4444555)))

(declare-fun res!2986985 () Bool)

(assert (=> b!7443322 (=> (not res!2986985) (not e!4444555))))

(assert (=> b!7443322 (= res!2986985 call!684211)))

(declare-fun b!7443323 () Bool)

(assert (=> b!7443323 (= e!4444554 e!4444556)))

(declare-fun c!1377333 () Bool)

(assert (=> b!7443323 (= c!1377333 ((_ is Union!19461) (ite c!1377304 (reg!19790 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (ite c!1377305 (regOne!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regTwo!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))))))))

(declare-fun bm!684204 () Bool)

(assert (=> bm!684204 (= call!684209 (validRegex!9984 (ite c!1377332 (reg!19790 (ite c!1377304 (reg!19790 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (ite c!1377305 (regOne!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regTwo!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))))) (ite c!1377333 (regOne!39435 (ite c!1377304 (reg!19790 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (ite c!1377305 (regOne!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regTwo!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))))) (regTwo!39434 (ite c!1377304 (reg!19790 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (ite c!1377305 (regOne!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regTwo!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))))))

(declare-fun bm!684205 () Bool)

(assert (=> bm!684205 (= call!684210 call!684209)))

(declare-fun b!7443324 () Bool)

(declare-fun res!2986982 () Bool)

(assert (=> b!7443324 (=> res!2986982 e!4444558)))

(assert (=> b!7443324 (= res!2986982 (not ((_ is Concat!28306) (ite c!1377304 (reg!19790 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (ite c!1377305 (regOne!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regTwo!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))))

(assert (=> b!7443324 (= e!4444556 e!4444558)))

(declare-fun bm!684206 () Bool)

(assert (=> bm!684206 (= call!684211 (validRegex!9984 (ite c!1377333 (regTwo!39435 (ite c!1377304 (reg!19790 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (ite c!1377305 (regOne!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regTwo!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))))) (regOne!39434 (ite c!1377304 (reg!19790 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (ite c!1377305 (regOne!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regTwo!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))))))))))

(assert (= (and d!2296070 (not res!2986983)) b!7443316))

(assert (= (and b!7443316 c!1377332) b!7443318))

(assert (= (and b!7443316 (not c!1377332)) b!7443323))

(assert (= (and b!7443318 res!2986984) b!7443321))

(assert (= (and b!7443323 c!1377333) b!7443317))

(assert (= (and b!7443323 (not c!1377333)) b!7443324))

(assert (= (and b!7443317 res!2986981) b!7443320))

(assert (= (and b!7443324 (not res!2986982)) b!7443322))

(assert (= (and b!7443322 res!2986985) b!7443319))

(assert (= (or b!7443317 b!7443319) bm!684205))

(assert (= (or b!7443320 b!7443322) bm!684206))

(assert (= (or b!7443321 bm!684205) bm!684204))

(declare-fun m!8054494 () Bool)

(assert (=> b!7443318 m!8054494))

(declare-fun m!8054496 () Bool)

(assert (=> bm!684204 m!8054496))

(declare-fun m!8054498 () Bool)

(assert (=> bm!684206 m!8054498))

(assert (=> bm!684163 d!2296070))

(declare-fun d!2296072 () Bool)

(assert (=> d!2296072 (= (nullable!8483 (reg!19790 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))) (nullableFct!3424 (reg!19790 (ite c!1377300 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))) (regOne!39434 (h!78472 (exprs!8901 setElem!56627)))))))))

(declare-fun bs!1926540 () Bool)

(assert (= bs!1926540 d!2296072))

(declare-fun m!8054500 () Bool)

(assert (=> bs!1926540 m!8054500))

(assert (=> b!7442894 d!2296072))

(declare-fun d!2296074 () Bool)

(assert (=> d!2296074 true))

(declare-fun setRes!56646 () Bool)

(assert (=> d!2296074 setRes!56646))

(declare-fun condSetEmpty!56646 () Bool)

(declare-fun res!2986986 () (InoxSet Context!16802))

(assert (=> d!2296074 (= condSetEmpty!56646 (= res!2986986 ((as const (Array Context!16802 Bool)) false)))))

(assert (=> d!2296074 (= (choose!57535 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) lambda!460535) res!2986986)))

(declare-fun setIsEmpty!56646 () Bool)

(assert (=> setIsEmpty!56646 setRes!56646))

(declare-fun tp!2152509 () Bool)

(declare-fun e!4444561 () Bool)

(declare-fun setNonEmpty!56646 () Bool)

(declare-fun setElem!56646 () Context!16802)

(assert (=> setNonEmpty!56646 (= setRes!56646 (and tp!2152509 (inv!92013 setElem!56646) e!4444561))))

(declare-fun setRest!56646 () (InoxSet Context!16802))

(assert (=> setNonEmpty!56646 (= res!2986986 ((_ map or) (store ((as const (Array Context!16802 Bool)) false) setElem!56646 true) setRest!56646))))

(declare-fun b!7443325 () Bool)

(declare-fun tp!2152510 () Bool)

(assert (=> b!7443325 (= e!4444561 tp!2152510)))

(assert (= (and d!2296074 condSetEmpty!56646) setIsEmpty!56646))

(assert (= (and d!2296074 (not condSetEmpty!56646)) setNonEmpty!56646))

(assert (= setNonEmpty!56646 b!7443325))

(declare-fun m!8054502 () Bool)

(assert (=> setNonEmpty!56646 m!8054502))

(assert (=> d!2296014 d!2296074))

(declare-fun d!2296076 () Bool)

(declare-fun res!2986991 () Bool)

(declare-fun e!4444566 () Bool)

(assert (=> d!2296076 (=> res!2986991 e!4444566)))

(assert (=> d!2296076 (= res!2986991 ((_ is Nil!72027) (toList!11794 z!3488)))))

(assert (=> d!2296076 (= (forall!18237 (toList!11794 z!3488) lambda!460541) e!4444566)))

(declare-fun b!7443330 () Bool)

(declare-fun e!4444567 () Bool)

(assert (=> b!7443330 (= e!4444566 e!4444567)))

(declare-fun res!2986992 () Bool)

(assert (=> b!7443330 (=> (not res!2986992) (not e!4444567))))

(declare-fun dynLambda!29740 (Int Context!16802) Bool)

(assert (=> b!7443330 (= res!2986992 (dynLambda!29740 lambda!460541 (h!78475 (toList!11794 z!3488))))))

(declare-fun b!7443331 () Bool)

(assert (=> b!7443331 (= e!4444567 (forall!18237 (t!386716 (toList!11794 z!3488)) lambda!460541))))

(assert (= (and d!2296076 (not res!2986991)) b!7443330))

(assert (= (and b!7443330 res!2986992) b!7443331))

(declare-fun b_lambda!287679 () Bool)

(assert (=> (not b_lambda!287679) (not b!7443330)))

(declare-fun m!8054504 () Bool)

(assert (=> b!7443330 m!8054504))

(declare-fun m!8054506 () Bool)

(assert (=> b!7443331 m!8054506))

(assert (=> d!2295962 d!2296076))

(declare-fun b!7443332 () Bool)

(declare-fun e!4444571 () Bool)

(declare-fun e!4444568 () Bool)

(assert (=> b!7443332 (= e!4444571 e!4444568)))

(declare-fun c!1377334 () Bool)

(assert (=> b!7443332 (= c!1377334 ((_ is Star!19461) (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))))

(declare-fun b!7443333 () Bool)

(declare-fun res!2986993 () Bool)

(declare-fun e!4444573 () Bool)

(assert (=> b!7443333 (=> (not res!2986993) (not e!4444573))))

(declare-fun call!684213 () Bool)

(assert (=> b!7443333 (= res!2986993 call!684213)))

(declare-fun e!4444570 () Bool)

(assert (=> b!7443333 (= e!4444570 e!4444573)))

(declare-fun b!7443334 () Bool)

(declare-fun e!4444574 () Bool)

(assert (=> b!7443334 (= e!4444568 e!4444574)))

(declare-fun res!2986996 () Bool)

(assert (=> b!7443334 (= res!2986996 (not (nullable!8483 (reg!19790 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))))))

(assert (=> b!7443334 (=> (not res!2986996) (not e!4444574))))

(declare-fun b!7443335 () Bool)

(declare-fun e!4444569 () Bool)

(assert (=> b!7443335 (= e!4444569 call!684213)))

(declare-fun b!7443336 () Bool)

(declare-fun call!684214 () Bool)

(assert (=> b!7443336 (= e!4444573 call!684214)))

(declare-fun b!7443337 () Bool)

(declare-fun call!684212 () Bool)

(assert (=> b!7443337 (= e!4444574 call!684212)))

(declare-fun d!2296078 () Bool)

(declare-fun res!2986995 () Bool)

(assert (=> d!2296078 (=> res!2986995 e!4444571)))

(assert (=> d!2296078 (= res!2986995 ((_ is ElementMatch!19461) (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))))

(assert (=> d!2296078 (= (validRegex!9984 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))) e!4444571)))

(declare-fun b!7443338 () Bool)

(declare-fun e!4444572 () Bool)

(assert (=> b!7443338 (= e!4444572 e!4444569)))

(declare-fun res!2986997 () Bool)

(assert (=> b!7443338 (=> (not res!2986997) (not e!4444569))))

(assert (=> b!7443338 (= res!2986997 call!684214)))

(declare-fun b!7443339 () Bool)

(assert (=> b!7443339 (= e!4444568 e!4444570)))

(declare-fun c!1377335 () Bool)

(assert (=> b!7443339 (= c!1377335 ((_ is Union!19461) (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))))

(declare-fun bm!684207 () Bool)

(assert (=> bm!684207 (= call!684212 (validRegex!9984 (ite c!1377334 (reg!19790 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))) (ite c!1377335 (regOne!39435 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))) (regTwo!39434 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627)))))))))))

(declare-fun bm!684208 () Bool)

(assert (=> bm!684208 (= call!684213 call!684212)))

(declare-fun b!7443340 () Bool)

(declare-fun res!2986994 () Bool)

(assert (=> b!7443340 (=> res!2986994 e!4444572)))

(assert (=> b!7443340 (= res!2986994 (not ((_ is Concat!28306) (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627)))))))))

(assert (=> b!7443340 (= e!4444570 e!4444572)))

(declare-fun bm!684209 () Bool)

(assert (=> bm!684209 (= call!684214 (validRegex!9984 (ite c!1377335 (regTwo!39435 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))) (regOne!39434 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))))))

(assert (= (and d!2296078 (not res!2986995)) b!7443332))

(assert (= (and b!7443332 c!1377334) b!7443334))

(assert (= (and b!7443332 (not c!1377334)) b!7443339))

(assert (= (and b!7443334 res!2986996) b!7443337))

(assert (= (and b!7443339 c!1377335) b!7443333))

(assert (= (and b!7443339 (not c!1377335)) b!7443340))

(assert (= (and b!7443333 res!2986993) b!7443336))

(assert (= (and b!7443340 (not res!2986994)) b!7443338))

(assert (= (and b!7443338 res!2986997) b!7443335))

(assert (= (or b!7443333 b!7443335) bm!684208))

(assert (= (or b!7443336 b!7443338) bm!684209))

(assert (= (or b!7443337 bm!684208) bm!684207))

(declare-fun m!8054508 () Bool)

(assert (=> b!7443334 m!8054508))

(declare-fun m!8054510 () Bool)

(assert (=> bm!684207 m!8054510))

(declare-fun m!8054512 () Bool)

(assert (=> bm!684209 m!8054512))

(assert (=> bs!1926515 d!2296078))

(declare-fun d!2296080 () Bool)

(assert (=> d!2296080 (= (nullable!8483 (reg!19790 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) (nullableFct!3424 (reg!19790 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))))))

(declare-fun bs!1926541 () Bool)

(assert (= bs!1926541 d!2296080))

(declare-fun m!8054514 () Bool)

(assert (=> bs!1926541 m!8054514))

(assert (=> b!7442832 d!2296080))

(declare-fun d!2296082 () Bool)

(assert (=> d!2296082 (= (isEmpty!41085 (tail!14850 (tail!14850 (tail!14850 s!7945)))) ((_ is Nil!72025) (tail!14850 (tail!14850 (tail!14850 s!7945)))))))

(assert (=> d!2295946 d!2296082))

(declare-fun b!7443341 () Bool)

(declare-fun e!4444578 () Bool)

(declare-fun e!4444575 () Bool)

(assert (=> b!7443341 (= e!4444578 e!4444575)))

(declare-fun c!1377336 () Bool)

(assert (=> b!7443341 (= c!1377336 ((_ is Star!19461) (h!78472 (t!386713 (exprs!8901 setElem!56633)))))))

(declare-fun b!7443342 () Bool)

(declare-fun res!2986998 () Bool)

(declare-fun e!4444580 () Bool)

(assert (=> b!7443342 (=> (not res!2986998) (not e!4444580))))

(declare-fun call!684216 () Bool)

(assert (=> b!7443342 (= res!2986998 call!684216)))

(declare-fun e!4444577 () Bool)

(assert (=> b!7443342 (= e!4444577 e!4444580)))

(declare-fun b!7443343 () Bool)

(declare-fun e!4444581 () Bool)

(assert (=> b!7443343 (= e!4444575 e!4444581)))

(declare-fun res!2987001 () Bool)

(assert (=> b!7443343 (= res!2987001 (not (nullable!8483 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))))))

(assert (=> b!7443343 (=> (not res!2987001) (not e!4444581))))

(declare-fun b!7443344 () Bool)

(declare-fun e!4444576 () Bool)

(assert (=> b!7443344 (= e!4444576 call!684216)))

(declare-fun b!7443345 () Bool)

(declare-fun call!684217 () Bool)

(assert (=> b!7443345 (= e!4444580 call!684217)))

(declare-fun b!7443346 () Bool)

(declare-fun call!684215 () Bool)

(assert (=> b!7443346 (= e!4444581 call!684215)))

(declare-fun d!2296084 () Bool)

(declare-fun res!2987000 () Bool)

(assert (=> d!2296084 (=> res!2987000 e!4444578)))

(assert (=> d!2296084 (= res!2987000 ((_ is ElementMatch!19461) (h!78472 (t!386713 (exprs!8901 setElem!56633)))))))

(assert (=> d!2296084 (= (validRegex!9984 (h!78472 (t!386713 (exprs!8901 setElem!56633)))) e!4444578)))

(declare-fun b!7443347 () Bool)

(declare-fun e!4444579 () Bool)

(assert (=> b!7443347 (= e!4444579 e!4444576)))

(declare-fun res!2987002 () Bool)

(assert (=> b!7443347 (=> (not res!2987002) (not e!4444576))))

(assert (=> b!7443347 (= res!2987002 call!684217)))

(declare-fun b!7443348 () Bool)

(assert (=> b!7443348 (= e!4444575 e!4444577)))

(declare-fun c!1377337 () Bool)

(assert (=> b!7443348 (= c!1377337 ((_ is Union!19461) (h!78472 (t!386713 (exprs!8901 setElem!56633)))))))

(declare-fun bm!684210 () Bool)

(assert (=> bm!684210 (= call!684215 (validRegex!9984 (ite c!1377336 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56633)))) (ite c!1377337 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56633)))) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56633))))))))))

(declare-fun bm!684211 () Bool)

(assert (=> bm!684211 (= call!684216 call!684215)))

(declare-fun b!7443349 () Bool)

(declare-fun res!2986999 () Bool)

(assert (=> b!7443349 (=> res!2986999 e!4444579)))

(assert (=> b!7443349 (= res!2986999 (not ((_ is Concat!28306) (h!78472 (t!386713 (exprs!8901 setElem!56633))))))))

(assert (=> b!7443349 (= e!4444577 e!4444579)))

(declare-fun bm!684212 () Bool)

(assert (=> bm!684212 (= call!684217 (validRegex!9984 (ite c!1377337 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56633)))) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))))))

(assert (= (and d!2296084 (not res!2987000)) b!7443341))

(assert (= (and b!7443341 c!1377336) b!7443343))

(assert (= (and b!7443341 (not c!1377336)) b!7443348))

(assert (= (and b!7443343 res!2987001) b!7443346))

(assert (= (and b!7443348 c!1377337) b!7443342))

(assert (= (and b!7443348 (not c!1377337)) b!7443349))

(assert (= (and b!7443342 res!2986998) b!7443345))

(assert (= (and b!7443349 (not res!2986999)) b!7443347))

(assert (= (and b!7443347 res!2987002) b!7443344))

(assert (= (or b!7443342 b!7443344) bm!684211))

(assert (= (or b!7443345 b!7443347) bm!684212))

(assert (= (or b!7443346 bm!684211) bm!684210))

(declare-fun m!8054516 () Bool)

(assert (=> b!7443343 m!8054516))

(declare-fun m!8054518 () Bool)

(assert (=> bm!684210 m!8054518))

(declare-fun m!8054520 () Bool)

(assert (=> bm!684212 m!8054520))

(assert (=> bs!1926518 d!2296084))

(declare-fun b!7443350 () Bool)

(declare-fun e!4444587 () Bool)

(declare-fun e!4444586 () Bool)

(assert (=> b!7443350 (= e!4444587 e!4444586)))

(declare-fun res!2987006 () Bool)

(declare-fun call!684218 () Bool)

(assert (=> b!7443350 (= res!2987006 call!684218)))

(assert (=> b!7443350 (=> res!2987006 e!4444586)))

(declare-fun b!7443351 () Bool)

(declare-fun e!4444585 () Bool)

(declare-fun call!684219 () Bool)

(assert (=> b!7443351 (= e!4444585 call!684219)))

(declare-fun b!7443352 () Bool)

(assert (=> b!7443352 (= e!4444586 call!684219)))

(declare-fun b!7443353 () Bool)

(declare-fun e!4444584 () Bool)

(declare-fun e!4444583 () Bool)

(assert (=> b!7443353 (= e!4444584 e!4444583)))

(declare-fun res!2987004 () Bool)

(assert (=> b!7443353 (=> (not res!2987004) (not e!4444583))))

(assert (=> b!7443353 (= res!2987004 (and (not ((_ is EmptyLang!19461) (h!78472 (t!386713 (exprs!8901 lt!2619492))))) (not ((_ is ElementMatch!19461) (h!78472 (t!386713 (exprs!8901 lt!2619492)))))))))

(declare-fun b!7443354 () Bool)

(assert (=> b!7443354 (= e!4444587 e!4444585)))

(declare-fun res!2987007 () Bool)

(assert (=> b!7443354 (= res!2987007 call!684218)))

(assert (=> b!7443354 (=> (not res!2987007) (not e!4444585))))

(declare-fun bm!684213 () Bool)

(declare-fun c!1377338 () Bool)

(assert (=> bm!684213 (= call!684219 (nullable!8483 (ite c!1377338 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 lt!2619492)))) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 lt!2619492)))))))))

(declare-fun b!7443355 () Bool)

(declare-fun e!4444582 () Bool)

(assert (=> b!7443355 (= e!4444583 e!4444582)))

(declare-fun res!2987003 () Bool)

(assert (=> b!7443355 (=> res!2987003 e!4444582)))

(assert (=> b!7443355 (= res!2987003 ((_ is Star!19461) (h!78472 (t!386713 (exprs!8901 lt!2619492)))))))

(declare-fun b!7443356 () Bool)

(assert (=> b!7443356 (= e!4444582 e!4444587)))

(assert (=> b!7443356 (= c!1377338 ((_ is Union!19461) (h!78472 (t!386713 (exprs!8901 lt!2619492)))))))

(declare-fun bm!684214 () Bool)

(assert (=> bm!684214 (= call!684218 (nullable!8483 (ite c!1377338 (regOne!39435 (h!78472 (t!386713 (exprs!8901 lt!2619492)))) (regOne!39434 (h!78472 (t!386713 (exprs!8901 lt!2619492)))))))))

(declare-fun d!2296086 () Bool)

(declare-fun res!2987005 () Bool)

(assert (=> d!2296086 (=> res!2987005 e!4444584)))

(assert (=> d!2296086 (= res!2987005 ((_ is EmptyExpr!19461) (h!78472 (t!386713 (exprs!8901 lt!2619492)))))))

(assert (=> d!2296086 (= (nullableFct!3424 (h!78472 (t!386713 (exprs!8901 lt!2619492)))) e!4444584)))

(assert (= (and d!2296086 (not res!2987005)) b!7443353))

(assert (= (and b!7443353 res!2987004) b!7443355))

(assert (= (and b!7443355 (not res!2987003)) b!7443356))

(assert (= (and b!7443356 c!1377338) b!7443350))

(assert (= (and b!7443356 (not c!1377338)) b!7443354))

(assert (= (and b!7443350 (not res!2987006)) b!7443352))

(assert (= (and b!7443354 res!2987007) b!7443351))

(assert (= (or b!7443350 b!7443354) bm!684214))

(assert (= (or b!7443352 b!7443351) bm!684213))

(declare-fun m!8054522 () Bool)

(assert (=> bm!684213 m!8054522))

(declare-fun m!8054524 () Bool)

(assert (=> bm!684214 m!8054524))

(assert (=> d!2295936 d!2296086))

(declare-fun d!2296088 () Bool)

(assert (=> d!2296088 (= (nullable!8483 (ite c!1377325 (regOne!39435 (h!78472 (exprs!8901 lt!2619492))) (regOne!39434 (h!78472 (exprs!8901 lt!2619492))))) (nullableFct!3424 (ite c!1377325 (regOne!39435 (h!78472 (exprs!8901 lt!2619492))) (regOne!39434 (h!78472 (exprs!8901 lt!2619492))))))))

(declare-fun bs!1926542 () Bool)

(assert (= bs!1926542 d!2296088))

(declare-fun m!8054526 () Bool)

(assert (=> bs!1926542 m!8054526))

(assert (=> bm!684195 d!2296088))

(declare-fun bs!1926543 () Bool)

(declare-fun d!2296090 () Bool)

(assert (= bs!1926543 (and d!2296090 d!2296064)))

(declare-fun lambda!460551 () Int)

(assert (=> bs!1926543 (= lambda!460551 lambda!460550)))

(declare-fun bs!1926544 () Bool)

(assert (= bs!1926544 (and d!2296090 d!2295858)))

(assert (=> bs!1926544 (= lambda!460551 lambda!460529)))

(declare-fun bs!1926545 () Bool)

(assert (= bs!1926545 (and d!2296090 d!2295890)))

(assert (=> bs!1926545 (= lambda!460551 lambda!460533)))

(declare-fun bs!1926546 () Bool)

(assert (= bs!1926546 (and d!2296090 d!2295942)))

(assert (=> bs!1926546 (= lambda!460551 lambda!460537)))

(declare-fun bs!1926547 () Bool)

(assert (= bs!1926547 (and d!2296090 d!2295818)))

(assert (=> bs!1926547 (= lambda!460551 lambda!460512)))

(declare-fun bs!1926548 () Bool)

(assert (= bs!1926548 (and d!2296090 d!2295822)))

(assert (=> bs!1926548 (not (= lambda!460551 lambda!460515))))

(assert (=> d!2296090 (= (inv!92013 setElem!56644) (forall!18236 (exprs!8901 setElem!56644) lambda!460551))))

(declare-fun bs!1926549 () Bool)

(assert (= bs!1926549 d!2296090))

(declare-fun m!8054528 () Bool)

(assert (=> bs!1926549 m!8054528))

(assert (=> setNonEmpty!56644 d!2296090))

(declare-fun bs!1926550 () Bool)

(declare-fun d!2296092 () Bool)

(assert (= bs!1926550 (and d!2296092 d!2296048)))

(declare-fun lambda!460552 () Int)

(assert (=> bs!1926550 (not (= lambda!460552 lambda!460548))))

(declare-fun bs!1926551 () Bool)

(assert (= bs!1926551 (and d!2296092 d!2295938)))

(assert (=> bs!1926551 (not (= lambda!460552 lambda!460536))))

(declare-fun bs!1926552 () Bool)

(assert (= bs!1926552 (and d!2296092 d!2295962)))

(assert (=> bs!1926552 (= (= lambda!460534 lambda!460528) (= lambda!460552 lambda!460541))))

(declare-fun bs!1926553 () Bool)

(assert (= bs!1926553 (and d!2296092 d!2295854)))

(assert (=> bs!1926553 (not (= lambda!460552 lambda!460528))))

(declare-fun bs!1926554 () Bool)

(assert (= bs!1926554 (and d!2296092 d!2295916)))

(assert (=> bs!1926554 (not (= lambda!460552 lambda!460534))))

(assert (=> d!2296092 true))

(assert (=> d!2296092 (< (dynLambda!29738 order!29597 lambda!460534) (dynLambda!29738 order!29597 lambda!460552))))

(assert (=> d!2296092 (= (exists!4815 (toList!11794 (derivationStepZipper!3717 z!3488 (head!15271 s!7945))) lambda!460534) (not (forall!18237 (toList!11794 (derivationStepZipper!3717 z!3488 (head!15271 s!7945))) lambda!460552)))))

(declare-fun bs!1926555 () Bool)

(assert (= bs!1926555 d!2296092))

(assert (=> bs!1926555 m!8054304))

(declare-fun m!8054530 () Bool)

(assert (=> bs!1926555 m!8054530))

(assert (=> d!2295958 d!2296092))

(declare-fun d!2296094 () Bool)

(declare-fun e!4444588 () Bool)

(assert (=> d!2296094 e!4444588))

(declare-fun res!2987008 () Bool)

(assert (=> d!2296094 (=> (not res!2987008) (not e!4444588))))

(declare-fun lt!2619507 () List!72151)

(assert (=> d!2296094 (= res!2987008 (noDuplicate!3126 lt!2619507))))

(assert (=> d!2296094 (= lt!2619507 (choose!57537 (derivationStepZipper!3717 z!3488 (head!15271 s!7945))))))

(assert (=> d!2296094 (= (toList!11794 (derivationStepZipper!3717 z!3488 (head!15271 s!7945))) lt!2619507)))

(declare-fun b!7443357 () Bool)

(assert (=> b!7443357 (= e!4444588 (= (content!15238 lt!2619507) (derivationStepZipper!3717 z!3488 (head!15271 s!7945))))))

(assert (= (and d!2296094 res!2987008) b!7443357))

(declare-fun m!8054532 () Bool)

(assert (=> d!2296094 m!8054532))

(assert (=> d!2296094 m!8054070))

(declare-fun m!8054534 () Bool)

(assert (=> d!2296094 m!8054534))

(declare-fun m!8054536 () Bool)

(assert (=> b!7443357 m!8054536))

(assert (=> d!2295958 d!2296094))

(declare-fun d!2296096 () Bool)

(declare-fun res!2987009 () Bool)

(assert (=> d!2296096 (= res!2987009 (exists!4815 (toList!11794 (derivationStepZipper!3717 z!3488 (head!15271 s!7945))) lambda!460534))))

(assert (=> d!2296096 true))

(assert (=> d!2296096 (= (choose!57534 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) lambda!460534) res!2987009)))

(declare-fun bs!1926556 () Bool)

(assert (= bs!1926556 d!2296096))

(assert (=> bs!1926556 m!8054070))

(assert (=> bs!1926556 m!8054304))

(assert (=> bs!1926556 m!8054304))

(assert (=> bs!1926556 m!8054306))

(assert (=> d!2295958 d!2296096))

(declare-fun b!7443358 () Bool)

(declare-fun e!4444592 () Bool)

(declare-fun e!4444589 () Bool)

(assert (=> b!7443358 (= e!4444592 e!4444589)))

(declare-fun c!1377339 () Bool)

(assert (=> b!7443358 (= c!1377339 ((_ is Star!19461) (h!78472 (exprs!8901 setElem!56635))))))

(declare-fun b!7443359 () Bool)

(declare-fun res!2987010 () Bool)

(declare-fun e!4444594 () Bool)

(assert (=> b!7443359 (=> (not res!2987010) (not e!4444594))))

(declare-fun call!684221 () Bool)

(assert (=> b!7443359 (= res!2987010 call!684221)))

(declare-fun e!4444591 () Bool)

(assert (=> b!7443359 (= e!4444591 e!4444594)))

(declare-fun b!7443360 () Bool)

(declare-fun e!4444595 () Bool)

(assert (=> b!7443360 (= e!4444589 e!4444595)))

(declare-fun res!2987013 () Bool)

(assert (=> b!7443360 (= res!2987013 (not (nullable!8483 (reg!19790 (h!78472 (exprs!8901 setElem!56635))))))))

(assert (=> b!7443360 (=> (not res!2987013) (not e!4444595))))

(declare-fun b!7443361 () Bool)

(declare-fun e!4444590 () Bool)

(assert (=> b!7443361 (= e!4444590 call!684221)))

(declare-fun b!7443362 () Bool)

(declare-fun call!684222 () Bool)

(assert (=> b!7443362 (= e!4444594 call!684222)))

(declare-fun b!7443363 () Bool)

(declare-fun call!684220 () Bool)

(assert (=> b!7443363 (= e!4444595 call!684220)))

(declare-fun d!2296098 () Bool)

(declare-fun res!2987012 () Bool)

(assert (=> d!2296098 (=> res!2987012 e!4444592)))

(assert (=> d!2296098 (= res!2987012 ((_ is ElementMatch!19461) (h!78472 (exprs!8901 setElem!56635))))))

(assert (=> d!2296098 (= (validRegex!9984 (h!78472 (exprs!8901 setElem!56635))) e!4444592)))

(declare-fun b!7443364 () Bool)

(declare-fun e!4444593 () Bool)

(assert (=> b!7443364 (= e!4444593 e!4444590)))

(declare-fun res!2987014 () Bool)

(assert (=> b!7443364 (=> (not res!2987014) (not e!4444590))))

(assert (=> b!7443364 (= res!2987014 call!684222)))

(declare-fun b!7443365 () Bool)

(assert (=> b!7443365 (= e!4444589 e!4444591)))

(declare-fun c!1377340 () Bool)

(assert (=> b!7443365 (= c!1377340 ((_ is Union!19461) (h!78472 (exprs!8901 setElem!56635))))))

(declare-fun bm!684215 () Bool)

(assert (=> bm!684215 (= call!684220 (validRegex!9984 (ite c!1377339 (reg!19790 (h!78472 (exprs!8901 setElem!56635))) (ite c!1377340 (regOne!39435 (h!78472 (exprs!8901 setElem!56635))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56635)))))))))

(declare-fun bm!684216 () Bool)

(assert (=> bm!684216 (= call!684221 call!684220)))

(declare-fun b!7443366 () Bool)

(declare-fun res!2987011 () Bool)

(assert (=> b!7443366 (=> res!2987011 e!4444593)))

(assert (=> b!7443366 (= res!2987011 (not ((_ is Concat!28306) (h!78472 (exprs!8901 setElem!56635)))))))

(assert (=> b!7443366 (= e!4444591 e!4444593)))

(declare-fun bm!684217 () Bool)

(assert (=> bm!684217 (= call!684222 (validRegex!9984 (ite c!1377340 (regTwo!39435 (h!78472 (exprs!8901 setElem!56635))) (regOne!39434 (h!78472 (exprs!8901 setElem!56635))))))))

(assert (= (and d!2296098 (not res!2987012)) b!7443358))

(assert (= (and b!7443358 c!1377339) b!7443360))

(assert (= (and b!7443358 (not c!1377339)) b!7443365))

(assert (= (and b!7443360 res!2987013) b!7443363))

(assert (= (and b!7443365 c!1377340) b!7443359))

(assert (= (and b!7443365 (not c!1377340)) b!7443366))

(assert (= (and b!7443359 res!2987010) b!7443362))

(assert (= (and b!7443366 (not res!2987011)) b!7443364))

(assert (= (and b!7443364 res!2987014) b!7443361))

(assert (= (or b!7443359 b!7443361) bm!684216))

(assert (= (or b!7443362 b!7443364) bm!684217))

(assert (= (or b!7443363 bm!684216) bm!684215))

(declare-fun m!8054538 () Bool)

(assert (=> b!7443360 m!8054538))

(declare-fun m!8054540 () Bool)

(assert (=> bm!684215 m!8054540))

(declare-fun m!8054542 () Bool)

(assert (=> bm!684217 m!8054542))

(assert (=> bs!1926516 d!2296098))

(declare-fun d!2296100 () Bool)

(declare-fun res!2987015 () Bool)

(declare-fun e!4444596 () Bool)

(assert (=> d!2296100 (=> res!2987015 e!4444596)))

(assert (=> d!2296100 (= res!2987015 ((_ is Nil!72024) (t!386713 (t!386713 (exprs!8901 setElem!56633)))))))

(assert (=> d!2296100 (= (forall!18236 (t!386713 (t!386713 (exprs!8901 setElem!56633))) lambda!460529) e!4444596)))

(declare-fun b!7443367 () Bool)

(declare-fun e!4444597 () Bool)

(assert (=> b!7443367 (= e!4444596 e!4444597)))

(declare-fun res!2987016 () Bool)

(assert (=> b!7443367 (=> (not res!2987016) (not e!4444597))))

(assert (=> b!7443367 (= res!2987016 (dynLambda!29737 lambda!460529 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56633))))))))

(declare-fun b!7443368 () Bool)

(assert (=> b!7443368 (= e!4444597 (forall!18236 (t!386713 (t!386713 (t!386713 (exprs!8901 setElem!56633)))) lambda!460529))))

(assert (= (and d!2296100 (not res!2987015)) b!7443367))

(assert (= (and b!7443367 res!2987016) b!7443368))

(declare-fun b_lambda!287681 () Bool)

(assert (=> (not b_lambda!287681) (not b!7443367)))

(declare-fun m!8054544 () Bool)

(assert (=> b!7443367 m!8054544))

(declare-fun m!8054546 () Bool)

(assert (=> b!7443368 m!8054546))

(assert (=> b!7442842 d!2296100))

(declare-fun d!2296102 () Bool)

(declare-fun res!2987017 () Bool)

(declare-fun e!4444598 () Bool)

(assert (=> d!2296102 (=> res!2987017 e!4444598)))

(assert (=> d!2296102 (= res!2987017 ((_ is Nil!72024) (t!386713 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))))

(assert (=> d!2296102 (= (forall!18236 (t!386713 (t!386713 (t!386713 (exprs!8901 setElem!56627)))) lambda!460512) e!4444598)))

(declare-fun b!7443369 () Bool)

(declare-fun e!4444599 () Bool)

(assert (=> b!7443369 (= e!4444598 e!4444599)))

(declare-fun res!2987018 () Bool)

(assert (=> b!7443369 (=> (not res!2987018) (not e!4444599))))

(assert (=> b!7443369 (= res!2987018 (dynLambda!29737 lambda!460512 (h!78472 (t!386713 (t!386713 (t!386713 (exprs!8901 setElem!56627)))))))))

(declare-fun b!7443370 () Bool)

(assert (=> b!7443370 (= e!4444599 (forall!18236 (t!386713 (t!386713 (t!386713 (t!386713 (exprs!8901 setElem!56627))))) lambda!460512))))

(assert (= (and d!2296102 (not res!2987017)) b!7443369))

(assert (= (and b!7443369 res!2987018) b!7443370))

(declare-fun b_lambda!287683 () Bool)

(assert (=> (not b_lambda!287683) (not b!7443369)))

(declare-fun m!8054548 () Bool)

(assert (=> b!7443369 m!8054548))

(declare-fun m!8054550 () Bool)

(assert (=> b!7443370 m!8054550))

(assert (=> b!7442916 d!2296102))

(declare-fun lt!2619508 () Bool)

(declare-fun d!2296104 () Bool)

(assert (=> d!2296104 (= lt!2619508 (exists!4815 (toList!11794 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945)))) lambda!460536))))

(assert (=> d!2296104 (= lt!2619508 (choose!57534 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) lambda!460536))))

(assert (=> d!2296104 (= (exists!4813 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) lambda!460536) lt!2619508)))

(declare-fun bs!1926557 () Bool)

(assert (= bs!1926557 d!2296104))

(assert (=> bs!1926557 m!8054126))

(declare-fun m!8054552 () Bool)

(assert (=> bs!1926557 m!8054552))

(assert (=> bs!1926557 m!8054552))

(declare-fun m!8054554 () Bool)

(assert (=> bs!1926557 m!8054554))

(assert (=> bs!1926557 m!8054126))

(declare-fun m!8054556 () Bool)

(assert (=> bs!1926557 m!8054556))

(assert (=> d!2295938 d!2296104))

(declare-fun d!2296106 () Bool)

(assert (=> d!2296106 (= (flatMap!3239 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) lambda!460538) (choose!57535 (derivationStepZipper!3717 (derivationStepZipper!3717 z!3488 (head!15271 s!7945)) (head!15271 (tail!14850 s!7945))) lambda!460538))))

(declare-fun bs!1926558 () Bool)

(assert (= bs!1926558 d!2296106))

(assert (=> bs!1926558 m!8054126))

(declare-fun m!8054558 () Bool)

(assert (=> bs!1926558 m!8054558))

(assert (=> d!2295948 d!2296106))

(declare-fun b!7443371 () Bool)

(declare-fun e!4444603 () Bool)

(declare-fun e!4444600 () Bool)

(assert (=> b!7443371 (= e!4444603 e!4444600)))

(declare-fun c!1377341 () Bool)

(assert (=> b!7443371 (= c!1377341 ((_ is Star!19461) (ite c!1377307 (reg!19790 (h!78472 (exprs!8901 setElem!56633))) (ite c!1377308 (regOne!39435 (h!78472 (exprs!8901 setElem!56633))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))))))

(declare-fun b!7443372 () Bool)

(declare-fun res!2987019 () Bool)

(declare-fun e!4444605 () Bool)

(assert (=> b!7443372 (=> (not res!2987019) (not e!4444605))))

(declare-fun call!684224 () Bool)

(assert (=> b!7443372 (= res!2987019 call!684224)))

(declare-fun e!4444602 () Bool)

(assert (=> b!7443372 (= e!4444602 e!4444605)))

(declare-fun b!7443373 () Bool)

(declare-fun e!4444606 () Bool)

(assert (=> b!7443373 (= e!4444600 e!4444606)))

(declare-fun res!2987022 () Bool)

(assert (=> b!7443373 (= res!2987022 (not (nullable!8483 (reg!19790 (ite c!1377307 (reg!19790 (h!78472 (exprs!8901 setElem!56633))) (ite c!1377308 (regOne!39435 (h!78472 (exprs!8901 setElem!56633))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))))))))

(assert (=> b!7443373 (=> (not res!2987022) (not e!4444606))))

(declare-fun b!7443374 () Bool)

(declare-fun e!4444601 () Bool)

(assert (=> b!7443374 (= e!4444601 call!684224)))

(declare-fun b!7443375 () Bool)

(declare-fun call!684225 () Bool)

(assert (=> b!7443375 (= e!4444605 call!684225)))

(declare-fun b!7443376 () Bool)

(declare-fun call!684223 () Bool)

(assert (=> b!7443376 (= e!4444606 call!684223)))

(declare-fun d!2296108 () Bool)

(declare-fun res!2987021 () Bool)

(assert (=> d!2296108 (=> res!2987021 e!4444603)))

(assert (=> d!2296108 (= res!2987021 ((_ is ElementMatch!19461) (ite c!1377307 (reg!19790 (h!78472 (exprs!8901 setElem!56633))) (ite c!1377308 (regOne!39435 (h!78472 (exprs!8901 setElem!56633))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))))))

(assert (=> d!2296108 (= (validRegex!9984 (ite c!1377307 (reg!19790 (h!78472 (exprs!8901 setElem!56633))) (ite c!1377308 (regOne!39435 (h!78472 (exprs!8901 setElem!56633))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) e!4444603)))

(declare-fun b!7443377 () Bool)

(declare-fun e!4444604 () Bool)

(assert (=> b!7443377 (= e!4444604 e!4444601)))

(declare-fun res!2987023 () Bool)

(assert (=> b!7443377 (=> (not res!2987023) (not e!4444601))))

(assert (=> b!7443377 (= res!2987023 call!684225)))

(declare-fun b!7443378 () Bool)

(assert (=> b!7443378 (= e!4444600 e!4444602)))

(declare-fun c!1377342 () Bool)

(assert (=> b!7443378 (= c!1377342 ((_ is Union!19461) (ite c!1377307 (reg!19790 (h!78472 (exprs!8901 setElem!56633))) (ite c!1377308 (regOne!39435 (h!78472 (exprs!8901 setElem!56633))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))))))

(declare-fun bm!684218 () Bool)

(assert (=> bm!684218 (= call!684223 (validRegex!9984 (ite c!1377341 (reg!19790 (ite c!1377307 (reg!19790 (h!78472 (exprs!8901 setElem!56633))) (ite c!1377308 (regOne!39435 (h!78472 (exprs!8901 setElem!56633))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) (ite c!1377342 (regOne!39435 (ite c!1377307 (reg!19790 (h!78472 (exprs!8901 setElem!56633))) (ite c!1377308 (regOne!39435 (h!78472 (exprs!8901 setElem!56633))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) (regTwo!39434 (ite c!1377307 (reg!19790 (h!78472 (exprs!8901 setElem!56633))) (ite c!1377308 (regOne!39435 (h!78472 (exprs!8901 setElem!56633))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633))))))))))))

(declare-fun bm!684219 () Bool)

(assert (=> bm!684219 (= call!684224 call!684223)))

(declare-fun b!7443379 () Bool)

(declare-fun res!2987020 () Bool)

(assert (=> b!7443379 (=> res!2987020 e!4444604)))

(assert (=> b!7443379 (= res!2987020 (not ((_ is Concat!28306) (ite c!1377307 (reg!19790 (h!78472 (exprs!8901 setElem!56633))) (ite c!1377308 (regOne!39435 (h!78472 (exprs!8901 setElem!56633))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633))))))))))

(assert (=> b!7443379 (= e!4444602 e!4444604)))

(declare-fun bm!684220 () Bool)

(assert (=> bm!684220 (= call!684225 (validRegex!9984 (ite c!1377342 (regTwo!39435 (ite c!1377307 (reg!19790 (h!78472 (exprs!8901 setElem!56633))) (ite c!1377308 (regOne!39435 (h!78472 (exprs!8901 setElem!56633))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) (regOne!39434 (ite c!1377307 (reg!19790 (h!78472 (exprs!8901 setElem!56633))) (ite c!1377308 (regOne!39435 (h!78472 (exprs!8901 setElem!56633))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))))))))

(assert (= (and d!2296108 (not res!2987021)) b!7443371))

(assert (= (and b!7443371 c!1377341) b!7443373))

(assert (= (and b!7443371 (not c!1377341)) b!7443378))

(assert (= (and b!7443373 res!2987022) b!7443376))

(assert (= (and b!7443378 c!1377342) b!7443372))

(assert (= (and b!7443378 (not c!1377342)) b!7443379))

(assert (= (and b!7443372 res!2987019) b!7443375))

(assert (= (and b!7443379 (not res!2987020)) b!7443377))

(assert (= (and b!7443377 res!2987023) b!7443374))

(assert (= (or b!7443372 b!7443374) bm!684219))

(assert (= (or b!7443375 b!7443377) bm!684220))

(assert (= (or b!7443376 bm!684219) bm!684218))

(declare-fun m!8054560 () Bool)

(assert (=> b!7443373 m!8054560))

(declare-fun m!8054562 () Bool)

(assert (=> bm!684218 m!8054562))

(declare-fun m!8054564 () Bool)

(assert (=> bm!684220 m!8054564))

(assert (=> bm!684166 d!2296108))

(declare-fun b!7443380 () Bool)

(declare-fun e!4444610 () Bool)

(declare-fun e!4444607 () Bool)

(assert (=> b!7443380 (= e!4444610 e!4444607)))

(declare-fun c!1377343 () Bool)

(assert (=> b!7443380 (= c!1377343 ((_ is Star!19461) (ite c!1377305 (regTwo!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regOne!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))

(declare-fun b!7443381 () Bool)

(declare-fun res!2987024 () Bool)

(declare-fun e!4444612 () Bool)

(assert (=> b!7443381 (=> (not res!2987024) (not e!4444612))))

(declare-fun call!684227 () Bool)

(assert (=> b!7443381 (= res!2987024 call!684227)))

(declare-fun e!4444609 () Bool)

(assert (=> b!7443381 (= e!4444609 e!4444612)))

(declare-fun b!7443382 () Bool)

(declare-fun e!4444613 () Bool)

(assert (=> b!7443382 (= e!4444607 e!4444613)))

(declare-fun res!2987027 () Bool)

(assert (=> b!7443382 (= res!2987027 (not (nullable!8483 (reg!19790 (ite c!1377305 (regTwo!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regOne!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))))

(assert (=> b!7443382 (=> (not res!2987027) (not e!4444613))))

(declare-fun b!7443383 () Bool)

(declare-fun e!4444608 () Bool)

(assert (=> b!7443383 (= e!4444608 call!684227)))

(declare-fun b!7443384 () Bool)

(declare-fun call!684228 () Bool)

(assert (=> b!7443384 (= e!4444612 call!684228)))

(declare-fun b!7443385 () Bool)

(declare-fun call!684226 () Bool)

(assert (=> b!7443385 (= e!4444613 call!684226)))

(declare-fun d!2296110 () Bool)

(declare-fun res!2987026 () Bool)

(assert (=> d!2296110 (=> res!2987026 e!4444610)))

(assert (=> d!2296110 (= res!2987026 ((_ is ElementMatch!19461) (ite c!1377305 (regTwo!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regOne!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))

(assert (=> d!2296110 (= (validRegex!9984 (ite c!1377305 (regTwo!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regOne!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))) e!4444610)))

(declare-fun b!7443386 () Bool)

(declare-fun e!4444611 () Bool)

(assert (=> b!7443386 (= e!4444611 e!4444608)))

(declare-fun res!2987028 () Bool)

(assert (=> b!7443386 (=> (not res!2987028) (not e!4444608))))

(assert (=> b!7443386 (= res!2987028 call!684228)))

(declare-fun b!7443387 () Bool)

(assert (=> b!7443387 (= e!4444607 e!4444609)))

(declare-fun c!1377344 () Bool)

(assert (=> b!7443387 (= c!1377344 ((_ is Union!19461) (ite c!1377305 (regTwo!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regOne!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))

(declare-fun bm!684221 () Bool)

(assert (=> bm!684221 (= call!684226 (validRegex!9984 (ite c!1377343 (reg!19790 (ite c!1377305 (regTwo!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regOne!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))) (ite c!1377344 (regOne!39435 (ite c!1377305 (regTwo!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regOne!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))) (regTwo!39434 (ite c!1377305 (regTwo!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regOne!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))))))))))

(declare-fun bm!684222 () Bool)

(assert (=> bm!684222 (= call!684227 call!684226)))

(declare-fun b!7443388 () Bool)

(declare-fun res!2987025 () Bool)

(assert (=> b!7443388 (=> res!2987025 e!4444611)))

(assert (=> b!7443388 (= res!2987025 (not ((_ is Concat!28306) (ite c!1377305 (regTwo!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regOne!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))))))))

(assert (=> b!7443388 (= e!4444609 e!4444611)))

(declare-fun bm!684223 () Bool)

(assert (=> bm!684223 (= call!684228 (validRegex!9984 (ite c!1377344 (regTwo!39435 (ite c!1377305 (regTwo!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regOne!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))) (regOne!39434 (ite c!1377305 (regTwo!39435 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))) (regOne!39434 (ite c!1377299 (reg!19790 (h!78472 (exprs!8901 setElem!56627))) (ite c!1377300 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))) (regTwo!39434 (h!78472 (exprs!8901 setElem!56627)))))))))))))

(assert (= (and d!2296110 (not res!2987026)) b!7443380))

(assert (= (and b!7443380 c!1377343) b!7443382))

(assert (= (and b!7443380 (not c!1377343)) b!7443387))

(assert (= (and b!7443382 res!2987027) b!7443385))

(assert (= (and b!7443387 c!1377344) b!7443381))

(assert (= (and b!7443387 (not c!1377344)) b!7443388))

(assert (= (and b!7443381 res!2987024) b!7443384))

(assert (= (and b!7443388 (not res!2987025)) b!7443386))

(assert (= (and b!7443386 res!2987028) b!7443383))

(assert (= (or b!7443381 b!7443383) bm!684222))

(assert (= (or b!7443384 b!7443386) bm!684223))

(assert (= (or b!7443385 bm!684222) bm!684221))

(declare-fun m!8054566 () Bool)

(assert (=> b!7443382 m!8054566))

(declare-fun m!8054568 () Bool)

(assert (=> bm!684221 m!8054568))

(declare-fun m!8054570 () Bool)

(assert (=> bm!684223 m!8054570))

(assert (=> bm!684165 d!2296110))

(declare-fun b!7443389 () Bool)

(declare-fun e!4444617 () Bool)

(declare-fun e!4444614 () Bool)

(assert (=> b!7443389 (= e!4444617 e!4444614)))

(declare-fun c!1377345 () Bool)

(assert (=> b!7443389 (= c!1377345 ((_ is Star!19461) (ite c!1377302 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (ite c!1377303 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))))))

(declare-fun b!7443390 () Bool)

(declare-fun res!2987029 () Bool)

(declare-fun e!4444619 () Bool)

(assert (=> b!7443390 (=> (not res!2987029) (not e!4444619))))

(declare-fun call!684230 () Bool)

(assert (=> b!7443390 (= res!2987029 call!684230)))

(declare-fun e!4444616 () Bool)

(assert (=> b!7443390 (= e!4444616 e!4444619)))

(declare-fun b!7443391 () Bool)

(declare-fun e!4444620 () Bool)

(assert (=> b!7443391 (= e!4444614 e!4444620)))

(declare-fun res!2987032 () Bool)

(assert (=> b!7443391 (= res!2987032 (not (nullable!8483 (reg!19790 (ite c!1377302 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (ite c!1377303 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))))))))

(assert (=> b!7443391 (=> (not res!2987032) (not e!4444620))))

(declare-fun b!7443392 () Bool)

(declare-fun e!4444615 () Bool)

(assert (=> b!7443392 (= e!4444615 call!684230)))

(declare-fun b!7443393 () Bool)

(declare-fun call!684231 () Bool)

(assert (=> b!7443393 (= e!4444619 call!684231)))

(declare-fun b!7443394 () Bool)

(declare-fun call!684229 () Bool)

(assert (=> b!7443394 (= e!4444620 call!684229)))

(declare-fun d!2296112 () Bool)

(declare-fun res!2987031 () Bool)

(assert (=> d!2296112 (=> res!2987031 e!4444617)))

(assert (=> d!2296112 (= res!2987031 ((_ is ElementMatch!19461) (ite c!1377302 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (ite c!1377303 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))))))

(assert (=> d!2296112 (= (validRegex!9984 (ite c!1377302 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (ite c!1377303 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) e!4444617)))

(declare-fun b!7443395 () Bool)

(declare-fun e!4444618 () Bool)

(assert (=> b!7443395 (= e!4444618 e!4444615)))

(declare-fun res!2987033 () Bool)

(assert (=> b!7443395 (=> (not res!2987033) (not e!4444615))))

(assert (=> b!7443395 (= res!2987033 call!684231)))

(declare-fun b!7443396 () Bool)

(assert (=> b!7443396 (= e!4444614 e!4444616)))

(declare-fun c!1377346 () Bool)

(assert (=> b!7443396 (= c!1377346 ((_ is Union!19461) (ite c!1377302 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (ite c!1377303 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))))))

(declare-fun bm!684224 () Bool)

(assert (=> bm!684224 (= call!684229 (validRegex!9984 (ite c!1377345 (reg!19790 (ite c!1377302 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (ite c!1377303 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) (ite c!1377346 (regOne!39435 (ite c!1377302 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (ite c!1377303 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) (regTwo!39434 (ite c!1377302 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (ite c!1377303 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))))))))))

(declare-fun bm!684225 () Bool)

(assert (=> bm!684225 (= call!684230 call!684229)))

(declare-fun b!7443397 () Bool)

(declare-fun res!2987030 () Bool)

(assert (=> b!7443397 (=> res!2987030 e!4444618)))

(assert (=> b!7443397 (= res!2987030 (not ((_ is Concat!28306) (ite c!1377302 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (ite c!1377303 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))))))))

(assert (=> b!7443397 (= e!4444616 e!4444618)))

(declare-fun bm!684226 () Bool)

(assert (=> bm!684226 (= call!684231 (validRegex!9984 (ite c!1377346 (regTwo!39435 (ite c!1377302 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (ite c!1377303 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) (regOne!39434 (ite c!1377302 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (ite c!1377303 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))))))))

(assert (= (and d!2296112 (not res!2987031)) b!7443389))

(assert (= (and b!7443389 c!1377345) b!7443391))

(assert (= (and b!7443389 (not c!1377345)) b!7443396))

(assert (= (and b!7443391 res!2987032) b!7443394))

(assert (= (and b!7443396 c!1377346) b!7443390))

(assert (= (and b!7443396 (not c!1377346)) b!7443397))

(assert (= (and b!7443390 res!2987029) b!7443393))

(assert (= (and b!7443397 (not res!2987030)) b!7443395))

(assert (= (and b!7443395 res!2987033) b!7443392))

(assert (= (or b!7443390 b!7443392) bm!684225))

(assert (= (or b!7443393 b!7443395) bm!684226))

(assert (= (or b!7443394 bm!684225) bm!684224))

(declare-fun m!8054572 () Bool)

(assert (=> b!7443391 m!8054572))

(declare-fun m!8054574 () Bool)

(assert (=> bm!684224 m!8054574))

(declare-fun m!8054576 () Bool)

(assert (=> bm!684226 m!8054576))

(assert (=> bm!684160 d!2296112))

(declare-fun d!2296114 () Bool)

(assert (=> d!2296114 (= (nullable!8483 (h!78472 (t!386713 (t!386713 (exprs!8901 lt!2619492))))) (nullableFct!3424 (h!78472 (t!386713 (t!386713 (exprs!8901 lt!2619492))))))))

(declare-fun bs!1926559 () Bool)

(assert (= bs!1926559 d!2296114))

(declare-fun m!8054578 () Bool)

(assert (=> bs!1926559 m!8054578))

(assert (=> bs!1926517 d!2296114))

(declare-fun d!2296116 () Bool)

(declare-fun res!2987034 () Bool)

(declare-fun e!4444621 () Bool)

(assert (=> d!2296116 (=> res!2987034 e!4444621)))

(assert (=> d!2296116 (= res!2987034 ((_ is Nil!72024) (exprs!8901 setElem!56637)))))

(assert (=> d!2296116 (= (forall!18236 (exprs!8901 setElem!56637) lambda!460537) e!4444621)))

(declare-fun b!7443398 () Bool)

(declare-fun e!4444622 () Bool)

(assert (=> b!7443398 (= e!4444621 e!4444622)))

(declare-fun res!2987035 () Bool)

(assert (=> b!7443398 (=> (not res!2987035) (not e!4444622))))

(assert (=> b!7443398 (= res!2987035 (dynLambda!29737 lambda!460537 (h!78472 (exprs!8901 setElem!56637))))))

(declare-fun b!7443399 () Bool)

(assert (=> b!7443399 (= e!4444622 (forall!18236 (t!386713 (exprs!8901 setElem!56637)) lambda!460537))))

(assert (= (and d!2296116 (not res!2987034)) b!7443398))

(assert (= (and b!7443398 res!2987035) b!7443399))

(declare-fun b_lambda!287685 () Bool)

(assert (=> (not b_lambda!287685) (not b!7443398)))

(declare-fun m!8054580 () Bool)

(assert (=> b!7443398 m!8054580))

(declare-fun m!8054582 () Bool)

(assert (=> b!7443399 m!8054582))

(assert (=> d!2295942 d!2296116))

(declare-fun d!2296118 () Bool)

(assert (=> d!2296118 (= (nullable!8483 (ite c!1377325 (regTwo!39435 (h!78472 (exprs!8901 lt!2619492))) (regTwo!39434 (h!78472 (exprs!8901 lt!2619492))))) (nullableFct!3424 (ite c!1377325 (regTwo!39435 (h!78472 (exprs!8901 lt!2619492))) (regTwo!39434 (h!78472 (exprs!8901 lt!2619492))))))))

(declare-fun bs!1926560 () Bool)

(assert (= bs!1926560 d!2296118))

(declare-fun m!8054584 () Bool)

(assert (=> bs!1926560 m!8054584))

(assert (=> bm!684194 d!2296118))

(declare-fun b!7443400 () Bool)

(declare-fun e!4444626 () Bool)

(declare-fun e!4444623 () Bool)

(assert (=> b!7443400 (= e!4444626 e!4444623)))

(declare-fun c!1377347 () Bool)

(assert (=> b!7443400 (= c!1377347 ((_ is Star!19461) (ite c!1377303 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))))))

(declare-fun b!7443401 () Bool)

(declare-fun res!2987036 () Bool)

(declare-fun e!4444628 () Bool)

(assert (=> b!7443401 (=> (not res!2987036) (not e!4444628))))

(declare-fun call!684233 () Bool)

(assert (=> b!7443401 (= res!2987036 call!684233)))

(declare-fun e!4444625 () Bool)

(assert (=> b!7443401 (= e!4444625 e!4444628)))

(declare-fun b!7443402 () Bool)

(declare-fun e!4444629 () Bool)

(assert (=> b!7443402 (= e!4444623 e!4444629)))

(declare-fun res!2987039 () Bool)

(assert (=> b!7443402 (= res!2987039 (not (nullable!8483 (reg!19790 (ite c!1377303 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))))))))

(assert (=> b!7443402 (=> (not res!2987039) (not e!4444629))))

(declare-fun b!7443403 () Bool)

(declare-fun e!4444624 () Bool)

(assert (=> b!7443403 (= e!4444624 call!684233)))

(declare-fun b!7443404 () Bool)

(declare-fun call!684234 () Bool)

(assert (=> b!7443404 (= e!4444628 call!684234)))

(declare-fun b!7443405 () Bool)

(declare-fun call!684232 () Bool)

(assert (=> b!7443405 (= e!4444629 call!684232)))

(declare-fun d!2296120 () Bool)

(declare-fun res!2987038 () Bool)

(assert (=> d!2296120 (=> res!2987038 e!4444626)))

(assert (=> d!2296120 (= res!2987038 ((_ is ElementMatch!19461) (ite c!1377303 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))))))

(assert (=> d!2296120 (= (validRegex!9984 (ite c!1377303 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) e!4444626)))

(declare-fun b!7443406 () Bool)

(declare-fun e!4444627 () Bool)

(assert (=> b!7443406 (= e!4444627 e!4444624)))

(declare-fun res!2987040 () Bool)

(assert (=> b!7443406 (=> (not res!2987040) (not e!4444624))))

(assert (=> b!7443406 (= res!2987040 call!684234)))

(declare-fun b!7443407 () Bool)

(assert (=> b!7443407 (= e!4444623 e!4444625)))

(declare-fun c!1377348 () Bool)

(assert (=> b!7443407 (= c!1377348 ((_ is Union!19461) (ite c!1377303 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))))))

(declare-fun bm!684227 () Bool)

(assert (=> bm!684227 (= call!684232 (validRegex!9984 (ite c!1377347 (reg!19790 (ite c!1377303 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) (ite c!1377348 (regOne!39435 (ite c!1377303 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) (regTwo!39434 (ite c!1377303 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))))))))

(declare-fun bm!684228 () Bool)

(assert (=> bm!684228 (= call!684233 call!684232)))

(declare-fun b!7443408 () Bool)

(declare-fun res!2987037 () Bool)

(assert (=> b!7443408 (=> res!2987037 e!4444627)))

(assert (=> b!7443408 (= res!2987037 (not ((_ is Concat!28306) (ite c!1377303 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))))))

(assert (=> b!7443408 (= e!4444625 e!4444627)))

(declare-fun bm!684229 () Bool)

(assert (=> bm!684229 (= call!684234 (validRegex!9984 (ite c!1377348 (regTwo!39435 (ite c!1377303 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))) (regOne!39434 (ite c!1377303 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627)))) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627)))))))))))

(assert (= (and d!2296120 (not res!2987038)) b!7443400))

(assert (= (and b!7443400 c!1377347) b!7443402))

(assert (= (and b!7443400 (not c!1377347)) b!7443407))

(assert (= (and b!7443402 res!2987039) b!7443405))

(assert (= (and b!7443407 c!1377348) b!7443401))

(assert (= (and b!7443407 (not c!1377348)) b!7443408))

(assert (= (and b!7443401 res!2987036) b!7443404))

(assert (= (and b!7443408 (not res!2987037)) b!7443406))

(assert (= (and b!7443406 res!2987040) b!7443403))

(assert (= (or b!7443401 b!7443403) bm!684228))

(assert (= (or b!7443404 b!7443406) bm!684229))

(assert (= (or b!7443405 bm!684228) bm!684227))

(declare-fun m!8054586 () Bool)

(assert (=> b!7443402 m!8054586))

(declare-fun m!8054588 () Bool)

(assert (=> bm!684227 m!8054588))

(declare-fun m!8054590 () Bool)

(assert (=> bm!684229 m!8054590))

(assert (=> bm!684162 d!2296120))

(declare-fun d!2296122 () Bool)

(declare-fun c!1377353 () Bool)

(assert (=> d!2296122 (= c!1377353 ((_ is Nil!72027) lt!2619503))))

(declare-fun e!4444639 () (InoxSet Context!16802))

(assert (=> d!2296122 (= (content!15238 lt!2619503) e!4444639)))

(declare-fun b!7443422 () Bool)

(assert (=> b!7443422 (= e!4444639 ((as const (Array Context!16802 Bool)) false))))

(declare-fun b!7443423 () Bool)

(assert (=> b!7443423 (= e!4444639 ((_ map or) (store ((as const (Array Context!16802 Bool)) false) (h!78475 lt!2619503) true) (content!15238 (t!386716 lt!2619503))))))

(assert (= (and d!2296122 c!1377353) b!7443422))

(assert (= (and d!2296122 (not c!1377353)) b!7443423))

(declare-fun m!8054592 () Bool)

(assert (=> b!7443423 m!8054592))

(declare-fun m!8054594 () Bool)

(assert (=> b!7443423 m!8054594))

(assert (=> b!7442889 d!2296122))

(declare-fun b!7443424 () Bool)

(declare-fun e!4444643 () Bool)

(declare-fun e!4444640 () Bool)

(assert (=> b!7443424 (= e!4444643 e!4444640)))

(declare-fun c!1377354 () Bool)

(assert (=> b!7443424 (= c!1377354 ((_ is Star!19461) (ite c!1377308 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))) (regOne!39434 (h!78472 (exprs!8901 setElem!56633))))))))

(declare-fun b!7443425 () Bool)

(declare-fun res!2987046 () Bool)

(declare-fun e!4444645 () Bool)

(assert (=> b!7443425 (=> (not res!2987046) (not e!4444645))))

(declare-fun call!684239 () Bool)

(assert (=> b!7443425 (= res!2987046 call!684239)))

(declare-fun e!4444642 () Bool)

(assert (=> b!7443425 (= e!4444642 e!4444645)))

(declare-fun b!7443426 () Bool)

(declare-fun e!4444646 () Bool)

(assert (=> b!7443426 (= e!4444640 e!4444646)))

(declare-fun res!2987049 () Bool)

(assert (=> b!7443426 (= res!2987049 (not (nullable!8483 (reg!19790 (ite c!1377308 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))) (regOne!39434 (h!78472 (exprs!8901 setElem!56633))))))))))

(assert (=> b!7443426 (=> (not res!2987049) (not e!4444646))))

(declare-fun b!7443427 () Bool)

(declare-fun e!4444641 () Bool)

(assert (=> b!7443427 (= e!4444641 call!684239)))

(declare-fun b!7443428 () Bool)

(declare-fun call!684240 () Bool)

(assert (=> b!7443428 (= e!4444645 call!684240)))

(declare-fun b!7443429 () Bool)

(declare-fun call!684238 () Bool)

(assert (=> b!7443429 (= e!4444646 call!684238)))

(declare-fun d!2296126 () Bool)

(declare-fun res!2987048 () Bool)

(assert (=> d!2296126 (=> res!2987048 e!4444643)))

(assert (=> d!2296126 (= res!2987048 ((_ is ElementMatch!19461) (ite c!1377308 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))) (regOne!39434 (h!78472 (exprs!8901 setElem!56633))))))))

(assert (=> d!2296126 (= (validRegex!9984 (ite c!1377308 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))) (regOne!39434 (h!78472 (exprs!8901 setElem!56633))))) e!4444643)))

(declare-fun b!7443430 () Bool)

(declare-fun e!4444644 () Bool)

(assert (=> b!7443430 (= e!4444644 e!4444641)))

(declare-fun res!2987050 () Bool)

(assert (=> b!7443430 (=> (not res!2987050) (not e!4444641))))

(assert (=> b!7443430 (= res!2987050 call!684240)))

(declare-fun b!7443431 () Bool)

(assert (=> b!7443431 (= e!4444640 e!4444642)))

(declare-fun c!1377355 () Bool)

(assert (=> b!7443431 (= c!1377355 ((_ is Union!19461) (ite c!1377308 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))) (regOne!39434 (h!78472 (exprs!8901 setElem!56633))))))))

(declare-fun bm!684233 () Bool)

(assert (=> bm!684233 (= call!684238 (validRegex!9984 (ite c!1377354 (reg!19790 (ite c!1377308 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))) (regOne!39434 (h!78472 (exprs!8901 setElem!56633))))) (ite c!1377355 (regOne!39435 (ite c!1377308 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))) (regOne!39434 (h!78472 (exprs!8901 setElem!56633))))) (regTwo!39434 (ite c!1377308 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))) (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))))))))

(declare-fun bm!684234 () Bool)

(assert (=> bm!684234 (= call!684239 call!684238)))

(declare-fun b!7443432 () Bool)

(declare-fun res!2987047 () Bool)

(assert (=> b!7443432 (=> res!2987047 e!4444644)))

(assert (=> b!7443432 (= res!2987047 (not ((_ is Concat!28306) (ite c!1377308 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))) (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))))))

(assert (=> b!7443432 (= e!4444642 e!4444644)))

(declare-fun bm!684235 () Bool)

(assert (=> bm!684235 (= call!684240 (validRegex!9984 (ite c!1377355 (regTwo!39435 (ite c!1377308 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))) (regOne!39434 (h!78472 (exprs!8901 setElem!56633))))) (regOne!39434 (ite c!1377308 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633))) (regOne!39434 (h!78472 (exprs!8901 setElem!56633))))))))))

(assert (= (and d!2296126 (not res!2987048)) b!7443424))

(assert (= (and b!7443424 c!1377354) b!7443426))

(assert (= (and b!7443424 (not c!1377354)) b!7443431))

(assert (= (and b!7443426 res!2987049) b!7443429))

(assert (= (and b!7443431 c!1377355) b!7443425))

(assert (= (and b!7443431 (not c!1377355)) b!7443432))

(assert (= (and b!7443425 res!2987046) b!7443428))

(assert (= (and b!7443432 (not res!2987047)) b!7443430))

(assert (= (and b!7443430 res!2987050) b!7443427))

(assert (= (or b!7443425 b!7443427) bm!684234))

(assert (= (or b!7443428 b!7443430) bm!684235))

(assert (= (or b!7443429 bm!684234) bm!684233))

(declare-fun m!8054596 () Bool)

(assert (=> b!7443426 m!8054596))

(declare-fun m!8054598 () Bool)

(assert (=> bm!684233 m!8054598))

(declare-fun m!8054600 () Bool)

(assert (=> bm!684235 m!8054600))

(assert (=> bm!684168 d!2296126))

(declare-fun d!2296128 () Bool)

(declare-fun res!2987055 () Bool)

(declare-fun e!4444651 () Bool)

(assert (=> d!2296128 (=> res!2987055 e!4444651)))

(assert (=> d!2296128 (= res!2987055 ((_ is Nil!72027) lt!2619503))))

(assert (=> d!2296128 (= (noDuplicate!3126 lt!2619503) e!4444651)))

(declare-fun b!7443437 () Bool)

(declare-fun e!4444652 () Bool)

(assert (=> b!7443437 (= e!4444651 e!4444652)))

(declare-fun res!2987056 () Bool)

(assert (=> b!7443437 (=> (not res!2987056) (not e!4444652))))

(declare-fun contains!20866 (List!72151 Context!16802) Bool)

(assert (=> b!7443437 (= res!2987056 (not (contains!20866 (t!386716 lt!2619503) (h!78475 lt!2619503))))))

(declare-fun b!7443438 () Bool)

(assert (=> b!7443438 (= e!4444652 (noDuplicate!3126 (t!386716 lt!2619503)))))

(assert (= (and d!2296128 (not res!2987055)) b!7443437))

(assert (= (and b!7443437 res!2987056) b!7443438))

(declare-fun m!8054608 () Bool)

(assert (=> b!7443437 m!8054608))

(declare-fun m!8054610 () Bool)

(assert (=> b!7443438 m!8054610))

(assert (=> d!2295972 d!2296128))

(declare-fun d!2296132 () Bool)

(declare-fun e!4444663 () Bool)

(assert (=> d!2296132 e!4444663))

(declare-fun res!2987064 () Bool)

(assert (=> d!2296132 (=> (not res!2987064) (not e!4444663))))

(declare-fun res!2987063 () List!72151)

(assert (=> d!2296132 (= res!2987064 (noDuplicate!3126 res!2987063))))

(declare-fun e!4444661 () Bool)

(assert (=> d!2296132 e!4444661))

(assert (=> d!2296132 (= (choose!57537 z!3488) res!2987063)))

(declare-fun b!7443448 () Bool)

(declare-fun e!4444662 () Bool)

(declare-fun tp!2152516 () Bool)

(assert (=> b!7443448 (= e!4444662 tp!2152516)))

(declare-fun tp!2152515 () Bool)

(declare-fun b!7443447 () Bool)

(assert (=> b!7443447 (= e!4444661 (and (inv!92013 (h!78475 res!2987063)) e!4444662 tp!2152515))))

(declare-fun b!7443449 () Bool)

(assert (=> b!7443449 (= e!4444663 (= (content!15238 res!2987063) z!3488))))

(assert (= b!7443447 b!7443448))

(assert (= (and d!2296132 ((_ is Cons!72027) res!2987063)) b!7443447))

(assert (= (and d!2296132 res!2987064) b!7443449))

(declare-fun m!8054616 () Bool)

(assert (=> d!2296132 m!8054616))

(declare-fun m!8054618 () Bool)

(assert (=> b!7443447 m!8054618))

(declare-fun m!8054620 () Bool)

(assert (=> b!7443449 m!8054620))

(assert (=> d!2295972 d!2296132))

(declare-fun b!7443458 () Bool)

(declare-fun e!4444670 () Bool)

(declare-fun tp!2152521 () Bool)

(declare-fun tp!2152519 () Bool)

(assert (=> b!7443458 (= e!4444670 (and tp!2152521 tp!2152519))))

(assert (=> b!7443064 (= tp!2152231 e!4444670)))

(declare-fun b!7443459 () Bool)

(declare-fun tp!2152517 () Bool)

(assert (=> b!7443459 (= e!4444670 tp!2152517)))

(declare-fun b!7443457 () Bool)

(assert (=> b!7443457 (= e!4444670 tp_is_empty!49181)))

(declare-fun b!7443460 () Bool)

(declare-fun tp!2152520 () Bool)

(declare-fun tp!2152518 () Bool)

(assert (=> b!7443460 (= e!4444670 (and tp!2152520 tp!2152518))))

(assert (= (and b!7443064 ((_ is ElementMatch!19461) (h!78472 (t!386713 (exprs!8901 setElem!56635))))) b!7443457))

(assert (= (and b!7443064 ((_ is Concat!28306) (h!78472 (t!386713 (exprs!8901 setElem!56635))))) b!7443458))

(assert (= (and b!7443064 ((_ is Star!19461) (h!78472 (t!386713 (exprs!8901 setElem!56635))))) b!7443459))

(assert (= (and b!7443064 ((_ is Union!19461) (h!78472 (t!386713 (exprs!8901 setElem!56635))))) b!7443460))

(declare-fun b!7443461 () Bool)

(declare-fun e!4444671 () Bool)

(declare-fun tp!2152522 () Bool)

(declare-fun tp!2152523 () Bool)

(assert (=> b!7443461 (= e!4444671 (and tp!2152522 tp!2152523))))

(assert (=> b!7443064 (= tp!2152232 e!4444671)))

(assert (= (and b!7443064 ((_ is Cons!72024) (t!386713 (t!386713 (exprs!8901 setElem!56635))))) b!7443461))

(declare-fun b!7443463 () Bool)

(declare-fun e!4444672 () Bool)

(declare-fun tp!2152528 () Bool)

(declare-fun tp!2152526 () Bool)

(assert (=> b!7443463 (= e!4444672 (and tp!2152528 tp!2152526))))

(assert (=> b!7443031 (= tp!2152189 e!4444672)))

(declare-fun b!7443464 () Bool)

(declare-fun tp!2152524 () Bool)

(assert (=> b!7443464 (= e!4444672 tp!2152524)))

(declare-fun b!7443462 () Bool)

(assert (=> b!7443462 (= e!4444672 tp_is_empty!49181)))

(declare-fun b!7443465 () Bool)

(declare-fun tp!2152527 () Bool)

(declare-fun tp!2152525 () Bool)

(assert (=> b!7443465 (= e!4444672 (and tp!2152527 tp!2152525))))

(assert (= (and b!7443031 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443462))

(assert (= (and b!7443031 ((_ is Concat!28306) (regOne!39435 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443463))

(assert (= (and b!7443031 ((_ is Star!19461) (regOne!39435 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443464))

(assert (= (and b!7443031 ((_ is Union!19461) (regOne!39435 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443465))

(declare-fun b!7443467 () Bool)

(declare-fun e!4444673 () Bool)

(declare-fun tp!2152533 () Bool)

(declare-fun tp!2152531 () Bool)

(assert (=> b!7443467 (= e!4444673 (and tp!2152533 tp!2152531))))

(assert (=> b!7443031 (= tp!2152187 e!4444673)))

(declare-fun b!7443468 () Bool)

(declare-fun tp!2152529 () Bool)

(assert (=> b!7443468 (= e!4444673 tp!2152529)))

(declare-fun b!7443466 () Bool)

(assert (=> b!7443466 (= e!4444673 tp_is_empty!49181)))

(declare-fun b!7443469 () Bool)

(declare-fun tp!2152532 () Bool)

(declare-fun tp!2152530 () Bool)

(assert (=> b!7443469 (= e!4444673 (and tp!2152532 tp!2152530))))

(assert (= (and b!7443031 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443466))

(assert (= (and b!7443031 ((_ is Concat!28306) (regTwo!39435 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443467))

(assert (= (and b!7443031 ((_ is Star!19461) (regTwo!39435 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443468))

(assert (= (and b!7443031 ((_ is Union!19461) (regTwo!39435 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443469))

(declare-fun b!7443471 () Bool)

(declare-fun e!4444674 () Bool)

(declare-fun tp!2152538 () Bool)

(declare-fun tp!2152536 () Bool)

(assert (=> b!7443471 (= e!4444674 (and tp!2152538 tp!2152536))))

(assert (=> b!7442963 (= tp!2152111 e!4444674)))

(declare-fun b!7443472 () Bool)

(declare-fun tp!2152534 () Bool)

(assert (=> b!7443472 (= e!4444674 tp!2152534)))

(declare-fun b!7443470 () Bool)

(assert (=> b!7443470 (= e!4444674 tp_is_empty!49181)))

(declare-fun b!7443473 () Bool)

(declare-fun tp!2152537 () Bool)

(declare-fun tp!2152535 () Bool)

(assert (=> b!7443473 (= e!4444674 (and tp!2152537 tp!2152535))))

(assert (= (and b!7442963 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443470))

(assert (= (and b!7442963 ((_ is Concat!28306) (regOne!39434 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443471))

(assert (= (and b!7442963 ((_ is Star!19461) (regOne!39434 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443472))

(assert (= (and b!7442963 ((_ is Union!19461) (regOne!39434 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443473))

(declare-fun b!7443475 () Bool)

(declare-fun e!4444675 () Bool)

(declare-fun tp!2152543 () Bool)

(declare-fun tp!2152541 () Bool)

(assert (=> b!7443475 (= e!4444675 (and tp!2152543 tp!2152541))))

(assert (=> b!7442963 (= tp!2152109 e!4444675)))

(declare-fun b!7443476 () Bool)

(declare-fun tp!2152539 () Bool)

(assert (=> b!7443476 (= e!4444675 tp!2152539)))

(declare-fun b!7443474 () Bool)

(assert (=> b!7443474 (= e!4444675 tp_is_empty!49181)))

(declare-fun b!7443477 () Bool)

(declare-fun tp!2152542 () Bool)

(declare-fun tp!2152540 () Bool)

(assert (=> b!7443477 (= e!4444675 (and tp!2152542 tp!2152540))))

(assert (= (and b!7442963 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443474))

(assert (= (and b!7442963 ((_ is Concat!28306) (regTwo!39434 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443475))

(assert (= (and b!7442963 ((_ is Star!19461) (regTwo!39434 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443476))

(assert (= (and b!7442963 ((_ is Union!19461) (regTwo!39434 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443477))

(declare-fun b!7443479 () Bool)

(declare-fun e!4444676 () Bool)

(declare-fun tp!2152548 () Bool)

(declare-fun tp!2152546 () Bool)

(assert (=> b!7443479 (= e!4444676 (and tp!2152548 tp!2152546))))

(assert (=> b!7442995 (= tp!2152144 e!4444676)))

(declare-fun b!7443480 () Bool)

(declare-fun tp!2152544 () Bool)

(assert (=> b!7443480 (= e!4444676 tp!2152544)))

(declare-fun b!7443478 () Bool)

(assert (=> b!7443478 (= e!4444676 tp_is_empty!49181)))

(declare-fun b!7443481 () Bool)

(declare-fun tp!2152547 () Bool)

(declare-fun tp!2152545 () Bool)

(assert (=> b!7443481 (= e!4444676 (and tp!2152547 tp!2152545))))

(assert (= (and b!7442995 ((_ is ElementMatch!19461) (reg!19790 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7443478))

(assert (= (and b!7442995 ((_ is Concat!28306) (reg!19790 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7443479))

(assert (= (and b!7442995 ((_ is Star!19461) (reg!19790 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7443480))

(assert (= (and b!7442995 ((_ is Union!19461) (reg!19790 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7443481))

(declare-fun b!7443483 () Bool)

(declare-fun e!4444677 () Bool)

(declare-fun tp!2152553 () Bool)

(declare-fun tp!2152551 () Bool)

(assert (=> b!7443483 (= e!4444677 (and tp!2152553 tp!2152551))))

(assert (=> b!7442977 (= tp!2152126 e!4444677)))

(declare-fun b!7443484 () Bool)

(declare-fun tp!2152549 () Bool)

(assert (=> b!7443484 (= e!4444677 tp!2152549)))

(declare-fun b!7443482 () Bool)

(assert (=> b!7443482 (= e!4444677 tp_is_empty!49181)))

(declare-fun b!7443485 () Bool)

(declare-fun tp!2152552 () Bool)

(declare-fun tp!2152550 () Bool)

(assert (=> b!7443485 (= e!4444677 (and tp!2152552 tp!2152550))))

(assert (= (and b!7442977 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443482))

(assert (= (and b!7442977 ((_ is Concat!28306) (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443483))

(assert (= (and b!7442977 ((_ is Star!19461) (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443484))

(assert (= (and b!7442977 ((_ is Union!19461) (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443485))

(declare-fun b!7443487 () Bool)

(declare-fun e!4444678 () Bool)

(declare-fun tp!2152558 () Bool)

(declare-fun tp!2152556 () Bool)

(assert (=> b!7443487 (= e!4444678 (and tp!2152558 tp!2152556))))

(assert (=> b!7442977 (= tp!2152124 e!4444678)))

(declare-fun b!7443488 () Bool)

(declare-fun tp!2152554 () Bool)

(assert (=> b!7443488 (= e!4444678 tp!2152554)))

(declare-fun b!7443486 () Bool)

(assert (=> b!7443486 (= e!4444678 tp_is_empty!49181)))

(declare-fun b!7443489 () Bool)

(declare-fun tp!2152557 () Bool)

(declare-fun tp!2152555 () Bool)

(assert (=> b!7443489 (= e!4444678 (and tp!2152557 tp!2152555))))

(assert (= (and b!7442977 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443486))

(assert (= (and b!7442977 ((_ is Concat!28306) (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443487))

(assert (= (and b!7442977 ((_ is Star!19461) (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443488))

(assert (= (and b!7442977 ((_ is Union!19461) (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443489))

(declare-fun b!7443491 () Bool)

(declare-fun e!4444679 () Bool)

(declare-fun tp!2152563 () Bool)

(declare-fun tp!2152561 () Bool)

(assert (=> b!7443491 (= e!4444679 (and tp!2152563 tp!2152561))))

(assert (=> b!7443013 (= tp!2152170 e!4444679)))

(declare-fun b!7443492 () Bool)

(declare-fun tp!2152559 () Bool)

(assert (=> b!7443492 (= e!4444679 tp!2152559)))

(declare-fun b!7443490 () Bool)

(assert (=> b!7443490 (= e!4444679 tp_is_empty!49181)))

(declare-fun b!7443493 () Bool)

(declare-fun tp!2152562 () Bool)

(declare-fun tp!2152560 () Bool)

(assert (=> b!7443493 (= e!4444679 (and tp!2152562 tp!2152560))))

(assert (= (and b!7443013 ((_ is ElementMatch!19461) (regOne!39434 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443490))

(assert (= (and b!7443013 ((_ is Concat!28306) (regOne!39434 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443491))

(assert (= (and b!7443013 ((_ is Star!19461) (regOne!39434 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443492))

(assert (= (and b!7443013 ((_ is Union!19461) (regOne!39434 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443493))

(declare-fun b!7443495 () Bool)

(declare-fun e!4444680 () Bool)

(declare-fun tp!2152568 () Bool)

(declare-fun tp!2152566 () Bool)

(assert (=> b!7443495 (= e!4444680 (and tp!2152568 tp!2152566))))

(assert (=> b!7443013 (= tp!2152168 e!4444680)))

(declare-fun b!7443496 () Bool)

(declare-fun tp!2152564 () Bool)

(assert (=> b!7443496 (= e!4444680 tp!2152564)))

(declare-fun b!7443494 () Bool)

(assert (=> b!7443494 (= e!4444680 tp_is_empty!49181)))

(declare-fun b!7443497 () Bool)

(declare-fun tp!2152567 () Bool)

(declare-fun tp!2152565 () Bool)

(assert (=> b!7443497 (= e!4444680 (and tp!2152567 tp!2152565))))

(assert (= (and b!7443013 ((_ is ElementMatch!19461) (regTwo!39434 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443494))

(assert (= (and b!7443013 ((_ is Concat!28306) (regTwo!39434 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443495))

(assert (= (and b!7443013 ((_ is Star!19461) (regTwo!39434 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443496))

(assert (= (and b!7443013 ((_ is Union!19461) (regTwo!39434 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443497))

(declare-fun b!7443499 () Bool)

(declare-fun e!4444681 () Bool)

(declare-fun tp!2152573 () Bool)

(declare-fun tp!2152571 () Bool)

(assert (=> b!7443499 (= e!4444681 (and tp!2152573 tp!2152571))))

(assert (=> b!7443097 (= tp!2152272 e!4444681)))

(declare-fun b!7443500 () Bool)

(declare-fun tp!2152569 () Bool)

(assert (=> b!7443500 (= e!4444681 tp!2152569)))

(declare-fun b!7443498 () Bool)

(assert (=> b!7443498 (= e!4444681 tp_is_empty!49181)))

(declare-fun b!7443501 () Bool)

(declare-fun tp!2152572 () Bool)

(declare-fun tp!2152570 () Bool)

(assert (=> b!7443501 (= e!4444681 (and tp!2152572 tp!2152570))))

(assert (= (and b!7443097 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443498))

(assert (= (and b!7443097 ((_ is Concat!28306) (regOne!39434 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443499))

(assert (= (and b!7443097 ((_ is Star!19461) (regOne!39434 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443500))

(assert (= (and b!7443097 ((_ is Union!19461) (regOne!39434 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443501))

(declare-fun b!7443503 () Bool)

(declare-fun e!4444682 () Bool)

(declare-fun tp!2152578 () Bool)

(declare-fun tp!2152576 () Bool)

(assert (=> b!7443503 (= e!4444682 (and tp!2152578 tp!2152576))))

(assert (=> b!7443097 (= tp!2152270 e!4444682)))

(declare-fun b!7443504 () Bool)

(declare-fun tp!2152574 () Bool)

(assert (=> b!7443504 (= e!4444682 tp!2152574)))

(declare-fun b!7443502 () Bool)

(assert (=> b!7443502 (= e!4444682 tp_is_empty!49181)))

(declare-fun b!7443505 () Bool)

(declare-fun tp!2152577 () Bool)

(declare-fun tp!2152575 () Bool)

(assert (=> b!7443505 (= e!4444682 (and tp!2152577 tp!2152575))))

(assert (= (and b!7443097 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443502))

(assert (= (and b!7443097 ((_ is Concat!28306) (regTwo!39434 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443503))

(assert (= (and b!7443097 ((_ is Star!19461) (regTwo!39434 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443504))

(assert (= (and b!7443097 ((_ is Union!19461) (regTwo!39434 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443505))

(declare-fun b!7443507 () Bool)

(declare-fun e!4444683 () Bool)

(declare-fun tp!2152583 () Bool)

(declare-fun tp!2152581 () Bool)

(assert (=> b!7443507 (= e!4444683 (and tp!2152583 tp!2152581))))

(assert (=> b!7443063 (= tp!2152229 e!4444683)))

(declare-fun b!7443508 () Bool)

(declare-fun tp!2152579 () Bool)

(assert (=> b!7443508 (= e!4444683 tp!2152579)))

(declare-fun b!7443506 () Bool)

(assert (=> b!7443506 (= e!4444683 tp_is_empty!49181)))

(declare-fun b!7443509 () Bool)

(declare-fun tp!2152582 () Bool)

(declare-fun tp!2152580 () Bool)

(assert (=> b!7443509 (= e!4444683 (and tp!2152582 tp!2152580))))

(assert (= (and b!7443063 ((_ is ElementMatch!19461) (regOne!39435 (h!78472 (exprs!8901 setElem!56635))))) b!7443506))

(assert (= (and b!7443063 ((_ is Concat!28306) (regOne!39435 (h!78472 (exprs!8901 setElem!56635))))) b!7443507))

(assert (= (and b!7443063 ((_ is Star!19461) (regOne!39435 (h!78472 (exprs!8901 setElem!56635))))) b!7443508))

(assert (= (and b!7443063 ((_ is Union!19461) (regOne!39435 (h!78472 (exprs!8901 setElem!56635))))) b!7443509))

(declare-fun b!7443511 () Bool)

(declare-fun e!4444684 () Bool)

(declare-fun tp!2152588 () Bool)

(declare-fun tp!2152586 () Bool)

(assert (=> b!7443511 (= e!4444684 (and tp!2152588 tp!2152586))))

(assert (=> b!7443063 (= tp!2152227 e!4444684)))

(declare-fun b!7443512 () Bool)

(declare-fun tp!2152584 () Bool)

(assert (=> b!7443512 (= e!4444684 tp!2152584)))

(declare-fun b!7443510 () Bool)

(assert (=> b!7443510 (= e!4444684 tp_is_empty!49181)))

(declare-fun b!7443513 () Bool)

(declare-fun tp!2152587 () Bool)

(declare-fun tp!2152585 () Bool)

(assert (=> b!7443513 (= e!4444684 (and tp!2152587 tp!2152585))))

(assert (= (and b!7443063 ((_ is ElementMatch!19461) (regTwo!39435 (h!78472 (exprs!8901 setElem!56635))))) b!7443510))

(assert (= (and b!7443063 ((_ is Concat!28306) (regTwo!39435 (h!78472 (exprs!8901 setElem!56635))))) b!7443511))

(assert (= (and b!7443063 ((_ is Star!19461) (regTwo!39435 (h!78472 (exprs!8901 setElem!56635))))) b!7443512))

(assert (= (and b!7443063 ((_ is Union!19461) (regTwo!39435 (h!78472 (exprs!8901 setElem!56635))))) b!7443513))

(declare-fun b!7443515 () Bool)

(declare-fun e!4444685 () Bool)

(declare-fun tp!2152593 () Bool)

(declare-fun tp!2152591 () Bool)

(assert (=> b!7443515 (= e!4444685 (and tp!2152593 tp!2152591))))

(assert (=> b!7443054 (= tp!2152216 e!4444685)))

(declare-fun b!7443516 () Bool)

(declare-fun tp!2152589 () Bool)

(assert (=> b!7443516 (= e!4444685 tp!2152589)))

(declare-fun b!7443514 () Bool)

(assert (=> b!7443514 (= e!4444685 tp_is_empty!49181)))

(declare-fun b!7443517 () Bool)

(declare-fun tp!2152592 () Bool)

(declare-fun tp!2152590 () Bool)

(assert (=> b!7443517 (= e!4444685 (and tp!2152592 tp!2152590))))

(assert (= (and b!7443054 ((_ is ElementMatch!19461) (reg!19790 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443514))

(assert (= (and b!7443054 ((_ is Concat!28306) (reg!19790 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443515))

(assert (= (and b!7443054 ((_ is Star!19461) (reg!19790 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443516))

(assert (= (and b!7443054 ((_ is Union!19461) (reg!19790 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443517))

(declare-fun b!7443519 () Bool)

(declare-fun e!4444686 () Bool)

(declare-fun tp!2152598 () Bool)

(declare-fun tp!2152596 () Bool)

(assert (=> b!7443519 (= e!4444686 (and tp!2152598 tp!2152596))))

(assert (=> b!7442991 (= tp!2152140 e!4444686)))

(declare-fun b!7443520 () Bool)

(declare-fun tp!2152594 () Bool)

(assert (=> b!7443520 (= e!4444686 tp!2152594)))

(declare-fun b!7443518 () Bool)

(assert (=> b!7443518 (= e!4444686 tp_is_empty!49181)))

(declare-fun b!7443521 () Bool)

(declare-fun tp!2152597 () Bool)

(declare-fun tp!2152595 () Bool)

(assert (=> b!7443521 (= e!4444686 (and tp!2152597 tp!2152595))))

(assert (= (and b!7442991 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443518))

(assert (= (and b!7442991 ((_ is Concat!28306) (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443519))

(assert (= (and b!7442991 ((_ is Star!19461) (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443520))

(assert (= (and b!7442991 ((_ is Union!19461) (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443521))

(declare-fun b!7443523 () Bool)

(declare-fun e!4444687 () Bool)

(declare-fun tp!2152603 () Bool)

(declare-fun tp!2152601 () Bool)

(assert (=> b!7443523 (= e!4444687 (and tp!2152603 tp!2152601))))

(assert (=> b!7442991 (= tp!2152138 e!4444687)))

(declare-fun b!7443524 () Bool)

(declare-fun tp!2152599 () Bool)

(assert (=> b!7443524 (= e!4444687 tp!2152599)))

(declare-fun b!7443522 () Bool)

(assert (=> b!7443522 (= e!4444687 tp_is_empty!49181)))

(declare-fun b!7443525 () Bool)

(declare-fun tp!2152602 () Bool)

(declare-fun tp!2152600 () Bool)

(assert (=> b!7443525 (= e!4444687 (and tp!2152602 tp!2152600))))

(assert (= (and b!7442991 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443522))

(assert (= (and b!7442991 ((_ is Concat!28306) (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443523))

(assert (= (and b!7442991 ((_ is Star!19461) (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443524))

(assert (= (and b!7442991 ((_ is Union!19461) (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443525))

(declare-fun b!7443527 () Bool)

(declare-fun e!4444688 () Bool)

(declare-fun tp!2152608 () Bool)

(declare-fun tp!2152606 () Bool)

(assert (=> b!7443527 (= e!4444688 (and tp!2152608 tp!2152606))))

(assert (=> b!7442982 (= tp!2152127 e!4444688)))

(declare-fun b!7443528 () Bool)

(declare-fun tp!2152604 () Bool)

(assert (=> b!7443528 (= e!4444688 tp!2152604)))

(declare-fun b!7443526 () Bool)

(assert (=> b!7443526 (= e!4444688 tp_is_empty!49181)))

(declare-fun b!7443529 () Bool)

(declare-fun tp!2152607 () Bool)

(declare-fun tp!2152605 () Bool)

(assert (=> b!7443529 (= e!4444688 (and tp!2152607 tp!2152605))))

(assert (= (and b!7442982 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443526))

(assert (= (and b!7442982 ((_ is Concat!28306) (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443527))

(assert (= (and b!7442982 ((_ is Star!19461) (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443528))

(assert (= (and b!7442982 ((_ is Union!19461) (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443529))

(declare-fun b!7443531 () Bool)

(declare-fun e!4444689 () Bool)

(declare-fun tp!2152613 () Bool)

(declare-fun tp!2152611 () Bool)

(assert (=> b!7443531 (= e!4444689 (and tp!2152613 tp!2152611))))

(assert (=> b!7443023 (= tp!2152179 e!4444689)))

(declare-fun b!7443532 () Bool)

(declare-fun tp!2152609 () Bool)

(assert (=> b!7443532 (= e!4444689 tp!2152609)))

(declare-fun b!7443530 () Bool)

(assert (=> b!7443530 (= e!4444689 tp_is_empty!49181)))

(declare-fun b!7443533 () Bool)

(declare-fun tp!2152612 () Bool)

(declare-fun tp!2152610 () Bool)

(assert (=> b!7443533 (= e!4444689 (and tp!2152612 tp!2152610))))

(assert (= (and b!7443023 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443530))

(assert (= (and b!7443023 ((_ is Concat!28306) (regOne!39435 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443531))

(assert (= (and b!7443023 ((_ is Star!19461) (regOne!39435 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443532))

(assert (= (and b!7443023 ((_ is Union!19461) (regOne!39435 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443533))

(declare-fun b!7443535 () Bool)

(declare-fun e!4444690 () Bool)

(declare-fun tp!2152618 () Bool)

(declare-fun tp!2152616 () Bool)

(assert (=> b!7443535 (= e!4444690 (and tp!2152618 tp!2152616))))

(assert (=> b!7443023 (= tp!2152177 e!4444690)))

(declare-fun b!7443536 () Bool)

(declare-fun tp!2152614 () Bool)

(assert (=> b!7443536 (= e!4444690 tp!2152614)))

(declare-fun b!7443534 () Bool)

(assert (=> b!7443534 (= e!4444690 tp_is_empty!49181)))

(declare-fun b!7443537 () Bool)

(declare-fun tp!2152617 () Bool)

(declare-fun tp!2152615 () Bool)

(assert (=> b!7443537 (= e!4444690 (and tp!2152617 tp!2152615))))

(assert (= (and b!7443023 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443534))

(assert (= (and b!7443023 ((_ is Concat!28306) (regTwo!39435 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443535))

(assert (= (and b!7443023 ((_ is Star!19461) (regTwo!39435 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443536))

(assert (= (and b!7443023 ((_ is Union!19461) (regTwo!39435 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443537))

(declare-fun b!7443539 () Bool)

(declare-fun e!4444691 () Bool)

(declare-fun tp!2152623 () Bool)

(declare-fun tp!2152621 () Bool)

(assert (=> b!7443539 (= e!4444691 (and tp!2152623 tp!2152621))))

(assert (=> b!7443045 (= tp!2152210 e!4444691)))

(declare-fun b!7443540 () Bool)

(declare-fun tp!2152619 () Bool)

(assert (=> b!7443540 (= e!4444691 tp!2152619)))

(declare-fun b!7443538 () Bool)

(assert (=> b!7443538 (= e!4444691 tp_is_empty!49181)))

(declare-fun b!7443541 () Bool)

(declare-fun tp!2152622 () Bool)

(declare-fun tp!2152620 () Bool)

(assert (=> b!7443541 (= e!4444691 (and tp!2152622 tp!2152620))))

(assert (= (and b!7443045 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443538))

(assert (= (and b!7443045 ((_ is Concat!28306) (regOne!39434 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443539))

(assert (= (and b!7443045 ((_ is Star!19461) (regOne!39434 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443540))

(assert (= (and b!7443045 ((_ is Union!19461) (regOne!39434 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443541))

(declare-fun b!7443543 () Bool)

(declare-fun e!4444692 () Bool)

(declare-fun tp!2152628 () Bool)

(declare-fun tp!2152626 () Bool)

(assert (=> b!7443543 (= e!4444692 (and tp!2152628 tp!2152626))))

(assert (=> b!7443045 (= tp!2152208 e!4444692)))

(declare-fun b!7443544 () Bool)

(declare-fun tp!2152624 () Bool)

(assert (=> b!7443544 (= e!4444692 tp!2152624)))

(declare-fun b!7443542 () Bool)

(assert (=> b!7443542 (= e!4444692 tp_is_empty!49181)))

(declare-fun b!7443545 () Bool)

(declare-fun tp!2152627 () Bool)

(declare-fun tp!2152625 () Bool)

(assert (=> b!7443545 (= e!4444692 (and tp!2152627 tp!2152625))))

(assert (= (and b!7443045 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443542))

(assert (= (and b!7443045 ((_ is Concat!28306) (regTwo!39434 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443543))

(assert (= (and b!7443045 ((_ is Star!19461) (regTwo!39434 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443544))

(assert (= (and b!7443045 ((_ is Union!19461) (regTwo!39434 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443545))

(declare-fun b!7443547 () Bool)

(declare-fun e!4444693 () Bool)

(declare-fun tp!2152633 () Bool)

(declare-fun tp!2152631 () Bool)

(assert (=> b!7443547 (= e!4444693 (and tp!2152633 tp!2152631))))

(assert (=> b!7443085 (= tp!2152257 e!4444693)))

(declare-fun b!7443548 () Bool)

(declare-fun tp!2152629 () Bool)

(assert (=> b!7443548 (= e!4444693 tp!2152629)))

(declare-fun b!7443546 () Bool)

(assert (=> b!7443546 (= e!4444693 tp_is_empty!49181)))

(declare-fun b!7443549 () Bool)

(declare-fun tp!2152632 () Bool)

(declare-fun tp!2152630 () Bool)

(assert (=> b!7443549 (= e!4444693 (and tp!2152632 tp!2152630))))

(assert (= (and b!7443085 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443546))

(assert (= (and b!7443085 ((_ is Concat!28306) (regOne!39434 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443547))

(assert (= (and b!7443085 ((_ is Star!19461) (regOne!39434 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443548))

(assert (= (and b!7443085 ((_ is Union!19461) (regOne!39434 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443549))

(declare-fun b!7443551 () Bool)

(declare-fun e!4444694 () Bool)

(declare-fun tp!2152638 () Bool)

(declare-fun tp!2152636 () Bool)

(assert (=> b!7443551 (= e!4444694 (and tp!2152638 tp!2152636))))

(assert (=> b!7443085 (= tp!2152255 e!4444694)))

(declare-fun b!7443552 () Bool)

(declare-fun tp!2152634 () Bool)

(assert (=> b!7443552 (= e!4444694 tp!2152634)))

(declare-fun b!7443550 () Bool)

(assert (=> b!7443550 (= e!4444694 tp_is_empty!49181)))

(declare-fun b!7443553 () Bool)

(declare-fun tp!2152637 () Bool)

(declare-fun tp!2152635 () Bool)

(assert (=> b!7443553 (= e!4444694 (and tp!2152637 tp!2152635))))

(assert (= (and b!7443085 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443550))

(assert (= (and b!7443085 ((_ is Concat!28306) (regTwo!39434 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443551))

(assert (= (and b!7443085 ((_ is Star!19461) (regTwo!39434 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443552))

(assert (= (and b!7443085 ((_ is Union!19461) (regTwo!39434 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443553))

(declare-fun b!7443555 () Bool)

(declare-fun e!4444695 () Bool)

(declare-fun tp!2152643 () Bool)

(declare-fun tp!2152641 () Bool)

(assert (=> b!7443555 (= e!4444695 (and tp!2152643 tp!2152641))))

(assert (=> b!7443025 (= tp!2152185 e!4444695)))

(declare-fun b!7443556 () Bool)

(declare-fun tp!2152639 () Bool)

(assert (=> b!7443556 (= e!4444695 tp!2152639)))

(declare-fun b!7443554 () Bool)

(assert (=> b!7443554 (= e!4444695 tp_is_empty!49181)))

(declare-fun b!7443557 () Bool)

(declare-fun tp!2152642 () Bool)

(declare-fun tp!2152640 () Bool)

(assert (=> b!7443557 (= e!4444695 (and tp!2152642 tp!2152640))))

(assert (= (and b!7443025 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443554))

(assert (= (and b!7443025 ((_ is Concat!28306) (regOne!39434 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443555))

(assert (= (and b!7443025 ((_ is Star!19461) (regOne!39434 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443556))

(assert (= (and b!7443025 ((_ is Union!19461) (regOne!39434 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443557))

(declare-fun b!7443559 () Bool)

(declare-fun e!4444696 () Bool)

(declare-fun tp!2152648 () Bool)

(declare-fun tp!2152646 () Bool)

(assert (=> b!7443559 (= e!4444696 (and tp!2152648 tp!2152646))))

(assert (=> b!7443025 (= tp!2152183 e!4444696)))

(declare-fun b!7443560 () Bool)

(declare-fun tp!2152644 () Bool)

(assert (=> b!7443560 (= e!4444696 tp!2152644)))

(declare-fun b!7443558 () Bool)

(assert (=> b!7443558 (= e!4444696 tp_is_empty!49181)))

(declare-fun b!7443561 () Bool)

(declare-fun tp!2152647 () Bool)

(declare-fun tp!2152645 () Bool)

(assert (=> b!7443561 (= e!4444696 (and tp!2152647 tp!2152645))))

(assert (= (and b!7443025 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443558))

(assert (= (and b!7443025 ((_ is Concat!28306) (regTwo!39434 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443559))

(assert (= (and b!7443025 ((_ is Star!19461) (regTwo!39434 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443560))

(assert (= (and b!7443025 ((_ is Union!19461) (regTwo!39434 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443561))

(declare-fun b!7443563 () Bool)

(declare-fun e!4444697 () Bool)

(declare-fun tp!2152653 () Bool)

(declare-fun tp!2152651 () Bool)

(assert (=> b!7443563 (= e!4444697 (and tp!2152653 tp!2152651))))

(assert (=> b!7443043 (= tp!2152204 e!4444697)))

(declare-fun b!7443564 () Bool)

(declare-fun tp!2152649 () Bool)

(assert (=> b!7443564 (= e!4444697 tp!2152649)))

(declare-fun b!7443562 () Bool)

(assert (=> b!7443562 (= e!4444697 tp_is_empty!49181)))

(declare-fun b!7443565 () Bool)

(declare-fun tp!2152652 () Bool)

(declare-fun tp!2152650 () Bool)

(assert (=> b!7443565 (= e!4444697 (and tp!2152652 tp!2152650))))

(assert (= (and b!7443043 ((_ is ElementMatch!19461) (regOne!39435 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443562))

(assert (= (and b!7443043 ((_ is Concat!28306) (regOne!39435 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443563))

(assert (= (and b!7443043 ((_ is Star!19461) (regOne!39435 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443564))

(assert (= (and b!7443043 ((_ is Union!19461) (regOne!39435 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443565))

(declare-fun b!7443567 () Bool)

(declare-fun e!4444698 () Bool)

(declare-fun tp!2152658 () Bool)

(declare-fun tp!2152656 () Bool)

(assert (=> b!7443567 (= e!4444698 (and tp!2152658 tp!2152656))))

(assert (=> b!7443043 (= tp!2152202 e!4444698)))

(declare-fun b!7443568 () Bool)

(declare-fun tp!2152654 () Bool)

(assert (=> b!7443568 (= e!4444698 tp!2152654)))

(declare-fun b!7443566 () Bool)

(assert (=> b!7443566 (= e!4444698 tp_is_empty!49181)))

(declare-fun b!7443569 () Bool)

(declare-fun tp!2152657 () Bool)

(declare-fun tp!2152655 () Bool)

(assert (=> b!7443569 (= e!4444698 (and tp!2152657 tp!2152655))))

(assert (= (and b!7443043 ((_ is ElementMatch!19461) (regTwo!39435 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443566))

(assert (= (and b!7443043 ((_ is Concat!28306) (regTwo!39435 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443567))

(assert (= (and b!7443043 ((_ is Star!19461) (regTwo!39435 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443568))

(assert (= (and b!7443043 ((_ is Union!19461) (regTwo!39435 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443569))

(declare-fun b!7443571 () Bool)

(declare-fun e!4444699 () Bool)

(declare-fun tp!2152663 () Bool)

(declare-fun tp!2152661 () Bool)

(assert (=> b!7443571 (= e!4444699 (and tp!2152663 tp!2152661))))

(assert (=> b!7443131 (= tp!2152316 e!4444699)))

(declare-fun b!7443572 () Bool)

(declare-fun tp!2152659 () Bool)

(assert (=> b!7443572 (= e!4444699 tp!2152659)))

(declare-fun b!7443570 () Bool)

(assert (=> b!7443570 (= e!4444699 tp_is_empty!49181)))

(declare-fun b!7443573 () Bool)

(declare-fun tp!2152662 () Bool)

(declare-fun tp!2152660 () Bool)

(assert (=> b!7443573 (= e!4444699 (and tp!2152662 tp!2152660))))

(assert (= (and b!7443131 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443570))

(assert (= (and b!7443131 ((_ is Concat!28306) (regOne!39434 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443571))

(assert (= (and b!7443131 ((_ is Star!19461) (regOne!39434 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443572))

(assert (= (and b!7443131 ((_ is Union!19461) (regOne!39434 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443573))

(declare-fun b!7443575 () Bool)

(declare-fun e!4444700 () Bool)

(declare-fun tp!2152668 () Bool)

(declare-fun tp!2152666 () Bool)

(assert (=> b!7443575 (= e!4444700 (and tp!2152668 tp!2152666))))

(assert (=> b!7443131 (= tp!2152314 e!4444700)))

(declare-fun b!7443576 () Bool)

(declare-fun tp!2152664 () Bool)

(assert (=> b!7443576 (= e!4444700 tp!2152664)))

(declare-fun b!7443574 () Bool)

(assert (=> b!7443574 (= e!4444700 tp_is_empty!49181)))

(declare-fun b!7443577 () Bool)

(declare-fun tp!2152667 () Bool)

(declare-fun tp!2152665 () Bool)

(assert (=> b!7443577 (= e!4444700 (and tp!2152667 tp!2152665))))

(assert (= (and b!7443131 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443574))

(assert (= (and b!7443131 ((_ is Concat!28306) (regTwo!39434 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443575))

(assert (= (and b!7443131 ((_ is Star!19461) (regTwo!39434 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443576))

(assert (= (and b!7443131 ((_ is Union!19461) (regTwo!39434 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443577))

(declare-fun b!7443579 () Bool)

(declare-fun e!4444701 () Bool)

(declare-fun tp!2152673 () Bool)

(declare-fun tp!2152671 () Bool)

(assert (=> b!7443579 (= e!4444701 (and tp!2152673 tp!2152671))))

(assert (=> b!7443034 (= tp!2152191 e!4444701)))

(declare-fun b!7443580 () Bool)

(declare-fun tp!2152669 () Bool)

(assert (=> b!7443580 (= e!4444701 tp!2152669)))

(declare-fun b!7443578 () Bool)

(assert (=> b!7443578 (= e!4444701 tp_is_empty!49181)))

(declare-fun b!7443581 () Bool)

(declare-fun tp!2152672 () Bool)

(declare-fun tp!2152670 () Bool)

(assert (=> b!7443581 (= e!4444701 (and tp!2152672 tp!2152670))))

(assert (= (and b!7443034 ((_ is ElementMatch!19461) (reg!19790 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443578))

(assert (= (and b!7443034 ((_ is Concat!28306) (reg!19790 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443579))

(assert (= (and b!7443034 ((_ is Star!19461) (reg!19790 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443580))

(assert (= (and b!7443034 ((_ is Union!19461) (reg!19790 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443581))

(declare-fun b!7443585 () Bool)

(declare-fun e!4444704 () Bool)

(declare-fun tp!2152678 () Bool)

(declare-fun tp!2152676 () Bool)

(assert (=> b!7443585 (= e!4444704 (and tp!2152678 tp!2152676))))

(assert (=> b!7443090 (= tp!2152258 e!4444704)))

(declare-fun b!7443586 () Bool)

(declare-fun tp!2152674 () Bool)

(assert (=> b!7443586 (= e!4444704 tp!2152674)))

(declare-fun b!7443584 () Bool)

(assert (=> b!7443584 (= e!4444704 tp_is_empty!49181)))

(declare-fun b!7443587 () Bool)

(declare-fun tp!2152677 () Bool)

(declare-fun tp!2152675 () Bool)

(assert (=> b!7443587 (= e!4444704 (and tp!2152677 tp!2152675))))

(assert (= (and b!7443090 ((_ is ElementMatch!19461) (reg!19790 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443584))

(assert (= (and b!7443090 ((_ is Concat!28306) (reg!19790 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443585))

(assert (= (and b!7443090 ((_ is Star!19461) (reg!19790 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443586))

(assert (= (and b!7443090 ((_ is Union!19461) (reg!19790 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443587))

(declare-fun b!7443591 () Bool)

(declare-fun e!4444707 () Bool)

(declare-fun tp!2152683 () Bool)

(declare-fun tp!2152681 () Bool)

(assert (=> b!7443591 (= e!4444707 (and tp!2152683 tp!2152681))))

(assert (=> b!7442968 (= tp!2152112 e!4444707)))

(declare-fun b!7443592 () Bool)

(declare-fun tp!2152679 () Bool)

(assert (=> b!7443592 (= e!4444707 tp!2152679)))

(declare-fun b!7443590 () Bool)

(assert (=> b!7443590 (= e!4444707 tp_is_empty!49181)))

(declare-fun b!7443593 () Bool)

(declare-fun tp!2152682 () Bool)

(declare-fun tp!2152680 () Bool)

(assert (=> b!7443593 (= e!4444707 (and tp!2152682 tp!2152680))))

(assert (= (and b!7442968 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443590))

(assert (= (and b!7442968 ((_ is Concat!28306) (reg!19790 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443591))

(assert (= (and b!7442968 ((_ is Star!19461) (reg!19790 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443592))

(assert (= (and b!7442968 ((_ is Union!19461) (reg!19790 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443593))

(declare-fun b!7443595 () Bool)

(declare-fun e!4444708 () Bool)

(declare-fun tp!2152688 () Bool)

(declare-fun tp!2152686 () Bool)

(assert (=> b!7443595 (= e!4444708 (and tp!2152688 tp!2152686))))

(assert (=> b!7443117 (= tp!2152295 e!4444708)))

(declare-fun b!7443596 () Bool)

(declare-fun tp!2152684 () Bool)

(assert (=> b!7443596 (= e!4444708 tp!2152684)))

(declare-fun b!7443594 () Bool)

(assert (=> b!7443594 (= e!4444708 tp_is_empty!49181)))

(declare-fun b!7443597 () Bool)

(declare-fun tp!2152687 () Bool)

(declare-fun tp!2152685 () Bool)

(assert (=> b!7443597 (= e!4444708 (and tp!2152687 tp!2152685))))

(assert (= (and b!7443117 ((_ is ElementMatch!19461) (regOne!39435 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443594))

(assert (= (and b!7443117 ((_ is Concat!28306) (regOne!39435 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443595))

(assert (= (and b!7443117 ((_ is Star!19461) (regOne!39435 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443596))

(assert (= (and b!7443117 ((_ is Union!19461) (regOne!39435 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443597))

(declare-fun b!7443599 () Bool)

(declare-fun e!4444709 () Bool)

(declare-fun tp!2152693 () Bool)

(declare-fun tp!2152691 () Bool)

(assert (=> b!7443599 (= e!4444709 (and tp!2152693 tp!2152691))))

(assert (=> b!7443117 (= tp!2152293 e!4444709)))

(declare-fun b!7443600 () Bool)

(declare-fun tp!2152689 () Bool)

(assert (=> b!7443600 (= e!4444709 tp!2152689)))

(declare-fun b!7443598 () Bool)

(assert (=> b!7443598 (= e!4444709 tp_is_empty!49181)))

(declare-fun b!7443601 () Bool)

(declare-fun tp!2152692 () Bool)

(declare-fun tp!2152690 () Bool)

(assert (=> b!7443601 (= e!4444709 (and tp!2152692 tp!2152690))))

(assert (= (and b!7443117 ((_ is ElementMatch!19461) (regTwo!39435 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443598))

(assert (= (and b!7443117 ((_ is Concat!28306) (regTwo!39435 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443599))

(assert (= (and b!7443117 ((_ is Star!19461) (regTwo!39435 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443600))

(assert (= (and b!7443117 ((_ is Union!19461) (regTwo!39435 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443601))

(declare-fun b!7443603 () Bool)

(declare-fun e!4444710 () Bool)

(declare-fun tp!2152698 () Bool)

(declare-fun tp!2152696 () Bool)

(assert (=> b!7443603 (= e!4444710 (and tp!2152698 tp!2152696))))

(assert (=> b!7443112 (= tp!2152288 e!4444710)))

(declare-fun b!7443604 () Bool)

(declare-fun tp!2152694 () Bool)

(assert (=> b!7443604 (= e!4444710 tp!2152694)))

(declare-fun b!7443602 () Bool)

(assert (=> b!7443602 (= e!4444710 tp_is_empty!49181)))

(declare-fun b!7443605 () Bool)

(declare-fun tp!2152697 () Bool)

(declare-fun tp!2152695 () Bool)

(assert (=> b!7443605 (= e!4444710 (and tp!2152697 tp!2152695))))

(assert (= (and b!7443112 ((_ is ElementMatch!19461) (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7443602))

(assert (= (and b!7443112 ((_ is Concat!28306) (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7443603))

(assert (= (and b!7443112 ((_ is Star!19461) (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7443604))

(assert (= (and b!7443112 ((_ is Union!19461) (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7443605))

(declare-fun b!7443607 () Bool)

(declare-fun e!4444711 () Bool)

(declare-fun tp!2152703 () Bool)

(declare-fun tp!2152701 () Bool)

(assert (=> b!7443607 (= e!4444711 (and tp!2152703 tp!2152701))))

(assert (=> b!7443112 (= tp!2152286 e!4444711)))

(declare-fun b!7443608 () Bool)

(declare-fun tp!2152699 () Bool)

(assert (=> b!7443608 (= e!4444711 tp!2152699)))

(declare-fun b!7443606 () Bool)

(assert (=> b!7443606 (= e!4444711 tp_is_empty!49181)))

(declare-fun b!7443609 () Bool)

(declare-fun tp!2152702 () Bool)

(declare-fun tp!2152700 () Bool)

(assert (=> b!7443609 (= e!4444711 (and tp!2152702 tp!2152700))))

(assert (= (and b!7443112 ((_ is ElementMatch!19461) (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7443606))

(assert (= (and b!7443112 ((_ is Concat!28306) (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7443607))

(assert (= (and b!7443112 ((_ is Star!19461) (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7443608))

(assert (= (and b!7443112 ((_ is Union!19461) (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7443609))

(declare-fun b!7443611 () Bool)

(declare-fun e!4444712 () Bool)

(declare-fun tp!2152708 () Bool)

(declare-fun tp!2152706 () Bool)

(assert (=> b!7443611 (= e!4444712 (and tp!2152708 tp!2152706))))

(assert (=> b!7443057 (= tp!2152225 e!4444712)))

(declare-fun b!7443612 () Bool)

(declare-fun tp!2152704 () Bool)

(assert (=> b!7443612 (= e!4444712 tp!2152704)))

(declare-fun b!7443610 () Bool)

(assert (=> b!7443610 (= e!4444712 tp_is_empty!49181)))

(declare-fun b!7443613 () Bool)

(declare-fun tp!2152707 () Bool)

(declare-fun tp!2152705 () Bool)

(assert (=> b!7443613 (= e!4444712 (and tp!2152707 tp!2152705))))

(assert (= (and b!7443057 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443610))

(assert (= (and b!7443057 ((_ is Concat!28306) (regOne!39434 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443611))

(assert (= (and b!7443057 ((_ is Star!19461) (regOne!39434 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443612))

(assert (= (and b!7443057 ((_ is Union!19461) (regOne!39434 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443613))

(declare-fun b!7443615 () Bool)

(declare-fun e!4444713 () Bool)

(declare-fun tp!2152713 () Bool)

(declare-fun tp!2152711 () Bool)

(assert (=> b!7443615 (= e!4444713 (and tp!2152713 tp!2152711))))

(assert (=> b!7443057 (= tp!2152223 e!4444713)))

(declare-fun b!7443616 () Bool)

(declare-fun tp!2152709 () Bool)

(assert (=> b!7443616 (= e!4444713 tp!2152709)))

(declare-fun b!7443614 () Bool)

(assert (=> b!7443614 (= e!4444713 tp_is_empty!49181)))

(declare-fun b!7443617 () Bool)

(declare-fun tp!2152712 () Bool)

(declare-fun tp!2152710 () Bool)

(assert (=> b!7443617 (= e!4444713 (and tp!2152712 tp!2152710))))

(assert (= (and b!7443057 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443614))

(assert (= (and b!7443057 ((_ is Concat!28306) (regTwo!39434 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443615))

(assert (= (and b!7443057 ((_ is Star!19461) (regTwo!39434 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443616))

(assert (= (and b!7443057 ((_ is Union!19461) (regTwo!39434 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443617))

(declare-fun b!7443619 () Bool)

(declare-fun e!4444714 () Bool)

(declare-fun tp!2152718 () Bool)

(declare-fun tp!2152716 () Bool)

(assert (=> b!7443619 (= e!4444714 (and tp!2152718 tp!2152716))))

(assert (=> b!7442985 (= tp!2152136 e!4444714)))

(declare-fun b!7443620 () Bool)

(declare-fun tp!2152714 () Bool)

(assert (=> b!7443620 (= e!4444714 tp!2152714)))

(declare-fun b!7443618 () Bool)

(assert (=> b!7443618 (= e!4444714 tp_is_empty!49181)))

(declare-fun b!7443621 () Bool)

(declare-fun tp!2152717 () Bool)

(declare-fun tp!2152715 () Bool)

(assert (=> b!7443621 (= e!4444714 (and tp!2152717 tp!2152715))))

(assert (= (and b!7442985 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443618))

(assert (= (and b!7442985 ((_ is Concat!28306) (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443619))

(assert (= (and b!7442985 ((_ is Star!19461) (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443620))

(assert (= (and b!7442985 ((_ is Union!19461) (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443621))

(declare-fun b!7443623 () Bool)

(declare-fun e!4444715 () Bool)

(declare-fun tp!2152723 () Bool)

(declare-fun tp!2152721 () Bool)

(assert (=> b!7443623 (= e!4444715 (and tp!2152723 tp!2152721))))

(assert (=> b!7442985 (= tp!2152134 e!4444715)))

(declare-fun b!7443624 () Bool)

(declare-fun tp!2152719 () Bool)

(assert (=> b!7443624 (= e!4444715 tp!2152719)))

(declare-fun b!7443622 () Bool)

(assert (=> b!7443622 (= e!4444715 tp_is_empty!49181)))

(declare-fun b!7443625 () Bool)

(declare-fun tp!2152722 () Bool)

(declare-fun tp!2152720 () Bool)

(assert (=> b!7443625 (= e!4444715 (and tp!2152722 tp!2152720))))

(assert (= (and b!7442985 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443622))

(assert (= (and b!7442985 ((_ is Concat!28306) (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443623))

(assert (= (and b!7442985 ((_ is Star!19461) (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443624))

(assert (= (and b!7442985 ((_ is Union!19461) (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443625))

(declare-fun b!7443627 () Bool)

(declare-fun e!4444716 () Bool)

(declare-fun tp!2152728 () Bool)

(declare-fun tp!2152726 () Bool)

(assert (=> b!7443627 (= e!4444716 (and tp!2152728 tp!2152726))))

(assert (=> b!7442978 (= tp!2152122 e!4444716)))

(declare-fun b!7443628 () Bool)

(declare-fun tp!2152724 () Bool)

(assert (=> b!7443628 (= e!4444716 tp!2152724)))

(declare-fun b!7443626 () Bool)

(assert (=> b!7443626 (= e!4444716 tp_is_empty!49181)))

(declare-fun b!7443629 () Bool)

(declare-fun tp!2152727 () Bool)

(declare-fun tp!2152725 () Bool)

(assert (=> b!7443629 (= e!4444716 (and tp!2152727 tp!2152725))))

(assert (= (and b!7442978 ((_ is ElementMatch!19461) (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443626))

(assert (= (and b!7442978 ((_ is Concat!28306) (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443627))

(assert (= (and b!7442978 ((_ is Star!19461) (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443628))

(assert (= (and b!7442978 ((_ is Union!19461) (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443629))

(declare-fun b!7443631 () Bool)

(declare-fun e!4444717 () Bool)

(declare-fun tp!2152733 () Bool)

(declare-fun tp!2152731 () Bool)

(assert (=> b!7443631 (= e!4444717 (and tp!2152733 tp!2152731))))

(assert (=> b!7443018 (= tp!2152171 e!4444717)))

(declare-fun b!7443632 () Bool)

(declare-fun tp!2152729 () Bool)

(assert (=> b!7443632 (= e!4444717 tp!2152729)))

(declare-fun b!7443630 () Bool)

(assert (=> b!7443630 (= e!4444717 tp_is_empty!49181)))

(declare-fun b!7443633 () Bool)

(declare-fun tp!2152732 () Bool)

(declare-fun tp!2152730 () Bool)

(assert (=> b!7443633 (= e!4444717 (and tp!2152732 tp!2152730))))

(assert (= (and b!7443018 ((_ is ElementMatch!19461) (reg!19790 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443630))

(assert (= (and b!7443018 ((_ is Concat!28306) (reg!19790 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443631))

(assert (= (and b!7443018 ((_ is Star!19461) (reg!19790 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443632))

(assert (= (and b!7443018 ((_ is Union!19461) (reg!19790 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443633))

(declare-fun b!7443635 () Bool)

(declare-fun e!4444718 () Bool)

(declare-fun tp!2152738 () Bool)

(declare-fun tp!2152736 () Bool)

(assert (=> b!7443635 (= e!4444718 (and tp!2152738 tp!2152736))))

(assert (=> b!7443082 (= tp!2152251 e!4444718)))

(declare-fun b!7443636 () Bool)

(declare-fun tp!2152734 () Bool)

(assert (=> b!7443636 (= e!4444718 tp!2152734)))

(declare-fun b!7443634 () Bool)

(assert (=> b!7443634 (= e!4444718 tp_is_empty!49181)))

(declare-fun b!7443637 () Bool)

(declare-fun tp!2152737 () Bool)

(declare-fun tp!2152735 () Bool)

(assert (=> b!7443637 (= e!4444718 (and tp!2152737 tp!2152735))))

(assert (= (and b!7443082 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443634))

(assert (= (and b!7443082 ((_ is Concat!28306) (regOne!39435 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443635))

(assert (= (and b!7443082 ((_ is Star!19461) (regOne!39435 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443636))

(assert (= (and b!7443082 ((_ is Union!19461) (regOne!39435 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443637))

(declare-fun b!7443639 () Bool)

(declare-fun e!4444719 () Bool)

(declare-fun tp!2152743 () Bool)

(declare-fun tp!2152741 () Bool)

(assert (=> b!7443639 (= e!4444719 (and tp!2152743 tp!2152741))))

(assert (=> b!7443082 (= tp!2152249 e!4444719)))

(declare-fun b!7443640 () Bool)

(declare-fun tp!2152739 () Bool)

(assert (=> b!7443640 (= e!4444719 tp!2152739)))

(declare-fun b!7443638 () Bool)

(assert (=> b!7443638 (= e!4444719 tp_is_empty!49181)))

(declare-fun b!7443641 () Bool)

(declare-fun tp!2152742 () Bool)

(declare-fun tp!2152740 () Bool)

(assert (=> b!7443641 (= e!4444719 (and tp!2152742 tp!2152740))))

(assert (= (and b!7443082 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443638))

(assert (= (and b!7443082 ((_ is Concat!28306) (regTwo!39435 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443639))

(assert (= (and b!7443082 ((_ is Star!19461) (regTwo!39435 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443640))

(assert (= (and b!7443082 ((_ is Union!19461) (regTwo!39435 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443641))

(declare-fun b!7443643 () Bool)

(declare-fun e!4444720 () Bool)

(declare-fun tp!2152748 () Bool)

(declare-fun tp!2152746 () Bool)

(assert (=> b!7443643 (= e!4444720 (and tp!2152748 tp!2152746))))

(assert (=> b!7443095 (= tp!2152266 e!4444720)))

(declare-fun b!7443644 () Bool)

(declare-fun tp!2152744 () Bool)

(assert (=> b!7443644 (= e!4444720 tp!2152744)))

(declare-fun b!7443642 () Bool)

(assert (=> b!7443642 (= e!4444720 tp_is_empty!49181)))

(declare-fun b!7443645 () Bool)

(declare-fun tp!2152747 () Bool)

(declare-fun tp!2152745 () Bool)

(assert (=> b!7443645 (= e!4444720 (and tp!2152747 tp!2152745))))

(assert (= (and b!7443095 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443642))

(assert (= (and b!7443095 ((_ is Concat!28306) (regOne!39435 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443643))

(assert (= (and b!7443095 ((_ is Star!19461) (regOne!39435 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443644))

(assert (= (and b!7443095 ((_ is Union!19461) (regOne!39435 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443645))

(declare-fun b!7443647 () Bool)

(declare-fun e!4444721 () Bool)

(declare-fun tp!2152753 () Bool)

(declare-fun tp!2152751 () Bool)

(assert (=> b!7443647 (= e!4444721 (and tp!2152753 tp!2152751))))

(assert (=> b!7443095 (= tp!2152264 e!4444721)))

(declare-fun b!7443648 () Bool)

(declare-fun tp!2152749 () Bool)

(assert (=> b!7443648 (= e!4444721 tp!2152749)))

(declare-fun b!7443646 () Bool)

(assert (=> b!7443646 (= e!4444721 tp_is_empty!49181)))

(declare-fun b!7443649 () Bool)

(declare-fun tp!2152752 () Bool)

(declare-fun tp!2152750 () Bool)

(assert (=> b!7443649 (= e!4444721 (and tp!2152752 tp!2152750))))

(assert (= (and b!7443095 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443646))

(assert (= (and b!7443095 ((_ is Concat!28306) (regTwo!39435 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443647))

(assert (= (and b!7443095 ((_ is Star!19461) (regTwo!39435 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443648))

(assert (= (and b!7443095 ((_ is Union!19461) (regTwo!39435 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443649))

(declare-fun b!7443653 () Bool)

(declare-fun e!4444724 () Bool)

(declare-fun tp!2152758 () Bool)

(declare-fun tp!2152756 () Bool)

(assert (=> b!7443653 (= e!4444724 (and tp!2152758 tp!2152756))))

(assert (=> b!7443005 (= tp!2152159 e!4444724)))

(declare-fun b!7443654 () Bool)

(declare-fun tp!2152754 () Bool)

(assert (=> b!7443654 (= e!4444724 tp!2152754)))

(declare-fun b!7443652 () Bool)

(assert (=> b!7443652 (= e!4444724 tp_is_empty!49181)))

(declare-fun b!7443655 () Bool)

(declare-fun tp!2152757 () Bool)

(declare-fun tp!2152755 () Bool)

(assert (=> b!7443655 (= e!4444724 (and tp!2152757 tp!2152755))))

(assert (= (and b!7443005 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443652))

(assert (= (and b!7443005 ((_ is Concat!28306) (regOne!39435 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443653))

(assert (= (and b!7443005 ((_ is Star!19461) (regOne!39435 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443654))

(assert (= (and b!7443005 ((_ is Union!19461) (regOne!39435 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443655))

(declare-fun b!7443657 () Bool)

(declare-fun e!4444725 () Bool)

(declare-fun tp!2152763 () Bool)

(declare-fun tp!2152761 () Bool)

(assert (=> b!7443657 (= e!4444725 (and tp!2152763 tp!2152761))))

(assert (=> b!7443005 (= tp!2152157 e!4444725)))

(declare-fun b!7443658 () Bool)

(declare-fun tp!2152759 () Bool)

(assert (=> b!7443658 (= e!4444725 tp!2152759)))

(declare-fun b!7443656 () Bool)

(assert (=> b!7443656 (= e!4444725 tp_is_empty!49181)))

(declare-fun b!7443659 () Bool)

(declare-fun tp!2152762 () Bool)

(declare-fun tp!2152760 () Bool)

(assert (=> b!7443659 (= e!4444725 (and tp!2152762 tp!2152760))))

(assert (= (and b!7443005 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443656))

(assert (= (and b!7443005 ((_ is Concat!28306) (regTwo!39435 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443657))

(assert (= (and b!7443005 ((_ is Star!19461) (regTwo!39435 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443658))

(assert (= (and b!7443005 ((_ is Union!19461) (regTwo!39435 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443659))

(declare-fun b!7443661 () Bool)

(declare-fun e!4444726 () Bool)

(declare-fun tp!2152768 () Bool)

(declare-fun tp!2152766 () Bool)

(assert (=> b!7443661 (= e!4444726 (and tp!2152768 tp!2152766))))

(assert (=> b!7442973 (= tp!2152121 e!4444726)))

(declare-fun b!7443662 () Bool)

(declare-fun tp!2152764 () Bool)

(assert (=> b!7443662 (= e!4444726 tp!2152764)))

(declare-fun b!7443660 () Bool)

(assert (=> b!7443660 (= e!4444726 tp_is_empty!49181)))

(declare-fun b!7443663 () Bool)

(declare-fun tp!2152767 () Bool)

(declare-fun tp!2152765 () Bool)

(assert (=> b!7443663 (= e!4444726 (and tp!2152767 tp!2152765))))

(assert (= (and b!7442973 ((_ is ElementMatch!19461) (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443660))

(assert (= (and b!7442973 ((_ is Concat!28306) (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443661))

(assert (= (and b!7442973 ((_ is Star!19461) (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443662))

(assert (= (and b!7442973 ((_ is Union!19461) (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443663))

(declare-fun b!7443665 () Bool)

(declare-fun e!4444727 () Bool)

(declare-fun tp!2152773 () Bool)

(declare-fun tp!2152771 () Bool)

(assert (=> b!7443665 (= e!4444727 (and tp!2152773 tp!2152771))))

(assert (=> b!7442973 (= tp!2152119 e!4444727)))

(declare-fun b!7443666 () Bool)

(declare-fun tp!2152769 () Bool)

(assert (=> b!7443666 (= e!4444727 tp!2152769)))

(declare-fun b!7443664 () Bool)

(assert (=> b!7443664 (= e!4444727 tp_is_empty!49181)))

(declare-fun b!7443667 () Bool)

(declare-fun tp!2152772 () Bool)

(declare-fun tp!2152770 () Bool)

(assert (=> b!7443667 (= e!4444727 (and tp!2152772 tp!2152770))))

(assert (= (and b!7442973 ((_ is ElementMatch!19461) (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443664))

(assert (= (and b!7442973 ((_ is Concat!28306) (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443665))

(assert (= (and b!7442973 ((_ is Star!19461) (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443666))

(assert (= (and b!7442973 ((_ is Union!19461) (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443667))

(declare-fun b!7443669 () Bool)

(declare-fun e!4444728 () Bool)

(declare-fun tp!2152778 () Bool)

(declare-fun tp!2152776 () Bool)

(assert (=> b!7443669 (= e!4444728 (and tp!2152778 tp!2152776))))

(assert (=> b!7443073 (= tp!2152238 e!4444728)))

(declare-fun b!7443670 () Bool)

(declare-fun tp!2152774 () Bool)

(assert (=> b!7443670 (= e!4444728 tp!2152774)))

(declare-fun b!7443668 () Bool)

(assert (=> b!7443668 (= e!4444728 tp_is_empty!49181)))

(declare-fun b!7443671 () Bool)

(declare-fun tp!2152777 () Bool)

(declare-fun tp!2152775 () Bool)

(assert (=> b!7443671 (= e!4444728 (and tp!2152777 tp!2152775))))

(assert (= (and b!7443073 ((_ is ElementMatch!19461) (reg!19790 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443668))

(assert (= (and b!7443073 ((_ is Concat!28306) (reg!19790 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443669))

(assert (= (and b!7443073 ((_ is Star!19461) (reg!19790 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443670))

(assert (= (and b!7443073 ((_ is Union!19461) (reg!19790 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443671))

(declare-fun b!7443673 () Bool)

(declare-fun e!4444729 () Bool)

(declare-fun tp!2152783 () Bool)

(declare-fun tp!2152781 () Bool)

(assert (=> b!7443673 (= e!4444729 (and tp!2152783 tp!2152781))))

(assert (=> b!7443067 (= tp!2152233 e!4444729)))

(declare-fun b!7443674 () Bool)

(declare-fun tp!2152779 () Bool)

(assert (=> b!7443674 (= e!4444729 tp!2152779)))

(declare-fun b!7443672 () Bool)

(assert (=> b!7443672 (= e!4444729 tp_is_empty!49181)))

(declare-fun b!7443675 () Bool)

(declare-fun tp!2152782 () Bool)

(declare-fun tp!2152780 () Bool)

(assert (=> b!7443675 (= e!4444729 (and tp!2152782 tp!2152780))))

(assert (= (and b!7443067 ((_ is ElementMatch!19461) (reg!19790 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443672))

(assert (= (and b!7443067 ((_ is Concat!28306) (reg!19790 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443673))

(assert (= (and b!7443067 ((_ is Star!19461) (reg!19790 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443674))

(assert (= (and b!7443067 ((_ is Union!19461) (reg!19790 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443675))

(declare-fun b!7443677 () Bool)

(declare-fun e!4444730 () Bool)

(declare-fun tp!2152788 () Bool)

(declare-fun tp!2152786 () Bool)

(assert (=> b!7443677 (= e!4444730 (and tp!2152788 tp!2152786))))

(assert (=> b!7443039 (= tp!2152199 e!4444730)))

(declare-fun b!7443678 () Bool)

(declare-fun tp!2152784 () Bool)

(assert (=> b!7443678 (= e!4444730 tp!2152784)))

(declare-fun b!7443676 () Bool)

(assert (=> b!7443676 (= e!4444730 tp_is_empty!49181)))

(declare-fun b!7443679 () Bool)

(declare-fun tp!2152787 () Bool)

(declare-fun tp!2152785 () Bool)

(assert (=> b!7443679 (= e!4444730 (and tp!2152787 tp!2152785))))

(assert (= (and b!7443039 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443676))

(assert (= (and b!7443039 ((_ is Concat!28306) (regOne!39435 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443677))

(assert (= (and b!7443039 ((_ is Star!19461) (regOne!39435 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443678))

(assert (= (and b!7443039 ((_ is Union!19461) (regOne!39435 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443679))

(declare-fun b!7443681 () Bool)

(declare-fun e!4444731 () Bool)

(declare-fun tp!2152793 () Bool)

(declare-fun tp!2152791 () Bool)

(assert (=> b!7443681 (= e!4444731 (and tp!2152793 tp!2152791))))

(assert (=> b!7443039 (= tp!2152197 e!4444731)))

(declare-fun b!7443682 () Bool)

(declare-fun tp!2152789 () Bool)

(assert (=> b!7443682 (= e!4444731 tp!2152789)))

(declare-fun b!7443680 () Bool)

(assert (=> b!7443680 (= e!4444731 tp_is_empty!49181)))

(declare-fun b!7443683 () Bool)

(declare-fun tp!2152792 () Bool)

(declare-fun tp!2152790 () Bool)

(assert (=> b!7443683 (= e!4444731 (and tp!2152792 tp!2152790))))

(assert (= (and b!7443039 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443680))

(assert (= (and b!7443039 ((_ is Concat!28306) (regTwo!39435 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443681))

(assert (= (and b!7443039 ((_ is Star!19461) (regTwo!39435 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443682))

(assert (= (and b!7443039 ((_ is Union!19461) (regTwo!39435 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443683))

(declare-fun b!7443685 () Bool)

(declare-fun e!4444732 () Bool)

(declare-fun tp!2152798 () Bool)

(declare-fun tp!2152796 () Bool)

(assert (=> b!7443685 (= e!4444732 (and tp!2152798 tp!2152796))))

(assert (=> b!7443030 (= tp!2152186 e!4444732)))

(declare-fun b!7443686 () Bool)

(declare-fun tp!2152794 () Bool)

(assert (=> b!7443686 (= e!4444732 tp!2152794)))

(declare-fun b!7443684 () Bool)

(assert (=> b!7443684 (= e!4444732 tp_is_empty!49181)))

(declare-fun b!7443687 () Bool)

(declare-fun tp!2152797 () Bool)

(declare-fun tp!2152795 () Bool)

(assert (=> b!7443687 (= e!4444732 (and tp!2152797 tp!2152795))))

(assert (= (and b!7443030 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443684))

(assert (= (and b!7443030 ((_ is Concat!28306) (reg!19790 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443685))

(assert (= (and b!7443030 ((_ is Star!19461) (reg!19790 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443686))

(assert (= (and b!7443030 ((_ is Union!19461) (reg!19790 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443687))

(declare-fun b!7443689 () Bool)

(declare-fun e!4444733 () Bool)

(declare-fun tp!2152803 () Bool)

(declare-fun tp!2152801 () Bool)

(assert (=> b!7443689 (= e!4444733 (and tp!2152803 tp!2152801))))

(assert (=> b!7442994 (= tp!2152148 e!4444733)))

(declare-fun b!7443690 () Bool)

(declare-fun tp!2152799 () Bool)

(assert (=> b!7443690 (= e!4444733 tp!2152799)))

(declare-fun b!7443688 () Bool)

(assert (=> b!7443688 (= e!4444733 tp_is_empty!49181)))

(declare-fun b!7443691 () Bool)

(declare-fun tp!2152802 () Bool)

(declare-fun tp!2152800 () Bool)

(assert (=> b!7443691 (= e!4444733 (and tp!2152802 tp!2152800))))

(assert (= (and b!7442994 ((_ is ElementMatch!19461) (regOne!39434 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7443688))

(assert (= (and b!7442994 ((_ is Concat!28306) (regOne!39434 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7443689))

(assert (= (and b!7442994 ((_ is Star!19461) (regOne!39434 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7443690))

(assert (= (and b!7442994 ((_ is Union!19461) (regOne!39434 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7443691))

(declare-fun b!7443693 () Bool)

(declare-fun e!4444734 () Bool)

(declare-fun tp!2152808 () Bool)

(declare-fun tp!2152806 () Bool)

(assert (=> b!7443693 (= e!4444734 (and tp!2152808 tp!2152806))))

(assert (=> b!7442994 (= tp!2152146 e!4444734)))

(declare-fun b!7443694 () Bool)

(declare-fun tp!2152804 () Bool)

(assert (=> b!7443694 (= e!4444734 tp!2152804)))

(declare-fun b!7443692 () Bool)

(assert (=> b!7443692 (= e!4444734 tp_is_empty!49181)))

(declare-fun b!7443695 () Bool)

(declare-fun tp!2152807 () Bool)

(declare-fun tp!2152805 () Bool)

(assert (=> b!7443695 (= e!4444734 (and tp!2152807 tp!2152805))))

(assert (= (and b!7442994 ((_ is ElementMatch!19461) (regTwo!39434 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7443692))

(assert (= (and b!7442994 ((_ is Concat!28306) (regTwo!39434 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7443693))

(assert (= (and b!7442994 ((_ is Star!19461) (regTwo!39434 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7443694))

(assert (= (and b!7442994 ((_ is Union!19461) (regTwo!39434 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7443695))

(declare-fun b!7443696 () Bool)

(declare-fun e!4444735 () Bool)

(declare-fun tp!2152809 () Bool)

(declare-fun tp!2152810 () Bool)

(assert (=> b!7443696 (= e!4444735 (and tp!2152809 tp!2152810))))

(assert (=> b!7442914 (= tp!2152100 e!4444735)))

(assert (= (and b!7442914 ((_ is Cons!72024) (exprs!8901 setElem!56640))) b!7443696))

(declare-fun b!7443697 () Bool)

(declare-fun e!4444736 () Bool)

(declare-fun tp!2152811 () Bool)

(assert (=> b!7443697 (= e!4444736 (and tp_is_empty!49181 tp!2152811))))

(assert (=> b!7443138 (= tp!2152322 e!4444736)))

(assert (= (and b!7443138 ((_ is Cons!72025) (t!386714 (t!386714 (t!386714 (t!386714 (t!386714 s!7945))))))) b!7443697))

(declare-fun b!7443699 () Bool)

(declare-fun e!4444737 () Bool)

(declare-fun tp!2152816 () Bool)

(declare-fun tp!2152814 () Bool)

(assert (=> b!7443699 (= e!4444737 (and tp!2152816 tp!2152814))))

(assert (=> b!7442981 (= tp!2152131 e!4444737)))

(declare-fun b!7443700 () Bool)

(declare-fun tp!2152812 () Bool)

(assert (=> b!7443700 (= e!4444737 tp!2152812)))

(declare-fun b!7443698 () Bool)

(assert (=> b!7443698 (= e!4444737 tp_is_empty!49181)))

(declare-fun b!7443701 () Bool)

(declare-fun tp!2152815 () Bool)

(declare-fun tp!2152813 () Bool)

(assert (=> b!7443701 (= e!4444737 (and tp!2152815 tp!2152813))))

(assert (= (and b!7442981 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443698))

(assert (= (and b!7442981 ((_ is Concat!28306) (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443699))

(assert (= (and b!7442981 ((_ is Star!19461) (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443700))

(assert (= (and b!7442981 ((_ is Union!19461) (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443701))

(declare-fun b!7443705 () Bool)

(declare-fun e!4444740 () Bool)

(declare-fun tp!2152821 () Bool)

(declare-fun tp!2152819 () Bool)

(assert (=> b!7443705 (= e!4444740 (and tp!2152821 tp!2152819))))

(assert (=> b!7442981 (= tp!2152129 e!4444740)))

(declare-fun b!7443706 () Bool)

(declare-fun tp!2152817 () Bool)

(assert (=> b!7443706 (= e!4444740 tp!2152817)))

(declare-fun b!7443704 () Bool)

(assert (=> b!7443704 (= e!4444740 tp_is_empty!49181)))

(declare-fun b!7443707 () Bool)

(declare-fun tp!2152820 () Bool)

(declare-fun tp!2152818 () Bool)

(assert (=> b!7443707 (= e!4444740 (and tp!2152820 tp!2152818))))

(assert (= (and b!7442981 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443704))

(assert (= (and b!7442981 ((_ is Concat!28306) (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443705))

(assert (= (and b!7442981 ((_ is Star!19461) (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443706))

(assert (= (and b!7442981 ((_ is Union!19461) (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7443707))

(declare-fun b!7443711 () Bool)

(declare-fun e!4444743 () Bool)

(declare-fun tp!2152828 () Bool)

(declare-fun tp!2152826 () Bool)

(assert (=> b!7443711 (= e!4444743 (and tp!2152828 tp!2152826))))

(assert (=> b!7443062 (= tp!2152226 e!4444743)))

(declare-fun b!7443712 () Bool)

(declare-fun tp!2152824 () Bool)

(assert (=> b!7443712 (= e!4444743 tp!2152824)))

(declare-fun b!7443710 () Bool)

(assert (=> b!7443710 (= e!4444743 tp_is_empty!49181)))

(declare-fun b!7443713 () Bool)

(declare-fun tp!2152827 () Bool)

(declare-fun tp!2152825 () Bool)

(assert (=> b!7443713 (= e!4444743 (and tp!2152827 tp!2152825))))

(assert (= (and b!7443062 ((_ is ElementMatch!19461) (reg!19790 (h!78472 (exprs!8901 setElem!56635))))) b!7443710))

(assert (= (and b!7443062 ((_ is Concat!28306) (reg!19790 (h!78472 (exprs!8901 setElem!56635))))) b!7443711))

(assert (= (and b!7443062 ((_ is Star!19461) (reg!19790 (h!78472 (exprs!8901 setElem!56635))))) b!7443712))

(assert (= (and b!7443062 ((_ is Union!19461) (reg!19790 (h!78472 (exprs!8901 setElem!56635))))) b!7443713))

(declare-fun b!7443715 () Bool)

(declare-fun e!4444744 () Bool)

(declare-fun tp!2152833 () Bool)

(declare-fun tp!2152831 () Bool)

(assert (=> b!7443715 (= e!4444744 (and tp!2152833 tp!2152831))))

(assert (=> b!7442990 (= tp!2152137 e!4444744)))

(declare-fun b!7443716 () Bool)

(declare-fun tp!2152829 () Bool)

(assert (=> b!7443716 (= e!4444744 tp!2152829)))

(declare-fun b!7443714 () Bool)

(assert (=> b!7443714 (= e!4444744 tp_is_empty!49181)))

(declare-fun b!7443717 () Bool)

(declare-fun tp!2152832 () Bool)

(declare-fun tp!2152830 () Bool)

(assert (=> b!7443717 (= e!4444744 (and tp!2152832 tp!2152830))))

(assert (= (and b!7442990 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443714))

(assert (= (and b!7442990 ((_ is Concat!28306) (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443715))

(assert (= (and b!7442990 ((_ is Star!19461) (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443716))

(assert (= (and b!7442990 ((_ is Union!19461) (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7443717))

(declare-fun b!7443719 () Bool)

(declare-fun e!4444745 () Bool)

(declare-fun tp!2152840 () Bool)

(declare-fun tp!2152838 () Bool)

(assert (=> b!7443719 (= e!4444745 (and tp!2152840 tp!2152838))))

(assert (=> b!7443053 (= tp!2152220 e!4444745)))

(declare-fun b!7443720 () Bool)

(declare-fun tp!2152836 () Bool)

(assert (=> b!7443720 (= e!4444745 tp!2152836)))

(declare-fun b!7443718 () Bool)

(assert (=> b!7443718 (= e!4444745 tp_is_empty!49181)))

(declare-fun b!7443721 () Bool)

(declare-fun tp!2152839 () Bool)

(declare-fun tp!2152837 () Bool)

(assert (=> b!7443721 (= e!4444745 (and tp!2152839 tp!2152837))))

(assert (= (and b!7443053 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443718))

(assert (= (and b!7443053 ((_ is Concat!28306) (regOne!39434 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443719))

(assert (= (and b!7443053 ((_ is Star!19461) (regOne!39434 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443720))

(assert (= (and b!7443053 ((_ is Union!19461) (regOne!39434 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443721))

(declare-fun b!7443723 () Bool)

(declare-fun e!4444746 () Bool)

(declare-fun tp!2152845 () Bool)

(declare-fun tp!2152843 () Bool)

(assert (=> b!7443723 (= e!4444746 (and tp!2152845 tp!2152843))))

(assert (=> b!7443053 (= tp!2152218 e!4444746)))

(declare-fun b!7443724 () Bool)

(declare-fun tp!2152841 () Bool)

(assert (=> b!7443724 (= e!4444746 tp!2152841)))

(declare-fun b!7443722 () Bool)

(assert (=> b!7443722 (= e!4444746 tp_is_empty!49181)))

(declare-fun b!7443725 () Bool)

(declare-fun tp!2152844 () Bool)

(declare-fun tp!2152842 () Bool)

(assert (=> b!7443725 (= e!4444746 (and tp!2152844 tp!2152842))))

(assert (= (and b!7443053 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443722))

(assert (= (and b!7443053 ((_ is Concat!28306) (regTwo!39434 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443723))

(assert (= (and b!7443053 ((_ is Star!19461) (regTwo!39434 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443724))

(assert (= (and b!7443053 ((_ is Union!19461) (regTwo!39434 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443725))

(declare-fun b!7443729 () Bool)

(declare-fun e!4444749 () Bool)

(declare-fun tp!2152850 () Bool)

(declare-fun tp!2152848 () Bool)

(assert (=> b!7443729 (= e!4444749 (and tp!2152850 tp!2152848))))

(assert (=> b!7443009 (= tp!2152164 e!4444749)))

(declare-fun b!7443730 () Bool)

(declare-fun tp!2152846 () Bool)

(assert (=> b!7443730 (= e!4444749 tp!2152846)))

(declare-fun b!7443728 () Bool)

(assert (=> b!7443728 (= e!4444749 tp_is_empty!49181)))

(declare-fun b!7443731 () Bool)

(declare-fun tp!2152849 () Bool)

(declare-fun tp!2152847 () Bool)

(assert (=> b!7443731 (= e!4444749 (and tp!2152849 tp!2152847))))

(assert (= (and b!7443009 ((_ is ElementMatch!19461) (regOne!39435 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443728))

(assert (= (and b!7443009 ((_ is Concat!28306) (regOne!39435 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443729))

(assert (= (and b!7443009 ((_ is Star!19461) (regOne!39435 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443730))

(assert (= (and b!7443009 ((_ is Union!19461) (regOne!39435 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443731))

(declare-fun b!7443733 () Bool)

(declare-fun e!4444750 () Bool)

(declare-fun tp!2152855 () Bool)

(declare-fun tp!2152853 () Bool)

(assert (=> b!7443733 (= e!4444750 (and tp!2152855 tp!2152853))))

(assert (=> b!7443009 (= tp!2152162 e!4444750)))

(declare-fun b!7443734 () Bool)

(declare-fun tp!2152851 () Bool)

(assert (=> b!7443734 (= e!4444750 tp!2152851)))

(declare-fun b!7443732 () Bool)

(assert (=> b!7443732 (= e!4444750 tp_is_empty!49181)))

(declare-fun b!7443735 () Bool)

(declare-fun tp!2152854 () Bool)

(declare-fun tp!2152852 () Bool)

(assert (=> b!7443735 (= e!4444750 (and tp!2152854 tp!2152852))))

(assert (= (and b!7443009 ((_ is ElementMatch!19461) (regTwo!39435 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443732))

(assert (= (and b!7443009 ((_ is Concat!28306) (regTwo!39435 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443733))

(assert (= (and b!7443009 ((_ is Star!19461) (regTwo!39435 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443734))

(assert (= (and b!7443009 ((_ is Union!19461) (regTwo!39435 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443735))

(declare-fun b!7443737 () Bool)

(declare-fun e!4444751 () Bool)

(declare-fun tp!2152860 () Bool)

(declare-fun tp!2152858 () Bool)

(assert (=> b!7443737 (= e!4444751 (and tp!2152860 tp!2152858))))

(assert (=> b!7443001 (= tp!2152154 e!4444751)))

(declare-fun b!7443738 () Bool)

(declare-fun tp!2152856 () Bool)

(assert (=> b!7443738 (= e!4444751 tp!2152856)))

(declare-fun b!7443736 () Bool)

(assert (=> b!7443736 (= e!4444751 tp_is_empty!49181)))

(declare-fun b!7443739 () Bool)

(declare-fun tp!2152859 () Bool)

(declare-fun tp!2152857 () Bool)

(assert (=> b!7443739 (= e!4444751 (and tp!2152859 tp!2152857))))

(assert (= (and b!7443001 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443736))

(assert (= (and b!7443001 ((_ is Concat!28306) (regOne!39435 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443737))

(assert (= (and b!7443001 ((_ is Star!19461) (regOne!39435 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443738))

(assert (= (and b!7443001 ((_ is Union!19461) (regOne!39435 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443739))

(declare-fun b!7443741 () Bool)

(declare-fun e!4444752 () Bool)

(declare-fun tp!2152865 () Bool)

(declare-fun tp!2152863 () Bool)

(assert (=> b!7443741 (= e!4444752 (and tp!2152865 tp!2152863))))

(assert (=> b!7443001 (= tp!2152152 e!4444752)))

(declare-fun b!7443742 () Bool)

(declare-fun tp!2152861 () Bool)

(assert (=> b!7443742 (= e!4444752 tp!2152861)))

(declare-fun b!7443740 () Bool)

(assert (=> b!7443740 (= e!4444752 tp_is_empty!49181)))

(declare-fun b!7443743 () Bool)

(declare-fun tp!2152864 () Bool)

(declare-fun tp!2152862 () Bool)

(assert (=> b!7443743 (= e!4444752 (and tp!2152864 tp!2152862))))

(assert (= (and b!7443001 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443740))

(assert (= (and b!7443001 ((_ is Concat!28306) (regTwo!39435 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443741))

(assert (= (and b!7443001 ((_ is Star!19461) (regTwo!39435 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443742))

(assert (= (and b!7443001 ((_ is Union!19461) (regTwo!39435 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443743))

(declare-fun b!7443745 () Bool)

(declare-fun e!4444753 () Bool)

(declare-fun tp!2152870 () Bool)

(declare-fun tp!2152868 () Bool)

(assert (=> b!7443745 (= e!4444753 (and tp!2152870 tp!2152868))))

(assert (=> b!7443022 (= tp!2152176 e!4444753)))

(declare-fun b!7443746 () Bool)

(declare-fun tp!2152866 () Bool)

(assert (=> b!7443746 (= e!4444753 tp!2152866)))

(declare-fun b!7443744 () Bool)

(assert (=> b!7443744 (= e!4444753 tp_is_empty!49181)))

(declare-fun b!7443747 () Bool)

(declare-fun tp!2152869 () Bool)

(declare-fun tp!2152867 () Bool)

(assert (=> b!7443747 (= e!4444753 (and tp!2152869 tp!2152867))))

(assert (= (and b!7443022 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443744))

(assert (= (and b!7443022 ((_ is Concat!28306) (reg!19790 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443745))

(assert (= (and b!7443022 ((_ is Star!19461) (reg!19790 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443746))

(assert (= (and b!7443022 ((_ is Union!19461) (reg!19790 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443747))

(declare-fun b!7443749 () Bool)

(declare-fun e!4444754 () Bool)

(declare-fun tp!2152875 () Bool)

(declare-fun tp!2152873 () Bool)

(assert (=> b!7443749 (= e!4444754 (and tp!2152875 tp!2152873))))

(assert (=> b!7443078 (= tp!2152246 e!4444754)))

(declare-fun b!7443750 () Bool)

(declare-fun tp!2152871 () Bool)

(assert (=> b!7443750 (= e!4444754 tp!2152871)))

(declare-fun b!7443748 () Bool)

(assert (=> b!7443748 (= e!4444754 tp_is_empty!49181)))

(declare-fun b!7443751 () Bool)

(declare-fun tp!2152874 () Bool)

(declare-fun tp!2152872 () Bool)

(assert (=> b!7443751 (= e!4444754 (and tp!2152874 tp!2152872))))

(assert (= (and b!7443078 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443748))

(assert (= (and b!7443078 ((_ is Concat!28306) (regOne!39435 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443749))

(assert (= (and b!7443078 ((_ is Star!19461) (regOne!39435 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443750))

(assert (= (and b!7443078 ((_ is Union!19461) (regOne!39435 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443751))

(declare-fun b!7443753 () Bool)

(declare-fun e!4444755 () Bool)

(declare-fun tp!2152880 () Bool)

(declare-fun tp!2152878 () Bool)

(assert (=> b!7443753 (= e!4444755 (and tp!2152880 tp!2152878))))

(assert (=> b!7443078 (= tp!2152244 e!4444755)))

(declare-fun b!7443754 () Bool)

(declare-fun tp!2152876 () Bool)

(assert (=> b!7443754 (= e!4444755 tp!2152876)))

(declare-fun b!7443752 () Bool)

(assert (=> b!7443752 (= e!4444755 tp_is_empty!49181)))

(declare-fun b!7443755 () Bool)

(declare-fun tp!2152879 () Bool)

(declare-fun tp!2152877 () Bool)

(assert (=> b!7443755 (= e!4444755 (and tp!2152879 tp!2152877))))

(assert (= (and b!7443078 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443752))

(assert (= (and b!7443078 ((_ is Concat!28306) (regTwo!39435 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443753))

(assert (= (and b!7443078 ((_ is Star!19461) (regTwo!39435 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443754))

(assert (= (and b!7443078 ((_ is Union!19461) (regTwo!39435 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443755))

(declare-fun b!7443757 () Bool)

(declare-fun e!4444756 () Bool)

(declare-fun tp!2152885 () Bool)

(declare-fun tp!2152883 () Bool)

(assert (=> b!7443757 (= e!4444756 (and tp!2152885 tp!2152883))))

(assert (=> b!7443089 (= tp!2152262 e!4444756)))

(declare-fun b!7443758 () Bool)

(declare-fun tp!2152881 () Bool)

(assert (=> b!7443758 (= e!4444756 tp!2152881)))

(declare-fun b!7443756 () Bool)

(assert (=> b!7443756 (= e!4444756 tp_is_empty!49181)))

(declare-fun b!7443759 () Bool)

(declare-fun tp!2152884 () Bool)

(declare-fun tp!2152882 () Bool)

(assert (=> b!7443759 (= e!4444756 (and tp!2152884 tp!2152882))))

(assert (= (and b!7443089 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443756))

(assert (= (and b!7443089 ((_ is Concat!28306) (regOne!39434 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443757))

(assert (= (and b!7443089 ((_ is Star!19461) (regOne!39434 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443758))

(assert (= (and b!7443089 ((_ is Union!19461) (regOne!39434 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443759))

(declare-fun b!7443761 () Bool)

(declare-fun e!4444757 () Bool)

(declare-fun tp!2152890 () Bool)

(declare-fun tp!2152888 () Bool)

(assert (=> b!7443761 (= e!4444757 (and tp!2152890 tp!2152888))))

(assert (=> b!7443089 (= tp!2152260 e!4444757)))

(declare-fun b!7443762 () Bool)

(declare-fun tp!2152886 () Bool)

(assert (=> b!7443762 (= e!4444757 tp!2152886)))

(declare-fun b!7443760 () Bool)

(assert (=> b!7443760 (= e!4444757 tp_is_empty!49181)))

(declare-fun b!7443763 () Bool)

(declare-fun tp!2152889 () Bool)

(declare-fun tp!2152887 () Bool)

(assert (=> b!7443763 (= e!4444757 (and tp!2152889 tp!2152887))))

(assert (= (and b!7443089 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443760))

(assert (= (and b!7443089 ((_ is Concat!28306) (regTwo!39434 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443761))

(assert (= (and b!7443089 ((_ is Star!19461) (regTwo!39434 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443762))

(assert (= (and b!7443089 ((_ is Union!19461) (regTwo!39434 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443763))

(declare-fun b!7443765 () Bool)

(declare-fun e!4444758 () Bool)

(declare-fun tp!2152895 () Bool)

(declare-fun tp!2152893 () Bool)

(assert (=> b!7443765 (= e!4444758 (and tp!2152895 tp!2152893))))

(assert (=> b!7443104 (= tp!2152278 e!4444758)))

(declare-fun b!7443766 () Bool)

(declare-fun tp!2152891 () Bool)

(assert (=> b!7443766 (= e!4444758 tp!2152891)))

(declare-fun b!7443764 () Bool)

(assert (=> b!7443764 (= e!4444758 tp_is_empty!49181)))

(declare-fun b!7443767 () Bool)

(declare-fun tp!2152894 () Bool)

(declare-fun tp!2152892 () Bool)

(assert (=> b!7443767 (= e!4444758 (and tp!2152894 tp!2152892))))

(assert (= (and b!7443104 ((_ is ElementMatch!19461) (h!78472 (exprs!8901 setElem!56637)))) b!7443764))

(assert (= (and b!7443104 ((_ is Concat!28306) (h!78472 (exprs!8901 setElem!56637)))) b!7443765))

(assert (= (and b!7443104 ((_ is Star!19461) (h!78472 (exprs!8901 setElem!56637)))) b!7443766))

(assert (= (and b!7443104 ((_ is Union!19461) (h!78472 (exprs!8901 setElem!56637)))) b!7443767))

(declare-fun b!7443768 () Bool)

(declare-fun e!4444759 () Bool)

(declare-fun tp!2152896 () Bool)

(declare-fun tp!2152897 () Bool)

(assert (=> b!7443768 (= e!4444759 (and tp!2152896 tp!2152897))))

(assert (=> b!7443104 (= tp!2152279 e!4444759)))

(assert (= (and b!7443104 ((_ is Cons!72024) (t!386713 (exprs!8901 setElem!56637)))) b!7443768))

(declare-fun b!7443769 () Bool)

(declare-fun e!4444760 () Bool)

(declare-fun tp!2152898 () Bool)

(declare-fun tp!2152899 () Bool)

(assert (=> b!7443769 (= e!4444760 (and tp!2152898 tp!2152899))))

(assert (=> b!7442992 (= tp!2152143 e!4444760)))

(assert (= (and b!7442992 ((_ is Cons!72024) (exprs!8901 setElem!56644))) b!7443769))

(declare-fun b!7443771 () Bool)

(declare-fun e!4444761 () Bool)

(declare-fun tp!2152904 () Bool)

(declare-fun tp!2152902 () Bool)

(assert (=> b!7443771 (= e!4444761 (and tp!2152904 tp!2152902))))

(assert (=> b!7443125 (= tp!2152305 e!4444761)))

(declare-fun b!7443772 () Bool)

(declare-fun tp!2152900 () Bool)

(assert (=> b!7443772 (= e!4444761 tp!2152900)))

(declare-fun b!7443770 () Bool)

(assert (=> b!7443770 (= e!4444761 tp_is_empty!49181)))

(declare-fun b!7443773 () Bool)

(declare-fun tp!2152903 () Bool)

(declare-fun tp!2152901 () Bool)

(assert (=> b!7443773 (= e!4444761 (and tp!2152903 tp!2152901))))

(assert (= (and b!7443125 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443770))

(assert (= (and b!7443125 ((_ is Concat!28306) (regOne!39435 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443771))

(assert (= (and b!7443125 ((_ is Star!19461) (regOne!39435 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443772))

(assert (= (and b!7443125 ((_ is Union!19461) (regOne!39435 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443773))

(declare-fun b!7443775 () Bool)

(declare-fun e!4444762 () Bool)

(declare-fun tp!2152909 () Bool)

(declare-fun tp!2152907 () Bool)

(assert (=> b!7443775 (= e!4444762 (and tp!2152909 tp!2152907))))

(assert (=> b!7443125 (= tp!2152303 e!4444762)))

(declare-fun b!7443776 () Bool)

(declare-fun tp!2152905 () Bool)

(assert (=> b!7443776 (= e!4444762 tp!2152905)))

(declare-fun b!7443774 () Bool)

(assert (=> b!7443774 (= e!4444762 tp_is_empty!49181)))

(declare-fun b!7443777 () Bool)

(declare-fun tp!2152908 () Bool)

(declare-fun tp!2152906 () Bool)

(assert (=> b!7443777 (= e!4444762 (and tp!2152908 tp!2152906))))

(assert (= (and b!7443125 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443774))

(assert (= (and b!7443125 ((_ is Concat!28306) (regTwo!39435 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443775))

(assert (= (and b!7443125 ((_ is Star!19461) (regTwo!39435 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443776))

(assert (= (and b!7443125 ((_ is Union!19461) (regTwo!39435 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443777))

(declare-fun b!7443781 () Bool)

(declare-fun e!4444766 () Bool)

(declare-fun tp!2152916 () Bool)

(declare-fun tp!2152914 () Bool)

(assert (=> b!7443781 (= e!4444766 (and tp!2152916 tp!2152914))))

(assert (=> b!7443116 (= tp!2152292 e!4444766)))

(declare-fun b!7443783 () Bool)

(declare-fun tp!2152912 () Bool)

(assert (=> b!7443783 (= e!4444766 tp!2152912)))

(declare-fun b!7443779 () Bool)

(assert (=> b!7443779 (= e!4444766 tp_is_empty!49181)))

(declare-fun b!7443784 () Bool)

(declare-fun tp!2152915 () Bool)

(declare-fun tp!2152913 () Bool)

(assert (=> b!7443784 (= e!4444766 (and tp!2152915 tp!2152913))))

(assert (= (and b!7443116 ((_ is ElementMatch!19461) (reg!19790 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443779))

(assert (= (and b!7443116 ((_ is Concat!28306) (reg!19790 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443781))

(assert (= (and b!7443116 ((_ is Star!19461) (reg!19790 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443783))

(assert (= (and b!7443116 ((_ is Union!19461) (reg!19790 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443784))

(declare-fun b!7443786 () Bool)

(declare-fun e!4444767 () Bool)

(declare-fun tp!2152921 () Bool)

(declare-fun tp!2152919 () Bool)

(assert (=> b!7443786 (= e!4444767 (and tp!2152921 tp!2152919))))

(assert (=> b!7442967 (= tp!2152116 e!4444767)))

(declare-fun b!7443787 () Bool)

(declare-fun tp!2152917 () Bool)

(assert (=> b!7443787 (= e!4444767 tp!2152917)))

(declare-fun b!7443785 () Bool)

(assert (=> b!7443785 (= e!4444767 tp_is_empty!49181)))

(declare-fun b!7443788 () Bool)

(declare-fun tp!2152920 () Bool)

(declare-fun tp!2152918 () Bool)

(assert (=> b!7443788 (= e!4444767 (and tp!2152920 tp!2152918))))

(assert (= (and b!7442967 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443785))

(assert (= (and b!7442967 ((_ is Concat!28306) (regOne!39434 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443786))

(assert (= (and b!7442967 ((_ is Star!19461) (regOne!39434 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443787))

(assert (= (and b!7442967 ((_ is Union!19461) (regOne!39434 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443788))

(declare-fun b!7443790 () Bool)

(declare-fun e!4444768 () Bool)

(declare-fun tp!2152926 () Bool)

(declare-fun tp!2152924 () Bool)

(assert (=> b!7443790 (= e!4444768 (and tp!2152926 tp!2152924))))

(assert (=> b!7442967 (= tp!2152114 e!4444768)))

(declare-fun b!7443791 () Bool)

(declare-fun tp!2152922 () Bool)

(assert (=> b!7443791 (= e!4444768 tp!2152922)))

(declare-fun b!7443789 () Bool)

(assert (=> b!7443789 (= e!4444768 tp_is_empty!49181)))

(declare-fun b!7443792 () Bool)

(declare-fun tp!2152925 () Bool)

(declare-fun tp!2152923 () Bool)

(assert (=> b!7443792 (= e!4444768 (and tp!2152925 tp!2152923))))

(assert (= (and b!7442967 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443789))

(assert (= (and b!7442967 ((_ is Concat!28306) (regTwo!39434 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443790))

(assert (= (and b!7442967 ((_ is Star!19461) (regTwo!39434 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443791))

(assert (= (and b!7442967 ((_ is Union!19461) (regTwo!39434 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443792))

(declare-fun b!7443794 () Bool)

(declare-fun e!4444769 () Bool)

(declare-fun tp!2152931 () Bool)

(declare-fun tp!2152929 () Bool)

(assert (=> b!7443794 (= e!4444769 (and tp!2152931 tp!2152929))))

(assert (=> b!7443111 (= tp!2152285 e!4444769)))

(declare-fun b!7443795 () Bool)

(declare-fun tp!2152927 () Bool)

(assert (=> b!7443795 (= e!4444769 tp!2152927)))

(declare-fun b!7443793 () Bool)

(assert (=> b!7443793 (= e!4444769 tp_is_empty!49181)))

(declare-fun b!7443796 () Bool)

(declare-fun tp!2152930 () Bool)

(declare-fun tp!2152928 () Bool)

(assert (=> b!7443796 (= e!4444769 (and tp!2152930 tp!2152928))))

(assert (= (and b!7443111 ((_ is ElementMatch!19461) (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7443793))

(assert (= (and b!7443111 ((_ is Concat!28306) (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7443794))

(assert (= (and b!7443111 ((_ is Star!19461) (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7443795))

(assert (= (and b!7443111 ((_ is Union!19461) (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7443796))

(declare-fun b!7443798 () Bool)

(declare-fun e!4444770 () Bool)

(declare-fun tp!2152936 () Bool)

(declare-fun tp!2152934 () Bool)

(assert (=> b!7443798 (= e!4444770 (and tp!2152936 tp!2152934))))

(assert (=> b!7443094 (= tp!2152263 e!4444770)))

(declare-fun b!7443799 () Bool)

(declare-fun tp!2152932 () Bool)

(assert (=> b!7443799 (= e!4444770 tp!2152932)))

(declare-fun b!7443797 () Bool)

(assert (=> b!7443797 (= e!4444770 tp_is_empty!49181)))

(declare-fun b!7443800 () Bool)

(declare-fun tp!2152935 () Bool)

(declare-fun tp!2152933 () Bool)

(assert (=> b!7443800 (= e!4444770 (and tp!2152935 tp!2152933))))

(assert (= (and b!7443094 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443797))

(assert (= (and b!7443094 ((_ is Concat!28306) (reg!19790 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443798))

(assert (= (and b!7443094 ((_ is Star!19461) (reg!19790 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443799))

(assert (= (and b!7443094 ((_ is Union!19461) (reg!19790 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443800))

(declare-fun b!7443802 () Bool)

(declare-fun e!4444771 () Bool)

(declare-fun tp!2152941 () Bool)

(declare-fun tp!2152939 () Bool)

(assert (=> b!7443802 (= e!4444771 (and tp!2152941 tp!2152939))))

(assert (=> b!7443004 (= tp!2152156 e!4444771)))

(declare-fun b!7443803 () Bool)

(declare-fun tp!2152937 () Bool)

(assert (=> b!7443803 (= e!4444771 tp!2152937)))

(declare-fun b!7443801 () Bool)

(assert (=> b!7443801 (= e!4444771 tp_is_empty!49181)))

(declare-fun b!7443804 () Bool)

(declare-fun tp!2152940 () Bool)

(declare-fun tp!2152938 () Bool)

(assert (=> b!7443804 (= e!4444771 (and tp!2152940 tp!2152938))))

(assert (= (and b!7443004 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443801))

(assert (= (and b!7443004 ((_ is Concat!28306) (reg!19790 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443802))

(assert (= (and b!7443004 ((_ is Star!19461) (reg!19790 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443803))

(assert (= (and b!7443004 ((_ is Union!19461) (reg!19790 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443804))

(declare-fun b!7443815 () Bool)

(declare-fun e!4444779 () Bool)

(declare-fun tp!2152946 () Bool)

(declare-fun tp!2152944 () Bool)

(assert (=> b!7443815 (= e!4444779 (and tp!2152946 tp!2152944))))

(assert (=> b!7443017 (= tp!2152175 e!4444779)))

(declare-fun b!7443816 () Bool)

(declare-fun tp!2152942 () Bool)

(assert (=> b!7443816 (= e!4444779 tp!2152942)))

(declare-fun b!7443814 () Bool)

(assert (=> b!7443814 (= e!4444779 tp_is_empty!49181)))

(declare-fun b!7443817 () Bool)

(declare-fun tp!2152945 () Bool)

(declare-fun tp!2152943 () Bool)

(assert (=> b!7443817 (= e!4444779 (and tp!2152945 tp!2152943))))

(assert (= (and b!7443017 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443814))

(assert (= (and b!7443017 ((_ is Concat!28306) (regOne!39434 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443815))

(assert (= (and b!7443017 ((_ is Star!19461) (regOne!39434 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443816))

(assert (= (and b!7443017 ((_ is Union!19461) (regOne!39434 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443817))

(declare-fun b!7443819 () Bool)

(declare-fun e!4444780 () Bool)

(declare-fun tp!2152951 () Bool)

(declare-fun tp!2152949 () Bool)

(assert (=> b!7443819 (= e!4444780 (and tp!2152951 tp!2152949))))

(assert (=> b!7443017 (= tp!2152173 e!4444780)))

(declare-fun b!7443820 () Bool)

(declare-fun tp!2152947 () Bool)

(assert (=> b!7443820 (= e!4444780 tp!2152947)))

(declare-fun b!7443818 () Bool)

(assert (=> b!7443818 (= e!4444780 tp_is_empty!49181)))

(declare-fun b!7443821 () Bool)

(declare-fun tp!2152950 () Bool)

(declare-fun tp!2152948 () Bool)

(assert (=> b!7443821 (= e!4444780 (and tp!2152950 tp!2152948))))

(assert (= (and b!7443017 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443818))

(assert (= (and b!7443017 ((_ is Concat!28306) (regTwo!39434 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443819))

(assert (= (and b!7443017 ((_ is Star!19461) (regTwo!39434 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443820))

(assert (= (and b!7443017 ((_ is Union!19461) (regTwo!39434 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443821))

(declare-fun b!7443823 () Bool)

(declare-fun e!4444781 () Bool)

(declare-fun tp!2152956 () Bool)

(declare-fun tp!2152954 () Bool)

(assert (=> b!7443823 (= e!4444781 (and tp!2152956 tp!2152954))))

(assert (=> b!7443103 (= tp!2152276 e!4444781)))

(declare-fun b!7443824 () Bool)

(declare-fun tp!2152952 () Bool)

(assert (=> b!7443824 (= e!4444781 tp!2152952)))

(declare-fun b!7443822 () Bool)

(assert (=> b!7443822 (= e!4444781 tp_is_empty!49181)))

(declare-fun b!7443825 () Bool)

(declare-fun tp!2152955 () Bool)

(declare-fun tp!2152953 () Bool)

(assert (=> b!7443825 (= e!4444781 (and tp!2152955 tp!2152953))))

(assert (= (and b!7443103 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443822))

(assert (= (and b!7443103 ((_ is Concat!28306) (regOne!39435 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443823))

(assert (= (and b!7443103 ((_ is Star!19461) (regOne!39435 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443824))

(assert (= (and b!7443103 ((_ is Union!19461) (regOne!39435 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443825))

(declare-fun b!7443827 () Bool)

(declare-fun e!4444782 () Bool)

(declare-fun tp!2152961 () Bool)

(declare-fun tp!2152959 () Bool)

(assert (=> b!7443827 (= e!4444782 (and tp!2152961 tp!2152959))))

(assert (=> b!7443103 (= tp!2152274 e!4444782)))

(declare-fun b!7443828 () Bool)

(declare-fun tp!2152957 () Bool)

(assert (=> b!7443828 (= e!4444782 tp!2152957)))

(declare-fun b!7443826 () Bool)

(assert (=> b!7443826 (= e!4444782 tp_is_empty!49181)))

(declare-fun b!7443829 () Bool)

(declare-fun tp!2152960 () Bool)

(declare-fun tp!2152958 () Bool)

(assert (=> b!7443829 (= e!4444782 (and tp!2152960 tp!2152958))))

(assert (= (and b!7443103 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443826))

(assert (= (and b!7443103 ((_ is Concat!28306) (regTwo!39435 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443827))

(assert (= (and b!7443103 ((_ is Star!19461) (regTwo!39435 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443828))

(assert (= (and b!7443103 ((_ is Union!19461) (regTwo!39435 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443829))

(declare-fun b!7443831 () Bool)

(declare-fun e!4444783 () Bool)

(declare-fun tp!2152966 () Bool)

(declare-fun tp!2152964 () Bool)

(assert (=> b!7443831 (= e!4444783 (and tp!2152966 tp!2152964))))

(assert (=> b!7443066 (= tp!2152237 e!4444783)))

(declare-fun b!7443832 () Bool)

(declare-fun tp!2152962 () Bool)

(assert (=> b!7443832 (= e!4444783 tp!2152962)))

(declare-fun b!7443830 () Bool)

(assert (=> b!7443830 (= e!4444783 tp_is_empty!49181)))

(declare-fun b!7443833 () Bool)

(declare-fun tp!2152965 () Bool)

(declare-fun tp!2152963 () Bool)

(assert (=> b!7443833 (= e!4444783 (and tp!2152965 tp!2152963))))

(assert (= (and b!7443066 ((_ is ElementMatch!19461) (regOne!39434 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443830))

(assert (= (and b!7443066 ((_ is Concat!28306) (regOne!39434 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443831))

(assert (= (and b!7443066 ((_ is Star!19461) (regOne!39434 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443832))

(assert (= (and b!7443066 ((_ is Union!19461) (regOne!39434 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443833))

(declare-fun b!7443835 () Bool)

(declare-fun e!4444784 () Bool)

(declare-fun tp!2152971 () Bool)

(declare-fun tp!2152969 () Bool)

(assert (=> b!7443835 (= e!4444784 (and tp!2152971 tp!2152969))))

(assert (=> b!7443066 (= tp!2152235 e!4444784)))

(declare-fun b!7443836 () Bool)

(declare-fun tp!2152967 () Bool)

(assert (=> b!7443836 (= e!4444784 tp!2152967)))

(declare-fun b!7443834 () Bool)

(assert (=> b!7443834 (= e!4444784 tp_is_empty!49181)))

(declare-fun b!7443837 () Bool)

(declare-fun tp!2152970 () Bool)

(declare-fun tp!2152968 () Bool)

(assert (=> b!7443837 (= e!4444784 (and tp!2152970 tp!2152968))))

(assert (= (and b!7443066 ((_ is ElementMatch!19461) (regTwo!39434 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443834))

(assert (= (and b!7443066 ((_ is Concat!28306) (regTwo!39434 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443835))

(assert (= (and b!7443066 ((_ is Star!19461) (regTwo!39434 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443836))

(assert (= (and b!7443066 ((_ is Union!19461) (regTwo!39434 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443837))

(declare-fun b!7443839 () Bool)

(declare-fun e!4444785 () Bool)

(declare-fun tp!2152976 () Bool)

(declare-fun tp!2152974 () Bool)

(assert (=> b!7443839 (= e!4444785 (and tp!2152976 tp!2152974))))

(assert (=> b!7443081 (= tp!2152248 e!4444785)))

(declare-fun b!7443840 () Bool)

(declare-fun tp!2152972 () Bool)

(assert (=> b!7443840 (= e!4444785 tp!2152972)))

(declare-fun b!7443838 () Bool)

(assert (=> b!7443838 (= e!4444785 tp_is_empty!49181)))

(declare-fun b!7443841 () Bool)

(declare-fun tp!2152975 () Bool)

(declare-fun tp!2152973 () Bool)

(assert (=> b!7443841 (= e!4444785 (and tp!2152975 tp!2152973))))

(assert (= (and b!7443081 ((_ is ElementMatch!19461) (reg!19790 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443838))

(assert (= (and b!7443081 ((_ is Concat!28306) (reg!19790 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443839))

(assert (= (and b!7443081 ((_ is Star!19461) (reg!19790 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443840))

(assert (= (and b!7443081 ((_ is Union!19461) (reg!19790 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443841))

(declare-fun b!7443843 () Bool)

(declare-fun e!4444786 () Bool)

(declare-fun tp!2152981 () Bool)

(declare-fun tp!2152979 () Bool)

(assert (=> b!7443843 (= e!4444786 (and tp!2152981 tp!2152979))))

(assert (=> b!7443072 (= tp!2152242 e!4444786)))

(declare-fun b!7443844 () Bool)

(declare-fun tp!2152977 () Bool)

(assert (=> b!7443844 (= e!4444786 tp!2152977)))

(declare-fun b!7443842 () Bool)

(assert (=> b!7443842 (= e!4444786 tp_is_empty!49181)))

(declare-fun b!7443845 () Bool)

(declare-fun tp!2152980 () Bool)

(declare-fun tp!2152978 () Bool)

(assert (=> b!7443845 (= e!4444786 (and tp!2152980 tp!2152978))))

(assert (= (and b!7443072 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443842))

(assert (= (and b!7443072 ((_ is Concat!28306) (regOne!39434 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443843))

(assert (= (and b!7443072 ((_ is Star!19461) (regOne!39434 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443844))

(assert (= (and b!7443072 ((_ is Union!19461) (regOne!39434 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443845))

(declare-fun b!7443847 () Bool)

(declare-fun e!4444787 () Bool)

(declare-fun tp!2152986 () Bool)

(declare-fun tp!2152984 () Bool)

(assert (=> b!7443847 (= e!4444787 (and tp!2152986 tp!2152984))))

(assert (=> b!7443072 (= tp!2152240 e!4444787)))

(declare-fun b!7443848 () Bool)

(declare-fun tp!2152982 () Bool)

(assert (=> b!7443848 (= e!4444787 tp!2152982)))

(declare-fun b!7443846 () Bool)

(assert (=> b!7443846 (= e!4444787 tp_is_empty!49181)))

(declare-fun b!7443849 () Bool)

(declare-fun tp!2152985 () Bool)

(declare-fun tp!2152983 () Bool)

(assert (=> b!7443849 (= e!4444787 (and tp!2152985 tp!2152983))))

(assert (= (and b!7443072 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443846))

(assert (= (and b!7443072 ((_ is Concat!28306) (regTwo!39434 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443847))

(assert (= (and b!7443072 ((_ is Star!19461) (regTwo!39434 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443848))

(assert (= (and b!7443072 ((_ is Union!19461) (regTwo!39434 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443849))

(declare-fun b!7443851 () Bool)

(declare-fun e!4444788 () Bool)

(declare-fun tp!2152991 () Bool)

(declare-fun tp!2152989 () Bool)

(assert (=> b!7443851 (= e!4444788 (and tp!2152991 tp!2152989))))

(assert (=> b!7443033 (= tp!2152195 e!4444788)))

(declare-fun b!7443852 () Bool)

(declare-fun tp!2152987 () Bool)

(assert (=> b!7443852 (= e!4444788 tp!2152987)))

(declare-fun b!7443850 () Bool)

(assert (=> b!7443850 (= e!4444788 tp_is_empty!49181)))

(declare-fun b!7443853 () Bool)

(declare-fun tp!2152990 () Bool)

(declare-fun tp!2152988 () Bool)

(assert (=> b!7443853 (= e!4444788 (and tp!2152990 tp!2152988))))

(assert (= (and b!7443033 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443850))

(assert (= (and b!7443033 ((_ is Concat!28306) (regOne!39434 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443851))

(assert (= (and b!7443033 ((_ is Star!19461) (regOne!39434 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443852))

(assert (= (and b!7443033 ((_ is Union!19461) (regOne!39434 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443853))

(declare-fun b!7443855 () Bool)

(declare-fun e!4444789 () Bool)

(declare-fun tp!2152996 () Bool)

(declare-fun tp!2152994 () Bool)

(assert (=> b!7443855 (= e!4444789 (and tp!2152996 tp!2152994))))

(assert (=> b!7443033 (= tp!2152193 e!4444789)))

(declare-fun b!7443856 () Bool)

(declare-fun tp!2152992 () Bool)

(assert (=> b!7443856 (= e!4444789 tp!2152992)))

(declare-fun b!7443854 () Bool)

(assert (=> b!7443854 (= e!4444789 tp_is_empty!49181)))

(declare-fun b!7443857 () Bool)

(declare-fun tp!2152995 () Bool)

(declare-fun tp!2152993 () Bool)

(assert (=> b!7443857 (= e!4444789 (and tp!2152995 tp!2152993))))

(assert (= (and b!7443033 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443854))

(assert (= (and b!7443033 ((_ is Concat!28306) (regTwo!39434 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443855))

(assert (= (and b!7443033 ((_ is Star!19461) (regTwo!39434 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443856))

(assert (= (and b!7443033 ((_ is Union!19461) (regTwo!39434 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443857))

(declare-fun b!7443859 () Bool)

(declare-fun e!4444790 () Bool)

(declare-fun tp!2153001 () Bool)

(declare-fun tp!2152999 () Bool)

(assert (=> b!7443859 (= e!4444790 (and tp!2153001 tp!2152999))))

(assert (=> b!7443051 (= tp!2152214 e!4444790)))

(declare-fun b!7443860 () Bool)

(declare-fun tp!2152997 () Bool)

(assert (=> b!7443860 (= e!4444790 tp!2152997)))

(declare-fun b!7443858 () Bool)

(assert (=> b!7443858 (= e!4444790 tp_is_empty!49181)))

(declare-fun b!7443861 () Bool)

(declare-fun tp!2153000 () Bool)

(declare-fun tp!2152998 () Bool)

(assert (=> b!7443861 (= e!4444790 (and tp!2153000 tp!2152998))))

(assert (= (and b!7443051 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443858))

(assert (= (and b!7443051 ((_ is Concat!28306) (regOne!39435 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443859))

(assert (= (and b!7443051 ((_ is Star!19461) (regOne!39435 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443860))

(assert (= (and b!7443051 ((_ is Union!19461) (regOne!39435 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443861))

(declare-fun b!7443863 () Bool)

(declare-fun e!4444791 () Bool)

(declare-fun tp!2153006 () Bool)

(declare-fun tp!2153004 () Bool)

(assert (=> b!7443863 (= e!4444791 (and tp!2153006 tp!2153004))))

(assert (=> b!7443051 (= tp!2152212 e!4444791)))

(declare-fun b!7443864 () Bool)

(declare-fun tp!2153002 () Bool)

(assert (=> b!7443864 (= e!4444791 tp!2153002)))

(declare-fun b!7443862 () Bool)

(assert (=> b!7443862 (= e!4444791 tp_is_empty!49181)))

(declare-fun b!7443865 () Bool)

(declare-fun tp!2153005 () Bool)

(declare-fun tp!2153003 () Bool)

(assert (=> b!7443865 (= e!4444791 (and tp!2153005 tp!2153003))))

(assert (= (and b!7443051 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443862))

(assert (= (and b!7443051 ((_ is Concat!28306) (regTwo!39435 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443863))

(assert (= (and b!7443051 ((_ is Star!19461) (regTwo!39435 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443864))

(assert (= (and b!7443051 ((_ is Union!19461) (regTwo!39435 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443865))

(declare-fun b!7443867 () Bool)

(declare-fun e!4444792 () Bool)

(declare-fun tp!2153011 () Bool)

(declare-fun tp!2153009 () Bool)

(assert (=> b!7443867 (= e!4444792 (and tp!2153011 tp!2153009))))

(assert (=> b!7443042 (= tp!2152201 e!4444792)))

(declare-fun b!7443868 () Bool)

(declare-fun tp!2153007 () Bool)

(assert (=> b!7443868 (= e!4444792 tp!2153007)))

(declare-fun b!7443866 () Bool)

(assert (=> b!7443866 (= e!4444792 tp_is_empty!49181)))

(declare-fun b!7443869 () Bool)

(declare-fun tp!2153010 () Bool)

(declare-fun tp!2153008 () Bool)

(assert (=> b!7443869 (= e!4444792 (and tp!2153010 tp!2153008))))

(assert (= (and b!7443042 ((_ is ElementMatch!19461) (reg!19790 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443866))

(assert (= (and b!7443042 ((_ is Concat!28306) (reg!19790 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443867))

(assert (= (and b!7443042 ((_ is Star!19461) (reg!19790 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443868))

(assert (= (and b!7443042 ((_ is Union!19461) (reg!19790 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443869))

(declare-fun b!7443871 () Bool)

(declare-fun e!4444793 () Bool)

(declare-fun tp!2153016 () Bool)

(declare-fun tp!2153014 () Bool)

(assert (=> b!7443871 (= e!4444793 (and tp!2153016 tp!2153014))))

(assert (=> b!7443029 (= tp!2152190 e!4444793)))

(declare-fun b!7443872 () Bool)

(declare-fun tp!2153012 () Bool)

(assert (=> b!7443872 (= e!4444793 tp!2153012)))

(declare-fun b!7443870 () Bool)

(assert (=> b!7443870 (= e!4444793 tp_is_empty!49181)))

(declare-fun b!7443873 () Bool)

(declare-fun tp!2153015 () Bool)

(declare-fun tp!2153013 () Bool)

(assert (=> b!7443873 (= e!4444793 (and tp!2153015 tp!2153013))))

(assert (= (and b!7443029 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443870))

(assert (= (and b!7443029 ((_ is Concat!28306) (regOne!39434 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443871))

(assert (= (and b!7443029 ((_ is Star!19461) (regOne!39434 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443872))

(assert (= (and b!7443029 ((_ is Union!19461) (regOne!39434 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443873))

(declare-fun b!7443875 () Bool)

(declare-fun e!4444794 () Bool)

(declare-fun tp!2153021 () Bool)

(declare-fun tp!2153019 () Bool)

(assert (=> b!7443875 (= e!4444794 (and tp!2153021 tp!2153019))))

(assert (=> b!7443029 (= tp!2152188 e!4444794)))

(declare-fun b!7443876 () Bool)

(declare-fun tp!2153017 () Bool)

(assert (=> b!7443876 (= e!4444794 tp!2153017)))

(declare-fun b!7443874 () Bool)

(assert (=> b!7443874 (= e!4444794 tp_is_empty!49181)))

(declare-fun b!7443877 () Bool)

(declare-fun tp!2153020 () Bool)

(declare-fun tp!2153018 () Bool)

(assert (=> b!7443877 (= e!4444794 (and tp!2153020 tp!2153018))))

(assert (= (and b!7443029 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443874))

(assert (= (and b!7443029 ((_ is Concat!28306) (regTwo!39434 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443875))

(assert (= (and b!7443029 ((_ is Star!19461) (regTwo!39434 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443876))

(assert (= (and b!7443029 ((_ is Union!19461) (regTwo!39434 (regTwo!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443877))

(declare-fun b!7443879 () Bool)

(declare-fun e!4444795 () Bool)

(declare-fun tp!2153026 () Bool)

(declare-fun tp!2153024 () Bool)

(assert (=> b!7443879 (= e!4444795 (and tp!2153026 tp!2153024))))

(assert (=> b!7443113 (= tp!2152290 e!4444795)))

(declare-fun b!7443880 () Bool)

(declare-fun tp!2153022 () Bool)

(assert (=> b!7443880 (= e!4444795 tp!2153022)))

(declare-fun b!7443878 () Bool)

(assert (=> b!7443878 (= e!4444795 tp_is_empty!49181)))

(declare-fun b!7443881 () Bool)

(declare-fun tp!2153025 () Bool)

(declare-fun tp!2153023 () Bool)

(assert (=> b!7443881 (= e!4444795 (and tp!2153025 tp!2153023))))

(assert (= (and b!7443113 ((_ is ElementMatch!19461) (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56633)))))) b!7443878))

(assert (= (and b!7443113 ((_ is Concat!28306) (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56633)))))) b!7443879))

(assert (= (and b!7443113 ((_ is Star!19461) (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56633)))))) b!7443880))

(assert (= (and b!7443113 ((_ is Union!19461) (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56633)))))) b!7443881))

(declare-fun b!7443882 () Bool)

(declare-fun e!4444796 () Bool)

(declare-fun tp!2153027 () Bool)

(declare-fun tp!2153028 () Bool)

(assert (=> b!7443882 (= e!4444796 (and tp!2153027 tp!2153028))))

(assert (=> b!7443113 (= tp!2152291 e!4444796)))

(assert (= (and b!7443113 ((_ is Cons!72024) (t!386713 (t!386713 (t!386713 (exprs!8901 setElem!56633)))))) b!7443882))

(declare-fun b!7443884 () Bool)

(declare-fun e!4444797 () Bool)

(declare-fun tp!2153033 () Bool)

(declare-fun tp!2153031 () Bool)

(assert (=> b!7443884 (= e!4444797 (and tp!2153033 tp!2153031))))

(assert (=> b!7443087 (= tp!2152256 e!4444797)))

(declare-fun b!7443885 () Bool)

(declare-fun tp!2153029 () Bool)

(assert (=> b!7443885 (= e!4444797 tp!2153029)))

(declare-fun b!7443883 () Bool)

(assert (=> b!7443883 (= e!4444797 tp_is_empty!49181)))

(declare-fun b!7443886 () Bool)

(declare-fun tp!2153032 () Bool)

(declare-fun tp!2153030 () Bool)

(assert (=> b!7443886 (= e!4444797 (and tp!2153032 tp!2153030))))

(assert (= (and b!7443087 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443883))

(assert (= (and b!7443087 ((_ is Concat!28306) (regOne!39435 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443884))

(assert (= (and b!7443087 ((_ is Star!19461) (regOne!39435 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443885))

(assert (= (and b!7443087 ((_ is Union!19461) (regOne!39435 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443886))

(declare-fun b!7443888 () Bool)

(declare-fun e!4444798 () Bool)

(declare-fun tp!2153038 () Bool)

(declare-fun tp!2153036 () Bool)

(assert (=> b!7443888 (= e!4444798 (and tp!2153038 tp!2153036))))

(assert (=> b!7443087 (= tp!2152254 e!4444798)))

(declare-fun b!7443889 () Bool)

(declare-fun tp!2153034 () Bool)

(assert (=> b!7443889 (= e!4444798 tp!2153034)))

(declare-fun b!7443887 () Bool)

(assert (=> b!7443887 (= e!4444798 tp_is_empty!49181)))

(declare-fun b!7443890 () Bool)

(declare-fun tp!2153037 () Bool)

(declare-fun tp!2153035 () Bool)

(assert (=> b!7443890 (= e!4444798 (and tp!2153037 tp!2153035))))

(assert (= (and b!7443087 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443887))

(assert (= (and b!7443087 ((_ is Concat!28306) (regTwo!39435 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443888))

(assert (= (and b!7443087 ((_ is Star!19461) (regTwo!39435 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443889))

(assert (= (and b!7443087 ((_ is Union!19461) (regTwo!39435 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7443890))

(declare-fun b!7443892 () Bool)

(declare-fun e!4444799 () Bool)

(declare-fun tp!2153043 () Bool)

(declare-fun tp!2153041 () Bool)

(assert (=> b!7443892 (= e!4444799 (and tp!2153043 tp!2153041))))

(assert (=> b!7442965 (= tp!2152110 e!4444799)))

(declare-fun b!7443893 () Bool)

(declare-fun tp!2153039 () Bool)

(assert (=> b!7443893 (= e!4444799 tp!2153039)))

(declare-fun b!7443891 () Bool)

(assert (=> b!7443891 (= e!4444799 tp_is_empty!49181)))

(declare-fun b!7443894 () Bool)

(declare-fun tp!2153042 () Bool)

(declare-fun tp!2153040 () Bool)

(assert (=> b!7443894 (= e!4444799 (and tp!2153042 tp!2153040))))

(assert (= (and b!7442965 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443891))

(assert (= (and b!7442965 ((_ is Concat!28306) (regOne!39435 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443892))

(assert (= (and b!7442965 ((_ is Star!19461) (regOne!39435 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443893))

(assert (= (and b!7442965 ((_ is Union!19461) (regOne!39435 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443894))

(declare-fun b!7443896 () Bool)

(declare-fun e!4444800 () Bool)

(declare-fun tp!2153048 () Bool)

(declare-fun tp!2153046 () Bool)

(assert (=> b!7443896 (= e!4444800 (and tp!2153048 tp!2153046))))

(assert (=> b!7442965 (= tp!2152107 e!4444800)))

(declare-fun b!7443897 () Bool)

(declare-fun tp!2153044 () Bool)

(assert (=> b!7443897 (= e!4444800 tp!2153044)))

(declare-fun b!7443895 () Bool)

(assert (=> b!7443895 (= e!4444800 tp_is_empty!49181)))

(declare-fun b!7443898 () Bool)

(declare-fun tp!2153047 () Bool)

(declare-fun tp!2153045 () Bool)

(assert (=> b!7443898 (= e!4444800 (and tp!2153047 tp!2153045))))

(assert (= (and b!7442965 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443895))

(assert (= (and b!7442965 ((_ is Concat!28306) (regTwo!39435 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443896))

(assert (= (and b!7442965 ((_ is Star!19461) (regTwo!39435 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443897))

(assert (= (and b!7442965 ((_ is Union!19461) (regTwo!39435 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443898))

(declare-fun condSetEmpty!56647 () Bool)

(assert (=> setNonEmpty!56640 (= condSetEmpty!56647 (= setRest!56640 ((as const (Array Context!16802 Bool)) false)))))

(declare-fun setRes!56647 () Bool)

(assert (=> setNonEmpty!56640 (= tp!2152099 setRes!56647)))

(declare-fun setIsEmpty!56647 () Bool)

(assert (=> setIsEmpty!56647 setRes!56647))

(declare-fun tp!2153049 () Bool)

(declare-fun e!4444803 () Bool)

(declare-fun setNonEmpty!56647 () Bool)

(declare-fun setElem!56647 () Context!16802)

(assert (=> setNonEmpty!56647 (= setRes!56647 (and tp!2153049 (inv!92013 setElem!56647) e!4444803))))

(declare-fun setRest!56647 () (InoxSet Context!16802))

(assert (=> setNonEmpty!56647 (= setRest!56640 ((_ map or) (store ((as const (Array Context!16802 Bool)) false) setElem!56647 true) setRest!56647))))

(declare-fun b!7443901 () Bool)

(declare-fun tp!2153050 () Bool)

(assert (=> b!7443901 (= e!4444803 tp!2153050)))

(assert (= (and setNonEmpty!56640 condSetEmpty!56647) setIsEmpty!56647))

(assert (= (and setNonEmpty!56640 (not condSetEmpty!56647)) setNonEmpty!56647))

(assert (= setNonEmpty!56647 b!7443901))

(declare-fun m!8054652 () Bool)

(assert (=> setNonEmpty!56647 m!8054652))

(declare-fun b!7443903 () Bool)

(declare-fun e!4444804 () Bool)

(declare-fun tp!2153055 () Bool)

(declare-fun tp!2153053 () Bool)

(assert (=> b!7443903 (= e!4444804 (and tp!2153055 tp!2153053))))

(assert (=> b!7443107 (= tp!2152280 e!4444804)))

(declare-fun b!7443904 () Bool)

(declare-fun tp!2153051 () Bool)

(assert (=> b!7443904 (= e!4444804 tp!2153051)))

(declare-fun b!7443902 () Bool)

(assert (=> b!7443902 (= e!4444804 tp_is_empty!49181)))

(declare-fun b!7443905 () Bool)

(declare-fun tp!2153054 () Bool)

(declare-fun tp!2153052 () Bool)

(assert (=> b!7443905 (= e!4444804 (and tp!2153054 tp!2153052))))

(assert (= (and b!7443107 ((_ is ElementMatch!19461) (reg!19790 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443902))

(assert (= (and b!7443107 ((_ is Concat!28306) (reg!19790 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443903))

(assert (= (and b!7443107 ((_ is Star!19461) (reg!19790 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443904))

(assert (= (and b!7443107 ((_ is Union!19461) (reg!19790 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443905))

(declare-fun b!7443907 () Bool)

(declare-fun e!4444805 () Bool)

(declare-fun tp!2153060 () Bool)

(declare-fun tp!2153058 () Bool)

(assert (=> b!7443907 (= e!4444805 (and tp!2153060 tp!2153058))))

(assert (=> b!7443101 (= tp!2152277 e!4444805)))

(declare-fun b!7443908 () Bool)

(declare-fun tp!2153056 () Bool)

(assert (=> b!7443908 (= e!4444805 tp!2153056)))

(declare-fun b!7443906 () Bool)

(assert (=> b!7443906 (= e!4444805 tp_is_empty!49181)))

(declare-fun b!7443909 () Bool)

(declare-fun tp!2153059 () Bool)

(declare-fun tp!2153057 () Bool)

(assert (=> b!7443909 (= e!4444805 (and tp!2153059 tp!2153057))))

(assert (= (and b!7443101 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443906))

(assert (= (and b!7443101 ((_ is Concat!28306) (regOne!39434 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443907))

(assert (= (and b!7443101 ((_ is Star!19461) (regOne!39434 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443908))

(assert (= (and b!7443101 ((_ is Union!19461) (regOne!39434 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443909))

(declare-fun b!7443911 () Bool)

(declare-fun e!4444806 () Bool)

(declare-fun tp!2153065 () Bool)

(declare-fun tp!2153063 () Bool)

(assert (=> b!7443911 (= e!4444806 (and tp!2153065 tp!2153063))))

(assert (=> b!7443101 (= tp!2152275 e!4444806)))

(declare-fun b!7443912 () Bool)

(declare-fun tp!2153061 () Bool)

(assert (=> b!7443912 (= e!4444806 tp!2153061)))

(declare-fun b!7443910 () Bool)

(assert (=> b!7443910 (= e!4444806 tp_is_empty!49181)))

(declare-fun b!7443913 () Bool)

(declare-fun tp!2153064 () Bool)

(declare-fun tp!2153062 () Bool)

(assert (=> b!7443913 (= e!4444806 (and tp!2153064 tp!2153062))))

(assert (= (and b!7443101 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443910))

(assert (= (and b!7443101 ((_ is Concat!28306) (regTwo!39434 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443911))

(assert (= (and b!7443101 ((_ is Star!19461) (regTwo!39434 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443912))

(assert (= (and b!7443101 ((_ is Union!19461) (regTwo!39434 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443913))

(declare-fun b!7443915 () Bool)

(declare-fun e!4444807 () Bool)

(declare-fun tp!2153070 () Bool)

(declare-fun tp!2153068 () Bool)

(assert (=> b!7443915 (= e!4444807 (and tp!2153070 tp!2153068))))

(assert (=> b!7443061 (= tp!2152230 e!4444807)))

(declare-fun b!7443916 () Bool)

(declare-fun tp!2153066 () Bool)

(assert (=> b!7443916 (= e!4444807 tp!2153066)))

(declare-fun b!7443914 () Bool)

(assert (=> b!7443914 (= e!4444807 tp_is_empty!49181)))

(declare-fun b!7443917 () Bool)

(declare-fun tp!2153069 () Bool)

(declare-fun tp!2153067 () Bool)

(assert (=> b!7443917 (= e!4444807 (and tp!2153069 tp!2153067))))

(assert (= (and b!7443061 ((_ is ElementMatch!19461) (regOne!39434 (h!78472 (exprs!8901 setElem!56635))))) b!7443914))

(assert (= (and b!7443061 ((_ is Concat!28306) (regOne!39434 (h!78472 (exprs!8901 setElem!56635))))) b!7443915))

(assert (= (and b!7443061 ((_ is Star!19461) (regOne!39434 (h!78472 (exprs!8901 setElem!56635))))) b!7443916))

(assert (= (and b!7443061 ((_ is Union!19461) (regOne!39434 (h!78472 (exprs!8901 setElem!56635))))) b!7443917))

(declare-fun b!7443919 () Bool)

(declare-fun e!4444808 () Bool)

(declare-fun tp!2153075 () Bool)

(declare-fun tp!2153073 () Bool)

(assert (=> b!7443919 (= e!4444808 (and tp!2153075 tp!2153073))))

(assert (=> b!7443061 (= tp!2152228 e!4444808)))

(declare-fun b!7443920 () Bool)

(declare-fun tp!2153071 () Bool)

(assert (=> b!7443920 (= e!4444808 tp!2153071)))

(declare-fun b!7443918 () Bool)

(assert (=> b!7443918 (= e!4444808 tp_is_empty!49181)))

(declare-fun b!7443921 () Bool)

(declare-fun tp!2153074 () Bool)

(declare-fun tp!2153072 () Bool)

(assert (=> b!7443921 (= e!4444808 (and tp!2153074 tp!2153072))))

(assert (= (and b!7443061 ((_ is ElementMatch!19461) (regTwo!39434 (h!78472 (exprs!8901 setElem!56635))))) b!7443918))

(assert (= (and b!7443061 ((_ is Concat!28306) (regTwo!39434 (h!78472 (exprs!8901 setElem!56635))))) b!7443919))

(assert (= (and b!7443061 ((_ is Star!19461) (regTwo!39434 (h!78472 (exprs!8901 setElem!56635))))) b!7443920))

(assert (= (and b!7443061 ((_ is Union!19461) (regTwo!39434 (h!78472 (exprs!8901 setElem!56635))))) b!7443921))

(declare-fun b!7443923 () Bool)

(declare-fun e!4444809 () Bool)

(declare-fun tp!2153080 () Bool)

(declare-fun tp!2153078 () Bool)

(assert (=> b!7443923 (= e!4444809 (and tp!2153080 tp!2153078))))

(assert (=> b!7443015 (= tp!2152169 e!4444809)))

(declare-fun b!7443924 () Bool)

(declare-fun tp!2153076 () Bool)

(assert (=> b!7443924 (= e!4444809 tp!2153076)))

(declare-fun b!7443922 () Bool)

(assert (=> b!7443922 (= e!4444809 tp_is_empty!49181)))

(declare-fun b!7443925 () Bool)

(declare-fun tp!2153079 () Bool)

(declare-fun tp!2153077 () Bool)

(assert (=> b!7443925 (= e!4444809 (and tp!2153079 tp!2153077))))

(assert (= (and b!7443015 ((_ is ElementMatch!19461) (regOne!39435 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443922))

(assert (= (and b!7443015 ((_ is Concat!28306) (regOne!39435 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443923))

(assert (= (and b!7443015 ((_ is Star!19461) (regOne!39435 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443924))

(assert (= (and b!7443015 ((_ is Union!19461) (regOne!39435 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443925))

(declare-fun b!7443927 () Bool)

(declare-fun e!4444810 () Bool)

(declare-fun tp!2153085 () Bool)

(declare-fun tp!2153083 () Bool)

(assert (=> b!7443927 (= e!4444810 (and tp!2153085 tp!2153083))))

(assert (=> b!7443015 (= tp!2152167 e!4444810)))

(declare-fun b!7443928 () Bool)

(declare-fun tp!2153081 () Bool)

(assert (=> b!7443928 (= e!4444810 tp!2153081)))

(declare-fun b!7443926 () Bool)

(assert (=> b!7443926 (= e!4444810 tp_is_empty!49181)))

(declare-fun b!7443929 () Bool)

(declare-fun tp!2153084 () Bool)

(declare-fun tp!2153082 () Bool)

(assert (=> b!7443929 (= e!4444810 (and tp!2153084 tp!2153082))))

(assert (= (and b!7443015 ((_ is ElementMatch!19461) (regTwo!39435 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443926))

(assert (= (and b!7443015 ((_ is Concat!28306) (regTwo!39435 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443927))

(assert (= (and b!7443015 ((_ is Star!19461) (regTwo!39435 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443928))

(assert (= (and b!7443015 ((_ is Union!19461) (regTwo!39435 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443929))

(declare-fun b!7443931 () Bool)

(declare-fun e!4444811 () Bool)

(declare-fun tp!2153090 () Bool)

(declare-fun tp!2153088 () Bool)

(assert (=> b!7443931 (= e!4444811 (and tp!2153090 tp!2153088))))

(assert (=> b!7443099 (= tp!2152271 e!4444811)))

(declare-fun b!7443932 () Bool)

(declare-fun tp!2153086 () Bool)

(assert (=> b!7443932 (= e!4444811 tp!2153086)))

(declare-fun b!7443930 () Bool)

(assert (=> b!7443930 (= e!4444811 tp_is_empty!49181)))

(declare-fun b!7443933 () Bool)

(declare-fun tp!2153089 () Bool)

(declare-fun tp!2153087 () Bool)

(assert (=> b!7443933 (= e!4444811 (and tp!2153089 tp!2153087))))

(assert (= (and b!7443099 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443930))

(assert (= (and b!7443099 ((_ is Concat!28306) (regOne!39435 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443931))

(assert (= (and b!7443099 ((_ is Star!19461) (regOne!39435 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443932))

(assert (= (and b!7443099 ((_ is Union!19461) (regOne!39435 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443933))

(declare-fun b!7443937 () Bool)

(declare-fun e!4444814 () Bool)

(declare-fun tp!2153095 () Bool)

(declare-fun tp!2153093 () Bool)

(assert (=> b!7443937 (= e!4444814 (and tp!2153095 tp!2153093))))

(assert (=> b!7443099 (= tp!2152269 e!4444814)))

(declare-fun b!7443938 () Bool)

(declare-fun tp!2153091 () Bool)

(assert (=> b!7443938 (= e!4444814 tp!2153091)))

(declare-fun b!7443936 () Bool)

(assert (=> b!7443936 (= e!4444814 tp_is_empty!49181)))

(declare-fun b!7443939 () Bool)

(declare-fun tp!2153094 () Bool)

(declare-fun tp!2153092 () Bool)

(assert (=> b!7443939 (= e!4444814 (and tp!2153094 tp!2153092))))

(assert (= (and b!7443099 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443936))

(assert (= (and b!7443099 ((_ is Concat!28306) (regTwo!39435 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443937))

(assert (= (and b!7443099 ((_ is Star!19461) (regTwo!39435 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443938))

(assert (= (and b!7443099 ((_ is Union!19461) (regTwo!39435 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443939))

(declare-fun b!7443941 () Bool)

(declare-fun e!4444815 () Bool)

(declare-fun tp!2153100 () Bool)

(declare-fun tp!2153098 () Bool)

(assert (=> b!7443941 (= e!4444815 (and tp!2153100 tp!2153098))))

(assert (=> b!7443008 (= tp!2152161 e!4444815)))

(declare-fun b!7443942 () Bool)

(declare-fun tp!2153096 () Bool)

(assert (=> b!7443942 (= e!4444815 tp!2153096)))

(declare-fun b!7443940 () Bool)

(assert (=> b!7443940 (= e!4444815 tp_is_empty!49181)))

(declare-fun b!7443943 () Bool)

(declare-fun tp!2153099 () Bool)

(declare-fun tp!2153097 () Bool)

(assert (=> b!7443943 (= e!4444815 (and tp!2153099 tp!2153097))))

(assert (= (and b!7443008 ((_ is ElementMatch!19461) (reg!19790 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443940))

(assert (= (and b!7443008 ((_ is Concat!28306) (reg!19790 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443941))

(assert (= (and b!7443008 ((_ is Star!19461) (reg!19790 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443942))

(assert (= (and b!7443008 ((_ is Union!19461) (reg!19790 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443943))

(declare-fun b!7443945 () Bool)

(declare-fun e!4444816 () Bool)

(declare-fun tp!2153105 () Bool)

(declare-fun tp!2153103 () Bool)

(assert (=> b!7443945 (= e!4444816 (and tp!2153105 tp!2153103))))

(assert (=> b!7443021 (= tp!2152180 e!4444816)))

(declare-fun b!7443946 () Bool)

(declare-fun tp!2153101 () Bool)

(assert (=> b!7443946 (= e!4444816 tp!2153101)))

(declare-fun b!7443944 () Bool)

(assert (=> b!7443944 (= e!4444816 tp_is_empty!49181)))

(declare-fun b!7443947 () Bool)

(declare-fun tp!2153104 () Bool)

(declare-fun tp!2153102 () Bool)

(assert (=> b!7443947 (= e!4444816 (and tp!2153104 tp!2153102))))

(assert (= (and b!7443021 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443944))

(assert (= (and b!7443021 ((_ is Concat!28306) (regOne!39434 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443945))

(assert (= (and b!7443021 ((_ is Star!19461) (regOne!39434 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443946))

(assert (= (and b!7443021 ((_ is Union!19461) (regOne!39434 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443947))

(declare-fun b!7443949 () Bool)

(declare-fun e!4444817 () Bool)

(declare-fun tp!2153110 () Bool)

(declare-fun tp!2153108 () Bool)

(assert (=> b!7443949 (= e!4444817 (and tp!2153110 tp!2153108))))

(assert (=> b!7443021 (= tp!2152178 e!4444817)))

(declare-fun b!7443950 () Bool)

(declare-fun tp!2153106 () Bool)

(assert (=> b!7443950 (= e!4444817 tp!2153106)))

(declare-fun b!7443948 () Bool)

(assert (=> b!7443948 (= e!4444817 tp_is_empty!49181)))

(declare-fun b!7443951 () Bool)

(declare-fun tp!2153109 () Bool)

(declare-fun tp!2153107 () Bool)

(assert (=> b!7443951 (= e!4444817 (and tp!2153109 tp!2153107))))

(assert (= (and b!7443021 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443948))

(assert (= (and b!7443021 ((_ is Concat!28306) (regTwo!39434 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443949))

(assert (= (and b!7443021 ((_ is Star!19461) (regTwo!39434 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443950))

(assert (= (and b!7443021 ((_ is Union!19461) (regTwo!39434 (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443951))

(declare-fun b!7443953 () Bool)

(declare-fun e!4444818 () Bool)

(declare-fun tp!2153115 () Bool)

(declare-fun tp!2153113 () Bool)

(assert (=> b!7443953 (= e!4444818 (and tp!2153115 tp!2153113))))

(assert (=> b!7443077 (= tp!2152243 e!4444818)))

(declare-fun b!7443954 () Bool)

(declare-fun tp!2153111 () Bool)

(assert (=> b!7443954 (= e!4444818 tp!2153111)))

(declare-fun b!7443952 () Bool)

(assert (=> b!7443952 (= e!4444818 tp_is_empty!49181)))

(declare-fun b!7443955 () Bool)

(declare-fun tp!2153114 () Bool)

(declare-fun tp!2153112 () Bool)

(assert (=> b!7443955 (= e!4444818 (and tp!2153114 tp!2153112))))

(assert (= (and b!7443077 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443952))

(assert (= (and b!7443077 ((_ is Concat!28306) (reg!19790 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443953))

(assert (= (and b!7443077 ((_ is Star!19461) (reg!19790 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443954))

(assert (= (and b!7443077 ((_ is Union!19461) (reg!19790 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443955))

(declare-fun b!7443957 () Bool)

(declare-fun e!4444819 () Bool)

(declare-fun tp!2153120 () Bool)

(declare-fun tp!2153118 () Bool)

(assert (=> b!7443957 (= e!4444819 (and tp!2153120 tp!2153118))))

(assert (=> b!7443000 (= tp!2152151 e!4444819)))

(declare-fun b!7443958 () Bool)

(declare-fun tp!2153116 () Bool)

(assert (=> b!7443958 (= e!4444819 tp!2153116)))

(declare-fun b!7443956 () Bool)

(assert (=> b!7443956 (= e!4444819 tp_is_empty!49181)))

(declare-fun b!7443959 () Bool)

(declare-fun tp!2153119 () Bool)

(declare-fun tp!2153117 () Bool)

(assert (=> b!7443959 (= e!4444819 (and tp!2153119 tp!2153117))))

(assert (= (and b!7443000 ((_ is ElementMatch!19461) (reg!19790 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443956))

(assert (= (and b!7443000 ((_ is Concat!28306) (reg!19790 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443957))

(assert (= (and b!7443000 ((_ is Star!19461) (reg!19790 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443958))

(assert (= (and b!7443000 ((_ is Union!19461) (reg!19790 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7443959))

(declare-fun b!7443961 () Bool)

(declare-fun e!4444820 () Bool)

(declare-fun tp!2153125 () Bool)

(declare-fun tp!2153123 () Bool)

(assert (=> b!7443961 (= e!4444820 (and tp!2153125 tp!2153123))))

(assert (=> b!7443047 (= tp!2152209 e!4444820)))

(declare-fun b!7443962 () Bool)

(declare-fun tp!2153121 () Bool)

(assert (=> b!7443962 (= e!4444820 tp!2153121)))

(declare-fun b!7443960 () Bool)

(assert (=> b!7443960 (= e!4444820 tp_is_empty!49181)))

(declare-fun b!7443963 () Bool)

(declare-fun tp!2153124 () Bool)

(declare-fun tp!2153122 () Bool)

(assert (=> b!7443963 (= e!4444820 (and tp!2153124 tp!2153122))))

(assert (= (and b!7443047 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443960))

(assert (= (and b!7443047 ((_ is Concat!28306) (regOne!39435 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443961))

(assert (= (and b!7443047 ((_ is Star!19461) (regOne!39435 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443962))

(assert (= (and b!7443047 ((_ is Union!19461) (regOne!39435 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443963))

(declare-fun b!7443965 () Bool)

(declare-fun e!4444821 () Bool)

(declare-fun tp!2153130 () Bool)

(declare-fun tp!2153128 () Bool)

(assert (=> b!7443965 (= e!4444821 (and tp!2153130 tp!2153128))))

(assert (=> b!7443047 (= tp!2152207 e!4444821)))

(declare-fun b!7443966 () Bool)

(declare-fun tp!2153126 () Bool)

(assert (=> b!7443966 (= e!4444821 tp!2153126)))

(declare-fun b!7443964 () Bool)

(assert (=> b!7443964 (= e!4444821 tp_is_empty!49181)))

(declare-fun b!7443967 () Bool)

(declare-fun tp!2153129 () Bool)

(declare-fun tp!2153127 () Bool)

(assert (=> b!7443967 (= e!4444821 (and tp!2153129 tp!2153127))))

(assert (= (and b!7443047 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443964))

(assert (= (and b!7443047 ((_ is Concat!28306) (regTwo!39435 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443965))

(assert (= (and b!7443047 ((_ is Star!19461) (regTwo!39435 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443966))

(assert (= (and b!7443047 ((_ is Union!19461) (regTwo!39435 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7443967))

(declare-fun b!7443969 () Bool)

(declare-fun e!4444822 () Bool)

(declare-fun tp!2153135 () Bool)

(declare-fun tp!2153133 () Bool)

(assert (=> b!7443969 (= e!4444822 (and tp!2153135 tp!2153133))))

(assert (=> b!7443038 (= tp!2152196 e!4444822)))

(declare-fun b!7443970 () Bool)

(declare-fun tp!2153131 () Bool)

(assert (=> b!7443970 (= e!4444822 tp!2153131)))

(declare-fun b!7443968 () Bool)

(assert (=> b!7443968 (= e!4444822 tp_is_empty!49181)))

(declare-fun b!7443971 () Bool)

(declare-fun tp!2153134 () Bool)

(declare-fun tp!2153132 () Bool)

(assert (=> b!7443971 (= e!4444822 (and tp!2153134 tp!2153132))))

(assert (= (and b!7443038 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443968))

(assert (= (and b!7443038 ((_ is Concat!28306) (reg!19790 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443969))

(assert (= (and b!7443038 ((_ is Star!19461) (reg!19790 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443970))

(assert (= (and b!7443038 ((_ is Union!19461) (reg!19790 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443971))

(declare-fun condSetEmpty!56648 () Bool)

(assert (=> setNonEmpty!56644 (= condSetEmpty!56648 (= setRest!56644 ((as const (Array Context!16802 Bool)) false)))))

(declare-fun setRes!56648 () Bool)

(assert (=> setNonEmpty!56644 (= tp!2152142 setRes!56648)))

(declare-fun setIsEmpty!56648 () Bool)

(assert (=> setIsEmpty!56648 setRes!56648))

(declare-fun setElem!56648 () Context!16802)

(declare-fun tp!2153136 () Bool)

(declare-fun setNonEmpty!56648 () Bool)

(declare-fun e!4444823 () Bool)

(assert (=> setNonEmpty!56648 (= setRes!56648 (and tp!2153136 (inv!92013 setElem!56648) e!4444823))))

(declare-fun setRest!56648 () (InoxSet Context!16802))

(assert (=> setNonEmpty!56648 (= setRest!56644 ((_ map or) (store ((as const (Array Context!16802 Bool)) false) setElem!56648 true) setRest!56648))))

(declare-fun b!7443972 () Bool)

(declare-fun tp!2153137 () Bool)

(assert (=> b!7443972 (= e!4444823 tp!2153137)))

(assert (= (and setNonEmpty!56644 condSetEmpty!56648) setIsEmpty!56648))

(assert (= (and setNonEmpty!56644 (not condSetEmpty!56648)) setNonEmpty!56648))

(assert (= setNonEmpty!56648 b!7443972))

(declare-fun m!8054666 () Bool)

(assert (=> setNonEmpty!56648 m!8054666))

(declare-fun b!7443974 () Bool)

(declare-fun e!4444824 () Bool)

(declare-fun tp!2153142 () Bool)

(declare-fun tp!2153140 () Bool)

(assert (=> b!7443974 (= e!4444824 (and tp!2153142 tp!2153140))))

(assert (=> b!7443133 (= tp!2152315 e!4444824)))

(declare-fun b!7443975 () Bool)

(declare-fun tp!2153138 () Bool)

(assert (=> b!7443975 (= e!4444824 tp!2153138)))

(declare-fun b!7443973 () Bool)

(assert (=> b!7443973 (= e!4444824 tp_is_empty!49181)))

(declare-fun b!7443976 () Bool)

(declare-fun tp!2153141 () Bool)

(declare-fun tp!2153139 () Bool)

(assert (=> b!7443976 (= e!4444824 (and tp!2153141 tp!2153139))))

(assert (= (and b!7443133 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443973))

(assert (= (and b!7443133 ((_ is Concat!28306) (regOne!39435 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443974))

(assert (= (and b!7443133 ((_ is Star!19461) (regOne!39435 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443975))

(assert (= (and b!7443133 ((_ is Union!19461) (regOne!39435 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443976))

(declare-fun b!7443978 () Bool)

(declare-fun e!4444825 () Bool)

(declare-fun tp!2153147 () Bool)

(declare-fun tp!2153145 () Bool)

(assert (=> b!7443978 (= e!4444825 (and tp!2153147 tp!2153145))))

(assert (=> b!7443133 (= tp!2152313 e!4444825)))

(declare-fun b!7443979 () Bool)

(declare-fun tp!2153143 () Bool)

(assert (=> b!7443979 (= e!4444825 tp!2153143)))

(declare-fun b!7443977 () Bool)

(assert (=> b!7443977 (= e!4444825 tp_is_empty!49181)))

(declare-fun b!7443980 () Bool)

(declare-fun tp!2153146 () Bool)

(declare-fun tp!2153144 () Bool)

(assert (=> b!7443980 (= e!4444825 (and tp!2153146 tp!2153144))))

(assert (= (and b!7443133 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443977))

(assert (= (and b!7443133 ((_ is Concat!28306) (regTwo!39435 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443978))

(assert (= (and b!7443133 ((_ is Star!19461) (regTwo!39435 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443979))

(assert (= (and b!7443133 ((_ is Union!19461) (regTwo!39435 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443980))

(declare-fun b!7443982 () Bool)

(declare-fun e!4444826 () Bool)

(declare-fun tp!2153152 () Bool)

(declare-fun tp!2153150 () Bool)

(assert (=> b!7443982 (= e!4444826 (and tp!2153152 tp!2153150))))

(assert (=> b!7443124 (= tp!2152302 e!4444826)))

(declare-fun b!7443983 () Bool)

(declare-fun tp!2153148 () Bool)

(assert (=> b!7443983 (= e!4444826 tp!2153148)))

(declare-fun b!7443981 () Bool)

(assert (=> b!7443981 (= e!4444826 tp_is_empty!49181)))

(declare-fun b!7443984 () Bool)

(declare-fun tp!2153151 () Bool)

(declare-fun tp!2153149 () Bool)

(assert (=> b!7443984 (= e!4444826 (and tp!2153151 tp!2153149))))

(assert (= (and b!7443124 ((_ is ElementMatch!19461) (reg!19790 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443981))

(assert (= (and b!7443124 ((_ is Concat!28306) (reg!19790 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443982))

(assert (= (and b!7443124 ((_ is Star!19461) (reg!19790 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443983))

(assert (= (and b!7443124 ((_ is Union!19461) (reg!19790 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443984))

(declare-fun b!7443986 () Bool)

(declare-fun e!4444827 () Bool)

(declare-fun tp!2153157 () Bool)

(declare-fun tp!2153155 () Bool)

(assert (=> b!7443986 (= e!4444827 (and tp!2153157 tp!2153155))))

(assert (=> b!7442975 (= tp!2152120 e!4444827)))

(declare-fun b!7443987 () Bool)

(declare-fun tp!2153153 () Bool)

(assert (=> b!7443987 (= e!4444827 tp!2153153)))

(declare-fun b!7443985 () Bool)

(assert (=> b!7443985 (= e!4444827 tp_is_empty!49181)))

(declare-fun b!7443988 () Bool)

(declare-fun tp!2153156 () Bool)

(declare-fun tp!2153154 () Bool)

(assert (=> b!7443988 (= e!4444827 (and tp!2153156 tp!2153154))))

(assert (= (and b!7442975 ((_ is ElementMatch!19461) (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443985))

(assert (= (and b!7442975 ((_ is Concat!28306) (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443986))

(assert (= (and b!7442975 ((_ is Star!19461) (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443987))

(assert (= (and b!7442975 ((_ is Union!19461) (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443988))

(declare-fun b!7443990 () Bool)

(declare-fun e!4444828 () Bool)

(declare-fun tp!2153162 () Bool)

(declare-fun tp!2153160 () Bool)

(assert (=> b!7443990 (= e!4444828 (and tp!2153162 tp!2153160))))

(assert (=> b!7442975 (= tp!2152118 e!4444828)))

(declare-fun b!7443991 () Bool)

(declare-fun tp!2153158 () Bool)

(assert (=> b!7443991 (= e!4444828 tp!2153158)))

(declare-fun b!7443989 () Bool)

(assert (=> b!7443989 (= e!4444828 tp_is_empty!49181)))

(declare-fun b!7443992 () Bool)

(declare-fun tp!2153161 () Bool)

(declare-fun tp!2153159 () Bool)

(assert (=> b!7443992 (= e!4444828 (and tp!2153161 tp!2153159))))

(assert (= (and b!7442975 ((_ is ElementMatch!19461) (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443989))

(assert (= (and b!7442975 ((_ is Concat!28306) (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443990))

(assert (= (and b!7442975 ((_ is Star!19461) (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443991))

(assert (= (and b!7442975 ((_ is Union!19461) (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7443992))

(declare-fun b!7443994 () Bool)

(declare-fun e!4444829 () Bool)

(declare-fun tp!2153167 () Bool)

(declare-fun tp!2153165 () Bool)

(assert (=> b!7443994 (= e!4444829 (and tp!2153167 tp!2153165))))

(assert (=> b!7443115 (= tp!2152296 e!4444829)))

(declare-fun b!7443995 () Bool)

(declare-fun tp!2153163 () Bool)

(assert (=> b!7443995 (= e!4444829 tp!2153163)))

(declare-fun b!7443993 () Bool)

(assert (=> b!7443993 (= e!4444829 tp_is_empty!49181)))

(declare-fun b!7443996 () Bool)

(declare-fun tp!2153166 () Bool)

(declare-fun tp!2153164 () Bool)

(assert (=> b!7443996 (= e!4444829 (and tp!2153166 tp!2153164))))

(assert (= (and b!7443115 ((_ is ElementMatch!19461) (regOne!39434 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443993))

(assert (= (and b!7443115 ((_ is Concat!28306) (regOne!39434 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443994))

(assert (= (and b!7443115 ((_ is Star!19461) (regOne!39434 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443995))

(assert (= (and b!7443115 ((_ is Union!19461) (regOne!39434 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443996))

(declare-fun b!7443998 () Bool)

(declare-fun e!4444830 () Bool)

(declare-fun tp!2153172 () Bool)

(declare-fun tp!2153170 () Bool)

(assert (=> b!7443998 (= e!4444830 (and tp!2153172 tp!2153170))))

(assert (=> b!7443115 (= tp!2152294 e!4444830)))

(declare-fun b!7443999 () Bool)

(declare-fun tp!2153168 () Bool)

(assert (=> b!7443999 (= e!4444830 tp!2153168)))

(declare-fun b!7443997 () Bool)

(assert (=> b!7443997 (= e!4444830 tp_is_empty!49181)))

(declare-fun b!7444000 () Bool)

(declare-fun tp!2153171 () Bool)

(declare-fun tp!2153169 () Bool)

(assert (=> b!7444000 (= e!4444830 (and tp!2153171 tp!2153169))))

(assert (= (and b!7443115 ((_ is ElementMatch!19461) (regTwo!39434 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443997))

(assert (= (and b!7443115 ((_ is Concat!28306) (regTwo!39434 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443998))

(assert (= (and b!7443115 ((_ is Star!19461) (regTwo!39434 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7443999))

(assert (= (and b!7443115 ((_ is Union!19461) (regTwo!39434 (reg!19790 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444000))

(declare-fun b!7444002 () Bool)

(declare-fun e!4444831 () Bool)

(declare-fun tp!2153177 () Bool)

(declare-fun tp!2153175 () Bool)

(assert (=> b!7444002 (= e!4444831 (and tp!2153177 tp!2153175))))

(assert (=> b!7443027 (= tp!2152184 e!4444831)))

(declare-fun b!7444003 () Bool)

(declare-fun tp!2153173 () Bool)

(assert (=> b!7444003 (= e!4444831 tp!2153173)))

(declare-fun b!7444001 () Bool)

(assert (=> b!7444001 (= e!4444831 tp_is_empty!49181)))

(declare-fun b!7444004 () Bool)

(declare-fun tp!2153176 () Bool)

(declare-fun tp!2153174 () Bool)

(assert (=> b!7444004 (= e!4444831 (and tp!2153176 tp!2153174))))

(assert (= (and b!7443027 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444001))

(assert (= (and b!7443027 ((_ is Concat!28306) (regOne!39435 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444002))

(assert (= (and b!7443027 ((_ is Star!19461) (regOne!39435 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444003))

(assert (= (and b!7443027 ((_ is Union!19461) (regOne!39435 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444004))

(declare-fun b!7444006 () Bool)

(declare-fun e!4444832 () Bool)

(declare-fun tp!2153182 () Bool)

(declare-fun tp!2153180 () Bool)

(assert (=> b!7444006 (= e!4444832 (and tp!2153182 tp!2153180))))

(assert (=> b!7443027 (= tp!2152182 e!4444832)))

(declare-fun b!7444007 () Bool)

(declare-fun tp!2153178 () Bool)

(assert (=> b!7444007 (= e!4444832 tp!2153178)))

(declare-fun b!7444005 () Bool)

(assert (=> b!7444005 (= e!4444832 tp_is_empty!49181)))

(declare-fun b!7444008 () Bool)

(declare-fun tp!2153181 () Bool)

(declare-fun tp!2153179 () Bool)

(assert (=> b!7444008 (= e!4444832 (and tp!2153181 tp!2153179))))

(assert (= (and b!7443027 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444005))

(assert (= (and b!7443027 ((_ is Concat!28306) (regTwo!39435 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444006))

(assert (= (and b!7443027 ((_ is Star!19461) (regTwo!39435 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444007))

(assert (= (and b!7443027 ((_ is Union!19461) (regTwo!39435 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444008))

(declare-fun b!7444010 () Bool)

(declare-fun e!4444833 () Bool)

(declare-fun tp!2153187 () Bool)

(declare-fun tp!2153185 () Bool)

(assert (=> b!7444010 (= e!4444833 (and tp!2153187 tp!2153185))))

(assert (=> b!7443110 (= tp!2152289 e!4444833)))

(declare-fun b!7444011 () Bool)

(declare-fun tp!2153183 () Bool)

(assert (=> b!7444011 (= e!4444833 tp!2153183)))

(declare-fun b!7444009 () Bool)

(assert (=> b!7444009 (= e!4444833 tp_is_empty!49181)))

(declare-fun b!7444012 () Bool)

(declare-fun tp!2153186 () Bool)

(declare-fun tp!2153184 () Bool)

(assert (=> b!7444012 (= e!4444833 (and tp!2153186 tp!2153184))))

(assert (= (and b!7443110 ((_ is ElementMatch!19461) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7444009))

(assert (= (and b!7443110 ((_ is Concat!28306) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7444010))

(assert (= (and b!7443110 ((_ is Star!19461) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7444011))

(assert (= (and b!7443110 ((_ is Union!19461) (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7444012))

(declare-fun b!7444014 () Bool)

(declare-fun e!4444834 () Bool)

(declare-fun tp!2153192 () Bool)

(declare-fun tp!2153190 () Bool)

(assert (=> b!7444014 (= e!4444834 (and tp!2153192 tp!2153190))))

(assert (=> b!7443110 (= tp!2152287 e!4444834)))

(declare-fun b!7444015 () Bool)

(declare-fun tp!2153188 () Bool)

(assert (=> b!7444015 (= e!4444834 tp!2153188)))

(declare-fun b!7444013 () Bool)

(assert (=> b!7444013 (= e!4444834 tp_is_empty!49181)))

(declare-fun b!7444016 () Bool)

(declare-fun tp!2153191 () Bool)

(declare-fun tp!2153189 () Bool)

(assert (=> b!7444016 (= e!4444834 (and tp!2153191 tp!2153189))))

(assert (= (and b!7443110 ((_ is ElementMatch!19461) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7444013))

(assert (= (and b!7443110 ((_ is Concat!28306) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7444014))

(assert (= (and b!7443110 ((_ is Star!19461) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7444015))

(assert (= (and b!7443110 ((_ is Union!19461) (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56633)))))) b!7444016))

(declare-fun b!7444018 () Bool)

(declare-fun e!4444835 () Bool)

(declare-fun tp!2153197 () Bool)

(declare-fun tp!2153195 () Bool)

(assert (=> b!7444018 (= e!4444835 (and tp!2153197 tp!2153195))))

(assert (=> b!7442989 (= tp!2152141 e!4444835)))

(declare-fun b!7444019 () Bool)

(declare-fun tp!2153193 () Bool)

(assert (=> b!7444019 (= e!4444835 tp!2153193)))

(declare-fun b!7444017 () Bool)

(assert (=> b!7444017 (= e!4444835 tp_is_empty!49181)))

(declare-fun b!7444020 () Bool)

(declare-fun tp!2153196 () Bool)

(declare-fun tp!2153194 () Bool)

(assert (=> b!7444020 (= e!4444835 (and tp!2153196 tp!2153194))))

(assert (= (and b!7442989 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444017))

(assert (= (and b!7442989 ((_ is Concat!28306) (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444018))

(assert (= (and b!7442989 ((_ is Star!19461) (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444019))

(assert (= (and b!7442989 ((_ is Union!19461) (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444020))

(declare-fun b!7444022 () Bool)

(declare-fun e!4444836 () Bool)

(declare-fun tp!2153202 () Bool)

(declare-fun tp!2153200 () Bool)

(assert (=> b!7444022 (= e!4444836 (and tp!2153202 tp!2153200))))

(assert (=> b!7442989 (= tp!2152139 e!4444836)))

(declare-fun b!7444023 () Bool)

(declare-fun tp!2153198 () Bool)

(assert (=> b!7444023 (= e!4444836 tp!2153198)))

(declare-fun b!7444021 () Bool)

(assert (=> b!7444021 (= e!4444836 tp_is_empty!49181)))

(declare-fun b!7444024 () Bool)

(declare-fun tp!2153201 () Bool)

(declare-fun tp!2153199 () Bool)

(assert (=> b!7444024 (= e!4444836 (and tp!2153201 tp!2153199))))

(assert (= (and b!7442989 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444021))

(assert (= (and b!7442989 ((_ is Concat!28306) (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444022))

(assert (= (and b!7442989 ((_ is Star!19461) (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444023))

(assert (= (and b!7442989 ((_ is Union!19461) (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444024))

(declare-fun b!7444026 () Bool)

(declare-fun e!4444837 () Bool)

(declare-fun tp!2153207 () Bool)

(declare-fun tp!2153205 () Bool)

(assert (=> b!7444026 (= e!4444837 (and tp!2153207 tp!2153205))))

(assert (=> b!7443102 (= tp!2152273 e!4444837)))

(declare-fun b!7444027 () Bool)

(declare-fun tp!2153203 () Bool)

(assert (=> b!7444027 (= e!4444837 tp!2153203)))

(declare-fun b!7444025 () Bool)

(assert (=> b!7444025 (= e!4444837 tp_is_empty!49181)))

(declare-fun b!7444028 () Bool)

(declare-fun tp!2153206 () Bool)

(declare-fun tp!2153204 () Bool)

(assert (=> b!7444028 (= e!4444837 (and tp!2153206 tp!2153204))))

(assert (= (and b!7443102 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444025))

(assert (= (and b!7443102 ((_ is Concat!28306) (reg!19790 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444026))

(assert (= (and b!7443102 ((_ is Star!19461) (reg!19790 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444027))

(assert (= (and b!7443102 ((_ is Union!19461) (reg!19790 (regTwo!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444028))

(declare-fun b!7444030 () Bool)

(declare-fun e!4444838 () Bool)

(declare-fun tp!2153212 () Bool)

(declare-fun tp!2153210 () Bool)

(assert (=> b!7444030 (= e!4444838 (and tp!2153212 tp!2153210))))

(assert (=> b!7443093 (= tp!2152267 e!4444838)))

(declare-fun b!7444031 () Bool)

(declare-fun tp!2153208 () Bool)

(assert (=> b!7444031 (= e!4444838 tp!2153208)))

(declare-fun b!7444029 () Bool)

(assert (=> b!7444029 (= e!4444838 tp_is_empty!49181)))

(declare-fun b!7444032 () Bool)

(declare-fun tp!2153211 () Bool)

(declare-fun tp!2153209 () Bool)

(assert (=> b!7444032 (= e!4444838 (and tp!2153211 tp!2153209))))

(assert (= (and b!7443093 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444029))

(assert (= (and b!7443093 ((_ is Concat!28306) (regOne!39434 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444030))

(assert (= (and b!7443093 ((_ is Star!19461) (regOne!39434 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444031))

(assert (= (and b!7443093 ((_ is Union!19461) (regOne!39434 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444032))

(declare-fun b!7444034 () Bool)

(declare-fun e!4444839 () Bool)

(declare-fun tp!2153217 () Bool)

(declare-fun tp!2153215 () Bool)

(assert (=> b!7444034 (= e!4444839 (and tp!2153217 tp!2153215))))

(assert (=> b!7443093 (= tp!2152265 e!4444839)))

(declare-fun b!7444035 () Bool)

(declare-fun tp!2153213 () Bool)

(assert (=> b!7444035 (= e!4444839 tp!2153213)))

(declare-fun b!7444033 () Bool)

(assert (=> b!7444033 (= e!4444839 tp_is_empty!49181)))

(declare-fun b!7444036 () Bool)

(declare-fun tp!2153216 () Bool)

(declare-fun tp!2153214 () Bool)

(assert (=> b!7444036 (= e!4444839 (and tp!2153216 tp!2153214))))

(assert (= (and b!7443093 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444033))

(assert (= (and b!7443093 ((_ is Concat!28306) (regTwo!39434 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444034))

(assert (= (and b!7443093 ((_ is Star!19461) (regTwo!39434 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444035))

(assert (= (and b!7443093 ((_ is Union!19461) (regTwo!39434 (regTwo!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444036))

(declare-fun b!7444038 () Bool)

(declare-fun e!4444840 () Bool)

(declare-fun tp!2153222 () Bool)

(declare-fun tp!2153220 () Bool)

(assert (=> b!7444038 (= e!4444840 (and tp!2153222 tp!2153220))))

(assert (=> b!7443003 (= tp!2152160 e!4444840)))

(declare-fun b!7444039 () Bool)

(declare-fun tp!2153218 () Bool)

(assert (=> b!7444039 (= e!4444840 tp!2153218)))

(declare-fun b!7444037 () Bool)

(assert (=> b!7444037 (= e!4444840 tp_is_empty!49181)))

(declare-fun b!7444040 () Bool)

(declare-fun tp!2153221 () Bool)

(declare-fun tp!2153219 () Bool)

(assert (=> b!7444040 (= e!4444840 (and tp!2153221 tp!2153219))))

(assert (= (and b!7443003 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444037))

(assert (= (and b!7443003 ((_ is Concat!28306) (regOne!39434 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444038))

(assert (= (and b!7443003 ((_ is Star!19461) (regOne!39434 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444039))

(assert (= (and b!7443003 ((_ is Union!19461) (regOne!39434 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444040))

(declare-fun b!7444043 () Bool)

(declare-fun e!4444842 () Bool)

(declare-fun tp!2153227 () Bool)

(declare-fun tp!2153225 () Bool)

(assert (=> b!7444043 (= e!4444842 (and tp!2153227 tp!2153225))))

(assert (=> b!7443003 (= tp!2152158 e!4444842)))

(declare-fun b!7444044 () Bool)

(declare-fun tp!2153223 () Bool)

(assert (=> b!7444044 (= e!4444842 tp!2153223)))

(declare-fun b!7444042 () Bool)

(assert (=> b!7444042 (= e!4444842 tp_is_empty!49181)))

(declare-fun b!7444045 () Bool)

(declare-fun tp!2153226 () Bool)

(declare-fun tp!2153224 () Bool)

(assert (=> b!7444045 (= e!4444842 (and tp!2153226 tp!2153224))))

(assert (= (and b!7443003 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444042))

(assert (= (and b!7443003 ((_ is Concat!28306) (regTwo!39434 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444043))

(assert (= (and b!7443003 ((_ is Star!19461) (regTwo!39434 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444044))

(assert (= (and b!7443003 ((_ is Union!19461) (regTwo!39434 (regTwo!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444045))

(declare-fun b!7444047 () Bool)

(declare-fun e!4444843 () Bool)

(declare-fun tp!2153232 () Bool)

(declare-fun tp!2153230 () Bool)

(assert (=> b!7444047 (= e!4444843 (and tp!2153232 tp!2153230))))

(assert (=> b!7443108 (= tp!2152283 e!4444843)))

(declare-fun b!7444048 () Bool)

(declare-fun tp!2153228 () Bool)

(assert (=> b!7444048 (= e!4444843 tp!2153228)))

(declare-fun b!7444046 () Bool)

(assert (=> b!7444046 (= e!4444843 tp_is_empty!49181)))

(declare-fun b!7444049 () Bool)

(declare-fun tp!2153231 () Bool)

(declare-fun tp!2153229 () Bool)

(assert (=> b!7444049 (= e!4444843 (and tp!2153231 tp!2153229))))

(assert (= (and b!7443108 ((_ is ElementMatch!19461) (regOne!39435 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444046))

(assert (= (and b!7443108 ((_ is Concat!28306) (regOne!39435 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444047))

(assert (= (and b!7443108 ((_ is Star!19461) (regOne!39435 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444048))

(assert (= (and b!7443108 ((_ is Union!19461) (regOne!39435 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444049))

(declare-fun b!7444051 () Bool)

(declare-fun e!4444844 () Bool)

(declare-fun tp!2153237 () Bool)

(declare-fun tp!2153235 () Bool)

(assert (=> b!7444051 (= e!4444844 (and tp!2153237 tp!2153235))))

(assert (=> b!7443108 (= tp!2152281 e!4444844)))

(declare-fun b!7444052 () Bool)

(declare-fun tp!2153233 () Bool)

(assert (=> b!7444052 (= e!4444844 tp!2153233)))

(declare-fun b!7444050 () Bool)

(assert (=> b!7444050 (= e!4444844 tp_is_empty!49181)))

(declare-fun b!7444053 () Bool)

(declare-fun tp!2153236 () Bool)

(declare-fun tp!2153234 () Bool)

(assert (=> b!7444053 (= e!4444844 (and tp!2153236 tp!2153234))))

(assert (= (and b!7443108 ((_ is ElementMatch!19461) (regTwo!39435 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444050))

(assert (= (and b!7443108 ((_ is Concat!28306) (regTwo!39435 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444051))

(assert (= (and b!7443108 ((_ is Star!19461) (regTwo!39435 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444052))

(assert (= (and b!7443108 ((_ is Union!19461) (regTwo!39435 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444053))

(declare-fun b!7444055 () Bool)

(declare-fun e!4444845 () Bool)

(declare-fun tp!2153242 () Bool)

(declare-fun tp!2153240 () Bool)

(assert (=> b!7444055 (= e!4444845 (and tp!2153242 tp!2153240))))

(assert (=> b!7442987 (= tp!2152135 e!4444845)))

(declare-fun b!7444056 () Bool)

(declare-fun tp!2153238 () Bool)

(assert (=> b!7444056 (= e!4444845 tp!2153238)))

(declare-fun b!7444054 () Bool)

(assert (=> b!7444054 (= e!4444845 tp_is_empty!49181)))

(declare-fun b!7444057 () Bool)

(declare-fun tp!2153241 () Bool)

(declare-fun tp!2153239 () Bool)

(assert (=> b!7444057 (= e!4444845 (and tp!2153241 tp!2153239))))

(assert (= (and b!7442987 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444054))

(assert (= (and b!7442987 ((_ is Concat!28306) (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444055))

(assert (= (and b!7442987 ((_ is Star!19461) (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444056))

(assert (= (and b!7442987 ((_ is Union!19461) (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444057))

(declare-fun b!7444059 () Bool)

(declare-fun e!4444846 () Bool)

(declare-fun tp!2153247 () Bool)

(declare-fun tp!2153245 () Bool)

(assert (=> b!7444059 (= e!4444846 (and tp!2153247 tp!2153245))))

(assert (=> b!7442987 (= tp!2152133 e!4444846)))

(declare-fun b!7444060 () Bool)

(declare-fun tp!2153243 () Bool)

(assert (=> b!7444060 (= e!4444846 tp!2153243)))

(declare-fun b!7444058 () Bool)

(assert (=> b!7444058 (= e!4444846 tp_is_empty!49181)))

(declare-fun b!7444061 () Bool)

(declare-fun tp!2153246 () Bool)

(declare-fun tp!2153244 () Bool)

(assert (=> b!7444061 (= e!4444846 (and tp!2153246 tp!2153244))))

(assert (= (and b!7442987 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444058))

(assert (= (and b!7442987 ((_ is Concat!28306) (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444059))

(assert (= (and b!7442987 ((_ is Star!19461) (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444060))

(assert (= (and b!7442987 ((_ is Union!19461) (regTwo!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444061))

(declare-fun b!7444063 () Bool)

(declare-fun e!4444847 () Bool)

(declare-fun tp!2153252 () Bool)

(declare-fun tp!2153250 () Bool)

(assert (=> b!7444063 (= e!4444847 (and tp!2153252 tp!2153250))))

(assert (=> b!7443080 (= tp!2152252 e!4444847)))

(declare-fun b!7444064 () Bool)

(declare-fun tp!2153248 () Bool)

(assert (=> b!7444064 (= e!4444847 tp!2153248)))

(declare-fun b!7444062 () Bool)

(assert (=> b!7444062 (= e!4444847 tp_is_empty!49181)))

(declare-fun b!7444065 () Bool)

(declare-fun tp!2153251 () Bool)

(declare-fun tp!2153249 () Bool)

(assert (=> b!7444065 (= e!4444847 (and tp!2153251 tp!2153249))))

(assert (= (and b!7443080 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444062))

(assert (= (and b!7443080 ((_ is Concat!28306) (regOne!39434 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444063))

(assert (= (and b!7443080 ((_ is Star!19461) (regOne!39434 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444064))

(assert (= (and b!7443080 ((_ is Union!19461) (regOne!39434 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444065))

(declare-fun b!7444067 () Bool)

(declare-fun e!4444848 () Bool)

(declare-fun tp!2153257 () Bool)

(declare-fun tp!2153255 () Bool)

(assert (=> b!7444067 (= e!4444848 (and tp!2153257 tp!2153255))))

(assert (=> b!7443080 (= tp!2152250 e!4444848)))

(declare-fun b!7444068 () Bool)

(declare-fun tp!2153253 () Bool)

(assert (=> b!7444068 (= e!4444848 tp!2153253)))

(declare-fun b!7444066 () Bool)

(assert (=> b!7444066 (= e!4444848 tp_is_empty!49181)))

(declare-fun b!7444069 () Bool)

(declare-fun tp!2153256 () Bool)

(declare-fun tp!2153254 () Bool)

(assert (=> b!7444069 (= e!4444848 (and tp!2153256 tp!2153254))))

(assert (= (and b!7443080 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444066))

(assert (= (and b!7443080 ((_ is Concat!28306) (regTwo!39434 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444067))

(assert (= (and b!7443080 ((_ is Star!19461) (regTwo!39434 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444068))

(assert (= (and b!7443080 ((_ is Union!19461) (regTwo!39434 (regOne!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444069))

(declare-fun b!7444071 () Bool)

(declare-fun e!4444854 () Bool)

(declare-fun tp!2153262 () Bool)

(declare-fun tp!2153260 () Bool)

(assert (=> b!7444071 (= e!4444854 (and tp!2153262 tp!2153260))))

(assert (=> b!7443041 (= tp!2152205 e!4444854)))

(declare-fun b!7444072 () Bool)

(declare-fun tp!2153258 () Bool)

(assert (=> b!7444072 (= e!4444854 tp!2153258)))

(declare-fun b!7444070 () Bool)

(assert (=> b!7444070 (= e!4444854 tp_is_empty!49181)))

(declare-fun b!7444074 () Bool)

(declare-fun tp!2153261 () Bool)

(declare-fun tp!2153259 () Bool)

(assert (=> b!7444074 (= e!4444854 (and tp!2153261 tp!2153259))))

(assert (= (and b!7443041 ((_ is ElementMatch!19461) (regOne!39434 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444070))

(assert (= (and b!7443041 ((_ is Concat!28306) (regOne!39434 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444071))

(assert (= (and b!7443041 ((_ is Star!19461) (regOne!39434 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444072))

(assert (= (and b!7443041 ((_ is Union!19461) (regOne!39434 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444074))

(declare-fun b!7444084 () Bool)

(declare-fun e!4444857 () Bool)

(declare-fun tp!2153267 () Bool)

(declare-fun tp!2153265 () Bool)

(assert (=> b!7444084 (= e!4444857 (and tp!2153267 tp!2153265))))

(assert (=> b!7443041 (= tp!2152203 e!4444857)))

(declare-fun b!7444085 () Bool)

(declare-fun tp!2153263 () Bool)

(assert (=> b!7444085 (= e!4444857 tp!2153263)))

(declare-fun b!7444083 () Bool)

(assert (=> b!7444083 (= e!4444857 tp_is_empty!49181)))

(declare-fun b!7444086 () Bool)

(declare-fun tp!2153266 () Bool)

(declare-fun tp!2153264 () Bool)

(assert (=> b!7444086 (= e!4444857 (and tp!2153266 tp!2153264))))

(assert (= (and b!7443041 ((_ is ElementMatch!19461) (regTwo!39434 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444083))

(assert (= (and b!7443041 ((_ is Concat!28306) (regTwo!39434 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444084))

(assert (= (and b!7443041 ((_ is Star!19461) (regTwo!39434 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444085))

(assert (= (and b!7443041 ((_ is Union!19461) (regTwo!39434 (reg!19790 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444086))

(declare-fun b!7444088 () Bool)

(declare-fun e!4444858 () Bool)

(declare-fun tp!2153272 () Bool)

(declare-fun tp!2153270 () Bool)

(assert (=> b!7444088 (= e!4444858 (and tp!2153272 tp!2153270))))

(assert (=> b!7443059 (= tp!2152224 e!4444858)))

(declare-fun b!7444089 () Bool)

(declare-fun tp!2153268 () Bool)

(assert (=> b!7444089 (= e!4444858 tp!2153268)))

(declare-fun b!7444087 () Bool)

(assert (=> b!7444087 (= e!4444858 tp_is_empty!49181)))

(declare-fun b!7444090 () Bool)

(declare-fun tp!2153271 () Bool)

(declare-fun tp!2153269 () Bool)

(assert (=> b!7444090 (= e!4444858 (and tp!2153271 tp!2153269))))

(assert (= (and b!7443059 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444087))

(assert (= (and b!7443059 ((_ is Concat!28306) (regOne!39435 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444088))

(assert (= (and b!7443059 ((_ is Star!19461) (regOne!39435 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444089))

(assert (= (and b!7443059 ((_ is Union!19461) (regOne!39435 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444090))

(declare-fun b!7444092 () Bool)

(declare-fun e!4444859 () Bool)

(declare-fun tp!2153277 () Bool)

(declare-fun tp!2153275 () Bool)

(assert (=> b!7444092 (= e!4444859 (and tp!2153277 tp!2153275))))

(assert (=> b!7443059 (= tp!2152222 e!4444859)))

(declare-fun b!7444093 () Bool)

(declare-fun tp!2153273 () Bool)

(assert (=> b!7444093 (= e!4444859 tp!2153273)))

(declare-fun b!7444091 () Bool)

(assert (=> b!7444091 (= e!4444859 tp_is_empty!49181)))

(declare-fun b!7444094 () Bool)

(declare-fun tp!2153276 () Bool)

(declare-fun tp!2153274 () Bool)

(assert (=> b!7444094 (= e!4444859 (and tp!2153276 tp!2153274))))

(assert (= (and b!7443059 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444091))

(assert (= (and b!7443059 ((_ is Concat!28306) (regTwo!39435 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444092))

(assert (= (and b!7443059 ((_ is Star!19461) (regTwo!39435 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444093))

(assert (= (and b!7443059 ((_ is Union!19461) (regTwo!39435 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444094))

(declare-fun b!7444096 () Bool)

(declare-fun e!4444860 () Bool)

(declare-fun tp!2153282 () Bool)

(declare-fun tp!2153280 () Bool)

(assert (=> b!7444096 (= e!4444860 (and tp!2153282 tp!2153280))))

(assert (=> b!7443050 (= tp!2152211 e!4444860)))

(declare-fun b!7444097 () Bool)

(declare-fun tp!2153278 () Bool)

(assert (=> b!7444097 (= e!4444860 tp!2153278)))

(declare-fun b!7444095 () Bool)

(assert (=> b!7444095 (= e!4444860 tp_is_empty!49181)))

(declare-fun b!7444098 () Bool)

(declare-fun tp!2153281 () Bool)

(declare-fun tp!2153279 () Bool)

(assert (=> b!7444098 (= e!4444860 (and tp!2153281 tp!2153279))))

(assert (= (and b!7443050 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444095))

(assert (= (and b!7443050 ((_ is Concat!28306) (reg!19790 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444096))

(assert (= (and b!7443050 ((_ is Star!19461) (reg!19790 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444097))

(assert (= (and b!7443050 ((_ is Union!19461) (reg!19790 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444098))

(declare-fun b!7444100 () Bool)

(declare-fun e!4444861 () Bool)

(declare-fun tp!2153287 () Bool)

(declare-fun tp!2153285 () Bool)

(assert (=> b!7444100 (= e!4444861 (and tp!2153287 tp!2153285))))

(assert (=> b!7443086 (= tp!2152253 e!4444861)))

(declare-fun b!7444101 () Bool)

(declare-fun tp!2153283 () Bool)

(assert (=> b!7444101 (= e!4444861 tp!2153283)))

(declare-fun b!7444099 () Bool)

(assert (=> b!7444099 (= e!4444861 tp_is_empty!49181)))

(declare-fun b!7444102 () Bool)

(declare-fun tp!2153286 () Bool)

(declare-fun tp!2153284 () Bool)

(assert (=> b!7444102 (= e!4444861 (and tp!2153286 tp!2153284))))

(assert (= (and b!7443086 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444099))

(assert (= (and b!7443086 ((_ is Concat!28306) (reg!19790 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444100))

(assert (= (and b!7443086 ((_ is Star!19461) (reg!19790 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444101))

(assert (= (and b!7443086 ((_ is Union!19461) (reg!19790 (regTwo!39435 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444102))

(declare-fun b!7444104 () Bool)

(declare-fun e!4444862 () Bool)

(declare-fun tp!2153292 () Bool)

(declare-fun tp!2153290 () Bool)

(assert (=> b!7444104 (= e!4444862 (and tp!2153292 tp!2153290))))

(assert (=> b!7442964 (= tp!2152106 e!4444862)))

(declare-fun b!7444105 () Bool)

(declare-fun tp!2153288 () Bool)

(assert (=> b!7444105 (= e!4444862 tp!2153288)))

(declare-fun b!7444103 () Bool)

(assert (=> b!7444103 (= e!4444862 tp_is_empty!49181)))

(declare-fun b!7444106 () Bool)

(declare-fun tp!2153291 () Bool)

(declare-fun tp!2153289 () Bool)

(assert (=> b!7444106 (= e!4444862 (and tp!2153291 tp!2153289))))

(assert (= (and b!7442964 ((_ is ElementMatch!19461) (reg!19790 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444103))

(assert (= (and b!7442964 ((_ is Concat!28306) (reg!19790 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444104))

(assert (= (and b!7442964 ((_ is Star!19461) (reg!19790 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444105))

(assert (= (and b!7442964 ((_ is Union!19461) (reg!19790 (regOne!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444106))

(declare-fun b!7444108 () Bool)

(declare-fun e!4444863 () Bool)

(declare-fun tp!2153297 () Bool)

(declare-fun tp!2153295 () Bool)

(assert (=> b!7444108 (= e!4444863 (and tp!2153297 tp!2153295))))

(assert (=> b!7443106 (= tp!2152284 e!4444863)))

(declare-fun b!7444109 () Bool)

(declare-fun tp!2153293 () Bool)

(assert (=> b!7444109 (= e!4444863 tp!2153293)))

(declare-fun b!7444107 () Bool)

(assert (=> b!7444107 (= e!4444863 tp_is_empty!49181)))

(declare-fun b!7444110 () Bool)

(declare-fun tp!2153296 () Bool)

(declare-fun tp!2153294 () Bool)

(assert (=> b!7444110 (= e!4444863 (and tp!2153296 tp!2153294))))

(assert (= (and b!7443106 ((_ is ElementMatch!19461) (regOne!39434 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444107))

(assert (= (and b!7443106 ((_ is Concat!28306) (regOne!39434 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444108))

(assert (= (and b!7443106 ((_ is Star!19461) (regOne!39434 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444109))

(assert (= (and b!7443106 ((_ is Union!19461) (regOne!39434 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444110))

(declare-fun b!7444112 () Bool)

(declare-fun e!4444864 () Bool)

(declare-fun tp!2153302 () Bool)

(declare-fun tp!2153300 () Bool)

(assert (=> b!7444112 (= e!4444864 (and tp!2153302 tp!2153300))))

(assert (=> b!7443106 (= tp!2152282 e!4444864)))

(declare-fun b!7444113 () Bool)

(declare-fun tp!2153298 () Bool)

(assert (=> b!7444113 (= e!4444864 tp!2153298)))

(declare-fun b!7444111 () Bool)

(assert (=> b!7444111 (= e!4444864 tp_is_empty!49181)))

(declare-fun b!7444114 () Bool)

(declare-fun tp!2153301 () Bool)

(declare-fun tp!2153299 () Bool)

(assert (=> b!7444114 (= e!4444864 (and tp!2153301 tp!2153299))))

(assert (= (and b!7443106 ((_ is ElementMatch!19461) (regTwo!39434 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444111))

(assert (= (and b!7443106 ((_ is Concat!28306) (regTwo!39434 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444112))

(assert (= (and b!7443106 ((_ is Star!19461) (regTwo!39434 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444113))

(assert (= (and b!7443106 ((_ is Union!19461) (regTwo!39434 (reg!19790 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444114))

(declare-fun b!7444116 () Bool)

(declare-fun e!4444865 () Bool)

(declare-fun tp!2153307 () Bool)

(declare-fun tp!2153305 () Bool)

(assert (=> b!7444116 (= e!4444865 (and tp!2153307 tp!2153305))))

(assert (=> b!7442996 (= tp!2152147 e!4444865)))

(declare-fun b!7444117 () Bool)

(declare-fun tp!2153303 () Bool)

(assert (=> b!7444117 (= e!4444865 tp!2153303)))

(declare-fun b!7444115 () Bool)

(assert (=> b!7444115 (= e!4444865 tp_is_empty!49181)))

(declare-fun b!7444118 () Bool)

(declare-fun tp!2153306 () Bool)

(declare-fun tp!2153304 () Bool)

(assert (=> b!7444118 (= e!4444865 (and tp!2153306 tp!2153304))))

(assert (= (and b!7442996 ((_ is ElementMatch!19461) (regOne!39435 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7444115))

(assert (= (and b!7442996 ((_ is Concat!28306) (regOne!39435 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7444116))

(assert (= (and b!7442996 ((_ is Star!19461) (regOne!39435 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7444117))

(assert (= (and b!7442996 ((_ is Union!19461) (regOne!39435 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7444118))

(declare-fun b!7444120 () Bool)

(declare-fun e!4444866 () Bool)

(declare-fun tp!2153312 () Bool)

(declare-fun tp!2153310 () Bool)

(assert (=> b!7444120 (= e!4444866 (and tp!2153312 tp!2153310))))

(assert (=> b!7442996 (= tp!2152145 e!4444866)))

(declare-fun b!7444121 () Bool)

(declare-fun tp!2153308 () Bool)

(assert (=> b!7444121 (= e!4444866 tp!2153308)))

(declare-fun b!7444119 () Bool)

(assert (=> b!7444119 (= e!4444866 tp_is_empty!49181)))

(declare-fun b!7444122 () Bool)

(declare-fun tp!2153311 () Bool)

(declare-fun tp!2153309 () Bool)

(assert (=> b!7444122 (= e!4444866 (and tp!2153311 tp!2153309))))

(assert (= (and b!7442996 ((_ is ElementMatch!19461) (regTwo!39435 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7444119))

(assert (= (and b!7442996 ((_ is Concat!28306) (regTwo!39435 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7444120))

(assert (= (and b!7442996 ((_ is Star!19461) (regTwo!39435 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7444121))

(assert (= (and b!7442996 ((_ is Union!19461) (regTwo!39435 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7444122))

(declare-fun b!7444124 () Bool)

(declare-fun e!4444867 () Bool)

(declare-fun tp!2153317 () Bool)

(declare-fun tp!2153315 () Bool)

(assert (=> b!7444124 (= e!4444867 (and tp!2153317 tp!2153315))))

(assert (=> b!7443014 (= tp!2152166 e!4444867)))

(declare-fun b!7444125 () Bool)

(declare-fun tp!2153313 () Bool)

(assert (=> b!7444125 (= e!4444867 tp!2153313)))

(declare-fun b!7444123 () Bool)

(assert (=> b!7444123 (= e!4444867 tp_is_empty!49181)))

(declare-fun b!7444126 () Bool)

(declare-fun tp!2153316 () Bool)

(declare-fun tp!2153314 () Bool)

(assert (=> b!7444126 (= e!4444867 (and tp!2153316 tp!2153314))))

(assert (= (and b!7443014 ((_ is ElementMatch!19461) (reg!19790 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444123))

(assert (= (and b!7443014 ((_ is Concat!28306) (reg!19790 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444124))

(assert (= (and b!7443014 ((_ is Star!19461) (reg!19790 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444125))

(assert (= (and b!7443014 ((_ is Union!19461) (reg!19790 (reg!19790 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444126))

(declare-fun b!7444135 () Bool)

(declare-fun e!4444874 () Bool)

(declare-fun tp!2153322 () Bool)

(declare-fun tp!2153320 () Bool)

(assert (=> b!7444135 (= e!4444874 (and tp!2153322 tp!2153320))))

(assert (=> b!7443076 (= tp!2152247 e!4444874)))

(declare-fun b!7444136 () Bool)

(declare-fun tp!2153318 () Bool)

(assert (=> b!7444136 (= e!4444874 tp!2153318)))

(declare-fun b!7444134 () Bool)

(assert (=> b!7444134 (= e!4444874 tp_is_empty!49181)))

(declare-fun b!7444137 () Bool)

(declare-fun tp!2153321 () Bool)

(declare-fun tp!2153319 () Bool)

(assert (=> b!7444137 (= e!4444874 (and tp!2153321 tp!2153319))))

(assert (= (and b!7443076 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444134))

(assert (= (and b!7443076 ((_ is Concat!28306) (regOne!39434 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444135))

(assert (= (and b!7443076 ((_ is Star!19461) (regOne!39434 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444136))

(assert (= (and b!7443076 ((_ is Union!19461) (regOne!39434 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444137))

(declare-fun b!7444139 () Bool)

(declare-fun e!4444875 () Bool)

(declare-fun tp!2153327 () Bool)

(declare-fun tp!2153325 () Bool)

(assert (=> b!7444139 (= e!4444875 (and tp!2153327 tp!2153325))))

(assert (=> b!7443076 (= tp!2152245 e!4444875)))

(declare-fun b!7444140 () Bool)

(declare-fun tp!2153323 () Bool)

(assert (=> b!7444140 (= e!4444875 tp!2153323)))

(declare-fun b!7444138 () Bool)

(assert (=> b!7444138 (= e!4444875 tp_is_empty!49181)))

(declare-fun b!7444141 () Bool)

(declare-fun tp!2153326 () Bool)

(declare-fun tp!2153324 () Bool)

(assert (=> b!7444141 (= e!4444875 (and tp!2153326 tp!2153324))))

(assert (= (and b!7443076 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444138))

(assert (= (and b!7443076 ((_ is Concat!28306) (regTwo!39434 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444139))

(assert (= (and b!7443076 ((_ is Star!19461) (regTwo!39434 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444140))

(assert (= (and b!7443076 ((_ is Union!19461) (regTwo!39434 (regTwo!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444141))

(declare-fun b!7444143 () Bool)

(declare-fun e!4444876 () Bool)

(declare-fun tp!2153332 () Bool)

(declare-fun tp!2153330 () Bool)

(assert (=> b!7444143 (= e!4444876 (and tp!2153332 tp!2153330))))

(assert (=> b!7443098 (= tp!2152268 e!4444876)))

(declare-fun b!7444144 () Bool)

(declare-fun tp!2153328 () Bool)

(assert (=> b!7444144 (= e!4444876 tp!2153328)))

(declare-fun b!7444142 () Bool)

(assert (=> b!7444142 (= e!4444876 tp_is_empty!49181)))

(declare-fun b!7444145 () Bool)

(declare-fun tp!2153331 () Bool)

(declare-fun tp!2153329 () Bool)

(assert (=> b!7444145 (= e!4444876 (and tp!2153331 tp!2153329))))

(assert (= (and b!7443098 ((_ is ElementMatch!19461) (reg!19790 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444142))

(assert (= (and b!7443098 ((_ is Concat!28306) (reg!19790 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444143))

(assert (= (and b!7443098 ((_ is Star!19461) (reg!19790 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444144))

(assert (= (and b!7443098 ((_ is Union!19461) (reg!19790 (regOne!39434 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444145))

(declare-fun b!7444147 () Bool)

(declare-fun e!4444877 () Bool)

(declare-fun tp!2153337 () Bool)

(declare-fun tp!2153335 () Bool)

(assert (=> b!7444147 (= e!4444877 (and tp!2153337 tp!2153335))))

(assert (=> b!7443007 (= tp!2152165 e!4444877)))

(declare-fun b!7444148 () Bool)

(declare-fun tp!2153333 () Bool)

(assert (=> b!7444148 (= e!4444877 tp!2153333)))

(declare-fun b!7444146 () Bool)

(assert (=> b!7444146 (= e!4444877 tp_is_empty!49181)))

(declare-fun b!7444149 () Bool)

(declare-fun tp!2153336 () Bool)

(declare-fun tp!2153334 () Bool)

(assert (=> b!7444149 (= e!4444877 (and tp!2153336 tp!2153334))))

(assert (= (and b!7443007 ((_ is ElementMatch!19461) (regOne!39434 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444146))

(assert (= (and b!7443007 ((_ is Concat!28306) (regOne!39434 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444147))

(assert (= (and b!7443007 ((_ is Star!19461) (regOne!39434 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444148))

(assert (= (and b!7443007 ((_ is Union!19461) (regOne!39434 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444149))

(declare-fun b!7444151 () Bool)

(declare-fun e!4444878 () Bool)

(declare-fun tp!2153342 () Bool)

(declare-fun tp!2153340 () Bool)

(assert (=> b!7444151 (= e!4444878 (and tp!2153342 tp!2153340))))

(assert (=> b!7443007 (= tp!2152163 e!4444878)))

(declare-fun b!7444152 () Bool)

(declare-fun tp!2153338 () Bool)

(assert (=> b!7444152 (= e!4444878 tp!2153338)))

(declare-fun b!7444150 () Bool)

(assert (=> b!7444150 (= e!4444878 tp_is_empty!49181)))

(declare-fun b!7444153 () Bool)

(declare-fun tp!2153341 () Bool)

(declare-fun tp!2153339 () Bool)

(assert (=> b!7444153 (= e!4444878 (and tp!2153341 tp!2153339))))

(assert (= (and b!7443007 ((_ is ElementMatch!19461) (regTwo!39434 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444150))

(assert (= (and b!7443007 ((_ is Concat!28306) (regTwo!39434 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444151))

(assert (= (and b!7443007 ((_ is Star!19461) (regTwo!39434 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444152))

(assert (= (and b!7443007 ((_ is Union!19461) (regTwo!39434 (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444153))

(declare-fun b!7444155 () Bool)

(declare-fun e!4444879 () Bool)

(declare-fun tp!2153347 () Bool)

(declare-fun tp!2153345 () Bool)

(assert (=> b!7444155 (= e!4444879 (and tp!2153347 tp!2153345))))

(assert (=> b!7442999 (= tp!2152155 e!4444879)))

(declare-fun b!7444156 () Bool)

(declare-fun tp!2153343 () Bool)

(assert (=> b!7444156 (= e!4444879 tp!2153343)))

(declare-fun b!7444154 () Bool)

(assert (=> b!7444154 (= e!4444879 tp_is_empty!49181)))

(declare-fun b!7444157 () Bool)

(declare-fun tp!2153346 () Bool)

(declare-fun tp!2153344 () Bool)

(assert (=> b!7444157 (= e!4444879 (and tp!2153346 tp!2153344))))

(assert (= (and b!7442999 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444154))

(assert (= (and b!7442999 ((_ is Concat!28306) (regOne!39434 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444155))

(assert (= (and b!7442999 ((_ is Star!19461) (regOne!39434 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444156))

(assert (= (and b!7442999 ((_ is Union!19461) (regOne!39434 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444157))

(declare-fun b!7444159 () Bool)

(declare-fun e!4444880 () Bool)

(declare-fun tp!2153352 () Bool)

(declare-fun tp!2153350 () Bool)

(assert (=> b!7444159 (= e!4444880 (and tp!2153352 tp!2153350))))

(assert (=> b!7442999 (= tp!2152153 e!4444880)))

(declare-fun b!7444160 () Bool)

(declare-fun tp!2153348 () Bool)

(assert (=> b!7444160 (= e!4444880 tp!2153348)))

(declare-fun b!7444158 () Bool)

(assert (=> b!7444158 (= e!4444880 tp_is_empty!49181)))

(declare-fun b!7444161 () Bool)

(declare-fun tp!2153351 () Bool)

(declare-fun tp!2153349 () Bool)

(assert (=> b!7444161 (= e!4444880 (and tp!2153351 tp!2153349))))

(assert (= (and b!7442999 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444158))

(assert (= (and b!7442999 ((_ is Concat!28306) (regTwo!39434 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444159))

(assert (= (and b!7442999 ((_ is Star!19461) (regTwo!39434 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444160))

(assert (= (and b!7442999 ((_ is Union!19461) (regTwo!39434 (regOne!39434 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444161))

(declare-fun b!7444163 () Bool)

(declare-fun e!4444881 () Bool)

(declare-fun tp!2153357 () Bool)

(declare-fun tp!2153355 () Bool)

(assert (=> b!7444163 (= e!4444881 (and tp!2153357 tp!2153355))))

(assert (=> b!7443055 (= tp!2152219 e!4444881)))

(declare-fun b!7444164 () Bool)

(declare-fun tp!2153353 () Bool)

(assert (=> b!7444164 (= e!4444881 tp!2153353)))

(declare-fun b!7444162 () Bool)

(assert (=> b!7444162 (= e!4444881 tp_is_empty!49181)))

(declare-fun b!7444165 () Bool)

(declare-fun tp!2153356 () Bool)

(declare-fun tp!2153354 () Bool)

(assert (=> b!7444165 (= e!4444881 (and tp!2153356 tp!2153354))))

(assert (= (and b!7443055 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444162))

(assert (= (and b!7443055 ((_ is Concat!28306) (regOne!39435 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444163))

(assert (= (and b!7443055 ((_ is Star!19461) (regOne!39435 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444164))

(assert (= (and b!7443055 ((_ is Union!19461) (regOne!39435 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444165))

(declare-fun b!7444168 () Bool)

(declare-fun e!4444888 () Bool)

(declare-fun tp!2153362 () Bool)

(declare-fun tp!2153360 () Bool)

(assert (=> b!7444168 (= e!4444888 (and tp!2153362 tp!2153360))))

(assert (=> b!7443055 (= tp!2152217 e!4444888)))

(declare-fun b!7444170 () Bool)

(declare-fun tp!2153358 () Bool)

(assert (=> b!7444170 (= e!4444888 tp!2153358)))

(declare-fun b!7444166 () Bool)

(assert (=> b!7444166 (= e!4444888 tp_is_empty!49181)))

(declare-fun b!7444172 () Bool)

(declare-fun tp!2153361 () Bool)

(declare-fun tp!2153359 () Bool)

(assert (=> b!7444172 (= e!4444888 (and tp!2153361 tp!2153359))))

(assert (= (and b!7443055 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444166))

(assert (= (and b!7443055 ((_ is Concat!28306) (regTwo!39435 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444168))

(assert (= (and b!7443055 ((_ is Star!19461) (regTwo!39435 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444170))

(assert (= (and b!7443055 ((_ is Union!19461) (regTwo!39435 (regOne!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444172))

(declare-fun b!7444180 () Bool)

(declare-fun e!4444890 () Bool)

(declare-fun tp!2153367 () Bool)

(declare-fun tp!2153365 () Bool)

(assert (=> b!7444180 (= e!4444890 (and tp!2153367 tp!2153365))))

(assert (=> b!7443046 (= tp!2152206 e!4444890)))

(declare-fun b!7444181 () Bool)

(declare-fun tp!2153363 () Bool)

(assert (=> b!7444181 (= e!4444890 tp!2153363)))

(declare-fun b!7444179 () Bool)

(assert (=> b!7444179 (= e!4444890 tp_is_empty!49181)))

(declare-fun b!7444182 () Bool)

(declare-fun tp!2153366 () Bool)

(declare-fun tp!2153364 () Bool)

(assert (=> b!7444182 (= e!4444890 (and tp!2153366 tp!2153364))))

(assert (= (and b!7443046 ((_ is ElementMatch!19461) (reg!19790 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444179))

(assert (= (and b!7443046 ((_ is Concat!28306) (reg!19790 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444180))

(assert (= (and b!7443046 ((_ is Star!19461) (reg!19790 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444181))

(assert (= (and b!7443046 ((_ is Union!19461) (reg!19790 (regOne!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444182))

(declare-fun b!7444184 () Bool)

(declare-fun e!4444891 () Bool)

(declare-fun tp!2153372 () Bool)

(declare-fun tp!2153370 () Bool)

(assert (=> b!7444184 (= e!4444891 (and tp!2153372 tp!2153370))))

(assert (=> b!7442983 (= tp!2152130 e!4444891)))

(declare-fun b!7444185 () Bool)

(declare-fun tp!2153368 () Bool)

(assert (=> b!7444185 (= e!4444891 tp!2153368)))

(declare-fun b!7444183 () Bool)

(assert (=> b!7444183 (= e!4444891 tp_is_empty!49181)))

(declare-fun b!7444186 () Bool)

(declare-fun tp!2153371 () Bool)

(declare-fun tp!2153369 () Bool)

(assert (=> b!7444186 (= e!4444891 (and tp!2153371 tp!2153369))))

(assert (= (and b!7442983 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444183))

(assert (= (and b!7442983 ((_ is Concat!28306) (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444184))

(assert (= (and b!7442983 ((_ is Star!19461) (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444185))

(assert (= (and b!7442983 ((_ is Union!19461) (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444186))

(declare-fun b!7444188 () Bool)

(declare-fun e!4444892 () Bool)

(declare-fun tp!2153377 () Bool)

(declare-fun tp!2153375 () Bool)

(assert (=> b!7444188 (= e!4444892 (and tp!2153377 tp!2153375))))

(assert (=> b!7442983 (= tp!2152128 e!4444892)))

(declare-fun b!7444189 () Bool)

(declare-fun tp!2153373 () Bool)

(assert (=> b!7444189 (= e!4444892 tp!2153373)))

(declare-fun b!7444187 () Bool)

(assert (=> b!7444187 (= e!4444892 tp_is_empty!49181)))

(declare-fun b!7444190 () Bool)

(declare-fun tp!2153376 () Bool)

(declare-fun tp!2153374 () Bool)

(assert (=> b!7444190 (= e!4444892 (and tp!2153376 tp!2153374))))

(assert (= (and b!7442983 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444187))

(assert (= (and b!7442983 ((_ is Concat!28306) (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444188))

(assert (= (and b!7442983 ((_ is Star!19461) (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444189))

(assert (= (and b!7442983 ((_ is Union!19461) (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444190))

(declare-fun b!7444192 () Bool)

(declare-fun e!4444893 () Bool)

(declare-fun tp!2153382 () Bool)

(declare-fun tp!2153380 () Bool)

(assert (=> b!7444192 (= e!4444893 (and tp!2153382 tp!2153380))))

(assert (=> b!7443037 (= tp!2152200 e!4444893)))

(declare-fun b!7444193 () Bool)

(declare-fun tp!2153378 () Bool)

(assert (=> b!7444193 (= e!4444893 tp!2153378)))

(declare-fun b!7444191 () Bool)

(assert (=> b!7444191 (= e!4444893 tp_is_empty!49181)))

(declare-fun b!7444194 () Bool)

(declare-fun tp!2153381 () Bool)

(declare-fun tp!2153379 () Bool)

(assert (=> b!7444194 (= e!4444893 (and tp!2153381 tp!2153379))))

(assert (= (and b!7443037 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444191))

(assert (= (and b!7443037 ((_ is Concat!28306) (regOne!39434 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444192))

(assert (= (and b!7443037 ((_ is Star!19461) (regOne!39434 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444193))

(assert (= (and b!7443037 ((_ is Union!19461) (regOne!39434 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444194))

(declare-fun b!7444196 () Bool)

(declare-fun e!4444894 () Bool)

(declare-fun tp!2153387 () Bool)

(declare-fun tp!2153385 () Bool)

(assert (=> b!7444196 (= e!4444894 (and tp!2153387 tp!2153385))))

(assert (=> b!7443037 (= tp!2152198 e!4444894)))

(declare-fun b!7444197 () Bool)

(declare-fun tp!2153383 () Bool)

(assert (=> b!7444197 (= e!4444894 tp!2153383)))

(declare-fun b!7444195 () Bool)

(assert (=> b!7444195 (= e!4444894 tp_is_empty!49181)))

(declare-fun b!7444198 () Bool)

(declare-fun tp!2153386 () Bool)

(declare-fun tp!2153384 () Bool)

(assert (=> b!7444198 (= e!4444894 (and tp!2153386 tp!2153384))))

(assert (= (and b!7443037 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444195))

(assert (= (and b!7443037 ((_ is Concat!28306) (regTwo!39434 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444196))

(assert (= (and b!7443037 ((_ is Star!19461) (regTwo!39434 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444197))

(assert (= (and b!7443037 ((_ is Union!19461) (regTwo!39434 (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444198))

(declare-fun b!7444200 () Bool)

(declare-fun e!4444895 () Bool)

(declare-fun tp!2153392 () Bool)

(declare-fun tp!2153390 () Bool)

(assert (=> b!7444200 (= e!4444895 (and tp!2153392 tp!2153390))))

(assert (=> b!7443132 (= tp!2152312 e!4444895)))

(declare-fun b!7444201 () Bool)

(declare-fun tp!2153388 () Bool)

(assert (=> b!7444201 (= e!4444895 tp!2153388)))

(declare-fun b!7444199 () Bool)

(assert (=> b!7444199 (= e!4444895 tp_is_empty!49181)))

(declare-fun b!7444202 () Bool)

(declare-fun tp!2153391 () Bool)

(declare-fun tp!2153389 () Bool)

(assert (=> b!7444202 (= e!4444895 (and tp!2153391 tp!2153389))))

(assert (= (and b!7443132 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444199))

(assert (= (and b!7443132 ((_ is Concat!28306) (reg!19790 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444200))

(assert (= (and b!7443132 ((_ is Star!19461) (reg!19790 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444201))

(assert (= (and b!7443132 ((_ is Union!19461) (reg!19790 (regTwo!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444202))

(declare-fun b!7444204 () Bool)

(declare-fun e!4444896 () Bool)

(declare-fun tp!2153397 () Bool)

(declare-fun tp!2153395 () Bool)

(assert (=> b!7444204 (= e!4444896 (and tp!2153397 tp!2153395))))

(assert (=> b!7443068 (= tp!2152236 e!4444896)))

(declare-fun b!7444205 () Bool)

(declare-fun tp!2153393 () Bool)

(assert (=> b!7444205 (= e!4444896 tp!2153393)))

(declare-fun b!7444203 () Bool)

(assert (=> b!7444203 (= e!4444896 tp_is_empty!49181)))

(declare-fun b!7444206 () Bool)

(declare-fun tp!2153396 () Bool)

(declare-fun tp!2153394 () Bool)

(assert (=> b!7444206 (= e!4444896 (and tp!2153396 tp!2153394))))

(assert (= (and b!7443068 ((_ is ElementMatch!19461) (regOne!39435 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444203))

(assert (= (and b!7443068 ((_ is Concat!28306) (regOne!39435 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444204))

(assert (= (and b!7443068 ((_ is Star!19461) (regOne!39435 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444205))

(assert (= (and b!7443068 ((_ is Union!19461) (regOne!39435 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444206))

(declare-fun b!7444208 () Bool)

(declare-fun e!4444897 () Bool)

(declare-fun tp!2153402 () Bool)

(declare-fun tp!2153400 () Bool)

(assert (=> b!7444208 (= e!4444897 (and tp!2153402 tp!2153400))))

(assert (=> b!7443068 (= tp!2152234 e!4444897)))

(declare-fun b!7444209 () Bool)

(declare-fun tp!2153398 () Bool)

(assert (=> b!7444209 (= e!4444897 tp!2153398)))

(declare-fun b!7444207 () Bool)

(assert (=> b!7444207 (= e!4444897 tp_is_empty!49181)))

(declare-fun b!7444210 () Bool)

(declare-fun tp!2153401 () Bool)

(declare-fun tp!2153399 () Bool)

(assert (=> b!7444210 (= e!4444897 (and tp!2153401 tp!2153399))))

(assert (= (and b!7443068 ((_ is ElementMatch!19461) (regTwo!39435 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444207))

(assert (= (and b!7443068 ((_ is Concat!28306) (regTwo!39435 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444208))

(assert (= (and b!7443068 ((_ is Star!19461) (regTwo!39435 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444209))

(assert (= (and b!7443068 ((_ is Union!19461) (regTwo!39435 (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444210))

(declare-fun b!7444212 () Bool)

(declare-fun e!4444898 () Bool)

(declare-fun tp!2153407 () Bool)

(declare-fun tp!2153405 () Bool)

(assert (=> b!7444212 (= e!4444898 (and tp!2153407 tp!2153405))))

(assert (=> b!7442974 (= tp!2152117 e!4444898)))

(declare-fun b!7444213 () Bool)

(declare-fun tp!2153403 () Bool)

(assert (=> b!7444213 (= e!4444898 tp!2153403)))

(declare-fun b!7444211 () Bool)

(assert (=> b!7444211 (= e!4444898 tp_is_empty!49181)))

(declare-fun b!7444214 () Bool)

(declare-fun tp!2153406 () Bool)

(declare-fun tp!2153404 () Bool)

(assert (=> b!7444214 (= e!4444898 (and tp!2153406 tp!2153404))))

(assert (= (and b!7442974 ((_ is ElementMatch!19461) (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7444211))

(assert (= (and b!7442974 ((_ is Concat!28306) (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7444212))

(assert (= (and b!7442974 ((_ is Star!19461) (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7444213))

(assert (= (and b!7442974 ((_ is Union!19461) (reg!19790 (reg!19790 (h!78472 (exprs!8901 setElem!56633)))))) b!7444214))

(declare-fun b!7444216 () Bool)

(declare-fun e!4444899 () Bool)

(declare-fun tp!2153412 () Bool)

(declare-fun tp!2153410 () Bool)

(assert (=> b!7444216 (= e!4444899 (and tp!2153412 tp!2153410))))

(assert (=> b!7443123 (= tp!2152306 e!4444899)))

(declare-fun b!7444217 () Bool)

(declare-fun tp!2153408 () Bool)

(assert (=> b!7444217 (= e!4444899 tp!2153408)))

(declare-fun b!7444215 () Bool)

(assert (=> b!7444215 (= e!4444899 tp_is_empty!49181)))

(declare-fun b!7444218 () Bool)

(declare-fun tp!2153411 () Bool)

(declare-fun tp!2153409 () Bool)

(assert (=> b!7444218 (= e!4444899 (and tp!2153411 tp!2153409))))

(assert (= (and b!7443123 ((_ is ElementMatch!19461) (regOne!39434 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444215))

(assert (= (and b!7443123 ((_ is Concat!28306) (regOne!39434 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444216))

(assert (= (and b!7443123 ((_ is Star!19461) (regOne!39434 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444217))

(assert (= (and b!7443123 ((_ is Union!19461) (regOne!39434 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444218))

(declare-fun b!7444220 () Bool)

(declare-fun e!4444900 () Bool)

(declare-fun tp!2153417 () Bool)

(declare-fun tp!2153415 () Bool)

(assert (=> b!7444220 (= e!4444900 (and tp!2153417 tp!2153415))))

(assert (=> b!7443123 (= tp!2152304 e!4444900)))

(declare-fun b!7444221 () Bool)

(declare-fun tp!2153413 () Bool)

(assert (=> b!7444221 (= e!4444900 tp!2153413)))

(declare-fun b!7444219 () Bool)

(assert (=> b!7444219 (= e!4444900 tp_is_empty!49181)))

(declare-fun b!7444222 () Bool)

(declare-fun tp!2153416 () Bool)

(declare-fun tp!2153414 () Bool)

(assert (=> b!7444222 (= e!4444900 (and tp!2153416 tp!2153414))))

(assert (= (and b!7443123 ((_ is ElementMatch!19461) (regTwo!39434 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444219))

(assert (= (and b!7443123 ((_ is Concat!28306) (regTwo!39434 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444220))

(assert (= (and b!7443123 ((_ is Star!19461) (regTwo!39434 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444221))

(assert (= (and b!7443123 ((_ is Union!19461) (regTwo!39434 (regOne!39435 (regTwo!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444222))

(declare-fun b!7444224 () Bool)

(declare-fun e!4444902 () Bool)

(declare-fun tp!2153422 () Bool)

(declare-fun tp!2153420 () Bool)

(assert (=> b!7444224 (= e!4444902 (and tp!2153422 tp!2153420))))

(assert (=> b!7443035 (= tp!2152194 e!4444902)))

(declare-fun b!7444225 () Bool)

(declare-fun tp!2153418 () Bool)

(assert (=> b!7444225 (= e!4444902 tp!2153418)))

(declare-fun b!7444223 () Bool)

(assert (=> b!7444223 (= e!4444902 tp_is_empty!49181)))

(declare-fun b!7444226 () Bool)

(declare-fun tp!2153421 () Bool)

(declare-fun tp!2153419 () Bool)

(assert (=> b!7444226 (= e!4444902 (and tp!2153421 tp!2153419))))

(assert (= (and b!7443035 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444223))

(assert (= (and b!7443035 ((_ is Concat!28306) (regOne!39435 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444224))

(assert (= (and b!7443035 ((_ is Star!19461) (regOne!39435 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444225))

(assert (= (and b!7443035 ((_ is Union!19461) (regOne!39435 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444226))

(declare-fun b!7444237 () Bool)

(declare-fun e!4444909 () Bool)

(declare-fun tp!2153427 () Bool)

(declare-fun tp!2153425 () Bool)

(assert (=> b!7444237 (= e!4444909 (and tp!2153427 tp!2153425))))

(assert (=> b!7443035 (= tp!2152192 e!4444909)))

(declare-fun b!7444238 () Bool)

(declare-fun tp!2153423 () Bool)

(assert (=> b!7444238 (= e!4444909 tp!2153423)))

(declare-fun b!7444236 () Bool)

(assert (=> b!7444236 (= e!4444909 tp_is_empty!49181)))

(declare-fun b!7444239 () Bool)

(declare-fun tp!2153426 () Bool)

(declare-fun tp!2153424 () Bool)

(assert (=> b!7444239 (= e!4444909 (and tp!2153426 tp!2153424))))

(assert (= (and b!7443035 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444236))

(assert (= (and b!7443035 ((_ is Concat!28306) (regTwo!39435 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444237))

(assert (= (and b!7443035 ((_ is Star!19461) (regTwo!39435 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444238))

(assert (= (and b!7443035 ((_ is Union!19461) (regTwo!39435 (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444239))

(declare-fun b!7444241 () Bool)

(declare-fun e!4444910 () Bool)

(declare-fun tp!2153432 () Bool)

(declare-fun tp!2153430 () Bool)

(assert (=> b!7444241 (= e!4444910 (and tp!2153432 tp!2153430))))

(assert (=> b!7443026 (= tp!2152181 e!4444910)))

(declare-fun b!7444242 () Bool)

(declare-fun tp!2153428 () Bool)

(assert (=> b!7444242 (= e!4444910 tp!2153428)))

(declare-fun b!7444240 () Bool)

(assert (=> b!7444240 (= e!4444910 tp_is_empty!49181)))

(declare-fun b!7444243 () Bool)

(declare-fun tp!2153431 () Bool)

(declare-fun tp!2153429 () Bool)

(assert (=> b!7444243 (= e!4444910 (and tp!2153431 tp!2153429))))

(assert (= (and b!7443026 ((_ is ElementMatch!19461) (reg!19790 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444240))

(assert (= (and b!7443026 ((_ is Concat!28306) (reg!19790 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444241))

(assert (= (and b!7443026 ((_ is Star!19461) (reg!19790 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444242))

(assert (= (and b!7443026 ((_ is Union!19461) (reg!19790 (regOne!39434 (regOne!39434 (h!78472 (exprs!8901 setElem!56627))))))) b!7444243))

(declare-fun b!7444245 () Bool)

(declare-fun e!4444911 () Bool)

(declare-fun tp!2153437 () Bool)

(declare-fun tp!2153435 () Bool)

(assert (=> b!7444245 (= e!4444911 (and tp!2153437 tp!2153435))))

(assert (=> b!7443091 (= tp!2152261 e!4444911)))

(declare-fun b!7444246 () Bool)

(declare-fun tp!2153433 () Bool)

(assert (=> b!7444246 (= e!4444911 tp!2153433)))

(declare-fun b!7444244 () Bool)

(assert (=> b!7444244 (= e!4444911 tp_is_empty!49181)))

(declare-fun b!7444247 () Bool)

(declare-fun tp!2153436 () Bool)

(declare-fun tp!2153434 () Bool)

(assert (=> b!7444247 (= e!4444911 (and tp!2153436 tp!2153434))))

(assert (= (and b!7443091 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444244))

(assert (= (and b!7443091 ((_ is Concat!28306) (regOne!39435 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444245))

(assert (= (and b!7443091 ((_ is Star!19461) (regOne!39435 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444246))

(assert (= (and b!7443091 ((_ is Union!19461) (regOne!39435 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444247))

(declare-fun b!7444249 () Bool)

(declare-fun e!4444912 () Bool)

(declare-fun tp!2153442 () Bool)

(declare-fun tp!2153440 () Bool)

(assert (=> b!7444249 (= e!4444912 (and tp!2153442 tp!2153440))))

(assert (=> b!7443091 (= tp!2152259 e!4444912)))

(declare-fun b!7444250 () Bool)

(declare-fun tp!2153438 () Bool)

(assert (=> b!7444250 (= e!4444912 tp!2153438)))

(declare-fun b!7444248 () Bool)

(assert (=> b!7444248 (= e!4444912 tp_is_empty!49181)))

(declare-fun b!7444251 () Bool)

(declare-fun tp!2153441 () Bool)

(declare-fun tp!2153439 () Bool)

(assert (=> b!7444251 (= e!4444912 (and tp!2153441 tp!2153439))))

(assert (= (and b!7443091 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444248))

(assert (= (and b!7443091 ((_ is Concat!28306) (regTwo!39435 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444249))

(assert (= (and b!7443091 ((_ is Star!19461) (regTwo!39435 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444250))

(assert (= (and b!7443091 ((_ is Union!19461) (regTwo!39435 (regOne!39435 (regTwo!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444251))

(declare-fun b!7444253 () Bool)

(declare-fun e!4444913 () Bool)

(declare-fun tp!2153447 () Bool)

(declare-fun tp!2153445 () Bool)

(assert (=> b!7444253 (= e!4444913 (and tp!2153447 tp!2153445))))

(assert (=> b!7442969 (= tp!2152115 e!4444913)))

(declare-fun b!7444254 () Bool)

(declare-fun tp!2153443 () Bool)

(assert (=> b!7444254 (= e!4444913 tp!2153443)))

(declare-fun b!7444252 () Bool)

(assert (=> b!7444252 (= e!4444913 tp_is_empty!49181)))

(declare-fun b!7444255 () Bool)

(declare-fun tp!2153446 () Bool)

(declare-fun tp!2153444 () Bool)

(assert (=> b!7444255 (= e!4444913 (and tp!2153446 tp!2153444))))

(assert (= (and b!7442969 ((_ is ElementMatch!19461) (regOne!39435 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444252))

(assert (= (and b!7442969 ((_ is Concat!28306) (regOne!39435 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444253))

(assert (= (and b!7442969 ((_ is Star!19461) (regOne!39435 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444254))

(assert (= (and b!7442969 ((_ is Union!19461) (regOne!39435 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444255))

(declare-fun b!7444257 () Bool)

(declare-fun e!4444914 () Bool)

(declare-fun tp!2153452 () Bool)

(declare-fun tp!2153450 () Bool)

(assert (=> b!7444257 (= e!4444914 (and tp!2153452 tp!2153450))))

(assert (=> b!7442969 (= tp!2152113 e!4444914)))

(declare-fun b!7444258 () Bool)

(declare-fun tp!2153448 () Bool)

(assert (=> b!7444258 (= e!4444914 tp!2153448)))

(declare-fun b!7444256 () Bool)

(assert (=> b!7444256 (= e!4444914 tp_is_empty!49181)))

(declare-fun b!7444259 () Bool)

(declare-fun tp!2153451 () Bool)

(declare-fun tp!2153449 () Bool)

(assert (=> b!7444259 (= e!4444914 (and tp!2153451 tp!2153449))))

(assert (= (and b!7442969 ((_ is ElementMatch!19461) (regTwo!39435 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444256))

(assert (= (and b!7442969 ((_ is Concat!28306) (regTwo!39435 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444257))

(assert (= (and b!7442969 ((_ is Star!19461) (regTwo!39435 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444258))

(assert (= (and b!7442969 ((_ is Union!19461) (regTwo!39435 (regTwo!39435 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444259))

(declare-fun b!7444261 () Bool)

(declare-fun e!4444915 () Bool)

(declare-fun tp!2153457 () Bool)

(declare-fun tp!2153455 () Bool)

(assert (=> b!7444261 (= e!4444915 (and tp!2153457 tp!2153455))))

(assert (=> b!7442986 (= tp!2152132 e!4444915)))

(declare-fun b!7444262 () Bool)

(declare-fun tp!2153453 () Bool)

(assert (=> b!7444262 (= e!4444915 tp!2153453)))

(declare-fun b!7444260 () Bool)

(assert (=> b!7444260 (= e!4444915 tp_is_empty!49181)))

(declare-fun b!7444263 () Bool)

(declare-fun tp!2153456 () Bool)

(declare-fun tp!2153454 () Bool)

(assert (=> b!7444263 (= e!4444915 (and tp!2153456 tp!2153454))))

(assert (= (and b!7442986 ((_ is ElementMatch!19461) (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444260))

(assert (= (and b!7442986 ((_ is Concat!28306) (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444261))

(assert (= (and b!7442986 ((_ is Star!19461) (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444262))

(assert (= (and b!7442986 ((_ is Union!19461) (reg!19790 (regOne!39435 (h!78472 (exprs!8901 setElem!56633)))))) b!7444263))

(declare-fun b!7444265 () Bool)

(declare-fun e!4444916 () Bool)

(declare-fun tp!2153462 () Bool)

(declare-fun tp!2153460 () Bool)

(assert (=> b!7444265 (= e!4444916 (and tp!2153462 tp!2153460))))

(assert (=> b!7443049 (= tp!2152215 e!4444916)))

(declare-fun b!7444266 () Bool)

(declare-fun tp!2153458 () Bool)

(assert (=> b!7444266 (= e!4444916 tp!2153458)))

(declare-fun b!7444264 () Bool)

(assert (=> b!7444264 (= e!4444916 tp_is_empty!49181)))

(declare-fun b!7444267 () Bool)

(declare-fun tp!2153461 () Bool)

(declare-fun tp!2153459 () Bool)

(assert (=> b!7444267 (= e!4444916 (and tp!2153461 tp!2153459))))

(assert (= (and b!7443049 ((_ is ElementMatch!19461) (regOne!39434 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444264))

(assert (= (and b!7443049 ((_ is Concat!28306) (regOne!39434 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444265))

(assert (= (and b!7443049 ((_ is Star!19461) (regOne!39434 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444266))

(assert (= (and b!7443049 ((_ is Union!19461) (regOne!39434 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444267))

(declare-fun b!7444269 () Bool)

(declare-fun e!4444917 () Bool)

(declare-fun tp!2153467 () Bool)

(declare-fun tp!2153465 () Bool)

(assert (=> b!7444269 (= e!4444917 (and tp!2153467 tp!2153465))))

(assert (=> b!7443049 (= tp!2152213 e!4444917)))

(declare-fun b!7444270 () Bool)

(declare-fun tp!2153463 () Bool)

(assert (=> b!7444270 (= e!4444917 tp!2153463)))

(declare-fun b!7444268 () Bool)

(assert (=> b!7444268 (= e!4444917 tp_is_empty!49181)))

(declare-fun b!7444271 () Bool)

(declare-fun tp!2153466 () Bool)

(declare-fun tp!2153464 () Bool)

(assert (=> b!7444271 (= e!4444917 (and tp!2153466 tp!2153464))))

(assert (= (and b!7443049 ((_ is ElementMatch!19461) (regTwo!39434 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444268))

(assert (= (and b!7443049 ((_ is Concat!28306) (regTwo!39434 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444269))

(assert (= (and b!7443049 ((_ is Star!19461) (regTwo!39434 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444270))

(assert (= (and b!7443049 ((_ is Union!19461) (regTwo!39434 (regTwo!39434 (h!78472 (t!386713 (exprs!8901 setElem!56627))))))) b!7444271))

(declare-fun b!7444273 () Bool)

(declare-fun e!4444918 () Bool)

(declare-fun tp!2153472 () Bool)

(declare-fun tp!2153470 () Bool)

(assert (=> b!7444273 (= e!4444918 (and tp!2153472 tp!2153470))))

(assert (=> b!7442979 (= tp!2152125 e!4444918)))

(declare-fun b!7444274 () Bool)

(declare-fun tp!2153468 () Bool)

(assert (=> b!7444274 (= e!4444918 tp!2153468)))

(declare-fun b!7444272 () Bool)

(assert (=> b!7444272 (= e!4444918 tp_is_empty!49181)))

(declare-fun b!7444275 () Bool)

(declare-fun tp!2153471 () Bool)

(declare-fun tp!2153469 () Bool)

(assert (=> b!7444275 (= e!4444918 (and tp!2153471 tp!2153469))))

(assert (= (and b!7442979 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444272))

(assert (= (and b!7442979 ((_ is Concat!28306) (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444273))

(assert (= (and b!7442979 ((_ is Star!19461) (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444274))

(assert (= (and b!7442979 ((_ is Union!19461) (regOne!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444275))

(declare-fun b!7444277 () Bool)

(declare-fun e!4444919 () Bool)

(declare-fun tp!2153477 () Bool)

(declare-fun tp!2153475 () Bool)

(assert (=> b!7444277 (= e!4444919 (and tp!2153477 tp!2153475))))

(assert (=> b!7442979 (= tp!2152123 e!4444919)))

(declare-fun b!7444278 () Bool)

(declare-fun tp!2153473 () Bool)

(assert (=> b!7444278 (= e!4444919 tp!2153473)))

(declare-fun b!7444276 () Bool)

(assert (=> b!7444276 (= e!4444919 tp_is_empty!49181)))

(declare-fun b!7444279 () Bool)

(declare-fun tp!2153476 () Bool)

(declare-fun tp!2153474 () Bool)

(assert (=> b!7444279 (= e!4444919 (and tp!2153476 tp!2153474))))

(assert (= (and b!7442979 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444276))

(assert (= (and b!7442979 ((_ is Concat!28306) (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444277))

(assert (= (and b!7442979 ((_ is Star!19461) (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444278))

(assert (= (and b!7442979 ((_ is Union!19461) (regTwo!39435 (regOne!39434 (h!78472 (exprs!8901 setElem!56633)))))) b!7444279))

(declare-fun b!7444281 () Bool)

(declare-fun e!4444920 () Bool)

(declare-fun tp!2153482 () Bool)

(declare-fun tp!2153480 () Bool)

(assert (=> b!7444281 (= e!4444920 (and tp!2153482 tp!2153480))))

(assert (=> b!7443058 (= tp!2152221 e!4444920)))

(declare-fun b!7444282 () Bool)

(declare-fun tp!2153478 () Bool)

(assert (=> b!7444282 (= e!4444920 tp!2153478)))

(declare-fun b!7444280 () Bool)

(assert (=> b!7444280 (= e!4444920 tp_is_empty!49181)))

(declare-fun b!7444283 () Bool)

(declare-fun tp!2153481 () Bool)

(declare-fun tp!2153479 () Bool)

(assert (=> b!7444283 (= e!4444920 (and tp!2153481 tp!2153479))))

(assert (= (and b!7443058 ((_ is ElementMatch!19461) (reg!19790 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444280))

(assert (= (and b!7443058 ((_ is Concat!28306) (reg!19790 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444281))

(assert (= (and b!7443058 ((_ is Star!19461) (reg!19790 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444282))

(assert (= (and b!7443058 ((_ is Union!19461) (reg!19790 (regTwo!39434 (reg!19790 (h!78472 (exprs!8901 setElem!56627))))))) b!7444283))

(declare-fun b!7444285 () Bool)

(declare-fun e!4444921 () Bool)

(declare-fun tp!2153487 () Bool)

(declare-fun tp!2153485 () Bool)

(assert (=> b!7444285 (= e!4444921 (and tp!2153487 tp!2153485))))

(assert (=> b!7443019 (= tp!2152174 e!4444921)))

(declare-fun b!7444286 () Bool)

(declare-fun tp!2153483 () Bool)

(assert (=> b!7444286 (= e!4444921 tp!2153483)))

(declare-fun b!7444284 () Bool)

(assert (=> b!7444284 (= e!4444921 tp_is_empty!49181)))

(declare-fun b!7444287 () Bool)

(declare-fun tp!2153486 () Bool)

(declare-fun tp!2153484 () Bool)

(assert (=> b!7444287 (= e!4444921 (and tp!2153486 tp!2153484))))

(assert (= (and b!7443019 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444284))

(assert (= (and b!7443019 ((_ is Concat!28306) (regOne!39435 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444285))

(assert (= (and b!7443019 ((_ is Star!19461) (regOne!39435 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444286))

(assert (= (and b!7443019 ((_ is Union!19461) (regOne!39435 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444287))

(declare-fun b!7444289 () Bool)

(declare-fun e!4444922 () Bool)

(declare-fun tp!2153492 () Bool)

(declare-fun tp!2153490 () Bool)

(assert (=> b!7444289 (= e!4444922 (and tp!2153492 tp!2153490))))

(assert (=> b!7443019 (= tp!2152172 e!4444922)))

(declare-fun b!7444290 () Bool)

(declare-fun tp!2153488 () Bool)

(assert (=> b!7444290 (= e!4444922 tp!2153488)))

(declare-fun b!7444288 () Bool)

(assert (=> b!7444288 (= e!4444922 tp_is_empty!49181)))

(declare-fun b!7444291 () Bool)

(declare-fun tp!2153491 () Bool)

(declare-fun tp!2153489 () Bool)

(assert (=> b!7444291 (= e!4444922 (and tp!2153491 tp!2153489))))

(assert (= (and b!7443019 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444288))

(assert (= (and b!7443019 ((_ is Concat!28306) (regTwo!39435 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444289))

(assert (= (and b!7443019 ((_ is Star!19461) (regTwo!39435 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444290))

(assert (= (and b!7443019 ((_ is Union!19461) (regTwo!39435 (regOne!39435 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444291))

(declare-fun b!7444293 () Bool)

(declare-fun e!4444923 () Bool)

(declare-fun tp!2153497 () Bool)

(declare-fun tp!2153495 () Bool)

(assert (=> b!7444293 (= e!4444923 (and tp!2153497 tp!2153495))))

(assert (=> b!7443074 (= tp!2152241 e!4444923)))

(declare-fun b!7444294 () Bool)

(declare-fun tp!2153493 () Bool)

(assert (=> b!7444294 (= e!4444923 tp!2153493)))

(declare-fun b!7444292 () Bool)

(assert (=> b!7444292 (= e!4444923 tp_is_empty!49181)))

(declare-fun b!7444295 () Bool)

(declare-fun tp!2153496 () Bool)

(declare-fun tp!2153494 () Bool)

(assert (=> b!7444295 (= e!4444923 (and tp!2153496 tp!2153494))))

(assert (= (and b!7443074 ((_ is ElementMatch!19461) (regOne!39435 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444292))

(assert (= (and b!7443074 ((_ is Concat!28306) (regOne!39435 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444293))

(assert (= (and b!7443074 ((_ is Star!19461) (regOne!39435 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444294))

(assert (= (and b!7443074 ((_ is Union!19461) (regOne!39435 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444295))

(declare-fun b!7444297 () Bool)

(declare-fun e!4444924 () Bool)

(declare-fun tp!2153502 () Bool)

(declare-fun tp!2153500 () Bool)

(assert (=> b!7444297 (= e!4444924 (and tp!2153502 tp!2153500))))

(assert (=> b!7443074 (= tp!2152239 e!4444924)))

(declare-fun b!7444298 () Bool)

(declare-fun tp!2153498 () Bool)

(assert (=> b!7444298 (= e!4444924 tp!2153498)))

(declare-fun b!7444296 () Bool)

(assert (=> b!7444296 (= e!4444924 tp_is_empty!49181)))

(declare-fun b!7444299 () Bool)

(declare-fun tp!2153501 () Bool)

(declare-fun tp!2153499 () Bool)

(assert (=> b!7444299 (= e!4444924 (and tp!2153501 tp!2153499))))

(assert (= (and b!7443074 ((_ is ElementMatch!19461) (regTwo!39435 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444296))

(assert (= (and b!7443074 ((_ is Concat!28306) (regTwo!39435 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444297))

(assert (= (and b!7443074 ((_ is Star!19461) (regTwo!39435 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444298))

(assert (= (and b!7443074 ((_ is Union!19461) (regTwo!39435 (regOne!39434 (regOne!39435 (h!78472 (exprs!8901 setElem!56627))))))) b!7444299))

(declare-fun b!7444301 () Bool)

(declare-fun e!4444925 () Bool)

(declare-fun tp!2153507 () Bool)

(declare-fun tp!2153505 () Bool)

(assert (=> b!7444301 (= e!4444925 (and tp!2153507 tp!2153505))))

(assert (=> b!7442997 (= tp!2152149 e!4444925)))

(declare-fun b!7444302 () Bool)

(declare-fun tp!2153503 () Bool)

(assert (=> b!7444302 (= e!4444925 tp!2153503)))

(declare-fun b!7444300 () Bool)

(assert (=> b!7444300 (= e!4444925 tp_is_empty!49181)))

(declare-fun b!7444303 () Bool)

(declare-fun tp!2153506 () Bool)

(declare-fun tp!2153504 () Bool)

(assert (=> b!7444303 (= e!4444925 (and tp!2153506 tp!2153504))))

(assert (= (and b!7442997 ((_ is ElementMatch!19461) (h!78472 (t!386713 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7444300))

(assert (= (and b!7442997 ((_ is Concat!28306) (h!78472 (t!386713 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7444301))

(assert (= (and b!7442997 ((_ is Star!19461) (h!78472 (t!386713 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7444302))

(assert (= (and b!7442997 ((_ is Union!19461) (h!78472 (t!386713 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7444303))

(declare-fun b!7444304 () Bool)

(declare-fun e!4444926 () Bool)

(declare-fun tp!2153508 () Bool)

(declare-fun tp!2153509 () Bool)

(assert (=> b!7444304 (= e!4444926 (and tp!2153508 tp!2153509))))

(assert (=> b!7442997 (= tp!2152150 e!4444926)))

(assert (= (and b!7442997 ((_ is Cons!72024) (t!386713 (t!386713 (t!386713 (t!386713 (exprs!8901 setElem!56627))))))) b!7444304))

(declare-fun b_lambda!287693 () Bool)

(assert (= b_lambda!287679 (or d!2295962 b_lambda!287693)))

(declare-fun bs!1926590 () Bool)

(declare-fun d!2296176 () Bool)

(assert (= bs!1926590 (and d!2296176 d!2295962)))

(assert (=> bs!1926590 (= (dynLambda!29740 lambda!460541 (h!78475 (toList!11794 z!3488))) (not (dynLambda!29740 lambda!460528 (h!78475 (toList!11794 z!3488)))))))

(declare-fun b_lambda!287705 () Bool)

(assert (=> (not b_lambda!287705) (not bs!1926590)))

(declare-fun m!8054702 () Bool)

(assert (=> bs!1926590 m!8054702))

(assert (=> b!7443330 d!2296176))

(declare-fun b_lambda!287695 () Bool)

(assert (= b_lambda!287683 (or d!2295818 b_lambda!287695)))

(declare-fun bs!1926591 () Bool)

(declare-fun d!2296178 () Bool)

(assert (= bs!1926591 (and d!2296178 d!2295818)))

(assert (=> bs!1926591 (= (dynLambda!29737 lambda!460512 (h!78472 (t!386713 (t!386713 (t!386713 (exprs!8901 setElem!56627)))))) (validRegex!9984 (h!78472 (t!386713 (t!386713 (t!386713 (exprs!8901 setElem!56627)))))))))

(declare-fun m!8054704 () Bool)

(assert (=> bs!1926591 m!8054704))

(assert (=> b!7443369 d!2296178))

(declare-fun b_lambda!287697 () Bool)

(assert (= b_lambda!287685 (or d!2295942 b_lambda!287697)))

(declare-fun bs!1926592 () Bool)

(declare-fun d!2296180 () Bool)

(assert (= bs!1926592 (and d!2296180 d!2295942)))

(assert (=> bs!1926592 (= (dynLambda!29737 lambda!460537 (h!78472 (exprs!8901 setElem!56637))) (validRegex!9984 (h!78472 (exprs!8901 setElem!56637))))))

(declare-fun m!8054706 () Bool)

(assert (=> bs!1926592 m!8054706))

(assert (=> b!7443398 d!2296180))

(declare-fun b_lambda!287699 () Bool)

(assert (= b_lambda!287677 (or d!2295890 b_lambda!287699)))

(declare-fun bs!1926593 () Bool)

(declare-fun d!2296182 () Bool)

(assert (= bs!1926593 (and d!2296182 d!2295890)))

(assert (=> bs!1926593 (= (dynLambda!29737 lambda!460533 (h!78472 (t!386713 (exprs!8901 setElem!56635)))) (validRegex!9984 (h!78472 (t!386713 (exprs!8901 setElem!56635)))))))

(declare-fun m!8054708 () Bool)

(assert (=> bs!1926593 m!8054708))

(assert (=> b!7443305 d!2296182))

(declare-fun b_lambda!287701 () Bool)

(assert (= b_lambda!287681 (or d!2295858 b_lambda!287701)))

(declare-fun bs!1926594 () Bool)

(declare-fun d!2296184 () Bool)

(assert (= bs!1926594 (and d!2296184 d!2295858)))

(assert (=> bs!1926594 (= (dynLambda!29737 lambda!460529 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56633))))) (validRegex!9984 (h!78472 (t!386713 (t!386713 (exprs!8901 setElem!56633))))))))

(declare-fun m!8054710 () Bool)

(assert (=> bs!1926594 m!8054710))

(assert (=> b!7443367 d!2296184))

(declare-fun b_lambda!287703 () Bool)

(assert (= b_lambda!287675 (or d!2295822 b_lambda!287703)))

(declare-fun bs!1926595 () Bool)

(declare-fun d!2296186 () Bool)

(assert (= bs!1926595 (and d!2296186 d!2295822)))

(assert (=> bs!1926595 (= (dynLambda!29737 lambda!460515 (h!78472 (t!386713 (t!386713 (t!386713 (exprs!8901 lt!2619492)))))) (nullable!8483 (h!78472 (t!386713 (t!386713 (t!386713 (exprs!8901 lt!2619492)))))))))

(declare-fun m!8054712 () Bool)

(assert (=> bs!1926595 m!8054712))

(assert (=> b!7443303 d!2296186))

(check-sat (not b!7443373) (not b!7443603) (not b!7443833) (not b!7444168) (not b!7443946) (not b!7444287) (not b!7443503) (not d!2296106) (not bm!684217) (not b!7443951) (not d!2296072) (not b!7444034) (not b!7443488) (not b!7443962) (not b!7444064) (not b!7443769) (not b_lambda!287699) (not b!7443520) (not b!7443597) (not b!7444145) (not b!7443468) (not b!7443907) (not b!7443731) (not b!7443509) (not b!7443905) (not b!7443825) (not b!7444271) (not b!7443681) (not b!7444023) (not b!7443483) (not b!7443845) (not bm!684200) (not b!7444024) (not b!7443501) (not b!7443609) (not b!7444098) (not b!7443739) (not b!7444205) (not bm!684204) (not b!7443791) (not b!7444159) (not b!7443479) (not b!7444197) (not b!7444040) (not b!7444137) (not b!7444108) (not b!7443515) (not b!7444148) (not b!7444302) (not b!7444218) (not b!7443881) (not b!7443560) (not b!7443917) (not b!7444201) (not b!7443913) (not bs!1926594) (not b!7443662) (not b!7444263) (not b!7444239) (not b!7443675) (not b!7443725) (not b_lambda!287637) (not b!7443695) (not b!7444002) (not b!7444278) (not b!7444032) (not b!7443493) (not b!7444020) (not bm!684212) (not b!7443581) (not b!7443667) (not b!7443477) (not b!7443717) (not b!7443932) (not b_lambda!287701) (not b_lambda!287665) (not b!7443738) (not b!7443612) (not b!7443528) (not b!7443654) (not b!7443585) (not b!7444027) (not d!2296088) (not b!7443481) (not b!7443873) (not b!7443872) (not b!7443974) (not b!7443762) (not b!7444010) (not b!7444249) (not b!7443448) (not b!7443787) (not b!7443765) (not b!7443868) (not b!7443980) (not b!7443959) (not bm!684201) (not b!7443863) (not b!7443496) (not b!7444120) (not b!7443465) (not b!7443644) (not d!2296092) (not b!7444157) (not bs!1926595) (not b!7443360) (not b!7444279) (not b!7444217) (not b!7444084) (not b!7444285) (not b!7443484) (not b!7443458) (not b!7443886) (not b!7443755) (not b!7443449) (not b!7444018) (not b!7443802) (not b!7443533) (not b!7443901) (not b!7444225) (not b!7444165) (not b!7443460) (not b!7443715) (not b!7443693) (not b!7443587) (not b!7443969) (not b!7444289) (not b!7444254) (not b!7444286) (not bm!684196) (not b!7443491) (not b!7443541) (not b!7444213) (not b!7443800) (not b!7443880) (not b!7443306) (not b!7443799) (not b!7443529) (not b!7443924) (not b!7443829) (not b!7444140) (not b!7443674) (not b!7443734) (not b_lambda!287641) (not b_lambda!287697) (not b!7444281) (not b!7443552) (not b!7443869) (not b!7443963) (not b!7443954) (not b!7443931) (not b!7443896) (not b!7443532) (not b!7443788) (not b!7443655) (not b!7443575) (not b!7443517) (not b!7443631) (not b!7443707) (not b!7443848) (not b!7443916) (not b!7443636) (not b!7444096) (not b!7443953) (not b!7443643) (not b!7443737) (not b!7444044) (not b!7443767) (not b!7443640) (not b!7443293) (not b!7444153) (not b!7444118) (not b!7444048) (not b!7444160) (not b!7443627) (not b!7443925) (not b!7444190) (not b!7443580) (not b!7443888) (not b!7443795) (not d!2296080) (not b!7443885) (not b!7444182) (not bs!1926593) (not b!7444277) (not b!7443579) (not b!7444052) (not b!7444117) (not b!7443512) (not b!7443915) (not b!7444265) (not bm!684220) (not b!7443632) (not bm!684213) (not b!7443897) (not b!7443893) (not b!7443987) (not b!7444198) (not b!7443536) (not b!7444226) (not b!7443859) (not b!7443923) (not b!7443741) (not b!7443938) (not b!7444112) (not b!7443426) (not b!7443508) (not b!7444290) (not b!7444101) (not b!7443857) (not b!7443475) (not b!7443577) (not b!7444106) (not setNonEmpty!56646) (not b!7443331) (not b!7443657) (not b!7443743) (not b!7444184) (not b!7443794) (not b!7444251) (not b!7444247) (not b!7444297) (not b!7444136) (not b!7443658) (not b!7444105) (not b!7443836) (not b!7444053) (not b!7443391) (not b!7443690) (not b!7443753) (not b!7444121) (not b!7444151) (not b_lambda!287661) (not b!7443531) (not b!7444259) (not b!7443487) (not b!7444051) (not b!7444049) (not b!7443621) (not b!7443927) (not b!7444141) (not b!7443549) (not b!7444056) (not b!7444028) (not b!7444035) (not bm!684229) (not b!7443735) (not bm!684221) (not b!7444147) (not b!7443497) (not b!7443890) (not b!7444060) (not b!7443543) (not b!7443839) (not b!7443939) (not b!7443544) (not b!7444185) (not b!7443921) (not b!7443600) (not b!7444004) (not b!7443573) (not b!7443620) (not b!7444181) (not b!7443292) (not b!7443705) (not b!7443593) (not d!2296064) (not b!7443357) (not b!7443840) (not b!7444014) (not b_lambda!287705) (not b!7443995) (not b!7443860) (not b!7443711) (not b!7443615) (not b!7444220) (not b!7444267) (not b!7444180) (not b!7443867) (not b!7443521) (not bm!684207) (not b!7443942) (not b!7443949) (not bm!684198) (not b!7443820) (not b_lambda!287695) (not b!7443853) (not b!7444193) (not b!7443591) (not b!7443999) (not b!7443402) (not b!7443599) (not b!7444261) (not b!7443592) (not b!7443943) (not d!2296048) (not b!7443882) (not b!7444255) (not d!2296118) (not b!7444216) (not b!7443754) (not b!7444114) (not b!7443978) (not b!7443382) (not b!7444204) (not b!7443499) (not bm!684206) (not b!7444206) (not b!7443761) (not b!7443911) (not b!7443571) (not b!7443746) (not b!7443525) (not b!7443611) (not b!7443998) (not b!7444026) (not b!7443864) (not b!7443773) (not b!7443877) (not b!7443399) (not b!7443786) (not b!7444045) (not b!7443438) (not b!7444038) (not b!7444088) (not b!7443843) (not b!7444250) (not b!7444012) (not b!7444126) (not b!7444164) (not b!7444224) (not b!7443318) (not b!7443633) (not b!7443749) (not setNonEmpty!56647) (not b!7443304) (not b!7444149) (not b!7443908) (not b!7443551) (not b!7443984) (not b!7444304) (not b!7443505) (not b!7444072) (not b!7443776) (not b!7443687) (not b!7444008) (not b!7443447) (not b!7443565) (not b!7443368) (not b!7443898) (not b!7443666) (not b!7444246) (not b!7443970) (not b!7443875) (not b!7444241) (not b!7443616) (not b!7443871) (not b!7443617) (not b!7443485) (not b!7443607) (not b!7443884) (not d!2296094) (not b!7443572) (not b!7443798) (not b!7443986) (not b!7443567) (not b!7443781) (not b!7444125) (not b!7444139) (not b!7443757) (not b!7444143) (not b!7443596) (not b!7444109) (not b!7444068) (not b!7443937) (not b!7443876) (not b!7443504) (not b!7444000) (not b!7444192) (not b!7443990) (not b!7443548) (not b!7444298) (not b!7443832) (not b!7443967) (not b!7443669) (not b!7443903) (not b!7443535) (not b!7443661) (not b!7444237) (not b!7443608) (not b!7444303) (not b!7444061) (not b!7443815) (not b!7443511) (not d!2296044) (not b!7443827) (not b!7443334) (not b!7443309) (not b!7443724) (not b!7443929) (not b!7443824) (not b!7443920) (not b!7444152) (not b_lambda!287663) (not b!7444036) (not b!7444202) (not b!7444031) (not b!7443437) (not bm!684235) (not b_lambda!287659) (not b!7443556) (not b!7443557) (not b!7444063) (not b!7443775) (not b!7443828) (not b!7444295) (not b!7443892) (not b!7443553) (not b!7443461) (not b!7444011) (not b!7443649) (not b!7444299) (not b!7443855) (not b!7444222) (not b!7444253) (not b!7444092) (not b!7443463) (not b!7443996) (not b!7443723) (not b!7443957) (not b!7444214) (not b!7444144) (not b!7444094) (not b!7444100) (not b!7443759) (not b!7444293) (not b!7444086) (not b!7444124) (not b!7443296) (not b!7443595) (not b!7443694) (not b!7443784) (not b!7444294) (not b!7443730) (not b!7443720) (not b!7444208) (not b!7443763) (not b!7443679) (not b!7443586) (not b!7444188) (not b!7443547) (not b!7443700) (not b!7444089) (not d!2296050) (not b!7443523) (not b!7444301) (not b!7443729) (not b!7444243) (not b!7443489) (not b!7443904) (not b!7443841) (not d!2296054) (not b!7444074) (not b!7443817) (not b!7443701) (not bm!684214) (not b!7443965) (not b!7443629) (not b!7444172) (not b!7443495) (not b!7443849) (not b!7443697) (not b!7443933) (not b!7443635) (not b!7444102) (not b!7443500) (not b!7443928) (not b!7443537) (not bm!684218) (not b!7443559) (not b_lambda!287703) (not b!7443988) (not b!7443975) (not b!7443783) (not b!7443325) (not b!7444113) (not b!7443947) (not b!7444283) (not b!7444059) (not b!7443473) (not b!7444057) (not b!7444266) (not b!7443856) (not b!7444093) (not b_lambda!287617) (not b!7444275) (not b!7443889) (not b_lambda!287693) (not b!7443716) (not b!7443706) (not b!7443919) (not b!7444200) (not b!7443766) (not b!7443945) (not b!7444273) (not b!7443628) (not b!7444242) (not b!7443819) (not b!7443648) (not b!7443569) (not b!7443472) (not bm!684223) (not bm!684197) (not b!7443564) (not b!7443524) (not b!7443604) (not b!7444186) (not b!7444135) (not b!7444257) (not b!7444006) (not b!7444067) (not b!7443469) (not b!7443816) tp_is_empty!49181 (not b!7444170) (not b!7444085) (not b!7443689) (not d!2296132) (not b!7444110) (not b!7443671) (not b!7443699) (not b!7443991) (not b!7444212) (not b!7443742) (not b!7443459) (not b!7443958) (not b!7443471) (not b!7443691) (not d!2296104) (not b!7443370) (not b!7444104) (not b!7444274) (not b!7443619) (not bs!1926591) (not b!7443665) (not b!7443750) (not b!7443613) (not b!7443625) (not b!7444007) (not b!7443637) (not b!7443659) (not b!7443713) (not b!7443605) (not bm!684215) (not bm!684209) (not b!7443678) (not bm!684233) (not b!7444258) (not b!7443721) (not b!7444047) (not b!7444210) (not b!7444097) (not b!7443645) (not b!7443519) (not b!7444269) (not b!7443733) (not b!7443745) (not b!7444245) (not b!7443879) (not b!7443686) (not b!7443751) (not b!7443670) (not bm!684210) (not b!7443712) (not b!7444019) (not setNonEmpty!56648) (not b!7443540) (not b!7444262) (not b!7443852) (not b!7443513) (not b!7443971) (not b!7443639) (not b!7443539) (not b!7444030) (not b!7444270) (not b!7443976) (not b!7443576) (not b!7443696) (not b!7443821) (not b!7444194) (not d!2296052) (not b!7443803) (not b!7444090) (not bm!684224) (not b!7444196) (not b!7443771) (not b!7443719) (not b!7444065) (not b!7443516) (not b!7444161) (not b!7443994) (not b!7443677) (not bm!684203) (not b!7443758) (not b!7443772) (not b!7444155) (not b!7443467) (not b!7444189) (not b!7443851) (not b!7443343) (not b!7443992) (not b!7443747) (not b!7443950) (not b!7444156) (not b!7443464) (not b!7444016) (not bm!684226) (not b!7443961) (not d!2296096) (not b!7444039) (not b!7443804) (not b!7443982) (not b!7444221) (not b!7444116) (not b!7444209) (not b!7443835) (not b!7444291) (not b!7443777) (not b!7444022) (not b!7443844) (not b!7443555) (not b!7443941) (not b!7444003) (not b!7443823) (not b_lambda!287615) (not b!7444238) (not b!7443682) (not b!7444055) (not b!7443663) (not b!7443966) (not b!7443647) (not d!2296090) (not b!7443790) (not bm!684227) (not b!7443423) (not b!7443837) (not b!7444069) (not b!7443601) (not b!7443683) (not b!7443545) (not b!7443476) (not b!7443568) (not b!7443983) (not b!7443865) (not b!7443979) (not bs!1926592) (not b!7443624) (not b!7443480) (not b!7443909) (not b!7444043) (not b!7443641) (not b!7443685) (not b!7443894) (not b!7444071) (not d!2296114) (not b!7443492) (not b!7443653) (not b!7443861) (not b!7443507) (not b!7443563) (not b!7444282) (not b!7443673) (not b!7443847) (not b!7443796) (not b!7443561) (not b_lambda!287639) (not b!7443623) (not b!7443912) (not b!7443955) (not b!7444015) (not b!7444122) (not b!7443768) (not b!7443527) (not b!7443792) (not b!7444163) (not b!7443831) (not b!7443972))
(check-sat)
(get-model)

(declare-fun b_lambda!287729 () Bool)

(assert (= b_lambda!287705 (or d!2295854 b_lambda!287729)))

(declare-fun bs!1926612 () Bool)

(declare-fun d!2296242 () Bool)

(assert (= bs!1926612 (and d!2296242 d!2295854)))

(assert (=> bs!1926612 (= (dynLambda!29740 lambda!460528 (h!78475 (toList!11794 z!3488))) (nullableContext!422 (h!78475 (toList!11794 z!3488))))))

(declare-fun m!8054810 () Bool)

(assert (=> bs!1926612 m!8054810))

(assert (=> bs!1926590 d!2296242))

(check-sat (not b!7443373) (not b!7443603) (not b!7443833) (not b!7444168) (not b!7443946) (not b!7444287) (not b!7443503) (not d!2296106) (not bm!684217) (not b!7443951) (not d!2296072) (not b!7444034) (not b!7443488) (not b!7443962) (not b!7444064) (not b!7443769) (not b_lambda!287699) (not b!7443520) (not b!7443597) (not b!7444145) (not b!7443468) (not b!7443907) (not b!7443731) (not b!7443509) (not b!7443905) (not b!7443825) (not b!7444271) (not b!7443681) (not b!7444023) (not b!7443483) (not b!7443845) (not bm!684200) (not b!7444024) (not b!7443501) (not b!7443609) (not b!7444098) (not b!7443739) (not b!7444205) (not bm!684204) (not b!7443791) (not b!7444159) (not b!7443479) (not b!7444197) (not b!7444040) (not b!7444137) (not b!7444108) (not b!7443515) (not b!7444148) (not b!7444302) (not b!7444218) (not b!7443881) (not b!7443560) (not b!7443917) (not b!7444201) (not b!7443913) (not bs!1926594) (not b!7443662) (not b!7444263) (not b!7444239) (not b!7443675) (not b!7443725) (not b_lambda!287637) (not b!7443695) (not b!7444002) (not b!7444278) (not b!7444032) (not b!7443493) (not b!7444020) (not bm!684212) (not b!7443581) (not b!7443667) (not b!7443477) (not b!7443717) (not b!7443932) (not b_lambda!287701) (not b_lambda!287665) (not b!7443738) (not b!7443612) (not b!7443528) (not b!7443654) (not b!7443585) (not b!7444027) (not d!2296088) (not b!7443481) (not b!7443873) (not b!7443872) (not b!7443974) (not b!7443762) (not b!7444010) (not b!7444249) (not b!7443448) (not b!7443787) (not b!7443765) (not b!7443868) (not b!7443980) (not b!7443959) (not bm!684201) (not b!7443863) (not b!7443496) (not b!7444120) (not b!7443465) (not b!7443644) (not d!2296092) (not b!7444157) (not bs!1926595) (not b!7443360) (not b!7444279) (not b!7444217) (not b!7444084) (not b!7444285) (not b!7443484) (not b!7443458) (not b!7443886) (not b!7443755) (not b!7443449) (not b!7444018) (not b!7443802) (not b!7443533) (not b!7443901) (not b!7444225) (not b!7444165) (not b!7443460) (not b!7443715) (not b!7443693) (not b!7443587) (not b!7443969) (not b!7444289) (not b!7444254) (not b!7444286) (not bm!684196) (not b!7443491) (not b!7443541) (not b!7444213) (not b!7443800) (not b!7443880) (not b!7443306) (not b!7443799) (not b!7443529) (not b!7443924) (not b!7443829) (not b!7444140) (not b!7443674) (not b!7443734) (not b_lambda!287641) (not b_lambda!287697) (not b!7444281) (not b!7443552) (not b!7443869) (not b!7443963) (not b!7443954) (not b!7443931) (not b!7443896) (not b!7443532) (not b!7443788) (not b!7443655) (not b!7443575) (not b!7443517) (not b!7443631) (not b!7443707) (not b!7443848) (not b!7443916) (not b!7443636) (not b!7444096) (not b!7443953) (not b!7443643) (not b!7443737) (not b!7444044) (not b!7443767) (not b!7443640) (not b!7443293) (not b!7444153) (not b!7444118) (not b!7444048) (not b!7444160) (not b!7443627) (not b!7443925) (not b!7444190) (not b!7443580) (not b!7443888) (not b!7443795) (not d!2296080) (not b!7443885) (not b!7444182) (not bs!1926593) (not b!7444277) (not b!7443579) (not b!7444052) (not b!7444117) (not b!7443512) (not b!7443915) (not b!7444265) (not bm!684220) (not b!7443632) (not bm!684213) (not b!7443897) (not b!7443893) (not b!7443987) (not b!7444198) (not b!7443536) (not b!7444226) (not b!7443859) (not b!7443923) (not b!7443741) (not b!7443938) (not b!7444112) (not b!7443426) (not b!7443508) (not b!7444290) (not b!7444101) (not b!7443857) (not b!7443475) (not b!7443577) (not b!7444106) (not setNonEmpty!56646) (not b!7443331) (not b!7443657) (not b!7443743) (not b!7444184) (not b!7443794) (not b!7444251) (not b!7444247) (not b!7444297) (not b!7444136) (not b!7443658) (not b!7444105) (not b!7443836) (not b!7444053) (not b!7443391) (not b!7443690) (not b!7443753) (not b!7444121) (not b!7444151) (not b_lambda!287661) (not b!7443531) (not b!7444259) (not b!7443487) (not b!7444051) (not b!7444049) (not b!7443621) (not b!7443927) (not b!7444141) (not b!7443549) (not b!7444056) (not b!7444028) (not b!7444035) (not bm!684229) (not b!7443735) (not bm!684221) (not b!7444147) (not b!7443497) (not b!7443890) (not b!7444060) (not b!7443543) (not b!7443839) (not b_lambda!287729) (not b!7443939) (not b!7443544) (not b!7444185) (not b!7443921) (not b!7443600) (not b!7444004) (not b!7443573) (not b!7443620) (not b!7444181) (not b!7443292) (not b!7443705) (not b!7443593) (not d!2296064) (not b!7443357) (not b!7443840) (not b!7444014) (not b!7443995) (not b!7443860) (not b!7443711) (not b!7443615) (not b!7444220) (not b!7444267) (not b!7444180) (not b!7443867) (not b!7443521) (not bm!684207) (not b!7443942) (not b!7443949) (not bm!684198) (not b!7443820) (not b_lambda!287695) (not b!7443853) (not b!7444193) (not b!7443591) (not b!7443999) (not b!7443402) (not b!7443599) (not b!7444261) (not b!7443592) (not b!7443943) (not d!2296048) (not bs!1926612) (not b!7443882) (not b!7444255) (not d!2296118) (not b!7444216) (not b!7443754) (not b!7444114) (not b!7443978) (not b!7443382) (not b!7444204) (not b!7443499) (not bm!684206) (not b!7444206) (not b!7443761) (not b!7443911) (not b!7443571) (not b!7443746) (not b!7443525) (not b!7443611) (not b!7443998) (not b!7444026) (not b!7443864) (not b!7443773) (not b!7443877) (not b!7443399) (not b!7443786) (not b!7444045) (not b!7443438) (not b!7444038) (not b!7444088) (not b!7443843) (not b!7444250) (not b!7444012) (not b!7444126) (not b!7444164) (not b!7444224) (not b!7443318) (not b!7443633) (not b!7443749) (not setNonEmpty!56647) (not b!7443304) (not b!7444149) (not b!7443908) (not b!7443551) (not b!7443984) (not b!7444304) (not b!7443505) (not b!7444072) (not b!7443776) (not b!7443687) (not b!7444008) (not b!7443447) (not b!7443565) (not b!7443368) (not b!7443898) (not b!7443666) (not b!7444246) (not b!7443970) (not b!7443875) (not b!7444241) (not b!7443616) (not b!7443871) (not b!7443617) (not b!7443485) (not b!7443607) (not b!7443884) (not d!2296094) (not b!7443572) (not b!7443798) (not b!7443986) (not b!7443567) (not b!7443781) (not b!7444125) (not b!7444139) (not b!7443757) (not b!7444143) (not b!7443596) (not b!7444109) (not b!7444068) (not b!7443937) (not b!7443876) (not b!7443504) (not b!7444000) (not b!7444192) (not b!7443990) (not b!7443548) (not b!7444298) (not b!7443832) (not b!7443967) (not b!7443669) (not b!7443903) (not b!7443535) (not b!7443661) (not b!7444237) (not b!7443608) (not b!7444303) (not b!7444061) (not b!7443815) (not b!7443511) (not d!2296044) (not b!7443827) (not b!7443334) (not b!7443309) (not b!7443724) (not b!7443929) (not b!7443824) (not b!7443920) (not b!7444152) (not b_lambda!287663) (not b!7444036) (not b!7444202) (not b!7444031) (not b!7443437) (not bm!684235) (not b_lambda!287659) (not b!7443556) (not b!7443557) (not b!7444063) (not b!7443775) (not b!7443828) (not b!7444295) (not b!7443892) (not b!7443553) (not b!7443461) (not b!7444011) (not b!7443649) (not b!7444299) (not b!7443855) (not b!7444222) (not b!7444253) (not b!7444092) (not b!7443463) (not b!7443996) (not b!7443723) (not b!7443957) (not b!7444214) (not b!7444144) (not b!7444094) (not b!7444100) (not b!7443759) (not b!7444293) (not b!7444086) (not b!7444124) (not b!7443296) (not b!7443595) (not b!7443694) (not b!7443784) (not b!7444294) (not b!7443730) (not b!7443720) (not b!7444208) (not b!7443763) (not b!7443679) (not b!7443586) (not b!7444188) (not b!7443547) (not b!7443700) (not b!7444089) (not d!2296050) (not b!7443523) (not b!7444301) (not b!7443729) (not b!7444243) (not b!7443489) (not b!7443904) (not b!7443841) (not d!2296054) (not b!7444074) (not b!7443817) (not b!7443701) (not bm!684214) (not b!7443965) (not b!7443629) (not b!7444172) (not b!7443495) (not b!7443849) (not b!7443697) (not b!7443933) (not b!7443635) (not b!7444102) (not b!7443500) (not b!7443928) (not b!7443537) (not bm!684218) (not b!7443559) (not b_lambda!287703) (not b!7443988) (not b!7443975) (not b!7443783) (not b!7443325) (not b!7444113) (not b!7443947) (not b!7444283) (not b!7444059) (not b!7443473) (not b!7444057) (not b!7444266) (not b!7443856) (not b!7444093) (not b_lambda!287617) (not b!7444275) (not b!7443889) (not b_lambda!287693) (not b!7443716) (not b!7443706) (not b!7443919) (not b!7444200) (not b!7443766) (not b!7443945) (not b!7444273) (not b!7443628) (not b!7444242) (not b!7443819) (not b!7443648) (not b!7443569) (not b!7443472) (not bm!684223) (not bm!684197) (not b!7443564) (not b!7443524) (not b!7443604) (not b!7444186) (not b!7444135) (not b!7444257) (not b!7444006) (not b!7444067) (not b!7443469) (not b!7443816) tp_is_empty!49181 (not b!7444170) (not b!7444085) (not b!7443689) (not d!2296132) (not b!7444110) (not b!7443671) (not b!7443699) (not b!7443991) (not b!7444212) (not b!7443742) (not b!7443459) (not b!7443958) (not b!7443471) (not b!7443691) (not d!2296104) (not b!7443370) (not b!7444104) (not b!7444274) (not b!7443619) (not bs!1926591) (not b!7443665) (not b!7443750) (not b!7443613) (not b!7443625) (not b!7444007) (not b!7443637) (not b!7443659) (not b!7443713) (not b!7443605) (not bm!684215) (not bm!684209) (not b!7443678) (not bm!684233) (not b!7444258) (not b!7443721) (not b!7444047) (not b!7444210) (not b!7444097) (not b!7443645) (not b!7443519) (not b!7444269) (not b!7443733) (not b!7443745) (not b!7444245) (not b!7443879) (not b!7443686) (not b!7443751) (not b!7443670) (not bm!684210) (not b!7443712) (not b!7444019) (not setNonEmpty!56648) (not b!7443540) (not b!7444262) (not b!7443852) (not b!7443513) (not b!7443971) (not b!7443639) (not b!7443539) (not b!7444030) (not b!7444270) (not b!7443976) (not b!7443576) (not b!7443696) (not b!7443821) (not b!7444194) (not d!2296052) (not b!7443803) (not b!7444090) (not bm!684224) (not b!7444196) (not b!7443771) (not b!7443719) (not b!7444065) (not b!7443516) (not b!7444161) (not b!7443994) (not b!7443677) (not bm!684203) (not b!7443758) (not b!7443772) (not b!7444155) (not b!7443467) (not b!7444189) (not b!7443851) (not b!7443343) (not b!7443992) (not b!7443747) (not b!7443950) (not b!7444156) (not b!7443464) (not b!7444016) (not bm!684226) (not b!7443961) (not d!2296096) (not b!7444039) (not b!7443804) (not b!7443982) (not b!7444221) (not b!7444116) (not b!7444209) (not b!7443835) (not b!7444291) (not b!7443777) (not b!7444022) (not b!7443844) (not b!7443555) (not b!7443941) (not b!7444003) (not b!7443823) (not b_lambda!287615) (not b!7444238) (not b!7443682) (not b!7444055) (not b!7443663) (not b!7443966) (not b!7443647) (not d!2296090) (not b!7443790) (not bm!684227) (not b!7443423) (not b!7443837) (not b!7444069) (not b!7443601) (not b!7443683) (not b!7443545) (not b!7443476) (not b!7443568) (not b!7443983) (not b!7443865) (not b!7443979) (not bs!1926592) (not b!7443624) (not b!7443480) (not b!7443909) (not b!7444043) (not b!7443641) (not b!7443685) (not b!7443894) (not b!7444071) (not d!2296114) (not b!7443492) (not b!7443653) (not b!7443861) (not b!7443507) (not b!7443563) (not b!7444282) (not b!7443673) (not b!7443847) (not b!7443796) (not b!7443561) (not b_lambda!287639) (not b!7443623) (not b!7443912) (not b!7443955) (not b!7444015) (not b!7444122) (not b!7443768) (not b!7443527) (not b!7443792) (not b!7444163) (not b!7443831) (not b!7443972))
(check-sat)
