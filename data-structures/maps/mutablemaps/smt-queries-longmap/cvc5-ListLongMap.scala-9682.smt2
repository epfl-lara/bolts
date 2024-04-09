; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114266 () Bool)

(assert start!114266)

(declare-fun b!1356917 () Bool)

(declare-fun e!770205 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1356917 (= e!770205 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!31850 0))(
  ( (Nil!31847) (Cons!31846 (h!33055 (_ BitVec 64)) (t!46515 List!31850)) )
))
(declare-fun acc!759 () List!31850)

(declare-fun subseq!806 (List!31850 List!31850) Bool)

(assert (=> b!1356917 (subseq!806 acc!759 acc!759)))

(declare-datatypes ((Unit!44591 0))(
  ( (Unit!44592) )
))
(declare-fun lt!599042 () Unit!44591)

(declare-fun lemmaListSubSeqRefl!0 (List!31850) Unit!44591)

(assert (=> b!1356917 (= lt!599042 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1356918 () Bool)

(declare-fun res!901800 () Bool)

(assert (=> b!1356918 (=> (not res!901800) (not e!770205))))

(declare-fun contains!9415 (List!31850 (_ BitVec 64)) Bool)

(assert (=> b!1356918 (= res!901800 (not (contains!9415 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356919 () Bool)

(declare-fun res!901798 () Bool)

(assert (=> b!1356919 (=> (not res!901798) (not e!770205))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356919 (= res!901798 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356920 () Bool)

(declare-fun res!901803 () Bool)

(assert (=> b!1356920 (=> (not res!901803) (not e!770205))))

(declare-datatypes ((array!92371 0))(
  ( (array!92372 (arr!44629 (Array (_ BitVec 32) (_ BitVec 64))) (size!45180 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92371)

(assert (=> b!1356920 (= res!901803 (validKeyInArray!0 (select (arr!44629 a!3742) from!3120)))))

(declare-fun b!1356922 () Bool)

(declare-fun res!901799 () Bool)

(assert (=> b!1356922 (=> (not res!901799) (not e!770205))))

(declare-fun arrayNoDuplicates!0 (array!92371 (_ BitVec 32) List!31850) Bool)

(assert (=> b!1356922 (= res!901799 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31847))))

(declare-fun b!1356923 () Bool)

(declare-fun res!901801 () Bool)

(assert (=> b!1356923 (=> (not res!901801) (not e!770205))))

(assert (=> b!1356923 (= res!901801 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45180 a!3742)))))

(declare-fun b!1356924 () Bool)

(declare-fun res!901795 () Bool)

(assert (=> b!1356924 (=> (not res!901795) (not e!770205))))

(declare-fun noDuplicate!2294 (List!31850) Bool)

(assert (=> b!1356924 (= res!901795 (noDuplicate!2294 acc!759))))

(declare-fun b!1356925 () Bool)

(declare-fun res!901797 () Bool)

(assert (=> b!1356925 (=> (not res!901797) (not e!770205))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356925 (= res!901797 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45180 a!3742))))))

(declare-fun b!1356926 () Bool)

(declare-fun res!901802 () Bool)

(assert (=> b!1356926 (=> (not res!901802) (not e!770205))))

(assert (=> b!1356926 (= res!901802 (not (contains!9415 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!901794 () Bool)

(assert (=> start!114266 (=> (not res!901794) (not e!770205))))

(assert (=> start!114266 (= res!901794 (and (bvslt (size!45180 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45180 a!3742))))))

(assert (=> start!114266 e!770205))

(assert (=> start!114266 true))

(declare-fun array_inv!33574 (array!92371) Bool)

(assert (=> start!114266 (array_inv!33574 a!3742)))

(declare-fun b!1356921 () Bool)

(declare-fun res!901796 () Bool)

(assert (=> b!1356921 (=> (not res!901796) (not e!770205))))

(assert (=> b!1356921 (= res!901796 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!114266 res!901794) b!1356924))

(assert (= (and b!1356924 res!901795) b!1356926))

(assert (= (and b!1356926 res!901802) b!1356918))

(assert (= (and b!1356918 res!901800) b!1356922))

(assert (= (and b!1356922 res!901799) b!1356921))

(assert (= (and b!1356921 res!901796) b!1356925))

(assert (= (and b!1356925 res!901797) b!1356919))

(assert (= (and b!1356919 res!901798) b!1356923))

(assert (= (and b!1356923 res!901801) b!1356920))

(assert (= (and b!1356920 res!901803) b!1356917))

(declare-fun m!1242805 () Bool)

(assert (=> b!1356922 m!1242805))

(declare-fun m!1242807 () Bool)

(assert (=> b!1356918 m!1242807))

(declare-fun m!1242809 () Bool)

(assert (=> b!1356920 m!1242809))

(assert (=> b!1356920 m!1242809))

(declare-fun m!1242811 () Bool)

(assert (=> b!1356920 m!1242811))

(declare-fun m!1242813 () Bool)

(assert (=> b!1356924 m!1242813))

(declare-fun m!1242815 () Bool)

(assert (=> start!114266 m!1242815))

(declare-fun m!1242817 () Bool)

(assert (=> b!1356919 m!1242817))

(declare-fun m!1242819 () Bool)

(assert (=> b!1356926 m!1242819))

(declare-fun m!1242821 () Bool)

(assert (=> b!1356917 m!1242821))

(declare-fun m!1242823 () Bool)

(assert (=> b!1356917 m!1242823))

(declare-fun m!1242825 () Bool)

(assert (=> b!1356921 m!1242825))

(push 1)

