; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92292 () Bool)

(assert start!92292)

(declare-fun b!1085129 () Bool)

(assert (=> b!1085129 true))

(declare-fun b!1085126 () Bool)

(declare-fun e!686228 () Bool)

(declare-fun e!686225 () Bool)

(assert (=> b!1085126 (= e!686228 e!686225)))

(declare-fun res!482699 () Bool)

(assert (=> b!1085126 (=> res!482699 e!686225)))

(declare-datatypes ((C!6554 0))(
  ( (C!6555 (val!3525 Int)) )
))
(declare-datatypes ((Regex!2992 0))(
  ( (ElementMatch!2992 (c!183317 C!6554)) (Concat!4825 (regOne!6496 Regex!2992) (regTwo!6496 Regex!2992)) (EmptyExpr!2992) (Star!2992 (reg!3321 Regex!2992)) (EmptyLang!2992) (Union!2992 (regOne!6497 Regex!2992) (regTwo!6497 Regex!2992)) )
))
(declare-datatypes ((List!10279 0))(
  ( (Nil!10263) (Cons!10263 (h!15664 Regex!2992) (t!101325 List!10279)) )
))
(declare-datatypes ((Context!944 0))(
  ( (Context!945 (exprs!972 List!10279)) )
))
(declare-fun lt!362927 () Context!944)

(declare-fun z!1122 () (Set Context!944))

(assert (=> b!1085126 (= res!482699 (not (set.member lt!362927 z!1122)))))

(declare-fun lambda!39714 () Int)

(declare-fun getWitness!56 ((Set Context!944) Int) Context!944)

(assert (=> b!1085126 (= lt!362927 (getWitness!56 z!1122 lambda!39714))))

(declare-fun e!686227 () Bool)

(declare-fun b!1085127 () Bool)

(declare-fun tp!324755 () Bool)

(declare-datatypes ((List!10280 0))(
  ( (Nil!10264) (Cons!10264 (h!15665 Context!944) (t!101326 List!10280)) )
))
(declare-fun zl!316 () List!10280)

(declare-fun e!686224 () Bool)

(declare-fun inv!13194 (Context!944) Bool)

(assert (=> b!1085127 (= e!686224 (and (inv!13194 (h!15665 zl!316)) e!686227 tp!324755))))

(declare-fun b!1085128 () Bool)

(declare-fun e!686230 () Bool)

(declare-fun tp!324754 () Bool)

(assert (=> b!1085128 (= e!686230 tp!324754)))

(declare-fun setIsEmpty!7503 () Bool)

(declare-fun setRes!7503 () Bool)

(assert (=> setIsEmpty!7503 setRes!7503))

(declare-fun e!686229 () Bool)

(assert (=> b!1085129 (= e!686229 (not e!686228))))

(declare-fun res!482697 () Bool)

(assert (=> b!1085129 (=> res!482697 e!686228)))

(declare-fun exists!125 ((Set Context!944) Int) Bool)

(assert (=> b!1085129 (= res!482697 (not (exists!125 z!1122 lambda!39714)))))

(declare-fun exists!126 (List!10280 Int) Bool)

(assert (=> b!1085129 (exists!126 zl!316 lambda!39714)))

(declare-datatypes ((Unit!15659 0))(
  ( (Unit!15660) )
))
(declare-fun lt!362926 () Unit!15659)

(declare-datatypes ((List!10281 0))(
  ( (Nil!10265) (Cons!10265 (h!15666 C!6554) (t!101327 List!10281)) )
))
(declare-fun s!2287 () List!10281)

(declare-fun lemmaZipperMatchesExistsMatchingContext!19 (List!10280 List!10281) Unit!15659)

(assert (=> b!1085129 (= lt!362926 (lemmaZipperMatchesExistsMatchingContext!19 zl!316 s!2287))))

(declare-fun setNonEmpty!7503 () Bool)

(declare-fun setElem!7503 () Context!944)

(declare-fun tp!324756 () Bool)

(assert (=> setNonEmpty!7503 (= setRes!7503 (and tp!324756 (inv!13194 setElem!7503) e!686230))))

