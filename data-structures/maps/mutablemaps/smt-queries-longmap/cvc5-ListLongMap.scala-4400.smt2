; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60516 () Bool)

(assert start!60516)

(declare-fun b!679816 () Bool)

(declare-fun e!387250 () Bool)

(declare-fun e!387255 () Bool)

(assert (=> b!679816 (= e!387250 (not e!387255))))

(declare-fun res!446296 () Bool)

(assert (=> b!679816 (=> res!446296 e!387255)))

(declare-datatypes ((array!39453 0))(
  ( (array!39454 (arr!18912 (Array (_ BitVec 32) (_ BitVec 64))) (size!19276 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39453)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679816 (= res!446296 (not (validKeyInArray!0 (select (arr!18912 a!3626) from!3004))))))

(declare-datatypes ((Unit!23818 0))(
  ( (Unit!23819) )
))
(declare-fun lt!312953 () Unit!23818)

(declare-fun e!387253 () Unit!23818)

(assert (=> b!679816 (= lt!312953 e!387253)))

(declare-fun c!77129 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39453 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679816 (= c!77129 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!679816 (arrayContainsKey!0 (array!39454 (store (arr!18912 a!3626) i!1382 k!2843) (size!19276 a!3626)) k!2843 from!3004)))

(declare-fun res!446305 () Bool)

(assert (=> start!60516 (=> (not res!446305) (not e!387250))))

(assert (=> start!60516 (= res!446305 (and (bvslt (size!19276 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19276 a!3626))))))

(assert (=> start!60516 e!387250))

(assert (=> start!60516 true))

(declare-fun array_inv!14686 (array!39453) Bool)

(assert (=> start!60516 (array_inv!14686 a!3626)))

(declare-fun b!679817 () Bool)

(declare-fun e!387254 () Bool)

(declare-fun e!387256 () Bool)

(assert (=> b!679817 (= e!387254 e!387256)))

(declare-fun res!446299 () Bool)

(assert (=> b!679817 (=> (not res!446299) (not e!387256))))

(assert (=> b!679817 (= res!446299 (bvsle from!3004 i!1382))))

(declare-fun b!679818 () Bool)

(declare-fun res!446294 () Bool)

(assert (=> b!679818 (=> (not res!446294) (not e!387250))))

(declare-datatypes ((List!13006 0))(
  ( (Nil!13003) (Cons!13002 (h!14047 (_ BitVec 64)) (t!19242 List!13006)) )
))
(declare-fun acc!681 () List!13006)

(declare-fun noDuplicate!796 (List!13006) Bool)

(assert (=> b!679818 (= res!446294 (noDuplicate!796 acc!681))))

(declare-fun b!679819 () Bool)

(declare-fun res!446298 () Bool)

(assert (=> b!679819 (=> (not res!446298) (not e!387250))))

(assert (=> b!679819 (= res!446298 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!679820 () Bool)

(assert (=> b!679820 (= e!387255 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun subseq!134 (List!13006 List!13006) Bool)

(assert (=> b!679820 (subseq!134 acc!681 acc!681)))

(declare-fun lt!312952 () Unit!23818)

(declare-fun lemmaListSubSeqRefl!0 (List!13006) Unit!23818)

(assert (=> b!679820 (= lt!312952 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!679821 () Bool)

(declare-fun res!446306 () Bool)

(assert (=> b!679821 (=> (not res!446306) (not e!387250))))

(declare-fun contains!3549 (List!13006 (_ BitVec 64)) Bool)

(assert (=> b!679821 (= res!446306 (not (contains!3549 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679822 () Bool)

(declare-fun res!446292 () Bool)

(assert (=> b!679822 (=> (not res!446292) (not e!387250))))

(declare-fun arrayNoDuplicates!0 (array!39453 (_ BitVec 32) List!13006) Bool)

(assert (=> b!679822 (= res!446292 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!679823 () Bool)

(declare-fun res!446301 () Bool)

(assert (=> b!679823 (=> (not res!446301) (not e!387250))))

(assert (=> b!679823 (= res!446301 (not (contains!3549 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679824 () Bool)

(declare-fun Unit!23820 () Unit!23818)

(assert (=> b!679824 (= e!387253 Unit!23820)))

(declare-fun b!679825 () Bool)

(declare-fun res!446303 () Bool)

(assert (=> b!679825 (=> (not res!446303) (not e!387250))))

(assert (=> b!679825 (= res!446303 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13003))))

(declare-fun b!679826 () Bool)

(declare-fun res!446295 () Bool)

(assert (=> b!679826 (=> (not res!446295) (not e!387250))))

(assert (=> b!679826 (= res!446295 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19276 a!3626))))))

(declare-fun b!679827 () Bool)

(declare-fun res!446304 () Bool)

(assert (=> b!679827 (=> (not res!446304) (not e!387250))))

(assert (=> b!679827 (= res!446304 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19276 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679828 () Bool)

(declare-fun res!446300 () Bool)

(assert (=> b!679828 (=> (not res!446300) (not e!387250))))

(assert (=> b!679828 (= res!446300 e!387254)))

(declare-fun res!446302 () Bool)

(assert (=> b!679828 (=> res!446302 e!387254)))

(declare-fun e!387251 () Bool)

(assert (=> b!679828 (= res!446302 e!387251)))

(declare-fun res!446293 () Bool)

(assert (=> b!679828 (=> (not res!446293) (not e!387251))))

(assert (=> b!679828 (= res!446293 (bvsgt from!3004 i!1382))))

(declare-fun b!679829 () Bool)

(declare-fun Unit!23821 () Unit!23818)

(assert (=> b!679829 (= e!387253 Unit!23821)))

(declare-fun lt!312954 () Unit!23818)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39453 (_ BitVec 64) (_ BitVec 32)) Unit!23818)

(assert (=> b!679829 (= lt!312954 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!679829 false))

(declare-fun b!679830 () Bool)

(assert (=> b!679830 (= e!387251 (contains!3549 acc!681 k!2843))))

(declare-fun b!679831 () Bool)

(declare-fun res!446297 () Bool)

(assert (=> b!679831 (=> (not res!446297) (not e!387250))))

(assert (=> b!679831 (= res!446297 (validKeyInArray!0 k!2843))))

(declare-fun b!679832 () Bool)

(assert (=> b!679832 (= e!387256 (not (contains!3549 acc!681 k!2843)))))

(assert (= (and start!60516 res!446305) b!679818))

(assert (= (and b!679818 res!446294) b!679821))

(assert (= (and b!679821 res!446306) b!679823))

(assert (= (and b!679823 res!446301) b!679828))

(assert (= (and b!679828 res!446293) b!679830))

(assert (= (and b!679828 (not res!446302)) b!679817))

(assert (= (and b!679817 res!446299) b!679832))

(assert (= (and b!679828 res!446300) b!679825))

(assert (= (and b!679825 res!446303) b!679822))

(assert (= (and b!679822 res!446292) b!679826))

(assert (= (and b!679826 res!446295) b!679831))

(assert (= (and b!679831 res!446297) b!679819))

(assert (= (and b!679819 res!446298) b!679827))

(assert (= (and b!679827 res!446304) b!679816))

(assert (= (and b!679816 c!77129) b!679829))

(assert (= (and b!679816 (not c!77129)) b!679824))

(assert (= (and b!679816 (not res!446296)) b!679820))

(declare-fun m!645075 () Bool)

(assert (=> b!679818 m!645075))

(declare-fun m!645077 () Bool)

(assert (=> start!60516 m!645077))

(declare-fun m!645079 () Bool)

(assert (=> b!679821 m!645079))

(declare-fun m!645081 () Bool)

(assert (=> b!679832 m!645081))

(declare-fun m!645083 () Bool)

(assert (=> b!679822 m!645083))

(declare-fun m!645085 () Bool)

(assert (=> b!679825 m!645085))

(declare-fun m!645087 () Bool)

(assert (=> b!679820 m!645087))

(declare-fun m!645089 () Bool)

(assert (=> b!679820 m!645089))

(declare-fun m!645091 () Bool)

(assert (=> b!679829 m!645091))

(declare-fun m!645093 () Bool)

(assert (=> b!679831 m!645093))

(declare-fun m!645095 () Bool)

(assert (=> b!679823 m!645095))

(declare-fun m!645097 () Bool)

(assert (=> b!679819 m!645097))

(declare-fun m!645099 () Bool)

(assert (=> b!679816 m!645099))

(declare-fun m!645101 () Bool)

(assert (=> b!679816 m!645101))

(declare-fun m!645103 () Bool)

(assert (=> b!679816 m!645103))

(assert (=> b!679816 m!645099))

(declare-fun m!645105 () Bool)

(assert (=> b!679816 m!645105))

(declare-fun m!645107 () Bool)

(assert (=> b!679816 m!645107))

(assert (=> b!679830 m!645081))

(push 1)

