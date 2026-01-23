; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668896 () Bool)

(assert start!668896)

(declare-fun b!6977166 () Bool)

(assert (=> b!6977166 true))

(declare-fun b!6977161 () Bool)

(assert (=> b!6977161 true))

(declare-fun b!6977160 () Bool)

(declare-fun res!2845007 () Bool)

(declare-fun e!4193237 () Bool)

(assert (=> b!6977160 (=> (not res!2845007) (not e!4193237))))

(declare-datatypes ((C!34562 0))(
  ( (C!34563 (val!26983 Int)) )
))
(declare-datatypes ((List!66983 0))(
  ( (Nil!66859) (Cons!66859 (h!73307 C!34562) (t!380726 List!66983)) )
))
(declare-fun s!7408 () List!66983)

(assert (=> b!6977160 (= res!2845007 (is-Cons!66859 s!7408))))

(declare-fun lambda!398156 () Int)

(declare-fun e!4193235 () Bool)

(declare-fun lambda!398157 () Int)

(declare-datatypes ((Regex!17146 0))(
  ( (ElementMatch!17146 (c!1293210 C!34562)) (Concat!25991 (regOne!34804 Regex!17146) (regTwo!34804 Regex!17146)) (EmptyExpr!17146) (Star!17146 (reg!17475 Regex!17146)) (EmptyLang!17146) (Union!17146 (regOne!34805 Regex!17146) (regTwo!34805 Regex!17146)) )
))
(declare-datatypes ((List!66984 0))(
  ( (Nil!66860) (Cons!66860 (h!73308 Regex!17146) (t!380727 List!66984)) )
))
(declare-datatypes ((Context!12284 0))(
  ( (Context!12285 (exprs!6642 List!66984)) )
))
(declare-fun lt!2480135 () Context!12284)

(declare-fun z1!570 () (Set Context!12284))

(declare-fun forall!16018 (List!66984 Int) Bool)

(declare-fun mapPost2!1 ((Set Context!12284) Int Context!12284) Context!12284)

(assert (=> b!6977161 (= e!4193235 (forall!16018 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)) lambda!398157))))

(declare-fun setElem!47360 () Context!12284)

(declare-fun e!4193234 () Bool)

(declare-fun setNonEmpty!47360 () Bool)

(declare-fun tp!1927275 () Bool)

(declare-fun setRes!47360 () Bool)

(declare-fun inv!85725 (Context!12284) Bool)

(assert (=> setNonEmpty!47360 (= setRes!47360 (and tp!1927275 (inv!85725 setElem!47360) e!4193234))))

(declare-fun setRest!47360 () (Set Context!12284))

(assert (=> setNonEmpty!47360 (= z1!570 (set.union (set.insert setElem!47360 (as set.empty (Set Context!12284))) setRest!47360))))

(declare-fun b!6977162 () Bool)

(declare-fun e!4193233 () Bool)

(declare-fun tp!1927273 () Bool)

(assert (=> b!6977162 (= e!4193233 tp!1927273)))

(declare-fun b!6977163 () Bool)

(declare-fun e!4193236 () Bool)

(declare-fun tp_is_empty!43517 () Bool)

(declare-fun tp!1927272 () Bool)

(assert (=> b!6977163 (= e!4193236 (and tp_is_empty!43517 tp!1927272))))

(declare-fun b!6977164 () Bool)

(declare-fun res!2845009 () Bool)

(assert (=> b!6977164 (=> res!2845009 e!4193235)))

(declare-fun lt!2480137 () (Set Context!12284))

(assert (=> b!6977164 (= res!2845009 (not (set.member lt!2480135 lt!2480137)))))

(declare-fun b!6977165 () Bool)

(declare-fun tp!1927274 () Bool)

(assert (=> b!6977165 (= e!4193234 tp!1927274)))

(assert (=> b!6977166 (= e!4193237 (not e!4193235))))

(declare-fun res!2845008 () Bool)

(assert (=> b!6977166 (=> res!2845008 e!4193235)))

(declare-fun matchZipper!2686 ((Set Context!12284) List!66983) Bool)

(assert (=> b!6977166 (= res!2845008 (not (matchZipper!2686 (set.insert lt!2480135 (as set.empty (Set Context!12284))) s!7408)))))

(declare-fun lambda!398155 () Int)

(declare-fun getWitness!997 ((Set Context!12284) Int) Context!12284)

(assert (=> b!6977166 (= lt!2480135 (getWitness!997 lt!2480137 lambda!398155))))

(declare-datatypes ((List!66985 0))(
  ( (Nil!66861) (Cons!66861 (h!73309 Context!12284) (t!380728 List!66985)) )
))
(declare-fun lt!2480134 () List!66985)

(declare-fun exists!2886 (List!66985 Int) Bool)

(assert (=> b!6977166 (exists!2886 lt!2480134 lambda!398155)))

(declare-datatypes ((Unit!160940 0))(
  ( (Unit!160941) )
))
(declare-fun lt!2480136 () Unit!160940)

(declare-fun lemmaZipperMatchesExistsMatchingContext!115 (List!66985 List!66983) Unit!160940)

(assert (=> b!6977166 (= lt!2480136 (lemmaZipperMatchesExistsMatchingContext!115 lt!2480134 s!7408))))

(declare-fun toList!10506 ((Set Context!12284)) List!66985)

(assert (=> b!6977166 (= lt!2480134 (toList!10506 lt!2480137))))

(declare-fun setIsEmpty!47360 () Bool)

(assert (=> setIsEmpty!47360 setRes!47360))

(declare-fun res!2845010 () Bool)

(assert (=> start!668896 (=> (not res!2845010) (not e!4193237))))

(assert (=> start!668896 (= res!2845010 (matchZipper!2686 lt!2480137 s!7408))))

(declare-fun ct2!306 () Context!12284)

(declare-fun appendTo!267 ((Set Context!12284) Context!12284) (Set Context!12284))

(assert (=> start!668896 (= lt!2480137 (appendTo!267 z1!570 ct2!306))))

(assert (=> start!668896 e!4193237))

(declare-fun condSetEmpty!47360 () Bool)

(assert (=> start!668896 (= condSetEmpty!47360 (= z1!570 (as set.empty (Set Context!12284))))))

(assert (=> start!668896 setRes!47360))

(assert (=> start!668896 (and (inv!85725 ct2!306) e!4193233)))

(assert (=> start!668896 e!4193236))

(assert (= (and start!668896 res!2845010) b!6977160))

(assert (= (and b!6977160 res!2845007) b!6977166))

(assert (= (and b!6977166 (not res!2845008)) b!6977164))

(assert (= (and b!6977164 (not res!2845009)) b!6977161))

(assert (= (and start!668896 condSetEmpty!47360) setIsEmpty!47360))

(assert (= (and start!668896 (not condSetEmpty!47360)) setNonEmpty!47360))

(assert (= setNonEmpty!47360 b!6977165))

(assert (= start!668896 b!6977162))

(assert (= (and start!668896 (is-Cons!66859 s!7408)) b!6977163))

(declare-fun m!7662552 () Bool)

(assert (=> b!6977166 m!7662552))

(assert (=> b!6977166 m!7662552))

(declare-fun m!7662554 () Bool)

(assert (=> b!6977166 m!7662554))

(declare-fun m!7662556 () Bool)

(assert (=> b!6977166 m!7662556))

(declare-fun m!7662558 () Bool)

(assert (=> b!6977166 m!7662558))

(declare-fun m!7662560 () Bool)

(assert (=> b!6977166 m!7662560))

(declare-fun m!7662562 () Bool)

(assert (=> b!6977166 m!7662562))

(declare-fun m!7662564 () Bool)

(assert (=> setNonEmpty!47360 m!7662564))

(declare-fun m!7662566 () Bool)

(assert (=> start!668896 m!7662566))

(declare-fun m!7662568 () Bool)

(assert (=> start!668896 m!7662568))

(declare-fun m!7662570 () Bool)

(assert (=> start!668896 m!7662570))

(declare-fun m!7662572 () Bool)

(assert (=> b!6977161 m!7662572))

(declare-fun m!7662574 () Bool)

(assert (=> b!6977161 m!7662574))

(declare-fun m!7662576 () Bool)

(assert (=> b!6977164 m!7662576))

(push 1)

(assert tp_is_empty!43517)

(assert (not b!6977163))

(assert (not setNonEmpty!47360))

(assert (not b!6977162))

(assert (not b!6977166))

(assert (not start!668896))

(assert (not b!6977165))

(assert (not b!6977161))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2172327 () Bool)

(declare-fun res!2845028 () Bool)

(declare-fun e!4193257 () Bool)

(assert (=> d!2172327 (=> res!2845028 e!4193257)))

(assert (=> d!2172327 (= res!2845028 (is-Nil!66860 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135))))))

(assert (=> d!2172327 (= (forall!16018 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)) lambda!398157) e!4193257)))

(declare-fun b!6977200 () Bool)

(declare-fun e!4193258 () Bool)

(assert (=> b!6977200 (= e!4193257 e!4193258)))

(declare-fun res!2845029 () Bool)

(assert (=> b!6977200 (=> (not res!2845029) (not e!4193258))))

(declare-fun dynLambda!26667 (Int Regex!17146) Bool)

(assert (=> b!6977200 (= res!2845029 (dynLambda!26667 lambda!398157 (h!73308 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)))))))

(declare-fun b!6977201 () Bool)

(assert (=> b!6977201 (= e!4193258 (forall!16018 (t!380727 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135))) lambda!398157))))

(assert (= (and d!2172327 (not res!2845028)) b!6977200))

(assert (= (and b!6977200 res!2845029) b!6977201))

(declare-fun b_lambda!261053 () Bool)

(assert (=> (not b_lambda!261053) (not b!6977200)))

(declare-fun m!7662604 () Bool)

(assert (=> b!6977200 m!7662604))

(declare-fun m!7662606 () Bool)

(assert (=> b!6977201 m!7662606))

(assert (=> b!6977161 d!2172327))

(declare-fun d!2172329 () Bool)

(declare-fun e!4193261 () Bool)

(assert (=> d!2172329 e!4193261))

(declare-fun res!2845032 () Bool)

(assert (=> d!2172329 (=> (not res!2845032) (not e!4193261))))

(declare-fun lt!2480154 () Context!12284)

(declare-fun dynLambda!26668 (Int Context!12284) Context!12284)

(assert (=> d!2172329 (= res!2845032 (= lt!2480135 (dynLambda!26668 lambda!398156 lt!2480154)))))

(declare-fun choose!51936 ((Set Context!12284) Int Context!12284) Context!12284)

(assert (=> d!2172329 (= lt!2480154 (choose!51936 z1!570 lambda!398156 lt!2480135))))

(declare-fun map!15395 ((Set Context!12284) Int) (Set Context!12284))

(assert (=> d!2172329 (set.member lt!2480135 (map!15395 z1!570 lambda!398156))))

(assert (=> d!2172329 (= (mapPost2!1 z1!570 lambda!398156 lt!2480135) lt!2480154)))

(declare-fun b!6977205 () Bool)

