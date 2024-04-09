; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59776 () Bool)

(assert start!59776)

(declare-fun b!659895 () Bool)

(declare-fun res!428135 () Bool)

(declare-fun e!379204 () Bool)

(assert (=> b!659895 (=> (not res!428135) (not e!379204))))

(declare-datatypes ((List!12672 0))(
  ( (Nil!12669) (Cons!12668 (h!13713 (_ BitVec 64)) (t!18908 List!12672)) )
))
(declare-fun acc!681 () List!12672)

(declare-fun contains!3215 (List!12672 (_ BitVec 64)) Bool)

(assert (=> b!659895 (= res!428135 (not (contains!3215 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!428138 () Bool)

(assert (=> start!59776 (=> (not res!428138) (not e!379204))))

(declare-datatypes ((array!38779 0))(
  ( (array!38780 (arr!18578 (Array (_ BitVec 32) (_ BitVec 64))) (size!18942 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38779)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59776 (= res!428138 (and (bvslt (size!18942 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18942 a!3626))))))

(assert (=> start!59776 e!379204))

(assert (=> start!59776 true))

(declare-fun array_inv!14352 (array!38779) Bool)

(assert (=> start!59776 (array_inv!14352 a!3626)))

(declare-fun b!659896 () Bool)

(declare-fun res!428141 () Bool)

(assert (=> b!659896 (=> (not res!428141) (not e!379204))))

(declare-fun arrayNoDuplicates!0 (array!38779 (_ BitVec 32) List!12672) Bool)

(assert (=> b!659896 (= res!428141 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12669))))

(declare-fun b!659897 () Bool)

(declare-fun e!379206 () Bool)

(declare-fun e!379203 () Bool)

(assert (=> b!659897 (= e!379206 e!379203)))

(declare-fun res!428139 () Bool)

(assert (=> b!659897 (=> (not res!428139) (not e!379203))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659897 (= res!428139 (bvsle from!3004 i!1382))))

(declare-fun b!659898 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!659898 (= e!379203 (not (contains!3215 acc!681 k!2843)))))

(declare-fun b!659899 () Bool)

(assert (=> b!659899 (= e!379204 (bvsgt from!3004 (size!18942 a!3626)))))

(declare-fun b!659900 () Bool)

(declare-fun res!428137 () Bool)

(assert (=> b!659900 (=> (not res!428137) (not e!379204))))

(assert (=> b!659900 (= res!428137 e!379206)))

(declare-fun res!428134 () Bool)

(assert (=> b!659900 (=> res!428134 e!379206)))

(declare-fun e!379207 () Bool)

(assert (=> b!659900 (= res!428134 e!379207)))

(declare-fun res!428133 () Bool)

(assert (=> b!659900 (=> (not res!428133) (not e!379207))))

(assert (=> b!659900 (= res!428133 (bvsgt from!3004 i!1382))))

(declare-fun b!659901 () Bool)

(assert (=> b!659901 (= e!379207 (contains!3215 acc!681 k!2843))))

(declare-fun b!659902 () Bool)

(declare-fun res!428140 () Bool)

(assert (=> b!659902 (=> (not res!428140) (not e!379204))))

(assert (=> b!659902 (= res!428140 (not (contains!3215 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659903 () Bool)

(declare-fun res!428136 () Bool)

(assert (=> b!659903 (=> (not res!428136) (not e!379204))))

(declare-fun noDuplicate!462 (List!12672) Bool)

(assert (=> b!659903 (= res!428136 (noDuplicate!462 acc!681))))

(assert (= (and start!59776 res!428138) b!659903))

(assert (= (and b!659903 res!428136) b!659895))

(assert (= (and b!659895 res!428135) b!659902))

(assert (= (and b!659902 res!428140) b!659900))

(assert (= (and b!659900 res!428133) b!659901))

(assert (= (and b!659900 (not res!428134)) b!659897))

(assert (= (and b!659897 res!428139) b!659898))

(assert (= (and b!659900 res!428137) b!659896))

(assert (= (and b!659896 res!428141) b!659899))

(declare-fun m!632811 () Bool)

(assert (=> b!659902 m!632811))

(declare-fun m!632813 () Bool)

(assert (=> start!59776 m!632813))

(declare-fun m!632815 () Bool)

(assert (=> b!659901 m!632815))

(declare-fun m!632817 () Bool)

(assert (=> b!659896 m!632817))

(assert (=> b!659898 m!632815))

(declare-fun m!632819 () Bool)

(assert (=> b!659895 m!632819))

(declare-fun m!632821 () Bool)

(assert (=> b!659903 m!632821))

(push 1)

(assert (not start!59776))

(assert (not b!659896))

(assert (not b!659902))

(assert (not b!659895))

(assert (not b!659898))

(assert (not b!659903))

(assert (not b!659901))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

