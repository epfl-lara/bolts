; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663636 () Bool)

(assert start!663636)

(declare-fun b!6877093 () Bool)

(declare-fun e!4144786 () Bool)

(declare-fun e!4144784 () Bool)

(assert (=> b!6877093 (= e!4144786 e!4144784)))

(declare-fun res!2804021 () Bool)

(assert (=> b!6877093 (=> (not res!2804021) (not e!4144784))))

(declare-fun lt!2459222 () Int)

(declare-datatypes ((C!33748 0))(
  ( (C!33749 (val!26576 Int)) )
))
(declare-datatypes ((Regex!16739 0))(
  ( (ElementMatch!16739 (c!1279545 C!33748)) (Concat!25584 (regOne!33990 Regex!16739) (regTwo!33990 Regex!16739)) (EmptyExpr!16739) (Star!16739 (reg!17068 Regex!16739)) (EmptyLang!16739) (Union!16739 (regOne!33991 Regex!16739) (regTwo!33991 Regex!16739)) )
))
(declare-datatypes ((List!66489 0))(
  ( (Nil!66365) (Cons!66365 (h!72813 Regex!16739) (t!380232 List!66489)) )
))
(declare-datatypes ((Context!12246 0))(
  ( (Context!12247 (exprs!6623 List!66489)) )
))
(declare-datatypes ((List!66490 0))(
  ( (Nil!66366) (Cons!66366 (h!72814 Context!12246) (t!380233 List!66490)) )
))
(declare-fun zl!1632 () List!66490)

(get-info :version)

(assert (=> b!6877093 (= res!2804021 (and (> lt!2459222 1) ((_ is Cons!66366) zl!1632)))))

(declare-fun size!40729 (List!66490) Int)

(assert (=> b!6877093 (= lt!2459222 (size!40729 zl!1632))))

(declare-fun b!6877094 () Bool)

(declare-fun e!4144788 () Bool)

(declare-fun tp!1890052 () Bool)

(assert (=> b!6877094 (= e!4144788 tp!1890052)))

(declare-fun e!4144787 () Bool)

(declare-fun b!6877095 () Bool)

(declare-fun tp!1890053 () Bool)

(declare-fun inv!85094 (Context!12246) Bool)

(assert (=> b!6877095 (= e!4144787 (and (inv!85094 (h!72814 zl!1632)) e!4144788 tp!1890053))))

(declare-fun b!6877096 () Bool)

(declare-fun res!2804024 () Bool)

(assert (=> b!6877096 (=> (not res!2804024) (not e!4144784))))

(assert (=> b!6877096 (= res!2804024 (> (size!40729 (t!380233 zl!1632)) 1))))

(declare-fun b!6877097 () Bool)

(declare-fun e!4144785 () Bool)

(declare-fun tp!1890051 () Bool)

(assert (=> b!6877097 (= e!4144785 tp!1890051)))

(declare-fun b!6877098 () Bool)

(declare-fun res!2804023 () Bool)

(assert (=> b!6877098 (=> (not res!2804023) (not e!4144784))))

(declare-fun c!9978 () Context!12246)

(declare-fun contains!20395 (List!66490 Context!12246) Bool)

(assert (=> b!6877098 (= res!2804023 (contains!20395 (t!380233 zl!1632) c!9978))))

(declare-fun b!6877099 () Bool)

(declare-fun lt!2459221 () Int)

(assert (=> b!6877099 (= e!4144784 (and (> lt!2459221 1) (>= lt!2459221 lt!2459222)))))

(assert (=> b!6877099 (= lt!2459221 (size!40729 (t!380233 zl!1632)))))

(declare-fun res!2804022 () Bool)

(assert (=> start!663636 (=> (not res!2804022) (not e!4144786))))

(assert (=> start!663636 (= res!2804022 (contains!20395 zl!1632 c!9978))))

(assert (=> start!663636 e!4144786))

(assert (=> start!663636 e!4144787))

(assert (=> start!663636 (and (inv!85094 c!9978) e!4144785)))

(assert (= (and start!663636 res!2804022) b!6877093))

(assert (= (and b!6877093 res!2804021) b!6877098))

(assert (= (and b!6877098 res!2804023) b!6877096))

(assert (= (and b!6877096 res!2804024) b!6877099))

(assert (= b!6877095 b!6877094))

(assert (= (and start!663636 ((_ is Cons!66366) zl!1632)) b!6877095))

(assert (= start!663636 b!6877097))

(declare-fun m!7604748 () Bool)

(assert (=> b!6877099 m!7604748))

(assert (=> b!6877096 m!7604748))

(declare-fun m!7604750 () Bool)

(assert (=> b!6877093 m!7604750))

(declare-fun m!7604752 () Bool)

