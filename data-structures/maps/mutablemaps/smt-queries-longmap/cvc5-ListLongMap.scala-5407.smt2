; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72212 () Bool)

(assert start!72212)

(declare-fun res!569259 () Bool)

(declare-fun e!466924 () Bool)

(assert (=> start!72212 (=> (not res!569259) (not e!466924))))

(declare-datatypes ((List!16069 0))(
  ( (Nil!16066) (Cons!16065 (h!17196 (_ BitVec 64)) (t!22448 List!16069)) )
))
(declare-fun l!404 () List!16069)

(declare-fun length!35 (List!16069) Int)

(assert (=> start!72212 (= res!569259 (< (length!35 l!404) 2147483647))))

(assert (=> start!72212 e!466924))

(assert (=> start!72212 true))

(declare-fun b!836738 () Bool)

(declare-fun res!569260 () Bool)

(assert (=> b!836738 (=> (not res!569260) (not e!466924))))

(assert (=> b!836738 (= res!569260 (is-Cons!16065 l!404))))

(declare-fun b!836739 () Bool)

(declare-fun ListPrimitiveSize!82 (List!16069) Int)

(assert (=> b!836739 (= e!466924 (>= (ListPrimitiveSize!82 (t!22448 l!404)) (ListPrimitiveSize!82 l!404)))))

(assert (= (and start!72212 res!569259) b!836738))

(assert (= (and b!836738 res!569260) b!836739))

(declare-fun m!781937 () Bool)

(assert (=> start!72212 m!781937))

(declare-fun m!781939 () Bool)

(assert (=> b!836739 m!781939))

(declare-fun m!781941 () Bool)

(assert (=> b!836739 m!781941))

(push 1)

(assert (not b!836739))

(assert (not start!72212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107697 () Bool)

(declare-fun lt!380451 () Int)

(assert (=> d!107697 (>= lt!380451 0)))

(declare-fun e!466937 () Int)

(assert (=> d!107697 (= lt!380451 e!466937)))

(declare-fun c!91057 () Bool)

(assert (=> d!107697 (= c!91057 (is-Nil!16066 (t!22448 l!404)))))

(assert (=> d!107697 (= (ListPrimitiveSize!82 (t!22448 l!404)) lt!380451)))

(declare-fun b!836764 () Bool)

(assert (=> b!836764 (= e!466937 0)))

(declare-fun b!836765 () Bool)

(assert (=> b!836765 (= e!466937 (+ 1 (ListPrimitiveSize!82 (t!22448 (t!22448 l!404)))))))

(assert (= (and d!107697 c!91057) b!836764))

(assert (= (and d!107697 (not c!91057)) b!836765))

(declare-fun m!781957 () Bool)

(assert (=> b!836765 m!781957))

(assert (=> b!836739 d!107697))

(declare-fun d!107703 () Bool)

(declare-fun lt!380452 () Int)

(assert (=> d!107703 (>= lt!380452 0)))

(declare-fun e!466938 () Int)

(assert (=> d!107703 (= lt!380452 e!466938)))

(declare-fun c!91058 () Bool)

(assert (=> d!107703 (= c!91058 (is-Nil!16066 l!404))))

(assert (=> d!107703 (= (ListPrimitiveSize!82 l!404) lt!380452)))

(declare-fun b!836766 () Bool)

(assert (=> b!836766 (= e!466938 0)))

(declare-fun b!836767 () Bool)

(assert (=> b!836767 (= e!466938 (+ 1 (ListPrimitiveSize!82 (t!22448 l!404))))))

(assert (= (and d!107703 c!91058) b!836766))

(assert (= (and d!107703 (not c!91058)) b!836767))

(assert (=> b!836767 m!781939))

(assert (=> b!836739 d!107703))

(declare-fun d!107705 () Bool)

(declare-fun size!22893 (List!16069) Int)

(assert (=> d!107705 (= (length!35 l!404) (size!22893 l!404))))

(declare-fun bs!23532 () Bool)

(assert (= bs!23532 d!107705))

(declare-fun m!781963 () Bool)

(assert (=> bs!23532 m!781963))

(assert (=> start!72212 d!107705))

(push 1)

