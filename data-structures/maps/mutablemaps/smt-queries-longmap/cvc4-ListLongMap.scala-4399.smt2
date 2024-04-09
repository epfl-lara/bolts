; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60514 () Bool)

(assert start!60514)

(declare-fun b!679765 () Bool)

(declare-fun res!446260 () Bool)

(declare-fun e!387231 () Bool)

(assert (=> b!679765 (=> (not res!446260) (not e!387231))))

(declare-datatypes ((array!39451 0))(
  ( (array!39452 (arr!18911 (Array (_ BitVec 32) (_ BitVec 64))) (size!19275 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39451)

(declare-datatypes ((List!13005 0))(
  ( (Nil!13002) (Cons!13001 (h!14046 (_ BitVec 64)) (t!19241 List!13005)) )
))
(declare-fun arrayNoDuplicates!0 (array!39451 (_ BitVec 32) List!13005) Bool)

(assert (=> b!679765 (= res!446260 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13002))))

(declare-fun b!679766 () Bool)

(declare-datatypes ((Unit!23814 0))(
  ( (Unit!23815) )
))
(declare-fun e!387233 () Unit!23814)

(declare-fun Unit!23816 () Unit!23814)

(assert (=> b!679766 (= e!387233 Unit!23816)))

(declare-fun lt!312944 () Unit!23814)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39451 (_ BitVec 64) (_ BitVec 32)) Unit!23814)

(assert (=> b!679766 (= lt!312944 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!679766 false))

(declare-fun b!679767 () Bool)

(declare-fun res!446259 () Bool)

(assert (=> b!679767 (=> (not res!446259) (not e!387231))))

(declare-fun arrayContainsKey!0 (array!39451 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679767 (= res!446259 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!679768 () Bool)

(declare-fun res!446250 () Bool)

(assert (=> b!679768 (=> (not res!446250) (not e!387231))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!679768 (= res!446250 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19275 a!3626))))))

(declare-fun b!679769 () Bool)

(declare-fun e!387235 () Bool)

(assert (=> b!679769 (= e!387235 true)))

(declare-fun acc!681 () List!13005)

(declare-fun subseq!133 (List!13005 List!13005) Bool)

(assert (=> b!679769 (subseq!133 acc!681 acc!681)))

(declare-fun lt!312945 () Unit!23814)

(declare-fun lemmaListSubSeqRefl!0 (List!13005) Unit!23814)

(assert (=> b!679769 (= lt!312945 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!679770 () Bool)

(declare-fun e!387230 () Bool)

(declare-fun e!387234 () Bool)

(assert (=> b!679770 (= e!387230 e!387234)))

(declare-fun res!446253 () Bool)

(assert (=> b!679770 (=> (not res!446253) (not e!387234))))

(assert (=> b!679770 (= res!446253 (bvsle from!3004 i!1382))))

(declare-fun b!679771 () Bool)

(declare-fun res!446254 () Bool)

(assert (=> b!679771 (=> (not res!446254) (not e!387231))))

(declare-fun contains!3548 (List!13005 (_ BitVec 64)) Bool)

(assert (=> b!679771 (= res!446254 (not (contains!3548 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679772 () Bool)

(declare-fun res!446248 () Bool)

(assert (=> b!679772 (=> (not res!446248) (not e!387231))))

(assert (=> b!679772 (= res!446248 e!387230)))

(declare-fun res!446255 () Bool)

(assert (=> b!679772 (=> res!446255 e!387230)))

(declare-fun e!387232 () Bool)

(assert (=> b!679772 (= res!446255 e!387232)))

(declare-fun res!446249 () Bool)

(assert (=> b!679772 (=> (not res!446249) (not e!387232))))

(assert (=> b!679772 (= res!446249 (bvsgt from!3004 i!1382))))

(declare-fun b!679773 () Bool)

(assert (=> b!679773 (= e!387234 (not (contains!3548 acc!681 k!2843)))))

(declare-fun b!679774 () Bool)

(assert (=> b!679774 (= e!387231 (not e!387235))))

(declare-fun res!446247 () Bool)

(assert (=> b!679774 (=> res!446247 e!387235)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679774 (= res!446247 (not (validKeyInArray!0 (select (arr!18911 a!3626) from!3004))))))

(declare-fun lt!312943 () Unit!23814)

(assert (=> b!679774 (= lt!312943 e!387233)))

(declare-fun c!77126 () Bool)

(assert (=> b!679774 (= c!77126 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!679774 (arrayContainsKey!0 (array!39452 (store (arr!18911 a!3626) i!1382 k!2843) (size!19275 a!3626)) k!2843 from!3004)))

(declare-fun b!679775 () Bool)

(declare-fun res!446256 () Bool)

(assert (=> b!679775 (=> (not res!446256) (not e!387231))))

(assert (=> b!679775 (= res!446256 (validKeyInArray!0 k!2843))))

(declare-fun b!679776 () Bool)

(declare-fun res!446257 () Bool)

(assert (=> b!679776 (=> (not res!446257) (not e!387231))))

(assert (=> b!679776 (= res!446257 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!679777 () Bool)

(declare-fun res!446258 () Bool)

(assert (=> b!679777 (=> (not res!446258) (not e!387231))))

(assert (=> b!679777 (= res!446258 (not (contains!3548 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679778 () Bool)

(assert (=> b!679778 (= e!387232 (contains!3548 acc!681 k!2843))))

(declare-fun b!679779 () Bool)

(declare-fun res!446252 () Bool)

(assert (=> b!679779 (=> (not res!446252) (not e!387231))))

(assert (=> b!679779 (= res!446252 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19275 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679780 () Bool)

(declare-fun res!446251 () Bool)

(assert (=> b!679780 (=> (not res!446251) (not e!387231))))

(declare-fun noDuplicate!795 (List!13005) Bool)

(assert (=> b!679780 (= res!446251 (noDuplicate!795 acc!681))))

(declare-fun b!679781 () Bool)

(declare-fun Unit!23817 () Unit!23814)

(assert (=> b!679781 (= e!387233 Unit!23817)))

(declare-fun res!446261 () Bool)

(assert (=> start!60514 (=> (not res!446261) (not e!387231))))

(assert (=> start!60514 (= res!446261 (and (bvslt (size!19275 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19275 a!3626))))))

(assert (=> start!60514 e!387231))

(assert (=> start!60514 true))

(declare-fun array_inv!14685 (array!39451) Bool)

(assert (=> start!60514 (array_inv!14685 a!3626)))

(assert (= (and start!60514 res!446261) b!679780))

(assert (= (and b!679780 res!446251) b!679777))

(assert (= (and b!679777 res!446258) b!679771))

(assert (= (and b!679771 res!446254) b!679772))

(assert (= (and b!679772 res!446249) b!679778))

(assert (= (and b!679772 (not res!446255)) b!679770))

(assert (= (and b!679770 res!446253) b!679773))

(assert (= (and b!679772 res!446248) b!679765))

(assert (= (and b!679765 res!446260) b!679776))

(assert (= (and b!679776 res!446257) b!679768))

(assert (= (and b!679768 res!446250) b!679775))

(assert (= (and b!679775 res!446256) b!679767))

(assert (= (and b!679767 res!446259) b!679779))

(assert (= (and b!679779 res!446252) b!679774))

(assert (= (and b!679774 c!77126) b!679766))

(assert (= (and b!679774 (not c!77126)) b!679781))

(assert (= (and b!679774 (not res!446247)) b!679769))

(declare-fun m!645041 () Bool)

(assert (=> b!679776 m!645041))

(declare-fun m!645043 () Bool)

(assert (=> b!679766 m!645043))

(declare-fun m!645045 () Bool)

(assert (=> b!679775 m!645045))

(declare-fun m!645047 () Bool)

(assert (=> b!679765 m!645047))

(declare-fun m!645049 () Bool)

(assert (=> b!679771 m!645049))

(declare-fun m!645051 () Bool)

(assert (=> start!60514 m!645051))

(declare-fun m!645053 () Bool)

(assert (=> b!679773 m!645053))

(declare-fun m!645055 () Bool)

(assert (=> b!679774 m!645055))

(declare-fun m!645057 () Bool)

(assert (=> b!679774 m!645057))

(declare-fun m!645059 () Bool)

(assert (=> b!679774 m!645059))

(assert (=> b!679774 m!645055))

(declare-fun m!645061 () Bool)

(assert (=> b!679774 m!645061))

(declare-fun m!645063 () Bool)

(assert (=> b!679774 m!645063))

(declare-fun m!645065 () Bool)

(assert (=> b!679769 m!645065))

(declare-fun m!645067 () Bool)

(assert (=> b!679769 m!645067))

(declare-fun m!645069 () Bool)

(assert (=> b!679777 m!645069))

(declare-fun m!645071 () Bool)

(assert (=> b!679780 m!645071))

(assert (=> b!679778 m!645053))

(declare-fun m!645073 () Bool)

(assert (=> b!679767 m!645073))

(push 1)

(assert (not b!679774))

(assert (not b!679777))

(assert (not b!679780))

(assert (not b!679769))

(assert (not b!679766))

(assert (not b!679767))

(assert (not b!679771))

(assert (not b!679778))

(assert (not b!679765))

(assert (not b!679776))

(assert (not b!679775))

(assert (not b!679773))

(assert (not start!60514))

