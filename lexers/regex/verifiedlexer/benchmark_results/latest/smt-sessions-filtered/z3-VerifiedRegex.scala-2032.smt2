; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103986 () Bool)

(assert start!103986)

(declare-fun res!532175 () Bool)

(declare-fun e!755220 () Bool)

(assert (=> start!103986 (=> (not res!532175) (not e!755220))))

(declare-fun i!757 () Int)

(declare-fun j!89 () Int)

(assert (=> start!103986 (= res!532175 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!103986 e!755220))

(assert (=> start!103986 true))

(declare-fun e!755221 () Bool)

(assert (=> start!103986 e!755221))

(declare-fun b!1176853 () Bool)

(declare-fun res!532174 () Bool)

(assert (=> b!1176853 (=> (not res!532174) (not e!755220))))

(declare-datatypes ((B!1241 0))(
  ( (B!1242 (val!3730 Int)) )
))
(declare-datatypes ((List!11677 0))(
  ( (Nil!11653) (Cons!11653 (h!17054 B!1241) (t!111169 List!11677)) )
))
(declare-fun l!2952 () List!11677)

(declare-fun size!9217 (List!11677) Int)

(assert (=> b!1176853 (= res!532174 (<= j!89 (size!9217 l!2952)))))

(declare-fun b!1176854 () Bool)

(declare-fun ListPrimitiveSize!64 (List!11677) Int)

(assert (=> b!1176854 (= e!755220 (< (ListPrimitiveSize!64 l!2952) 0))))

(declare-fun b!1176855 () Bool)

(declare-fun tp_is_empty!5763 () Bool)

(declare-fun tp!335132 () Bool)

(assert (=> b!1176855 (= e!755221 (and tp_is_empty!5763 tp!335132))))

(assert (= (and start!103986 res!532175) b!1176853))

(assert (= (and b!1176853 res!532174) b!1176854))

(get-info :version)

(assert (= (and start!103986 ((_ is Cons!11653) l!2952)) b!1176855))

(declare-fun m!1354283 () Bool)

(assert (=> b!1176853 m!1354283))

(declare-fun m!1354285 () Bool)

(assert (=> b!1176854 m!1354285))

(check-sat (not b!1176853) (not b!1176854) (not b!1176855) tp_is_empty!5763)
(check-sat)
(get-model)

(declare-fun d!337179 () Bool)

(declare-fun lt!405983 () Int)

(assert (=> d!337179 (>= lt!405983 0)))

(declare-fun e!755224 () Int)

(assert (=> d!337179 (= lt!405983 e!755224)))

(declare-fun c!196108 () Bool)

(assert (=> d!337179 (= c!196108 ((_ is Nil!11653) l!2952))))

(assert (=> d!337179 (= (size!9217 l!2952) lt!405983)))

(declare-fun b!1176860 () Bool)

(assert (=> b!1176860 (= e!755224 0)))

(declare-fun b!1176861 () Bool)

(assert (=> b!1176861 (= e!755224 (+ 1 (size!9217 (t!111169 l!2952))))))

(assert (= (and d!337179 c!196108) b!1176860))

(assert (= (and d!337179 (not c!196108)) b!1176861))

(declare-fun m!1354287 () Bool)

(assert (=> b!1176861 m!1354287))

(assert (=> b!1176853 d!337179))

(declare-fun d!337181 () Bool)

(declare-fun lt!405986 () Int)

(assert (=> d!337181 (>= lt!405986 0)))

(declare-fun e!755227 () Int)

(assert (=> d!337181 (= lt!405986 e!755227)))

(declare-fun c!196111 () Bool)

(assert (=> d!337181 (= c!196111 ((_ is Nil!11653) l!2952))))

(assert (=> d!337181 (= (ListPrimitiveSize!64 l!2952) lt!405986)))

(declare-fun b!1176866 () Bool)

(assert (=> b!1176866 (= e!755227 0)))

(declare-fun b!1176867 () Bool)

(assert (=> b!1176867 (= e!755227 (+ 1 (ListPrimitiveSize!64 (t!111169 l!2952))))))

(assert (= (and d!337181 c!196111) b!1176866))

(assert (= (and d!337181 (not c!196111)) b!1176867))

(declare-fun m!1354289 () Bool)

(assert (=> b!1176867 m!1354289))

(assert (=> b!1176854 d!337181))

(declare-fun b!1176872 () Bool)

(declare-fun e!755230 () Bool)

(declare-fun tp!335135 () Bool)

(assert (=> b!1176872 (= e!755230 (and tp_is_empty!5763 tp!335135))))

(assert (=> b!1176855 (= tp!335132 e!755230)))

(assert (= (and b!1176855 ((_ is Cons!11653) (t!111169 l!2952))) b!1176872))

(check-sat (not b!1176861) (not b!1176867) (not b!1176872) tp_is_empty!5763)
(check-sat)
