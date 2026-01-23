; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!521914 () Bool)

(assert start!521914)

(declare-fun b!4952591 () Bool)

(declare-fun res!2112888 () Bool)

(declare-fun e!3094323 () Bool)

(assert (=> b!4952591 (=> (not res!2112888) (not e!3094323))))

(declare-fun i!792 () Int)

(declare-datatypes ((B!3019 0))(
  ( (B!3020 (val!22979 Int)) )
))
(declare-datatypes ((List!57167 0))(
  ( (Nil!57043) (Cons!57043 (h!63491 B!3019) (t!367733 List!57167)) )
))
(declare-fun l!2976 () List!57167)

(declare-fun size!37871 (List!57167) Int)

(assert (=> b!4952591 (= res!2112888 (< (- i!792 1) (size!37871 (t!367733 l!2976))))))

(declare-fun b!4952592 () Bool)

(declare-fun res!2112887 () Bool)

(assert (=> b!4952592 (=> (not res!2112887) (not e!3094323))))

(assert (=> b!4952592 (= res!2112887 (< i!792 (size!37871 l!2976)))))

(declare-fun b!4952593 () Bool)

(declare-fun e!3094322 () Bool)

(declare-fun tp_is_empty!36237 () Bool)

(declare-fun tp!1388431 () Bool)

(assert (=> b!4952593 (= e!3094322 (and tp_is_empty!36237 tp!1388431))))

(declare-fun b!4952594 () Bool)

(declare-fun res!2112886 () Bool)

(assert (=> b!4952594 (=> (not res!2112886) (not e!3094323))))

(assert (=> b!4952594 (= res!2112886 (and (not (is-Nil!57043 l!2976)) (not (= i!792 0)) (>= (- i!792 1) 0)))))

(declare-fun b!4952595 () Bool)

(assert (=> b!4952595 (= e!3094323 (not (<= 0 i!792)))))

(declare-fun head!10624 (List!57167) B!3019)

(declare-fun drop!2305 (List!57167 Int) List!57167)

(declare-fun apply!13863 (List!57167 Int) B!3019)

(assert (=> b!4952595 (= (head!10624 (drop!2305 (t!367733 l!2976) (- i!792 1))) (apply!13863 (t!367733 l!2976) (- i!792 1)))))

(declare-datatypes ((Unit!147941 0))(
  ( (Unit!147942) )
))
(declare-fun lt!2044158 () Unit!147941)

(declare-fun lemmaDropApply!1359 (List!57167 Int) Unit!147941)

(assert (=> b!4952595 (= lt!2044158 (lemmaDropApply!1359 (t!367733 l!2976) (- i!792 1)))))

(declare-fun res!2112885 () Bool)

(assert (=> start!521914 (=> (not res!2112885) (not e!3094323))))

(assert (=> start!521914 (= res!2112885 (>= i!792 0))))

(assert (=> start!521914 e!3094323))

(assert (=> start!521914 true))

(assert (=> start!521914 e!3094322))

(assert (= (and start!521914 res!2112885) b!4952592))

(assert (= (and b!4952592 res!2112887) b!4952594))

(assert (= (and b!4952594 res!2112886) b!4952591))

(assert (= (and b!4952591 res!2112888) b!4952595))

(assert (= (and start!521914 (is-Cons!57043 l!2976)) b!4952593))

(declare-fun m!5977536 () Bool)

(assert (=> b!4952591 m!5977536))

(declare-fun m!5977538 () Bool)

(assert (=> b!4952592 m!5977538))

(declare-fun m!5977540 () Bool)

(assert (=> b!4952595 m!5977540))

(assert (=> b!4952595 m!5977540))

(declare-fun m!5977542 () Bool)

(assert (=> b!4952595 m!5977542))

(declare-fun m!5977544 () Bool)

(assert (=> b!4952595 m!5977544))

(declare-fun m!5977546 () Bool)

(assert (=> b!4952595 m!5977546))

(push 1)

(assert (not b!4952591))

(assert (not b!4952592))

(assert (not b!4952595))

(assert tp_is_empty!36237)

(assert (not b!4952593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

