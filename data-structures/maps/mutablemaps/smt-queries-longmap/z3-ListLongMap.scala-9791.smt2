; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116308 () Bool)

(assert start!116308)

(declare-fun b!1372589 () Bool)

(declare-fun res!915982 () Bool)

(declare-fun e!777636 () Bool)

(assert (=> b!1372589 (=> (not res!915982) (not e!777636))))

(declare-datatypes ((List!32178 0))(
  ( (Nil!32175) (Cons!32174 (h!33383 (_ BitVec 64)) (t!46879 List!32178)) )
))
(declare-fun acc!866 () List!32178)

(declare-fun contains!9716 (List!32178 (_ BitVec 64)) Bool)

(assert (=> b!1372589 (= res!915982 (not (contains!9716 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372590 () Bool)

(declare-fun res!915981 () Bool)

(assert (=> b!1372590 (=> (not res!915981) (not e!777636))))

(declare-fun newAcc!98 () List!32178)

(declare-fun subseq!1107 (List!32178 List!32178) Bool)

(assert (=> b!1372590 (= res!915981 (subseq!1107 newAcc!98 acc!866))))

(declare-fun b!1372591 () Bool)

(declare-fun res!915978 () Bool)

(assert (=> b!1372591 (=> (not res!915978) (not e!777636))))

(assert (=> b!1372591 (= res!915978 (not (contains!9716 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!915983 () Bool)

(assert (=> start!116308 (=> (not res!915983) (not e!777636))))

(declare-datatypes ((array!93048 0))(
  ( (array!93049 (arr!44930 (Array (_ BitVec 32) (_ BitVec 64))) (size!45481 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93048)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!116308 (= res!915983 (and (bvslt (size!45481 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45481 a!3861))))))

(assert (=> start!116308 e!777636))

(declare-fun array_inv!33875 (array!93048) Bool)

(assert (=> start!116308 (array_inv!33875 a!3861)))

(assert (=> start!116308 true))

(declare-fun b!1372592 () Bool)

(assert (=> b!1372592 (= e!777636 false)))

(declare-fun lt!602842 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93048 (_ BitVec 32) List!32178) Bool)

(assert (=> b!1372592 (= lt!602842 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45295 0))(
  ( (Unit!45296) )
))
(declare-fun lt!602843 () Unit!45295)

(declare-fun noDuplicateSubseq!294 (List!32178 List!32178) Unit!45295)

(assert (=> b!1372592 (= lt!602843 (noDuplicateSubseq!294 newAcc!98 acc!866))))

(declare-fun b!1372593 () Bool)

(declare-fun res!915979 () Bool)

(assert (=> b!1372593 (=> (not res!915979) (not e!777636))))

(assert (=> b!1372593 (= res!915979 (not (contains!9716 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372594 () Bool)

(declare-fun res!915984 () Bool)

(assert (=> b!1372594 (=> (not res!915984) (not e!777636))))

(assert (=> b!1372594 (= res!915984 (not (contains!9716 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372595 () Bool)

(declare-fun res!915980 () Bool)

(assert (=> b!1372595 (=> (not res!915980) (not e!777636))))

(declare-fun noDuplicate!2595 (List!32178) Bool)

(assert (=> b!1372595 (= res!915980 (noDuplicate!2595 acc!866))))

(assert (= (and start!116308 res!915983) b!1372595))

(assert (= (and b!1372595 res!915980) b!1372589))

(assert (= (and b!1372589 res!915982) b!1372594))

(assert (= (and b!1372594 res!915984) b!1372593))

(assert (= (and b!1372593 res!915979) b!1372591))

(assert (= (and b!1372591 res!915978) b!1372590))

(assert (= (and b!1372590 res!915981) b!1372592))

(declare-fun m!1256029 () Bool)

(assert (=> b!1372591 m!1256029))

(declare-fun m!1256031 () Bool)

(assert (=> b!1372595 m!1256031))

(declare-fun m!1256033 () Bool)

(assert (=> start!116308 m!1256033))

(declare-fun m!1256035 () Bool)

(assert (=> b!1372594 m!1256035))

(declare-fun m!1256037 () Bool)

(assert (=> b!1372590 m!1256037))

(declare-fun m!1256039 () Bool)

(assert (=> b!1372592 m!1256039))

(declare-fun m!1256041 () Bool)

(assert (=> b!1372592 m!1256041))

(declare-fun m!1256043 () Bool)

(assert (=> b!1372593 m!1256043))

(declare-fun m!1256045 () Bool)

(assert (=> b!1372589 m!1256045))

(check-sat (not b!1372589) (not b!1372593) (not b!1372592) (not b!1372590) (not b!1372594) (not b!1372591) (not start!116308) (not b!1372595))
(check-sat)
