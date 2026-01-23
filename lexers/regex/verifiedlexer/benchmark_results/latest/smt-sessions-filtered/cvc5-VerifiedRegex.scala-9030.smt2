; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!485718 () Bool)

(assert start!485718)

(declare-fun tp_is_empty!31937 () Bool)

(declare-fun tp_is_empty!31939 () Bool)

(declare-fun b!4753418 () Bool)

(declare-fun tp!1350306 () Bool)

(declare-fun e!2965283 () Bool)

(assert (=> b!4753418 (= e!2965283 (and tp_is_empty!31937 tp_is_empty!31939 tp!1350306))))

(declare-fun b!4753419 () Bool)

(declare-fun e!2965282 () Bool)

(declare-fun tp!1350307 () Bool)

(assert (=> b!4753419 (= e!2965282 tp!1350307)))

(declare-fun b!4753420 () Bool)

(declare-fun res!2016083 () Bool)

(declare-fun e!2965281 () Bool)

(assert (=> b!4753420 (=> (not res!2016083) (not e!2965281))))

(declare-datatypes ((K!14553 0))(
  ( (K!14554 (val!19913 Int)) )
))
(declare-datatypes ((V!14799 0))(
  ( (V!14800 (val!19914 Int)) )
))
(declare-datatypes ((tuple2!54882 0))(
  ( (tuple2!54883 (_1!30735 K!14553) (_2!30735 V!14799)) )
))
(declare-datatypes ((List!53225 0))(
  ( (Nil!53101) (Cons!53101 (h!59498 tuple2!54882) (t!360569 List!53225)) )
))
(declare-fun l!13029 () List!53225)

(assert (=> b!4753420 (= res!2016083 (is-Cons!53101 l!13029))))

(declare-fun res!2016080 () Bool)

(assert (=> start!485718 (=> (not res!2016080) (not e!2965281))))

(declare-fun key!4572 () K!14553)

(declare-fun containsKey!3567 (List!53225 K!14553) Bool)

(assert (=> start!485718 (= res!2016080 (not (containsKey!3567 l!13029 key!4572)))))

(assert (=> start!485718 e!2965281))

(assert (=> start!485718 e!2965283))

(assert (=> start!485718 tp_is_empty!31937))

(assert (=> start!485718 tp_is_empty!31939))

(declare-datatypes ((ListMap!5567 0))(
  ( (ListMap!5568 (toList!6129 List!53225)) )
))
(declare-fun lhm!63 () ListMap!5567)

(declare-fun inv!68424 (ListMap!5567) Bool)

(assert (=> start!485718 (and (inv!68424 lhm!63) e!2965282)))

(declare-fun b!4753421 () Bool)

(declare-fun e!2965284 () Bool)

(assert (=> b!4753421 (= e!2965284 true)))

(declare-fun lt!1919139 () Bool)

(declare-fun noDuplicateKeys!2161 (List!53225) Bool)

(assert (=> b!4753421 (= lt!1919139 (noDuplicateKeys!2161 (t!360569 l!13029)))))

(declare-fun b!4753422 () Bool)

(assert (=> b!4753422 (= e!2965281 (not e!2965284))))

(declare-fun res!2016082 () Bool)

(assert (=> b!4753422 (=> res!2016082 e!2965284)))

(assert (=> b!4753422 (= res!2016082 (containsKey!3567 (t!360569 l!13029) key!4572))))

(declare-fun lt!1919141 () tuple2!54882)

(declare-fun lt!1919140 () ListMap!5567)

(declare-fun eq!1230 (ListMap!5567 ListMap!5567) Bool)

(declare-fun +!2395 (ListMap!5567 tuple2!54882) ListMap!5567)

(assert (=> b!4753422 (eq!1230 (+!2395 lt!1919140 lt!1919141) (+!2395 (+!2395 lhm!63 lt!1919141) (h!59498 l!13029)))))

(declare-fun value!2966 () V!14799)

(assert (=> b!4753422 (= lt!1919141 (tuple2!54883 key!4572 value!2966))))

(declare-datatypes ((Unit!136878 0))(
  ( (Unit!136879) )
))
(declare-fun lt!1919138 () Unit!136878)

(declare-fun addCommutativeForDiffKeys!31 (ListMap!5567 K!14553 V!14799 K!14553 V!14799) Unit!136878)

(assert (=> b!4753422 (= lt!1919138 (addCommutativeForDiffKeys!31 lhm!63 (_1!30735 (h!59498 l!13029)) (_2!30735 (h!59498 l!13029)) key!4572 value!2966))))

(assert (=> b!4753422 (= lt!1919140 (+!2395 lhm!63 (h!59498 l!13029)))))

(declare-fun b!4753423 () Bool)

(declare-fun res!2016081 () Bool)

(assert (=> b!4753423 (=> (not res!2016081) (not e!2965281))))

(assert (=> b!4753423 (= res!2016081 (noDuplicateKeys!2161 l!13029))))

(assert (= (and start!485718 res!2016080) b!4753423))

(assert (= (and b!4753423 res!2016081) b!4753420))

(assert (= (and b!4753420 res!2016083) b!4753422))

(assert (= (and b!4753422 (not res!2016082)) b!4753421))

(assert (= (and start!485718 (is-Cons!53101 l!13029)) b!4753418))

(assert (= start!485718 b!4753419))

(declare-fun m!5720503 () Bool)

(assert (=> start!485718 m!5720503))

(declare-fun m!5720505 () Bool)

(assert (=> start!485718 m!5720505))

(declare-fun m!5720507 () Bool)

(assert (=> b!4753421 m!5720507))

(declare-fun m!5720509 () Bool)

(assert (=> b!4753422 m!5720509))

(declare-fun m!5720511 () Bool)

(assert (=> b!4753422 m!5720511))

(declare-fun m!5720513 () Bool)

(assert (=> b!4753422 m!5720513))

(declare-fun m!5720515 () Bool)

(assert (=> b!4753422 m!5720515))

(declare-fun m!5720517 () Bool)

(assert (=> b!4753422 m!5720517))

(assert (=> b!4753422 m!5720509))

(declare-fun m!5720519 () Bool)

(assert (=> b!4753422 m!5720519))

(declare-fun m!5720521 () Bool)

(assert (=> b!4753422 m!5720521))

(assert (=> b!4753422 m!5720521))

(assert (=> b!4753422 m!5720511))

(declare-fun m!5720523 () Bool)

(assert (=> b!4753423 m!5720523))

(push 1)

(assert (not b!4753418))

(assert tp_is_empty!31937)

(assert tp_is_empty!31939)

(assert (not start!485718))

(assert (not b!4753419))

(assert (not b!4753421))

(assert (not b!4753422))

(assert (not b!4753423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

