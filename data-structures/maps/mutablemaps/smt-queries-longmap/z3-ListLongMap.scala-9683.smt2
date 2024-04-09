; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114274 () Bool)

(assert start!114274)

(declare-fun b!1357037 () Bool)

(declare-fun res!901916 () Bool)

(declare-fun e!770230 () Bool)

(assert (=> b!1357037 (=> (not res!901916) (not e!770230))))

(declare-datatypes ((List!31854 0))(
  ( (Nil!31851) (Cons!31850 (h!33059 (_ BitVec 64)) (t!46519 List!31854)) )
))
(declare-fun acc!759 () List!31854)

(declare-fun noDuplicate!2298 (List!31854) Bool)

(assert (=> b!1357037 (= res!901916 (noDuplicate!2298 acc!759))))

(declare-fun b!1357038 () Bool)

(assert (=> b!1357038 (= e!770230 (not true))))

(declare-fun subseq!810 (List!31854 List!31854) Bool)

(assert (=> b!1357038 (subseq!810 acc!759 acc!759)))

(declare-datatypes ((Unit!44599 0))(
  ( (Unit!44600) )
))
(declare-fun lt!599054 () Unit!44599)

(declare-fun lemmaListSubSeqRefl!0 (List!31854) Unit!44599)

(assert (=> b!1357038 (= lt!599054 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1357039 () Bool)

(declare-fun res!901919 () Bool)

(assert (=> b!1357039 (=> (not res!901919) (not e!770230))))

(declare-datatypes ((array!92379 0))(
  ( (array!92380 (arr!44633 (Array (_ BitVec 32) (_ BitVec 64))) (size!45184 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92379)

(declare-fun arrayNoDuplicates!0 (array!92379 (_ BitVec 32) List!31854) Bool)

(assert (=> b!1357039 (= res!901919 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31851))))

(declare-fun b!1357040 () Bool)

(declare-fun res!901914 () Bool)

(assert (=> b!1357040 (=> (not res!901914) (not e!770230))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1357040 (= res!901914 (validKeyInArray!0 (select (arr!44633 a!3742) from!3120)))))

(declare-fun b!1357041 () Bool)

(declare-fun res!901920 () Bool)

(assert (=> b!1357041 (=> (not res!901920) (not e!770230))))

(assert (=> b!1357041 (= res!901920 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!901922 () Bool)

(assert (=> start!114274 (=> (not res!901922) (not e!770230))))

(assert (=> start!114274 (= res!901922 (and (bvslt (size!45184 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45184 a!3742))))))

(assert (=> start!114274 e!770230))

(assert (=> start!114274 true))

(declare-fun array_inv!33578 (array!92379) Bool)

(assert (=> start!114274 (array_inv!33578 a!3742)))

(declare-fun b!1357042 () Bool)

(declare-fun res!901918 () Bool)

(assert (=> b!1357042 (=> (not res!901918) (not e!770230))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1357042 (= res!901918 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1357043 () Bool)

(declare-fun res!901917 () Bool)

(assert (=> b!1357043 (=> (not res!901917) (not e!770230))))

(declare-fun contains!9419 (List!31854 (_ BitVec 64)) Bool)

(assert (=> b!1357043 (= res!901917 (not (contains!9419 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357044 () Bool)

(declare-fun res!901915 () Bool)

(assert (=> b!1357044 (=> (not res!901915) (not e!770230))))

(assert (=> b!1357044 (= res!901915 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45184 a!3742)))))

(declare-fun b!1357045 () Bool)

(declare-fun res!901921 () Bool)

(assert (=> b!1357045 (=> (not res!901921) (not e!770230))))

(assert (=> b!1357045 (= res!901921 (not (contains!9419 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357046 () Bool)

(declare-fun res!901923 () Bool)

(assert (=> b!1357046 (=> (not res!901923) (not e!770230))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1357046 (= res!901923 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45184 a!3742))))))

(assert (= (and start!114274 res!901922) b!1357037))

(assert (= (and b!1357037 res!901916) b!1357043))

(assert (= (and b!1357043 res!901917) b!1357045))

(assert (= (and b!1357045 res!901921) b!1357039))

(assert (= (and b!1357039 res!901919) b!1357041))

(assert (= (and b!1357041 res!901920) b!1357046))

(assert (= (and b!1357046 res!901923) b!1357042))

(assert (= (and b!1357042 res!901918) b!1357044))

(assert (= (and b!1357044 res!901915) b!1357040))

(assert (= (and b!1357040 res!901914) b!1357038))

(declare-fun m!1242893 () Bool)

(assert (=> b!1357043 m!1242893))

(declare-fun m!1242895 () Bool)

(assert (=> b!1357041 m!1242895))

(declare-fun m!1242897 () Bool)

(assert (=> start!114274 m!1242897))

(declare-fun m!1242899 () Bool)

(assert (=> b!1357039 m!1242899))

(declare-fun m!1242901 () Bool)

(assert (=> b!1357045 m!1242901))

(declare-fun m!1242903 () Bool)

(assert (=> b!1357042 m!1242903))

(declare-fun m!1242905 () Bool)

(assert (=> b!1357038 m!1242905))

(declare-fun m!1242907 () Bool)

(assert (=> b!1357038 m!1242907))

(declare-fun m!1242909 () Bool)

(assert (=> b!1357040 m!1242909))

(assert (=> b!1357040 m!1242909))

(declare-fun m!1242911 () Bool)

(assert (=> b!1357040 m!1242911))

(declare-fun m!1242913 () Bool)

(assert (=> b!1357037 m!1242913))

(check-sat (not start!114274) (not b!1357043) (not b!1357045) (not b!1357037) (not b!1357038) (not b!1357040) (not b!1357042) (not b!1357041) (not b!1357039))