(assert (=> b!6977205 (= e!4193261 (set.member lt!2480154 z1!570))))

(assert (= (and d!2172329 res!2845032) b!6977205))

(declare-fun b_lambda!261055 () Bool)

(assert (=> (not b_lambda!261055) (not d!2172329)))

(declare-fun m!7662608 () Bool)

(assert (=> d!2172329 m!7662608))

(declare-fun m!7662610 () Bool)

(assert (=> d!2172329 m!7662610))

(declare-fun m!7662612 () Bool)

(assert (=> d!2172329 m!7662612))

(declare-fun m!7662614 () Bool)

(assert (=> d!2172329 m!7662614))

(declare-fun m!7662616 () Bool)

(assert (=> b!6977205 m!7662616))

(assert (=> b!6977161 d!2172329))

(declare-fun bs!1860104 () Bool)

(declare-fun d!2172331 () Bool)

(assert (= bs!1860104 (and d!2172331 b!6977166)))

(declare-fun lambda!398173 () Int)

(assert (=> bs!1860104 (= lambda!398173 lambda!398155)))

(assert (=> d!2172331 true))

(assert (=> d!2172331 (exists!2886 lt!2480134 lambda!398173)))

(declare-fun lt!2480157 () Unit!160940)

(declare-fun choose!51937 (List!66985 List!66983) Unit!160940)

(assert (=> d!2172331 (= lt!2480157 (choose!51937 lt!2480134 s!7408))))

(declare-fun content!13164 (List!66985) (Set Context!12284))

(assert (=> d!2172331 (matchZipper!2686 (content!13164 lt!2480134) s!7408)))

(assert (=> d!2172331 (= (lemmaZipperMatchesExistsMatchingContext!115 lt!2480134 s!7408) lt!2480157)))

(declare-fun bs!1860105 () Bool)

(assert (= bs!1860105 d!2172331))

(declare-fun m!7662618 () Bool)

(assert (=> bs!1860105 m!7662618))

(declare-fun m!7662620 () Bool)

(assert (=> bs!1860105 m!7662620))

(declare-fun m!7662622 () Bool)

(assert (=> bs!1860105 m!7662622))

(assert (=> bs!1860105 m!7662622))

(declare-fun m!7662624 () Bool)

(assert (=> bs!1860105 m!7662624))

(assert (=> b!6977166 d!2172331))

(declare-fun bs!1860106 () Bool)

(declare-fun d!2172333 () Bool)

(assert (= bs!1860106 (and d!2172333 b!6977166)))

(declare-fun lambda!398176 () Int)

(assert (=> bs!1860106 (not (= lambda!398176 lambda!398155))))

(declare-fun bs!1860107 () Bool)

(assert (= bs!1860107 (and d!2172333 d!2172331)))

(assert (=> bs!1860107 (not (= lambda!398176 lambda!398173))))

(assert (=> d!2172333 true))

(declare-fun order!27797 () Int)

(declare-fun dynLambda!26669 (Int Int) Int)

(assert (=> d!2172333 (< (dynLambda!26669 order!27797 lambda!398155) (dynLambda!26669 order!27797 lambda!398176))))

(declare-fun forall!16020 (List!66985 Int) Bool)

(assert (=> d!2172333 (= (exists!2886 lt!2480134 lambda!398155) (not (forall!16020 lt!2480134 lambda!398176)))))

(declare-fun bs!1860108 () Bool)

(assert (= bs!1860108 d!2172333))

(declare-fun m!7662626 () Bool)

(assert (=> bs!1860108 m!7662626))

(assert (=> b!6977166 d!2172333))

(declare-fun d!2172335 () Bool)

(declare-fun e!4193264 () Bool)

(assert (=> d!2172335 e!4193264))

(declare-fun res!2845035 () Bool)

(assert (=> d!2172335 (=> (not res!2845035) (not e!4193264))))

(declare-fun lt!2480160 () Context!12284)

(declare-fun dynLambda!26670 (Int Context!12284) Bool)

(assert (=> d!2172335 (= res!2845035 (dynLambda!26670 lambda!398155 lt!2480160))))

(declare-fun getWitness!999 (List!66985 Int) Context!12284)

(assert (=> d!2172335 (= lt!2480160 (getWitness!999 (toList!10506 lt!2480137) lambda!398155))))

(declare-fun exists!2888 ((Set Context!12284) Int) Bool)

(assert (=> d!2172335 (exists!2888 lt!2480137 lambda!398155)))

(assert (=> d!2172335 (= (getWitness!997 lt!2480137 lambda!398155) lt!2480160)))

(declare-fun b!6977210 () Bool)

(assert (=> b!6977210 (= e!4193264 (set.member lt!2480160 lt!2480137))))

(assert (= (and d!2172335 res!2845035) b!6977210))

(declare-fun b_lambda!261057 () Bool)

(assert (=> (not b_lambda!261057) (not d!2172335)))

(declare-fun m!7662628 () Bool)

(assert (=> d!2172335 m!7662628))

(assert (=> d!2172335 m!7662562))

(assert (=> d!2172335 m!7662562))

(declare-fun m!7662630 () Bool)

(assert (=> d!2172335 m!7662630))

(declare-fun m!7662632 () Bool)

(assert (=> d!2172335 m!7662632))

(declare-fun m!7662634 () Bool)

(assert (=> b!6977210 m!7662634))

(assert (=> b!6977166 d!2172335))

(declare-fun d!2172337 () Bool)

(declare-fun e!4193267 () Bool)

(assert (=> d!2172337 e!4193267))

(declare-fun res!2845039 () Bool)

(assert (=> d!2172337 (=> (not res!2845039) (not e!4193267))))

(declare-fun lt!2480163 () List!66985)

(declare-fun noDuplicate!2474 (List!66985) Bool)

(assert (=> d!2172337 (= res!2845039 (noDuplicate!2474 lt!2480163))))

(declare-fun choose!51938 ((Set Context!12284)) List!66985)

(assert (=> d!2172337 (= lt!2480163 (choose!51938 lt!2480137))))

(assert (=> d!2172337 (= (toList!10506 lt!2480137) lt!2480163)))

(declare-fun b!6977213 () Bool)

(assert (=> b!6977213 (= e!4193267 (= (content!13164 lt!2480163) lt!2480137))))

(assert (= (and d!2172337 res!2845039) b!6977213))

(declare-fun m!7662636 () Bool)

(assert (=> d!2172337 m!7662636))

(declare-fun m!7662638 () Bool)

(assert (=> d!2172337 m!7662638))

(declare-fun m!7662640 () Bool)

(assert (=> b!6977213 m!7662640))

(assert (=> b!6977166 d!2172337))

(declare-fun d!2172339 () Bool)

(declare-fun c!1293222 () Bool)

(declare-fun isEmpty!39039 (List!66983) Bool)

(assert (=> d!2172339 (= c!1293222 (isEmpty!39039 s!7408))))

(declare-fun e!4193270 () Bool)

(assert (=> d!2172339 (= (matchZipper!2686 (set.insert lt!2480135 (as set.empty (Set Context!12284))) s!7408) e!4193270)))

(declare-fun b!6977218 () Bool)

(declare-fun nullableZipper!2383 ((Set Context!12284)) Bool)

(assert (=> b!6977218 (= e!4193270 (nullableZipper!2383 (set.insert lt!2480135 (as set.empty (Set Context!12284)))))))

(declare-fun b!6977219 () Bool)

(declare-fun derivationStepZipper!2630 ((Set Context!12284) C!34562) (Set Context!12284))

(declare-fun head!14051 (List!66983) C!34562)

(declare-fun tail!13119 (List!66983) List!66983)

(assert (=> b!6977219 (= e!4193270 (matchZipper!2686 (derivationStepZipper!2630 (set.insert lt!2480135 (as set.empty (Set Context!12284))) (head!14051 s!7408)) (tail!13119 s!7408)))))

(assert (= (and d!2172339 c!1293222) b!6977218))

(assert (= (and d!2172339 (not c!1293222)) b!6977219))

(declare-fun m!7662642 () Bool)

(assert (=> d!2172339 m!7662642))

(assert (=> b!6977218 m!7662552))

(declare-fun m!7662644 () Bool)

(assert (=> b!6977218 m!7662644))

(declare-fun m!7662646 () Bool)

(assert (=> b!6977219 m!7662646))

(assert (=> b!6977219 m!7662552))

(assert (=> b!6977219 m!7662646))

(declare-fun m!7662648 () Bool)

(assert (=> b!6977219 m!7662648))

(declare-fun m!7662650 () Bool)

(assert (=> b!6977219 m!7662650))

(assert (=> b!6977219 m!7662648))

(assert (=> b!6977219 m!7662650))

(declare-fun m!7662652 () Bool)

(assert (=> b!6977219 m!7662652))

(assert (=> b!6977166 d!2172339))

(declare-fun d!2172341 () Bool)

(declare-fun c!1293223 () Bool)

(assert (=> d!2172341 (= c!1293223 (isEmpty!39039 s!7408))))

(declare-fun e!4193271 () Bool)

(assert (=> d!2172341 (= (matchZipper!2686 lt!2480137 s!7408) e!4193271)))

(declare-fun b!6977220 () Bool)

(assert (=> b!6977220 (= e!4193271 (nullableZipper!2383 lt!2480137))))

(declare-fun b!6977221 () Bool)

(assert (=> b!6977221 (= e!4193271 (matchZipper!2686 (derivationStepZipper!2630 lt!2480137 (head!14051 s!7408)) (tail!13119 s!7408)))))

(assert (= (and d!2172341 c!1293223) b!6977220))

(assert (= (and d!2172341 (not c!1293223)) b!6977221))

(assert (=> d!2172341 m!7662642))

(declare-fun m!7662654 () Bool)

(assert (=> b!6977220 m!7662654))

(assert (=> b!6977221 m!7662646))

(assert (=> b!6977221 m!7662646))

(declare-fun m!7662656 () Bool)

(assert (=> b!6977221 m!7662656))

(assert (=> b!6977221 m!7662650))

(assert (=> b!6977221 m!7662656))

(assert (=> b!6977221 m!7662650))

(declare-fun m!7662658 () Bool)

(assert (=> b!6977221 m!7662658))

(assert (=> start!668896 d!2172341))

(declare-fun bs!1860109 () Bool)

(declare-fun d!2172343 () Bool)

(assert (= bs!1860109 (and d!2172343 b!6977161)))

(declare-fun lambda!398181 () Int)

(assert (=> bs!1860109 (= lambda!398181 lambda!398156)))

(assert (=> d!2172343 true))

(assert (=> d!2172343 (= (appendTo!267 z1!570 ct2!306) (map!15395 z1!570 lambda!398181))))

(declare-fun bs!1860110 () Bool)

(assert (= bs!1860110 d!2172343))

(declare-fun m!7662660 () Bool)

(assert (=> bs!1860110 m!7662660))

(assert (=> start!668896 d!2172343))

(declare-fun bs!1860111 () Bool)

(declare-fun d!2172345 () Bool)

