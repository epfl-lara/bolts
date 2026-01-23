; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502306 () Bool)

(assert start!502306)

(declare-fun b!4832899 () Bool)

(declare-fun e!3020077 () Bool)

(declare-fun tp!1362999 () Bool)

(assert (=> b!4832899 (= e!3020077 tp!1362999)))

(declare-fun tp_is_empty!34597 () Bool)

(declare-fun tp!1363000 () Bool)

(declare-fun tp_is_empty!34599 () Bool)

(declare-fun b!4832898 () Bool)

(declare-fun e!3020079 () Bool)

(assert (=> b!4832898 (= e!3020079 (and tp_is_empty!34597 tp_is_empty!34599 tp!1363000))))

(declare-fun b!4832896 () Bool)

(declare-fun res!2058666 () Bool)

(declare-fun e!3020078 () Bool)

(assert (=> b!4832896 (=> (not res!2058666) (not e!3020078))))

(declare-datatypes ((K!16772 0))(
  ( (K!16773 (val!21723 Int)) )
))
(declare-datatypes ((V!17018 0))(
  ( (V!17019 (val!21724 Int)) )
))
(declare-datatypes ((tuple2!58378 0))(
  ( (tuple2!58379 (_1!32483 K!16772) (_2!32483 V!17018)) )
))
(declare-datatypes ((List!55208 0))(
  ( (Nil!55084) (Cons!55084 (h!61518 tuple2!58378) (t!362704 List!55208)) )
))
(declare-fun l!14180 () List!55208)

(assert (=> b!4832896 (= res!2058666 (not (is-Nil!55084 l!14180)))))

(declare-fun b!4832897 () Bool)

(assert (=> b!4832897 (= e!3020078 false)))

(declare-fun lt!1978482 () Bool)

(declare-fun noDuplicateKeys!2479 (List!55208) Bool)

(assert (=> b!4832897 (= lt!1978482 (noDuplicateKeys!2479 (t!362704 l!14180)))))

(declare-datatypes ((ListMap!6939 0))(
  ( (ListMap!6940 (toList!7565 List!55208)) )
))
(declare-fun lt!1978483 () ListMap!6939)

(declare-fun acc!1183 () ListMap!6939)

(declare-fun addToMapMapFromBucket!1834 (List!55208 ListMap!6939) ListMap!6939)

(declare-fun +!2558 (ListMap!6939 tuple2!58378) ListMap!6939)

(assert (=> b!4832897 (= lt!1978483 (addToMapMapFromBucket!1834 (t!362704 l!14180) (+!2558 acc!1183 (h!61518 l!14180))))))

(declare-fun res!2058667 () Bool)

(assert (=> start!502306 (=> (not res!2058667) (not e!3020078))))

(assert (=> start!502306 (= res!2058667 (noDuplicateKeys!2479 l!14180))))

(assert (=> start!502306 e!3020078))

(assert (=> start!502306 e!3020079))

(declare-fun inv!70673 (ListMap!6939) Bool)

(assert (=> start!502306 (and (inv!70673 acc!1183) e!3020077)))

(assert (= (and start!502306 res!2058667) b!4832896))

(assert (= (and b!4832896 res!2058666) b!4832897))

(assert (= (and start!502306 (is-Cons!55084 l!14180)) b!4832898))

(assert (= start!502306 b!4832899))

(declare-fun m!5827326 () Bool)

(assert (=> b!4832897 m!5827326))

(declare-fun m!5827328 () Bool)

(assert (=> b!4832897 m!5827328))

(assert (=> b!4832897 m!5827328))

(declare-fun m!5827330 () Bool)

(assert (=> b!4832897 m!5827330))

(declare-fun m!5827332 () Bool)

(assert (=> start!502306 m!5827332))

(declare-fun m!5827334 () Bool)

(assert (=> start!502306 m!5827334))

(push 1)

(assert tp_is_empty!34597)

(assert tp_is_empty!34599)

(assert (not b!4832898))

(assert (not b!4832897))

(assert (not start!502306))

(assert (not b!4832899))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

