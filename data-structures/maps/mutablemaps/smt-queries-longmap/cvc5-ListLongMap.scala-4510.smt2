; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62544 () Bool)

(assert start!62544)

(declare-fun b!704247 () Bool)

(declare-fun res!468247 () Bool)

(declare-fun e!397611 () Bool)

(assert (=> b!704247 (=> (not res!468247) (not e!397611))))

(declare-datatypes ((array!40179 0))(
  ( (array!40180 (arr!19242 (Array (_ BitVec 32) (_ BitVec 64))) (size!19625 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40179)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704247 (= res!468247 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704248 () Bool)

(declare-fun res!468241 () Bool)

(assert (=> b!704248 (=> (not res!468241) (not e!397611))))

(declare-datatypes ((List!13336 0))(
  ( (Nil!13333) (Cons!13332 (h!14377 (_ BitVec 64)) (t!19626 List!13336)) )
))
(declare-fun newAcc!49 () List!13336)

(declare-fun noDuplicate!1126 (List!13336) Bool)

(assert (=> b!704248 (= res!468241 (noDuplicate!1126 newAcc!49))))

(declare-fun b!704249 () Bool)

(declare-fun res!468234 () Bool)

(assert (=> b!704249 (=> (not res!468234) (not e!397611))))

(declare-fun contains!3879 (List!13336 (_ BitVec 64)) Bool)

(assert (=> b!704249 (= res!468234 (not (contains!3879 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704251 () Bool)

(declare-fun res!468236 () Bool)

(assert (=> b!704251 (=> (not res!468236) (not e!397611))))

(declare-fun acc!652 () List!13336)

(declare-fun arrayNoDuplicates!0 (array!40179 (_ BitVec 32) List!13336) Bool)

(assert (=> b!704251 (= res!468236 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704252 () Bool)

(declare-fun res!468244 () Bool)

(assert (=> b!704252 (=> (not res!468244) (not e!397611))))

(assert (=> b!704252 (= res!468244 (not (contains!3879 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704253 () Bool)

(declare-fun res!468240 () Bool)

(assert (=> b!704253 (=> (not res!468240) (not e!397611))))

(assert (=> b!704253 (= res!468240 (not (contains!3879 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704254 () Bool)

(declare-fun res!468237 () Bool)

(assert (=> b!704254 (=> (not res!468237) (not e!397611))))

(declare-fun subseq!323 (List!13336 List!13336) Bool)

(assert (=> b!704254 (= res!468237 (subseq!323 acc!652 newAcc!49))))

(declare-fun b!704250 () Bool)

(declare-fun res!468246 () Bool)

(assert (=> b!704250 (=> (not res!468246) (not e!397611))))

(assert (=> b!704250 (= res!468246 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19625 a!3591)))))

(declare-fun res!468245 () Bool)

(assert (=> start!62544 (=> (not res!468245) (not e!397611))))

(assert (=> start!62544 (= res!468245 (and (bvslt (size!19625 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19625 a!3591))))))

(assert (=> start!62544 e!397611))

(assert (=> start!62544 true))

(declare-fun array_inv!15016 (array!40179) Bool)

(assert (=> start!62544 (array_inv!15016 a!3591)))

(declare-fun b!704255 () Bool)

(declare-fun res!468248 () Bool)

(assert (=> b!704255 (=> (not res!468248) (not e!397611))))

(assert (=> b!704255 (= res!468248 (not (contains!3879 acc!652 k!2824)))))

(declare-fun b!704256 () Bool)

(declare-fun res!468235 () Bool)

(assert (=> b!704256 (=> (not res!468235) (not e!397611))))

(assert (=> b!704256 (= res!468235 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!704257 () Bool)

(declare-fun res!468239 () Bool)

(assert (=> b!704257 (=> (not res!468239) (not e!397611))))

(assert (=> b!704257 (= res!468239 (not (contains!3879 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704258 () Bool)

(declare-fun res!468242 () Bool)

(assert (=> b!704258 (=> (not res!468242) (not e!397611))))

(declare-fun -!288 (List!13336 (_ BitVec 64)) List!13336)

(assert (=> b!704258 (= res!468242 (= (-!288 newAcc!49 k!2824) acc!652))))

(declare-fun b!704259 () Bool)

(declare-fun res!468232 () Bool)

(assert (=> b!704259 (=> (not res!468232) (not e!397611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704259 (= res!468232 (validKeyInArray!0 k!2824))))

(declare-fun b!704260 () Bool)

(declare-fun res!468238 () Bool)

(assert (=> b!704260 (=> (not res!468238) (not e!397611))))

(assert (=> b!704260 (= res!468238 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704261 () Bool)

(declare-fun res!468243 () Bool)

(assert (=> b!704261 (=> (not res!468243) (not e!397611))))

(assert (=> b!704261 (= res!468243 (noDuplicate!1126 acc!652))))

(declare-fun b!704262 () Bool)

(assert (=> b!704262 (= e!397611 false)))

(declare-fun lt!317787 () Bool)

(assert (=> b!704262 (= lt!317787 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!704263 () Bool)

(declare-fun res!468233 () Bool)

(assert (=> b!704263 (=> (not res!468233) (not e!397611))))

(assert (=> b!704263 (= res!468233 (not (validKeyInArray!0 (select (arr!19242 a!3591) from!2969))))))

(declare-fun b!704264 () Bool)

(declare-fun res!468231 () Bool)

(assert (=> b!704264 (=> (not res!468231) (not e!397611))))

(assert (=> b!704264 (= res!468231 (contains!3879 newAcc!49 k!2824))))

(assert (= (and start!62544 res!468245) b!704261))

(assert (= (and b!704261 res!468243) b!704248))

(assert (= (and b!704248 res!468241) b!704253))

(assert (= (and b!704253 res!468240) b!704257))

(assert (= (and b!704257 res!468239) b!704256))

(assert (= (and b!704256 res!468235) b!704255))

(assert (= (and b!704255 res!468248) b!704259))

(assert (= (and b!704259 res!468232) b!704251))

(assert (= (and b!704251 res!468236) b!704254))

(assert (= (and b!704254 res!468237) b!704264))

(assert (= (and b!704264 res!468231) b!704258))

(assert (= (and b!704258 res!468242) b!704252))

(assert (= (and b!704252 res!468244) b!704249))

(assert (= (and b!704249 res!468234) b!704250))

(assert (= (and b!704250 res!468246) b!704263))

(assert (= (and b!704263 res!468233) b!704260))

(assert (= (and b!704260 res!468238) b!704247))

(assert (= (and b!704247 res!468247) b!704262))

(declare-fun m!662823 () Bool)

(assert (=> b!704254 m!662823))

(declare-fun m!662825 () Bool)

(assert (=> b!704249 m!662825))

(declare-fun m!662827 () Bool)

(assert (=> b!704251 m!662827))

(declare-fun m!662829 () Bool)

(assert (=> b!704256 m!662829))

(declare-fun m!662831 () Bool)

(assert (=> b!704259 m!662831))

(declare-fun m!662833 () Bool)

(assert (=> b!704263 m!662833))

(assert (=> b!704263 m!662833))

(declare-fun m!662835 () Bool)

(assert (=> b!704263 m!662835))

(declare-fun m!662837 () Bool)

(assert (=> b!704247 m!662837))

(declare-fun m!662839 () Bool)

(assert (=> b!704264 m!662839))

(declare-fun m!662841 () Bool)

(assert (=> start!62544 m!662841))

(declare-fun m!662843 () Bool)

(assert (=> b!704252 m!662843))

(declare-fun m!662845 () Bool)

(assert (=> b!704261 m!662845))

(declare-fun m!662847 () Bool)

(assert (=> b!704258 m!662847))

(declare-fun m!662849 () Bool)

(assert (=> b!704257 m!662849))

(declare-fun m!662851 () Bool)

(assert (=> b!704255 m!662851))

(declare-fun m!662853 () Bool)

(assert (=> b!704262 m!662853))

(declare-fun m!662855 () Bool)

(assert (=> b!704248 m!662855))

(declare-fun m!662857 () Bool)

(assert (=> b!704253 m!662857))

(push 1)

(assert (not b!704249))

(assert (not start!62544))

(assert (not b!704251))

(assert (not b!704255))

(assert (not b!704248))

(assert (not b!704258))

(assert (not b!704257))

(assert (not b!704259))

(assert (not b!704261))

(assert (not b!704262))

(assert (not b!704263))

(assert (not b!704247))

(assert (not b!704256))

(assert (not b!704253))

(assert (not b!704264))

(assert (not b!704254))

(assert (not b!704252))

(check-sat)

