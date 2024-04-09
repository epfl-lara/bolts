; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62530 () Bool)

(assert start!62530)

(declare-fun b!703869 () Bool)

(declare-fun res!467868 () Bool)

(declare-fun e!397569 () Bool)

(assert (=> b!703869 (=> (not res!467868) (not e!397569))))

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!703869 (= res!467868 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!703870 () Bool)

(declare-fun res!467855 () Bool)

(assert (=> b!703870 (=> (not res!467855) (not e!397569))))

(declare-datatypes ((array!40165 0))(
  ( (array!40166 (arr!19235 (Array (_ BitVec 32) (_ BitVec 64))) (size!19618 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40165)

(declare-datatypes ((List!13329 0))(
  ( (Nil!13326) (Cons!13325 (h!14370 (_ BitVec 64)) (t!19619 List!13329)) )
))
(declare-fun acc!652 () List!13329)

(declare-fun arrayNoDuplicates!0 (array!40165 (_ BitVec 32) List!13329) Bool)

(assert (=> b!703870 (= res!467855 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!703871 () Bool)

(declare-fun res!467867 () Bool)

(assert (=> b!703871 (=> (not res!467867) (not e!397569))))

(declare-fun newAcc!49 () List!13329)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!281 (List!13329 (_ BitVec 64)) List!13329)

(assert (=> b!703871 (= res!467867 (= (-!281 newAcc!49 k!2824) acc!652))))

(declare-fun b!703873 () Bool)

(declare-fun res!467853 () Bool)

(assert (=> b!703873 (=> (not res!467853) (not e!397569))))

(declare-fun noDuplicate!1119 (List!13329) Bool)

(assert (=> b!703873 (= res!467853 (noDuplicate!1119 acc!652))))

(declare-fun b!703874 () Bool)

(declare-fun res!467860 () Bool)

(assert (=> b!703874 (=> (not res!467860) (not e!397569))))

(declare-fun contains!3872 (List!13329 (_ BitVec 64)) Bool)

(assert (=> b!703874 (= res!467860 (not (contains!3872 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703875 () Bool)

(declare-fun res!467865 () Bool)

(assert (=> b!703875 (=> (not res!467865) (not e!397569))))

(assert (=> b!703875 (= res!467865 (contains!3872 newAcc!49 k!2824))))

(declare-fun b!703876 () Bool)

(declare-fun res!467870 () Bool)

(assert (=> b!703876 (=> (not res!467870) (not e!397569))))

(assert (=> b!703876 (= res!467870 (not (contains!3872 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703877 () Bool)

(declare-fun res!467866 () Bool)

(assert (=> b!703877 (=> (not res!467866) (not e!397569))))

(assert (=> b!703877 (= res!467866 (not (contains!3872 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703878 () Bool)

(declare-fun res!467863 () Bool)

(assert (=> b!703878 (=> (not res!467863) (not e!397569))))

(assert (=> b!703878 (= res!467863 (noDuplicate!1119 newAcc!49))))

(declare-fun b!703879 () Bool)

(assert (=> b!703879 (= e!397569 false)))

(declare-fun lt!317766 () Bool)

(assert (=> b!703879 (= lt!317766 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703880 () Bool)

(declare-fun res!467854 () Bool)

(assert (=> b!703880 (=> (not res!467854) (not e!397569))))

(declare-fun subseq!316 (List!13329 List!13329) Bool)

(assert (=> b!703880 (= res!467854 (subseq!316 acc!652 newAcc!49))))

(declare-fun b!703881 () Bool)

(declare-fun res!467869 () Bool)

(assert (=> b!703881 (=> (not res!467869) (not e!397569))))

(declare-fun arrayContainsKey!0 (array!40165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703881 (= res!467869 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!703882 () Bool)

(declare-fun res!467861 () Bool)

(assert (=> b!703882 (=> (not res!467861) (not e!397569))))

(assert (=> b!703882 (= res!467861 (not (contains!3872 acc!652 k!2824)))))

(declare-fun b!703883 () Bool)

(declare-fun res!467858 () Bool)

(assert (=> b!703883 (=> (not res!467858) (not e!397569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703883 (= res!467858 (validKeyInArray!0 k!2824))))

(declare-fun b!703884 () Bool)

(declare-fun res!467856 () Bool)

(assert (=> b!703884 (=> (not res!467856) (not e!397569))))

(assert (=> b!703884 (= res!467856 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!703885 () Bool)

(declare-fun res!467859 () Bool)

(assert (=> b!703885 (=> (not res!467859) (not e!397569))))

(assert (=> b!703885 (= res!467859 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19618 a!3591)))))

(declare-fun b!703886 () Bool)

(declare-fun res!467862 () Bool)

(assert (=> b!703886 (=> (not res!467862) (not e!397569))))

(assert (=> b!703886 (= res!467862 (not (validKeyInArray!0 (select (arr!19235 a!3591) from!2969))))))

(declare-fun b!703872 () Bool)

(declare-fun res!467864 () Bool)

(assert (=> b!703872 (=> (not res!467864) (not e!397569))))

(assert (=> b!703872 (= res!467864 (not (contains!3872 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!467857 () Bool)

(assert (=> start!62530 (=> (not res!467857) (not e!397569))))

(assert (=> start!62530 (= res!467857 (and (bvslt (size!19618 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19618 a!3591))))))

(assert (=> start!62530 e!397569))

(assert (=> start!62530 true))

(declare-fun array_inv!15009 (array!40165) Bool)

(assert (=> start!62530 (array_inv!15009 a!3591)))

(assert (= (and start!62530 res!467857) b!703873))

(assert (= (and b!703873 res!467853) b!703878))

(assert (= (and b!703878 res!467863) b!703874))

(assert (= (and b!703874 res!467860) b!703876))

(assert (= (and b!703876 res!467870) b!703881))

(assert (= (and b!703881 res!467869) b!703882))

(assert (= (and b!703882 res!467861) b!703883))

(assert (= (and b!703883 res!467858) b!703870))

(assert (= (and b!703870 res!467855) b!703880))

(assert (= (and b!703880 res!467854) b!703875))

(assert (= (and b!703875 res!467865) b!703871))

(assert (= (and b!703871 res!467867) b!703872))

(assert (= (and b!703872 res!467864) b!703877))

(assert (= (and b!703877 res!467866) b!703885))

(assert (= (and b!703885 res!467859) b!703886))

(assert (= (and b!703886 res!467862) b!703869))

(assert (= (and b!703869 res!467868) b!703884))

(assert (= (and b!703884 res!467856) b!703879))

(declare-fun m!662571 () Bool)

(assert (=> b!703877 m!662571))

(declare-fun m!662573 () Bool)

(assert (=> b!703874 m!662573))

(declare-fun m!662575 () Bool)

(assert (=> b!703881 m!662575))

(declare-fun m!662577 () Bool)

(assert (=> b!703886 m!662577))

(assert (=> b!703886 m!662577))

(declare-fun m!662579 () Bool)

(assert (=> b!703886 m!662579))

(declare-fun m!662581 () Bool)

(assert (=> b!703884 m!662581))

(declare-fun m!662583 () Bool)

(assert (=> b!703883 m!662583))

(declare-fun m!662585 () Bool)

(assert (=> b!703875 m!662585))

(declare-fun m!662587 () Bool)

(assert (=> b!703873 m!662587))

(declare-fun m!662589 () Bool)

(assert (=> b!703872 m!662589))

(declare-fun m!662591 () Bool)

(assert (=> b!703876 m!662591))

(declare-fun m!662593 () Bool)

(assert (=> b!703879 m!662593))

(declare-fun m!662595 () Bool)

(assert (=> b!703882 m!662595))

(declare-fun m!662597 () Bool)

(assert (=> b!703871 m!662597))

(declare-fun m!662599 () Bool)

(assert (=> b!703870 m!662599))

(declare-fun m!662601 () Bool)

(assert (=> b!703878 m!662601))

(declare-fun m!662603 () Bool)

(assert (=> start!62530 m!662603))

(declare-fun m!662605 () Bool)

(assert (=> b!703880 m!662605))

(push 1)

(assert (not b!703870))

(assert (not b!703873))

(assert (not b!703874))

(assert (not b!703881))

(assert (not b!703880))

(assert (not b!703884))

(assert (not b!703886))

(assert (not b!703879))

(assert (not b!703872))

(assert (not b!703871))

(assert (not b!703883))

(assert (not b!703877))

(assert (not b!703876))

(assert (not b!703882))

(assert (not start!62530))

(assert (not b!703878))

(assert (not b!703875))

(check-sat)

