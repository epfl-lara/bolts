; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727268 () Bool)

(assert start!727268)

(declare-fun bs!1938824 () Bool)

(declare-fun b!7509002 () Bool)

(assert (= bs!1938824 (and b!7509002 start!727268)))

(declare-fun lambda!465850 () Int)

(declare-fun lambda!465849 () Int)

(assert (=> bs!1938824 (not (= lambda!465850 lambda!465849))))

(declare-fun e!4477501 () Bool)

(declare-fun setNonEmpty!57125 () Bool)

(declare-fun setRes!57125 () Bool)

(declare-fun tp!2179472 () Bool)

(declare-datatypes ((C!39786 0))(
  ( (C!39787 (val!30291 Int)) )
))
(declare-datatypes ((Regex!19730 0))(
  ( (ElementMatch!19730 (c!1386586 C!39786)) (Concat!28575 (regOne!39972 Regex!19730) (regTwo!39972 Regex!19730)) (EmptyExpr!19730) (Star!19730 (reg!20059 Regex!19730)) (EmptyLang!19730) (Union!19730 (regOne!39973 Regex!19730) (regTwo!39973 Regex!19730)) )
))
(declare-datatypes ((List!72567 0))(
  ( (Nil!72443) (Cons!72443 (h!78891 Regex!19730) (t!387136 List!72567)) )
))
(declare-datatypes ((Context!16964 0))(
  ( (Context!16965 (exprs!8982 List!72567)) )
))
(declare-fun setElem!57125 () Context!16964)

(declare-fun inv!92556 (Context!16964) Bool)

(assert (=> setNonEmpty!57125 (= setRes!57125 (and tp!2179472 (inv!92556 setElem!57125) e!4477501))))

(declare-fun z!556 () (Set Context!16964))

(declare-fun setRest!57125 () (Set Context!16964))

(assert (=> setNonEmpty!57125 (= z!556 (set.union (set.insert setElem!57125 (as set.empty (Set Context!16964))) setRest!57125))))

(declare-fun b!7509000 () Bool)

(declare-fun tp!2179473 () Bool)

(assert (=> b!7509000 (= e!4477501 tp!2179473)))

(declare-fun res!3012552 () Bool)

(declare-fun e!4477500 () Bool)

(assert (=> start!727268 (=> (not res!3012552) (not e!4477500))))

(declare-fun forall!18331 ((Set Context!16964) Int) Bool)

(assert (=> start!727268 (= res!3012552 (forall!18331 z!556 lambda!465849))))

(assert (=> start!727268 e!4477500))

(declare-fun condSetEmpty!57125 () Bool)

(assert (=> start!727268 (= condSetEmpty!57125 (= z!556 (as set.empty (Set Context!16964))))))

(assert (=> start!727268 setRes!57125))

(declare-fun b!7509001 () Bool)

(declare-fun res!3012551 () Bool)

(assert (=> b!7509001 (=> (not res!3012551) (not e!4477500))))

(assert (=> b!7509001 (= res!3012551 (forall!18331 z!556 lambda!465849))))

(declare-fun exists!4885 ((Set Context!16964) Int) Bool)

(assert (=> b!7509002 (= e!4477500 (not (not (exists!4885 z!556 lambda!465850))))))

(declare-datatypes ((List!72568 0))(
  ( (Nil!72444) (Cons!72444 (h!78892 Context!16964) (t!387137 List!72568)) )
))
(declare-fun lt!2637019 () List!72568)

(declare-fun exists!4886 (List!72568 Int) Bool)

(assert (=> b!7509002 (not (exists!4886 lt!2637019 lambda!465850))))

(declare-datatypes ((Unit!166486 0))(
  ( (Unit!166487) )
))
(declare-fun lt!2637018 () Unit!166486)

(declare-fun lemmaForallThenNotExists!477 (List!72568 Int) Unit!166486)

(assert (=> b!7509002 (= lt!2637018 (lemmaForallThenNotExists!477 lt!2637019 lambda!465849))))

(declare-fun toList!11847 ((Set Context!16964)) List!72568)

(assert (=> b!7509002 (= lt!2637019 (toList!11847 z!556))))

(declare-fun setIsEmpty!57125 () Bool)

(assert (=> setIsEmpty!57125 setRes!57125))

(assert (= (and start!727268 res!3012552) b!7509001))

(assert (= (and b!7509001 res!3012551) b!7509002))

(assert (= (and start!727268 condSetEmpty!57125) setIsEmpty!57125))

(assert (= (and start!727268 (not condSetEmpty!57125)) setNonEmpty!57125))

(assert (= setNonEmpty!57125 b!7509000))

(declare-fun m!8093024 () Bool)

(assert (=> setNonEmpty!57125 m!8093024))

(declare-fun m!8093026 () Bool)

(assert (=> start!727268 m!8093026))

(assert (=> b!7509001 m!8093026))

(declare-fun m!8093028 () Bool)

