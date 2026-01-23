; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216170 () Bool)

(assert start!216170)

(declare-fun res!952720 () Bool)

(declare-fun e!1416680 () Bool)

(assert (=> start!216170 (=> (not res!952720) (not e!1416680))))

(declare-datatypes ((B!1813 0))(
  ( (B!1814 (val!7432 Int)) )
))
(declare-datatypes ((List!26060 0))(
  ( (Nil!25976) (Cons!25976 (h!31377 B!1813) (t!199376 List!26060)) )
))
(declare-fun l!3389 () List!26060)

(declare-fun isEmpty!14854 (List!26060) Bool)

(assert (=> start!216170 (= res!952720 (not (isEmpty!14854 l!3389)))))

(assert (=> start!216170 e!1416680))

(declare-fun e!1416679 () Bool)

(assert (=> start!216170 e!1416679))

(declare-fun b!2218388 () Bool)

(declare-fun res!952719 () Bool)

(assert (=> b!2218388 (=> (not res!952719) (not e!1416680))))

(get-info :version)

(assert (=> b!2218388 (= res!952719 (and (or (not ((_ is Cons!25976) l!3389)) (not ((_ is Nil!25976) (t!199376 l!3389)))) (not ((_ is Cons!25976) l!3389))))))

(declare-fun b!2218389 () Bool)

(declare-fun isPrefix!2183 (List!26060 List!26060) Bool)

(declare-fun removeLast!24 (List!26060) List!26060)

(assert (=> b!2218389 (= e!1416680 (not (isPrefix!2183 (removeLast!24 l!3389) l!3389)))))

(declare-fun b!2218390 () Bool)

(declare-fun tp_is_empty!9861 () Bool)

(declare-fun tp!691110 () Bool)

(assert (=> b!2218390 (= e!1416679 (and tp_is_empty!9861 tp!691110))))

(assert (= (and start!216170 res!952720) b!2218388))

(assert (= (and b!2218388 res!952719) b!2218389))

(assert (= (and start!216170 ((_ is Cons!25976) l!3389)) b!2218390))

(declare-fun m!2659233 () Bool)

(assert (=> start!216170 m!2659233))

(declare-fun m!2659235 () Bool)

(assert (=> b!2218389 m!2659235))

(assert (=> b!2218389 m!2659235))

(declare-fun m!2659237 () Bool)

(assert (=> b!2218389 m!2659237))

(check-sat (not start!216170) (not b!2218389) (not b!2218390) tp_is_empty!9861)
(check-sat)
(get-model)

(declare-fun d!663130 () Bool)

(assert (=> d!663130 (= (isEmpty!14854 l!3389) ((_ is Nil!25976) l!3389))))

(assert (=> start!216170 d!663130))

(declare-fun d!663132 () Bool)

(declare-fun e!1416698 () Bool)

(assert (=> d!663132 e!1416698))

(declare-fun res!952744 () Bool)

(assert (=> d!663132 (=> res!952744 e!1416698)))

(declare-fun lt!827020 () Bool)

(assert (=> d!663132 (= res!952744 (not lt!827020))))

(declare-fun e!1416696 () Bool)

(assert (=> d!663132 (= lt!827020 e!1416696)))

(declare-fun res!952741 () Bool)

(assert (=> d!663132 (=> res!952741 e!1416696)))

(assert (=> d!663132 (= res!952741 ((_ is Nil!25976) (removeLast!24 l!3389)))))

(assert (=> d!663132 (= (isPrefix!2183 (removeLast!24 l!3389) l!3389) lt!827020)))

(declare-fun b!2218414 () Bool)

(declare-fun size!20268 (List!26060) Int)

(assert (=> b!2218414 (= e!1416698 (>= (size!20268 l!3389) (size!20268 (removeLast!24 l!3389))))))

(declare-fun b!2218411 () Bool)

(declare-fun e!1416697 () Bool)

(assert (=> b!2218411 (= e!1416696 e!1416697)))

(declare-fun res!952742 () Bool)

(assert (=> b!2218411 (=> (not res!952742) (not e!1416697))))

(assert (=> b!2218411 (= res!952742 (not ((_ is Nil!25976) l!3389)))))

