; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189128 () Bool)

(assert start!189128)

(declare-fun b!1889009 () Bool)

(declare-fun res!843688 () Bool)

(declare-fun e!1205576 () Bool)

(assert (=> b!1889009 (=> (not res!843688) (not e!1205576))))

(declare-datatypes ((B!1781 0))(
  ( (B!1782 (val!6176 Int)) )
))
(declare-datatypes ((List!21169 0))(
  ( (Nil!21087) (Cons!21087 (h!26488 B!1781) (t!175168 List!21169)) )
))
(declare-fun l3!256 () List!21169)

(declare-fun l2!1298 () List!21169)

(declare-fun l1!1329 () List!21169)

(get-info :version)

(assert (=> b!1889009 (= res!843688 (and (or (not ((_ is Cons!21087) l1!1329)) (not ((_ is Cons!21087) l2!1298)) (not ((_ is Cons!21087) l3!256)) (= (h!26488 l2!1298) (h!26488 l3!256))) (or (not ((_ is Cons!21087) l1!1329)) (not ((_ is Cons!21087) l2!1298)) (not ((_ is Cons!21087) l3!256)) (not (= (h!26488 l2!1298) (h!26488 l3!256))))))))

(declare-fun b!1889010 () Bool)

(declare-fun res!843690 () Bool)

(assert (=> b!1889010 (=> (not res!843690) (not e!1205576))))

(declare-fun subseq!433 (List!21169 List!21169) Bool)

(assert (=> b!1889010 (= res!843690 (subseq!433 l2!1298 l3!256))))

(declare-fun b!1889011 () Bool)

(assert (=> b!1889011 (= e!1205576 (not (subseq!433 l1!1329 l3!256)))))

(declare-fun b!1889012 () Bool)

(declare-fun e!1205575 () Bool)

(declare-fun tp_is_empty!9037 () Bool)

(declare-fun tp!538512 () Bool)

(assert (=> b!1889012 (= e!1205575 (and tp_is_empty!9037 tp!538512))))

(declare-fun b!1889013 () Bool)

(declare-fun e!1205578 () Bool)

(declare-fun tp!538511 () Bool)

(assert (=> b!1889013 (= e!1205578 (and tp_is_empty!9037 tp!538511))))

(declare-fun res!843689 () Bool)

(assert (=> start!189128 (=> (not res!843689) (not e!1205576))))

(assert (=> start!189128 (= res!843689 (subseq!433 l1!1329 l2!1298))))

(assert (=> start!189128 e!1205576))

(assert (=> start!189128 e!1205578))

(declare-fun e!1205577 () Bool)

(assert (=> start!189128 e!1205577))

(assert (=> start!189128 e!1205575))

(declare-fun b!1889014 () Bool)

(declare-fun tp!538510 () Bool)

(assert (=> b!1889014 (= e!1205577 (and tp_is_empty!9037 tp!538510))))

(assert (= (and start!189128 res!843689) b!1889010))

(assert (= (and b!1889010 res!843690) b!1889009))

(assert (= (and b!1889009 res!843688) b!1889011))

(assert (= (and start!189128 ((_ is Cons!21087) l1!1329)) b!1889013))

(assert (= (and start!189128 ((_ is Cons!21087) l2!1298)) b!1889014))

(assert (= (and start!189128 ((_ is Cons!21087) l3!256)) b!1889012))

(declare-fun m!2320101 () Bool)

(assert (=> b!1889010 m!2320101))

(declare-fun m!2320103 () Bool)

(assert (=> b!1889011 m!2320103))

(declare-fun m!2320105 () Bool)

(assert (=> start!189128 m!2320105))

(check-sat (not b!1889012) tp_is_empty!9037 (not start!189128) (not b!1889013) (not b!1889010) (not b!1889011) (not b!1889014))
(check-sat)
(get-model)

(declare-fun b!1889049 () Bool)

(declare-fun e!1205612 () Bool)

(assert (=> b!1889049 (= e!1205612 (subseq!433 (t!175168 l1!1329) (t!175168 l2!1298)))))

