; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60164 () Bool)

(assert start!60164)

(declare-fun b!671225 () Bool)

(declare-fun res!438101 () Bool)

(declare-fun e!383610 () Bool)

(assert (=> b!671225 (=> (not res!438101) (not e!383610))))

(declare-datatypes ((array!39167 0))(
  ( (array!39168 (arr!18772 (Array (_ BitVec 32) (_ BitVec 64))) (size!19136 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39167)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!671225 (= res!438101 (validKeyInArray!0 (select (arr!18772 a!3626) from!3004)))))

(declare-fun b!671226 () Bool)

(declare-fun res!438109 () Bool)

(assert (=> b!671226 (=> (not res!438109) (not e!383610))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!671226 (= res!438109 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19136 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!671227 () Bool)

(declare-fun res!438106 () Bool)

(assert (=> b!671227 (=> (not res!438106) (not e!383610))))

(declare-datatypes ((List!12866 0))(
  ( (Nil!12863) (Cons!12862 (h!13907 (_ BitVec 64)) (t!19102 List!12866)) )
))
(declare-fun acc!681 () List!12866)

(declare-fun arrayNoDuplicates!0 (array!39167 (_ BitVec 32) List!12866) Bool)

(assert (=> b!671227 (= res!438106 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!671228 () Bool)

(declare-fun e!383611 () Bool)

(declare-fun e!383607 () Bool)

(assert (=> b!671228 (= e!383611 e!383607)))

(declare-fun res!438102 () Bool)

(assert (=> b!671228 (=> (not res!438102) (not e!383607))))

(assert (=> b!671228 (= res!438102 (bvsle from!3004 i!1382))))

(declare-fun b!671229 () Bool)

(declare-fun res!438104 () Bool)

(assert (=> b!671229 (=> (not res!438104) (not e!383610))))

(assert (=> b!671229 (= res!438104 e!383611)))

(declare-fun res!438097 () Bool)

(assert (=> b!671229 (=> res!438097 e!383611)))

(declare-fun e!383609 () Bool)

(assert (=> b!671229 (= res!438097 e!383609)))

(declare-fun res!438105 () Bool)

(assert (=> b!671229 (=> (not res!438105) (not e!383609))))

(assert (=> b!671229 (= res!438105 (bvsgt from!3004 i!1382))))

(declare-fun b!671230 () Bool)

(declare-fun res!438098 () Bool)

(assert (=> b!671230 (=> (not res!438098) (not e!383610))))

(assert (=> b!671230 (= res!438098 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19136 a!3626))))))

(declare-fun b!671231 () Bool)

(declare-fun res!438095 () Bool)

(assert (=> b!671231 (=> (not res!438095) (not e!383610))))

(declare-fun contains!3409 (List!12866 (_ BitVec 64)) Bool)

(assert (=> b!671231 (= res!438095 (not (contains!3409 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671232 () Bool)

(declare-fun res!438110 () Bool)

(assert (=> b!671232 (=> (not res!438110) (not e!383610))))

(assert (=> b!671232 (= res!438110 (not (contains!3409 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671233 () Bool)

(declare-fun res!438107 () Bool)

(assert (=> b!671233 (=> (not res!438107) (not e!383610))))

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!671233 (= res!438107 (= (select (arr!18772 a!3626) from!3004) k0!2843))))

(declare-fun b!671234 () Bool)

(declare-fun res!438096 () Bool)

(assert (=> b!671234 (=> (not res!438096) (not e!383610))))

(assert (=> b!671234 (= res!438096 (validKeyInArray!0 k0!2843))))

(declare-fun b!671235 () Bool)

(declare-fun res!438108 () Bool)

(assert (=> b!671235 (=> (not res!438108) (not e!383610))))

(assert (=> b!671235 (= res!438108 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12863))))

(declare-fun b!671236 () Bool)

(assert (=> b!671236 (= e!383607 (not (contains!3409 acc!681 k0!2843)))))

(declare-fun b!671237 () Bool)

(declare-fun res!438103 () Bool)

(assert (=> b!671237 (=> (not res!438103) (not e!383610))))

(declare-fun arrayContainsKey!0 (array!39167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!671237 (= res!438103 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun res!438099 () Bool)

(assert (=> start!60164 (=> (not res!438099) (not e!383610))))

(assert (=> start!60164 (= res!438099 (and (bvslt (size!19136 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19136 a!3626))))))

(assert (=> start!60164 e!383610))

(assert (=> start!60164 true))

(declare-fun array_inv!14546 (array!39167) Bool)

(assert (=> start!60164 (array_inv!14546 a!3626)))

(declare-fun b!671238 () Bool)

(declare-fun res!438100 () Bool)

(assert (=> b!671238 (=> (not res!438100) (not e!383610))))

(declare-fun noDuplicate!656 (List!12866) Bool)

(assert (=> b!671238 (= res!438100 (noDuplicate!656 acc!681))))

(declare-fun b!671239 () Bool)

(assert (=> b!671239 (= e!383609 (contains!3409 acc!681 k0!2843))))

(declare-fun b!671240 () Bool)

(assert (=> b!671240 (= e!383610 (not true))))

(assert (=> b!671240 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(assert (= (and start!60164 res!438099) b!671238))

(assert (= (and b!671238 res!438100) b!671232))

(assert (= (and b!671232 res!438110) b!671231))

(assert (= (and b!671231 res!438095) b!671229))

(assert (= (and b!671229 res!438105) b!671239))

(assert (= (and b!671229 (not res!438097)) b!671228))

(assert (= (and b!671228 res!438102) b!671236))

(assert (= (and b!671229 res!438104) b!671235))

(assert (= (and b!671235 res!438108) b!671227))

(assert (= (and b!671227 res!438106) b!671230))

(assert (= (and b!671230 res!438098) b!671234))

(assert (= (and b!671234 res!438096) b!671237))

(assert (= (and b!671237 res!438103) b!671226))

(assert (= (and b!671226 res!438109) b!671225))

(assert (= (and b!671225 res!438101) b!671233))

(assert (= (and b!671233 res!438107) b!671240))

(declare-fun m!640779 () Bool)

(assert (=> b!671232 m!640779))

(declare-fun m!640781 () Bool)

(assert (=> start!60164 m!640781))

(declare-fun m!640783 () Bool)

(assert (=> b!671240 m!640783))

(declare-fun m!640785 () Bool)

(assert (=> b!671237 m!640785))

(declare-fun m!640787 () Bool)

(assert (=> b!671238 m!640787))

(declare-fun m!640789 () Bool)

(assert (=> b!671233 m!640789))

(assert (=> b!671225 m!640789))

(assert (=> b!671225 m!640789))

(declare-fun m!640791 () Bool)

(assert (=> b!671225 m!640791))

(declare-fun m!640793 () Bool)

(assert (=> b!671239 m!640793))

(declare-fun m!640795 () Bool)

(assert (=> b!671231 m!640795))

(declare-fun m!640797 () Bool)

(assert (=> b!671227 m!640797))

(declare-fun m!640799 () Bool)

(assert (=> b!671235 m!640799))

(declare-fun m!640801 () Bool)

(assert (=> b!671234 m!640801))

(assert (=> b!671236 m!640793))

(check-sat (not b!671225) (not b!671239) (not b!671234) (not b!671236) (not b!671227) (not b!671238) (not b!671232) (not b!671240) (not b!671237) (not start!60164) (not b!671235) (not b!671231))