(assert (=> b!7509002 m!8093028))

(declare-fun m!8093030 () Bool)

(assert (=> b!7509002 m!8093030))

(declare-fun m!8093032 () Bool)

(assert (=> b!7509002 m!8093032))

(declare-fun m!8093034 () Bool)

(assert (=> b!7509002 m!8093034))

(push 1)

(assert (not setNonEmpty!57125))

(assert (not start!727268))

(assert (not b!7509002))

(assert (not b!7509001))

(assert (not b!7509000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2305864 () Bool)

(declare-fun lt!2637028 () Bool)

(assert (=> d!2305864 (= lt!2637028 (exists!4886 (toList!11847 z!556) lambda!465850))))

(declare-fun choose!58222 ((Set Context!16964) Int) Bool)

(assert (=> d!2305864 (= lt!2637028 (choose!58222 z!556 lambda!465850))))

(assert (=> d!2305864 (= (exists!4885 z!556 lambda!465850) lt!2637028)))

(declare-fun bs!1938826 () Bool)

(assert (= bs!1938826 d!2305864))

(assert (=> bs!1938826 m!8093034))

(assert (=> bs!1938826 m!8093034))

(declare-fun m!8093048 () Bool)

(assert (=> bs!1938826 m!8093048))

(declare-fun m!8093050 () Bool)

(assert (=> bs!1938826 m!8093050))

(assert (=> b!7509002 d!2305864))

(declare-fun bs!1938827 () Bool)

(declare-fun d!2305866 () Bool)

(assert (= bs!1938827 (and d!2305866 start!727268)))

(declare-fun lambda!465865 () Int)

(assert (=> bs!1938827 (not (= lambda!465865 lambda!465849))))

(declare-fun bs!1938828 () Bool)

(assert (= bs!1938828 (and d!2305866 b!7509002)))

(assert (=> bs!1938828 (not (= lambda!465865 lambda!465850))))

(assert (=> d!2305866 true))

(declare-fun order!29669 () Int)

(declare-fun dynLambda!29794 (Int Int) Int)

(assert (=> d!2305866 (< (dynLambda!29794 order!29669 lambda!465850) (dynLambda!29794 order!29669 lambda!465865))))

(declare-fun forall!18333 (List!72568 Int) Bool)

(assert (=> d!2305866 (= (exists!4886 lt!2637019 lambda!465850) (not (forall!18333 lt!2637019 lambda!465865)))))

(declare-fun bs!1938829 () Bool)

(assert (= bs!1938829 d!2305866))

(declare-fun m!8093052 () Bool)

(assert (=> bs!1938829 m!8093052))

(assert (=> b!7509002 d!2305866))

(declare-fun bs!1938830 () Bool)

(declare-fun d!2305868 () Bool)

(assert (= bs!1938830 (and d!2305868 start!727268)))

(declare-fun lambda!465868 () Int)

(assert (=> bs!1938830 (not (= lambda!465868 lambda!465849))))

(declare-fun bs!1938831 () Bool)

(assert (= bs!1938831 (and d!2305868 b!7509002)))

(assert (=> bs!1938831 (not (= lambda!465868 lambda!465850))))

(declare-fun bs!1938832 () Bool)

(assert (= bs!1938832 (and d!2305868 d!2305866)))

(assert (=> bs!1938832 (= (= lambda!465849 lambda!465850) (= lambda!465868 lambda!465865))))

(assert (=> d!2305868 true))

(assert (=> d!2305868 (< (dynLambda!29794 order!29669 lambda!465849) (dynLambda!29794 order!29669 lambda!465868))))

(assert (=> d!2305868 (not (exists!4886 lt!2637019 lambda!465868))))

(declare-fun lt!2637031 () Unit!166486)

(declare-fun choose!58223 (List!72568 Int) Unit!166486)

(assert (=> d!2305868 (= lt!2637031 (choose!58223 lt!2637019 lambda!465849))))

(assert (=> d!2305868 (forall!18333 lt!2637019 lambda!465849)))

(assert (=> d!2305868 (= (lemmaForallThenNotExists!477 lt!2637019 lambda!465849) lt!2637031)))

(declare-fun bs!1938833 () Bool)

(assert (= bs!1938833 d!2305868))

(declare-fun m!8093054 () Bool)

(assert (=> bs!1938833 m!8093054))

(declare-fun m!8093056 () Bool)

(assert (=> bs!1938833 m!8093056))

(declare-fun m!8093058 () Bool)

(assert (=> bs!1938833 m!8093058))

(assert (=> b!7509002 d!2305868))

(declare-fun d!2305872 () Bool)

(declare-fun e!4477514 () Bool)

(assert (=> d!2305872 e!4477514))

(declare-fun res!3012561 () Bool)

(assert (=> d!2305872 (=> (not res!3012561) (not e!4477514))))

(declare-fun lt!2637034 () List!72568)

(declare-fun noDuplicate!3152 (List!72568) Bool)

(assert (=> d!2305872 (= res!3012561 (noDuplicate!3152 lt!2637034))))

(declare-fun choose!58224 ((Set Context!16964)) List!72568)

(assert (=> d!2305872 (= lt!2637034 (choose!58224 z!556))))

(assert (=> d!2305872 (= (toList!11847 z!556) lt!2637034)))

(declare-fun b!7509016 () Bool)

(declare-fun content!15321 (List!72568) (Set Context!16964))

(assert (=> b!7509016 (= e!4477514 (= (content!15321 lt!2637034) z!556))))

(assert (= (and d!2305872 res!3012561) b!7509016))

(declare-fun m!8093060 () Bool)

(assert (=> d!2305872 m!8093060))

(declare-fun m!8093062 () Bool)

(assert (=> d!2305872 m!8093062))

(declare-fun m!8093064 () Bool)

(assert (=> b!7509016 m!8093064))

(assert (=> b!7509002 d!2305872))

(declare-fun d!2305874 () Bool)

(declare-fun lt!2637037 () Bool)

(assert (=> d!2305874 (= lt!2637037 (forall!18333 (toList!11847 z!556) lambda!465849))))

(declare-fun choose!58225 ((Set Context!16964) Int) Bool)

(assert (=> d!2305874 (= lt!2637037 (choose!58225 z!556 lambda!465849))))

(assert (=> d!2305874 (= (forall!18331 z!556 lambda!465849) lt!2637037)))

(declare-fun bs!1938834 () Bool)

(assert (= bs!1938834 d!2305874))

(assert (=> bs!1938834 m!8093034))

(assert (=> bs!1938834 m!8093034))

(declare-fun m!8093066 () Bool)

(assert (=> bs!1938834 m!8093066))

(declare-fun m!8093068 () Bool)

(assert (=> bs!1938834 m!8093068))

(assert (=> b!7509001 d!2305874))

(assert (=> start!727268 d!2305874))

(declare-fun d!2305876 () Bool)

(declare-fun lambda!465873 () Int)

(declare-fun forall!18334 (List!72567 Int) Bool)

(assert (=> d!2305876 (= (inv!92556 setElem!57125) (forall!18334 (exprs!8982 setElem!57125) lambda!465873))))

(declare-fun bs!1938835 () Bool)

(assert (= bs!1938835 d!2305876))

(declare-fun m!8093070 () Bool)

(assert (=> bs!1938835 m!8093070))

(assert (=> setNonEmpty!57125 d!2305876))

(declare-fun b!7509021 () Bool)

(declare-fun e!4477517 () Bool)

(declare-fun tp!2179484 () Bool)

(declare-fun tp!2179485 () Bool)

(assert (=> b!7509021 (= e!4477517 (and tp!2179484 tp!2179485))))

(assert (=> b!7509000 (= tp!2179473 e!4477517)))

(assert (= (and b!7509000 (is-Cons!72443 (exprs!8982 setElem!57125))) b!7509021))

(declare-fun condSetEmpty!57131 () Bool)

(assert (=> setNonEmpty!57125 (= condSetEmpty!57131 (= setRest!57125 (as set.empty (Set Context!16964))))))

(declare-fun setRes!57131 () Bool)

(assert (=> setNonEmpty!57125 (= tp!2179472 setRes!57131)))

(declare-fun setIsEmpty!57131 () Bool)

(assert (=> setIsEmpty!57131 setRes!57131))

(declare-fun setElem!57131 () Context!16964)

(declare-fun e!4477520 () Bool)

(declare-fun setNonEmpty!57131 () Bool)

(declare-fun tp!2179491 () Bool)

(assert (=> setNonEmpty!57131 (= setRes!57131 (and tp!2179491 (inv!92556 setElem!57131) e!4477520))))

(declare-fun setRest!57131 () (Set Context!16964))

(assert (=> setNonEmpty!57131 (= setRest!57125 (set.union (set.insert setElem!57131 (as set.empty (Set Context!16964))) setRest!57131))))

(declare-fun b!7509026 () Bool)

(declare-fun tp!2179490 () Bool)

(assert (=> b!7509026 (= e!4477520 tp!2179490)))

(assert (= (and setNonEmpty!57125 condSetEmpty!57131) setIsEmpty!57131))

(assert (= (and setNonEmpty!57125 (not condSetEmpty!57131)) setNonEmpty!57131))

(assert (= setNonEmpty!57131 b!7509026))

(declare-fun m!8093074 () Bool)

(assert (=> setNonEmpty!57131 m!8093074))

(push 1)

(assert (not d!2305864))

(assert (not d!2305866))

(assert (not b!7509021))

(assert (not d!2305868))

(assert (not b!7509026))

(assert (not d!2305874))

(assert (not b!7509016))

(assert (not setNonEmpty!57131))

(assert (not d!2305872))

(assert (not d!2305876))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

