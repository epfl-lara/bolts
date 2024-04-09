; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2644 () Bool)

(assert start!2644)

(declare-fun b_free!541 () Bool)

(declare-fun b_next!541 () Bool)

(assert (=> start!2644 (= b_free!541 (not b_next!541))))

(declare-fun tp!2750 () Bool)

(declare-fun b_and!1035 () Bool)

(assert (=> start!2644 (= tp!2750 b_and!1035)))

(declare-fun res!11874 () Bool)

(declare-fun e!9670 () Bool)

(assert (=> start!2644 (=> (not res!11874) (not e!9670))))

(declare-datatypes ((B!662 0))(
  ( (B!663 (val!429 Int)) )
))
(declare-datatypes ((tuple2!640 0))(
  ( (tuple2!641 (_1!320 (_ BitVec 64)) (_2!320 B!662)) )
))
(declare-datatypes ((List!509 0))(
  ( (Nil!506) (Cons!505 (h!1071 tuple2!640) (t!2995 List!509)) )
))
(declare-datatypes ((ListLongMap!471 0))(
  ( (ListLongMap!472 (toList!251 List!509)) )
))
(declare-fun lm!221 () ListLongMap!471)

(declare-fun p!191 () Int)

(declare-fun forall!131 (List!509 Int) Bool)

(assert (=> start!2644 (= res!11874 (forall!131 (toList!251 lm!221) p!191))))

(assert (=> start!2644 e!9670))

(declare-fun e!9669 () Bool)

(declare-fun inv!856 (ListLongMap!471) Bool)

(assert (=> start!2644 (and (inv!856 lm!221) e!9669)))

(assert (=> start!2644 tp!2750))

(declare-fun b!15831 () Bool)

(declare-fun res!11875 () Bool)

(assert (=> b!15831 (=> (not res!11875) (not e!9670))))

(declare-fun isEmpty!141 (ListLongMap!471) Bool)

(assert (=> b!15831 (= res!11875 (not (isEmpty!141 lm!221)))))

(declare-fun b!15832 () Bool)

(assert (=> b!15832 (= e!9670 false)))

(declare-fun lt!3918 () Bool)

(declare-fun tail!65 (ListLongMap!471) ListLongMap!471)

(assert (=> b!15832 (= lt!3918 (forall!131 (toList!251 (tail!65 lm!221)) p!191))))

(declare-fun b!15833 () Bool)

(declare-fun tp!2749 () Bool)

(assert (=> b!15833 (= e!9669 tp!2749)))

(assert (= (and start!2644 res!11874) b!15831))

(assert (= (and b!15831 res!11875) b!15832))

(assert (= start!2644 b!15833))

(declare-fun m!10855 () Bool)

(assert (=> start!2644 m!10855))

(declare-fun m!10857 () Bool)

(assert (=> start!2644 m!10857))

(declare-fun m!10859 () Bool)

(assert (=> b!15831 m!10859))

(declare-fun m!10861 () Bool)

(assert (=> b!15832 m!10861))

(declare-fun m!10863 () Bool)

(assert (=> b!15832 m!10863))

(push 1)

(assert (not b!15831))

(assert (not b!15832))

(assert (not b!15833))

(assert (not b_next!541))

(assert b_and!1035)

(assert (not start!2644))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1035)

(assert (not b_next!541))

(check-sat)

(pop 1)

