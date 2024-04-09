; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72214 () Bool)

(assert start!72214)

(declare-fun res!569265 () Bool)

(declare-fun e!466927 () Bool)

(assert (=> start!72214 (=> (not res!569265) (not e!466927))))

(declare-datatypes ((List!16070 0))(
  ( (Nil!16067) (Cons!16066 (h!17197 (_ BitVec 64)) (t!22449 List!16070)) )
))
(declare-fun l!404 () List!16070)

(declare-fun length!36 (List!16070) Int)

(assert (=> start!72214 (= res!569265 (< (length!36 l!404) 2147483647))))

(assert (=> start!72214 e!466927))

(assert (=> start!72214 true))

(declare-fun b!836744 () Bool)

(declare-fun res!569266 () Bool)

(assert (=> b!836744 (=> (not res!569266) (not e!466927))))

(get-info :version)

(assert (=> b!836744 (= res!569266 ((_ is Cons!16066) l!404))))

(declare-fun b!836745 () Bool)

(declare-fun ListPrimitiveSize!83 (List!16070) Int)

(assert (=> b!836745 (= e!466927 (>= (ListPrimitiveSize!83 (t!22449 l!404)) (ListPrimitiveSize!83 l!404)))))

(assert (= (and start!72214 res!569265) b!836744))

(assert (= (and b!836744 res!569266) b!836745))

(declare-fun m!781943 () Bool)

(assert (=> start!72214 m!781943))

(declare-fun m!781945 () Bool)

(assert (=> b!836745 m!781945))

(declare-fun m!781947 () Bool)

(assert (=> b!836745 m!781947))

(check-sat (not start!72214) (not b!836745))
(check-sat)
(get-model)

(declare-fun d!107695 () Bool)

(declare-fun size!22892 (List!16070) Int)

(assert (=> d!107695 (= (length!36 l!404) (size!22892 l!404))))

(declare-fun bs!23531 () Bool)

(assert (= bs!23531 d!107695))

(declare-fun m!781955 () Bool)

(assert (=> bs!23531 m!781955))

(assert (=> start!72214 d!107695))

(declare-fun d!107701 () Bool)

(declare-fun lt!380454 () Int)

(assert (=> d!107701 (>= lt!380454 0)))

(declare-fun e!466940 () Int)

(assert (=> d!107701 (= lt!380454 e!466940)))

(declare-fun c!91060 () Bool)

(assert (=> d!107701 (= c!91060 ((_ is Nil!16067) (t!22449 l!404)))))

(assert (=> d!107701 (= (ListPrimitiveSize!83 (t!22449 l!404)) lt!380454)))

(declare-fun b!836770 () Bool)

(assert (=> b!836770 (= e!466940 0)))

(declare-fun b!836771 () Bool)

(assert (=> b!836771 (= e!466940 (+ 1 (ListPrimitiveSize!83 (t!22449 (t!22449 l!404)))))))

(assert (= (and d!107701 c!91060) b!836770))

(assert (= (and d!107701 (not c!91060)) b!836771))

(declare-fun m!781961 () Bool)

(assert (=> b!836771 m!781961))

(assert (=> b!836745 d!107701))

(declare-fun d!107709 () Bool)

(declare-fun lt!380456 () Int)

(assert (=> d!107709 (>= lt!380456 0)))

(declare-fun e!466942 () Int)

(assert (=> d!107709 (= lt!380456 e!466942)))

(declare-fun c!91062 () Bool)

(assert (=> d!107709 (= c!91062 ((_ is Nil!16067) l!404))))

(assert (=> d!107709 (= (ListPrimitiveSize!83 l!404) lt!380456)))

(declare-fun b!836774 () Bool)

(assert (=> b!836774 (= e!466942 0)))

(declare-fun b!836775 () Bool)

(assert (=> b!836775 (= e!466942 (+ 1 (ListPrimitiveSize!83 (t!22449 l!404))))))

(assert (= (and d!107709 c!91062) b!836774))

(assert (= (and d!107709 (not c!91062)) b!836775))

(assert (=> b!836775 m!781945))

(assert (=> b!836745 d!107709))

(check-sat (not d!107695) (not b!836775) (not b!836771))
(check-sat)
