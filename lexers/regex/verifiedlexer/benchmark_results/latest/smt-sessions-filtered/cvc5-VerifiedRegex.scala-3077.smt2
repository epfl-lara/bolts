; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183152 () Bool)

(assert start!183152)

(declare-fun b!1840114 () Bool)

(declare-fun e!1175930 () Bool)

(declare-fun tp_is_empty!8307 () Bool)

(declare-fun tp!520340 () Bool)

(assert (=> b!1840114 (= e!1175930 (and tp_is_empty!8307 tp!520340))))

(declare-fun res!826971 () Bool)

(declare-fun e!1175929 () Bool)

(assert (=> start!183152 (=> (not res!826971) (not e!1175929))))

(declare-datatypes ((B!1559 0))(
  ( (B!1560 (val!5727 Int)) )
))
(declare-datatypes ((List!20327 0))(
  ( (Nil!20257) (Cons!20257 (h!25658 B!1559) (t!171756 List!20327)) )
))
(declare-fun p!2031 () List!20327)

(declare-fun l!3477 () List!20327)

(declare-fun isPrefix!1866 (List!20327 List!20327) Bool)

(assert (=> start!183152 (= res!826971 (isPrefix!1866 p!2031 l!3477))))

(assert (=> start!183152 e!1175929))

(declare-fun e!1175931 () Bool)

(assert (=> start!183152 e!1175931))

(assert (=> start!183152 e!1175930))

(declare-fun b!1840113 () Bool)

(declare-fun tp!520339 () Bool)

(assert (=> b!1840113 (= e!1175931 (and tp_is_empty!8307 tp!520339))))

(declare-fun b!1840111 () Bool)

(declare-fun res!826972 () Bool)

(assert (=> b!1840111 (=> (not res!826972) (not e!1175929))))

(declare-fun size!16057 (List!20327) Int)

(assert (=> b!1840111 (= res!826972 (<= (+ 1 (size!16057 p!2031)) (size!16057 l!3477)))))

(declare-fun b!1840112 () Bool)

(declare-fun ListPrimitiveSize!119 (List!20327) Int)

(assert (=> b!1840112 (= e!1175929 (< (ListPrimitiveSize!119 p!2031) 0))))

(assert (= (and start!183152 res!826971) b!1840111))

(assert (= (and b!1840111 res!826972) b!1840112))

(assert (= (and start!183152 (is-Cons!20257 p!2031)) b!1840113))

(assert (= (and start!183152 (is-Cons!20257 l!3477)) b!1840114))

(declare-fun m!2267685 () Bool)

(assert (=> start!183152 m!2267685))

(declare-fun m!2267687 () Bool)

(assert (=> b!1840111 m!2267687))

(declare-fun m!2267689 () Bool)

(assert (=> b!1840111 m!2267689))

(declare-fun m!2267691 () Bool)

(assert (=> b!1840112 m!2267691))

(push 1)

(assert (not b!1840114))

(assert (not start!183152))

(assert (not b!1840113))

(assert tp_is_empty!8307)

(assert (not b!1840111))

(assert (not b!1840112))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!562668 () Bool)

(declare-fun lt!714041 () Int)

(assert (=> d!562668 (>= lt!714041 0)))

(declare-fun e!1175943 () Int)

(assert (=> d!562668 (= lt!714041 e!1175943)))

(declare-fun c!300330 () Bool)

(assert (=> d!562668 (= c!300330 (is-Nil!20257 p!2031))))

(assert (=> d!562668 (= (ListPrimitiveSize!119 p!2031) lt!714041)))

(declare-fun b!1840131 () Bool)

(assert (=> b!1840131 (= e!1175943 0)))

(declare-fun b!1840132 () Bool)

(assert (=> b!1840132 (= e!1175943 (+ 1 (ListPrimitiveSize!119 (t!171756 p!2031))))))

(assert (= (and d!562668 c!300330) b!1840131))

(assert (= (and d!562668 (not c!300330)) b!1840132))

(declare-fun m!2267701 () Bool)

(assert (=> b!1840132 m!2267701))

(assert (=> b!1840112 d!562668))

(declare-fun b!1840155 () Bool)

(declare-fun e!1175960 () Bool)

(declare-fun tail!2774 (List!20327) List!20327)

(assert (=> b!1840155 (= e!1175960 (isPrefix!1866 (tail!2774 p!2031) (tail!2774 l!3477)))))

(declare-fun d!562672 () Bool)

(declare-fun e!1175959 () Bool)

(assert (=> d!562672 e!1175959))

(declare-fun res!827002 () Bool)

(assert (=> d!562672 (=> res!827002 e!1175959)))

(declare-fun lt!714047 () Bool)

(assert (=> d!562672 (= res!827002 (not lt!714047))))

(declare-fun e!1175961 () Bool)

(assert (=> d!562672 (= lt!714047 e!1175961)))

(declare-fun res!827001 () Bool)

(assert (=> d!562672 (=> res!827001 e!1175961)))

(assert (=> d!562672 (= res!827001 (is-Nil!20257 p!2031))))

