; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114272 () Bool)

(assert start!114272)

(declare-fun b!1357007 () Bool)

(declare-fun res!901893 () Bool)

(declare-fun e!770223 () Bool)

(assert (=> b!1357007 (=> (not res!901893) (not e!770223))))

(declare-datatypes ((List!31853 0))(
  ( (Nil!31850) (Cons!31849 (h!33058 (_ BitVec 64)) (t!46518 List!31853)) )
))
(declare-fun acc!759 () List!31853)

(declare-datatypes ((array!92377 0))(
  ( (array!92378 (arr!44632 (Array (_ BitVec 32) (_ BitVec 64))) (size!45183 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92377)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92377 (_ BitVec 32) List!31853) Bool)

(assert (=> b!1357007 (= res!901893 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!901892 () Bool)

(assert (=> start!114272 (=> (not res!901892) (not e!770223))))

(assert (=> start!114272 (= res!901892 (and (bvslt (size!45183 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45183 a!3742))))))

(assert (=> start!114272 e!770223))

(assert (=> start!114272 true))

(declare-fun array_inv!33577 (array!92377) Bool)

(assert (=> start!114272 (array_inv!33577 a!3742)))

(declare-fun b!1357008 () Bool)

(assert (=> b!1357008 (= e!770223 (not true))))

(declare-fun subseq!809 (List!31853 List!31853) Bool)

(assert (=> b!1357008 (subseq!809 acc!759 acc!759)))

(declare-datatypes ((Unit!44597 0))(
  ( (Unit!44598) )
))
(declare-fun lt!599051 () Unit!44597)

(declare-fun lemmaListSubSeqRefl!0 (List!31853) Unit!44597)

(assert (=> b!1357008 (= lt!599051 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1357009 () Bool)

(declare-fun res!901890 () Bool)

(assert (=> b!1357009 (=> (not res!901890) (not e!770223))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1357009 (= res!901890 (validKeyInArray!0 (select (arr!44632 a!3742) from!3120)))))

(declare-fun b!1357010 () Bool)

(declare-fun res!901885 () Bool)

(assert (=> b!1357010 (=> (not res!901885) (not e!770223))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1357010 (= res!901885 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45183 a!3742))))))

(declare-fun b!1357011 () Bool)

(declare-fun res!901887 () Bool)

(assert (=> b!1357011 (=> (not res!901887) (not e!770223))))

(assert (=> b!1357011 (= res!901887 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45183 a!3742)))))

(declare-fun b!1357012 () Bool)

(declare-fun res!901888 () Bool)

(assert (=> b!1357012 (=> (not res!901888) (not e!770223))))

(declare-fun contains!9418 (List!31853 (_ BitVec 64)) Bool)

(assert (=> b!1357012 (= res!901888 (not (contains!9418 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357013 () Bool)

(declare-fun res!901886 () Bool)

(assert (=> b!1357013 (=> (not res!901886) (not e!770223))))

(declare-fun noDuplicate!2297 (List!31853) Bool)

(assert (=> b!1357013 (= res!901886 (noDuplicate!2297 acc!759))))

(declare-fun b!1357014 () Bool)

(declare-fun res!901891 () Bool)

(assert (=> b!1357014 (=> (not res!901891) (not e!770223))))

(assert (=> b!1357014 (= res!901891 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31850))))

(declare-fun b!1357015 () Bool)

(declare-fun res!901884 () Bool)

(assert (=> b!1357015 (=> (not res!901884) (not e!770223))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1357015 (= res!901884 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1357016 () Bool)

(declare-fun res!901889 () Bool)

(assert (=> b!1357016 (=> (not res!901889) (not e!770223))))

(assert (=> b!1357016 (= res!901889 (not (contains!9418 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114272 res!901892) b!1357013))

(assert (= (and b!1357013 res!901886) b!1357016))

(assert (= (and b!1357016 res!901889) b!1357012))

(assert (= (and b!1357012 res!901888) b!1357014))

(assert (= (and b!1357014 res!901891) b!1357007))

(assert (= (and b!1357007 res!901893) b!1357010))

(assert (= (and b!1357010 res!901885) b!1357015))

(assert (= (and b!1357015 res!901884) b!1357011))

(assert (= (and b!1357011 res!901887) b!1357009))

(assert (= (and b!1357009 res!901890) b!1357008))

(declare-fun m!1242871 () Bool)

(assert (=> b!1357014 m!1242871))

(declare-fun m!1242873 () Bool)

(assert (=> start!114272 m!1242873))

(declare-fun m!1242875 () Bool)

(assert (=> b!1357007 m!1242875))

(declare-fun m!1242877 () Bool)

(assert (=> b!1357015 m!1242877))

(declare-fun m!1242879 () Bool)

(assert (=> b!1357009 m!1242879))

(assert (=> b!1357009 m!1242879))

(declare-fun m!1242881 () Bool)

(assert (=> b!1357009 m!1242881))

(declare-fun m!1242883 () Bool)

(assert (=> b!1357008 m!1242883))

(declare-fun m!1242885 () Bool)

(assert (=> b!1357008 m!1242885))

(declare-fun m!1242887 () Bool)

(assert (=> b!1357012 m!1242887))

(declare-fun m!1242889 () Bool)

(assert (=> b!1357016 m!1242889))

(declare-fun m!1242891 () Bool)

(assert (=> b!1357013 m!1242891))

(push 1)

(assert (not start!114272))

(assert (not b!1357013))

(assert (not b!1357016))

(assert (not b!1357012))

(assert (not b!1357008))

(assert (not b!1357015))

(assert (not b!1357014))

(assert (not b!1357007))

(assert (not b!1357009))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

