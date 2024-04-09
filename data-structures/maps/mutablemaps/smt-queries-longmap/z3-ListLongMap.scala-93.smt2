; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1394 () Bool)

(assert start!1394)

(declare-fun b_free!423 () Bool)

(declare-fun b_next!423 () Bool)

(assert (=> start!1394 (= b_free!423 (not b_next!423))))

(declare-fun tp!1724 () Bool)

(declare-fun b_and!653 () Bool)

(assert (=> start!1394 (= tp!1724 b_and!653)))

(declare-fun b!10929 () Bool)

(declare-fun e!6399 () Bool)

(declare-fun tp_is_empty!537 () Bool)

(declare-fun tp!1723 () Bool)

(assert (=> b!10929 (= e!6399 (and tp_is_empty!537 tp!1723))))

(declare-fun b!10930 () Bool)

(declare-fun e!6400 () Bool)

(assert (=> b!10930 (= e!6400 true)))

(declare-fun b!10931 () Bool)

(declare-fun e!6401 () Bool)

(declare-fun tp!1722 () Bool)

(assert (=> b!10931 (= e!6401 tp!1722)))

(declare-fun b!10932 () Bool)

(declare-fun res!9200 () Bool)

(declare-fun e!6398 () Bool)

(assert (=> b!10932 (=> (not res!9200) (not e!6398))))

(declare-datatypes ((B!364 0))(
  ( (B!365 (val!277 Int)) )
))
(declare-datatypes ((tuple2!336 0))(
  ( (tuple2!337 (_1!168 (_ BitVec 64)) (_2!168 B!364)) )
))
(declare-datatypes ((List!324 0))(
  ( (Nil!321) (Cons!320 (h!886 tuple2!336) (t!2543 List!324)) )
))
(declare-fun kvs!4 () List!324)

(declare-fun p!216 () Int)

(declare-fun forall!48 (List!324 Int) Bool)

(assert (=> b!10932 (= res!9200 (forall!48 kvs!4 p!216))))

(declare-fun res!9199 () Bool)

(assert (=> start!1394 (=> (not res!9199) (not e!6398))))

(declare-datatypes ((ListLongMap!317 0))(
  ( (ListLongMap!318 (toList!174 List!324)) )
))
(declare-fun lm!227 () ListLongMap!317)

(assert (=> start!1394 (= res!9199 (forall!48 (toList!174 lm!227) p!216))))

(assert (=> start!1394 e!6398))

(declare-fun inv!527 (ListLongMap!317) Bool)

(assert (=> start!1394 (and (inv!527 lm!227) e!6401)))

(assert (=> start!1394 tp!1724))

(assert (=> start!1394 e!6399))

(declare-fun b!10933 () Bool)

(assert (=> b!10933 (= e!6398 (not e!6400))))

(declare-fun res!9201 () Bool)

(assert (=> b!10933 (=> res!9201 e!6400)))

(declare-fun lt!2745 () tuple2!336)

(declare-fun +!21 (ListLongMap!317 tuple2!336) ListLongMap!317)

(assert (=> b!10933 (= res!9201 (not (forall!48 (toList!174 (+!21 lm!227 lt!2745)) p!216)))))

(assert (=> b!10933 (forall!48 (toList!174 (+!21 lm!227 (tuple2!337 (_1!168 lt!2745) (_2!168 lt!2745)))) p!216)))

(declare-datatypes ((Unit!229 0))(
  ( (Unit!230) )
))
(declare-fun lt!2744 () Unit!229)

(declare-fun addValidProp!9 (ListLongMap!317 Int (_ BitVec 64) B!364) Unit!229)

(assert (=> b!10933 (= lt!2744 (addValidProp!9 lm!227 p!216 (_1!168 lt!2745) (_2!168 lt!2745)))))

(declare-fun head!765 (List!324) tuple2!336)

(assert (=> b!10933 (= lt!2745 (head!765 kvs!4))))

(declare-fun b!10934 () Bool)

(declare-fun res!9202 () Bool)

(assert (=> b!10934 (=> (not res!9202) (not e!6398))))

(declare-fun isEmpty!58 (List!324) Bool)

(assert (=> b!10934 (= res!9202 (not (isEmpty!58 kvs!4)))))

(assert (= (and start!1394 res!9199) b!10932))

(assert (= (and b!10932 res!9200) b!10934))

(assert (= (and b!10934 res!9202) b!10933))

(assert (= (and b!10933 (not res!9201)) b!10930))

(assert (= start!1394 b!10931))

(get-info :version)

(assert (= (and start!1394 ((_ is Cons!320) kvs!4)) b!10929))

(declare-fun m!7195 () Bool)

(assert (=> b!10932 m!7195))

(declare-fun m!7197 () Bool)

(assert (=> start!1394 m!7197))

(declare-fun m!7199 () Bool)

(assert (=> start!1394 m!7199))

(declare-fun m!7201 () Bool)

(assert (=> b!10933 m!7201))

(declare-fun m!7203 () Bool)

(assert (=> b!10933 m!7203))

(declare-fun m!7205 () Bool)

(assert (=> b!10933 m!7205))

(declare-fun m!7207 () Bool)

(assert (=> b!10933 m!7207))

(declare-fun m!7209 () Bool)

(assert (=> b!10933 m!7209))

(declare-fun m!7211 () Bool)

(assert (=> b!10933 m!7211))

(declare-fun m!7213 () Bool)

(assert (=> b!10934 m!7213))

(check-sat (not b_next!423) (not b!10934) (not b!10929) (not start!1394) tp_is_empty!537 (not b!10932) b_and!653 (not b!10933) (not b!10931))
(check-sat b_and!653 (not b_next!423))