(assert (=> d!562672 (= (isPrefix!1866 p!2031 l!3477) lt!714047)))

(declare-fun b!1840153 () Bool)

(assert (=> b!1840153 (= e!1175961 e!1175960)))

(declare-fun res!827000 () Bool)

(assert (=> b!1840153 (=> (not res!827000) (not e!1175960))))

(assert (=> b!1840153 (= res!827000 (not (is-Nil!20257 l!3477)))))

(declare-fun b!1840156 () Bool)

(assert (=> b!1840156 (= e!1175959 (>= (size!16057 l!3477) (size!16057 p!2031)))))

(declare-fun b!1840154 () Bool)

(declare-fun res!826999 () Bool)

(assert (=> b!1840154 (=> (not res!826999) (not e!1175960))))

(declare-fun head!4310 (List!20327) B!1559)

(assert (=> b!1840154 (= res!826999 (= (head!4310 p!2031) (head!4310 l!3477)))))

(assert (= (and d!562672 (not res!827001)) b!1840153))

(assert (= (and b!1840153 res!827000) b!1840154))

(assert (= (and b!1840154 res!826999) b!1840155))

(assert (= (and d!562672 (not res!827002)) b!1840156))

(declare-fun m!2267703 () Bool)

(assert (=> b!1840155 m!2267703))

(declare-fun m!2267705 () Bool)

(assert (=> b!1840155 m!2267705))

(assert (=> b!1840155 m!2267703))

(assert (=> b!1840155 m!2267705))

(declare-fun m!2267707 () Bool)

(assert (=> b!1840155 m!2267707))

(assert (=> b!1840156 m!2267689))

(assert (=> b!1840156 m!2267687))

(declare-fun m!2267711 () Bool)

(assert (=> b!1840154 m!2267711))

(declare-fun m!2267713 () Bool)

(assert (=> b!1840154 m!2267713))

(assert (=> start!183152 d!562672))

(declare-fun d!562674 () Bool)

(declare-fun lt!714052 () Int)

(assert (=> d!562674 (>= lt!714052 0)))

(declare-fun e!1175966 () Int)

(assert (=> d!562674 (= lt!714052 e!1175966)))

(declare-fun c!300335 () Bool)

(assert (=> d!562674 (= c!300335 (is-Nil!20257 p!2031))))

(assert (=> d!562674 (= (size!16057 p!2031) lt!714052)))

(declare-fun b!1840165 () Bool)

(assert (=> b!1840165 (= e!1175966 0)))

(declare-fun b!1840166 () Bool)

(assert (=> b!1840166 (= e!1175966 (+ 1 (size!16057 (t!171756 p!2031))))))

(assert (= (and d!562674 c!300335) b!1840165))

(assert (= (and d!562674 (not c!300335)) b!1840166))

(declare-fun m!2267723 () Bool)

(assert (=> b!1840166 m!2267723))

(assert (=> b!1840111 d!562674))

(declare-fun d!562678 () Bool)

(declare-fun lt!714053 () Int)

(assert (=> d!562678 (>= lt!714053 0)))

(declare-fun e!1175967 () Int)

(assert (=> d!562678 (= lt!714053 e!1175967)))

(declare-fun c!300336 () Bool)

(assert (=> d!562678 (= c!300336 (is-Nil!20257 l!3477))))

(assert (=> d!562678 (= (size!16057 l!3477) lt!714053)))

(declare-fun b!1840167 () Bool)

(assert (=> b!1840167 (= e!1175967 0)))

(declare-fun b!1840168 () Bool)

(assert (=> b!1840168 (= e!1175967 (+ 1 (size!16057 (t!171756 l!3477))))))

(assert (= (and d!562678 c!300336) b!1840167))

(assert (= (and d!562678 (not c!300336)) b!1840168))

(declare-fun m!2267725 () Bool)

(assert (=> b!1840168 m!2267725))

(assert (=> b!1840111 d!562678))

(declare-fun b!1840177 () Bool)

(declare-fun e!1175972 () Bool)

(declare-fun tp!520349 () Bool)

(assert (=> b!1840177 (= e!1175972 (and tp_is_empty!8307 tp!520349))))

(assert (=> b!1840114 (= tp!520340 e!1175972)))

(assert (= (and b!1840114 (is-Cons!20257 (t!171756 l!3477))) b!1840177))

(declare-fun b!1840178 () Bool)

(declare-fun e!1175973 () Bool)

(declare-fun tp!520350 () Bool)

(assert (=> b!1840178 (= e!1175973 (and tp_is_empty!8307 tp!520350))))

(assert (=> b!1840113 (= tp!520339 e!1175973)))

(assert (= (and b!1840113 (is-Cons!20257 (t!171756 p!2031))) b!1840178))

(push 1)

(assert (not b!1840177))

(assert (not b!1840166))

(assert (not b!1840132))

(assert (not b!1840178))

(assert (not b!1840168))

(assert tp_is_empty!8307)

(assert (not b!1840156))

(assert (not b!1840154))

(assert (not b!1840155))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

