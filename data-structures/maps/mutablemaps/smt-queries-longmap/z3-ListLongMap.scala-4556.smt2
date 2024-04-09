; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63528 () Bool)

(assert start!63528)

(declare-fun b!715210 () Bool)

(declare-fun res!478346 () Bool)

(declare-fun e!401759 () Bool)

(assert (=> b!715210 (=> (not res!478346) (not e!401759))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!715210 (= res!478346 (validKeyInArray!0 k0!2824))))

(declare-fun b!715211 () Bool)

(declare-fun res!478357 () Bool)

(assert (=> b!715211 (=> (not res!478357) (not e!401759))))

(declare-datatypes ((array!40496 0))(
  ( (array!40497 (arr!19381 (Array (_ BitVec 32) (_ BitVec 64))) (size!19797 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40496)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13475 0))(
  ( (Nil!13472) (Cons!13471 (h!14516 (_ BitVec 64)) (t!19798 List!13475)) )
))
(declare-fun acc!652 () List!13475)

(declare-fun arrayNoDuplicates!0 (array!40496 (_ BitVec 32) List!13475) Bool)

(assert (=> b!715211 (= res!478357 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!715212 () Bool)

(declare-fun res!478360 () Bool)

(assert (=> b!715212 (=> (not res!478360) (not e!401759))))

(declare-fun contains!4018 (List!13475 (_ BitVec 64)) Bool)

(assert (=> b!715212 (= res!478360 (not (contains!4018 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715213 () Bool)

(declare-fun res!478348 () Bool)

(assert (=> b!715213 (=> (not res!478348) (not e!401759))))

(declare-fun newAcc!49 () List!13475)

(declare-fun noDuplicate!1265 (List!13475) Bool)

(assert (=> b!715213 (= res!478348 (noDuplicate!1265 newAcc!49))))

(declare-fun b!715214 () Bool)

(declare-fun res!478356 () Bool)

(assert (=> b!715214 (=> (not res!478356) (not e!401759))))

(assert (=> b!715214 (= res!478356 (not (contains!4018 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715215 () Bool)

(declare-fun res!478351 () Bool)

(assert (=> b!715215 (=> (not res!478351) (not e!401759))))

(assert (=> b!715215 (= res!478351 (not (contains!4018 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715216 () Bool)

(declare-fun res!478353 () Bool)

(assert (=> b!715216 (=> (not res!478353) (not e!401759))))

(assert (=> b!715216 (= res!478353 (contains!4018 newAcc!49 k0!2824))))

(declare-fun b!715217 () Bool)

(declare-fun res!478354 () Bool)

(assert (=> b!715217 (=> (not res!478354) (not e!401759))))

(assert (=> b!715217 (= res!478354 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19797 a!3591)))))

(declare-fun b!715218 () Bool)

(declare-fun res!478361 () Bool)

(assert (=> b!715218 (=> (not res!478361) (not e!401759))))

(assert (=> b!715218 (= res!478361 (not (contains!4018 acc!652 k0!2824)))))

(declare-fun b!715219 () Bool)

(declare-fun res!478345 () Bool)

(assert (=> b!715219 (=> (not res!478345) (not e!401759))))

(assert (=> b!715219 (= res!478345 (noDuplicate!1265 acc!652))))

(declare-fun b!715220 () Bool)

(assert (=> b!715220 (= e!401759 false)))

(declare-fun lt!318785 () Bool)

(assert (=> b!715220 (= lt!318785 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!715221 () Bool)

(declare-fun res!478359 () Bool)

(assert (=> b!715221 (=> (not res!478359) (not e!401759))))

(declare-fun arrayContainsKey!0 (array!40496 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!715221 (= res!478359 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715222 () Bool)

(declare-fun res!478358 () Bool)

(assert (=> b!715222 (=> (not res!478358) (not e!401759))))

(assert (=> b!715222 (= res!478358 (not (contains!4018 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715223 () Bool)

(declare-fun res!478350 () Bool)

(assert (=> b!715223 (=> (not res!478350) (not e!401759))))

(assert (=> b!715223 (= res!478350 (not (validKeyInArray!0 (select (arr!19381 a!3591) from!2969))))))

(declare-fun b!715224 () Bool)

(declare-fun res!478349 () Bool)

(assert (=> b!715224 (=> (not res!478349) (not e!401759))))

(assert (=> b!715224 (= res!478349 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!715209 () Bool)

(declare-fun res!478352 () Bool)

(assert (=> b!715209 (=> (not res!478352) (not e!401759))))

(declare-fun -!427 (List!13475 (_ BitVec 64)) List!13475)

(assert (=> b!715209 (= res!478352 (= (-!427 newAcc!49 k0!2824) acc!652))))

(declare-fun res!478355 () Bool)

(assert (=> start!63528 (=> (not res!478355) (not e!401759))))

(assert (=> start!63528 (= res!478355 (and (bvslt (size!19797 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19797 a!3591))))))

(assert (=> start!63528 e!401759))

(assert (=> start!63528 true))

(declare-fun array_inv!15155 (array!40496) Bool)

(assert (=> start!63528 (array_inv!15155 a!3591)))

(declare-fun b!715225 () Bool)

(declare-fun res!478347 () Bool)

(assert (=> b!715225 (=> (not res!478347) (not e!401759))))

(declare-fun subseq!462 (List!13475 List!13475) Bool)

(assert (=> b!715225 (= res!478347 (subseq!462 acc!652 newAcc!49))))

(declare-fun b!715226 () Bool)

(declare-fun res!478362 () Bool)

(assert (=> b!715226 (=> (not res!478362) (not e!401759))))

(assert (=> b!715226 (= res!478362 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(assert (= (and start!63528 res!478355) b!715219))

(assert (= (and b!715219 res!478345) b!715213))

(assert (= (and b!715213 res!478348) b!715214))

(assert (= (and b!715214 res!478356) b!715212))

(assert (= (and b!715212 res!478360) b!715224))

(assert (= (and b!715224 res!478349) b!715218))

(assert (= (and b!715218 res!478361) b!715210))

(assert (= (and b!715210 res!478346) b!715211))

(assert (= (and b!715211 res!478357) b!715225))

(assert (= (and b!715225 res!478347) b!715216))

(assert (= (and b!715216 res!478353) b!715209))

(assert (= (and b!715209 res!478352) b!715222))

(assert (= (and b!715222 res!478358) b!715215))

(assert (= (and b!715215 res!478351) b!715217))

(assert (= (and b!715217 res!478354) b!715223))

(assert (= (and b!715223 res!478350) b!715226))

(assert (= (and b!715226 res!478362) b!715221))

(assert (= (and b!715221 res!478359) b!715220))

(declare-fun m!671553 () Bool)

(assert (=> b!715223 m!671553))

(assert (=> b!715223 m!671553))

(declare-fun m!671555 () Bool)

(assert (=> b!715223 m!671555))

(declare-fun m!671557 () Bool)

(assert (=> b!715220 m!671557))

(declare-fun m!671559 () Bool)

(assert (=> b!715222 m!671559))

(declare-fun m!671561 () Bool)

(assert (=> b!715213 m!671561))

(declare-fun m!671563 () Bool)

(assert (=> b!715216 m!671563))

(declare-fun m!671565 () Bool)

(assert (=> b!715219 m!671565))

(declare-fun m!671567 () Bool)

(assert (=> b!715210 m!671567))

(declare-fun m!671569 () Bool)

(assert (=> b!715211 m!671569))

(declare-fun m!671571 () Bool)

(assert (=> b!715215 m!671571))

(declare-fun m!671573 () Bool)

(assert (=> start!63528 m!671573))

(declare-fun m!671575 () Bool)

(assert (=> b!715212 m!671575))

(declare-fun m!671577 () Bool)

(assert (=> b!715221 m!671577))

(declare-fun m!671579 () Bool)

(assert (=> b!715218 m!671579))

(declare-fun m!671581 () Bool)

(assert (=> b!715214 m!671581))

(declare-fun m!671583 () Bool)

(assert (=> b!715209 m!671583))

(declare-fun m!671585 () Bool)

(assert (=> b!715225 m!671585))

(declare-fun m!671587 () Bool)

(assert (=> b!715224 m!671587))

(check-sat (not b!715215) (not b!715219) (not b!715220) (not b!715222) (not b!715221) (not b!715214) (not b!715209) (not b!715224) (not b!715213) (not b!715225) (not b!715210) (not b!715211) (not b!715223) (not b!715212) (not b!715218) (not start!63528) (not b!715216))
(check-sat)
