; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60346 () Bool)

(assert start!60346)

(declare-fun b!677550 () Bool)

(declare-fun res!444165 () Bool)

(declare-fun e!386187 () Bool)

(assert (=> b!677550 (=> (not res!444165) (not e!386187))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!677550 (= res!444165 (validKeyInArray!0 k!2843))))

(declare-fun b!677551 () Bool)

(declare-fun e!386184 () Bool)

(declare-datatypes ((List!12957 0))(
  ( (Nil!12954) (Cons!12953 (h!13998 (_ BitVec 64)) (t!19193 List!12957)) )
))
(declare-fun acc!681 () List!12957)

(declare-fun contains!3500 (List!12957 (_ BitVec 64)) Bool)

(assert (=> b!677551 (= e!386184 (contains!3500 acc!681 k!2843))))

(declare-fun b!677552 () Bool)

(assert (=> b!677552 (= e!386187 (not true))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((array!39349 0))(
  ( (array!39350 (arr!18863 (Array (_ BitVec 32) (_ BitVec 64))) (size!19227 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39349)

(declare-fun arrayNoDuplicates!0 (array!39349 (_ BitVec 32) List!12957) Bool)

(assert (=> b!677552 (arrayNoDuplicates!0 (array!39350 (store (arr!18863 a!3626) i!1382 k!2843) (size!19227 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-datatypes ((Unit!23762 0))(
  ( (Unit!23763) )
))
(declare-fun lt!312780 () Unit!23762)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39349 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12957) Unit!23762)

(assert (=> b!677552 (= lt!312780 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677553 () Bool)

(declare-fun e!386190 () Bool)

(assert (=> b!677553 (= e!386190 (not (contains!3500 acc!681 k!2843)))))

(declare-fun b!677554 () Bool)

(declare-fun e!386189 () Bool)

(assert (=> b!677554 (= e!386189 (not (contains!3500 acc!681 k!2843)))))

(declare-fun b!677555 () Bool)

(declare-fun res!444156 () Bool)

(assert (=> b!677555 (=> (not res!444156) (not e!386187))))

(declare-fun noDuplicate!747 (List!12957) Bool)

(assert (=> b!677555 (= res!444156 (noDuplicate!747 acc!681))))

(declare-fun b!677556 () Bool)

(declare-fun e!386185 () Bool)

(assert (=> b!677556 (= e!386185 e!386189)))

(declare-fun res!444158 () Bool)

(assert (=> b!677556 (=> (not res!444158) (not e!386189))))

(assert (=> b!677556 (= res!444158 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677557 () Bool)

(declare-fun res!444161 () Bool)

(assert (=> b!677557 (=> (not res!444161) (not e!386187))))

(assert (=> b!677557 (= res!444161 (not (validKeyInArray!0 (select (arr!18863 a!3626) from!3004))))))

(declare-fun b!677558 () Bool)

(declare-fun res!444162 () Bool)

(assert (=> b!677558 (=> (not res!444162) (not e!386187))))

(assert (=> b!677558 (= res!444162 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677559 () Bool)

(declare-fun res!444159 () Bool)

(assert (=> b!677559 (=> (not res!444159) (not e!386187))))

(assert (=> b!677559 (= res!444159 (not (contains!3500 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677560 () Bool)

(declare-fun res!444157 () Bool)

(assert (=> b!677560 (=> (not res!444157) (not e!386187))))

(assert (=> b!677560 (= res!444157 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19227 a!3626))))))

(declare-fun res!444151 () Bool)

(assert (=> start!60346 (=> (not res!444151) (not e!386187))))

(assert (=> start!60346 (= res!444151 (and (bvslt (size!19227 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19227 a!3626))))))

(assert (=> start!60346 e!386187))

(assert (=> start!60346 true))

(declare-fun array_inv!14637 (array!39349) Bool)

(assert (=> start!60346 (array_inv!14637 a!3626)))

(declare-fun b!677561 () Bool)

(declare-fun e!386188 () Bool)

(assert (=> b!677561 (= e!386188 (contains!3500 acc!681 k!2843))))

(declare-fun b!677562 () Bool)

(declare-fun e!386191 () Bool)

(assert (=> b!677562 (= e!386191 e!386190)))

(declare-fun res!444167 () Bool)

(assert (=> b!677562 (=> (not res!444167) (not e!386190))))

(assert (=> b!677562 (= res!444167 (bvsle from!3004 i!1382))))

(declare-fun b!677563 () Bool)

(declare-fun res!444166 () Bool)

(assert (=> b!677563 (=> (not res!444166) (not e!386187))))

(assert (=> b!677563 (= res!444166 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19227 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!677564 () Bool)

(declare-fun res!444164 () Bool)

(assert (=> b!677564 (=> (not res!444164) (not e!386187))))

(assert (=> b!677564 (= res!444164 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12954))))

(declare-fun b!677565 () Bool)

(declare-fun res!444163 () Bool)

(assert (=> b!677565 (=> (not res!444163) (not e!386187))))

(assert (=> b!677565 (= res!444163 e!386191)))

(declare-fun res!444152 () Bool)

(assert (=> b!677565 (=> res!444152 e!386191)))

(assert (=> b!677565 (= res!444152 e!386188)))

(declare-fun res!444155 () Bool)

(assert (=> b!677565 (=> (not res!444155) (not e!386188))))

(assert (=> b!677565 (= res!444155 (bvsgt from!3004 i!1382))))

(declare-fun b!677566 () Bool)

(declare-fun res!444170 () Bool)

(assert (=> b!677566 (=> (not res!444170) (not e!386187))))

(assert (=> b!677566 (= res!444170 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!677567 () Bool)

(declare-fun res!444169 () Bool)

(assert (=> b!677567 (=> (not res!444169) (not e!386187))))

(assert (=> b!677567 (= res!444169 e!386185)))

(declare-fun res!444153 () Bool)

(assert (=> b!677567 (=> res!444153 e!386185)))

(assert (=> b!677567 (= res!444153 e!386184)))

(declare-fun res!444154 () Bool)

(assert (=> b!677567 (=> (not res!444154) (not e!386184))))

(assert (=> b!677567 (= res!444154 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677568 () Bool)

(declare-fun res!444160 () Bool)

(assert (=> b!677568 (=> (not res!444160) (not e!386187))))

(assert (=> b!677568 (= res!444160 (not (contains!3500 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677569 () Bool)

(declare-fun res!444168 () Bool)

(assert (=> b!677569 (=> (not res!444168) (not e!386187))))

(assert (=> b!677569 (= res!444168 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677570 () Bool)

(declare-fun res!444150 () Bool)

(assert (=> b!677570 (=> (not res!444150) (not e!386187))))

(declare-fun arrayContainsKey!0 (array!39349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!677570 (= res!444150 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!60346 res!444151) b!677555))

(assert (= (and b!677555 res!444156) b!677559))

(assert (= (and b!677559 res!444159) b!677568))

(assert (= (and b!677568 res!444160) b!677565))

(assert (= (and b!677565 res!444155) b!677561))

(assert (= (and b!677565 (not res!444152)) b!677562))

(assert (= (and b!677562 res!444167) b!677553))

(assert (= (and b!677565 res!444163) b!677564))

(assert (= (and b!677564 res!444164) b!677569))

(assert (= (and b!677569 res!444168) b!677560))

(assert (= (and b!677560 res!444157) b!677550))

(assert (= (and b!677550 res!444165) b!677570))

(assert (= (and b!677570 res!444150) b!677563))

(assert (= (and b!677563 res!444166) b!677557))

(assert (= (and b!677557 res!444161) b!677566))

(assert (= (and b!677566 res!444170) b!677567))

(assert (= (and b!677567 res!444154) b!677551))

(assert (= (and b!677567 (not res!444153)) b!677556))

(assert (= (and b!677556 res!444158) b!677554))

(assert (= (and b!677567 res!444169) b!677558))

(assert (= (and b!677558 res!444162) b!677552))

(declare-fun m!643731 () Bool)

(assert (=> b!677550 m!643731))

(declare-fun m!643733 () Bool)

(assert (=> b!677551 m!643733))

(assert (=> b!677553 m!643733))

(declare-fun m!643735 () Bool)

(assert (=> b!677570 m!643735))

(declare-fun m!643737 () Bool)

(assert (=> b!677557 m!643737))

(assert (=> b!677557 m!643737))

(declare-fun m!643739 () Bool)

(assert (=> b!677557 m!643739))

(declare-fun m!643741 () Bool)

(assert (=> b!677555 m!643741))

(declare-fun m!643743 () Bool)

(assert (=> b!677568 m!643743))

(assert (=> b!677554 m!643733))

(declare-fun m!643745 () Bool)

(assert (=> b!677559 m!643745))

(declare-fun m!643747 () Bool)

(assert (=> b!677558 m!643747))

(declare-fun m!643749 () Bool)

(assert (=> b!677552 m!643749))

(declare-fun m!643751 () Bool)

(assert (=> b!677552 m!643751))

(declare-fun m!643753 () Bool)

(assert (=> b!677552 m!643753))

(declare-fun m!643755 () Bool)

(assert (=> start!60346 m!643755))

(assert (=> b!677561 m!643733))

(declare-fun m!643757 () Bool)

(assert (=> b!677569 m!643757))

(declare-fun m!643759 () Bool)

(assert (=> b!677564 m!643759))

(push 1)

(assert (not b!677558))

(assert (not b!677559))

(assert (not b!677550))

(assert (not b!677569))

(assert (not b!677551))

(assert (not b!677561))

(assert (not start!60346))

(assert (not b!677564))

(assert (not b!677555))

(assert (not b!677568))

(assert (not b!677552))

(assert (not b!677554))

(assert (not b!677557))

(assert (not b!677553))

(assert (not b!677570))

(check-sat)

(pop 1)

