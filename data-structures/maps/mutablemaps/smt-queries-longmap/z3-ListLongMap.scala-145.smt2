; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2652 () Bool)

(assert start!2652)

(declare-fun b_free!549 () Bool)

(declare-fun b_next!549 () Bool)

(assert (=> start!2652 (= b_free!549 (not b_next!549))))

(declare-fun tp!2773 () Bool)

(declare-fun b_and!1043 () Bool)

(assert (=> start!2652 (= tp!2773 b_and!1043)))

(declare-fun res!11893 () Bool)

(declare-fun e!9694 () Bool)

(assert (=> start!2652 (=> (not res!11893) (not e!9694))))

(declare-datatypes ((B!670 0))(
  ( (B!671 (val!433 Int)) )
))
(declare-datatypes ((tuple2!648 0))(
  ( (tuple2!649 (_1!324 (_ BitVec 64)) (_2!324 B!670)) )
))
(declare-datatypes ((List!513 0))(
  ( (Nil!510) (Cons!509 (h!1075 tuple2!648) (t!2999 List!513)) )
))
(declare-datatypes ((ListLongMap!479 0))(
  ( (ListLongMap!480 (toList!255 List!513)) )
))
(declare-fun lm!221 () ListLongMap!479)

(declare-fun p!191 () Int)

(declare-fun forall!135 (List!513 Int) Bool)

(assert (=> start!2652 (= res!11893 (forall!135 (toList!255 lm!221) p!191))))

(assert (=> start!2652 e!9694))

(declare-fun e!9693 () Bool)

(declare-fun inv!865 (ListLongMap!479) Bool)

(assert (=> start!2652 (and (inv!865 lm!221) e!9693)))

(assert (=> start!2652 tp!2773))

(declare-fun b!15862 () Bool)

(declare-fun size!505 (List!513) Int)

(assert (=> b!15862 (= e!9694 (< (size!505 (toList!255 lm!221)) 0))))

(declare-fun b!15863 () Bool)

(declare-fun tp!2774 () Bool)

(assert (=> b!15863 (= e!9693 tp!2774)))

(assert (= (and start!2652 res!11893) b!15862))

(assert (= start!2652 b!15863))

(declare-fun m!10891 () Bool)

(assert (=> start!2652 m!10891))

(declare-fun m!10893 () Bool)

(assert (=> start!2652 m!10893))

(declare-fun m!10895 () Bool)

(assert (=> b!15862 m!10895))

(check-sat b_and!1043 (not start!2652) (not b_next!549) (not b!15862) (not b!15863))
(check-sat b_and!1043 (not b_next!549))
(get-model)

(declare-fun d!2863 () Bool)

(declare-fun lt!3930 () Int)

(assert (=> d!2863 (>= lt!3930 0)))

(declare-fun e!9706 () Int)

(assert (=> d!2863 (= lt!3930 e!9706)))

(declare-fun c!1499 () Bool)

(get-info :version)

(assert (=> d!2863 (= c!1499 ((_ is Nil!510) (toList!255 lm!221)))))

(assert (=> d!2863 (= (size!505 (toList!255 lm!221)) lt!3930)))

(declare-fun b!15880 () Bool)

(assert (=> b!15880 (= e!9706 0)))

(declare-fun b!15881 () Bool)

(assert (=> b!15881 (= e!9706 (+ 1 (size!505 (t!2999 (toList!255 lm!221)))))))

(assert (= (and d!2863 c!1499) b!15880))

(assert (= (and d!2863 (not c!1499)) b!15881))

(declare-fun m!10905 () Bool)

(assert (=> b!15881 m!10905))

(assert (=> b!15862 d!2863))

(declare-fun d!2869 () Bool)

(declare-fun res!11907 () Bool)

(declare-fun e!9717 () Bool)

(assert (=> d!2869 (=> res!11907 e!9717)))

(assert (=> d!2869 (= res!11907 ((_ is Nil!510) (toList!255 lm!221)))))

(assert (=> d!2869 (= (forall!135 (toList!255 lm!221) p!191) e!9717)))

(declare-fun b!15892 () Bool)

(declare-fun e!9718 () Bool)

(assert (=> b!15892 (= e!9717 e!9718)))

(declare-fun res!11908 () Bool)

(assert (=> b!15892 (=> (not res!11908) (not e!9718))))

(declare-fun dynLambda!119 (Int tuple2!648) Bool)

(assert (=> b!15892 (= res!11908 (dynLambda!119 p!191 (h!1075 (toList!255 lm!221))))))

(declare-fun b!15893 () Bool)

(assert (=> b!15893 (= e!9718 (forall!135 (t!2999 (toList!255 lm!221)) p!191))))

(assert (= (and d!2869 (not res!11907)) b!15892))

(assert (= (and b!15892 res!11908) b!15893))

(declare-fun b_lambda!1141 () Bool)

(assert (=> (not b_lambda!1141) (not b!15892)))

(declare-fun t!3004 () Bool)

(declare-fun tb!479 () Bool)

(assert (=> (and start!2652 (= p!191 p!191) t!3004) tb!479))

(declare-fun result!827 () Bool)

(assert (=> tb!479 (= result!827 true)))

(assert (=> b!15892 t!3004))

(declare-fun b_and!1049 () Bool)

(assert (= b_and!1043 (and (=> t!3004 result!827) b_and!1049)))

(declare-fun m!10911 () Bool)

(assert (=> b!15892 m!10911))

(declare-fun m!10913 () Bool)

(assert (=> b!15893 m!10913))

(assert (=> start!2652 d!2869))

(declare-fun d!2873 () Bool)

(declare-fun isStrictlySorted!154 (List!513) Bool)

(assert (=> d!2873 (= (inv!865 lm!221) (isStrictlySorted!154 (toList!255 lm!221)))))

(declare-fun bs!729 () Bool)

(assert (= bs!729 d!2873))

(declare-fun m!10917 () Bool)

(assert (=> bs!729 m!10917))

(assert (=> start!2652 d!2873))

(declare-fun b!15909 () Bool)

(declare-fun e!9727 () Bool)

(declare-fun tp_is_empty!813 () Bool)

(declare-fun tp!2786 () Bool)

(assert (=> b!15909 (= e!9727 (and tp_is_empty!813 tp!2786))))

(assert (=> b!15863 (= tp!2774 e!9727)))

(assert (= (and b!15863 ((_ is Cons!509) (toList!255 lm!221))) b!15909))

(declare-fun b_lambda!1145 () Bool)

(assert (= b_lambda!1141 (or (and start!2652 b_free!549) b_lambda!1145)))

(check-sat (not b!15909) (not b_next!549) tp_is_empty!813 (not d!2873) (not b!15893) (not b!15881) (not b_lambda!1145) b_and!1049)
(check-sat b_and!1049 (not b_next!549))