(declare-fun b!1889047 () Bool)

(declare-fun e!1205610 () Bool)

(declare-fun e!1205609 () Bool)

(assert (=> b!1889047 (= e!1205610 e!1205609)))

(declare-fun res!843722 () Bool)

(assert (=> b!1889047 (=> (not res!843722) (not e!1205609))))

(assert (=> b!1889047 (= res!843722 ((_ is Cons!21087) l2!1298))))

(declare-fun d!578540 () Bool)

(declare-fun res!843721 () Bool)

(assert (=> d!578540 (=> res!843721 e!1205610)))

(assert (=> d!578540 (= res!843721 ((_ is Nil!21087) l1!1329))))

(assert (=> d!578540 (= (subseq!433 l1!1329 l2!1298) e!1205610)))

(declare-fun b!1889048 () Bool)

(declare-fun e!1205611 () Bool)

(assert (=> b!1889048 (= e!1205609 e!1205611)))

(declare-fun res!843720 () Bool)

(assert (=> b!1889048 (=> res!843720 e!1205611)))

(assert (=> b!1889048 (= res!843720 e!1205612)))

(declare-fun res!843719 () Bool)

(assert (=> b!1889048 (=> (not res!843719) (not e!1205612))))

(assert (=> b!1889048 (= res!843719 (= (h!26488 l1!1329) (h!26488 l2!1298)))))

(declare-fun b!1889050 () Bool)

(assert (=> b!1889050 (= e!1205611 (subseq!433 l1!1329 (t!175168 l2!1298)))))

(assert (= (and d!578540 (not res!843721)) b!1889047))

(assert (= (and b!1889047 res!843722) b!1889048))

(assert (= (and b!1889048 res!843719) b!1889049))

(assert (= (and b!1889048 (not res!843720)) b!1889050))

(declare-fun m!2320119 () Bool)

(assert (=> b!1889049 m!2320119))

(declare-fun m!2320121 () Bool)

(assert (=> b!1889050 m!2320121))

(assert (=> start!189128 d!578540))

(declare-fun b!1889056 () Bool)

(declare-fun e!1205619 () Bool)

(assert (=> b!1889056 (= e!1205619 (subseq!433 (t!175168 l2!1298) (t!175168 l3!256)))))

(declare-fun b!1889054 () Bool)

(declare-fun e!1205617 () Bool)

(declare-fun e!1205616 () Bool)

(assert (=> b!1889054 (= e!1205617 e!1205616)))

(declare-fun res!843726 () Bool)

(assert (=> b!1889054 (=> (not res!843726) (not e!1205616))))

(assert (=> b!1889054 (= res!843726 ((_ is Cons!21087) l3!256))))

(declare-fun d!578546 () Bool)

(declare-fun res!843725 () Bool)

(assert (=> d!578546 (=> res!843725 e!1205617)))

(assert (=> d!578546 (= res!843725 ((_ is Nil!21087) l2!1298))))

(assert (=> d!578546 (= (subseq!433 l2!1298 l3!256) e!1205617)))

(declare-fun b!1889055 () Bool)

(declare-fun e!1205618 () Bool)

(assert (=> b!1889055 (= e!1205616 e!1205618)))

(declare-fun res!843724 () Bool)

(assert (=> b!1889055 (=> res!843724 e!1205618)))

(assert (=> b!1889055 (= res!843724 e!1205619)))

(declare-fun res!843723 () Bool)

(assert (=> b!1889055 (=> (not res!843723) (not e!1205619))))

(assert (=> b!1889055 (= res!843723 (= (h!26488 l2!1298) (h!26488 l3!256)))))

(declare-fun b!1889057 () Bool)

(assert (=> b!1889057 (= e!1205618 (subseq!433 l2!1298 (t!175168 l3!256)))))

(assert (= (and d!578546 (not res!843725)) b!1889054))

(assert (= (and b!1889054 res!843726) b!1889055))

(assert (= (and b!1889055 res!843723) b!1889056))