(declare-fun setRest!7503 () (Set Context!944))

(assert (=> setNonEmpty!7503 (= z!1122 (set.union (set.insert setElem!7503 (as set.empty (Set Context!944))) setRest!7503))))

(declare-fun res!482698 () Bool)

(assert (=> start!92292 (=> (not res!482698) (not e!686229))))

(declare-fun toList!610 ((Set Context!944)) List!10280)

(assert (=> start!92292 (= res!482698 (= (toList!610 z!1122) zl!316))))

(assert (=> start!92292 e!686229))

(declare-fun condSetEmpty!7503 () Bool)

(assert (=> start!92292 (= condSetEmpty!7503 (= z!1122 (as set.empty (Set Context!944))))))

(assert (=> start!92292 setRes!7503))

(assert (=> start!92292 e!686224))

(declare-fun e!686226 () Bool)

(assert (=> start!92292 e!686226))

(declare-fun b!1085130 () Bool)

(declare-fun matchZipper!40 ((Set Context!944) List!10281) Bool)

(assert (=> b!1085130 (= e!686225 (matchZipper!40 (set.insert lt!362927 (as set.empty (Set Context!944))) s!2287))))

(declare-fun b!1085131 () Bool)

(declare-fun res!482696 () Bool)

(assert (=> b!1085131 (=> (not res!482696) (not e!686229))))

(assert (=> b!1085131 (= res!482696 (matchZipper!40 z!1122 s!2287))))

(declare-fun b!1085132 () Bool)

(declare-fun tp!324757 () Bool)

(assert (=> b!1085132 (= e!686227 tp!324757)))

(declare-fun b!1085133 () Bool)

(declare-fun tp_is_empty!5615 () Bool)

(declare-fun tp!324753 () Bool)

(assert (=> b!1085133 (= e!686226 (and tp_is_empty!5615 tp!324753))))

(assert (= (and start!92292 res!482698) b!1085131))

(assert (= (and b!1085131 res!482696) b!1085129))

(assert (= (and b!1085129 (not res!482697)) b!1085126))

(assert (= (and b!1085126 (not res!482699)) b!1085130))

(assert (= (and start!92292 condSetEmpty!7503) setIsEmpty!7503))

(assert (= (and start!92292 (not condSetEmpty!7503)) setNonEmpty!7503))

(assert (= setNonEmpty!7503 b!1085128))

(assert (= b!1085127 b!1085132))

(assert (= (and start!92292 (is-Cons!10264 zl!316)) b!1085127))

(assert (= (and start!92292 (is-Cons!10265 s!2287)) b!1085133))

(declare-fun m!1234753 () Bool)

(assert (=> setNonEmpty!7503 m!1234753))

(declare-fun m!1234755 () Bool)

(assert (=> b!1085129 m!1234755))

(declare-fun m!1234757 () Bool)

(assert (=> b!1085129 m!1234757))

(declare-fun m!1234759 () Bool)

(assert (=> b!1085129 m!1234759))

(declare-fun m!1234761 () Bool)

(assert (=> b!1085130 m!1234761))

(assert (=> b!1085130 m!1234761))

(declare-fun m!1234763 () Bool)

(assert (=> b!1085130 m!1234763))

(declare-fun m!1234765 () Bool)

(assert (=> b!1085126 m!1234765))

(declare-fun m!1234767 () Bool)

(assert (=> b!1085126 m!1234767))

(declare-fun m!1234769 () Bool)

(assert (=> b!1085127 m!1234769))

(declare-fun m!1234771 () Bool)

(assert (=> start!92292 m!1234771))

(declare-fun m!1234773 () Bool)

(assert (=> b!1085131 m!1234773))

(push 1)

(assert (not b!1085131))

(assert (not b!1085130))

(assert (not b!1085132))

(assert (not b!1085128))

(assert (not b!1085127))

(assert (not b!1085126))

(assert (not setNonEmpty!7503))

(assert (not start!92292))

(assert tp_is_empty!5615)

(assert (not b!1085129))

(assert (not b!1085133))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!304836 () Bool)

