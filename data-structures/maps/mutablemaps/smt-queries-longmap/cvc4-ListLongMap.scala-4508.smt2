; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62536 () Bool)

(assert start!62536)

(declare-fun b!704031 () Bool)

(declare-fun res!468018 () Bool)

(declare-fun e!397587 () Bool)

(assert (=> b!704031 (=> (not res!468018) (not e!397587))))

(declare-datatypes ((array!40171 0))(
  ( (array!40172 (arr!19238 (Array (_ BitVec 32) (_ BitVec 64))) (size!19621 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40171)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704031 (= res!468018 (not (validKeyInArray!0 (select (arr!19238 a!3591) from!2969))))))

(declare-fun b!704032 () Bool)

(declare-fun res!468024 () Bool)

(assert (=> b!704032 (=> (not res!468024) (not e!397587))))

(declare-datatypes ((List!13332 0))(
  ( (Nil!13329) (Cons!13328 (h!14373 (_ BitVec 64)) (t!19622 List!13332)) )
))
(declare-fun acc!652 () List!13332)

(declare-fun noDuplicate!1122 (List!13332) Bool)

(assert (=> b!704032 (= res!468024 (noDuplicate!1122 acc!652))))

(declare-fun b!704033 () Bool)

(declare-fun res!468032 () Bool)

(assert (=> b!704033 (=> (not res!468032) (not e!397587))))

(assert (=> b!704033 (= res!468032 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704034 () Bool)

(declare-fun res!468016 () Bool)

(assert (=> b!704034 (=> (not res!468016) (not e!397587))))

(declare-fun arrayNoDuplicates!0 (array!40171 (_ BitVec 32) List!13332) Bool)

(assert (=> b!704034 (= res!468016 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704035 () Bool)

(declare-fun res!468020 () Bool)

(assert (=> b!704035 (=> (not res!468020) (not e!397587))))

(declare-fun newAcc!49 () List!13332)

(declare-fun subseq!319 (List!13332 List!13332) Bool)

(assert (=> b!704035 (= res!468020 (subseq!319 acc!652 newAcc!49))))

(declare-fun b!704036 () Bool)

(declare-fun res!468030 () Bool)

(assert (=> b!704036 (=> (not res!468030) (not e!397587))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3875 (List!13332 (_ BitVec 64)) Bool)

(assert (=> b!704036 (= res!468030 (contains!3875 newAcc!49 k!2824))))

(declare-fun b!704038 () Bool)

(declare-fun res!468021 () Bool)

(assert (=> b!704038 (=> (not res!468021) (not e!397587))))

(assert (=> b!704038 (= res!468021 (not (contains!3875 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704039 () Bool)

(declare-fun res!468017 () Bool)

(assert (=> b!704039 (=> (not res!468017) (not e!397587))))

(assert (=> b!704039 (= res!468017 (not (contains!3875 acc!652 k!2824)))))

(declare-fun b!704040 () Bool)

(declare-fun res!468027 () Bool)

(assert (=> b!704040 (=> (not res!468027) (not e!397587))))

(declare-fun -!284 (List!13332 (_ BitVec 64)) List!13332)

(assert (=> b!704040 (= res!468027 (= (-!284 newAcc!49 k!2824) acc!652))))

(declare-fun b!704041 () Bool)

(declare-fun res!468015 () Bool)

(assert (=> b!704041 (=> (not res!468015) (not e!397587))))

(declare-fun arrayContainsKey!0 (array!40171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704041 (= res!468015 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704042 () Bool)

(declare-fun res!468022 () Bool)

(assert (=> b!704042 (=> (not res!468022) (not e!397587))))

(assert (=> b!704042 (= res!468022 (not (contains!3875 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704043 () Bool)

(declare-fun res!468025 () Bool)

(assert (=> b!704043 (=> (not res!468025) (not e!397587))))

(assert (=> b!704043 (= res!468025 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!704037 () Bool)

(declare-fun res!468029 () Bool)

(assert (=> b!704037 (=> (not res!468029) (not e!397587))))

(assert (=> b!704037 (= res!468029 (noDuplicate!1122 newAcc!49))))

(declare-fun res!468031 () Bool)

(assert (=> start!62536 (=> (not res!468031) (not e!397587))))

(assert (=> start!62536 (= res!468031 (and (bvslt (size!19621 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19621 a!3591))))))

(assert (=> start!62536 e!397587))

(assert (=> start!62536 true))

(declare-fun array_inv!15012 (array!40171) Bool)

(assert (=> start!62536 (array_inv!15012 a!3591)))

(declare-fun b!704044 () Bool)

(declare-fun res!468026 () Bool)

(assert (=> b!704044 (=> (not res!468026) (not e!397587))))

(assert (=> b!704044 (= res!468026 (validKeyInArray!0 k!2824))))

(declare-fun b!704045 () Bool)

(declare-fun res!468023 () Bool)

(assert (=> b!704045 (=> (not res!468023) (not e!397587))))

(assert (=> b!704045 (= res!468023 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19621 a!3591)))))

(declare-fun b!704046 () Bool)

(declare-fun res!468019 () Bool)

(assert (=> b!704046 (=> (not res!468019) (not e!397587))))

(assert (=> b!704046 (= res!468019 (not (contains!3875 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704047 () Bool)

(declare-fun res!468028 () Bool)

(assert (=> b!704047 (=> (not res!468028) (not e!397587))))

(assert (=> b!704047 (= res!468028 (not (contains!3875 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704048 () Bool)

(assert (=> b!704048 (= e!397587 false)))

(declare-fun lt!317775 () Bool)

(assert (=> b!704048 (= lt!317775 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(assert (= (and start!62536 res!468031) b!704032))

(assert (= (and b!704032 res!468024) b!704037))

(assert (= (and b!704037 res!468029) b!704047))

(assert (= (and b!704047 res!468028) b!704046))

(assert (= (and b!704046 res!468019) b!704043))

(assert (= (and b!704043 res!468025) b!704039))

(assert (= (and b!704039 res!468017) b!704044))

(assert (= (and b!704044 res!468026) b!704034))

(assert (= (and b!704034 res!468016) b!704035))

(assert (= (and b!704035 res!468020) b!704036))

(assert (= (and b!704036 res!468030) b!704040))

(assert (= (and b!704040 res!468027) b!704042))

(assert (= (and b!704042 res!468022) b!704038))

(assert (= (and b!704038 res!468021) b!704045))

(assert (= (and b!704045 res!468023) b!704031))

(assert (= (and b!704031 res!468018) b!704033))

(assert (= (and b!704033 res!468032) b!704041))

(assert (= (and b!704041 res!468015) b!704048))

(declare-fun m!662679 () Bool)

(assert (=> b!704040 m!662679))

(declare-fun m!662681 () Bool)

(assert (=> b!704031 m!662681))

(assert (=> b!704031 m!662681))

(declare-fun m!662683 () Bool)

(assert (=> b!704031 m!662683))

(declare-fun m!662685 () Bool)

(assert (=> b!704036 m!662685))

(declare-fun m!662687 () Bool)

(assert (=> b!704032 m!662687))

(declare-fun m!662689 () Bool)

(assert (=> b!704046 m!662689))

(declare-fun m!662691 () Bool)

(assert (=> b!704042 m!662691))

(declare-fun m!662693 () Bool)

(assert (=> b!704037 m!662693))

(declare-fun m!662695 () Bool)

(assert (=> b!704035 m!662695))

(declare-fun m!662697 () Bool)

(assert (=> b!704043 m!662697))

(declare-fun m!662699 () Bool)

(assert (=> b!704038 m!662699))

(declare-fun m!662701 () Bool)

(assert (=> b!704041 m!662701))

(declare-fun m!662703 () Bool)

(assert (=> start!62536 m!662703))

(declare-fun m!662705 () Bool)

(assert (=> b!704048 m!662705))

(declare-fun m!662707 () Bool)

(assert (=> b!704044 m!662707))

(declare-fun m!662709 () Bool)

(assert (=> b!704034 m!662709))

(declare-fun m!662711 () Bool)

(assert (=> b!704047 m!662711))

(declare-fun m!662713 () Bool)

(assert (=> b!704039 m!662713))

(push 1)

(assert (not b!704043))

(assert (not b!704031))

(assert (not b!704047))

(assert (not b!704039))

(assert (not b!704044))

(assert (not b!704040))

(assert (not b!704034))

(assert (not b!704036))

(assert (not b!704032))

(assert (not b!704035))

(assert (not b!704046))

(assert (not b!704048))

(assert (not start!62536))

(assert (not b!704042))

(assert (not b!704038))

(assert (not b!704037))

(assert (not b!704041))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