(assert (= bs!1860111 (and d!2172345 b!6977161)))

(declare-fun lambda!398184 () Int)

(assert (=> bs!1860111 (= lambda!398184 lambda!398157)))

(assert (=> d!2172345 (= (inv!85725 ct2!306) (forall!16018 (exprs!6642 ct2!306) lambda!398184))))

(declare-fun bs!1860112 () Bool)

(assert (= bs!1860112 d!2172345))

(declare-fun m!7662662 () Bool)

(assert (=> bs!1860112 m!7662662))

(assert (=> start!668896 d!2172345))

(declare-fun bs!1860113 () Bool)

(declare-fun d!2172347 () Bool)

(assert (= bs!1860113 (and d!2172347 b!6977161)))

(declare-fun lambda!398185 () Int)

(assert (=> bs!1860113 (= lambda!398185 lambda!398157)))

(declare-fun bs!1860114 () Bool)

(assert (= bs!1860114 (and d!2172347 d!2172345)))

(assert (=> bs!1860114 (= lambda!398185 lambda!398184)))

(assert (=> d!2172347 (= (inv!85725 setElem!47360) (forall!16018 (exprs!6642 setElem!47360) lambda!398185))))

(declare-fun bs!1860115 () Bool)

(assert (= bs!1860115 d!2172347))

(declare-fun m!7662664 () Bool)

(assert (=> bs!1860115 m!7662664))

(assert (=> setNonEmpty!47360 d!2172347))

(declare-fun b!6977226 () Bool)

(declare-fun e!4193274 () Bool)

(declare-fun tp!1927292 () Bool)

(declare-fun tp!1927293 () Bool)

(assert (=> b!6977226 (= e!4193274 (and tp!1927292 tp!1927293))))

(assert (=> b!6977165 (= tp!1927274 e!4193274)))

(assert (= (and b!6977165 (is-Cons!66860 (exprs!6642 setElem!47360))) b!6977226))

(declare-fun b!6977227 () Bool)

(declare-fun e!4193275 () Bool)

(declare-fun tp!1927294 () Bool)

(declare-fun tp!1927295 () Bool)

(assert (=> b!6977227 (= e!4193275 (and tp!1927294 tp!1927295))))

(assert (=> b!6977162 (= tp!1927273 e!4193275)))

(assert (= (and b!6977162 (is-Cons!66860 (exprs!6642 ct2!306))) b!6977227))

(declare-fun condSetEmpty!47366 () Bool)

(assert (=> setNonEmpty!47360 (= condSetEmpty!47366 (= setRest!47360 (as set.empty (Set Context!12284))))))

(declare-fun setRes!47366 () Bool)

(assert (=> setNonEmpty!47360 (= tp!1927275 setRes!47366)))

(declare-fun setIsEmpty!47366 () Bool)

(assert (=> setIsEmpty!47366 setRes!47366))

(declare-fun setElem!47366 () Context!12284)

(declare-fun tp!1927300 () Bool)

(declare-fun setNonEmpty!47366 () Bool)

(declare-fun e!4193278 () Bool)

(assert (=> setNonEmpty!47366 (= setRes!47366 (and tp!1927300 (inv!85725 setElem!47366) e!4193278))))

(declare-fun setRest!47366 () (Set Context!12284))

(assert (=> setNonEmpty!47366 (= setRest!47360 (set.union (set.insert setElem!47366 (as set.empty (Set Context!12284))) setRest!47366))))

(declare-fun b!6977232 () Bool)

(declare-fun tp!1927301 () Bool)

(assert (=> b!6977232 (= e!4193278 tp!1927301)))

(assert (= (and setNonEmpty!47360 condSetEmpty!47366) setIsEmpty!47366))

(assert (= (and setNonEmpty!47360 (not condSetEmpty!47366)) setNonEmpty!47366))

(assert (= setNonEmpty!47366 b!6977232))

(declare-fun m!7662666 () Bool)

(assert (=> setNonEmpty!47366 m!7662666))

(declare-fun b!6977237 () Bool)

(declare-fun e!4193281 () Bool)

(declare-fun tp!1927304 () Bool)

(assert (=> b!6977237 (= e!4193281 (and tp_is_empty!43517 tp!1927304))))

(assert (=> b!6977163 (= tp!1927272 e!4193281)))

(assert (= (and b!6977163 (is-Cons!66859 (t!380726 s!7408))) b!6977237))

(declare-fun b_lambda!261059 () Bool)

(assert (= b_lambda!261055 (or b!6977161 b_lambda!261059)))

(declare-fun bs!1860116 () Bool)

(declare-fun d!2172349 () Bool)

(assert (= bs!1860116 (and d!2172349 b!6977161)))

(declare-fun lt!2480166 () Unit!160940)

(declare-fun lemmaConcatPreservesForall!483 (List!66984 List!66984 Int) Unit!160940)

(assert (=> bs!1860116 (= lt!2480166 (lemmaConcatPreservesForall!483 (exprs!6642 lt!2480154) (exprs!6642 ct2!306) lambda!398157))))

(declare-fun ++!15092 (List!66984 List!66984) List!66984)

(assert (=> bs!1860116 (= (dynLambda!26668 lambda!398156 lt!2480154) (Context!12285 (++!15092 (exprs!6642 lt!2480154) (exprs!6642 ct2!306))))))

(declare-fun m!7662668 () Bool)

(assert (=> bs!1860116 m!7662668))

(declare-fun m!7662670 () Bool)

(assert (=> bs!1860116 m!7662670))

(assert (=> d!2172329 d!2172349))

(declare-fun b_lambda!261061 () Bool)

(assert (= b_lambda!261057 (or b!6977166 b_lambda!261061)))

(declare-fun bs!1860117 () Bool)

(declare-fun d!2172353 () Bool)

(assert (= bs!1860117 (and d!2172353 b!6977166)))

(assert (=> bs!1860117 (= (dynLambda!26670 lambda!398155 lt!2480160) (matchZipper!2686 (set.insert lt!2480160 (as set.empty (Set Context!12284))) s!7408))))

(declare-fun m!7662672 () Bool)

(assert (=> bs!1860117 m!7662672))

(assert (=> bs!1860117 m!7662672))

(declare-fun m!7662674 () Bool)

(assert (=> bs!1860117 m!7662674))

(assert (=> d!2172335 d!2172353))

(declare-fun b_lambda!261063 () Bool)

(assert (= b_lambda!261053 (or b!6977161 b_lambda!261063)))

(declare-fun bs!1860118 () Bool)

(declare-fun d!2172355 () Bool)

(assert (= bs!1860118 (and d!2172355 b!6977161)))

(declare-fun validRegex!8821 (Regex!17146) Bool)

(assert (=> bs!1860118 (= (dynLambda!26667 lambda!398157 (h!73308 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)))) (validRegex!8821 (h!73308 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)))))))

(declare-fun m!7662676 () Bool)

(assert (=> bs!1860118 m!7662676))

(assert (=> b!6977200 d!2172355))

(push 1)

(assert (not b!6977220))

(assert tp_is_empty!43517)

(assert (not b!6977232))

(assert (not d!2172339))

(assert (not d!2172329))

(assert (not b!6977201))

(assert (not d!2172345))

(assert (not d!2172347))

(assert (not bs!1860118))

(assert (not bs!1860116))

(assert (not b_lambda!261059))

(assert (not bs!1860117))

(assert (not b!6977237))

(assert (not b_lambda!261061))

(assert (not b!6977226))

(assert (not b!6977221))

(assert (not d!2172331))

(assert (not setNonEmpty!47366))

(assert (not d!2172335))

(assert (not d!2172337))

(assert (not b!6977219))

(assert (not b!6977227))

(assert (not d!2172343))

(assert (not d!2172341))

(assert (not b!6977213))

(assert (not b!6977218))

(assert (not b_lambda!261063))

(assert (not d!2172333))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1860131 () Bool)

(declare-fun d!2172377 () Bool)

(assert (= bs!1860131 (and d!2172377 b!6977166)))

(declare-fun lambda!398203 () Int)

(assert (=> bs!1860131 (not (= lambda!398203 lambda!398155))))

(declare-fun bs!1860132 () Bool)

(assert (= bs!1860132 (and d!2172377 d!2172331)))

(assert (=> bs!1860132 (not (= lambda!398203 lambda!398173))))

(declare-fun bs!1860133 () Bool)

(assert (= bs!1860133 (and d!2172377 d!2172333)))

(assert (=> bs!1860133 (not (= lambda!398203 lambda!398176))))

(assert (=> d!2172377 (= (nullableZipper!2383 lt!2480137) (exists!2888 lt!2480137 lambda!398203))))

(declare-fun bs!1860134 () Bool)

(assert (= bs!1860134 d!2172377))

(declare-fun m!7662730 () Bool)

(assert (=> bs!1860134 m!7662730))

(assert (=> b!6977220 d!2172377))

(declare-fun d!2172379 () Bool)

(declare-fun res!2845054 () Bool)

(declare-fun e!4193300 () Bool)

(assert (=> d!2172379 (=> res!2845054 e!4193300)))

(assert (=> d!2172379 (= res!2845054 (is-Nil!66860 (exprs!6642 ct2!306)))))

(assert (=> d!2172379 (= (forall!16018 (exprs!6642 ct2!306) lambda!398184) e!4193300)))

(declare-fun b!6977263 () Bool)

(declare-fun e!4193301 () Bool)

(assert (=> b!6977263 (= e!4193300 e!4193301)))

(declare-fun res!2845055 () Bool)

(assert (=> b!6977263 (=> (not res!2845055) (not e!4193301))))

(assert (=> b!6977263 (= res!2845055 (dynLambda!26667 lambda!398184 (h!73308 (exprs!6642 ct2!306))))))

(declare-fun b!6977264 () Bool)

(assert (=> b!6977264 (= e!4193301 (forall!16018 (t!380727 (exprs!6642 ct2!306)) lambda!398184))))

(assert (= (and d!2172379 (not res!2845054)) b!6977263))

(assert (= (and b!6977263 res!2845055) b!6977264))

(declare-fun b_lambda!261069 () Bool)

(assert (=> (not b_lambda!261069) (not b!6977263)))

(declare-fun m!7662732 () Bool)

(assert (=> b!6977263 m!7662732))

(declare-fun m!7662734 () Bool)

(assert (=> b!6977264 m!7662734))

(assert (=> d!2172345 d!2172379))

(declare-fun bs!1860135 () Bool)

(declare-fun d!2172381 () Bool)

(assert (= bs!1860135 (and d!2172381 b!6977166)))

(declare-fun lambda!398204 () Int)

(assert (=> bs!1860135 (not (= lambda!398204 lambda!398155))))

(declare-fun bs!1860136 () Bool)

(assert (= bs!1860136 (and d!2172381 d!2172331)))

(assert (=> bs!1860136 (not (= lambda!398204 lambda!398173))))

(declare-fun bs!1860137 () Bool)

(assert (= bs!1860137 (and d!2172381 d!2172333)))

(assert (=> bs!1860137 (not (= lambda!398204 lambda!398176))))

