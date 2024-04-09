; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63520 () Bool)

(assert start!63520)

(declare-fun b!714993 () Bool)

(declare-fun res!478139 () Bool)

(declare-fun e!401735 () Bool)

(assert (=> b!714993 (=> (not res!478139) (not e!401735))))

(declare-datatypes ((array!40488 0))(
  ( (array!40489 (arr!19377 (Array (_ BitVec 32) (_ BitVec 64))) (size!19793 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40488)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!714993 (= res!478139 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!714994 () Bool)

(declare-fun res!478130 () Bool)

(assert (=> b!714994 (=> (not res!478130) (not e!401735))))

(declare-datatypes ((List!13471 0))(
  ( (Nil!13468) (Cons!13467 (h!14512 (_ BitVec 64)) (t!19794 List!13471)) )
))
(declare-fun acc!652 () List!13471)

(declare-fun arrayNoDuplicates!0 (array!40488 (_ BitVec 32) List!13471) Bool)

(assert (=> b!714994 (= res!478130 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!714995 () Bool)

(declare-fun res!478134 () Bool)

(assert (=> b!714995 (=> (not res!478134) (not e!401735))))

(declare-fun newAcc!49 () List!13471)

(declare-fun subseq!458 (List!13471 List!13471) Bool)

(assert (=> b!714995 (= res!478134 (subseq!458 acc!652 newAcc!49))))

(declare-fun b!714996 () Bool)

(assert (=> b!714996 (= e!401735 false)))

(declare-fun lt!318773 () Bool)

(assert (=> b!714996 (= lt!318773 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!714997 () Bool)

(declare-fun res!478138 () Bool)

(assert (=> b!714997 (=> (not res!478138) (not e!401735))))

(assert (=> b!714997 (= res!478138 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19793 a!3591)))))

(declare-fun b!714998 () Bool)

(declare-fun res!478145 () Bool)

(assert (=> b!714998 (=> (not res!478145) (not e!401735))))

(declare-fun contains!4014 (List!13471 (_ BitVec 64)) Bool)

(assert (=> b!714998 (= res!478145 (not (contains!4014 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714999 () Bool)

(declare-fun res!478137 () Bool)

(assert (=> b!714999 (=> (not res!478137) (not e!401735))))

(declare-fun noDuplicate!1261 (List!13471) Bool)

(assert (=> b!714999 (= res!478137 (noDuplicate!1261 newAcc!49))))

(declare-fun b!715000 () Bool)

(declare-fun res!478136 () Bool)

(assert (=> b!715000 (=> (not res!478136) (not e!401735))))

(assert (=> b!715000 (= res!478136 (contains!4014 newAcc!49 k!2824))))

(declare-fun b!715001 () Bool)

(declare-fun res!478144 () Bool)

(assert (=> b!715001 (=> (not res!478144) (not e!401735))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!715001 (= res!478144 (validKeyInArray!0 k!2824))))

(declare-fun b!715003 () Bool)

(declare-fun res!478131 () Bool)

(assert (=> b!715003 (=> (not res!478131) (not e!401735))))

(assert (=> b!715003 (= res!478131 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!715004 () Bool)

(declare-fun res!478133 () Bool)

(assert (=> b!715004 (=> (not res!478133) (not e!401735))))

(assert (=> b!715004 (= res!478133 (not (contains!4014 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715005 () Bool)

(declare-fun res!478141 () Bool)

(assert (=> b!715005 (=> (not res!478141) (not e!401735))))

(assert (=> b!715005 (= res!478141 (not (contains!4014 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715006 () Bool)

(declare-fun res!478143 () Bool)

(assert (=> b!715006 (=> (not res!478143) (not e!401735))))

(assert (=> b!715006 (= res!478143 (not (contains!4014 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715007 () Bool)

(declare-fun res!478142 () Bool)

(assert (=> b!715007 (=> (not res!478142) (not e!401735))))

(assert (=> b!715007 (= res!478142 (noDuplicate!1261 acc!652))))

(declare-fun b!715008 () Bool)

(declare-fun res!478135 () Bool)

(assert (=> b!715008 (=> (not res!478135) (not e!401735))))

(assert (=> b!715008 (= res!478135 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!715009 () Bool)

(declare-fun res!478132 () Bool)

(assert (=> b!715009 (=> (not res!478132) (not e!401735))))

(assert (=> b!715009 (= res!478132 (not (validKeyInArray!0 (select (arr!19377 a!3591) from!2969))))))

(declare-fun b!715010 () Bool)

(declare-fun res!478146 () Bool)

(assert (=> b!715010 (=> (not res!478146) (not e!401735))))

(declare-fun -!423 (List!13471 (_ BitVec 64)) List!13471)

(assert (=> b!715010 (= res!478146 (= (-!423 newAcc!49 k!2824) acc!652))))

(declare-fun res!478129 () Bool)

(assert (=> start!63520 (=> (not res!478129) (not e!401735))))

(assert (=> start!63520 (= res!478129 (and (bvslt (size!19793 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19793 a!3591))))))

(assert (=> start!63520 e!401735))

(assert (=> start!63520 true))

(declare-fun array_inv!15151 (array!40488) Bool)

(assert (=> start!63520 (array_inv!15151 a!3591)))

(declare-fun b!715002 () Bool)

(declare-fun res!478140 () Bool)

(assert (=> b!715002 (=> (not res!478140) (not e!401735))))

(assert (=> b!715002 (= res!478140 (not (contains!4014 acc!652 k!2824)))))

(assert (= (and start!63520 res!478129) b!715007))

(assert (= (and b!715007 res!478142) b!714999))

(assert (= (and b!714999 res!478137) b!714998))

(assert (= (and b!714998 res!478145) b!715004))

(assert (= (and b!715004 res!478133) b!715008))

(assert (= (and b!715008 res!478135) b!715002))

(assert (= (and b!715002 res!478140) b!715001))

(assert (= (and b!715001 res!478144) b!714994))

(assert (= (and b!714994 res!478130) b!714995))

(assert (= (and b!714995 res!478134) b!715000))

(assert (= (and b!715000 res!478136) b!715010))

(assert (= (and b!715010 res!478146) b!715006))

(assert (= (and b!715006 res!478143) b!715005))

(assert (= (and b!715005 res!478141) b!714997))

(assert (= (and b!714997 res!478138) b!715009))

(assert (= (and b!715009 res!478132) b!715003))

(assert (= (and b!715003 res!478131) b!714993))

(assert (= (and b!714993 res!478139) b!714996))

(declare-fun m!671409 () Bool)

(assert (=> b!715009 m!671409))

(assert (=> b!715009 m!671409))

(declare-fun m!671411 () Bool)

(assert (=> b!715009 m!671411))

(declare-fun m!671413 () Bool)

(assert (=> b!715006 m!671413))

(declare-fun m!671415 () Bool)

(assert (=> b!714998 m!671415))

(declare-fun m!671417 () Bool)

(assert (=> b!715005 m!671417))

(declare-fun m!671419 () Bool)

(assert (=> start!63520 m!671419))

(declare-fun m!671421 () Bool)

(assert (=> b!714994 m!671421))

(declare-fun m!671423 () Bool)

(assert (=> b!715004 m!671423))

(declare-fun m!671425 () Bool)

(assert (=> b!714993 m!671425))

(declare-fun m!671427 () Bool)

(assert (=> b!715007 m!671427))

(declare-fun m!671429 () Bool)

(assert (=> b!715001 m!671429))

(declare-fun m!671431 () Bool)

(assert (=> b!714995 m!671431))

(declare-fun m!671433 () Bool)

(assert (=> b!715002 m!671433))

(declare-fun m!671435 () Bool)

(assert (=> b!714999 m!671435))

(declare-fun m!671437 () Bool)

(assert (=> b!715000 m!671437))

(declare-fun m!671439 () Bool)

(assert (=> b!715010 m!671439))

(declare-fun m!671441 () Bool)

(assert (=> b!714996 m!671441))

(declare-fun m!671443 () Bool)

(assert (=> b!715008 m!671443))

(push 1)

(assert (not start!63520))

(assert (not b!715007))

(assert (not b!714999))

(assert (not b!715005))

(assert (not b!714998))

(assert (not b!715010))

(assert (not b!714995))

(assert (not b!715001))

(assert (not b!714996))

(assert (not b!714993))

(assert (not b!714994))

(assert (not b!715002))

(assert (not b!715000))

(assert (not b!715004))

(assert (not b!715006))

(assert (not b!715008))

(assert (not b!715009))

(check-sat)

(pop 1)