(assert (=> b!6877098 m!7604752))

(declare-fun m!7604754 () Bool)

(assert (=> b!6877095 m!7604754))

(declare-fun m!7604756 () Bool)

(assert (=> start!663636 m!7604756))

(declare-fun m!7604758 () Bool)

(assert (=> start!663636 m!7604758))

(check-sat (not b!6877094) (not b!6877093) (not b!6877099) (not b!6877098) (not b!6877095) (not start!663636) (not b!6877096) (not b!6877097))
(check-sat)
(get-model)

(declare-fun d!2159457 () Bool)

(declare-fun lt!2459227 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13035 (List!66490) (InoxSet Context!12246))

(assert (=> d!2159457 (= lt!2459227 (select (content!13035 (t!380233 zl!1632)) c!9978))))

(declare-fun e!4144795 () Bool)

(assert (=> d!2159457 (= lt!2459227 e!4144795)))

(declare-fun res!2804032 () Bool)

(assert (=> d!2159457 (=> (not res!2804032) (not e!4144795))))

(assert (=> d!2159457 (= res!2804032 ((_ is Cons!66366) (t!380233 zl!1632)))))

(assert (=> d!2159457 (= (contains!20395 (t!380233 zl!1632) c!9978) lt!2459227)))

(declare-fun b!6877106 () Bool)

(declare-fun e!4144796 () Bool)

(assert (=> b!6877106 (= e!4144795 e!4144796)))

(declare-fun res!2804031 () Bool)

(assert (=> b!6877106 (=> res!2804031 e!4144796)))

(assert (=> b!6877106 (= res!2804031 (= (h!72814 (t!380233 zl!1632)) c!9978))))

(declare-fun b!6877107 () Bool)

(assert (=> b!6877107 (= e!4144796 (contains!20395 (t!380233 (t!380233 zl!1632)) c!9978))))

(assert (= (and d!2159457 res!2804032) b!6877106))

(assert (= (and b!6877106 (not res!2804031)) b!6877107))

(declare-fun m!7604760 () Bool)

(assert (=> d!2159457 m!7604760))

(declare-fun m!7604762 () Bool)

(assert (=> d!2159457 m!7604762))

(declare-fun m!7604764 () Bool)

(assert (=> b!6877107 m!7604764))

(assert (=> b!6877098 d!2159457))

(declare-fun d!2159461 () Bool)

(declare-fun lt!2459231 () Int)

(assert (=> d!2159461 (>= lt!2459231 0)))

(declare-fun e!4144803 () Int)

(assert (=> d!2159461 (= lt!2459231 e!4144803)))

(declare-fun c!1279548 () Bool)

(assert (=> d!2159461 (= c!1279548 ((_ is Nil!66366) (t!380233 zl!1632)))))

(assert (=> d!2159461 (= (size!40729 (t!380233 zl!1632)) lt!2459231)))

(declare-fun b!6877116 () Bool)

(assert (=> b!6877116 (= e!4144803 0)))

(declare-fun b!6877117 () Bool)

(assert (=> b!6877117 (= e!4144803 (+ 1 (size!40729 (t!380233 (t!380233 zl!1632)))))))

(assert (= (and d!2159461 c!1279548) b!6877116))

(assert (= (and d!2159461 (not c!1279548)) b!6877117))

(declare-fun m!7604768 () Bool)

(assert (=> b!6877117 m!7604768))

(assert (=> b!6877096 d!2159461))

(declare-fun d!2159463 () Bool)

(declare-fun lambda!389334 () Int)

(declare-fun forall!15931 (List!66489 Int) Bool)

(assert (=> d!2159463 (= (inv!85094 (h!72814 zl!1632)) (forall!15931 (exprs!6623 (h!72814 zl!1632)) lambda!389334))))

(declare-fun bs!1837885 () Bool)

(assert (= bs!1837885 d!2159463))

(declare-fun m!7604772 () Bool)

(assert (=> bs!1837885 m!7604772))

(assert (=> b!6877095 d!2159463))

(declare-fun d!2159467 () Bool)

(declare-fun lt!2459232 () Bool)

(assert (=> d!2159467 (= lt!2459232 (select (content!13035 zl!1632) c!9978))))

(declare-fun e!4144804 () Bool)

(assert (=> d!2159467 (= lt!2459232 e!4144804)))

(declare-fun res!2804038 () Bool)

(assert (=> d!2159467 (=> (not res!2804038) (not e!4144804))))

(assert (=> d!2159467 (= res!2804038 ((_ is Cons!66366) zl!1632))))

(assert (=> d!2159467 (= (contains!20395 zl!1632 c!9978) lt!2459232)))

(declare-fun b!6877118 () Bool)

