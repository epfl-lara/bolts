; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61712 () Bool)

(assert start!61712)

(declare-fun b!690039 () Bool)

(declare-fun res!454625 () Bool)

(declare-fun e!392932 () Bool)

(assert (=> b!690039 (=> (not res!454625) (not e!392932))))

(declare-datatypes ((List!13121 0))(
  ( (Nil!13118) (Cons!13117 (h!14162 (_ BitVec 64)) (t!19396 List!13121)) )
))
(declare-fun acc!681 () List!13121)

(declare-fun contains!3664 (List!13121 (_ BitVec 64)) Bool)

(assert (=> b!690039 (= res!454625 (not (contains!3664 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690040 () Bool)

(declare-fun res!454621 () Bool)

(assert (=> b!690040 (=> (not res!454621) (not e!392932))))

(assert (=> b!690040 (= res!454621 (not (contains!3664 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!454623 () Bool)

(assert (=> start!61712 (=> (not res!454623) (not e!392932))))

(declare-datatypes ((array!39722 0))(
  ( (array!39723 (arr!19027 (Array (_ BitVec 32) (_ BitVec 64))) (size!19410 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39722)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!61712 (= res!454623 (and (bvslt (size!19410 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19410 a!3626))))))

(assert (=> start!61712 e!392932))

(assert (=> start!61712 true))

(declare-fun array_inv!14801 (array!39722) Bool)

(assert (=> start!61712 (array_inv!14801 a!3626)))

(declare-fun b!690041 () Bool)

(assert (=> b!690041 (= e!392932 false)))

(declare-fun lt!316359 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39722 (_ BitVec 32) List!13121) Bool)

(assert (=> b!690041 (= lt!316359 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!690042 () Bool)

(declare-fun e!392930 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!690042 (= e!392930 (not (contains!3664 acc!681 k0!2843)))))

(declare-fun b!690043 () Bool)

(declare-fun e!392929 () Bool)

(assert (=> b!690043 (= e!392929 e!392930)))

(declare-fun res!454622 () Bool)

(assert (=> b!690043 (=> (not res!454622) (not e!392930))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!690043 (= res!454622 (bvsle from!3004 i!1382))))

(declare-fun b!690044 () Bool)

(declare-fun res!454620 () Bool)

(assert (=> b!690044 (=> (not res!454620) (not e!392932))))

(assert (=> b!690044 (= res!454620 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13118))))

(declare-fun b!690045 () Bool)

(declare-fun e!392931 () Bool)

(assert (=> b!690045 (= e!392931 (contains!3664 acc!681 k0!2843))))

(declare-fun b!690046 () Bool)

(declare-fun res!454618 () Bool)

(assert (=> b!690046 (=> (not res!454618) (not e!392932))))

(declare-fun noDuplicate!911 (List!13121) Bool)

(assert (=> b!690046 (= res!454618 (noDuplicate!911 acc!681))))

(declare-fun b!690047 () Bool)

(declare-fun res!454617 () Bool)

(assert (=> b!690047 (=> (not res!454617) (not e!392932))))

(assert (=> b!690047 (= res!454617 e!392929)))

(declare-fun res!454624 () Bool)

(assert (=> b!690047 (=> res!454624 e!392929)))

(assert (=> b!690047 (= res!454624 e!392931)))

(declare-fun res!454619 () Bool)

(assert (=> b!690047 (=> (not res!454619) (not e!392931))))

(assert (=> b!690047 (= res!454619 (bvsgt from!3004 i!1382))))

(assert (= (and start!61712 res!454623) b!690046))

(assert (= (and b!690046 res!454618) b!690039))

(assert (= (and b!690039 res!454625) b!690040))

(assert (= (and b!690040 res!454621) b!690047))

(assert (= (and b!690047 res!454619) b!690045))

(assert (= (and b!690047 (not res!454624)) b!690043))

(assert (= (and b!690043 res!454622) b!690042))

(assert (= (and b!690047 res!454617) b!690044))

(assert (= (and b!690044 res!454620) b!690041))

(declare-fun m!653693 () Bool)

(assert (=> b!690040 m!653693))

(declare-fun m!653695 () Bool)

(assert (=> b!690046 m!653695))

(declare-fun m!653697 () Bool)

(assert (=> start!61712 m!653697))

(declare-fun m!653699 () Bool)

(assert (=> b!690039 m!653699))

(declare-fun m!653701 () Bool)

(assert (=> b!690041 m!653701))

(declare-fun m!653703 () Bool)

(assert (=> b!690045 m!653703))

(assert (=> b!690042 m!653703))

(declare-fun m!653705 () Bool)

(assert (=> b!690044 m!653705))

(check-sat (not b!690039) (not b!690044) (not b!690045) (not b!690040) (not b!690046) (not start!61712) (not b!690042) (not b!690041))
(check-sat)
