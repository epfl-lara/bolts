; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75182 () Bool)

(assert start!75182)

(declare-fun res!601484 () Bool)

(declare-fun e!492934 () Bool)

(assert (=> start!75182 (=> (not res!601484) (not e!492934))))

(declare-datatypes ((B!1280 0))(
  ( (B!1281 (val!8946 Int)) )
))
(declare-datatypes ((tuple2!11912 0))(
  ( (tuple2!11913 (_1!5966 (_ BitVec 64)) (_2!5966 B!1280)) )
))
(declare-datatypes ((List!17746 0))(
  ( (Nil!17743) (Cons!17742 (h!18873 tuple2!11912) (t!25031 List!17746)) )
))
(declare-fun l!906 () List!17746)

(declare-fun isStrictlySorted!476 (List!17746) Bool)

(assert (=> start!75182 (= res!601484 (isStrictlySorted!476 l!906))))

(assert (=> start!75182 e!492934))

(declare-fun e!492935 () Bool)

(assert (=> start!75182 e!492935))

(declare-fun b!885618 () Bool)

(declare-fun ListPrimitiveSize!85 (List!17746) Int)

(assert (=> b!885618 (= e!492934 (< (ListPrimitiveSize!85 l!906) 0))))

(declare-fun b!885619 () Bool)

(declare-fun tp_is_empty!17791 () Bool)

(declare-fun tp!54312 () Bool)

(assert (=> b!885619 (= e!492935 (and tp_is_empty!17791 tp!54312))))

(assert (= (and start!75182 res!601484) b!885618))

(assert (= (and start!75182 (is-Cons!17742 l!906)) b!885619))

(declare-fun m!825797 () Bool)

(assert (=> start!75182 m!825797))

(declare-fun m!825799 () Bool)

(assert (=> b!885618 m!825799))

(push 1)

(assert (not b!885618))

(assert (not start!75182))

(assert (not b!885619))

(assert tp_is_empty!17791)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109367 () Bool)

(declare-fun lt!400994 () Int)

(assert (=> d!109367 (>= lt!400994 0)))

(declare-fun e!492958 () Int)

(assert (=> d!109367 (= lt!400994 e!492958)))

(declare-fun c!93276 () Bool)

(assert (=> d!109367 (= c!93276 (is-Nil!17743 l!906))))

(assert (=> d!109367 (= (ListPrimitiveSize!85 l!906) lt!400994)))

(declare-fun b!885646 () Bool)

(assert (=> b!885646 (= e!492958 0)))

(declare-fun b!885647 () Bool)

(assert (=> b!885647 (= e!492958 (+ 1 (ListPrimitiveSize!85 (t!25031 l!906))))))

(assert (= (and d!109367 c!93276) b!885646))

(assert (= (and d!109367 (not c!93276)) b!885647))

(declare-fun m!825811 () Bool)

(assert (=> b!885647 m!825811))

(assert (=> b!885618 d!109367))

(declare-fun d!109373 () Bool)

(declare-fun res!601505 () Bool)

(declare-fun e!492973 () Bool)

(assert (=> d!109373 (=> res!601505 e!492973)))

(assert (=> d!109373 (= res!601505 (or (is-Nil!17743 l!906) (is-Nil!17743 (t!25031 l!906))))))

(assert (=> d!109373 (= (isStrictlySorted!476 l!906) e!492973)))

(declare-fun b!885668 () Bool)

(declare-fun e!492974 () Bool)

(assert (=> b!885668 (= e!492973 e!492974)))

(declare-fun res!601506 () Bool)

(assert (=> b!885668 (=> (not res!601506) (not e!492974))))

(assert (=> b!885668 (= res!601506 (bvslt (_1!5966 (h!18873 l!906)) (_1!5966 (h!18873 (t!25031 l!906)))))))

(declare-fun b!885669 () Bool)

(assert (=> b!885669 (= e!492974 (isStrictlySorted!476 (t!25031 l!906)))))

(assert (= (and d!109373 (not res!601505)) b!885668))

(assert (= (and b!885668 res!601506) b!885669))

(declare-fun m!825817 () Bool)

(assert (=> b!885669 m!825817))

(assert (=> start!75182 d!109373))

(declare-fun b!885681 () Bool)

(declare-fun e!492982 () Bool)

(declare-fun tp!54326 () Bool)

(assert (=> b!885681 (= e!492982 (and tp_is_empty!17791 tp!54326))))

(assert (=> b!885619 (= tp!54312 e!492982)))

(assert (= (and b!885619 (is-Cons!17742 (t!25031 l!906))) b!885681))

(push 1)

