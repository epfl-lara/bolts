; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62532 () Bool)

(assert start!62532)

(declare-fun b!703924 () Bool)

(declare-fun res!467919 () Bool)

(declare-fun e!397576 () Bool)

(assert (=> b!703924 (=> (not res!467919) (not e!397576))))

(declare-datatypes ((List!13330 0))(
  ( (Nil!13327) (Cons!13326 (h!14371 (_ BitVec 64)) (t!19620 List!13330)) )
))
(declare-fun acc!652 () List!13330)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3873 (List!13330 (_ BitVec 64)) Bool)

(assert (=> b!703924 (= res!467919 (not (contains!3873 acc!652 k!2824)))))

(declare-fun b!703925 () Bool)

(declare-fun res!467923 () Bool)

(assert (=> b!703925 (=> (not res!467923) (not e!397576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703925 (= res!467923 (validKeyInArray!0 k!2824))))

(declare-fun b!703926 () Bool)

(declare-fun res!467915 () Bool)

(assert (=> b!703926 (=> (not res!467915) (not e!397576))))

(declare-fun newAcc!49 () List!13330)

(assert (=> b!703926 (= res!467915 (contains!3873 newAcc!49 k!2824))))

(declare-fun b!703927 () Bool)

(declare-fun res!467912 () Bool)

(assert (=> b!703927 (=> (not res!467912) (not e!397576))))

(declare-datatypes ((array!40167 0))(
  ( (array!40168 (arr!19236 (Array (_ BitVec 32) (_ BitVec 64))) (size!19619 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40167)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703927 (= res!467912 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!703928 () Bool)

(declare-fun res!467922 () Bool)

(assert (=> b!703928 (=> (not res!467922) (not e!397576))))

(declare-fun arrayNoDuplicates!0 (array!40167 (_ BitVec 32) List!13330) Bool)

(assert (=> b!703928 (= res!467922 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!703929 () Bool)

(declare-fun res!467910 () Bool)

(assert (=> b!703929 (=> (not res!467910) (not e!397576))))

(assert (=> b!703929 (= res!467910 (not (contains!3873 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703930 () Bool)

(declare-fun res!467909 () Bool)

(assert (=> b!703930 (=> (not res!467909) (not e!397576))))

(assert (=> b!703930 (= res!467909 (not (contains!3873 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703931 () Bool)

(declare-fun res!467907 () Bool)

(assert (=> b!703931 (=> (not res!467907) (not e!397576))))

(assert (=> b!703931 (= res!467907 (not (contains!3873 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703932 () Bool)

(declare-fun res!467916 () Bool)

(assert (=> b!703932 (=> (not res!467916) (not e!397576))))

(declare-fun noDuplicate!1120 (List!13330) Bool)

(assert (=> b!703932 (= res!467916 (noDuplicate!1120 newAcc!49))))

(declare-fun res!467914 () Bool)

(assert (=> start!62532 (=> (not res!467914) (not e!397576))))

(assert (=> start!62532 (= res!467914 (and (bvslt (size!19619 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19619 a!3591))))))

(assert (=> start!62532 e!397576))

(assert (=> start!62532 true))

(declare-fun array_inv!15010 (array!40167) Bool)

(assert (=> start!62532 (array_inv!15010 a!3591)))

(declare-fun b!703923 () Bool)

(declare-fun res!467920 () Bool)

(assert (=> b!703923 (=> (not res!467920) (not e!397576))))

(assert (=> b!703923 (= res!467920 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19619 a!3591)))))

(declare-fun b!703933 () Bool)

(declare-fun res!467918 () Bool)

(assert (=> b!703933 (=> (not res!467918) (not e!397576))))

(assert (=> b!703933 (= res!467918 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!703934 () Bool)

(declare-fun res!467917 () Bool)

(assert (=> b!703934 (=> (not res!467917) (not e!397576))))

(declare-fun -!282 (List!13330 (_ BitVec 64)) List!13330)

(assert (=> b!703934 (= res!467917 (= (-!282 newAcc!49 k!2824) acc!652))))

(declare-fun b!703935 () Bool)

(assert (=> b!703935 (= e!397576 false)))

(declare-fun lt!317769 () Bool)

(assert (=> b!703935 (= lt!317769 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703936 () Bool)

(declare-fun res!467924 () Bool)

(assert (=> b!703936 (=> (not res!467924) (not e!397576))))

(assert (=> b!703936 (= res!467924 (not (validKeyInArray!0 (select (arr!19236 a!3591) from!2969))))))

(declare-fun b!703937 () Bool)

(declare-fun res!467908 () Bool)

(assert (=> b!703937 (=> (not res!467908) (not e!397576))))

(assert (=> b!703937 (= res!467908 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!703938 () Bool)

(declare-fun res!467921 () Bool)

(assert (=> b!703938 (=> (not res!467921) (not e!397576))))

(assert (=> b!703938 (= res!467921 (not (contains!3873 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703939 () Bool)

(declare-fun res!467913 () Bool)

(assert (=> b!703939 (=> (not res!467913) (not e!397576))))

(declare-fun subseq!317 (List!13330 List!13330) Bool)

(assert (=> b!703939 (= res!467913 (subseq!317 acc!652 newAcc!49))))

(declare-fun b!703940 () Bool)

(declare-fun res!467911 () Bool)

(assert (=> b!703940 (=> (not res!467911) (not e!397576))))

(assert (=> b!703940 (= res!467911 (noDuplicate!1120 acc!652))))

(assert (= (and start!62532 res!467914) b!703940))

(assert (= (and b!703940 res!467911) b!703932))

(assert (= (and b!703932 res!467916) b!703938))

(assert (= (and b!703938 res!467921) b!703929))

(assert (= (and b!703929 res!467910) b!703927))

(assert (= (and b!703927 res!467912) b!703924))

(assert (= (and b!703924 res!467919) b!703925))

(assert (= (and b!703925 res!467923) b!703928))

(assert (= (and b!703928 res!467922) b!703939))

(assert (= (and b!703939 res!467913) b!703926))

(assert (= (and b!703926 res!467915) b!703934))

(assert (= (and b!703934 res!467917) b!703930))

(assert (= (and b!703930 res!467909) b!703931))

(assert (= (and b!703931 res!467907) b!703923))

(assert (= (and b!703923 res!467920) b!703936))

(assert (= (and b!703936 res!467924) b!703937))

(assert (= (and b!703937 res!467908) b!703933))

(assert (= (and b!703933 res!467918) b!703935))

(declare-fun m!662607 () Bool)

(assert (=> b!703925 m!662607))

(declare-fun m!662609 () Bool)

(assert (=> b!703932 m!662609))

(declare-fun m!662611 () Bool)

(assert (=> b!703929 m!662611))

(declare-fun m!662613 () Bool)

(assert (=> b!703936 m!662613))

(assert (=> b!703936 m!662613))

(declare-fun m!662615 () Bool)

(assert (=> b!703936 m!662615))

(declare-fun m!662617 () Bool)

(assert (=> b!703940 m!662617))

(declare-fun m!662619 () Bool)

(assert (=> start!62532 m!662619))

(declare-fun m!662621 () Bool)

(assert (=> b!703926 m!662621))

(declare-fun m!662623 () Bool)

(assert (=> b!703939 m!662623))

(declare-fun m!662625 () Bool)

(assert (=> b!703924 m!662625))

(declare-fun m!662627 () Bool)

(assert (=> b!703934 m!662627))

(declare-fun m!662629 () Bool)

(assert (=> b!703933 m!662629))

(declare-fun m!662631 () Bool)

(assert (=> b!703928 m!662631))

(declare-fun m!662633 () Bool)

(assert (=> b!703930 m!662633))

(declare-fun m!662635 () Bool)

(assert (=> b!703938 m!662635))

(declare-fun m!662637 () Bool)

(assert (=> b!703931 m!662637))

(declare-fun m!662639 () Bool)

(assert (=> b!703935 m!662639))

(declare-fun m!662641 () Bool)

(assert (=> b!703927 m!662641))

(push 1)

(assert (not b!703926))

(assert (not b!703932))

(assert (not b!703933))

(assert (not b!703934))

(assert (not b!703927))

(assert (not b!703929))

(assert (not b!703936))

(assert (not start!62532))

(assert (not b!703939))

(assert (not b!703938))

(assert (not b!703935))

(assert (not b!703924))

(assert (not b!703928))

(assert (not b!703940))

(assert (not b!703930))

(assert (not b!703931))

(assert (not b!703925))

(check-sat)