(assert (= (and b!1889055 (not res!843724)) b!1889057))

(declare-fun m!2320123 () Bool)

(assert (=> b!1889056 m!2320123))

(declare-fun m!2320125 () Bool)

(assert (=> b!1889057 m!2320125))

(assert (=> b!1889010 d!578546))

(declare-fun b!1889060 () Bool)

(declare-fun e!1205623 () Bool)

(assert (=> b!1889060 (= e!1205623 (subseq!433 (t!175168 l1!1329) (t!175168 l3!256)))))

(declare-fun b!1889058 () Bool)

(declare-fun e!1205621 () Bool)

(declare-fun e!1205620 () Bool)

(assert (=> b!1889058 (= e!1205621 e!1205620)))

(declare-fun res!843730 () Bool)

(assert (=> b!1889058 (=> (not res!843730) (not e!1205620))))

(assert (=> b!1889058 (= res!843730 ((_ is Cons!21087) l3!256))))

(declare-fun d!578548 () Bool)

(declare-fun res!843729 () Bool)

(assert (=> d!578548 (=> res!843729 e!1205621)))

(assert (=> d!578548 (= res!843729 ((_ is Nil!21087) l1!1329))))

(assert (=> d!578548 (= (subseq!433 l1!1329 l3!256) e!1205621)))

(declare-fun b!1889059 () Bool)

(declare-fun e!1205622 () Bool)

(assert (=> b!1889059 (= e!1205620 e!1205622)))

(declare-fun res!843728 () Bool)

(assert (=> b!1889059 (=> res!843728 e!1205622)))

(assert (=> b!1889059 (= res!843728 e!1205623)))

(declare-fun res!843727 () Bool)

(assert (=> b!1889059 (=> (not res!843727) (not e!1205623))))

(assert (=> b!1889059 (= res!843727 (= (h!26488 l1!1329) (h!26488 l3!256)))))

(declare-fun b!1889061 () Bool)

(assert (=> b!1889061 (= e!1205622 (subseq!433 l1!1329 (t!175168 l3!256)))))

(assert (= (and d!578548 (not res!843729)) b!1889058))

(assert (= (and b!1889058 res!843730) b!1889059))

(assert (= (and b!1889059 res!843727) b!1889060))

(assert (= (and b!1889059 (not res!843728)) b!1889061))

(declare-fun m!2320127 () Bool)

(assert (=> b!1889060 m!2320127))

(declare-fun m!2320129 () Bool)

(assert (=> b!1889061 m!2320129))

(assert (=> b!1889011 d!578548))

(declare-fun b!1889066 () Bool)

(declare-fun e!1205626 () Bool)

(declare-fun tp!538520 () Bool)

(assert (=> b!1889066 (= e!1205626 (and tp_is_empty!9037 tp!538520))))

(assert (=> b!1889013 (= tp!538511 e!1205626)))

(assert (= (and b!1889013 ((_ is Cons!21087) (t!175168 l1!1329))) b!1889066))

(declare-fun b!1889067 () Bool)

(declare-fun e!1205627 () Bool)

(declare-fun tp!538521 () Bool)

(assert (=> b!1889067 (= e!1205627 (and tp_is_empty!9037 tp!538521))))

(assert (=> b!1889012 (= tp!538512 e!1205627)))

(assert (= (and b!1889012 ((_ is Cons!21087) (t!175168 l3!256))) b!1889067))

(declare-fun b!1889068 () Bool)

(declare-fun e!1205628 () Bool)

(declare-fun tp!538522 () Bool)

(assert (=> b!1889068 (= e!1205628 (and tp_is_empty!9037 tp!538522))))

(assert (=> b!1889014 (= tp!538510 e!1205628)))

(assert (= (and b!1889014 ((_ is Cons!21087) (t!175168 l2!1298))) b!1889068))

(check-sat (not b!1889050) (not b!1889056) (not b!1889067) (not b!1889061) (not b!1889049) (not b!1889060) tp_is_empty!9037 (not b!1889066) (not b!1889057) (not b!1889068))
(check-sat)
