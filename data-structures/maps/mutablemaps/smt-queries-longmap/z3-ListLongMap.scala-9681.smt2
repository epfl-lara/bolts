; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114262 () Bool)

(assert start!114262)

(declare-fun b!1356857 () Bool)

(declare-fun res!901737 () Bool)

(declare-fun e!770194 () Bool)

(assert (=> b!1356857 (=> (not res!901737) (not e!770194))))

(declare-datatypes ((array!92367 0))(
  ( (array!92368 (arr!44627 (Array (_ BitVec 32) (_ BitVec 64))) (size!45178 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92367)

(declare-datatypes ((List!31848 0))(
  ( (Nil!31845) (Cons!31844 (h!33053 (_ BitVec 64)) (t!46513 List!31848)) )
))
(declare-fun arrayNoDuplicates!0 (array!92367 (_ BitVec 32) List!31848) Bool)

(assert (=> b!1356857 (= res!901737 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31845))))

(declare-fun b!1356858 () Bool)

(declare-fun res!901741 () Bool)

(assert (=> b!1356858 (=> (not res!901741) (not e!770194))))

(declare-fun acc!759 () List!31848)

(declare-fun contains!9413 (List!31848 (_ BitVec 64)) Bool)

(assert (=> b!1356858 (= res!901741 (not (contains!9413 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!901743 () Bool)

(assert (=> start!114262 (=> (not res!901743) (not e!770194))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114262 (= res!901743 (and (bvslt (size!45178 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45178 a!3742))))))

(assert (=> start!114262 e!770194))

(assert (=> start!114262 true))

(declare-fun array_inv!33572 (array!92367) Bool)

(assert (=> start!114262 (array_inv!33572 a!3742)))

(declare-fun b!1356859 () Bool)

(declare-fun res!901739 () Bool)

(assert (=> b!1356859 (=> (not res!901739) (not e!770194))))

(declare-fun noDuplicate!2292 (List!31848) Bool)

(assert (=> b!1356859 (= res!901739 (noDuplicate!2292 acc!759))))

(declare-fun b!1356860 () Bool)

(declare-fun res!901735 () Bool)

(assert (=> b!1356860 (=> (not res!901735) (not e!770194))))

(assert (=> b!1356860 (= res!901735 (not (contains!9413 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356861 () Bool)

(declare-fun res!901742 () Bool)

(assert (=> b!1356861 (=> (not res!901742) (not e!770194))))

(assert (=> b!1356861 (= res!901742 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45178 a!3742)))))

(declare-fun b!1356862 () Bool)

(assert (=> b!1356862 (= e!770194 (not true))))

(declare-fun subseq!804 (List!31848 List!31848) Bool)

(assert (=> b!1356862 (subseq!804 acc!759 acc!759)))

(declare-datatypes ((Unit!44587 0))(
  ( (Unit!44588) )
))
(declare-fun lt!599036 () Unit!44587)

(declare-fun lemmaListSubSeqRefl!0 (List!31848) Unit!44587)

(assert (=> b!1356862 (= lt!599036 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1356863 () Bool)

(declare-fun res!901740 () Bool)

(assert (=> b!1356863 (=> (not res!901740) (not e!770194))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356863 (= res!901740 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45178 a!3742))))))

(declare-fun b!1356864 () Bool)

(declare-fun res!901734 () Bool)

(assert (=> b!1356864 (=> (not res!901734) (not e!770194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356864 (= res!901734 (validKeyInArray!0 (select (arr!44627 a!3742) from!3120)))))

(declare-fun b!1356865 () Bool)

(declare-fun res!901738 () Bool)

(assert (=> b!1356865 (=> (not res!901738) (not e!770194))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1356865 (= res!901738 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356866 () Bool)

(declare-fun res!901736 () Bool)

(assert (=> b!1356866 (=> (not res!901736) (not e!770194))))

(assert (=> b!1356866 (= res!901736 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!114262 res!901743) b!1356859))

(assert (= (and b!1356859 res!901739) b!1356860))

(assert (= (and b!1356860 res!901735) b!1356858))

(assert (= (and b!1356858 res!901741) b!1356857))

(assert (= (and b!1356857 res!901737) b!1356866))

(assert (= (and b!1356866 res!901736) b!1356863))

(assert (= (and b!1356863 res!901740) b!1356865))

(assert (= (and b!1356865 res!901738) b!1356861))

(assert (= (and b!1356861 res!901742) b!1356864))

(assert (= (and b!1356864 res!901734) b!1356862))

(declare-fun m!1242761 () Bool)

(assert (=> b!1356860 m!1242761))

(declare-fun m!1242763 () Bool)

(assert (=> b!1356858 m!1242763))

(declare-fun m!1242765 () Bool)

(assert (=> start!114262 m!1242765))

(declare-fun m!1242767 () Bool)

(assert (=> b!1356859 m!1242767))

(declare-fun m!1242769 () Bool)

(assert (=> b!1356864 m!1242769))

(assert (=> b!1356864 m!1242769))

(declare-fun m!1242771 () Bool)

(assert (=> b!1356864 m!1242771))

(declare-fun m!1242773 () Bool)

(assert (=> b!1356857 m!1242773))

(declare-fun m!1242775 () Bool)

(assert (=> b!1356862 m!1242775))

(declare-fun m!1242777 () Bool)

(assert (=> b!1356862 m!1242777))

(declare-fun m!1242779 () Bool)

(assert (=> b!1356866 m!1242779))

(declare-fun m!1242781 () Bool)

(assert (=> b!1356865 m!1242781))

(check-sat (not b!1356858) (not b!1356865) (not b!1356862) (not b!1356859) (not start!114262) (not b!1356864) (not b!1356857) (not b!1356866) (not b!1356860))
(check-sat)
