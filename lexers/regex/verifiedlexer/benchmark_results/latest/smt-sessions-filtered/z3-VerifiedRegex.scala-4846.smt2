; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!248868 () Bool)

(assert start!248868)

(declare-fun res!1083684 () Bool)

(declare-fun e!1625579 () Bool)

(assert (=> start!248868 (=> (not res!1083684) (not e!1625579))))

(declare-datatypes ((B!1941 0))(
  ( (B!1942 (val!9398 Int)) )
))
(declare-datatypes ((List!29732 0))(
  ( (Nil!29632) (Cons!29632 (h!35052 B!1941) (t!211431 List!29732)) )
))
(declare-fun l1!893 () List!29732)

(declare-fun lTot!10 () List!29732)

(get-info :version)

(assert (=> start!248868 (= res!1083684 (and (not ((_ is Nil!29632) l1!893)) ((_ is Cons!29632) lTot!10) (= (h!35052 l1!893) (h!35052 lTot!10))))))

(assert (=> start!248868 e!1625579))

(declare-fun e!1625578 () Bool)

(assert (=> start!248868 e!1625578))

(declare-fun e!1625580 () Bool)

(assert (=> start!248868 e!1625580))

(declare-fun b!2576232 () Bool)

(declare-fun ListPrimitiveSize!175 (List!29732) Int)

(assert (=> b!2576232 (= e!1625579 (>= (ListPrimitiveSize!175 (t!211431 lTot!10)) (ListPrimitiveSize!175 lTot!10)))))

(declare-fun b!2576233 () Bool)

(declare-fun tp_is_empty!13189 () Bool)

(declare-fun tp!818902 () Bool)

(assert (=> b!2576233 (= e!1625578 (and tp_is_empty!13189 tp!818902))))

(declare-fun b!2576234 () Bool)

(declare-fun tp!818901 () Bool)

(assert (=> b!2576234 (= e!1625580 (and tp_is_empty!13189 tp!818901))))

(assert (= (and start!248868 res!1083684) b!2576232))

(assert (= (and start!248868 ((_ is Cons!29632) l1!893)) b!2576233))

(assert (= (and start!248868 ((_ is Cons!29632) lTot!10)) b!2576234))

(declare-fun m!2910807 () Bool)

(assert (=> b!2576232 m!2910807))

(declare-fun m!2910809 () Bool)

(assert (=> b!2576232 m!2910809))

(check-sat (not b!2576232) (not b!2576233) (not b!2576234) tp_is_empty!13189)
(check-sat)
(get-model)

(declare-fun d!728607 () Bool)

(declare-fun lt!906617 () Int)

(assert (=> d!728607 (>= lt!906617 0)))

(declare-fun e!1625591 () Int)

(assert (=> d!728607 (= lt!906617 e!1625591)))

(declare-fun c!414918 () Bool)

(assert (=> d!728607 (= c!414918 ((_ is Nil!29632) (t!211431 lTot!10)))))

(assert (=> d!728607 (= (ListPrimitiveSize!175 (t!211431 lTot!10)) lt!906617)))

(declare-fun b!2576253 () Bool)

(assert (=> b!2576253 (= e!1625591 0)))

(declare-fun b!2576254 () Bool)

(assert (=> b!2576254 (= e!1625591 (+ 1 (ListPrimitiveSize!175 (t!211431 (t!211431 lTot!10)))))))

(assert (= (and d!728607 c!414918) b!2576253))

(assert (= (and d!728607 (not c!414918)) b!2576254))

(declare-fun m!2910813 () Bool)

(assert (=> b!2576254 m!2910813))

(assert (=> b!2576232 d!728607))

(declare-fun d!728611 () Bool)

(declare-fun lt!906618 () Int)

(assert (=> d!728611 (>= lt!906618 0)))

(declare-fun e!1625592 () Int)

(assert (=> d!728611 (= lt!906618 e!1625592)))

(declare-fun c!414919 () Bool)

(assert (=> d!728611 (= c!414919 ((_ is Nil!29632) lTot!10))))

(assert (=> d!728611 (= (ListPrimitiveSize!175 lTot!10) lt!906618)))

(declare-fun b!2576255 () Bool)

(assert (=> b!2576255 (= e!1625592 0)))

(declare-fun b!2576256 () Bool)

(assert (=> b!2576256 (= e!1625592 (+ 1 (ListPrimitiveSize!175 (t!211431 lTot!10))))))

(assert (= (and d!728611 c!414919) b!2576255))

(assert (= (and d!728611 (not c!414919)) b!2576256))

(assert (=> b!2576256 m!2910807))

(assert (=> b!2576232 d!728611))

(declare-fun b!2576261 () Bool)

(declare-fun e!1625595 () Bool)

(declare-fun tp!818909 () Bool)

(assert (=> b!2576261 (= e!1625595 (and tp_is_empty!13189 tp!818909))))

(assert (=> b!2576233 (= tp!818902 e!1625595)))

(assert (= (and b!2576233 ((_ is Cons!29632) (t!211431 l1!893))) b!2576261))

(declare-fun b!2576262 () Bool)

(declare-fun e!1625596 () Bool)

(declare-fun tp!818910 () Bool)

(assert (=> b!2576262 (= e!1625596 (and tp_is_empty!13189 tp!818910))))

(assert (=> b!2576234 (= tp!818901 e!1625596)))

(assert (= (and b!2576234 ((_ is Cons!29632) (t!211431 lTot!10))) b!2576262))

(check-sat (not b!2576262) (not b!2576256) tp_is_empty!13189 (not b!2576254) (not b!2576261))
(check-sat)