(declare-fun bs!1860138 () Bool)

(assert (= bs!1860138 (and d!2172381 d!2172377)))

(assert (=> bs!1860138 (= lambda!398204 lambda!398203)))

(assert (=> d!2172381 (= (nullableZipper!2383 (set.insert lt!2480135 (as set.empty (Set Context!12284)))) (exists!2888 (set.insert lt!2480135 (as set.empty (Set Context!12284))) lambda!398204))))

(declare-fun bs!1860139 () Bool)

(assert (= bs!1860139 d!2172381))

(assert (=> bs!1860139 m!7662552))

(declare-fun m!7662740 () Bool)

(assert (=> bs!1860139 m!7662740))

(assert (=> b!6977218 d!2172381))

(declare-fun bs!1860140 () Bool)

(declare-fun d!2172383 () Bool)

(assert (= bs!1860140 (and d!2172383 b!6977161)))

(declare-fun lambda!398205 () Int)

(assert (=> bs!1860140 (= lambda!398205 lambda!398157)))

(declare-fun bs!1860141 () Bool)

(assert (= bs!1860141 (and d!2172383 d!2172345)))

(assert (=> bs!1860141 (= lambda!398205 lambda!398184)))

(declare-fun bs!1860142 () Bool)

(assert (= bs!1860142 (and d!2172383 d!2172347)))

(assert (=> bs!1860142 (= lambda!398205 lambda!398185)))

(assert (=> d!2172383 (= (inv!85725 setElem!47366) (forall!16018 (exprs!6642 setElem!47366) lambda!398205))))

(declare-fun bs!1860143 () Bool)

(assert (= bs!1860143 d!2172383))

(declare-fun m!7662748 () Bool)

(assert (=> bs!1860143 m!7662748))

(assert (=> setNonEmpty!47366 d!2172383))

(declare-fun d!2172385 () Bool)

(declare-fun c!1293234 () Bool)

(assert (=> d!2172385 (= c!1293234 (isEmpty!39039 (tail!13119 s!7408)))))

(declare-fun e!4193305 () Bool)

(assert (=> d!2172385 (= (matchZipper!2686 (derivationStepZipper!2630 lt!2480137 (head!14051 s!7408)) (tail!13119 s!7408)) e!4193305)))

(declare-fun b!6977270 () Bool)

(assert (=> b!6977270 (= e!4193305 (nullableZipper!2383 (derivationStepZipper!2630 lt!2480137 (head!14051 s!7408))))))

(declare-fun b!6977271 () Bool)

(assert (=> b!6977271 (= e!4193305 (matchZipper!2686 (derivationStepZipper!2630 (derivationStepZipper!2630 lt!2480137 (head!14051 s!7408)) (head!14051 (tail!13119 s!7408))) (tail!13119 (tail!13119 s!7408))))))

(assert (= (and d!2172385 c!1293234) b!6977270))

(assert (= (and d!2172385 (not c!1293234)) b!6977271))

(assert (=> d!2172385 m!7662650))

(declare-fun m!7662750 () Bool)

(assert (=> d!2172385 m!7662750))

(assert (=> b!6977270 m!7662656))

(declare-fun m!7662752 () Bool)

(assert (=> b!6977270 m!7662752))

(assert (=> b!6977271 m!7662650))

(declare-fun m!7662754 () Bool)

(assert (=> b!6977271 m!7662754))

(assert (=> b!6977271 m!7662656))

(assert (=> b!6977271 m!7662754))

(declare-fun m!7662756 () Bool)

(assert (=> b!6977271 m!7662756))

(assert (=> b!6977271 m!7662650))

(declare-fun m!7662758 () Bool)

(assert (=> b!6977271 m!7662758))

(assert (=> b!6977271 m!7662756))

(assert (=> b!6977271 m!7662758))

(declare-fun m!7662760 () Bool)

(assert (=> b!6977271 m!7662760))

(assert (=> b!6977221 d!2172385))

(declare-fun d!2172387 () Bool)

(assert (=> d!2172387 true))

(declare-fun lambda!398208 () Int)

(declare-fun flatMap!2145 ((Set Context!12284) Int) (Set Context!12284))

(assert (=> d!2172387 (= (derivationStepZipper!2630 lt!2480137 (head!14051 s!7408)) (flatMap!2145 lt!2480137 lambda!398208))))

(declare-fun bs!1860144 () Bool)

(assert (= bs!1860144 d!2172387))

(declare-fun m!7662762 () Bool)

(assert (=> bs!1860144 m!7662762))

(assert (=> b!6977221 d!2172387))

(declare-fun d!2172389 () Bool)

(assert (=> d!2172389 (= (head!14051 s!7408) (h!73307 s!7408))))

(assert (=> b!6977221 d!2172389))

(declare-fun d!2172391 () Bool)

(assert (=> d!2172391 (= (tail!13119 s!7408) (t!380726 s!7408))))

(assert (=> b!6977221 d!2172391))

(declare-fun d!2172393 () Bool)

(declare-fun c!1293239 () Bool)

(assert (=> d!2172393 (= c!1293239 (is-Nil!66861 lt!2480163))))

(declare-fun e!4193316 () (Set Context!12284))

(assert (=> d!2172393 (= (content!13164 lt!2480163) e!4193316)))

(declare-fun b!6977290 () Bool)

(assert (=> b!6977290 (= e!4193316 (as set.empty (Set Context!12284)))))

(declare-fun b!6977291 () Bool)

(assert (=> b!6977291 (= e!4193316 (set.union (set.insert (h!73309 lt!2480163) (as set.empty (Set Context!12284))) (content!13164 (t!380728 lt!2480163))))))

(assert (= (and d!2172393 c!1293239) b!6977290))

(assert (= (and d!2172393 (not c!1293239)) b!6977291))

(declare-fun m!7662766 () Bool)

(assert (=> b!6977291 m!7662766))

(declare-fun m!7662768 () Bool)

(assert (=> b!6977291 m!7662768))

(assert (=> b!6977213 d!2172393))

(declare-fun b!6977304 () Bool)

(declare-fun e!4193327 () Bool)

(declare-fun lt!2480187 () Context!12284)

(declare-fun contains!20404 (List!66985 Context!12284) Bool)

(assert (=> b!6977304 (= e!4193327 (contains!20404 (toList!10506 lt!2480137) lt!2480187))))

(declare-fun b!6977305 () Bool)

(declare-fun e!4193326 () Context!12284)

(assert (=> b!6977305 (= e!4193326 (h!73309 (toList!10506 lt!2480137)))))

(declare-fun b!6977306 () Bool)

(declare-fun lt!2480186 () Unit!160940)

(declare-fun Unit!160944 () Unit!160940)

(assert (=> b!6977306 (= lt!2480186 Unit!160944)))

(assert (=> b!6977306 false))

(declare-fun e!4193325 () Context!12284)

(declare-fun head!14053 (List!66985) Context!12284)

(assert (=> b!6977306 (= e!4193325 (head!14053 (toList!10506 lt!2480137)))))

(declare-fun b!6977307 () Bool)

(declare-fun e!4193328 () Bool)

(assert (=> b!6977307 (= e!4193328 (dynLambda!26670 lambda!398155 (h!73309 (toList!10506 lt!2480137))))))

(declare-fun b!6977308 () Bool)

(assert (=> b!6977308 (= e!4193325 (getWitness!999 (t!380728 (toList!10506 lt!2480137)) lambda!398155))))

(declare-fun b!6977309 () Bool)

(assert (=> b!6977309 (= e!4193326 e!4193325)))

(declare-fun c!1293245 () Bool)

(assert (=> b!6977309 (= c!1293245 (is-Cons!66861 (toList!10506 lt!2480137)))))

(declare-fun d!2172397 () Bool)

(assert (=> d!2172397 e!4193327))

(declare-fun res!2845062 () Bool)

(assert (=> d!2172397 (=> (not res!2845062) (not e!4193327))))

(assert (=> d!2172397 (= res!2845062 (dynLambda!26670 lambda!398155 lt!2480187))))

(assert (=> d!2172397 (= lt!2480187 e!4193326)))

(declare-fun c!1293244 () Bool)

(assert (=> d!2172397 (= c!1293244 e!4193328)))

(declare-fun res!2845061 () Bool)

(assert (=> d!2172397 (=> (not res!2845061) (not e!4193328))))

(assert (=> d!2172397 (= res!2845061 (is-Cons!66861 (toList!10506 lt!2480137)))))

(assert (=> d!2172397 (exists!2886 (toList!10506 lt!2480137) lambda!398155)))

(assert (=> d!2172397 (= (getWitness!999 (toList!10506 lt!2480137) lambda!398155) lt!2480187)))

(assert (= (and d!2172397 res!2845061) b!6977307))

(assert (= (and d!2172397 c!1293244) b!6977305))

(assert (= (and d!2172397 (not c!1293244)) b!6977309))

(assert (= (and b!6977309 c!1293245) b!6977308))

(assert (= (and b!6977309 (not c!1293245)) b!6977306))

(assert (= (and d!2172397 res!2845062) b!6977304))

(declare-fun b_lambda!261079 () Bool)

(assert (=> (not b_lambda!261079) (not b!6977307)))

(declare-fun b_lambda!261081 () Bool)

(assert (=> (not b_lambda!261081) (not d!2172397)))

(declare-fun m!7662780 () Bool)

(assert (=> b!6977307 m!7662780))

(assert (=> b!6977304 m!7662562))

(declare-fun m!7662782 () Bool)

(assert (=> b!6977304 m!7662782))

(declare-fun m!7662784 () Bool)

(assert (=> d!2172397 m!7662784))

(assert (=> d!2172397 m!7662562))

(declare-fun m!7662786 () Bool)

(assert (=> d!2172397 m!7662786))

(declare-fun m!7662788 () Bool)

(assert (=> b!6977308 m!7662788))

(assert (=> b!6977306 m!7662562))

(declare-fun m!7662790 () Bool)

(assert (=> b!6977306 m!7662790))

(assert (=> d!2172335 d!2172397))

(assert (=> d!2172335 d!2172337))

(declare-fun d!2172403 () Bool)

(declare-fun lt!2480190 () Bool)

(assert (=> d!2172403 (= lt!2480190 (exists!2886 (toList!10506 lt!2480137) lambda!398155))))

(declare-fun choose!51942 ((Set Context!12284) Int) Bool)

(assert (=> d!2172403 (= lt!2480190 (choose!51942 lt!2480137 lambda!398155))))

(assert (=> d!2172403 (= (exists!2888 lt!2480137 lambda!398155) lt!2480190)))

(declare-fun bs!1860148 () Bool)

(assert (= bs!1860148 d!2172403))

(assert (=> bs!1860148 m!7662562))

(assert (=> bs!1860148 m!7662562))

(assert (=> bs!1860148 m!7662786))

(declare-fun m!7662792 () Bool)

(assert (=> bs!1860148 m!7662792))

(assert (=> d!2172335 d!2172403))

(declare-fun d!2172405 () Bool)

(assert (=> d!2172405 (= (isEmpty!39039 s!7408) (is-Nil!66859 s!7408))))

