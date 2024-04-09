; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61796 () Bool)

(assert start!61796)

(declare-fun b!691309 () Bool)

(declare-fun res!455839 () Bool)

(declare-fun e!393422 () Bool)

(assert (=> b!691309 (=> (not res!455839) (not e!393422))))

(declare-datatypes ((array!39773 0))(
  ( (array!39774 (arr!19051 (Array (_ BitVec 32) (_ BitVec 64))) (size!19434 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39773)

(declare-datatypes ((List!13145 0))(
  ( (Nil!13142) (Cons!13141 (h!14186 (_ BitVec 64)) (t!19420 List!13145)) )
))
(declare-fun arrayNoDuplicates!0 (array!39773 (_ BitVec 32) List!13145) Bool)

(assert (=> b!691309 (= res!455839 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13142))))

(declare-fun b!691310 () Bool)

(declare-datatypes ((Unit!24374 0))(
  ( (Unit!24375) )
))
(declare-fun e!393426 () Unit!24374)

(declare-fun Unit!24376 () Unit!24374)

(assert (=> b!691310 (= e!393426 Unit!24376)))

(declare-fun b!691311 () Bool)

(declare-fun res!455837 () Bool)

(assert (=> b!691311 (=> (not res!455837) (not e!393422))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691311 (= res!455837 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691312 () Bool)

(declare-fun e!393425 () Bool)

(declare-fun acc!681 () List!13145)

(declare-fun contains!3688 (List!13145 (_ BitVec 64)) Bool)

(assert (=> b!691312 (= e!393425 (contains!3688 acc!681 k0!2843))))

(declare-fun b!691313 () Bool)

(declare-fun res!455845 () Bool)

(assert (=> b!691313 (=> (not res!455845) (not e!393422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691313 (= res!455845 (validKeyInArray!0 k0!2843))))

(declare-fun res!455847 () Bool)

(assert (=> start!61796 (=> (not res!455847) (not e!393422))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!61796 (= res!455847 (and (bvslt (size!19434 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19434 a!3626))))))

(assert (=> start!61796 e!393422))

(assert (=> start!61796 true))

(declare-fun array_inv!14825 (array!39773) Bool)

(assert (=> start!61796 (array_inv!14825 a!3626)))

(declare-fun b!691314 () Bool)

(declare-fun res!455846 () Bool)

(assert (=> b!691314 (=> (not res!455846) (not e!393422))))

(declare-fun e!393424 () Bool)

(assert (=> b!691314 (= res!455846 e!393424)))

(declare-fun res!455843 () Bool)

(assert (=> b!691314 (=> res!455843 e!393424)))

(assert (=> b!691314 (= res!455843 e!393425)))

(declare-fun res!455842 () Bool)

(assert (=> b!691314 (=> (not res!455842) (not e!393425))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!691314 (= res!455842 (bvsgt from!3004 i!1382))))

(declare-fun b!691315 () Bool)

(declare-fun res!455841 () Bool)

(assert (=> b!691315 (=> (not res!455841) (not e!393422))))

(assert (=> b!691315 (= res!455841 (not (contains!3688 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691316 () Bool)

(declare-fun res!455848 () Bool)

(assert (=> b!691316 (=> (not res!455848) (not e!393422))))

(assert (=> b!691316 (= res!455848 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19434 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691317 () Bool)

(declare-fun e!393427 () Bool)

(assert (=> b!691317 (= e!393424 e!393427)))

(declare-fun res!455849 () Bool)

(assert (=> b!691317 (=> (not res!455849) (not e!393427))))

(assert (=> b!691317 (= res!455849 (bvsle from!3004 i!1382))))

(declare-fun b!691318 () Bool)

(declare-fun Unit!24377 () Unit!24374)

(assert (=> b!691318 (= e!393426 Unit!24377)))

(assert (=> b!691318 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!316416 () Unit!24374)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39773 (_ BitVec 64) (_ BitVec 32)) Unit!24374)

(assert (=> b!691318 (= lt!316416 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!691318 false))

(declare-fun b!691319 () Bool)

(declare-fun res!455835 () Bool)

(assert (=> b!691319 (=> (not res!455835) (not e!393422))))

(assert (=> b!691319 (= res!455835 (validKeyInArray!0 (select (arr!19051 a!3626) from!3004)))))

(declare-fun b!691320 () Bool)

(declare-fun res!455844 () Bool)

(assert (=> b!691320 (=> (not res!455844) (not e!393422))))

(assert (=> b!691320 (= res!455844 (not (contains!3688 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691321 () Bool)

(assert (=> b!691321 (= e!393427 (not (contains!3688 acc!681 k0!2843)))))

(declare-fun b!691322 () Bool)

(assert (=> b!691322 (= e!393422 false)))

(declare-fun lt!316415 () Unit!24374)

(assert (=> b!691322 (= lt!316415 e!393426)))

(declare-fun c!78104 () Bool)

(assert (=> b!691322 (= c!78104 (= (select (arr!19051 a!3626) from!3004) k0!2843))))

(declare-fun b!691323 () Bool)

(declare-fun res!455838 () Bool)

(assert (=> b!691323 (=> (not res!455838) (not e!393422))))

(assert (=> b!691323 (= res!455838 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691324 () Bool)

(declare-fun res!455840 () Bool)

(assert (=> b!691324 (=> (not res!455840) (not e!393422))))

(assert (=> b!691324 (= res!455840 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19434 a!3626))))))

(declare-fun b!691325 () Bool)

(declare-fun res!455836 () Bool)

(assert (=> b!691325 (=> (not res!455836) (not e!393422))))

(declare-fun noDuplicate!935 (List!13145) Bool)

(assert (=> b!691325 (= res!455836 (noDuplicate!935 acc!681))))

(assert (= (and start!61796 res!455847) b!691325))

(assert (= (and b!691325 res!455836) b!691315))

(assert (= (and b!691315 res!455841) b!691320))

(assert (= (and b!691320 res!455844) b!691314))

(assert (= (and b!691314 res!455842) b!691312))

(assert (= (and b!691314 (not res!455843)) b!691317))

(assert (= (and b!691317 res!455849) b!691321))

(assert (= (and b!691314 res!455846) b!691309))

(assert (= (and b!691309 res!455839) b!691323))

(assert (= (and b!691323 res!455838) b!691324))

(assert (= (and b!691324 res!455840) b!691313))

(assert (= (and b!691313 res!455845) b!691311))

(assert (= (and b!691311 res!455837) b!691316))

(assert (= (and b!691316 res!455848) b!691319))

(assert (= (and b!691319 res!455835) b!691322))

(assert (= (and b!691322 c!78104) b!691318))

(assert (= (and b!691322 (not c!78104)) b!691310))

(declare-fun m!654365 () Bool)

(assert (=> b!691312 m!654365))

(declare-fun m!654367 () Bool)

(assert (=> b!691318 m!654367))

(declare-fun m!654369 () Bool)

(assert (=> b!691318 m!654369))

(declare-fun m!654371 () Bool)

(assert (=> b!691311 m!654371))

(declare-fun m!654373 () Bool)

(assert (=> b!691323 m!654373))

(declare-fun m!654375 () Bool)

(assert (=> b!691320 m!654375))

(declare-fun m!654377 () Bool)

(assert (=> b!691309 m!654377))

(declare-fun m!654379 () Bool)

(assert (=> b!691319 m!654379))

(assert (=> b!691319 m!654379))

(declare-fun m!654381 () Bool)

(assert (=> b!691319 m!654381))

(assert (=> b!691321 m!654365))

(declare-fun m!654383 () Bool)

(assert (=> b!691313 m!654383))

(declare-fun m!654385 () Bool)

(assert (=> b!691315 m!654385))

(declare-fun m!654387 () Bool)

(assert (=> b!691325 m!654387))

(declare-fun m!654389 () Bool)

(assert (=> start!61796 m!654389))

(assert (=> b!691322 m!654379))

(check-sat (not b!691313) (not b!691325) (not b!691312) (not b!691319) (not b!691309) (not b!691311) (not b!691315) (not b!691320) (not b!691321) (not start!61796) (not b!691323) (not b!691318))
(check-sat)
