; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!107190 () Bool)

(assert start!107190)

(declare-fun b!1203585 () Bool)

(declare-fun e!772165 () Bool)

(declare-fun tp_is_empty!6013 () Bool)

(declare-fun tp!341623 () Bool)

(assert (=> b!1203585 (= e!772165 (and tp_is_empty!6013 tp!341623))))

(declare-fun res!542145 () Bool)

(declare-fun e!772168 () Bool)

(assert (=> start!107190 (=> (not res!542145) (not e!772168))))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(assert (=> start!107190 (= res!542145 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107190 e!772168))

(assert (=> start!107190 true))

(assert (=> start!107190 e!772165))

(declare-fun e!772166 () Bool)

(assert (=> start!107190 e!772166))

(declare-fun b!1203583 () Bool)

(declare-fun e!772167 () Bool)

(assert (=> b!1203583 (= e!772168 e!772167)))

(declare-fun res!542146 () Bool)

(assert (=> b!1203583 (=> (not res!542146) (not e!772167))))

(declare-datatypes ((T!21906 0))(
  ( (T!21907 (val!3905 Int)) )
))
(declare-datatypes ((List!12084 0))(
  ( (Nil!12060) (Cons!12060 (h!17461 T!21906) (t!112500 List!12084)) )
))
(declare-fun r!2028 () List!12084)

(declare-fun lt!411401 () Int)

(declare-fun size!9600 (List!12084) Int)

(assert (=> b!1203583 (= res!542146 (<= until!61 (+ lt!411401 (size!9600 r!2028))))))

(declare-fun l!2744 () List!12084)

(assert (=> b!1203583 (= lt!411401 (size!9600 l!2744))))

(declare-fun b!1203586 () Bool)

(declare-fun tp!341622 () Bool)

(assert (=> b!1203586 (= e!772166 (and tp_is_empty!6013 tp!341622))))

(declare-fun b!1203584 () Bool)

(assert (=> b!1203584 (= e!772167 (and (or (= l!2744 Nil!12060) (= r!2028 Nil!12060)) (> lt!411401 from!613) (> until!61 lt!411401) (> from!613 lt!411401)))))

(assert (= (and start!107190 res!542145) b!1203583))

(assert (= (and b!1203583 res!542146) b!1203584))

(assert (= (and start!107190 (is-Cons!12060 l!2744)) b!1203585))

(assert (= (and start!107190 (is-Cons!12060 r!2028)) b!1203586))

(declare-fun m!1379285 () Bool)

(assert (=> b!1203583 m!1379285))

(declare-fun m!1379287 () Bool)

(assert (=> b!1203583 m!1379287))

(push 1)

(assert (not b!1203583))

(assert (not b!1203585))

(assert (not b!1203586))

(assert tp_is_empty!6013)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