(declare-fun b!2218413 () Bool)

(declare-fun tail!3233 (List!26060) List!26060)

(assert (=> b!2218413 (= e!1416697 (isPrefix!2183 (tail!3233 (removeLast!24 l!3389)) (tail!3233 l!3389)))))

(declare-fun b!2218412 () Bool)

(declare-fun res!952743 () Bool)

(assert (=> b!2218412 (=> (not res!952743) (not e!1416697))))

(declare-fun head!4744 (List!26060) B!1813)

(assert (=> b!2218412 (= res!952743 (= (head!4744 (removeLast!24 l!3389)) (head!4744 l!3389)))))

(assert (= (and d!663132 (not res!952741)) b!2218411))

(assert (= (and b!2218411 res!952742) b!2218412))

(assert (= (and b!2218412 res!952743) b!2218413))

(assert (= (and d!663132 (not res!952744)) b!2218414))

(declare-fun m!2659253 () Bool)

(assert (=> b!2218414 m!2659253))

(assert (=> b!2218414 m!2659235))

(declare-fun m!2659255 () Bool)

(assert (=> b!2218414 m!2659255))

(assert (=> b!2218413 m!2659235))

(declare-fun m!2659257 () Bool)

(assert (=> b!2218413 m!2659257))

(declare-fun m!2659259 () Bool)

(assert (=> b!2218413 m!2659259))

(assert (=> b!2218413 m!2659257))

(assert (=> b!2218413 m!2659259))

(declare-fun m!2659261 () Bool)

(assert (=> b!2218413 m!2659261))

(assert (=> b!2218412 m!2659235))

(declare-fun m!2659263 () Bool)

(assert (=> b!2218412 m!2659263))

(declare-fun m!2659265 () Bool)

(assert (=> b!2218412 m!2659265))

(assert (=> b!2218389 d!663132))

(declare-fun d!663136 () Bool)

(declare-fun lt!827026 () List!26060)

(declare-fun ++!6464 (List!26060 List!26060) List!26060)

(declare-fun last!362 (List!26060) B!1813)

(assert (=> d!663136 (= (++!6464 lt!827026 (Cons!25976 (last!362 l!3389) Nil!25976)) l!3389)))

(declare-fun e!1416704 () List!26060)

(assert (=> d!663136 (= lt!827026 e!1416704)))

(declare-fun c!354189 () Bool)

(assert (=> d!663136 (= c!354189 (and ((_ is Cons!25976) l!3389) ((_ is Nil!25976) (t!199376 l!3389))))))

(assert (=> d!663136 (not (isEmpty!14854 l!3389))))

(assert (=> d!663136 (= (removeLast!24 l!3389) lt!827026)))

(declare-fun b!2218425 () Bool)

(assert (=> b!2218425 (= e!1416704 Nil!25976)))

(declare-fun b!2218426 () Bool)

(assert (=> b!2218426 (= e!1416704 (Cons!25976 (h!31377 l!3389) (removeLast!24 (t!199376 l!3389))))))

(assert (= (and d!663136 c!354189) b!2218425))

(assert (= (and d!663136 (not c!354189)) b!2218426))

(declare-fun m!2659273 () Bool)

(assert (=> d!663136 m!2659273))

(declare-fun m!2659275 () Bool)

(assert (=> d!663136 m!2659275))

(assert (=> d!663136 m!2659233))

(declare-fun m!2659277 () Bool)

(assert (=> b!2218426 m!2659277))

(assert (=> b!2218389 d!663136))

(declare-fun b!2218436 () Bool)

(declare-fun e!1416710 () Bool)

(declare-fun tp!691116 () Bool)

(assert (=> b!2218436 (= e!1416710 (and tp_is_empty!9861 tp!691116))))

(assert (=> b!2218390 (= tp!691110 e!1416710)))

(assert (= (and b!2218390 ((_ is Cons!25976) (t!199376 l!3389))) b!2218436))

(check-sat (not b!2218413) (not b!2218414) (not d!663136) tp_is_empty!9861 (not b!2218436) (not b!2218412) (not b!2218426))
(check-sat)
