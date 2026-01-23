; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!411126 () Bool)

(assert start!411126)

(declare-fun b!4280194 () Bool)

(declare-fun e!2657157 () Bool)

(declare-fun tp!1309257 () Bool)

(assert (=> b!4280194 (= e!2657157 tp!1309257)))

(declare-fun b!4280195 () Bool)

(declare-fun e!2657158 () Bool)

(declare-fun tp_is_empty!22971 () Bool)

(declare-fun tp!1309258 () Bool)

(assert (=> b!4280195 (= e!2657158 (and tp_is_empty!22971 tp!1309258))))

(declare-fun b!4280196 () Bool)

(declare-fun e!2657156 () Bool)

(assert (=> b!4280196 (= e!2657156 false)))

(declare-fun lt!1514767 () Int)

(declare-datatypes ((T!80058 0))(
  ( (T!80059 (val!15281 Int)) )
))
(declare-datatypes ((List!47490 0))(
  ( (Nil!47366) (Cons!47366 (h!52786 T!80058) (t!354075 List!47490)) )
))
(declare-fun lt!1514766 () List!47490)

(declare-fun size!34688 (List!47490) Int)

(assert (=> b!4280196 (= lt!1514767 (size!34688 lt!1514766))))

(declare-fun b!4280197 () Bool)

(declare-fun e!2657159 () Bool)

(assert (=> b!4280197 (= e!2657159 e!2657156)))

(declare-fun res!1756898 () Bool)

(assert (=> b!4280197 (=> (not res!1756898) (not e!2657156))))

(declare-fun acc!244 () List!47490)

(declare-fun i!561 () Int)

(declare-fun drop!2148 (List!47490 Int) List!47490)

(assert (=> b!4280197 (= res!1756898 (= acc!244 (drop!2148 lt!1514766 i!561)))))

(declare-datatypes ((IArray!28701 0))(
  ( (IArray!28702 (innerList!14408 List!47490)) )
))
(declare-fun arr!11 () IArray!28701)

(declare-fun list!17288 (IArray!28701) List!47490)

(assert (=> b!4280197 (= lt!1514766 (list!17288 arr!11))))

(declare-fun res!1756901 () Bool)

(assert (=> start!411126 (=> (not res!1756901) (not e!2657159))))

(assert (=> start!411126 (= res!1756901 (<= 0 i!561))))

(assert (=> start!411126 e!2657159))

(assert (=> start!411126 true))

(declare-fun inv!62754 (IArray!28701) Bool)

(assert (=> start!411126 (and (inv!62754 arr!11) e!2657157)))

(assert (=> start!411126 e!2657158))

(declare-fun b!4280198 () Bool)

(declare-fun res!1756899 () Bool)

(assert (=> b!4280198 (=> (not res!1756899) (not e!2657156))))

(assert (=> b!4280198 (= res!1756899 (and (> i!561 0) (>= (- i!561 1) 0)))))

(declare-fun b!4280199 () Bool)

(declare-fun res!1756900 () Bool)

(assert (=> b!4280199 (=> (not res!1756900) (not e!2657159))))

(declare-fun size!34689 (IArray!28701) Int)

(assert (=> b!4280199 (= res!1756900 (<= i!561 (size!34689 arr!11)))))

(assert (= (and start!411126 res!1756901) b!4280199))

(assert (= (and b!4280199 res!1756900) b!4280197))

(assert (= (and b!4280197 res!1756898) b!4280198))

(assert (= (and b!4280198 res!1756899) b!4280196))

(assert (= start!411126 b!4280194))

(assert (= (and start!411126 (is-Cons!47366 acc!244)) b!4280195))

(declare-fun m!4877991 () Bool)

(assert (=> b!4280196 m!4877991))

(declare-fun m!4877993 () Bool)

(assert (=> b!4280197 m!4877993))

(declare-fun m!4877995 () Bool)

(assert (=> b!4280197 m!4877995))

(declare-fun m!4877997 () Bool)

(assert (=> start!411126 m!4877997))

(declare-fun m!4877999 () Bool)

(assert (=> b!4280199 m!4877999))

(push 1)

(assert tp_is_empty!22971)

(assert (not b!4280197))

(assert (not b!4280196))

(assert (not start!411126))

(assert (not b!4280194))

(assert (not b!4280195))

(assert (not b!4280199))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