(declare-fun lt!362936 () Bool)

(assert (=> d!304836 (= lt!362936 (exists!126 (toList!610 z!1122) lambda!39714))))

(declare-fun choose!6893 ((Set Context!944) Int) Bool)

(assert (=> d!304836 (= lt!362936 (choose!6893 z!1122 lambda!39714))))

(assert (=> d!304836 (= (exists!125 z!1122 lambda!39714) lt!362936)))

(declare-fun bs!256506 () Bool)

(assert (= bs!256506 d!304836))

(assert (=> bs!256506 m!1234771))

(assert (=> bs!256506 m!1234771))

(declare-fun m!1234797 () Bool)

(assert (=> bs!256506 m!1234797))

(declare-fun m!1234799 () Bool)

(assert (=> bs!256506 m!1234799))

(assert (=> b!1085129 d!304836))

(declare-fun bs!256507 () Bool)

(declare-fun d!304838 () Bool)

(assert (= bs!256507 (and d!304838 b!1085129)))

(declare-fun lambda!39724 () Int)

(assert (=> bs!256507 (not (= lambda!39724 lambda!39714))))

(assert (=> d!304838 true))

(declare-fun order!6189 () Int)

(declare-fun dynLambda!4504 (Int Int) Int)

(assert (=> d!304838 (< (dynLambda!4504 order!6189 lambda!39714) (dynLambda!4504 order!6189 lambda!39724))))

(declare-fun forall!2251 (List!10280 Int) Bool)

(assert (=> d!304838 (= (exists!126 zl!316 lambda!39714) (not (forall!2251 zl!316 lambda!39724)))))

(declare-fun bs!256508 () Bool)

(assert (= bs!256508 d!304838))

(declare-fun m!1234801 () Bool)

(assert (=> bs!256508 m!1234801))

(assert (=> b!1085129 d!304838))

(declare-fun bs!256509 () Bool)

(declare-fun d!304840 () Bool)

(assert (= bs!256509 (and d!304840 b!1085129)))

(declare-fun lambda!39727 () Int)

(assert (=> bs!256509 (= lambda!39727 lambda!39714)))

(declare-fun bs!256510 () Bool)

(assert (= bs!256510 (and d!304840 d!304838)))

(assert (=> bs!256510 (not (= lambda!39727 lambda!39724))))

(assert (=> d!304840 true))

(assert (=> d!304840 (exists!126 zl!316 lambda!39727)))

(declare-fun lt!362939 () Unit!15659)

(declare-fun choose!6894 (List!10280 List!10281) Unit!15659)

(assert (=> d!304840 (= lt!362939 (choose!6894 zl!316 s!2287))))

(declare-fun content!1470 (List!10280) (Set Context!944))

(assert (=> d!304840 (matchZipper!40 (content!1470 zl!316) s!2287)))

(assert (=> d!304840 (= (lemmaZipperMatchesExistsMatchingContext!19 zl!316 s!2287) lt!362939)))

(declare-fun bs!256511 () Bool)

(assert (= bs!256511 d!304840))

(declare-fun m!1234803 () Bool)

(assert (=> bs!256511 m!1234803))

(declare-fun m!1234805 () Bool)

(assert (=> bs!256511 m!1234805))

(declare-fun m!1234807 () Bool)

(assert (=> bs!256511 m!1234807))

(assert (=> bs!256511 m!1234807))

(declare-fun m!1234809 () Bool)

(assert (=> bs!256511 m!1234809))

(assert (=> b!1085129 d!304840))

(declare-fun d!304842 () Bool)

(declare-fun c!183329 () Bool)

(declare-fun isEmpty!6618 (List!10281) Bool)

(assert (=> d!304842 (= c!183329 (isEmpty!6618 s!2287))))

(declare-fun e!686254 () Bool)

(assert (=> d!304842 (= (matchZipper!40 z!1122 s!2287) e!686254)))

(declare-fun b!1085168 () Bool)

(declare-fun nullableZipper!17 ((Set Context!944)) Bool)

(assert (=> b!1085168 (= e!686254 (nullableZipper!17 z!1122))))