(assert (=> d!2172341 d!2172405))

(declare-fun d!2172407 () Bool)

(assert (=> d!2172407 (forall!16018 (++!15092 (exprs!6642 lt!2480154) (exprs!6642 ct2!306)) lambda!398157)))

(declare-fun lt!2480193 () Unit!160940)

(declare-fun choose!51943 (List!66984 List!66984 Int) Unit!160940)

(assert (=> d!2172407 (= lt!2480193 (choose!51943 (exprs!6642 lt!2480154) (exprs!6642 ct2!306) lambda!398157))))

(assert (=> d!2172407 (forall!16018 (exprs!6642 lt!2480154) lambda!398157)))

(assert (=> d!2172407 (= (lemmaConcatPreservesForall!483 (exprs!6642 lt!2480154) (exprs!6642 ct2!306) lambda!398157) lt!2480193)))

(declare-fun bs!1860149 () Bool)

(assert (= bs!1860149 d!2172407))

(assert (=> bs!1860149 m!7662670))

(assert (=> bs!1860149 m!7662670))

(declare-fun m!7662794 () Bool)

(assert (=> bs!1860149 m!7662794))

(declare-fun m!7662796 () Bool)

(assert (=> bs!1860149 m!7662796))

(declare-fun m!7662798 () Bool)

(assert (=> bs!1860149 m!7662798))

(assert (=> bs!1860116 d!2172407))

(declare-fun d!2172409 () Bool)

(declare-fun e!4193333 () Bool)

(assert (=> d!2172409 e!4193333))

(declare-fun res!2845067 () Bool)

(assert (=> d!2172409 (=> (not res!2845067) (not e!4193333))))

(declare-fun lt!2480196 () List!66984)

(declare-fun content!13166 (List!66984) (Set Regex!17146))

(assert (=> d!2172409 (= res!2845067 (= (content!13166 lt!2480196) (set.union (content!13166 (exprs!6642 lt!2480154)) (content!13166 (exprs!6642 ct2!306)))))))

(declare-fun e!4193334 () List!66984)

(assert (=> d!2172409 (= lt!2480196 e!4193334)))

(declare-fun c!1293248 () Bool)

(assert (=> d!2172409 (= c!1293248 (is-Nil!66860 (exprs!6642 lt!2480154)))))

(assert (=> d!2172409 (= (++!15092 (exprs!6642 lt!2480154) (exprs!6642 ct2!306)) lt!2480196)))

(declare-fun b!6977320 () Bool)

(declare-fun res!2845068 () Bool)

(assert (=> b!6977320 (=> (not res!2845068) (not e!4193333))))

(declare-fun size!40858 (List!66984) Int)

(assert (=> b!6977320 (= res!2845068 (= (size!40858 lt!2480196) (+ (size!40858 (exprs!6642 lt!2480154)) (size!40858 (exprs!6642 ct2!306)))))))

(declare-fun b!6977319 () Bool)

(assert (=> b!6977319 (= e!4193334 (Cons!66860 (h!73308 (exprs!6642 lt!2480154)) (++!15092 (t!380727 (exprs!6642 lt!2480154)) (exprs!6642 ct2!306))))))

(declare-fun b!6977318 () Bool)

(assert (=> b!6977318 (= e!4193334 (exprs!6642 ct2!306))))

(declare-fun b!6977321 () Bool)

(assert (=> b!6977321 (= e!4193333 (or (not (= (exprs!6642 ct2!306) Nil!66860)) (= lt!2480196 (exprs!6642 lt!2480154))))))

(assert (= (and d!2172409 c!1293248) b!6977318))

(assert (= (and d!2172409 (not c!1293248)) b!6977319))

(assert (= (and d!2172409 res!2845067) b!6977320))

(assert (= (and b!6977320 res!2845068) b!6977321))

(declare-fun m!7662800 () Bool)

(assert (=> d!2172409 m!7662800))

(declare-fun m!7662802 () Bool)

(assert (=> d!2172409 m!7662802))

(declare-fun m!7662804 () Bool)

(assert (=> d!2172409 m!7662804))

(declare-fun m!7662806 () Bool)

(assert (=> b!6977320 m!7662806))

(declare-fun m!7662808 () Bool)

(assert (=> b!6977320 m!7662808))

(declare-fun m!7662810 () Bool)

(assert (=> b!6977320 m!7662810))

(declare-fun m!7662812 () Bool)

(assert (=> b!6977319 m!7662812))

(assert (=> bs!1860116 d!2172409))

(declare-fun d!2172411 () Bool)

(declare-fun res!2845073 () Bool)

(declare-fun e!4193339 () Bool)

(assert (=> d!2172411 (=> res!2845073 e!4193339)))

(assert (=> d!2172411 (= res!2845073 (is-Nil!66861 lt!2480134))))

(assert (=> d!2172411 (= (forall!16020 lt!2480134 lambda!398176) e!4193339)))

(declare-fun b!6977326 () Bool)

(declare-fun e!4193340 () Bool)

(assert (=> b!6977326 (= e!4193339 e!4193340)))

(declare-fun res!2845074 () Bool)

(assert (=> b!6977326 (=> (not res!2845074) (not e!4193340))))

(assert (=> b!6977326 (= res!2845074 (dynLambda!26670 lambda!398176 (h!73309 lt!2480134)))))

(declare-fun b!6977327 () Bool)

(assert (=> b!6977327 (= e!4193340 (forall!16020 (t!380728 lt!2480134) lambda!398176))))

(assert (= (and d!2172411 (not res!2845073)) b!6977326))

(assert (= (and b!6977326 res!2845074) b!6977327))

(declare-fun b_lambda!261083 () Bool)

(assert (=> (not b_lambda!261083) (not b!6977326)))

(declare-fun m!7662814 () Bool)

(assert (=> b!6977326 m!7662814))

(declare-fun m!7662816 () Bool)

(assert (=> b!6977327 m!7662816))

(assert (=> d!2172333 d!2172411))

(declare-fun d!2172413 () Bool)

(declare-fun res!2845079 () Bool)

(declare-fun e!4193345 () Bool)

(assert (=> d!2172413 (=> res!2845079 e!4193345)))

(assert (=> d!2172413 (= res!2845079 (is-Nil!66861 lt!2480163))))

(assert (=> d!2172413 (= (noDuplicate!2474 lt!2480163) e!4193345)))

(declare-fun b!6977332 () Bool)

(declare-fun e!4193346 () Bool)

(assert (=> b!6977332 (= e!4193345 e!4193346)))

(declare-fun res!2845080 () Bool)

(assert (=> b!6977332 (=> (not res!2845080) (not e!4193346))))

(assert (=> b!6977332 (= res!2845080 (not (contains!20404 (t!380728 lt!2480163) (h!73309 lt!2480163))))))

(declare-fun b!6977333 () Bool)

(assert (=> b!6977333 (= e!4193346 (noDuplicate!2474 (t!380728 lt!2480163)))))

(assert (= (and d!2172413 (not res!2845079)) b!6977332))

(assert (= (and b!6977332 res!2845080) b!6977333))

(declare-fun m!7662818 () Bool)

(assert (=> b!6977332 m!7662818))

(declare-fun m!7662820 () Bool)

(assert (=> b!6977333 m!7662820))

(assert (=> d!2172337 d!2172413))

(declare-fun d!2172415 () Bool)

(declare-fun e!4193354 () Bool)

(assert (=> d!2172415 e!4193354))

(declare-fun res!2845086 () Bool)

(assert (=> d!2172415 (=> (not res!2845086) (not e!4193354))))

(declare-fun res!2845085 () List!66985)

(assert (=> d!2172415 (= res!2845086 (noDuplicate!2474 res!2845085))))

(declare-fun e!4193353 () Bool)

(assert (=> d!2172415 e!4193353))

(assert (=> d!2172415 (= (choose!51938 lt!2480137) res!2845085)))

(declare-fun b!6977341 () Bool)

(declare-fun e!4193355 () Bool)

(declare-fun tp!1927326 () Bool)

(assert (=> b!6977341 (= e!4193355 tp!1927326)))

(declare-fun tp!1927327 () Bool)

(declare-fun b!6977340 () Bool)

(assert (=> b!6977340 (= e!4193353 (and (inv!85725 (h!73309 res!2845085)) e!4193355 tp!1927327))))

(declare-fun b!6977342 () Bool)

(assert (=> b!6977342 (= e!4193354 (= (content!13164 res!2845085) lt!2480137))))

(assert (= b!6977340 b!6977341))

(assert (= (and d!2172415 (is-Cons!66861 res!2845085)) b!6977340))

(assert (= (and d!2172415 res!2845086) b!6977342))

(declare-fun m!7662822 () Bool)

(assert (=> d!2172415 m!7662822))

(declare-fun m!7662824 () Bool)

(assert (=> b!6977340 m!7662824))

(declare-fun m!7662826 () Bool)

(assert (=> b!6977342 m!7662826))

(assert (=> d!2172337 d!2172415))

(declare-fun d!2172417 () Bool)

(declare-fun choose!51944 ((Set Context!12284) Int) (Set Context!12284))

(assert (=> d!2172417 (= (map!15395 z1!570 lambda!398181) (choose!51944 z1!570 lambda!398181))))

(declare-fun bs!1860150 () Bool)

(assert (= bs!1860150 d!2172417))

(declare-fun m!7662828 () Bool)

(assert (=> bs!1860150 m!7662828))

(assert (=> d!2172343 d!2172417))

(declare-fun d!2172419 () Bool)

(declare-fun res!2845087 () Bool)

(declare-fun e!4193356 () Bool)

(assert (=> d!2172419 (=> res!2845087 e!4193356)))

(assert (=> d!2172419 (= res!2845087 (is-Nil!66860 (t!380727 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)))))))

(assert (=> d!2172419 (= (forall!16018 (t!380727 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135))) lambda!398157) e!4193356)))

(declare-fun b!6977343 () Bool)

(declare-fun e!4193357 () Bool)

(assert (=> b!6977343 (= e!4193356 e!4193357)))

(declare-fun res!2845088 () Bool)

(assert (=> b!6977343 (=> (not res!2845088) (not e!4193357))))

(assert (=> b!6977343 (= res!2845088 (dynLambda!26667 lambda!398157 (h!73308 (t!380727 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135))))))))

(declare-fun b!6977344 () Bool)

(assert (=> b!6977344 (= e!4193357 (forall!16018 (t!380727 (t!380727 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)))) lambda!398157))))

(assert (= (and d!2172419 (not res!2845087)) b!6977343))

(assert (= (and b!6977343 res!2845088) b!6977344))

(declare-fun b_lambda!261085 () Bool)

(assert (=> (not b_lambda!261085) (not b!6977343)))

(declare-fun m!7662830 () Bool)

(assert (=> b!6977343 m!7662830))

(declare-fun m!7662832 () Bool)

(assert (=> b!6977344 m!7662832))

(assert (=> b!6977201 d!2172419))

(assert (=> d!2172339 d!2172405))

(declare-fun bs!1860151 () Bool)