(declare-fun e!4144805 () Bool)

(assert (=> b!6877118 (= e!4144804 e!4144805)))

(declare-fun res!2804037 () Bool)

(assert (=> b!6877118 (=> res!2804037 e!4144805)))

(assert (=> b!6877118 (= res!2804037 (= (h!72814 zl!1632) c!9978))))

(declare-fun b!6877119 () Bool)

(assert (=> b!6877119 (= e!4144805 (contains!20395 (t!380233 zl!1632) c!9978))))

(assert (= (and d!2159467 res!2804038) b!6877118))

(assert (= (and b!6877118 (not res!2804037)) b!6877119))

(declare-fun m!7604774 () Bool)

(assert (=> d!2159467 m!7604774))

(declare-fun m!7604776 () Bool)

(assert (=> d!2159467 m!7604776))

(assert (=> b!6877119 m!7604752))

(assert (=> start!663636 d!2159467))

(declare-fun bs!1837886 () Bool)

(declare-fun d!2159469 () Bool)

(assert (= bs!1837886 (and d!2159469 d!2159463)))

(declare-fun lambda!389335 () Int)

(assert (=> bs!1837886 (= lambda!389335 lambda!389334)))

(assert (=> d!2159469 (= (inv!85094 c!9978) (forall!15931 (exprs!6623 c!9978) lambda!389335))))

(declare-fun bs!1837887 () Bool)

(assert (= bs!1837887 d!2159469))

(declare-fun m!7604778 () Bool)

(assert (=> bs!1837887 m!7604778))

(assert (=> start!663636 d!2159469))

(assert (=> b!6877099 d!2159461))

(declare-fun d!2159471 () Bool)

(declare-fun lt!2459233 () Int)

(assert (=> d!2159471 (>= lt!2459233 0)))

(declare-fun e!4144806 () Int)

(assert (=> d!2159471 (= lt!2459233 e!4144806)))

(declare-fun c!1279549 () Bool)

(assert (=> d!2159471 (= c!1279549 ((_ is Nil!66366) zl!1632))))

(assert (=> d!2159471 (= (size!40729 zl!1632) lt!2459233)))

(declare-fun b!6877120 () Bool)

(assert (=> b!6877120 (= e!4144806 0)))

(declare-fun b!6877121 () Bool)

(assert (=> b!6877121 (= e!4144806 (+ 1 (size!40729 (t!380233 zl!1632))))))

(assert (= (and d!2159471 c!1279549) b!6877120))

(assert (= (and d!2159471 (not c!1279549)) b!6877121))

(assert (=> b!6877121 m!7604748))

(assert (=> b!6877093 d!2159471))

(declare-fun b!6877126 () Bool)

(declare-fun e!4144809 () Bool)

(declare-fun tp!1890058 () Bool)

(declare-fun tp!1890059 () Bool)

(assert (=> b!6877126 (= e!4144809 (and tp!1890058 tp!1890059))))

(assert (=> b!6877097 (= tp!1890051 e!4144809)))

(assert (= (and b!6877097 ((_ is Cons!66365) (exprs!6623 c!9978))) b!6877126))

(declare-fun b!6877134 () Bool)

(declare-fun e!4144815 () Bool)

(declare-fun tp!1890064 () Bool)

(assert (=> b!6877134 (= e!4144815 tp!1890064)))

(declare-fun b!6877133 () Bool)

(declare-fun tp!1890065 () Bool)

(declare-fun e!4144814 () Bool)

(assert (=> b!6877133 (= e!4144814 (and (inv!85094 (h!72814 (t!380233 zl!1632))) e!4144815 tp!1890065))))

(assert (=> b!6877095 (= tp!1890053 e!4144814)))

(assert (= b!6877133 b!6877134))

(assert (= (and b!6877095 ((_ is Cons!66366) (t!380233 zl!1632))) b!6877133))

(declare-fun m!7604780 () Bool)

(assert (=> b!6877133 m!7604780))

(declare-fun b!6877135 () Bool)

(declare-fun e!4144816 () Bool)

(declare-fun tp!1890066 () Bool)

(declare-fun tp!1890067 () Bool)

(assert (=> b!6877135 (= e!4144816 (and tp!1890066 tp!1890067))))

(assert (=> b!6877094 (= tp!1890052 e!4144816)))

(assert (= (and b!6877094 ((_ is Cons!66365) (exprs!6623 (h!72814 zl!1632)))) b!6877135))

(check-sat (not b!6877133) (not d!2159457) (not b!6877107) (not b!6877126) (not b!6877134) (not b!6877119) (not b!6877121) (not b!6877135) (not b!6877117) (not d!2159463) (not d!2159467) (not d!2159469))
(check-sat)