(declare-fun b!1085169 () Bool)

(declare-fun derivationStepZipper!15 ((Set Context!944) C!6554) (Set Context!944))

(declare-fun head!2003 (List!10281) C!6554)

(declare-fun tail!1565 (List!10281) List!10281)

(assert (=> b!1085169 (= e!686254 (matchZipper!40 (derivationStepZipper!15 z!1122 (head!2003 s!2287)) (tail!1565 s!2287)))))

(assert (= (and d!304842 c!183329) b!1085168))

(assert (= (and d!304842 (not c!183329)) b!1085169))

(declare-fun m!1234811 () Bool)

(assert (=> d!304842 m!1234811))

(declare-fun m!1234813 () Bool)

(assert (=> b!1085168 m!1234813))

(declare-fun m!1234815 () Bool)

(assert (=> b!1085169 m!1234815))

(assert (=> b!1085169 m!1234815))

(declare-fun m!1234817 () Bool)

(assert (=> b!1085169 m!1234817))

(declare-fun m!1234819 () Bool)

(assert (=> b!1085169 m!1234819))

(assert (=> b!1085169 m!1234817))

(assert (=> b!1085169 m!1234819))

(declare-fun m!1234821 () Bool)

(assert (=> b!1085169 m!1234821))

(assert (=> b!1085131 d!304842))

(declare-fun d!304844 () Bool)

(declare-fun e!686257 () Bool)

(assert (=> d!304844 e!686257))

(declare-fun res!482714 () Bool)

(assert (=> d!304844 (=> (not res!482714) (not e!686257))))

(declare-fun lt!362942 () List!10280)

(declare-fun noDuplicate!179 (List!10280) Bool)

(assert (=> d!304844 (= res!482714 (noDuplicate!179 lt!362942))))

(declare-fun choose!6895 ((Set Context!944)) List!10280)

(assert (=> d!304844 (= lt!362942 (choose!6895 z!1122))))

(assert (=> d!304844 (= (toList!610 z!1122) lt!362942)))

(declare-fun b!1085172 () Bool)

(assert (=> b!1085172 (= e!686257 (= (content!1470 lt!362942) z!1122))))

(assert (= (and d!304844 res!482714) b!1085172))

(declare-fun m!1234823 () Bool)

(assert (=> d!304844 m!1234823))

(declare-fun m!1234825 () Bool)

(assert (=> d!304844 m!1234825))

(declare-fun m!1234827 () Bool)

(assert (=> b!1085172 m!1234827))

(assert (=> start!92292 d!304844))

(declare-fun d!304848 () Bool)

(declare-fun lambda!39730 () Int)

(declare-fun forall!2252 (List!10279 Int) Bool)

(assert (=> d!304848 (= (inv!13194 (h!15665 zl!316)) (forall!2252 (exprs!972 (h!15665 zl!316)) lambda!39730))))

(declare-fun bs!256513 () Bool)

(assert (= bs!256513 d!304848))

(declare-fun m!1234833 () Bool)

(assert (=> bs!256513 m!1234833))

(assert (=> b!1085127 d!304848))

(declare-fun d!304852 () Bool)

(declare-fun c!183330 () Bool)

(assert (=> d!304852 (= c!183330 (isEmpty!6618 s!2287))))

(declare-fun e!686258 () Bool)

(assert (=> d!304852 (= (matchZipper!40 (set.insert lt!362927 (as set.empty (Set Context!944))) s!2287) e!686258)))

(declare-fun b!1085173 () Bool)

(assert (=> b!1085173 (= e!686258 (nullableZipper!17 (set.insert lt!362927 (as set.empty (Set Context!944)))))))

(declare-fun b!1085174 () Bool)

(assert (=> b!1085174 (= e!686258 (matchZipper!40 (derivationStepZipper!15 (set.insert lt!362927 (as set.empty (Set Context!944))) (head!2003 s!2287)) (tail!1565 s!2287)))))

(assert (= (and d!304852 c!183330) b!1085173))

(assert (= (and d!304852 (not c!183330)) b!1085174))

