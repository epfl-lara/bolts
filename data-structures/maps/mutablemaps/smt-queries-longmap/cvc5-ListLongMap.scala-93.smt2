; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1392 () Bool)

(assert start!1392)

(declare-fun b_free!421 () Bool)

(declare-fun b_next!421 () Bool)

(assert (=> start!1392 (= b_free!421 (not b_next!421))))

(declare-fun tp!1715 () Bool)

(declare-fun b_and!651 () Bool)

(assert (=> start!1392 (= tp!1715 b_and!651)))

(declare-fun b!10911 () Bool)

(declare-fun e!6387 () Bool)

(declare-fun tp!1714 () Bool)

(assert (=> b!10911 (= e!6387 tp!1714)))

(declare-fun b!10912 () Bool)

(declare-fun e!6388 () Bool)

(declare-fun e!6386 () Bool)

(assert (=> b!10912 (= e!6388 (not e!6386))))

(declare-fun res!9189 () Bool)

(assert (=> b!10912 (=> res!9189 e!6386)))

(declare-datatypes ((B!362 0))(
  ( (B!363 (val!276 Int)) )
))
(declare-datatypes ((tuple2!334 0))(
  ( (tuple2!335 (_1!167 (_ BitVec 64)) (_2!167 B!362)) )
))
(declare-fun lt!2739 () tuple2!334)

(declare-datatypes ((List!323 0))(
  ( (Nil!320) (Cons!319 (h!885 tuple2!334) (t!2542 List!323)) )
))
(declare-datatypes ((ListLongMap!315 0))(
  ( (ListLongMap!316 (toList!173 List!323)) )
))
(declare-fun lm!227 () ListLongMap!315)

(declare-fun p!216 () Int)

(declare-fun forall!47 (List!323 Int) Bool)

(declare-fun +!20 (ListLongMap!315 tuple2!334) ListLongMap!315)

(assert (=> b!10912 (= res!9189 (not (forall!47 (toList!173 (+!20 lm!227 lt!2739)) p!216)))))

(assert (=> b!10912 (forall!47 (toList!173 (+!20 lm!227 (tuple2!335 (_1!167 lt!2739) (_2!167 lt!2739)))) p!216)))

(declare-datatypes ((Unit!227 0))(
  ( (Unit!228) )
))
(declare-fun lt!2738 () Unit!227)

(declare-fun addValidProp!8 (ListLongMap!315 Int (_ BitVec 64) B!362) Unit!227)

(assert (=> b!10912 (= lt!2738 (addValidProp!8 lm!227 p!216 (_1!167 lt!2739) (_2!167 lt!2739)))))

(declare-fun kvs!4 () List!323)

(declare-fun head!764 (List!323) tuple2!334)

(assert (=> b!10912 (= lt!2739 (head!764 kvs!4))))

(declare-fun b!10913 () Bool)

(declare-fun res!9190 () Bool)

(assert (=> b!10913 (=> (not res!9190) (not e!6388))))

(declare-fun isEmpty!57 (List!323) Bool)

(assert (=> b!10913 (= res!9190 (not (isEmpty!57 kvs!4)))))

(declare-fun b!10914 () Bool)

(declare-fun res!9188 () Bool)

(assert (=> b!10914 (=> (not res!9188) (not e!6388))))

(assert (=> b!10914 (= res!9188 (forall!47 kvs!4 p!216))))

(declare-fun res!9187 () Bool)

(assert (=> start!1392 (=> (not res!9187) (not e!6388))))

(assert (=> start!1392 (= res!9187 (forall!47 (toList!173 lm!227) p!216))))

(assert (=> start!1392 e!6388))

(declare-fun inv!526 (ListLongMap!315) Bool)

(assert (=> start!1392 (and (inv!526 lm!227) e!6387)))

(assert (=> start!1392 tp!1715))

(declare-fun e!6389 () Bool)

(assert (=> start!1392 e!6389))

(declare-fun b!10915 () Bool)

(assert (=> b!10915 (= e!6386 true)))

(declare-fun b!10916 () Bool)

(declare-fun tp_is_empty!535 () Bool)

(declare-fun tp!1713 () Bool)

(assert (=> b!10916 (= e!6389 (and tp_is_empty!535 tp!1713))))

(assert (= (and start!1392 res!9187) b!10914))

(assert (= (and b!10914 res!9188) b!10913))

(assert (= (and b!10913 res!9190) b!10912))

(assert (= (and b!10912 (not res!9189)) b!10915))

(assert (= start!1392 b!10911))

(assert (= (and start!1392 (is-Cons!319 kvs!4)) b!10916))

(declare-fun m!7175 () Bool)

(assert (=> b!10912 m!7175))

(declare-fun m!7177 () Bool)

(assert (=> b!10912 m!7177))

(declare-fun m!7179 () Bool)

(assert (=> b!10912 m!7179))

(declare-fun m!7181 () Bool)

(assert (=> b!10912 m!7181))

(declare-fun m!7183 () Bool)

(assert (=> b!10912 m!7183))

(declare-fun m!7185 () Bool)

(assert (=> b!10912 m!7185))

(declare-fun m!7187 () Bool)

(assert (=> b!10913 m!7187))

(declare-fun m!7189 () Bool)

(assert (=> b!10914 m!7189))

(declare-fun m!7191 () Bool)

(assert (=> start!1392 m!7191))

(declare-fun m!7193 () Bool)

(assert (=> start!1392 m!7193))

(push 1)

(assert (not b!10911))

(assert (not b!10913))

(assert (not start!1392))

(assert tp_is_empty!535)

(assert (not b!10916))

(assert (not b!10914))

(assert (not b_next!421))

(assert (not b!10912))

(assert b_and!651)

(check-sat)

(pop 1)

(push 1)

(assert b_and!651)

(assert (not b_next!421))

(check-sat)

(pop 1)

