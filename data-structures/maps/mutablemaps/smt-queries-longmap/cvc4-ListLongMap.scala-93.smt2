; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1396 () Bool)

(assert start!1396)

(declare-fun b_free!425 () Bool)

(declare-fun b_next!425 () Bool)

(assert (=> start!1396 (= b_free!425 (not b_next!425))))

(declare-fun tp!1732 () Bool)

(declare-fun b_and!655 () Bool)

(assert (=> start!1396 (= tp!1732 b_and!655)))

(declare-fun b!10947 () Bool)

(declare-fun e!6412 () Bool)

(declare-fun tp_is_empty!539 () Bool)

(declare-fun tp!1733 () Bool)

(assert (=> b!10947 (= e!6412 (and tp_is_empty!539 tp!1733))))

(declare-fun b!10948 () Bool)

(declare-fun res!9214 () Bool)

(declare-fun e!6410 () Bool)

(assert (=> b!10948 (=> (not res!9214) (not e!6410))))

(declare-datatypes ((B!366 0))(
  ( (B!367 (val!278 Int)) )
))
(declare-datatypes ((tuple2!338 0))(
  ( (tuple2!339 (_1!169 (_ BitVec 64)) (_2!169 B!366)) )
))
(declare-datatypes ((List!325 0))(
  ( (Nil!322) (Cons!321 (h!887 tuple2!338) (t!2544 List!325)) )
))
(declare-fun kvs!4 () List!325)

(declare-fun p!216 () Int)

(declare-fun forall!49 (List!325 Int) Bool)

(assert (=> b!10948 (= res!9214 (forall!49 kvs!4 p!216))))

(declare-fun b!10950 () Bool)

(declare-fun e!6411 () Bool)

(assert (=> b!10950 (= e!6410 (not e!6411))))

(declare-fun res!9213 () Bool)

(assert (=> b!10950 (=> res!9213 e!6411)))

(declare-datatypes ((ListLongMap!319 0))(
  ( (ListLongMap!320 (toList!175 List!325)) )
))
(declare-fun lm!227 () ListLongMap!319)

(declare-fun lt!2751 () tuple2!338)

(declare-fun +!22 (ListLongMap!319 tuple2!338) ListLongMap!319)

(assert (=> b!10950 (= res!9213 (not (forall!49 (toList!175 (+!22 lm!227 lt!2751)) p!216)))))

(assert (=> b!10950 (forall!49 (toList!175 (+!22 lm!227 (tuple2!339 (_1!169 lt!2751) (_2!169 lt!2751)))) p!216)))

(declare-datatypes ((Unit!231 0))(
  ( (Unit!232) )
))
(declare-fun lt!2750 () Unit!231)

(declare-fun addValidProp!10 (ListLongMap!319 Int (_ BitVec 64) B!366) Unit!231)

(assert (=> b!10950 (= lt!2750 (addValidProp!10 lm!227 p!216 (_1!169 lt!2751) (_2!169 lt!2751)))))

(declare-fun head!766 (List!325) tuple2!338)

(assert (=> b!10950 (= lt!2751 (head!766 kvs!4))))

(declare-fun b!10951 () Bool)

(declare-fun res!9211 () Bool)

(assert (=> b!10951 (=> (not res!9211) (not e!6410))))

(declare-fun isEmpty!59 (List!325) Bool)

(assert (=> b!10951 (= res!9211 (not (isEmpty!59 kvs!4)))))

(declare-fun b!10952 () Bool)

(assert (=> b!10952 (= e!6411 true)))

(declare-fun res!9212 () Bool)

(assert (=> start!1396 (=> (not res!9212) (not e!6410))))

(assert (=> start!1396 (= res!9212 (forall!49 (toList!175 lm!227) p!216))))

(assert (=> start!1396 e!6410))

(declare-fun e!6413 () Bool)

(declare-fun inv!528 (ListLongMap!319) Bool)

(assert (=> start!1396 (and (inv!528 lm!227) e!6413)))

(assert (=> start!1396 tp!1732))

(assert (=> start!1396 e!6412))

(declare-fun b!10949 () Bool)

(declare-fun tp!1731 () Bool)

(assert (=> b!10949 (= e!6413 tp!1731)))

(assert (= (and start!1396 res!9212) b!10948))

(assert (= (and b!10948 res!9214) b!10951))

(assert (= (and b!10951 res!9211) b!10950))

(assert (= (and b!10950 (not res!9213)) b!10952))

(assert (= start!1396 b!10949))

(assert (= (and start!1396 (is-Cons!321 kvs!4)) b!10947))

(declare-fun m!7215 () Bool)

(assert (=> b!10948 m!7215))

(declare-fun m!7217 () Bool)

(assert (=> b!10950 m!7217))

(declare-fun m!7219 () Bool)

(assert (=> b!10950 m!7219))

(declare-fun m!7221 () Bool)

(assert (=> b!10950 m!7221))

(declare-fun m!7223 () Bool)

(assert (=> b!10950 m!7223))

(declare-fun m!7225 () Bool)

(assert (=> b!10950 m!7225))

(declare-fun m!7227 () Bool)

(assert (=> b!10950 m!7227))

(declare-fun m!7229 () Bool)

(assert (=> b!10951 m!7229))

(declare-fun m!7231 () Bool)

(assert (=> start!1396 m!7231))

(declare-fun m!7233 () Bool)

(assert (=> start!1396 m!7233))

(push 1)

(assert (not b!10950))

(assert (not b!10948))

(assert (not b!10951))

(assert (not b!10949))

(assert (not b_next!425))

(assert (not start!1396))

(assert (not b!10947))

(assert tp_is_empty!539)

(assert b_and!655)

(check-sat)

(pop 1)

(push 1)

(assert b_and!655)