(assert (=> d!304852 m!1234811))

(assert (=> b!1085173 m!1234761))

(declare-fun m!1234835 () Bool)

(assert (=> b!1085173 m!1234835))

(assert (=> b!1085174 m!1234815))

(assert (=> b!1085174 m!1234761))

(assert (=> b!1085174 m!1234815))

(declare-fun m!1234837 () Bool)

(assert (=> b!1085174 m!1234837))

(assert (=> b!1085174 m!1234819))

(assert (=> b!1085174 m!1234837))

(assert (=> b!1085174 m!1234819))

(declare-fun m!1234839 () Bool)

(assert (=> b!1085174 m!1234839))

(assert (=> b!1085130 d!304852))

(declare-fun d!304854 () Bool)

(declare-fun e!686261 () Bool)

(assert (=> d!304854 e!686261))

(declare-fun res!482717 () Bool)

(assert (=> d!304854 (=> (not res!482717) (not e!686261))))

(declare-fun lt!362948 () Context!944)

(declare-fun dynLambda!4505 (Int Context!944) Bool)

(assert (=> d!304854 (= res!482717 (dynLambda!4505 lambda!39714 lt!362948))))

(declare-fun getWitness!58 (List!10280 Int) Context!944)

(assert (=> d!304854 (= lt!362948 (getWitness!58 (toList!610 z!1122) lambda!39714))))

(assert (=> d!304854 (exists!125 z!1122 lambda!39714)))

(assert (=> d!304854 (= (getWitness!56 z!1122 lambda!39714) lt!362948)))

(declare-fun b!1085179 () Bool)

(assert (=> b!1085179 (= e!686261 (set.member lt!362948 z!1122))))

(assert (= (and d!304854 res!482717) b!1085179))

(declare-fun b_lambda!29991 () Bool)

(assert (=> (not b_lambda!29991) (not d!304854)))

(declare-fun m!1234841 () Bool)

(assert (=> d!304854 m!1234841))

(assert (=> d!304854 m!1234771))

(assert (=> d!304854 m!1234771))

(declare-fun m!1234843 () Bool)

(assert (=> d!304854 m!1234843))

(assert (=> d!304854 m!1234755))

(declare-fun m!1234845 () Bool)

(assert (=> b!1085179 m!1234845))

(assert (=> b!1085126 d!304854))

(declare-fun bs!256516 () Bool)

(declare-fun d!304856 () Bool)

(assert (= bs!256516 (and d!304856 d!304848)))

(declare-fun lambda!39734 () Int)

(assert (=> bs!256516 (= lambda!39734 lambda!39730)))

(assert (=> d!304856 (= (inv!13194 setElem!7503) (forall!2252 (exprs!972 setElem!7503) lambda!39734))))

(declare-fun bs!256517 () Bool)

(assert (= bs!256517 d!304856))

(declare-fun m!1234849 () Bool)

(assert (=> bs!256517 m!1234849))

(assert (=> setNonEmpty!7503 d!304856))

(declare-fun b!1085184 () Bool)

(declare-fun e!686264 () Bool)

(declare-fun tp!324775 () Bool)

(assert (=> b!1085184 (= e!686264 (and tp_is_empty!5615 tp!324775))))

(assert (=> b!1085133 (= tp!324753 e!686264)))

(assert (= (and b!1085133 (is-Cons!10265 (t!101327 s!2287))) b!1085184))

(declare-fun b!1085189 () Bool)

(declare-fun e!686267 () Bool)

(declare-fun tp!324780 () Bool)

(declare-fun tp!324781 () Bool)

(assert (=> b!1085189 (= e!686267 (and tp!324780 tp!324781))))

(assert (=> b!1085132 (= tp!324757 e!686267)))

(assert (= (and b!1085132 (is-Cons!10263 (exprs!972 (h!15665 zl!316)))) b!1085189))

(declare-fun b!1085190 () Bool)

(declare-fun e!686268 () Bool)

(declare-fun tp!324782 () Bool)

(declare-fun tp!324783 () Bool)

(assert (=> b!1085190 (= e!686268 (and tp!324782 tp!324783))))

