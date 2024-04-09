; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63522 () Bool)

(assert start!63522)

(declare-fun b!715047 () Bool)

(declare-fun res!478200 () Bool)

(declare-fun e!401741 () Bool)

(assert (=> b!715047 (=> (not res!478200) (not e!401741))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!715047 (= res!478200 (validKeyInArray!0 k0!2824))))

(declare-fun b!715048 () Bool)

(declare-fun res!478195 () Bool)

(assert (=> b!715048 (=> (not res!478195) (not e!401741))))

(declare-datatypes ((array!40490 0))(
  ( (array!40491 (arr!19378 (Array (_ BitVec 32) (_ BitVec 64))) (size!19794 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40490)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13472 0))(
  ( (Nil!13469) (Cons!13468 (h!14513 (_ BitVec 64)) (t!19795 List!13472)) )
))
(declare-fun acc!652 () List!13472)

(declare-fun arrayNoDuplicates!0 (array!40490 (_ BitVec 32) List!13472) Bool)

(assert (=> b!715048 (= res!478195 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!715049 () Bool)

(declare-fun res!478191 () Bool)

(assert (=> b!715049 (=> (not res!478191) (not e!401741))))

(declare-fun newAcc!49 () List!13472)

(declare-fun noDuplicate!1262 (List!13472) Bool)

(assert (=> b!715049 (= res!478191 (noDuplicate!1262 newAcc!49))))

(declare-fun b!715050 () Bool)

(assert (=> b!715050 (= e!401741 false)))

(declare-fun lt!318776 () Bool)

(assert (=> b!715050 (= lt!318776 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!715051 () Bool)

(declare-fun res!478192 () Bool)

(assert (=> b!715051 (=> (not res!478192) (not e!401741))))

(assert (=> b!715051 (= res!478192 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!715052 () Bool)

(declare-fun res!478186 () Bool)

(assert (=> b!715052 (=> (not res!478186) (not e!401741))))

(declare-fun contains!4015 (List!13472 (_ BitVec 64)) Bool)

(assert (=> b!715052 (= res!478186 (not (contains!4015 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715053 () Bool)

(declare-fun res!478198 () Bool)

(assert (=> b!715053 (=> (not res!478198) (not e!401741))))

(assert (=> b!715053 (= res!478198 (not (contains!4015 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715054 () Bool)

(declare-fun res!478185 () Bool)

(assert (=> b!715054 (=> (not res!478185) (not e!401741))))

(assert (=> b!715054 (= res!478185 (not (validKeyInArray!0 (select (arr!19378 a!3591) from!2969))))))

(declare-fun b!715055 () Bool)

(declare-fun res!478194 () Bool)

(assert (=> b!715055 (=> (not res!478194) (not e!401741))))

(declare-fun arrayContainsKey!0 (array!40490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!715055 (= res!478194 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!715056 () Bool)

(declare-fun res!478183 () Bool)

(assert (=> b!715056 (=> (not res!478183) (not e!401741))))

(declare-fun -!424 (List!13472 (_ BitVec 64)) List!13472)

(assert (=> b!715056 (= res!478183 (= (-!424 newAcc!49 k0!2824) acc!652))))

(declare-fun res!478189 () Bool)

(assert (=> start!63522 (=> (not res!478189) (not e!401741))))

(assert (=> start!63522 (= res!478189 (and (bvslt (size!19794 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19794 a!3591))))))

(assert (=> start!63522 e!401741))

(assert (=> start!63522 true))

(declare-fun array_inv!15152 (array!40490) Bool)

(assert (=> start!63522 (array_inv!15152 a!3591)))

(declare-fun b!715057 () Bool)

(declare-fun res!478184 () Bool)

(assert (=> b!715057 (=> (not res!478184) (not e!401741))))

(assert (=> b!715057 (= res!478184 (not (contains!4015 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715058 () Bool)

(declare-fun res!478199 () Bool)

(assert (=> b!715058 (=> (not res!478199) (not e!401741))))

(declare-fun subseq!459 (List!13472 List!13472) Bool)

(assert (=> b!715058 (= res!478199 (subseq!459 acc!652 newAcc!49))))

(declare-fun b!715059 () Bool)

(declare-fun res!478197 () Bool)

(assert (=> b!715059 (=> (not res!478197) (not e!401741))))

(assert (=> b!715059 (= res!478197 (contains!4015 newAcc!49 k0!2824))))

(declare-fun b!715060 () Bool)

(declare-fun res!478193 () Bool)

(assert (=> b!715060 (=> (not res!478193) (not e!401741))))

(assert (=> b!715060 (= res!478193 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715061 () Bool)

(declare-fun res!478188 () Bool)

(assert (=> b!715061 (=> (not res!478188) (not e!401741))))

(assert (=> b!715061 (= res!478188 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19794 a!3591)))))

(declare-fun b!715062 () Bool)

(declare-fun res!478190 () Bool)

(assert (=> b!715062 (=> (not res!478190) (not e!401741))))

(assert (=> b!715062 (= res!478190 (not (contains!4015 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715063 () Bool)

(declare-fun res!478196 () Bool)

(assert (=> b!715063 (=> (not res!478196) (not e!401741))))

(assert (=> b!715063 (= res!478196 (noDuplicate!1262 acc!652))))

(declare-fun b!715064 () Bool)

(declare-fun res!478187 () Bool)

(assert (=> b!715064 (=> (not res!478187) (not e!401741))))

(assert (=> b!715064 (= res!478187 (not (contains!4015 acc!652 k0!2824)))))

(assert (= (and start!63522 res!478189) b!715063))

(assert (= (and b!715063 res!478196) b!715049))

(assert (= (and b!715049 res!478191) b!715057))

(assert (= (and b!715057 res!478184) b!715052))

(assert (= (and b!715052 res!478186) b!715055))

(assert (= (and b!715055 res!478194) b!715064))

(assert (= (and b!715064 res!478187) b!715047))

(assert (= (and b!715047 res!478200) b!715048))

(assert (= (and b!715048 res!478195) b!715058))

(assert (= (and b!715058 res!478199) b!715059))

(assert (= (and b!715059 res!478197) b!715056))

(assert (= (and b!715056 res!478183) b!715062))

(assert (= (and b!715062 res!478190) b!715053))

(assert (= (and b!715053 res!478198) b!715061))

(assert (= (and b!715061 res!478188) b!715054))

(assert (= (and b!715054 res!478185) b!715051))

(assert (= (and b!715051 res!478192) b!715060))

(assert (= (and b!715060 res!478193) b!715050))

(declare-fun m!671445 () Bool)

(assert (=> b!715053 m!671445))

(declare-fun m!671447 () Bool)

(assert (=> b!715052 m!671447))

(declare-fun m!671449 () Bool)

(assert (=> b!715048 m!671449))

(declare-fun m!671451 () Bool)

(assert (=> b!715050 m!671451))

(declare-fun m!671453 () Bool)

(assert (=> b!715056 m!671453))

(declare-fun m!671455 () Bool)

(assert (=> b!715060 m!671455))

(declare-fun m!671457 () Bool)

(assert (=> b!715055 m!671457))

(declare-fun m!671459 () Bool)

(assert (=> b!715064 m!671459))

(declare-fun m!671461 () Bool)

(assert (=> b!715063 m!671461))

(declare-fun m!671463 () Bool)

(assert (=> b!715062 m!671463))

(declare-fun m!671465 () Bool)

(assert (=> b!715058 m!671465))

(declare-fun m!671467 () Bool)

(assert (=> b!715057 m!671467))

(declare-fun m!671469 () Bool)

(assert (=> b!715059 m!671469))

(declare-fun m!671471 () Bool)

(assert (=> b!715047 m!671471))

(declare-fun m!671473 () Bool)

(assert (=> b!715049 m!671473))

(declare-fun m!671475 () Bool)

(assert (=> start!63522 m!671475))

(declare-fun m!671477 () Bool)

(assert (=> b!715054 m!671477))

(assert (=> b!715054 m!671477))

(declare-fun m!671479 () Bool)

(assert (=> b!715054 m!671479))

(check-sat (not b!715062) (not b!715055) (not b!715048) (not b!715056) (not b!715063) (not b!715047) (not b!715050) (not b!715064) (not b!715049) (not b!715057) (not b!715059) (not b!715052) (not start!63522) (not b!715060) (not b!715053) (not b!715058) (not b!715054))
(check-sat)
