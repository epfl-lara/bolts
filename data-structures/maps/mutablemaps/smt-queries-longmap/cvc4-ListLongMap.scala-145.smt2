; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2654 () Bool)

(assert start!2654)

(declare-fun b_free!551 () Bool)

(declare-fun b_next!551 () Bool)

(assert (=> start!2654 (= b_free!551 (not b_next!551))))

(declare-fun tp!2780 () Bool)

(declare-fun b_and!1045 () Bool)

(assert (=> start!2654 (= tp!2780 b_and!1045)))

(declare-fun res!11896 () Bool)

(declare-fun e!9699 () Bool)

(assert (=> start!2654 (=> (not res!11896) (not e!9699))))

(declare-datatypes ((B!672 0))(
  ( (B!673 (val!434 Int)) )
))
(declare-datatypes ((tuple2!650 0))(
  ( (tuple2!651 (_1!325 (_ BitVec 64)) (_2!325 B!672)) )
))
(declare-datatypes ((List!514 0))(
  ( (Nil!511) (Cons!510 (h!1076 tuple2!650) (t!3000 List!514)) )
))
(declare-datatypes ((ListLongMap!481 0))(
  ( (ListLongMap!482 (toList!256 List!514)) )
))
(declare-fun lm!221 () ListLongMap!481)

(declare-fun p!191 () Int)

(declare-fun forall!136 (List!514 Int) Bool)

(assert (=> start!2654 (= res!11896 (forall!136 (toList!256 lm!221) p!191))))

(assert (=> start!2654 e!9699))

(declare-fun e!9700 () Bool)

(declare-fun inv!866 (ListLongMap!481) Bool)

(assert (=> start!2654 (and (inv!866 lm!221) e!9700)))

(assert (=> start!2654 tp!2780))

(declare-fun b!15868 () Bool)

(declare-fun size!506 (List!514) Int)

(assert (=> b!15868 (= e!9699 (< (size!506 (toList!256 lm!221)) 0))))

(declare-fun b!15869 () Bool)

(declare-fun tp!2779 () Bool)

(assert (=> b!15869 (= e!9700 tp!2779)))

(assert (= (and start!2654 res!11896) b!15868))

(assert (= start!2654 b!15869))

(declare-fun m!10897 () Bool)

(assert (=> start!2654 m!10897))

(declare-fun m!10899 () Bool)

(assert (=> start!2654 m!10899))

(declare-fun m!10901 () Bool)

(assert (=> b!15868 m!10901))

(push 1)

(assert (not b!15869))

(assert (not b!15868))

(assert (not b_next!551))

(assert (not start!2654))

(assert b_and!1045)

(check-sat)

(pop 1)

(push 1)

(assert b_and!1045)

(assert (not b_next!551))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2867 () Bool)

(declare-fun lt!3933 () Int)

(assert (=> d!2867 (>= lt!3933 0)))

(declare-fun e!9721 () Int)

(assert (=> d!2867 (= lt!3933 e!9721)))

(declare-fun c!1502 () Bool)

(assert (=> d!2867 (= c!1502 (is-Nil!511 (toList!256 lm!221)))))

(assert (=> d!2867 (= (size!506 (toList!256 lm!221)) lt!3933)))