(assert (=> b!1085128 (= tp!324754 e!686268)))

(assert (= (and b!1085128 (is-Cons!10263 (exprs!972 setElem!7503))) b!1085190))

(declare-fun b!1085198 () Bool)

(declare-fun e!686274 () Bool)

(declare-fun tp!324788 () Bool)

(assert (=> b!1085198 (= e!686274 tp!324788)))

(declare-fun b!1085197 () Bool)

(declare-fun e!686273 () Bool)

(declare-fun tp!324789 () Bool)

(assert (=> b!1085197 (= e!686273 (and (inv!13194 (h!15665 (t!101326 zl!316))) e!686274 tp!324789))))

(assert (=> b!1085127 (= tp!324755 e!686273)))

(assert (= b!1085197 b!1085198))

(assert (= (and b!1085127 (is-Cons!10264 (t!101326 zl!316))) b!1085197))

(declare-fun m!1234851 () Bool)

(assert (=> b!1085197 m!1234851))

(declare-fun condSetEmpty!7509 () Bool)

(assert (=> setNonEmpty!7503 (= condSetEmpty!7509 (= setRest!7503 (as set.empty (Set Context!944))))))

(declare-fun setRes!7509 () Bool)

(assert (=> setNonEmpty!7503 (= tp!324756 setRes!7509)))

(declare-fun setIsEmpty!7509 () Bool)

(assert (=> setIsEmpty!7509 setRes!7509))

(declare-fun setNonEmpty!7509 () Bool)

(declare-fun setElem!7509 () Context!944)

(declare-fun tp!324795 () Bool)

(declare-fun e!686277 () Bool)

(assert (=> setNonEmpty!7509 (= setRes!7509 (and tp!324795 (inv!13194 setElem!7509) e!686277))))

(declare-fun setRest!7509 () (Set Context!944))

(assert (=> setNonEmpty!7509 (= setRest!7503 (set.union (set.insert setElem!7509 (as set.empty (Set Context!944))) setRest!7509))))

(declare-fun b!1085203 () Bool)

(declare-fun tp!324794 () Bool)

(assert (=> b!1085203 (= e!686277 tp!324794)))

(assert (= (and setNonEmpty!7503 condSetEmpty!7509) setIsEmpty!7509))

(assert (= (and setNonEmpty!7503 (not condSetEmpty!7509)) setNonEmpty!7509))

(assert (= setNonEmpty!7509 b!1085203))

(declare-fun m!1234853 () Bool)

(assert (=> setNonEmpty!7509 m!1234853))

(declare-fun b_lambda!29993 () Bool)

(assert (= b_lambda!29991 (or b!1085129 b_lambda!29993)))

(declare-fun bs!256518 () Bool)

(declare-fun d!304860 () Bool)

(assert (= bs!256518 (and d!304860 b!1085129)))

(assert (=> bs!256518 (= (dynLambda!4505 lambda!39714 lt!362948) (matchZipper!40 (set.insert lt!362948 (as set.empty (Set Context!944))) s!2287))))

(declare-fun m!1234855 () Bool)

(assert (=> bs!256518 m!1234855))

(assert (=> bs!256518 m!1234855))

(declare-fun m!1234857 () Bool)

(assert (=> bs!256518 m!1234857))

(assert (=> d!304854 d!304860))

(push 1)

(assert (not d!304844))

(assert (not d!304852))

(assert (not b!1085168))

(assert (not d!304848))

(assert (not b!1085169))

(assert (not b!1085190))

(assert tp_is_empty!5615)

(assert (not b!1085173))

(assert (not b!1085198))

(assert (not b!1085184))

(assert (not d!304836))

(assert (not d!304840))

(assert (not b!1085174))

(assert (not d!304856))

(assert (not setNonEmpty!7509))

(assert (not b!1085197))

(assert (not b!1085189))

(assert (not b_lambda!29993))

(assert (not d!304842))

(assert (not b!1085172))

(assert (not d!304838))

(assert (not bs!256518))

(assert (not b!1085203))

(assert (not d!304854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

