; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72196 () Bool)

(assert start!72196)

(declare-fun res!569251 () Bool)

(declare-fun e!466909 () Bool)

(assert (=> start!72196 (=> (not res!569251) (not e!466909))))

(declare-datatypes ((List!16067 0))(
  ( (Nil!16064) (Cons!16063 (h!17194 (_ BitVec 64)) (t!22446 List!16067)) )
))
(declare-fun l!404 () List!16067)

(declare-fun length!33 (List!16067) Int)

(assert (=> start!72196 (= res!569251 (< (length!33 l!404) 2147483647))))

(assert (=> start!72196 e!466909))

(assert (=> start!72196 true))

(declare-fun b!836712 () Bool)

(declare-fun ListPrimitiveSize!80 (List!16067) Int)

(assert (=> b!836712 (= e!466909 (< (ListPrimitiveSize!80 l!404) 0))))

(assert (= (and start!72196 res!569251) b!836712))

(declare-fun m!781917 () Bool)

(assert (=> start!72196 m!781917))

(declare-fun m!781919 () Bool)

(assert (=> b!836712 m!781919))

(check-sat (not start!72196) (not b!836712))
(check-sat)
(get-model)

(declare-fun d!107683 () Bool)

(declare-fun size!22889 (List!16067) Int)

(assert (=> d!107683 (= (length!33 l!404) (size!22889 l!404))))

(declare-fun bs!23525 () Bool)

(assert (= bs!23525 d!107683))

(declare-fun m!781925 () Bool)

(assert (=> bs!23525 m!781925))

(assert (=> start!72196 d!107683))

(declare-fun d!107687 () Bool)

(declare-fun lt!380443 () Int)

(assert (=> d!107687 (>= lt!380443 0)))

(declare-fun e!466920 () Int)

(assert (=> d!107687 (= lt!380443 e!466920)))

(declare-fun c!91049 () Bool)

(get-info :version)

(assert (=> d!107687 (= c!91049 ((_ is Nil!16064) l!404))))

(assert (=> d!107687 (= (ListPrimitiveSize!80 l!404) lt!380443)))

(declare-fun b!836730 () Bool)

(assert (=> b!836730 (= e!466920 0)))

(declare-fun b!836731 () Bool)

(assert (=> b!836731 (= e!466920 (+ 1 (ListPrimitiveSize!80 (t!22446 l!404))))))

(assert (= (and d!107687 c!91049) b!836730))

(assert (= (and d!107687 (not c!91049)) b!836731))

(declare-fun m!781933 () Bool)

(assert (=> b!836731 m!781933))

(assert (=> b!836712 d!107687))

(check-sat (not d!107683) (not b!836731))
(check-sat)
