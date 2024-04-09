; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72178 () Bool)

(assert start!72178)

(declare-fun res!569238 () Bool)

(declare-fun e!466888 () Bool)

(assert (=> start!72178 (=> (not res!569238) (not e!466888))))

(declare-datatypes ((List!16064 0))(
  ( (Nil!16061) (Cons!16060 (h!17191 (_ BitVec 64)) (t!22443 List!16064)) )
))
(declare-fun l!404 () List!16064)

(declare-fun length!30 (List!16064) Int)

(assert (=> start!72178 (= res!569238 (< (length!30 l!404) 2147483647))))

(assert (=> start!72178 e!466888))

(assert (=> start!72178 true))

(declare-fun b!836675 () Bool)

(declare-fun res!569239 () Bool)

(assert (=> b!836675 (=> (not res!569239) (not e!466888))))

(get-info :version)

(assert (=> b!836675 (= res!569239 ((_ is Cons!16060) l!404))))

(declare-fun b!836676 () Bool)

(assert (=> b!836676 (= e!466888 (>= (length!30 (t!22443 l!404)) 2147483647))))

(assert (= (and start!72178 res!569238) b!836675))

(assert (= (and b!836675 res!569239) b!836676))

(declare-fun m!781887 () Bool)

(assert (=> start!72178 m!781887))

(declare-fun m!781889 () Bool)

(assert (=> b!836676 m!781889))

(check-sat (not start!72178) (not b!836676))
(check-sat)
(get-model)

(declare-fun d!107655 () Bool)

(declare-fun size!22886 (List!16064) Int)

(assert (=> d!107655 (= (length!30 l!404) (size!22886 l!404))))

(declare-fun bs!23516 () Bool)

(assert (= bs!23516 d!107655))

(declare-fun m!781895 () Bool)

(assert (=> bs!23516 m!781895))

(assert (=> start!72178 d!107655))

(declare-fun d!107657 () Bool)

(assert (=> d!107657 (= (length!30 (t!22443 l!404)) (size!22886 (t!22443 l!404)))))

(declare-fun bs!23517 () Bool)

(assert (= bs!23517 d!107657))

(declare-fun m!781897 () Bool)

(assert (=> bs!23517 m!781897))

(assert (=> b!836676 d!107657))

(check-sat (not d!107657) (not d!107655))
(check-sat)
(get-model)

(declare-fun d!107667 () Bool)

(declare-fun lt!380426 () Int)

(assert (=> d!107667 (>= lt!380426 0)))

(declare-fun e!466894 () Int)

(assert (=> d!107667 (= lt!380426 e!466894)))

(declare-fun c!91032 () Bool)

(assert (=> d!107667 (= c!91032 ((_ is Nil!16061) (t!22443 l!404)))))

(assert (=> d!107667 (= (size!22886 (t!22443 l!404)) lt!380426)))

(declare-fun b!836687 () Bool)

(assert (=> b!836687 (= e!466894 0)))

(declare-fun b!836688 () Bool)

(assert (=> b!836688 (= e!466894 (+ 1 (size!22886 (t!22443 (t!22443 l!404)))))))

(assert (= (and d!107667 c!91032) b!836687))

(assert (= (and d!107667 (not c!91032)) b!836688))

(declare-fun m!781907 () Bool)

(assert (=> b!836688 m!781907))

(assert (=> d!107657 d!107667))

(declare-fun d!107669 () Bool)

(declare-fun lt!380427 () Int)

(assert (=> d!107669 (>= lt!380427 0)))

(declare-fun e!466895 () Int)

(assert (=> d!107669 (= lt!380427 e!466895)))

(declare-fun c!91033 () Bool)

(assert (=> d!107669 (= c!91033 ((_ is Nil!16061) l!404))))

(assert (=> d!107669 (= (size!22886 l!404) lt!380427)))

(declare-fun b!836689 () Bool)

(assert (=> b!836689 (= e!466895 0)))

(declare-fun b!836690 () Bool)

(assert (=> b!836690 (= e!466895 (+ 1 (size!22886 (t!22443 l!404))))))

(assert (= (and d!107669 c!91033) b!836689))

(assert (= (and d!107669 (not c!91033)) b!836690))

(assert (=> b!836690 m!781897))

(assert (=> d!107655 d!107669))

(check-sat (not b!836688) (not b!836690))
(check-sat)