(declare-fun d!2172421 () Bool)

(assert (= bs!1860151 (and d!2172421 d!2172331)))

(declare-fun lambda!398209 () Int)

(assert (=> bs!1860151 (not (= lambda!398209 lambda!398173))))

(declare-fun bs!1860152 () Bool)

(assert (= bs!1860152 (and d!2172421 d!2172377)))

(assert (=> bs!1860152 (not (= lambda!398209 lambda!398203))))

(declare-fun bs!1860153 () Bool)

(assert (= bs!1860153 (and d!2172421 b!6977166)))

(assert (=> bs!1860153 (not (= lambda!398209 lambda!398155))))

(declare-fun bs!1860154 () Bool)

(assert (= bs!1860154 (and d!2172421 d!2172333)))

(assert (=> bs!1860154 (= (= lambda!398173 lambda!398155) (= lambda!398209 lambda!398176))))

(declare-fun bs!1860155 () Bool)

(assert (= bs!1860155 (and d!2172421 d!2172381)))

(assert (=> bs!1860155 (not (= lambda!398209 lambda!398204))))

(assert (=> d!2172421 true))

(assert (=> d!2172421 (< (dynLambda!26669 order!27797 lambda!398173) (dynLambda!26669 order!27797 lambda!398209))))

(assert (=> d!2172421 (= (exists!2886 lt!2480134 lambda!398173) (not (forall!16020 lt!2480134 lambda!398209)))))

(declare-fun bs!1860156 () Bool)

(assert (= bs!1860156 d!2172421))

(declare-fun m!7662834 () Bool)

(assert (=> bs!1860156 m!7662834))

(assert (=> d!2172331 d!2172421))

(declare-fun bs!1860157 () Bool)

(declare-fun d!2172423 () Bool)

(assert (= bs!1860157 (and d!2172423 d!2172331)))

(declare-fun lambda!398212 () Int)

(assert (=> bs!1860157 (= lambda!398212 lambda!398173)))

(declare-fun bs!1860158 () Bool)

(assert (= bs!1860158 (and d!2172423 d!2172377)))

(assert (=> bs!1860158 (not (= lambda!398212 lambda!398203))))

(declare-fun bs!1860159 () Bool)

(assert (= bs!1860159 (and d!2172423 b!6977166)))

(assert (=> bs!1860159 (= lambda!398212 lambda!398155)))

(declare-fun bs!1860160 () Bool)

(assert (= bs!1860160 (and d!2172423 d!2172421)))

(assert (=> bs!1860160 (not (= lambda!398212 lambda!398209))))

(declare-fun bs!1860161 () Bool)

(assert (= bs!1860161 (and d!2172423 d!2172333)))

(assert (=> bs!1860161 (not (= lambda!398212 lambda!398176))))

(declare-fun bs!1860162 () Bool)

(assert (= bs!1860162 (and d!2172423 d!2172381)))

(assert (=> bs!1860162 (not (= lambda!398212 lambda!398204))))

(assert (=> d!2172423 true))

(assert (=> d!2172423 (exists!2886 lt!2480134 lambda!398212)))

(assert (=> d!2172423 true))

(declare-fun _$60!1030 () Unit!160940)

(assert (=> d!2172423 (= (choose!51937 lt!2480134 s!7408) _$60!1030)))

(declare-fun bs!1860163 () Bool)

(assert (= bs!1860163 d!2172423))

(declare-fun m!7662836 () Bool)

(assert (=> bs!1860163 m!7662836))

(assert (=> d!2172331 d!2172423))

(declare-fun d!2172425 () Bool)

(declare-fun c!1293251 () Bool)

(assert (=> d!2172425 (= c!1293251 (isEmpty!39039 s!7408))))

(declare-fun e!4193358 () Bool)

(assert (=> d!2172425 (= (matchZipper!2686 (content!13164 lt!2480134) s!7408) e!4193358)))

(declare-fun b!6977345 () Bool)

(assert (=> b!6977345 (= e!4193358 (nullableZipper!2383 (content!13164 lt!2480134)))))

(declare-fun b!6977346 () Bool)

(assert (=> b!6977346 (= e!4193358 (matchZipper!2686 (derivationStepZipper!2630 (content!13164 lt!2480134) (head!14051 s!7408)) (tail!13119 s!7408)))))

(assert (= (and d!2172425 c!1293251) b!6977345))

(assert (= (and d!2172425 (not c!1293251)) b!6977346))

(assert (=> d!2172425 m!7662642))

(assert (=> b!6977345 m!7662622))

(declare-fun m!7662838 () Bool)

(assert (=> b!6977345 m!7662838))

(assert (=> b!6977346 m!7662646))

(assert (=> b!6977346 m!7662622))

(assert (=> b!6977346 m!7662646))

(declare-fun m!7662840 () Bool)

(assert (=> b!6977346 m!7662840))

(assert (=> b!6977346 m!7662650))

(assert (=> b!6977346 m!7662840))

(assert (=> b!6977346 m!7662650))

(declare-fun m!7662842 () Bool)

(assert (=> b!6977346 m!7662842))

(assert (=> d!2172331 d!2172425))

(declare-fun d!2172427 () Bool)

(declare-fun c!1293252 () Bool)

(assert (=> d!2172427 (= c!1293252 (is-Nil!66861 lt!2480134))))

(declare-fun e!4193359 () (Set Context!12284))

(assert (=> d!2172427 (= (content!13164 lt!2480134) e!4193359)))

(declare-fun b!6977347 () Bool)

(assert (=> b!6977347 (= e!4193359 (as set.empty (Set Context!12284)))))

(declare-fun b!6977348 () Bool)

(assert (=> b!6977348 (= e!4193359 (set.union (set.insert (h!73309 lt!2480134) (as set.empty (Set Context!12284))) (content!13164 (t!380728 lt!2480134))))))

(assert (= (and d!2172427 c!1293252) b!6977347))

(assert (= (and d!2172427 (not c!1293252)) b!6977348))

(declare-fun m!7662844 () Bool)

(assert (=> b!6977348 m!7662844))

(declare-fun m!7662846 () Bool)

(assert (=> b!6977348 m!7662846))

(assert (=> d!2172331 d!2172427))

(declare-fun d!2172429 () Bool)

(declare-fun c!1293253 () Bool)

(assert (=> d!2172429 (= c!1293253 (isEmpty!39039 s!7408))))

(declare-fun e!4193360 () Bool)

(assert (=> d!2172429 (= (matchZipper!2686 (set.insert lt!2480160 (as set.empty (Set Context!12284))) s!7408) e!4193360)))

(declare-fun b!6977349 () Bool)

(assert (=> b!6977349 (= e!4193360 (nullableZipper!2383 (set.insert lt!2480160 (as set.empty (Set Context!12284)))))))

(declare-fun b!6977350 () Bool)

(assert (=> b!6977350 (= e!4193360 (matchZipper!2686 (derivationStepZipper!2630 (set.insert lt!2480160 (as set.empty (Set Context!12284))) (head!14051 s!7408)) (tail!13119 s!7408)))))

(assert (= (and d!2172429 c!1293253) b!6977349))

(assert (= (and d!2172429 (not c!1293253)) b!6977350))

(assert (=> d!2172429 m!7662642))

(assert (=> b!6977349 m!7662672))

(declare-fun m!7662848 () Bool)

(assert (=> b!6977349 m!7662848))

(assert (=> b!6977350 m!7662646))

(assert (=> b!6977350 m!7662672))

(assert (=> b!6977350 m!7662646))

(declare-fun m!7662850 () Bool)

(assert (=> b!6977350 m!7662850))

(assert (=> b!6977350 m!7662650))

(assert (=> b!6977350 m!7662850))

(assert (=> b!6977350 m!7662650))

(declare-fun m!7662852 () Bool)

(assert (=> b!6977350 m!7662852))

(assert (=> bs!1860117 d!2172429))

(declare-fun d!2172431 () Bool)

(declare-fun e!4193365 () Bool)

(assert (=> d!2172431 e!4193365))

(declare-fun res!2845091 () Bool)

(assert (=> d!2172431 (=> (not res!2845091) (not e!4193365))))

(declare-fun a!12572 () Context!12284)

(assert (=> d!2172431 (= res!2845091 (= lt!2480135 (dynLambda!26668 lambda!398156 a!12572)))))

(declare-fun e!4193366 () Bool)

(assert (=> d!2172431 (and (inv!85725 a!12572) e!4193366)))

(assert (=> d!2172431 (= (choose!51936 z1!570 lambda!398156 lt!2480135) a!12572)))

(declare-fun b!6977356 () Bool)

(declare-fun tp!1927330 () Bool)

(assert (=> b!6977356 (= e!4193366 tp!1927330)))

(declare-fun b!6977357 () Bool)

(assert (=> b!6977357 (= e!4193365 (set.member a!12572 z1!570))))

(assert (= d!2172431 b!6977356))

(assert (= (and d!2172431 res!2845091) b!6977357))

(declare-fun b_lambda!261087 () Bool)

(assert (=> (not b_lambda!261087) (not d!2172431)))

(declare-fun m!7662854 () Bool)

(assert (=> d!2172431 m!7662854))

(declare-fun m!7662856 () Bool)

(assert (=> d!2172431 m!7662856))

(declare-fun m!7662858 () Bool)

(assert (=> b!6977357 m!7662858))

(assert (=> d!2172329 d!2172431))

(declare-fun d!2172433 () Bool)

(assert (=> d!2172433 (= (map!15395 z1!570 lambda!398156) (choose!51944 z1!570 lambda!398156))))

(declare-fun bs!1860164 () Bool)

(assert (= bs!1860164 d!2172433))

(declare-fun m!7662860 () Bool)

(assert (=> bs!1860164 m!7662860))

(assert (=> d!2172329 d!2172433))

(declare-fun d!2172435 () Bool)

(declare-fun res!2845092 () Bool)

(declare-fun e!4193367 () Bool)

(assert (=> d!2172435 (=> res!2845092 e!4193367)))

(assert (=> d!2172435 (= res!2845092 (is-Nil!66860 (exprs!6642 setElem!47360)))))

(assert (=> d!2172435 (= (forall!16018 (exprs!6642 setElem!47360) lambda!398185) e!4193367)))

(declare-fun b!6977358 () Bool)

(declare-fun e!4193368 () Bool)

(assert (=> b!6977358 (= e!4193367 e!4193368)))

(declare-fun res!2845093 () Bool)

(assert (=> b!6977358 (=> (not res!2845093) (not e!4193368))))

(assert (=> b!6977358 (= res!2845093 (dynLambda!26667 lambda!398185 (h!73308 (exprs!6642 setElem!47360))))))

(declare-fun b!6977359 () Bool)

(assert (=> b!6977359 (= e!4193368 (forall!16018 (t!380727 (exprs!6642 setElem!47360)) lambda!398185))))

(assert (= (and d!2172435 (not res!2845092)) b!6977358))

(assert (= (and b!6977358 res!2845093) b!6977359))

(declare-fun b_lambda!261089 () Bool)

