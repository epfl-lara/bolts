; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60348 () Bool)

(assert start!60348)

(declare-fun b!677597 () Bool)

(declare-fun res!444201 () Bool)

(declare-fun e!386206 () Bool)

(assert (=> b!677597 (=> (not res!444201) (not e!386206))))

(declare-datatypes ((array!39351 0))(
  ( (array!39352 (arr!18864 (Array (_ BitVec 32) (_ BitVec 64))) (size!19228 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39351)

(declare-datatypes ((List!12958 0))(
  ( (Nil!12955) (Cons!12954 (h!13999 (_ BitVec 64)) (t!19194 List!12958)) )
))
(declare-fun arrayNoDuplicates!0 (array!39351 (_ BitVec 32) List!12958) Bool)

(assert (=> b!677597 (= res!444201 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12955))))

(declare-fun b!677598 () Bool)

(declare-fun res!444204 () Bool)

(assert (=> b!677598 (=> (not res!444204) (not e!386206))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!677598 (= res!444204 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!677599 () Bool)

(declare-fun res!444207 () Bool)

(assert (=> b!677599 (=> (not res!444207) (not e!386206))))

(declare-fun acc!681 () List!12958)

(declare-fun contains!3501 (List!12958 (_ BitVec 64)) Bool)

(assert (=> b!677599 (= res!444207 (not (contains!3501 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!444200 () Bool)

(assert (=> start!60348 (=> (not res!444200) (not e!386206))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60348 (= res!444200 (and (bvslt (size!19228 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19228 a!3626))))))

(assert (=> start!60348 e!386206))

(assert (=> start!60348 true))

(declare-fun array_inv!14638 (array!39351) Bool)

(assert (=> start!60348 (array_inv!14638 a!3626)))

(declare-fun b!677600 () Bool)

(declare-fun res!444203 () Bool)

(assert (=> b!677600 (=> (not res!444203) (not e!386206))))

(assert (=> b!677600 (= res!444203 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677601 () Bool)

(declare-fun e!386202 () Bool)

(assert (=> b!677601 (= e!386202 (contains!3501 acc!681 k!2843))))

(declare-fun b!677602 () Bool)

(declare-fun e!386204 () Bool)

(declare-fun e!386205 () Bool)

(assert (=> b!677602 (= e!386204 e!386205)))

(declare-fun res!444209 () Bool)

(assert (=> b!677602 (=> (not res!444209) (not e!386205))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677602 (= res!444209 (bvsle from!3004 i!1382))))

(declare-fun b!677603 () Bool)

(assert (=> b!677603 (= e!386205 (not (contains!3501 acc!681 k!2843)))))

(declare-fun b!677604 () Bool)

(assert (=> b!677604 (= e!386206 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19228 a!3626)) (bvsgt from!3004 (size!19228 a!3626))))))

(declare-fun b!677605 () Bool)

(declare-fun res!444202 () Bool)

(assert (=> b!677605 (=> (not res!444202) (not e!386206))))

(assert (=> b!677605 (= res!444202 (not (contains!3501 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677606 () Bool)

(declare-fun res!444198 () Bool)

(assert (=> b!677606 (=> (not res!444198) (not e!386206))))

(assert (=> b!677606 (= res!444198 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19228 a!3626))))))

(declare-fun b!677607 () Bool)

(declare-fun res!444197 () Bool)

(assert (=> b!677607 (=> (not res!444197) (not e!386206))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!677607 (= res!444197 (validKeyInArray!0 k!2843))))

(declare-fun b!677608 () Bool)

(declare-fun res!444199 () Bool)

(assert (=> b!677608 (=> (not res!444199) (not e!386206))))

(assert (=> b!677608 (= res!444199 e!386204)))

(declare-fun res!444205 () Bool)

(assert (=> b!677608 (=> res!444205 e!386204)))

(assert (=> b!677608 (= res!444205 e!386202)))

(declare-fun res!444206 () Bool)

(assert (=> b!677608 (=> (not res!444206) (not e!386202))))

(assert (=> b!677608 (= res!444206 (bvsgt from!3004 i!1382))))

(declare-fun b!677609 () Bool)

(declare-fun res!444208 () Bool)

(assert (=> b!677609 (=> (not res!444208) (not e!386206))))

(declare-fun noDuplicate!748 (List!12958) Bool)

(assert (=> b!677609 (= res!444208 (noDuplicate!748 acc!681))))

(assert (= (and start!60348 res!444200) b!677609))

(assert (= (and b!677609 res!444208) b!677605))

(assert (= (and b!677605 res!444202) b!677599))

(assert (= (and b!677599 res!444207) b!677608))

(assert (= (and b!677608 res!444206) b!677601))

(assert (= (and b!677608 (not res!444205)) b!677602))

(assert (= (and b!677602 res!444209) b!677603))

(assert (= (and b!677608 res!444199) b!677597))

(assert (= (and b!677597 res!444201) b!677600))

(assert (= (and b!677600 res!444203) b!677606))

(assert (= (and b!677606 res!444198) b!677607))

(assert (= (and b!677607 res!444197) b!677598))

(assert (= (and b!677598 res!444204) b!677604))

(declare-fun m!643761 () Bool)

(assert (=> b!677607 m!643761))

(declare-fun m!643763 () Bool)

(assert (=> b!677597 m!643763))

(declare-fun m!643765 () Bool)

(assert (=> b!677603 m!643765))

(declare-fun m!643767 () Bool)

(assert (=> start!60348 m!643767))

(declare-fun m!643769 () Bool)

(assert (=> b!677598 m!643769))

(declare-fun m!643771 () Bool)

(assert (=> b!677609 m!643771))

(declare-fun m!643773 () Bool)

(assert (=> b!677605 m!643773))

(assert (=> b!677601 m!643765))

(declare-fun m!643775 () Bool)

(assert (=> b!677599 m!643775))

(declare-fun m!643777 () Bool)

(assert (=> b!677600 m!643777))

(push 1)

(assert (not b!677601))

(assert (not b!677599))

(assert (not b!677609))

(assert (not start!60348))

(assert (not b!677600))

(assert (not b!677603))

(assert (not b!677597))

(assert (not b!677598))

(assert (not b!677607))

(assert (not b!677605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

