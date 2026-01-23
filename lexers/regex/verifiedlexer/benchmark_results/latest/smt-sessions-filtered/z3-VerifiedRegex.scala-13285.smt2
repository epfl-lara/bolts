; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!722656 () Bool)

(assert start!722656)

(declare-fun b!7440148 () Bool)

(declare-fun e!4442798 () Bool)

(declare-fun tp_is_empty!49149 () Bool)

(declare-fun tp!2150450 () Bool)

(assert (=> b!7440148 (= e!4442798 (and tp_is_empty!49149 tp!2150450))))

(declare-fun b!7440149 () Bool)

(declare-fun e!4442799 () Bool)

(declare-fun tp!2150448 () Bool)

(assert (=> b!7440149 (= e!4442799 tp!2150448)))

(declare-fun setIsEmpty!56531 () Bool)

(declare-fun setRes!56531 () Bool)

(assert (=> setIsEmpty!56531 setRes!56531))

(declare-fun setNonEmpty!56531 () Bool)

(declare-fun tp!2150449 () Bool)

(declare-datatypes ((C!39164 0))(
  ( (C!39165 (val!29956 Int)) )
))
(declare-datatypes ((Regex!19445 0))(
  ( (ElementMatch!19445 (c!1376925 C!39164)) (Concat!28290 (regOne!39402 Regex!19445) (regTwo!39402 Regex!19445)) (EmptyExpr!19445) (Star!19445 (reg!19774 Regex!19445)) (EmptyLang!19445) (Union!19445 (regOne!39403 Regex!19445) (regTwo!39403 Regex!19445)) )
))
(declare-datatypes ((List!72108 0))(
  ( (Nil!71984) (Cons!71984 (h!78432 Regex!19445) (t!386671 List!72108)) )
))
(declare-datatypes ((Context!16770 0))(
  ( (Context!16771 (exprs!8885 List!72108)) )
))
(declare-fun setElem!56531 () Context!16770)

(declare-fun inv!91973 (Context!16770) Bool)