(assert (=> (not b_lambda!261089) (not b!6977358)))

(declare-fun m!7662862 () Bool)

(assert (=> b!6977358 m!7662862))

(declare-fun m!7662864 () Bool)

(assert (=> b!6977359 m!7662864))

(assert (=> d!2172347 d!2172435))

(declare-fun b!6977378 () Bool)

(declare-fun e!4193389 () Bool)

(declare-fun call!633239 () Bool)

(assert (=> b!6977378 (= e!4193389 call!633239)))

(declare-fun c!1293258 () Bool)

(declare-fun call!633238 () Bool)

(declare-fun bm!633233 () Bool)

(assert (=> bm!633233 (= call!633238 (validRegex!8821 (ite c!1293258 (regTwo!34805 (h!73308 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)))) (regTwo!34804 (h!73308 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)))))))))

(declare-fun c!1293259 () Bool)

(declare-fun bm!633234 () Bool)

(assert (=> bm!633234 (= call!633239 (validRegex!8821 (ite c!1293259 (reg!17475 (h!73308 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)))) (ite c!1293258 (regOne!34805 (h!73308 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)))) (regOne!34804 (h!73308 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135))))))))))

(declare-fun b!6977379 () Bool)

(declare-fun e!4193385 () Bool)

(declare-fun e!4193386 () Bool)

(assert (=> b!6977379 (= e!4193385 e!4193386)))

(assert (=> b!6977379 (= c!1293258 (is-Union!17146 (h!73308 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)))))))

(declare-fun d!2172437 () Bool)

(declare-fun res!2845104 () Bool)

(declare-fun e!4193388 () Bool)

(assert (=> d!2172437 (=> res!2845104 e!4193388)))

(assert (=> d!2172437 (= res!2845104 (is-ElementMatch!17146 (h!73308 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)))))))

(assert (=> d!2172437 (= (validRegex!8821 (h!73308 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)))) e!4193388)))

(declare-fun b!6977380 () Bool)

(declare-fun e!4193384 () Bool)

(declare-fun e!4193383 () Bool)

(assert (=> b!6977380 (= e!4193384 e!4193383)))

(declare-fun res!2845107 () Bool)

(assert (=> b!6977380 (=> (not res!2845107) (not e!4193383))))

(declare-fun call!633240 () Bool)

(assert (=> b!6977380 (= res!2845107 call!633240)))

(declare-fun b!6977381 () Bool)

(assert (=> b!6977381 (= e!4193388 e!4193385)))

(assert (=> b!6977381 (= c!1293259 (is-Star!17146 (h!73308 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)))))))

(declare-fun b!6977382 () Bool)

(declare-fun res!2845106 () Bool)

(declare-fun e!4193387 () Bool)

(assert (=> b!6977382 (=> (not res!2845106) (not e!4193387))))

(assert (=> b!6977382 (= res!2845106 call!633240)))

(assert (=> b!6977382 (= e!4193386 e!4193387)))

(declare-fun b!6977383 () Bool)

(assert (=> b!6977383 (= e!4193383 call!633238)))

(declare-fun b!6977384 () Bool)

(declare-fun res!2845105 () Bool)

(assert (=> b!6977384 (=> res!2845105 e!4193384)))

(assert (=> b!6977384 (= res!2845105 (not (is-Concat!25991 (h!73308 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135))))))))

(assert (=> b!6977384 (= e!4193386 e!4193384)))

(declare-fun b!6977385 () Bool)

(assert (=> b!6977385 (= e!4193385 e!4193389)))

(declare-fun res!2845108 () Bool)

(declare-fun nullable!6921 (Regex!17146) Bool)

(assert (=> b!6977385 (= res!2845108 (not (nullable!6921 (reg!17475 (h!73308 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135)))))))))

(assert (=> b!6977385 (=> (not res!2845108) (not e!4193389))))

(declare-fun bm!633235 () Bool)

(assert (=> bm!633235 (= call!633240 call!633239)))

(declare-fun b!6977386 () Bool)

(assert (=> b!6977386 (= e!4193387 call!633238)))

(assert (= (and d!2172437 (not res!2845104)) b!6977381))

(assert (= (and b!6977381 c!1293259) b!6977385))

(assert (= (and b!6977381 (not c!1293259)) b!6977379))

(assert (= (and b!6977385 res!2845108) b!6977378))

(assert (= (and b!6977379 c!1293258) b!6977382))

(assert (= (and b!6977379 (not c!1293258)) b!6977384))

(assert (= (and b!6977382 res!2845106) b!6977386))

(assert (= (and b!6977384 (not res!2845105)) b!6977380))

(assert (= (and b!6977380 res!2845107) b!6977383))

(assert (= (or b!6977386 b!6977383) bm!633233))

(assert (= (or b!6977382 b!6977380) bm!633235))

(assert (= (or b!6977378 bm!633235) bm!633234))

(declare-fun m!7662866 () Bool)

(assert (=> bm!633233 m!7662866))

(declare-fun m!7662868 () Bool)

(assert (=> bm!633234 m!7662868))

(declare-fun m!7662870 () Bool)

(assert (=> b!6977385 m!7662870))

(assert (=> bs!1860118 d!2172437))

(declare-fun d!2172439 () Bool)

(declare-fun c!1293260 () Bool)

(assert (=> d!2172439 (= c!1293260 (isEmpty!39039 (tail!13119 s!7408)))))

(declare-fun e!4193390 () Bool)

(assert (=> d!2172439 (= (matchZipper!2686 (derivationStepZipper!2630 (set.insert lt!2480135 (as set.empty (Set Context!12284))) (head!14051 s!7408)) (tail!13119 s!7408)) e!4193390)))

(declare-fun b!6977387 () Bool)

(assert (=> b!6977387 (= e!4193390 (nullableZipper!2383 (derivationStepZipper!2630 (set.insert lt!2480135 (as set.empty (Set Context!12284))) (head!14051 s!7408))))))

(declare-fun b!6977388 () Bool)

(assert (=> b!6977388 (= e!4193390 (matchZipper!2686 (derivationStepZipper!2630 (derivationStepZipper!2630 (set.insert lt!2480135 (as set.empty (Set Context!12284))) (head!14051 s!7408)) (head!14051 (tail!13119 s!7408))) (tail!13119 (tail!13119 s!7408))))))

(assert (= (and d!2172439 c!1293260) b!6977387))

(assert (= (and d!2172439 (not c!1293260)) b!6977388))

(assert (=> d!2172439 m!7662650))

(assert (=> d!2172439 m!7662750))

(assert (=> b!6977387 m!7662648))

(declare-fun m!7662872 () Bool)

(assert (=> b!6977387 m!7662872))

(assert (=> b!6977388 m!7662650))

(assert (=> b!6977388 m!7662754))

(assert (=> b!6977388 m!7662648))

(assert (=> b!6977388 m!7662754))

(declare-fun m!7662874 () Bool)

(assert (=> b!6977388 m!7662874))

(assert (=> b!6977388 m!7662650))

(assert (=> b!6977388 m!7662758))

(assert (=> b!6977388 m!7662874))

(assert (=> b!6977388 m!7662758))

(declare-fun m!7662876 () Bool)

(assert (=> b!6977388 m!7662876))

(assert (=> b!6977219 d!2172439))

(declare-fun bs!1860165 () Bool)

(declare-fun d!2172441 () Bool)

(assert (= bs!1860165 (and d!2172441 d!2172387)))

(declare-fun lambda!398213 () Int)

(assert (=> bs!1860165 (= lambda!398213 lambda!398208)))

(assert (=> d!2172441 true))

(assert (=> d!2172441 (= (derivationStepZipper!2630 (set.insert lt!2480135 (as set.empty (Set Context!12284))) (head!14051 s!7408)) (flatMap!2145 (set.insert lt!2480135 (as set.empty (Set Context!12284))) lambda!398213))))

(declare-fun bs!1860166 () Bool)

(assert (= bs!1860166 d!2172441))

(assert (=> bs!1860166 m!7662552))

(declare-fun m!7662878 () Bool)

(assert (=> bs!1860166 m!7662878))

(assert (=> b!6977219 d!2172441))

(assert (=> b!6977219 d!2172389))

(assert (=> b!6977219 d!2172391))

(declare-fun b!6977401 () Bool)

(declare-fun e!4193393 () Bool)

(declare-fun tp!1927341 () Bool)

(assert (=> b!6977401 (= e!4193393 tp!1927341)))

(declare-fun b!6977400 () Bool)

(declare-fun tp!1927345 () Bool)

(declare-fun tp!1927343 () Bool)

(assert (=> b!6977400 (= e!4193393 (and tp!1927345 tp!1927343))))

(assert (=> b!6977226 (= tp!1927292 e!4193393)))

(declare-fun b!6977402 () Bool)

(declare-fun tp!1927342 () Bool)

(declare-fun tp!1927344 () Bool)

(assert (=> b!6977402 (= e!4193393 (and tp!1927342 tp!1927344))))

(declare-fun b!6977399 () Bool)

(assert (=> b!6977399 (= e!4193393 tp_is_empty!43517)))

(assert (= (and b!6977226 (is-ElementMatch!17146 (h!73308 (exprs!6642 setElem!47360)))) b!6977399))

(assert (= (and b!6977226 (is-Concat!25991 (h!73308 (exprs!6642 setElem!47360)))) b!6977400))

(assert (= (and b!6977226 (is-Star!17146 (h!73308 (exprs!6642 setElem!47360)))) b!6977401))

(assert (= (and b!6977226 (is-Union!17146 (h!73308 (exprs!6642 setElem!47360)))) b!6977402))

(declare-fun b!6977403 () Bool)

(declare-fun e!4193394 () Bool)

(declare-fun tp!1927346 () Bool)

(declare-fun tp!1927347 () Bool)

(assert (=> b!6977403 (= e!4193394 (and tp!1927346 tp!1927347))))

(assert (=> b!6977226 (= tp!1927293 e!4193394)))

(assert (= (and b!6977226 (is-Cons!66860 (t!380727 (exprs!6642 setElem!47360)))) b!6977403))

(declare-fun condSetEmpty!47370 () Bool)

(assert (=> setNonEmpty!47366 (= condSetEmpty!47370 (= setRest!47366 (as set.empty (Set Context!12284))))))

(declare-fun setRes!47370 () Bool)

(assert (=> setNonEmpty!47366 (= tp!1927300 setRes!47370)))

(declare-fun setIsEmpty!47370 () Bool)

(assert (=> setIsEmpty!47370 setRes!47370))

(declare-fun setNonEmpty!47370 () Bool)

(declare-fun setElem!47370 () Context!12284)

(declare-fun e!4193395 () Bool)

(declare-fun tp!1927348 () Bool)

(assert (=> setNonEmpty!47370 (= setRes!47370 (and tp!1927348 (inv!85725 setElem!47370) e!4193395))))

(declare-fun setRest!47370 () (Set Context!12284))

(assert (=> setNonEmpty!47370 (= setRest!47366 (set.union (set.insert setElem!47370 (as set.empty (Set Context!12284))) setRest!47370))))

