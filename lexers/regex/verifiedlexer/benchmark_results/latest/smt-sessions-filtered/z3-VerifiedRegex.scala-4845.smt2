; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!248856 () Bool)

(assert start!248856)

(declare-fun b!2576176 () Bool)

(declare-fun e!1625533 () Bool)

(declare-fun tp_is_empty!13185 () Bool)

(declare-fun tp!818882 () Bool)

(assert (=> b!2576176 (= e!1625533 (and tp_is_empty!13185 tp!818882))))

(declare-fun b!2576174 () Bool)

(declare-fun e!1625534 () Bool)

(declare-datatypes ((B!1937 0))(
  ( (B!1938 (val!9396 Int)) )
))
(declare-datatypes ((List!29730 0))(
  ( (Nil!29630) (Cons!29630 (h!35050 B!1937) (t!211429 List!29730)) )
))
(declare-fun lTot!2 () List!29730)

(declare-fun ListPrimitiveSize!173 (List!29730) Int)

(assert (=> b!2576174 (= e!1625534 (>= (ListPrimitiveSize!173 (t!211429 lTot!2)) (ListPrimitiveSize!173 lTot!2)))))

(declare-fun b!2576175 () Bool)

(declare-fun e!1625532 () Bool)

(declare-fun tp!818881 () Bool)

(assert (=> b!2576175 (= e!1625532 (and tp_is_empty!13185 tp!818881))))

(declare-fun res!1083666 () Bool)

(assert (=> start!248856 (=> (not res!1083666) (not e!1625534))))

(get-info :version)

(assert (=> start!248856 (= res!1083666 ((_ is Cons!29630) lTot!2))))

(assert (=> start!248856 e!1625534))

(assert (=> start!248856 e!1625532))

(assert (=> start!248856 e!1625533))

(declare-fun b!2576173 () Bool)

(declare-fun res!1083665 () Bool)

(assert (=> b!2576173 (=> (not res!1083665) (not e!1625534))))

(declare-fun l1!885 () List!29730)

(declare-fun consecutiveSubseqAtHead!17 (List!29730 List!29730) Bool)

(assert (=> b!2576173 (= res!1083665 (not (consecutiveSubseqAtHead!17 l1!885 lTot!2)))))

(assert (= (and start!248856 res!1083666) b!2576173))

(assert (= (and b!2576173 res!1083665) b!2576174))

(assert (= (and start!248856 ((_ is Cons!29630) lTot!2)) b!2576175))

(assert (= (and start!248856 ((_ is Cons!29630) l1!885)) b!2576176))

(declare-fun m!2910789 () Bool)

(assert (=> b!2576174 m!2910789))

(declare-fun m!2910791 () Bool)

(assert (=> b!2576174 m!2910791))

(declare-fun m!2910793 () Bool)

(assert (=> b!2576173 m!2910793))

(check-sat (not b!2576174) (not b!2576173) (not b!2576175) tp_is_empty!13185 (not b!2576176))
(check-sat)
(get-model)

(declare-fun d!728592 () Bool)

(declare-fun res!1083677 () Bool)

(declare-fun e!1625545 () Bool)

(assert (=> d!728592 (=> res!1083677 e!1625545)))

(assert (=> d!728592 (= res!1083677 ((_ is Nil!29630) l1!885))))

(assert (=> d!728592 (= (consecutiveSubseqAtHead!17 l1!885 lTot!2) e!1625545)))

(declare-fun b!2576187 () Bool)

(declare-fun e!1625546 () Bool)

(assert (=> b!2576187 (= e!1625545 e!1625546)))

(declare-fun res!1083678 () Bool)

(assert (=> b!2576187 (=> (not res!1083678) (not e!1625546))))

(assert (=> b!2576187 (= res!1083678 (and ((_ is Cons!29630) lTot!2) (= (h!35050 l1!885) (h!35050 lTot!2))))))

(declare-fun b!2576188 () Bool)

(assert (=> b!2576188 (= e!1625546 (consecutiveSubseqAtHead!17 (t!211429 l1!885) (t!211429 lTot!2)))))

(assert (= (and d!728592 (not res!1083677)) b!2576187))

(assert (= (and b!2576187 res!1083678) b!2576188))

(declare-fun m!2910797 () Bool)

(assert (=> b!2576188 m!2910797))

(assert (=> b!2576173 d!728592))

(declare-fun d!728598 () Bool)

(declare-fun lt!906609 () Int)

(assert (=> d!728598 (>= lt!906609 0)))

(declare-fun e!1625555 () Int)

(assert (=> d!728598 (= lt!906609 e!1625555)))

(declare-fun c!414910 () Bool)

(assert (=> d!728598 (= c!414910 ((_ is Nil!29630) (t!211429 lTot!2)))))

(assert (=> d!728598 (= (ListPrimitiveSize!173 (t!211429 lTot!2)) lt!906609)))

(declare-fun b!2576205 () Bool)

(assert (=> b!2576205 (= e!1625555 0)))

(declare-fun b!2576206 () Bool)

(assert (=> b!2576206 (= e!1625555 (+ 1 (ListPrimitiveSize!173 (t!211429 (t!211429 lTot!2)))))))

(assert (= (and d!728598 c!414910) b!2576205))

(assert (= (and d!728598 (not c!414910)) b!2576206))

(declare-fun m!2910801 () Bool)

(assert (=> b!2576206 m!2910801))

(assert (=> b!2576174 d!728598))

(declare-fun d!728602 () Bool)

(declare-fun lt!906610 () Int)

(assert (=> d!728602 (>= lt!906610 0)))

(declare-fun e!1625556 () Int)

(assert (=> d!728602 (= lt!906610 e!1625556)))

(declare-fun c!414911 () Bool)

(assert (=> d!728602 (= c!414911 ((_ is Nil!29630) lTot!2))))

(assert (=> d!728602 (= (ListPrimitiveSize!173 lTot!2) lt!906610)))

(declare-fun b!2576207 () Bool)

(assert (=> b!2576207 (= e!1625556 0)))

(declare-fun b!2576209 () Bool)

(assert (=> b!2576209 (= e!1625556 (+ 1 (ListPrimitiveSize!173 (t!211429 lTot!2))))))

(assert (= (and d!728602 c!414911) b!2576207))

(assert (= (and d!728602 (not c!414911)) b!2576209))

(assert (=> b!2576209 m!2910789))

(assert (=> b!2576174 d!728602))

(declare-fun b!2576215 () Bool)

(declare-fun e!1625561 () Bool)

(declare-fun tp!818889 () Bool)

(assert (=> b!2576215 (= e!1625561 (and tp_is_empty!13185 tp!818889))))

(assert (=> b!2576175 (= tp!818881 e!1625561)))

(assert (= (and b!2576175 ((_ is Cons!29630) (t!211429 lTot!2))) b!2576215))

(declare-fun b!2576216 () Bool)

(declare-fun e!1625562 () Bool)

(declare-fun tp!818890 () Bool)

(assert (=> b!2576216 (= e!1625562 (and tp_is_empty!13185 tp!818890))))

(assert (=> b!2576176 (= tp!818882 e!1625562)))

(assert (= (and b!2576176 ((_ is Cons!29630) (t!211429 l1!885))) b!2576216))

(check-sat (not b!2576188) (not b!2576215) (not b!2576209) tp_is_empty!13185 (not b!2576216) (not b!2576206))
(check-sat)