(assert (=> setNonEmpty!56531 (= setRes!56531 (and tp!2150449 (inv!91973 setElem!56531) e!4442799))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3488 () (InoxSet Context!16770))

(declare-fun setRest!56531 () (InoxSet Context!16770))

(assert (=> setNonEmpty!56531 (= z!3488 ((_ map or) (store ((as const (Array Context!16770 Bool)) false) setElem!56531 true) setRest!56531))))

(declare-fun res!2986205 () Bool)

(declare-fun e!4442800 () Bool)

(assert (=> start!722656 (=> (not res!2986205) (not e!4442800))))

(assert (=> start!722656 (= res!2986205 (= z!3488 (store ((as const (Array Context!16770 Bool)) false) (Context!16771 Nil!71984) true)))))

(assert (=> start!722656 e!4442800))

(declare-fun condSetEmpty!56531 () Bool)

(assert (=> start!722656 (= condSetEmpty!56531 (= z!3488 ((as const (Array Context!16770 Bool)) false)))))

(assert (=> start!722656 setRes!56531))

(assert (=> start!722656 e!4442798))

(declare-fun b!7440150 () Bool)

(declare-datatypes ((List!72109 0))(
  ( (Nil!71985) (Cons!71985 (h!78433 C!39164) (t!386672 List!72109)) )
))
(declare-fun s!7945 () List!72109)

(declare-fun size!42181 (List!72109) Int)

(assert (=> b!7440150 (= e!4442800 (< (size!42181 s!7945) 0))))

(assert (= (and start!722656 res!2986205) b!7440150))

(assert (= (and start!722656 condSetEmpty!56531) setIsEmpty!56531))

(assert (= (and start!722656 (not condSetEmpty!56531)) setNonEmpty!56531))

(assert (= setNonEmpty!56531 b!7440149))

(get-info :version)

(assert (= (and start!722656 ((_ is Cons!71985) s!7945)) b!7440148))

(declare-fun m!8052436 () Bool)

(assert (=> setNonEmpty!56531 m!8052436))

(declare-fun m!8052438 () Bool)

(assert (=> b!7440150 m!8052438))

(check-sat (not setNonEmpty!56531) (not b!7440150) tp_is_empty!49149 (not b!7440148) (not b!7440149))
(check-sat)
(get-model)

(declare-fun d!2295096 () Bool)

(declare-fun lambda!460354 () Int)

(declare-fun forall!18225 (List!72108 Int) Bool)

(assert (=> d!2295096 (= (inv!91973 setElem!56531) (forall!18225 (exprs!8885 setElem!56531) lambda!460354))))

(declare-fun bs!1926061 () Bool)

(assert (= bs!1926061 d!2295096))

(declare-fun m!8052442 () Bool)

(assert (=> bs!1926061 m!8052442))

(assert (=> setNonEmpty!56531 d!2295096))

(declare-fun d!2295102 () Bool)

(declare-fun lt!2619310 () Int)

(assert (=> d!2295102 (>= lt!2619310 0)))

(declare-fun e!4442806 () Int)

(assert (=> d!2295102 (= lt!2619310 e!4442806)))

(declare-fun c!1376931 () Bool)

(assert (=> d!2295102 (= c!1376931 ((_ is Nil!71985) s!7945))))

(assert (=> d!2295102 (= (size!42181 s!7945) lt!2619310)))

(declare-fun b!7440161 () Bool)

(assert (=> b!7440161 (= e!4442806 0)))

(declare-fun b!7440162 () Bool)

(assert (=> b!7440162 (= e!4442806 (+ 1 (size!42181 (t!386672 s!7945))))))

(assert (= (and d!2295102 c!1376931) b!7440161))

(assert (= (and d!2295102 (not c!1376931)) b!7440162))

(declare-fun m!8052444 () Bool)

(assert (=> b!7440162 m!8052444))

(assert (=> b!7440150 d!2295102))

(declare-fun condSetEmpty!56536 () Bool)

(assert (=> setNonEmpty!56531 (= condSetEmpty!56536 (= setRest!56531 ((as const (Array Context!16770 Bool)) false)))))

(declare-fun setRes!56536 () Bool)

(assert (=> setNonEmpty!56531 (= tp!2150449 setRes!56536)))

(declare-fun setIsEmpty!56536 () Bool)

(assert (=> setIsEmpty!56536 setRes!56536))

(declare-fun setNonEmpty!56536 () Bool)

(declare-fun tp!2150465 () Bool)

(declare-fun e!4442814 () Bool)

(declare-fun setElem!56536 () Context!16770)

(assert (=> setNonEmpty!56536 (= setRes!56536 (and tp!2150465 (inv!91973 setElem!56536) e!4442814))))

(declare-fun setRest!56536 () (InoxSet Context!16770))

(assert (=> setNonEmpty!56536 (= setRest!56531 ((_ map or) (store ((as const (Array Context!16770 Bool)) false) setElem!56536 true) setRest!56536))))

(declare-fun b!7440176 () Bool)

(declare-fun tp!2150466 () Bool)

(assert (=> b!7440176 (= e!4442814 tp!2150466)))

(assert (= (and setNonEmpty!56531 condSetEmpty!56536) setIsEmpty!56536))

(assert (= (and setNonEmpty!56531 (not condSetEmpty!56536)) setNonEmpty!56536))

(assert (= setNonEmpty!56536 b!7440176))

(declare-fun m!8052448 () Bool)

(assert (=> setNonEmpty!56536 m!8052448))

(declare-fun b!7440181 () Bool)

(declare-fun e!4442817 () Bool)

(declare-fun tp!2150469 () Bool)

(assert (=> b!7440181 (= e!4442817 (and tp_is_empty!49149 tp!2150469))))

(assert (=> b!7440148 (= tp!2150450 e!4442817)))

(assert (= (and b!7440148 ((_ is Cons!71985) (t!386672 s!7945))) b!7440181))

(declare-fun b!7440191 () Bool)

(declare-fun e!4442823 () Bool)

(declare-fun tp!2150478 () Bool)

(declare-fun tp!2150479 () Bool)

(assert (=> b!7440191 (= e!4442823 (and tp!2150478 tp!2150479))))

(assert (=> b!7440149 (= tp!2150448 e!4442823)))

(assert (= (and b!7440149 ((_ is Cons!71984) (exprs!8885 setElem!56531))) b!7440191))

(check-sat tp_is_empty!49149 (not b!7440162) (not d!2295096) (not b!7440191) (not setNonEmpty!56536) (not b!7440176) (not b!7440181))
(check-sat)