(declare-fun b!6977404 () Bool)

(declare-fun tp!1927349 () Bool)

(assert (=> b!6977404 (= e!4193395 tp!1927349)))

(assert (= (and setNonEmpty!47366 condSetEmpty!47370) setIsEmpty!47370))

(assert (= (and setNonEmpty!47366 (not condSetEmpty!47370)) setNonEmpty!47370))

(assert (= setNonEmpty!47370 b!6977404))

(declare-fun m!7662880 () Bool)

(assert (=> setNonEmpty!47370 m!7662880))

(declare-fun b!6977405 () Bool)

(declare-fun e!4193396 () Bool)

(declare-fun tp!1927350 () Bool)

(declare-fun tp!1927351 () Bool)

(assert (=> b!6977405 (= e!4193396 (and tp!1927350 tp!1927351))))

(assert (=> b!6977232 (= tp!1927301 e!4193396)))

(assert (= (and b!6977232 (is-Cons!66860 (exprs!6642 setElem!47366))) b!6977405))

(declare-fun b!6977408 () Bool)

(declare-fun e!4193397 () Bool)

(declare-fun tp!1927352 () Bool)

(assert (=> b!6977408 (= e!4193397 tp!1927352)))

(declare-fun b!6977407 () Bool)

(declare-fun tp!1927356 () Bool)

(declare-fun tp!1927354 () Bool)

(assert (=> b!6977407 (= e!4193397 (and tp!1927356 tp!1927354))))

(assert (=> b!6977227 (= tp!1927294 e!4193397)))

(declare-fun b!6977409 () Bool)

(declare-fun tp!1927353 () Bool)

(declare-fun tp!1927355 () Bool)

(assert (=> b!6977409 (= e!4193397 (and tp!1927353 tp!1927355))))

(declare-fun b!6977406 () Bool)

(assert (=> b!6977406 (= e!4193397 tp_is_empty!43517)))

(assert (= (and b!6977227 (is-ElementMatch!17146 (h!73308 (exprs!6642 ct2!306)))) b!6977406))

(assert (= (and b!6977227 (is-Concat!25991 (h!73308 (exprs!6642 ct2!306)))) b!6977407))

(assert (= (and b!6977227 (is-Star!17146 (h!73308 (exprs!6642 ct2!306)))) b!6977408))

(assert (= (and b!6977227 (is-Union!17146 (h!73308 (exprs!6642 ct2!306)))) b!6977409))

(declare-fun b!6977410 () Bool)

(declare-fun e!4193398 () Bool)

(declare-fun tp!1927357 () Bool)

(declare-fun tp!1927358 () Bool)

(assert (=> b!6977410 (= e!4193398 (and tp!1927357 tp!1927358))))

(assert (=> b!6977227 (= tp!1927295 e!4193398)))

(assert (= (and b!6977227 (is-Cons!66860 (t!380727 (exprs!6642 ct2!306)))) b!6977410))

(declare-fun b!6977411 () Bool)

(declare-fun e!4193399 () Bool)

(declare-fun tp!1927359 () Bool)

(assert (=> b!6977411 (= e!4193399 (and tp_is_empty!43517 tp!1927359))))

(assert (=> b!6977237 (= tp!1927304 e!4193399)))

(assert (= (and b!6977237 (is-Cons!66859 (t!380726 (t!380726 s!7408)))) b!6977411))

(declare-fun b_lambda!261091 () Bool)

(assert (= b_lambda!261089 (or d!2172347 b_lambda!261091)))

(declare-fun bs!1860167 () Bool)

(declare-fun d!2172443 () Bool)

(assert (= bs!1860167 (and d!2172443 d!2172347)))

(assert (=> bs!1860167 (= (dynLambda!26667 lambda!398185 (h!73308 (exprs!6642 setElem!47360))) (validRegex!8821 (h!73308 (exprs!6642 setElem!47360))))))

(declare-fun m!7662882 () Bool)

(assert (=> bs!1860167 m!7662882))

(assert (=> b!6977358 d!2172443))

(declare-fun b_lambda!261093 () Bool)

(assert (= b_lambda!261079 (or b!6977166 b_lambda!261093)))

(declare-fun bs!1860168 () Bool)

(declare-fun d!2172445 () Bool)

(assert (= bs!1860168 (and d!2172445 b!6977166)))

(assert (=> bs!1860168 (= (dynLambda!26670 lambda!398155 (h!73309 (toList!10506 lt!2480137))) (matchZipper!2686 (set.insert (h!73309 (toList!10506 lt!2480137)) (as set.empty (Set Context!12284))) s!7408))))

(declare-fun m!7662884 () Bool)

(assert (=> bs!1860168 m!7662884))

(assert (=> bs!1860168 m!7662884))

(declare-fun m!7662886 () Bool)

(assert (=> bs!1860168 m!7662886))

(assert (=> b!6977307 d!2172445))

(declare-fun b_lambda!261095 () Bool)

(assert (= b_lambda!261069 (or d!2172345 b_lambda!261095)))

(declare-fun bs!1860169 () Bool)

(declare-fun d!2172447 () Bool)

(assert (= bs!1860169 (and d!2172447 d!2172345)))

(assert (=> bs!1860169 (= (dynLambda!26667 lambda!398184 (h!73308 (exprs!6642 ct2!306))) (validRegex!8821 (h!73308 (exprs!6642 ct2!306))))))

(declare-fun m!7662888 () Bool)

(assert (=> bs!1860169 m!7662888))

(assert (=> b!6977263 d!2172447))

(declare-fun b_lambda!261097 () Bool)

(assert (= b_lambda!261085 (or b!6977161 b_lambda!261097)))

(declare-fun bs!1860170 () Bool)

(declare-fun d!2172449 () Bool)

(assert (= bs!1860170 (and d!2172449 b!6977161)))

(assert (=> bs!1860170 (= (dynLambda!26667 lambda!398157 (h!73308 (t!380727 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135))))) (validRegex!8821 (h!73308 (t!380727 (exprs!6642 (mapPost2!1 z1!570 lambda!398156 lt!2480135))))))))

(declare-fun m!7662890 () Bool)

(assert (=> bs!1860170 m!7662890))

(assert (=> b!6977343 d!2172449))

(declare-fun b_lambda!261099 () Bool)

(assert (= b_lambda!261083 (or d!2172333 b_lambda!261099)))

(declare-fun bs!1860171 () Bool)

(declare-fun d!2172451 () Bool)

(assert (= bs!1860171 (and d!2172451 d!2172333)))

(assert (=> bs!1860171 (= (dynLambda!26670 lambda!398176 (h!73309 lt!2480134)) (not (dynLambda!26670 lambda!398155 (h!73309 lt!2480134))))))

(declare-fun b_lambda!261105 () Bool)

(assert (=> (not b_lambda!261105) (not bs!1860171)))

(declare-fun m!7662892 () Bool)

(assert (=> bs!1860171 m!7662892))

(assert (=> b!6977326 d!2172451))

(declare-fun b_lambda!261101 () Bool)

(assert (= b_lambda!261081 (or b!6977166 b_lambda!261101)))

(declare-fun bs!1860172 () Bool)

(declare-fun d!2172453 () Bool)

(assert (= bs!1860172 (and d!2172453 b!6977166)))

(assert (=> bs!1860172 (= (dynLambda!26670 lambda!398155 lt!2480187) (matchZipper!2686 (set.insert lt!2480187 (as set.empty (Set Context!12284))) s!7408))))

(declare-fun m!7662894 () Bool)

(assert (=> bs!1860172 m!7662894))

(assert (=> bs!1860172 m!7662894))

(declare-fun m!7662896 () Bool)

(assert (=> bs!1860172 m!7662896))

(assert (=> d!2172397 d!2172453))

(declare-fun b_lambda!261103 () Bool)

(assert (= b_lambda!261087 (or b!6977161 b_lambda!261103)))

(declare-fun bs!1860173 () Bool)

(declare-fun d!2172455 () Bool)

(assert (= bs!1860173 (and d!2172455 b!6977161)))

(declare-fun lt!2480197 () Unit!160940)

(assert (=> bs!1860173 (= lt!2480197 (lemmaConcatPreservesForall!483 (exprs!6642 a!12572) (exprs!6642 ct2!306) lambda!398157))))

(assert (=> bs!1860173 (= (dynLambda!26668 lambda!398156 a!12572) (Context!12285 (++!15092 (exprs!6642 a!12572) (exprs!6642 ct2!306))))))

(declare-fun m!7662898 () Bool)

(assert (=> bs!1860173 m!7662898))

(declare-fun m!7662900 () Bool)

(assert (=> bs!1860173 m!7662900))

(assert (=> d!2172431 d!2172455))

(push 1)

(assert (not d!2172423))

(assert (not d!2172407))

(assert (not d!2172441))

(assert (not b!6977359))

(assert (not b!6977402))

(assert (not b_lambda!261105))

(assert (not b_lambda!261095))

(assert (not b!6977349))

(assert (not b!6977408))

(assert (not b!6977410))

(assert tp_is_empty!43517)

(assert (not b!6977327))

(assert (not d!2172397))

(assert (not b!6977304))

(assert (not b!6977385))

(assert (not b_lambda!261099))

(assert (not b!6977270))

(assert (not d!2172439))

(assert (not b!6977340))

(assert (not b!6977407))

(assert (not d!2172387))

(assert (not bm!633234))

(assert (not b!6977405))

(assert (not b!6977348))

(assert (not d!2172431))

(assert (not b!6977404))

(assert (not bs!1860167))

(assert (not d!2172383))

(assert (not d!2172409))

(assert (not b!6977345))

(assert (not b!6977387))

(assert (not b_lambda!261097))

(assert (not d!2172385))

(assert (not b!6977306))

(assert (not b!6977332))

(assert (not b!6977271))

(assert (not b!6977320))

(assert (not d!2172417))

(assert (not d!2172421))

(assert (not d!2172425))

(assert (not bs!1860170))

(assert (not b!6977356))

(assert (not b!6977341))

(assert (not d!2172403))

(assert (not bs!1860168))

(assert (not b!6977388))

(assert (not b!6977400))

(assert (not b!6977319))

(assert (not d!2172415))

(assert (not b!6977409))

(assert (not b_lambda!261093))

(assert (not b!6977308))

(assert (not d!2172381))

(assert (not b!6977264))

(assert (not b!6977344))

(assert (not b_lambda!261103))

(assert (not b_lambda!261059))

(assert (not b!6977403))

(assert (not setNonEmpty!47370))

(assert (not d!2172377))

(assert (not bm!633233))

(assert (not b_lambda!261091))

(assert (not bs!1860173))

(assert (not b!6977401))

(assert (not b!6977411))

(assert (not b!6977291))

(assert (not b!6977346))

(assert (not b!6977350))

(assert (not b_lambda!261063))

(assert (not b!6977342))

(assert (not d!2172433))

(assert (not b_lambda!261061))

(assert (not d!2172429))

(assert (not bs!1860172))

(assert (not b!6977333))

(assert (not bs!1860169))

(assert (not b_lambda!261101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

