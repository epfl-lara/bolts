; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243134 () Bool)

(assert start!243134)

(declare-fun b!2487703 () Bool)

(declare-fun res!1053070 () Bool)

(declare-fun e!1579675 () Bool)

(assert (=> b!2487703 (=> (not res!1053070) (not e!1579675))))

(declare-datatypes ((V!5875 0))(
  ( (V!5876 (val!9013 Int)) )
))
(declare-datatypes ((K!5673 0))(
  ( (K!5674 (val!9014 Int)) )
))
(declare-datatypes ((tuple2!29326 0))(
  ( (tuple2!29327 (_1!17205 K!5673) (_2!17205 V!5875)) )
))
(declare-datatypes ((List!29349 0))(
  ( (Nil!29249) (Cons!29249 (h!34669 tuple2!29326) (t!211048 List!29349)) )
))
(declare-datatypes ((tuple2!29328 0))(
  ( (tuple2!29329 (_1!17206 (_ BitVec 64)) (_2!17206 List!29349)) )
))
(declare-datatypes ((List!29350 0))(
  ( (Nil!29250) (Cons!29250 (h!34670 tuple2!29328) (t!211049 List!29350)) )
))
(declare-datatypes ((ListLongMap!651 0))(
  ( (ListLongMap!652 (toList!1698 List!29350)) )
))
(declare-fun lm!2245 () ListLongMap!651)

(declare-datatypes ((Hashable!3345 0))(
  ( (HashableExt!3344 (__x!19207 Int)) )
))
(declare-fun hashF!1483 () Hashable!3345)

(declare-fun allKeysSameHashInMap!208 (ListLongMap!651 Hashable!3345) Bool)

(assert (=> b!2487703 (= res!1053070 (allKeysSameHashInMap!208 lm!2245 hashF!1483))))

(declare-fun b!2487705 () Bool)

(declare-fun lambda!94802 () Int)

(declare-fun forall!6027 (List!29350 Int) Bool)

(assert (=> b!2487705 (= e!1579675 (not (forall!6027 (toList!1698 lm!2245) lambda!94802)))))

(declare-fun res!1053069 () Bool)

(assert (=> start!243134 (=> (not res!1053069) (not e!1579675))))

(assert (=> start!243134 (= res!1053069 (forall!6027 (toList!1698 lm!2245) lambda!94802))))

(assert (=> start!243134 e!1579675))

(declare-fun e!1579676 () Bool)

(declare-fun inv!39296 (ListLongMap!651) Bool)

(assert (=> start!243134 (and (inv!39296 lm!2245) e!1579676)))

(assert (=> start!243134 true))

(declare-fun tp_is_empty!12435 () Bool)

(assert (=> start!243134 tp_is_empty!12435))

(declare-fun b!2487706 () Bool)

(declare-fun tp!796245 () Bool)

(assert (=> b!2487706 (= e!1579676 tp!796245)))

(declare-fun b!2487704 () Bool)

(declare-fun res!1053071 () Bool)

(assert (=> b!2487704 (=> (not res!1053071) (not e!1579675))))

(declare-fun key!5251 () K!5673)

(declare-datatypes ((ListMap!1175 0))(
  ( (ListMap!1176 (toList!1699 List!29349)) )
))
(declare-fun contains!5266 (ListMap!1175 K!5673) Bool)

(declare-fun extractMap!201 (List!29350) ListMap!1175)

(assert (=> b!2487704 (= res!1053071 (not (contains!5266 (extractMap!201 (toList!1698 lm!2245)) key!5251)))))

(assert (= (and start!243134 res!1053069) b!2487703))

(assert (= (and b!2487703 res!1053070) b!2487704))

(assert (= (and b!2487704 res!1053071) b!2487705))

(assert (= start!243134 b!2487706))

(declare-fun m!2856553 () Bool)

(assert (=> b!2487703 m!2856553))

(declare-fun m!2856555 () Bool)

(assert (=> b!2487705 m!2856555))

(assert (=> start!243134 m!2856555))

(declare-fun m!2856557 () Bool)

(assert (=> start!243134 m!2856557))

(declare-fun m!2856559 () Bool)

(assert (=> b!2487704 m!2856559))

(assert (=> b!2487704 m!2856559))

(declare-fun m!2856561 () Bool)

(assert (=> b!2487704 m!2856561))

(push 1)

(assert (not b!2487705))

(assert (not b!2487703))

(assert (not start!243134))

(assert tp_is_empty!12435)

(assert (not b!2487704))

(assert (not b!2487706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

