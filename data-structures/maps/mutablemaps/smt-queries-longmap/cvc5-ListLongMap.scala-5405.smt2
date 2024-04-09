; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72176 () Bool)

(assert start!72176)

(declare-fun res!569232 () Bool)

(declare-fun e!466885 () Bool)

(assert (=> start!72176 (=> (not res!569232) (not e!466885))))

(declare-datatypes ((List!16063 0))(
  ( (Nil!16060) (Cons!16059 (h!17190 (_ BitVec 64)) (t!22442 List!16063)) )
))
(declare-fun l!404 () List!16063)

(declare-fun length!29 (List!16063) Int)

(assert (=> start!72176 (= res!569232 (< (length!29 l!404) 2147483647))))

(assert (=> start!72176 e!466885))

(assert (=> start!72176 true))

(declare-fun b!836669 () Bool)

(declare-fun res!569233 () Bool)

(assert (=> b!836669 (=> (not res!569233) (not e!466885))))

(assert (=> b!836669 (= res!569233 (is-Cons!16059 l!404))))

(declare-fun b!836670 () Bool)

(assert (=> b!836670 (= e!466885 (>= (length!29 (t!22442 l!404)) 2147483647))))

(assert (= (and start!72176 res!569232) b!836669))

(assert (= (and b!836669 res!569233) b!836670))

(declare-fun m!781883 () Bool)

(assert (=> start!72176 m!781883))

(declare-fun m!781885 () Bool)

(assert (=> b!836670 m!781885))

(push 1)

(assert (not b!836670))

(assert (not start!72176))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107659 () Bool)

(declare-fun size!22887 (List!16063) Int)

(assert (=> d!107659 (= (length!29 (t!22442 l!404)) (size!22887 (t!22442 l!404)))))

(declare-fun bs!23518 () Bool)

(assert (= bs!23518 d!107659))

(declare-fun m!781899 () Bool)

(assert (=> bs!23518 m!781899))

(assert (=> b!836670 d!107659))

(declare-fun d!107663 () Bool)

(assert (=> d!107663 (= (length!29 l!404) (size!22887 l!404))))

(declare-fun bs!23519 () Bool)

(assert (= bs!23519 d!107663))

(declare-fun m!781901 () Bool)

(assert (=> bs!23519 m!781901))

(assert (=> start!72176 d!107663))

(push 1)

(assert (not d!107659))

(assert (not d!107663))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107671 () Bool)

(declare-fun lt!380430 () Int)

(assert (=> d!107671 (>= lt!380430 0)))

(declare-fun e!466898 () Int)

(assert (=> d!107671 (= lt!380430 e!466898)))

(declare-fun c!91036 () Bool)

(assert (=> d!107671 (= c!91036 (is-Nil!16060 (t!22442 l!404)))))

(assert (=> d!107671 (= (size!22887 (t!22442 l!404)) lt!380430)))

(declare-fun b!836695 () Bool)

(assert (=> b!836695 (= e!466898 0)))

(declare-fun b!836696 () Bool)

(assert (=> b!836696 (= e!466898 (+ 1 (size!22887 (t!22442 (t!22442 l!404)))))))

(assert (= (and d!107671 c!91036) b!836695))

(assert (= (and d!107671 (not c!91036)) b!836696))

(declare-fun m!781909 () Bool)

(assert (=> b!836696 m!781909))

(assert (=> d!107659 d!107671))

(declare-fun d!107675 () Bool)

(declare-fun lt!380431 () Int)

(assert (=> d!107675 (>= lt!380431 0)))

(declare-fun e!466899 () Int)

(assert (=> d!107675 (= lt!380431 e!466899)))

(declare-fun c!91037 () Bool)

(assert (=> d!107675 (= c!91037 (is-Nil!16060 l!404))))

(assert (=> d!107675 (= (size!22887 l!404) lt!380431)))

(declare-fun b!836697 () Bool)

(assert (