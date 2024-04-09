; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107880 () Bool)

(assert start!107880)

(declare-fun res!847461 () Bool)

(declare-fun e!727572 () Bool)

(assert (=> start!107880 (=> (not res!847461) (not e!727572))))

(declare-datatypes ((B!2166 0))(
  ( (B!2167 (val!16679 Int)) )
))
(declare-datatypes ((tuple2!21586 0))(
  ( (tuple2!21587 (_1!10803 (_ BitVec 64)) (_2!10803 B!2166)) )
))
(declare-datatypes ((List!28763 0))(
  ( (Nil!28760) (Cons!28759 (h!29968 tuple2!21586) (t!42303 List!28763)) )
))
(declare-fun l!595 () List!28763)

(declare-fun isStrictlySorted!854 (List!28763) Bool)

(assert (=> start!107880 (= res!847461 (isStrictlySorted!854 l!595))))

(assert (=> start!107880 e!727572))

(declare-fun e!727571 () Bool)

(assert (=> start!107880 e!727571))

(assert (=> start!107880 true))

(declare-fun b!1274738 () Bool)

(declare-fun res!847462 () Bool)

(assert (=> b!1274738 (=> (not res!847462) (not e!727572))))

(declare-fun key!173 () (_ BitVec 64))

(assert (=> b!1274738 (= res!847462 (and (not (= (_1!10803 (h!29968 l!595)) key!173)) (is-Cons!28759 l!595)))))

(declare-fun b!1274739 () Bool)

(declare-fun ListPrimitiveSize!168 (List!28763) Int)

(assert (=> b!1274739 (= e!727572 (>= (ListPrimitiveSize!168 (t!42303 l!595)) (ListPrimitiveSize!168 l!595)))))

(declare-fun b!1274740 () Bool)

(declare-fun tp_is_empty!33209 () Bool)

(declare-fun tp!98046 () Bool)

(assert (=> b!1274740 (= e!727571 (and tp_is_empty!33209 tp!98046))))

(assert (= (and start!107880 res!847461) b!1274738))

(assert (= (and b!1274738 res!847462) b!1274739))

(assert (= (and start!107880 (is-Cons!28759 l!595)) b!1274740))

(declare-fun m!1171321 () Bool)

(assert (=> start!107880 m!1171321))

(declare-fun m!1171323 () Bool)

(assert (=> b!1274739 m!1171323))

(declare-fun m!1171325 () Bool)

(assert (=> b!1274739 m!1171325))

(push 1)

(assert (not b!1274739))

(assert (not start!107880))

(assert (not b!1274740))

(assert tp_is_empty!33209)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140145 () Bool)

(declare-fun lt!575234 () Int)

(assert (=> d!140145 (>= lt!575234 0)))

(declare-fun e!727585 () Int)

(assert (=> d!140145 (= lt!575234 e!727585)))

(declare-fun c!123831 () Bool)

(assert (=> d!140145 (= c!123831 (is-Nil!28760 (t!42303 l!595)))))

(assert (=> d!140145 (= (ListPrimitiveSize!168 (t!42303 l!595)) lt!575234)))

(declare-fun b!1274761 () Bool)

(assert (=> b!1274761 (= e!727585 0)))

(declare-fun b!1274762 () Bool)

(assert (=> b!1274762 (= e!727585 (+ 1 (ListPrimitiveSize!168 (t!42303 (t!42303 l!595)))))))

(assert (= (and d!140145 c!123831) b!1274761))

(assert (= (and d!140145 (not c!123831)) b!1274762))

(declare-fun m!1171329 () Bool)

(assert (=> b!1274762 m!1171329))

(assert (=> b!1274739 d!140145))

(declare-fun d!140153 () Bool)

(declare-fun lt!575235 () Int)

(assert (=> d!140153 (>= lt!575235 0)))

(declare-fun e!727586 () Int)

(assert (=> d!140153 (= lt!575235 e!727586)))

(declare-fun c!123832 () Bool)

(assert (=> d!140153 (= c!123832 (is-Nil!28760 l!595))))

(assert (=> d!140153 (= (ListPrimitiveSize!168 l!595) lt!575235)))

(declare-fun b!1274763 () Bool)

(assert (=> b!1274763 (= e!727586 0)))

(declare-fun b!1274764 () Bool)

(assert (=> b!1274764 (= e!727586 (+ 1 (ListPrimitiveSize!168 (t!42303 l!595))))))

(assert (= (and d!140153 c!123832) b!1274763))

(assert (= (and d!140153 (not c!123832)) b!1274764))

(assert (=> b!1274764 m!1171323))

